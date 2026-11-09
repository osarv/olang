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
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:idleCall" = type { i64, i64, %"compiler/source:Span", { i64, ptr }, ptr }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/check:inPlaceRead" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span" }
%"compiler/check:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:litBuilder" = type { i64, i32 }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/check:setAt" = type { ptr, i64, { i64, ptr }, { i64, ptr }, %"compiler/source:Span", i32 }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/check:ownerAt" = type { i32, i1 }
%"std/pair:Pair.1eb2466213689e002f25e81e83536e78" = type { i64, ptr }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/check:unsetCand" = type { i64, i64, i64, i1, i64, %"compiler/source:Span", i32, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/check:fixedInit" = type { ptr, i32 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:collWalk" = type { ptr, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/check:heldCand" = type { i64, i64, i64 }
%"compiler/check:opShape" = type { { i64, ptr }, i64, i1, i1 }
define dso_local i1 @compiler_2fcheck_2eclosedFn(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_980c9dc24d8ab357_bac7a576dce6b97b)
  unreachable
bb11:
  %t10 = load i1, ptr %l1, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca i64
  %l8 = alloca { i64, ptr }
  %l14 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l4, !tbaa !29
  store i64 %a1, ptr %l5, !tbaa !24
  %t3 = icmp sge i64 0, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = icmp sle i64 0, 2305843009213693951
  br i1 %t5, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_a6ae1e9a693d05c9_888d1f7981f90365)
  unreachable
bb3:
  %t7 = mul i64 0, 4
  %t8 = insertvalue { i64, ptr } undef, i64 0, 0
  %t9 = insertvalue { i64, ptr } %t8, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t9, ptr %l8, !tbaa !27
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a6ae1e9a693d05c9_888d1f7981f90365)
  unreachable
bb5:
  %t12 = icmp sle i64 0, 2305843009213693951
  br i1 %t12, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_a6ae1e9a693d05c9_888d1f7981f90365)
  unreachable
bb7:
  %t14 = mul i64 0, 4
  %t15 = insertvalue { i64, ptr } undef, i64 0, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t20 = load i64, ptr %l5, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t25 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBodyIn(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t19, i64 %t20, i64 -1, { i64, ptr } %t21, { i64, ptr } %t16, ptr %a2, i32 %a3)
  store i64 %t25, ptr %l14
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_a6ae1e9a693d05c9_888d1f7981f90365)
  unreachable
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load i64, ptr %l14, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca i1
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca %"compiler/typed:Cond"
  %rv = alloca ptr
  %t31 = alloca { i64, [5 x i64] }, align 8
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2eisTrue(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l3, !tbaa !29
  store ptr %t5, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t9 = call i1 @compiler_2fcheck_2eisTrue(ptr %v2, ptr %t7)
  store i1 %t9, ptr %l8
  br label %bb5
bb5:
  %t10 = load i1, ptr %l8, !tbaa !21
  br i1 %t10, label %bb6, label %bb7
bb6:
  %t11 = load ptr, ptr %l2, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t13 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t13, ptr %l10
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t14, ptr %l11, !tbaa !23
  %t15 = load ptr, ptr %l2, !tbaa !29
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = load ptr, ptr %l3, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l1
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %a0, %"compiler/source:Span" %t19, i32 %t20, i64 0)
  store ptr %t24, ptr %l18
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l12, !tbaa !29
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t25, ptr %t26, ptr %t27)
  store %"compiler/typed:Cond" %t28, ptr %l19
  br label %bb10
bb10:
  %t29 = load %"compiler/typed:Cond", ptr %l19
  %t30 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t29, ptr %t30
  store { i64, [5 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 0
  store i64 11, ptr %t32
  %t33 = load %"compiler/source:Span", ptr %l10
  %t34 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t33, 0
  %t35 = load i32, ptr %l11, !tbaa !23
  %t36 = insertvalue { %"compiler/source:Span", i32, ptr } %t34, i32 %t35, 1
  %t38 = insertvalue { %"compiler/source:Span", i32, ptr } %t36, ptr %t30, 2
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t38, ptr %t39
  %t40 = load { i64, [5 x i64] }, ptr %t31
  %t42 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t40, ptr %t42
  store ptr %t42, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l8 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i64
  %l33 = alloca i64
  %l35 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i32
  %l48 = alloca ptr
  %l49 = alloca i64
  %l54 = alloca { i64, ptr }
  %l56 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l59 = alloca i32
  %l61 = alloca ptr
  %l64 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l65 = alloca i32
  %l66 = alloca i32
  %l68 = alloca ptr
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l8, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %t10, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 54
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t15, i64 %t16)
  %t20 = extractvalue { i32, i1 } %t19, 1
  %t21 = extractvalue { i32, i1 } %t19, 0
  store i32 %t21, ptr %l16
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb3, label %ok.23, !prof !99
ok.23:
  store i1 %t20, ptr %l15
  br label %bb2
bb2:
  %t24 = load i1, ptr %l15, !tbaa !21
  store i1 %t24, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l11, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l22
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load i32, ptr %l22, !tbaa !23
  store i32 %t38, ptr %rv
  br label %ret
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 19
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t45, ptr %l26
  br label %bb10
bb10:
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = icmp eq i64 %t46, 0
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %t49, i64 %t50)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 19
  %t56 = load i64, ptr %l1, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l33
  br label %bb15
bb15:
  %t60 = load i64, ptr %l33, !tbaa !24
  %t61 = icmp eq i64 %t60, 2
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 55
  %t66 = load i64, ptr %l1, !tbaa !24
  %t69 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %t65, i64 %t66)
  %t70 = extractvalue { i32, i32 } %t69, 1
  %t71 = extractvalue { i32, i32 } %t69, 0
  store i32 %t71, ptr %l40
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb19, label %ok.73, !prof !99
ok.73:
  store i32 %t70, ptr %l39
  br label %bb18
bb17:
  br label %bb33
bb18:
  %t74 = load i32, ptr %l39, !tbaa !23
  store i32 %t74, ptr %l35, !tbaa !23
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i32 0, ptr %l35, !tbaa !23
  br label %bb21
bb21:
  %t75 = load i32, ptr %l35, !tbaa !23
  store i32 %t75, ptr %l3, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 57
  %t79 = load i64, ptr %l1, !tbaa !24
  %t82 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t78, i64 %t79)
  %t83 = extractvalue { i32, i1 } %t82, 1
  %t84 = extractvalue { i32, i1 } %t82, 0
  store i32 %t84, ptr %l46
  %t85 = icmp ne i32 %t84, 0
  br i1 %t85, label %bb23, label %ok.86, !prof !99
ok.86:
  store i1 %t83, ptr %l45
  br label %bb22
bb22:
  %t87 = load i1, ptr %l45, !tbaa !21
  store i1 %t87, ptr %l41, !tbaa !21
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb25
bb25:
  %t88 = load i1, ptr %l41, !tbaa !21
  br i1 %t88, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 56
  store ptr %t91, ptr %l48, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  store i64 %t92, ptr %l49, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s4, ptr %t98, i32 %t99)
  store { i64, ptr } %t102, ptr %l54
  br label %bb28
bb27:
  br label %bb32
bb28:
  %t103 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  %t105 = load i64, ptr %l49, !tbaa !24
  %t107 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s4, i64 %t105, i64 %t104)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t107, ptr %l56
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l48, !tbaa !29
  %t109 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l56
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t108, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t109)
  br label %bb30
bb30:
  %t110 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunsettle(ptr %v0, ptr %t110)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb32:
  %t112 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t112, ptr %rv
  br label %ret
bb33:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 58
  store ptr %t116, ptr %l61, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i64, ptr %l1, !tbaa !24
  %t121 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyKey(ptr %v0, ptr %t117, i64 %t118)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t121, ptr %l64
  br label %bb34
bb34:
  %t122 = load ptr, ptr %l61, !tbaa !29
  %t123 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l64
  %t124 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf3bb75ba9d3f922b4d327e9d3c1adfb0(ptr %v0, ptr %t122, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t123)
  %t125 = extractvalue { i32, i32 } %t124, 1
  %t126 = extractvalue { i32, i32 } %t124, 0
  store i32 %t126, ptr %l66
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb36, label %ok.128, !prof !99
ok.128:
  store i32 %t125, ptr %l65
  br label %bb35
bb35:
  %t129 = load i32, ptr %l65, !tbaa !23
  store i32 %t129, ptr %l59, !tbaa !23
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i32 0, ptr %l59, !tbaa !23
  br label %bb38
bb38:
  %t130 = load i32, ptr %l59, !tbaa !23
  store i32 %t130, ptr %l4, !tbaa !23
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 56
  store ptr %t133, ptr %l68, !tbaa !29
  %t134 = load i64, ptr %l1, !tbaa !24
  store i64 %t134, ptr %l69, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l4, !tbaa !23
  %t144 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t140, i32 %t141)
  store { i64, ptr } %t144, ptr %l74
  br label %bb39
bb39:
  %t145 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  %t147 = load i64, ptr %l69, !tbaa !24
  %t149 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t147, i64 %t146)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t149, ptr %l76
  br label %bb40
bb40:
  %t150 = load ptr, ptr %l68, !tbaa !29
  %t151 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l76
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t150, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t151)
  br label %bb41
bb41:
  %t152 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunsettle(ptr %v0, ptr %t152)
  br label %bb42
bb42:
  %t154 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t154, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l13 = alloca { i64, ptr }
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l30 = alloca i64
  %l33 = alloca i64
  %l56 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l79 = alloca %"compiler/source:Span"
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/source:Span", ptr %l1
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %t2)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb4
bb3:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l18, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = sub i64 %t16, 1
  %t20 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t25 = icmp ne i8 %t23, 93
  store i1 %t25, ptr %l17, !tbaa !21
  br label %bb4
bb4:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t28 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t28, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
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
  br label %bb29
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l8, !tbaa !24
  %t72 = load i64, ptr %l6, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  %t80 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t84 = sub i64 %t82, 1
  %t88 = sub i64 %t84, %t78
  store i64 %t88, ptr %l10, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t90, ptr %l56, !tbaa !27
  %t91 = load i64, ptr %l10, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i8, ptr %t94, i64 %t91
  %t96 = load i8, ptr %t95, !tbaa !32
  %t98 = icmp eq i8 %t96, 93
  br i1 %t98, label %bb18, label %bb19
bb18:
  %t100 = load i64, ptr %l3, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l3, !tbaa !24
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t104, ptr %l62, !tbaa !27
  %t105 = load i64, ptr %l10, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i8, ptr %t108, i64 %t105
  %t110 = load i8, ptr %t109, !tbaa !32
  %t112 = icmp eq i8 %t110, 91
  br i1 %t112, label %bb21, label %bb22
bb21:
  %t114 = load i64, ptr %l3, !tbaa !24
  %t116 = sub i64 %t114, 1
  store i64 %t116, ptr %l3, !tbaa !24
  %t118 = load i64, ptr %l3, !tbaa !24
  %t120 = icmp eq i64 %t118, 0
  br i1 %t120, label %bb23, label %bb24
bb22:
  br label %bb27
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t122 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load i64, ptr %l10, !tbaa !24
  %t126 = trunc i64 %t124 to i32
  %t129 = add i32 %t123, %t126
  %t130 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t131 = load i32, ptr %t130, !tbaa !23
  %t132 = load i64, ptr %l10, !tbaa !24
  %t134 = add i64 %t132, 1
  %t136 = trunc i64 %t134 to i32
  %t139 = add i32 %t131, %t136
  %t142 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t129, i32 %t139)
  store %"compiler/source:Span" %t142, ptr %l79
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s6)
  %t143 = load %"compiler/source:Span", ptr %l79
  store %"compiler/source:Span" %t143, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t144 = load i64, ptr %l8, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l8, !tbaa !24
  br label %bb14
bb29:
  %t148 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t148, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecPointerArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i32
  %l26 = alloca i1
  %l33 = alloca i32
  %l36 = alloca i32
  %l39 = alloca i1
  %l42 = alloca i1
  %l49 = alloca i32
  %l52 = alloca i1
  %l55 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l72 = alloca i32
  %l75 = alloca i1
  %l78 = alloca i1
  %l83 = alloca i32
  %l84 = alloca i32
  %l88 = alloca i32
  %l90 = alloca i1
  %l91 = alloca i32
  %l95 = alloca i32
  %l102 = alloca i1
  %l103 = alloca i1
  %l104 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca i1
  %l109 = alloca i1
  %l114 = alloca i32
  %l121 = alloca i32
  %l124 = alloca ptr
  %l125 = alloca i32
  %l128 = alloca i32
  %l129 = alloca i1
  %l130 = alloca i1
  %l131 = alloca ptr
  %l134 = alloca i32
  %l135 = alloca i1
  %l140 = alloca ptr
  %l144 = alloca i1
  %l145 = alloca i1
  %l148 = alloca i1
  %l149 = alloca i1
  %l150 = alloca ptr
  %l153 = alloca i32
  %l154 = alloca i1
  %l155 = alloca i1
  %l158 = alloca i1
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_7362f3ae74bf0a7_8f389ee36c95dce3)
  unreachable
bb11:
  %t10 = load i1, ptr %l12, !tbaa !21
  %t13 = xor i1 %t10, true
  br i1 %t13, label %bb12, label %bb13
bb12:
  store ptr null, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t16)
  store i32 %t19, ptr %l22
  br label %bb15
bb15:
  %t20 = load i32, ptr %l22, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t21 = load i32, ptr %l6, !tbaa !23
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t25 = icmp eq i32 %t21, %t22
  br i1 %t25, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb18
bb17:
  %t27 = load i32, ptr %l6, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t31 = icmp eq i32 %t27, %t28
  store i1 %t31, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t33 = load i1, ptr %l26, !tbaa !21
  br i1 %t33, label %bb19, label %bb20
bb19:
  store ptr null, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l33
  br label %bb22
bb22:
  %t40 = load i32, ptr %l33, !tbaa !23
  store i32 %t40, ptr %l7, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l7, !tbaa !23
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l36
  br label %bb23
bb23:
  %t46 = load i32, ptr %l36, !tbaa !23
  store i32 %t46, ptr %l8, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecVoidRef(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l39
  br label %bb24
bb24:
  %t52 = load i1, ptr %l39, !tbaa !21
  br i1 %t52, label %bb25, label %bb26
bb25:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l6, !tbaa !23
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l42
  br label %bb27
bb26:
  br label %bb40
bb27:
  %t58 = load i1, ptr %l42, !tbaa !21
  br i1 %t58, label %bb28, label %bb29
bb28:
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l8, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l49
  br label %bb31
bb31:
  %t72 = load i32, ptr %l49, !range !{i32 0, i32 33}
  %t74 = trunc i64 19 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb35
bb33:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l7, !tbaa !23
  %t81 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t77, i32 %t78, i64 0)
  store i1 %t81, ptr %l55
  br label %bb34
bb34:
  %t82 = load i1, ptr %l55, !tbaa !21
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb35
bb35:
  %t83 = load i1, ptr %l52, !tbaa !21
  br i1 %t83, label %bb36, label %bb37
bb36:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t86 = load i32, ptr %l3, !tbaa !23
  %t87 = load %"compiler/source:Span", ptr %l4
  %t92 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecBorrow(ptr %v0, ptr %v2, ptr %v3, ptr %t84, ptr %t85, i32 %t86, %"compiler/source:Span" %t87)
  store ptr %t92, ptr %l60
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t93 = load ptr, ptr %l60, !tbaa !29
  store ptr %t93, ptr %rv
  br label %ret
bb39:
  store ptr null, ptr %rv
  br label %ret
bb40:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l63, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l66
  br label %bb41
bb41:
  %t102 = load ptr, ptr %l63, !tbaa !29
  %t103 = load i32, ptr %l66, !tbaa !23
  %t104 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t104, ptr %l67
  br label %bb42
bb42:
  %t105 = load i32, ptr %l67, !tbaa !23
  store i32 %t105, ptr %l9, !tbaa !23
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l9, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l72
  br label %bb43
bb43:
  %t116 = load i32, ptr %l72, !range !{i32 0, i32 33}
  %t118 = trunc i64 19 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb44, label %bb45
bb44:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l6, !tbaa !23
  %t125 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCStrRef(ptr %v0, ptr %t121, i32 %t122)
  store i1 %t125, ptr %l78
  br label %bb46
bb45:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb47
bb46:
  %t126 = load i1, ptr %l78, !tbaa !21
  store i1 %t126, ptr %l75, !tbaa !21
  br label %bb47
bb47:
  %t127 = load i1, ptr %l75, !tbaa !21
  br i1 %t127, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s8
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l9, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l83
  br label %bb50
bb49:
  br label %bb59
bb50:
  %t138 = load i32, ptr %l83, !tbaa !23
  store i32 %t138, ptr %l10, !tbaa !23
  %t139 = load i32, ptr %l10, !tbaa !23
  store i32 %t139, ptr %l84, !tbaa !23
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s8, ptr %t145, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t147, ptr %l88
  br label %bb51
bb51:
  %t148 = load i32, ptr %l84, !tbaa !23
  %t149 = load i32, ptr %l88, !tbaa !23
  %t150 = icmp eq i32 %t148, %t149
  br i1 %t150, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb55
bb53:
  %t152 = load i32, ptr %l10, !tbaa !23
  store i32 %t152, ptr %l91, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  %t160 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s8, ptr %t158, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t160, ptr %l95
  br label %bb54
bb54:
  %t161 = load i32, ptr %l91, !tbaa !23
  %t162 = load i32, ptr %l95, !tbaa !23
  %t163 = icmp eq i32 %t161, %t162
  store i1 %t163, ptr %l90, !tbaa !21
  br label %bb55
bb55:
  %t165 = load i1, ptr %l90, !tbaa !21
  br i1 %t165, label %bb56, label %bb57
bb56:
  %t166 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  store ptr %t166, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s8)
  store ptr null, ptr %rv
  br label %ret
bb59:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l3, !tbaa !23
  %t174 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t170, i32 %t171)
  store i1 %t174, ptr %l102
  br label %bb60
bb60:
  %t175 = load i1, ptr %l102, !tbaa !21
  br i1 %t175, label %bb61, label %bb62
bb61:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l104, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l3, !tbaa !23
  %t181 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t181, ptr %l107
  br label %bb63
bb62:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb65
bb63:
  %t182 = load ptr, ptr %l104, !tbaa !29
  %t183 = load i32, ptr %l107, !tbaa !23
  %t184 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecStruct(ptr %v0, ptr %t182, i32 %t183)
  store i1 %t184, ptr %l108
  br label %bb64
bb64:
  %t185 = load i1, ptr %l108, !tbaa !21
  store i1 %t185, ptr %l103, !tbaa !21
  br label %bb65
bb65:
  %t186 = load i1, ptr %l103, !tbaa !21
  br i1 %t186, label %bb66, label %bb67
bb66:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l8, !tbaa !23
  %t196 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t196, ptr %l114
  br label %bb68
bb67:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb69
bb68:
  %t197 = load i32, ptr %l114, !range !{i32 0, i32 33}
  %t199 = trunc i64 19 to i32
  %t200 = icmp eq i32 %t197, %t199
  store i1 %t200, ptr %l109, !tbaa !21
  br label %bb69
bb69:
  %t202 = load i1, ptr %l109, !tbaa !21
  br i1 %t202, label %bb70, label %bb71
bb70:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = load i32, ptr %l8, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l121
  br label %bb72
bb71:
  br label %bb84
bb72:
  %t213 = load i32, ptr %l121, !tbaa !23
  store i32 %t213, ptr %l11, !tbaa !23
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 2
  store ptr %t219, ptr %l124, !tbaa !29
  %t220 = load i32, ptr %l11, !tbaa !23
  store i32 %t220, ptr %l125, !tbaa !23
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i32, ptr %l3, !tbaa !23
  %t225 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t221, i32 %t222)
  store i32 %t225, ptr %l128
  br label %bb73
bb73:
  %t226 = load ptr, ptr %l124, !tbaa !29
  %t227 = load i32, ptr %l125, !tbaa !23
  %t228 = load i32, ptr %l128, !tbaa !23
  %t229 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t226, i32 %t227, i32 %t228)
  store i1 %t229, ptr %l129
  br label %bb74
bb74:
  %t230 = load i1, ptr %l129, !tbaa !21
  br i1 %t230, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb79
bb76:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l131, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l11, !tbaa !23
  %t236 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t232, i32 %t233)
  store i32 %t236, ptr %l134
  br label %bb77
bb77:
  %t237 = load ptr, ptr %l131, !tbaa !29
  %t238 = load i32, ptr %l134, !tbaa !23
  %t239 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %t237, i32 %t238)
  store i1 %t239, ptr %l135
  br label %bb78
bb78:
  %t240 = load i1, ptr %l135, !tbaa !21
  store i1 %t240, ptr %l130, !tbaa !21
  br label %bb79
bb79:
  %t241 = load i1, ptr %l130, !tbaa !21
  br i1 %t241, label %bb80, label %bb81
bb80:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l2, !tbaa !29
  %t244 = load i32, ptr %l3, !tbaa !23
  %t245 = load %"compiler/source:Span", ptr %l4
  %t250 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecBorrow(ptr %v0, ptr %v2, ptr %v3, ptr %t242, ptr %t243, i32 %t244, %"compiler/source:Span" %t245)
  store ptr %t250, ptr %l140
  br label %bb82
bb81:
  br label %bb83
bb82:
  %t251 = load ptr, ptr %l140, !tbaa !29
  store ptr %t251, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load i32, ptr %l3, !tbaa !23
  %t257 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t253, i32 %t254)
  store i1 %t257, ptr %l144
  br label %bb85
bb85:
  %t258 = load i1, ptr %l144, !tbaa !21
  br i1 %t258, label %bb86, label %bb87
bb86:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i32, ptr %l6, !tbaa !23
  %t263 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecVoidRef(ptr %v0, ptr %t259, i32 %t260)
  store i1 %t263, ptr %l148
  br label %bb88
bb87:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb89
bb88:
  %t264 = load i1, ptr %l148, !tbaa !21
  store i1 %t264, ptr %l145, !tbaa !21
  br label %bb89
bb89:
  %t265 = load i1, ptr %l145, !tbaa !21
  br i1 %t265, label %bb90, label %bb91
bb90:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l150, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l3, !tbaa !23
  %t271 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t267, i32 %t268)
  store i32 %t271, ptr %l153
  br label %bb92
bb91:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb98
bb92:
  %t272 = load ptr, ptr %l150, !tbaa !29
  %t273 = load i32, ptr %l153, !tbaa !23
  %t274 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecStruct(ptr %v0, ptr %t272, i32 %t273)
  store i1 %t274, ptr %l154
  br label %bb93
bb93:
  %t275 = load i1, ptr %l154, !tbaa !21
  br i1 %t275, label %bb94, label %bb95
bb94:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb97
bb95:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load i32, ptr %l3, !tbaa !23
  %t280 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t276, i32 %t277)
  store i1 %t280, ptr %l158
  br label %bb96
bb96:
  %t281 = load i1, ptr %l158, !tbaa !21
  store i1 %t281, ptr %l155, !tbaa !21
  br label %bb97
bb97:
  %t282 = load i1, ptr %l155, !tbaa !21
  store i1 %t282, ptr %l149, !tbaa !21
  br label %bb98
bb98:
  %t283 = load i1, ptr %l149, !tbaa !21
  br i1 %t283, label %bb99, label %bb100
bb99:
  %t284 = load ptr, ptr %l2, !tbaa !29
  store ptr %t284, ptr %rv
  br label %ret
bb100:
  br label %bb101
bb101:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp13 = alloca ptr
  %lp14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca ptr
  %l30 = alloca i1
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca ptr
  %l49 = alloca i1
  %l60 = alloca i1
  %l66 = alloca i32
  %l72 = alloca i32
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca i32
  %l83 = alloca i1
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca ptr
  %l121 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l123 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca ptr
  %l129 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l144 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l149 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l151 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l152 = alloca ptr
  %l157 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l159 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l160 = alloca ptr
  %l165 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l167 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l169 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t2 = load ptr, ptr %l15, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l15, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l16, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = load i1, ptr %l2, !tbaa !21
  %t19 = load i32, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t16, ptr %t17, i1 %t18, i32 %t19, ptr %t20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l26
  br label %bb6
bb6:
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l28
  br label %bb7
bb7:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %rv
  br label %ret
bb8:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t31 = load ptr, ptr %l29, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l29, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 30}
  %t37 = icmp eq i64 %t35, 3
  store i1 %t37, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l30, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 114}
  store i32 %t43, ptr %l6
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l7, !tbaa !29
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t51 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t53 = trunc i64 48 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t58 = load i1, ptr %l2, !tbaa !21
  %t60 = xor i1 %t58, true
  %t61 = load i32, ptr %l3, !tbaa !23
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t56, ptr %t57, i1 %t60, i32 %t61, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l45
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l45)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l47
  br label %bb17
bb17:
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %rv
  br label %ret
bb18:
  br label %bb83
bb19:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t73 = load ptr, ptr %l48, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t76 = load ptr, ptr %l48, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 30}
  %t79 = icmp eq i64 %t77, 5
  store i1 %t79, ptr %l49, !tbaa !21
  br label %bb21
bb21:
  %t80 = load i1, ptr %l49, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84, !range !{i32 0, i32 114}
  store i32 %t85, ptr %l8
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l9, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t95, i32 0, i32 3
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l10, !tbaa !29
  br label %bb24
bb23:
  br label %bb78
bb24:
  %t99 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t101 = trunc i64 94 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb27
bb26:
  %t104 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t106 = trunc i64 95 to i32
  %t107 = icmp eq i32 %t104, %t106
  store i1 %t107, ptr %l60, !tbaa !21
  br label %bb27
bb27:
  %t109 = load i1, ptr %l60, !tbaa !21
  br i1 %t109, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t110 = load ptr, ptr %l9, !tbaa !29
  store ptr %t110, ptr %l11, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l9, !tbaa !29
  %t116 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t112, ptr %t113)
  store i32 %t116, ptr %l66
  br label %bb30
bb29:
  br label %bb47
bb30:
  %t117 = load i32, ptr %l3, !tbaa !23
  %t118 = load i32, ptr %l66, !tbaa !23
  %t120 = icmp eq i32 %t118, %t117
  br i1 %t120, label %bb31, label %bb32
bb31:
  %t122 = load ptr, ptr %l10, !tbaa !29
  store ptr %t122, ptr %l11, !tbaa !29
  br label %bb37
bb32:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l10, !tbaa !29
  %t128 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  store i32 %t128, ptr %l72
  br label %bb33
bb33:
  %t129 = load i32, ptr %l3, !tbaa !23
  %t130 = load i32, ptr %l72, !tbaa !23
  %t132 = icmp ne i32 %t130, %t129
  br i1 %t132, label %bb34, label %bb35
bb34:
  %t134 = load ptr, ptr %l4, !tbaa !29
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t134
  call void @__olang_scope_close(ptr %s5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l11, !tbaa !29
  %t142 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %s5, ptr %t138, ptr %t139)
  %t143 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t142, 1
  %t144 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t142, 0
  store i32 %t144, ptr %l81
  %t145 = icmp ne i32 %t144, 0
  br i1 %t145, label %bb39, label %ok.146, !prof !99
ok.146:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l80
  br label %bb38
bb38:
  %t147 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t147, ptr %l77
  br label %bb41
bb39:
  %t148 = load i32, ptr %l81, !tbaa !23
  %t149 = ashr i32 %t148, 16
  %t151 = icmp eq i32 %t149, 1
  store i1 %t151, ptr %l83, !tbaa !21
  br label %bb40
bb40:
  %t152 = load ptr, ptr %l4, !tbaa !29
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t152
  call void @__olang_scope_close(ptr %s5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %rv
  br label %ret
bb41:
  %t156 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l12
  %t157 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t159 = trunc i64 94 to i32
  %t160 = icmp eq i32 %t157, %t159
  %t161 = load i1, ptr %l2, !tbaa !21
  %t164 = icmp eq i1 %t160, %t161
  br i1 %t164, label %bb42, label %bb43
bb42:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load ptr, ptr %l4, !tbaa !29
  %t171 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v2, ptr %s5, ptr %v3, ptr %t166, ptr %t167, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t171, ptr %l94
  br label %bb44
bb43:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l4, !tbaa !29
  %t177 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %v2, ptr %s5, ptr %v3, ptr %t172, ptr %t173, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t177, ptr %l98
  br label %bb45
bb44:
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l90
  br label %bb46
bb45:
  %t179 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %l90
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s5)
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %rv
  br label %ret
bb47:
  %t181 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t183 = trunc i64 45 to i32
  %t184 = icmp eq i32 %t181, %t183
  br i1 %t184, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s10
  %t186 = load i1, ptr %l2, !tbaa !21
  br i1 %t186, label %bb50, label %bb51
bb49:
  br label %bb62
bb50:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l9, !tbaa !29
  %t190 = load i32, ptr %l3, !tbaa !23
  %t191 = load ptr, ptr %l4, !tbaa !29
  %t196 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t188, ptr %t189, i1 true, i32 %t190, ptr %t191)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l106
  br label %bb52
bb51:
  br label %bb56
bb52:
  %t198 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l106)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t198, ptr %l108
  br label %bb53
bb53:
  %t199 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t199, ptr %lp13
  %t200 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  %t201 = load ptr, ptr %lp13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %t201
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l10, !tbaa !29
  %t204 = load i32, ptr %l3, !tbaa !23
  %t205 = load ptr, ptr %lp13
  %t210 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t202, ptr %t203, i1 true, i32 %t204, ptr %t205)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t210, ptr %l113
  br label %bb54
bb54:
  %t212 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l113)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %l115
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s10)
  %t213 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t213, ptr %rv
  br label %ret
bb56:
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l116, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l9, !tbaa !29
  %t217 = load i32, ptr %l3, !tbaa !23
  %t218 = load ptr, ptr %l4, !tbaa !29
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t215, ptr %t216, i1 false, i32 %t217, ptr %t218)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l121
  br label %bb57
bb57:
  %t225 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %l121)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t225, ptr %l123
  br label %bb58
bb58:
  %t226 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l123
  %t227 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %t227
  store ptr %t227, ptr %l124, !tbaa !29
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load ptr, ptr %l10, !tbaa !29
  %t230 = load i32, ptr %l3, !tbaa !23
  %t231 = load ptr, ptr %l4, !tbaa !29
  %t236 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t228, ptr %t229, i1 false, i32 %t230, ptr %t231)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l129
  br label %bb59
bb59:
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %l129)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l131
  br label %bb60
bb60:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  %t240 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %t240
  %t241 = load ptr, ptr %l116, !tbaa !29
  %t242 = load ptr, ptr %l124, !tbaa !29
  %t244 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v2, ptr %v2, ptr %v3, ptr %t241, ptr %t242, ptr %t240)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l133
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s10)
  %t245 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t245, ptr %rv
  br label %ret
bb62:
  %t246 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t248 = trunc i64 46 to i32
  %t249 = icmp eq i32 %t246, %t248
  br i1 %t249, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s12
  %t251 = load i1, ptr %l2, !tbaa !21
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb65, label %bb66
bb64:
  br label %bb77
bb65:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load ptr, ptr %l9, !tbaa !29
  %t257 = load i32, ptr %l3, !tbaa !23
  %t258 = load ptr, ptr %l4, !tbaa !29
  %t263 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t255, ptr %t256, i1 false, i32 %t257, ptr %t258)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %l142
  br label %bb67
bb66:
  br label %bb71
bb67:
  %t265 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l142)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t265, ptr %l144
  br label %bb68
bb68:
  %t266 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t266, ptr %lp14
  %t267 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l144
  %t268 = load ptr, ptr %lp14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t267, ptr %t268
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l10, !tbaa !29
  %t271 = load i32, ptr %l3, !tbaa !23
  %t272 = load ptr, ptr %lp14
  %t277 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t269, ptr %t270, i1 false, i32 %t271, ptr %t272)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t277, ptr %l149
  br label %bb69
bb69:
  %t279 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l149)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t279, ptr %l151
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s12)
  %t280 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %rv
  br label %ret
bb71:
  %t281 = load ptr, ptr %l0, !tbaa !29
  store ptr %t281, ptr %l152, !tbaa !29
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load ptr, ptr %l9, !tbaa !29
  %t284 = load i32, ptr %l3, !tbaa !23
  %t285 = load ptr, ptr %l4, !tbaa !29
  %t290 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t282, ptr %t283, i1 true, i32 %t284, ptr %t285)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290, ptr %l157
  br label %bb72
bb72:
  %t292 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %l157)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %l159
  br label %bb73
bb73:
  %t293 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l159
  %t294 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t293, ptr %t294
  store ptr %t294, ptr %l160, !tbaa !29
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load ptr, ptr %l10, !tbaa !29
  %t297 = load i32, ptr %l3, !tbaa !23
  %t298 = load ptr, ptr %l4, !tbaa !29
  %t303 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t295, ptr %t296, i1 true, i32 %t297, ptr %t298)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l165
  br label %bb74
bb74:
  %t305 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %l165)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t305, ptr %l167
  br label %bb75
bb75:
  %t306 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l167
  %t307 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t306, ptr %t307
  %t308 = load ptr, ptr %l152, !tbaa !29
  %t309 = load ptr, ptr %l160, !tbaa !29
  %t311 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v2, ptr %v2, ptr %v3, ptr %t308, ptr %t309, ptr %t307)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t311, ptr %l169
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s12)
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l169
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %rv
  br label %ret
bb77:
  br label %bb83
bb78:
  br i1 true, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb83
bb82:
  call void @__olang_check_failed(ptr @olang_loc_e75bf8e677cd64fa_b74b0f73d6209566)
  unreachable
bb83:
  %t313 = load ptr, ptr %l4, !tbaa !29
  %t315 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t313
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t315, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l27 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/source:Span"
  %l43 = alloca { i64, ptr }
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca ptr
  %l49 = alloca ptr
  %l53 = alloca %"compiler/check:litv"
  %l59 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca i32
  %l69 = alloca ptr
  %l72 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca ptr
  %l85 = alloca %"compiler/check:litv"
  %l89 = alloca ptr
  %l94 = alloca ptr
  %l95 = alloca ptr
  %l96 = alloca %"compiler/source:Span"
  %l97 = alloca %"compiler/source:Span"
  %l98 = alloca i32
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca ptr
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca %"compiler/source:Span"
  %l109 = alloca i32
  %l110 = alloca ptr
  %l111 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l115 = alloca %"compiler/source:Span"
  %l116 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Chain", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l13, !tbaa !27
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr ptr, ptr %t8, i64 %t5
  %t10 = load ptr, ptr %t9, !tbaa !39
  store ptr %t10, ptr %l6, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Chain", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = add i64 %t16, 1
  %t20 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr ptr, ptr %t21, i64 %t18
  %t23 = load ptr, ptr %t22, !tbaa !39
  store ptr %t23, ptr %l7, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Chain", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l22, !tbaa !27
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 %t29
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 114}
  store i32 %t34, ptr %l8
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  br i1 %t38, label %bb1, label %bb2
bb1:
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  store i1 %t42, ptr %l27, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb3
bb3:
  %t44 = load i1, ptr %l27, !tbaa !21
  br i1 %t44, label %bb4, label %bb5
bb4:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l1
  %t47 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t49 = load ptr, ptr %l7, !tbaa !29
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebinary(ptr %v0, ptr %v1, ptr %v1, ptr %v4, ptr %t45, %"compiler/source:Span" %t46, i32 %t47, ptr %t48, ptr %t49, i32 %t50)
  store ptr %t57, ptr %l36
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load ptr, ptr %l36, !tbaa !29
  store ptr %t58, ptr %rv
  br label %ret
bb7:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l37, !tbaa !29
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t62 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t60)
  store %"compiler/source:Span" %t62, ptr %l39
  br label %bb8
bb8:
  %t63 = load ptr, ptr %l7, !tbaa !29
  %t65 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t63)
  store %"compiler/source:Span" %t65, ptr %l41
  br label %bb9
bb9:
  %t66 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t68 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t66)
  store { i64, ptr } %t68, ptr %l43
  br label %bb10
bb10:
  %t69 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l39
  %t73 = load %"compiler/source:Span", ptr %l41
  %t75 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t71, %"compiler/source:Span" %t72, %"compiler/source:Span" %t73, i64 %t70)
  store %"compiler/source:Span" %t75, ptr %l45
  br label %bb11
bb11:
  %t76 = load %"compiler/source:Span", ptr %l45
  store %"compiler/source:Span" %t76, ptr %l9
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  br i1 %t79, label %bb12, label %bb13
bb12:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l48, !tbaa !29
  %t82 = load ptr, ptr %l6, !tbaa !29
  store ptr %t82, ptr %l49, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l6, !tbaa !29
  %t88 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t83, ptr %t84)
  store %"compiler/check:litv" %t88, ptr %l53
  br label %bb14
bb13:
  br label %bb29
bb14:
  %t89 = load ptr, ptr %l5, !tbaa !29
  %t91 = icmp eq ptr %t89, null
  br i1 %t91, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_854899d5724a103b_e7dfb19072d83fa7)
  unreachable
bb16:
  br label %bb17
bb17:
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t94 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t95 = load %"compiler/source:Span", ptr %l9
  %t96 = load ptr, ptr %l48, !tbaa !29
  %t97 = load ptr, ptr %l49, !tbaa !29
  %t98 = load %"compiler/check:litv", ptr %l53
  %t102 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t96, ptr %t97, %"compiler/check:litv" %t98, ptr %t93, i32 %t94, %"compiler/source:Span" %t95, i1 false)
  store ptr %t102, ptr %l59
  br label %bb18
bb18:
  %t103 = load ptr, ptr %l59, !tbaa !29
  store ptr %t103, ptr %l10, !tbaa !29
  %t104 = load ptr, ptr %l10, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb19, label %bb20
bb19:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t108, %"compiler/source:Span" %t109)
  store ptr %t112, ptr %l64
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t113 = load ptr, ptr %l64, !tbaa !29
  store ptr %t113, ptr %rv
  br label %ret
bb22:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l65, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t115, ptr %l66
  %t116 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t116, ptr %l67
  %t117 = load i32, ptr %l8, !range !{i32 0, i32 114}
  store i32 %t117, ptr %l68
  %t118 = load ptr, ptr %l10, !tbaa !29
  store ptr %t118, ptr %l69, !tbaa !29
  %t119 = load ptr, ptr %l5, !tbaa !29
  %t121 = icmp eq ptr %t119, null
  br i1 %t121, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_852b58c2eb82b3cc_e47a0c64d3951188)
  unreachable
bb24:
  br label %bb25
bb25:
  %t123 = load ptr, ptr %l5, !tbaa !29
  store ptr %t123, ptr %l72, !tbaa !29
  %t124 = load ptr, ptr %l6, !tbaa !29
  %t126 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t124)
  store %"compiler/source:Span" %t126, ptr %l74
  br label %bb26
bb26:
  %t127 = load ptr, ptr %l7, !tbaa !29
  %t129 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t127)
  store %"compiler/source:Span" %t129, ptr %l76
  br label %bb27
bb27:
  %t130 = load ptr, ptr %l65, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l66
  %t132 = load %"compiler/source:Span", ptr %l67
  %t133 = load i32, ptr %l68, !range !{i32 0, i32 114}
  %t134 = load ptr, ptr %l69, !tbaa !29
  %t135 = load ptr, ptr %l72, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l74
  %t137 = load %"compiler/source:Span", ptr %l76
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v4, ptr %v3, ptr %v4, ptr %t130, %"compiler/source:Span" %t131, %"compiler/source:Span" %t132, i32 %t133, ptr %t134, ptr %t135, %"compiler/source:Span" %t136, %"compiler/source:Span" %t137)
  store ptr %t138, ptr %l77
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t139 = load ptr, ptr %l77, !tbaa !29
  store ptr %t139, ptr %rv
  br label %ret
bb29:
  %t140 = load ptr, ptr %l5, !tbaa !29
  %t142 = icmp eq ptr %t140, null
  br i1 %t142, label %bb30, label %bb31
bb30:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l80, !tbaa !29
  %t145 = load ptr, ptr %l7, !tbaa !29
  store ptr %t145, ptr %l81, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l7, !tbaa !29
  %t151 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t146, ptr %t147)
  store %"compiler/check:litv" %t151, ptr %l85
  br label %bb32
bb31:
  br label %bb41
bb32:
  %t152 = load ptr, ptr %l4, !tbaa !29
  %t153 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t154 = load %"compiler/source:Span", ptr %l9
  %t155 = load ptr, ptr %l80, !tbaa !29
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load %"compiler/check:litv", ptr %l85
  %t161 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v1, ptr %v2, ptr %v4, ptr %t155, ptr %t156, %"compiler/check:litv" %t157, ptr %t152, i32 %t153, %"compiler/source:Span" %t154, i1 true)
  store ptr %t161, ptr %l89
  br label %bb33
bb33:
  %t162 = load ptr, ptr %l89, !tbaa !29
  store ptr %t162, ptr %l11, !tbaa !29
  %t163 = load ptr, ptr %l11, !tbaa !29
  %t165 = icmp eq ptr %t163, null
  br i1 %t165, label %bb34, label %bb35
bb34:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l1
  %t171 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t167, %"compiler/source:Span" %t168)
  store ptr %t171, ptr %l94
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t172 = load ptr, ptr %l94, !tbaa !29
  store ptr %t172, ptr %rv
  br label %ret
bb37:
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l95, !tbaa !29
  %t174 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t174, ptr %l96
  %t175 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t175, ptr %l97
  %t176 = load i32, ptr %l8, !range !{i32 0, i32 114}
  store i32 %t176, ptr %l98
  %t177 = load ptr, ptr %l4, !tbaa !29
  store ptr %t177, ptr %l99, !tbaa !29
  %t178 = load ptr, ptr %l11, !tbaa !29
  store ptr %t178, ptr %l100, !tbaa !29
  %t179 = load ptr, ptr %l6, !tbaa !29
  %t181 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t179)
  store %"compiler/source:Span" %t181, ptr %l102
  br label %bb38
bb38:
  %t182 = load ptr, ptr %l7, !tbaa !29
  %t184 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t182)
  store %"compiler/source:Span" %t184, ptr %l104
  br label %bb39
bb39:
  %t185 = load ptr, ptr %l95, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l96
  %t187 = load %"compiler/source:Span", ptr %l97
  %t188 = load i32, ptr %l98, !range !{i32 0, i32 114}
  %t189 = load ptr, ptr %l99, !tbaa !29
  %t190 = load ptr, ptr %l100, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l102
  %t192 = load %"compiler/source:Span", ptr %l104
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v2, ptr %v4, ptr %v4, ptr %t185, %"compiler/source:Span" %t186, %"compiler/source:Span" %t187, i32 %t188, ptr %t189, ptr %t190, %"compiler/source:Span" %t191, %"compiler/source:Span" %t192)
  store ptr %t193, ptr %l105
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t194 = load ptr, ptr %l105, !tbaa !29
  store ptr %t194, ptr %rv
  br label %ret
bb41:
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l106, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t196, ptr %l107
  %t197 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t197, ptr %l108
  %t198 = load i32, ptr %l8, !range !{i32 0, i32 114}
  store i32 %t198, ptr %l109
  %t199 = load ptr, ptr %l4, !tbaa !29
  store ptr %t199, ptr %l110, !tbaa !29
  %t200 = load ptr, ptr %l5, !tbaa !29
  store ptr %t200, ptr %l111, !tbaa !29
  %t201 = load ptr, ptr %l6, !tbaa !29
  %t203 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t201)
  store %"compiler/source:Span" %t203, ptr %l113
  br label %bb42
bb42:
  %t204 = load ptr, ptr %l7, !tbaa !29
  %t206 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t204)
  store %"compiler/source:Span" %t206, ptr %l115
  br label %bb43
bb43:
  %t207 = load ptr, ptr %l106, !tbaa !29
  %t208 = load %"compiler/source:Span", ptr %l107
  %t209 = load %"compiler/source:Span", ptr %l108
  %t210 = load i32, ptr %l109, !range !{i32 0, i32 114}
  %t211 = load ptr, ptr %l110, !tbaa !29
  %t212 = load ptr, ptr %l111, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l113
  %t214 = load %"compiler/source:Span", ptr %l115
  %t215 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t207, %"compiler/source:Span" %t208, %"compiler/source:Span" %t209, i32 %t210, ptr %t211, ptr %t212, %"compiler/source:Span" %t213, %"compiler/source:Span" %t214)
  store ptr %t215, ptr %l116
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t216 = load ptr, ptr %l116, !tbaa !29
  store ptr %t216, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountsTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i1
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i1
  %l31 = alloca { i64, ptr }
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t8 = icmp eq i64 %t6, 24
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp eq i64 %t18, 1
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l16, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 0
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %t22, ptr %t27, ptr %t28)
  store i1 %t32, ptr %l19
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  %t33 = load i1, ptr %l19, !tbaa !21
  store i1 %t33, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l14, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb20
bb11:
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp eq i64 %t37, 2
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t42, ptr %l26, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 0
  %t46 = load ptr, ptr %t45, !tbaa !39
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisZeroLit(ptr %v0, ptr %v1, ptr %t41, ptr %t46)
  store i1 %t49, ptr %l28
  br label %bb14
bb13:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb15
bb14:
  %t50 = load i1, ptr %l28, !tbaa !21
  store i1 %t50, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t51 = load i1, ptr %l24, !tbaa !21
  br i1 %t51, label %bb16, label %bb17
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t53, ptr %l31, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 1
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t62 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %t52, ptr %t57, ptr %t58)
  store i1 %t62, ptr %l34
  br label %bb18
bb17:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb19
bb18:
  %t63 = load i1, ptr %l34, !tbaa !21
  store i1 %t63, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t64 = load i1, ptr %l29, !tbaa !21
  store i1 %t64, ptr %l20, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l20, !tbaa !21
  store i1 %t65, ptr %l4, !tbaa !21
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_d2b428b6a63c5a88_9cb41cac42ab9d54)
  unreachable
bb26:
  %t66 = load i1, ptr %l4, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversSeq(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca %"compiler/check:seqOf"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca %"compiler/check:seqOf"
  %l26 = alloca %"compiler/check:seqOf"
  %l27 = alloca i32
  %l29 = alloca i1
  %l33 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l67 = alloca i64
  %l96 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l107 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l112 = alloca i1
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %t1, i32 %a2)
  %t6 = extractvalue { i32, %"compiler/check:seqOf" } %t5, 1
  %t7 = extractvalue { i32, %"compiler/check:seqOf" } %t5, 0
  store i32 %t7, ptr %l27
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"compiler/check:seqOf" %t6, ptr %l26
  br label %bb1
bb1:
  %t10 = load %"compiler/check:seqOf", ptr %l26
  store %"compiler/check:seqOf" %t10, ptr %l23
  br label %bb4
bb2:
  %t11 = load i32, ptr %l27, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l29, !tbaa !21
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  %t16 = load %"compiler/check:seqOf", ptr %l23
  store %"compiler/check:seqOf" %t16, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t21 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %t17, ptr %t18)
  store i64 %t21, ptr %l33
  br label %bb5
bb5:
  %t22 = load i64, ptr %l33, !tbaa !24
  %t23 = add i64 %t22, 2
  store i64 %t23, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t25 = load i64, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load i64, ptr %l8, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb11
bb8:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l8, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l41, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb10
bb10:
  %t51 = load i64, ptr %l41, !tbaa !24
  store i64 %t51, ptr %l38, !tbaa !24
  br label %bb11
bb11:
  %t52 = load i64, ptr %l38, !tbaa !24
  store i64 %t52, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load i64, ptr %l10, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb14:
  br label %bb15
bb15:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l11, !tbaa !24
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l59
  br label %bb16
bb16:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  %t73 = load i64, ptr %l11, !tbaa !24
  store i64 %t73, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t75 = load i64, ptr %l14, !tbaa !24
  %t76 = load i64, ptr %l13, !tbaa !24
  %t79 = icmp sgt i64 %t75, %t76
  br i1 %t79, label %bb17, label %bb18
bb17:
  %t81 = load i64, ptr %l15, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb22
bb19:
  %t85 = load i64, ptr %l14, !tbaa !24
  %t86 = load i64, ptr %l13, !tbaa !24
  %t89 = sub i64 %t85, %t86
  %t90 = load i64, ptr %l15, !tbaa !24
  %t93 = add i64 %t89, %t90
  %t95 = sub i64 %t93, 1
  %t96 = load i64, ptr %l15, !tbaa !24
  %t99 = sdiv i64 %t95, %t96
  store i64 %t99, ptr %l67, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb21
bb21:
  %t101 = load i64, ptr %l67, !tbaa !24
  store i64 %t101, ptr %l64, !tbaa !24
  br label %bb22
bb22:
  %t102 = load i64, ptr %l64, !tbaa !24
  store i64 %t102, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb23
bb23:
  %t103 = load i64, ptr %l17, !tbaa !24
  %t104 = load i64, ptr %l16, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t111 = load i64, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l17, !tbaa !24
  %t113 = load i64, ptr %l15, !tbaa !24
  %t116 = mul i64 %t112, %t113
  %t119 = add i64 %t111, %t116
  store i64 %t119, ptr %l18, !tbaa !24
  %t121 = getelementptr %"compiler/check:seqOf", ptr %l5, i32 0, i32 0
  %t122 = load i32, ptr %t121, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %l12, i32 %t122)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t125 = load i64, ptr %l17, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l17, !tbaa !24
  br label %bb23
bb29:
  store { i64, ptr } %a3, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  store i64 %t133, ptr %l21, !tbaa !24
  br label %bb30
bb30:
  %t135 = load i64, ptr %l20, !tbaa !24
  %t136 = load i64, ptr %l21, !tbaa !24
  %t139 = icmp slt i64 %t135, %t136
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t143 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t143, ptr %l96, !tbaa !27
  %t144 = load i64, ptr %l20, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i32, ptr %t147, i64 %t144
  %t149 = load i32, ptr %t148, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %l12, i32 %t149)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t154 = load i64, ptr %l20, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l20, !tbaa !24
  br label %bb30
bb36:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l103, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l1, !tbaa !29
  %t161 = load i64, ptr %l11, !tbaa !24
  %t165 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqRows(ptr %v0, ptr %v1, ptr %v1, ptr %t159, ptr %t160, i64 %t161)
  store ptr %t165, ptr %l107
  br label %bb37
bb37:
  %t167 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %s3, ptr %l12)
  store { i64, ptr } %t167, ptr %l109
  br label %bb38
bb38:
  %t170 = add i64 %a4, 1
  %t171 = load ptr, ptr %l103, !tbaa !29
  %t172 = load ptr, ptr %l107, !tbaa !29
  %t173 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t175 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v1, ptr %s3, ptr %t171, ptr %t172, { i64, ptr } %t173, i64 %t170)
  store i1 %t175, ptr %l112
  br label %bb39
bb39:
  %t176 = load i1, ptr %l112, !tbaa !21
  %t177 = xor i1 %t176, true
  br i1 %t177, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s3)
  store i1 false, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t180 = load i64, ptr %l10, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l10, !tbaa !24
  br label %bb12
bb44:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectItems(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %t22 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 37
  store ptr %t8, ptr %l6, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t9)
  store %"compiler/source:Span" %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l9, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t13)
  store %"compiler/source:Span" %t15, ptr %l11
  br label %bb3
bb3:
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l11
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t17, %"compiler/source:Span" %t18, i32 %t16, i64 1)
  store ptr %t20, ptr %l13
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l13, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 0
  store i64 6, ptr %t23
  %t24 = load %"compiler/source:Span", ptr %l8
  %t25 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t24, 0
  %t27 = insertvalue { %"compiler/source:Span", ptr } %t25, ptr %t21, 1
  %t28 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t27, ptr %t28
  %t29 = load { i64, [3 x i64] }, ptr %t22
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t29, ptr %t31
  %t32 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t32, ptr %t31)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t23 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 14
  %t24 = load i32, ptr %l3, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l18
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l18, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 1
  %t33 = load { i64, [2 x i64] }, ptr %t32
  %t37 = extractvalue { i64, [2 x i64] } %t33, 0
  %t38 = icmp eq i64 %t37, 1
  br i1 %t38, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8d3e5410ed2a27a9_4efdc57dac874585)
  unreachable
bb15:
  %t40 = load i1, ptr %l21, !tbaa !21
  store i1 %t40, ptr %l7, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_1dfbc037cdd154d8_cf42e6f659c8aed4)
  unreachable
bb21:
  %t41 = load i1, ptr %l7, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 14
  store ptr %t13, ptr %l7, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t14)
  store ptr %t16, ptr %l9
  br label %bb4
bb3:
  %t17 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t19 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t17, 1
  call void @__olang_check_failed_text(ptr @olang_loc_43d20343d6f566de_136f8b7be912828a, { i64, ptr } %t20)
  unreachable
bb4:
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 0
  %t24 = load i64, ptr %t23, !tbaa !24
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t27 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %t25, i64 %t24)
  store ptr %t27, ptr %l12
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l12, !tbaa !29
  store ptr %t28, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %a0, %"compiler/check:reflList" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:reflList"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca i32
  %l22 = alloca i32
  %l31 = alloca i32
  %l33 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca i32
  %l56 = alloca i64
  %l59 = alloca i32
  %l68 = alloca i32
  %l74 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/check:reflList" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFunctions, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t19 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFuncDescriptor(ptr %v0, ptr %t11, i64 %t12, i32 %t13, i32 %t14)
  store i32 %t19, ptr %l13
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t20 = load i32, ptr %l13, !tbaa !23
  store i32 %t20, ptr %rv
  br label %ret
bb4:
  %t21 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr @G_2ecompiler_2fgeneric_2eListMethods, !tbaa !24
  %t26 = icmp eq i64 %t22, %t23
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 1
  %t34 = load i32, ptr %t33, !tbaa !23
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t40 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFuncDescriptor(ptr %v0, ptr %t31, i64 %t32, i32 %t34, i32 %t35)
  store i32 %t40, ptr %l22
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t41 = load i32, ptr %l22, !tbaa !23
  store i32 %t41, ptr %rv
  br label %ret
bb8:
  %t42 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load i64, ptr @G_2ecompiler_2fgeneric_2eListBuilders, !tbaa !24
  %t47 = icmp eq i64 %t43, %t44
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i64, ptr %l2, !tbaa !24
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t55 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 1
  %t56 = load i32, ptr %t55, !tbaa !23
  %t61 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFuncDescriptor(ptr %v0, ptr %t52, i64 %t53, i32 %t54, i32 %t56)
  store i32 %t61, ptr %l31
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t62 = load i32, ptr %l31, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
bb12:
  %t63 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 2
  %t64 = load i64, ptr %t63, !tbaa !24
  store i64 %t64, ptr %l3, !tbaa !24
  %t66 = load i64, ptr %l3, !tbaa !24
  %t67 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFields, !tbaa !24
  %t70 = icmp eq i64 %t66, %t67
  br i1 %t70, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t72 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  store i64 %t72, ptr %l33, !tbaa !24
  br label %bb29
bb16:
  %t74 = load i64, ptr %l3, !tbaa !24
  %t75 = load i64, ptr @G_2ecompiler_2fgeneric_2eListCases, !tbaa !24
  %t78 = icmp eq i64 %t74, %t75
  br i1 %t78, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t80 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  store i64 %t80, ptr %l33, !tbaa !24
  br label %bb29
bb20:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t83 = load i64, ptr @G_2ecompiler_2fgeneric_2eListParams, !tbaa !24
  %t86 = icmp eq i64 %t82, %t83
  br i1 %t86, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t88 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  store i64 %t88, ptr %l33, !tbaa !24
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t90 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescResult, !tbaa !24
  store i64 %t90, ptr %l33, !tbaa !24
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_56167ce98e06ac0c_8ddb750e2bed0608)
  unreachable
bb29:
  %t92 = load i64, ptr %l33, !tbaa !24
  store i64 %t92, ptr %l4, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  %t94 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t97 = icmp eq i64 %t93, %t94
  br i1 %t97, label %bb30, label %bb31
bb30:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  store ptr %t102, ptr %l51, !tbaa !29
  %t103 = load i64, ptr %l4, !tbaa !24
  store i64 %t103, ptr %l52, !tbaa !24
  %t104 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 1
  %t105 = load i32, ptr %t104, !tbaa !23
  store i32 %t105, ptr %l53, !tbaa !23
  %t106 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 3
  %t107 = load i64, ptr %t106, !tbaa !24
  %t109 = icmp slt i64 %t107, 0
  br i1 %t109, label %bb32, label %bb33
bb31:
  br label %bb36
bb32:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb34
bb33:
  %t111 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 3
  %t112 = load i64, ptr %t111, !tbaa !24
  store i64 %t112, ptr %l56, !tbaa !24
  br label %bb34
bb34:
  %t114 = load i64, ptr %l2, !tbaa !24
  %t115 = load ptr, ptr %l51, !tbaa !29
  %t116 = load i64, ptr %l52, !tbaa !24
  %t117 = load i32, ptr %l53, !tbaa !23
  %t118 = load i64, ptr %l56, !tbaa !24
  %t120 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %t115, i64 %t116, i32 %t117, i64 %t118, i64 %t114)
  store i32 %t120, ptr %l59
  br label %bb35
bb35:
  %t121 = load i32, ptr %l59, !tbaa !23
  store i32 %t121, ptr %rv
  br label %ret
bb36:
  %t122 = load i64, ptr %l4, !tbaa !24
  %t123 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t126 = icmp eq i64 %t122, %t123
  br i1 %t126, label %bb37, label %bb38
bb37:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i64, ptr %l4, !tbaa !24
  %t133 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  %t135 = load i64, ptr %l2, !tbaa !24
  %t140 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %t131, i64 %t132, i32 %t134, i64 %t135, i64 0)
  store i32 %t140, ptr %l68
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t141 = load i32, ptr %l68, !tbaa !23
  store i32 %t141, ptr %rv
  br label %ret
bb40:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t146 = load i64, ptr %l4, !tbaa !24
  %t147 = getelementptr %"compiler/check:reflList", ptr %l1, i32 0, i32 1
  %t148 = load i32, ptr %t147, !tbaa !23
  %t149 = load i64, ptr %l2, !tbaa !24
  %t154 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %t145, i64 %t146, i32 %t148, i64 0, i64 %t149)
  store i32 %t154, ptr %l74
  br label %bb41
bb41:
  %t155 = load i32, ptr %l74, !tbaa !23
  store i32 %t155, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeep(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 37
  %t8 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l19 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l66 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca i1
  %l91 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca %"compiler/diagmsg:Msg"
  %l96 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca i1
  %l101 = alloca i1
  %l110 = alloca i1
  %l112 = alloca i1
  %l123 = alloca i1
  %l130 = alloca ptr
  %l134 = alloca ptr
  %l137 = alloca i32
  %l141 = alloca i1
  %l145 = alloca i1
  %l149 = alloca i1
  %l151 = alloca i1
  %l154 = alloca ptr
  %l156 = alloca ptr
  %l158 = alloca i64
  %l160 = alloca ptr
  %l162 = alloca i64
  %l164 = alloca %"compiler/source:Span"
  %l165 = alloca ptr
  %l167 = alloca %"compiler/source:Span"
  %l168 = alloca { i64, ptr }
  %l170 = alloca %"compiler/check:idleCall"
  %l171 = alloca ptr
  %l172 = alloca %"compiler/source:Span"
  %l175 = alloca ptr
  %l178 = alloca ptr
  %l179 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca %"compiler/source:Span"
  %l189 = alloca ptr
  %l197 = alloca ptr
  %l200 = alloca i32
  %l203 = alloca i1
  %l204 = alloca ptr
  %l205 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca i1
  %l216 = alloca ptr
  %l219 = alloca %"compiler/source:Span"
  %l221 = alloca %"compiler/diagmsg:Msg"
  %l222 = alloca %"compiler/diagmsg:Msg"
  %l223 = alloca %"compiler/diagmsg:Msg"
  %l224 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t101 = alloca { i64, [3 x i64] }, align 8
  %t342 = alloca { i64, [3 x i64] }, align 8
  %t376 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t2 = load ptr, ptr %l23, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l23, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l24, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l1
  %t18 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprStmt(ptr %v0, ptr %v1, ptr %t16, %"compiler/source:Span" %t17, ptr %t18)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t23 = load ptr, ptr %l32, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l32, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l33, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l33, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 114}
  store i32 %t35, ptr %l4
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb20
bb12:
  %t43 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t45 = trunc i64 92 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb15
bb14:
  %t48 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t50 = trunc i64 93 to i32
  %t51 = icmp eq i32 %t48, %t50
  store i1 %t51, ptr %l42, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l42, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l1
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t57 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t59 = trunc i64 92 to i32
  %t60 = icmp eq i32 %t57, %t59
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estep(ptr %v0, ptr %v1, ptr %t54, %"compiler/source:Span" %t55, ptr %t56, i1 %t60)
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  br label %bb106
bb20:
  %t65 = load ptr, ptr %l2, !tbaa !29
  store ptr %t65, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t66 = load ptr, ptr %l50, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t69 = load ptr, ptr %l50, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 30}
  %t72 = icmp eq i64 %t70, 4
  store i1 %t72, ptr %l51, !tbaa !21
  br label %bb22
bb22:
  %t73 = load i1, ptr %l51, !tbaa !21
  br i1 %t73, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 1
  %t78 = load i32, ptr %t77, !range !{i32 0, i32 114}
  store i32 %t78, ptr %l6
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb32
bb25:
  %t86 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t88 = trunc i64 96 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb26, label %bb27
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l60, !tbaa !29
  %t92 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t92, ptr %l61
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l2, !tbaa !29
  %t96 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t100 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t93, ptr %t94, i32 %t96)
  store ptr %t100, ptr %l66
  br label %bb28
bb27:
  br label %bb30
bb28:
  store { i64, [3 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [3 x i64] }, ptr %t101, i32 0, i32 0
  store i64 2, ptr %t102
  %t103 = load %"compiler/source:Span", ptr %l61
  %t104 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t103, 0
  %t105 = load ptr, ptr %l66, !tbaa !29
  %t106 = insertvalue { %"compiler/source:Span", ptr } %t104, ptr %t105, 1
  %t107 = getelementptr { i64, [3 x i64] }, ptr %t101, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t106, ptr %t107
  %t108 = load { i64, [3 x i64] }, ptr %t101
  %t110 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t108, ptr %t110
  %t111 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t111, ptr %t110)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l1
  %t115 = load ptr, ptr %l7, !tbaa !29
  %t116 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t118 = trunc i64 92 to i32
  %t119 = icmp eq i32 %t116, %t118
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estep(ptr %v0, ptr %v1, ptr %t113, %"compiler/source:Span" %t114, ptr %t115, i1 %t119)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb32:
  %t124 = load ptr, ptr %l2, !tbaa !29
  store ptr %t124, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t125 = load ptr, ptr %l74, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb33, label %bb34
bb33:
  %t128 = load ptr, ptr %l74, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 30}
  %t131 = icmp eq i64 %t129, 12
  store i1 %t131, ptr %l75, !tbaa !21
  br label %bb34
bb34:
  %t132 = load i1, ptr %l75, !tbaa !21
  br i1 %t132, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb93
bb37:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l2, !tbaa !29
  %t136 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t140 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t133, ptr %t134, i32 %t136)
  store ptr %t140, ptr %l82
  br label %bb38
bb38:
  %t141 = load ptr, ptr %l82, !tbaa !29
  store ptr %t141, ptr %l8, !tbaa !29
  %t142 = load ptr, ptr %l8, !tbaa !29
  store ptr %t142, ptr %l83, !tbaa !29
  store i1 false, ptr %l84, !tbaa !21
  %t143 = load ptr, ptr %l83, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb39, label %bb40
bb39:
  %t146 = load ptr, ptr %l83, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 18}
  %t149 = icmp eq i64 %t147, 9
  store i1 %t149, ptr %l84, !tbaa !21
  br label %bb40
bb40:
  %t150 = load i1, ptr %l84, !tbaa !21
  br i1 %t150, label %bb41, label %bb42
bb41:
  %t151 = load ptr, ptr %l8, !tbaa !29
  %t153 = getelementptr { i64, [5 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t153, i32 0, i32 2
  %t155 = load i32, ptr %t154, !range !{i32 0, i32 52}
  store i32 %t155, ptr %l9
  br label %bb43
bb42:
  br label %bb49
bb43:
  %t157 = load i32, ptr %l9, !range !{i32 0, i32 52}
  %t159 = trunc i64 24 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l91, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l2, !tbaa !29
  %t167 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %t163, ptr %t164)
  store %"compiler/source:Span" %t167, ptr %l94
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t168 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAStatement(ptr %s7)
  store %"compiler/diagmsg:Msg" %t168, ptr %l95
  br label %bb47
bb47:
  %t169 = load ptr, ptr %l91, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l94
  %t171 = load %"compiler/diagmsg:Msg", ptr %l95
  %t172 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t169, %"compiler/source:Span" %t170, %"compiler/diagmsg:Msg" %t171)
  store i64 %t172, ptr %l96
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_602058b5bbdc5ba4_407e96c83aaf1680)
  unreachable
bb54:
  %t173 = load ptr, ptr %l8, !tbaa !29
  store ptr %t173, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t174 = load ptr, ptr %l97, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb55, label %bb56
bb55:
  %t177 = load ptr, ptr %l97, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 18}
  %t180 = icmp eq i64 %t178, 4
  store i1 %t180, ptr %l98, !tbaa !21
  br label %bb56
bb56:
  %t181 = load i1, ptr %l98, !tbaa !21
  br i1 %t181, label %bb57, label %bb58
bb57:
  %t182 = load ptr, ptr %l8, !tbaa !29
  %t184 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t184, i32 0, i32 0
  %t186 = load %"compiler/source:Span", ptr %t185
  store %"compiler/source:Span" %t186, ptr %l10
  %t188 = load ptr, ptr %l8, !tbaa !29
  %t190 = getelementptr { i64, [5 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t190, i32 0, i32 1
  %t192 = load i32, ptr %t191
  %t194 = load ptr, ptr %l8, !tbaa !29
  %t196 = getelementptr { i64, [5 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t196, i32 0, i32 2
  %t198 = load ptr, ptr %t197
  store ptr %t198, ptr %l12, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t204 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t200, i32 %t192)
  store i1 %t204, ptr %l110
  br label %bb59
bb58:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb60
bb59:
  %t205 = load i1, ptr %l110, !tbaa !21
  %t206 = xor i1 %t205, true
  store i1 %t206, ptr %l101, !tbaa !21
  br label %bb60
bb60:
  %t208 = load i1, ptr %l101, !tbaa !21
  br i1 %t208, label %bb61, label %bb62
bb61:
  %t209 = load ptr, ptr %l8, !tbaa !29
  %t211 = getelementptr { i64, [5 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t211, i32 0, i32 0
  %t213 = load %"compiler/source:Span", ptr %t212
  store %"compiler/source:Span" %t213, ptr %l13
  %t215 = load ptr, ptr %l8, !tbaa !29
  %t217 = getelementptr { i64, [5 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t217, i32 0, i32 1
  %t219 = load i32, ptr %t218
  %t221 = load ptr, ptr %l8, !tbaa !29
  %t223 = getelementptr { i64, [5 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t223, i32 0, i32 2
  %t225 = load ptr, ptr %t224
  store ptr %t225, ptr %l15, !tbaa !29
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 2
  %t236 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t232, i32 %t219)
  store i1 %t236, ptr %l123
  br label %bb63
bb62:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb64
bb63:
  %t237 = load i1, ptr %l123, !tbaa !21
  store i1 %t237, ptr %l112, !tbaa !21
  br label %bb64
bb64:
  %t238 = load i1, ptr %l112, !tbaa !21
  br i1 %t238, label %bb65, label %bb66
bb65:
  %t239 = load ptr, ptr %l8, !tbaa !29
  %t241 = getelementptr { i64, [5 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t241, i32 0, i32 0
  %t243 = load %"compiler/source:Span", ptr %t242
  store %"compiler/source:Span" %t243, ptr %l16
  %t245 = load ptr, ptr %l8, !tbaa !29
  %t247 = getelementptr { i64, [5 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t247, i32 0, i32 1
  %t249 = load i32, ptr %t248
  store i32 %t249, ptr %l17, !tbaa !23
  %t251 = load ptr, ptr %l8, !tbaa !29
  %t253 = getelementptr { i64, [5 x i64] }, ptr %t251, i32 0, i32 1
  %t254 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t253, i32 0, i32 2
  %t255 = load ptr, ptr %t254
  %t257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t257, ptr %l130, !tbaa !29
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l1
  %t264 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v0, ptr %v0, ptr %t258, %"compiler/source:Span" %t259, ptr %t255, i64 -1)
  store ptr %t264, ptr %l134
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t265 = load ptr, ptr %l130, !tbaa !29
  %t266 = load ptr, ptr %l134, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t265, ptr %t266)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t267 = load ptr, ptr %l8, !tbaa !29
  %t270 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t267)
  store i32 %t270, ptr %l137
  br label %bb70
bb70:
  %t271 = load i32, ptr %l137, !tbaa !23
  store i32 %t271, ptr %l19, !tbaa !23
  %t272 = load i32, ptr %l19, !tbaa !23
  %t273 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t276 = icmp ne i32 %t272, %t273
  br i1 %t276, label %bb71, label %bb72
bb71:
  %t278 = load i32, ptr %l19, !tbaa !23
  %t279 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t282 = icmp ne i32 %t278, %t279
  store i1 %t282, ptr %l141, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb73
bb73:
  %t284 = load i1, ptr %l141, !tbaa !21
  br i1 %t284, label %bb74, label %bb75
bb74:
  %t285 = load i32, ptr %l19, !tbaa !23
  %t286 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t289 = icmp ne i32 %t285, %t286
  store i1 %t289, ptr %l145, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb76
bb76:
  %t291 = load i1, ptr %l145, !tbaa !21
  br i1 %t291, label %bb77, label %bb78
bb77:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %t292)
  store i1 %t294, ptr %l151
  br label %bb79
bb78:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb80
bb79:
  %t295 = load i1, ptr %l151, !tbaa !21
  %t296 = xor i1 %t295, true
  store i1 %t296, ptr %l149, !tbaa !21
  br label %bb80
bb80:
  %t298 = load i1, ptr %l149, !tbaa !21
  br i1 %t298, label %bb81, label %bb82
bb81:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 114
  store ptr %t301, ptr %l154, !tbaa !29
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t302)
  store ptr %t304, ptr %l156
  br label %bb83
bb82:
  br label %bb90
bb83:
  %t305 = load ptr, ptr %l156, !tbaa !29
  %t307 = getelementptr %"compiler/check:frame", ptr %t305, i32 0, i32 0
  %t308 = load i64, ptr %t307, !tbaa !24
  store i64 %t308, ptr %l158, !tbaa !24
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t309)
  store ptr %t311, ptr %l160
  br label %bb84
bb84:
  %t312 = load ptr, ptr %l160, !tbaa !29
  %t314 = getelementptr %"compiler/check:frame", ptr %t312, i32 0, i32 2
  %t315 = load i64, ptr %t314, !tbaa !24
  store i64 %t315, ptr %l162, !tbaa !24
  %t316 = load ptr, ptr %l2, !tbaa !29
  %t318 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t316)
  store %"compiler/source:Span" %t318, ptr %l164
  br label %bb85
bb85:
  %t319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t319, ptr %l165, !tbaa !29
  %t320 = load ptr, ptr %l2, !tbaa !29
  %t322 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t320)
  store %"compiler/source:Span" %t322, ptr %l167
  br label %bb86
bb86:
  %t323 = load ptr, ptr %l165, !tbaa !29
  %t324 = load %"compiler/source:Span", ptr %l167
  %t325 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t323, %"compiler/source:Span" %t324)
  store { i64, ptr } %t325, ptr %l168
  br label %bb87
bb87:
  %t326 = load ptr, ptr %l8, !tbaa !29
  %t327 = load i64, ptr %l158, !tbaa !24
  %t328 = load i64, ptr %l162, !tbaa !24
  %t329 = load %"compiler/source:Span", ptr %l164
  %t330 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t332 = call %"compiler/check:idleCall" @compiler_2fcheck_3aidleCall_2ector(ptr %v0, ptr %v0, ptr %v0, i64 %t327, i64 %t328, %"compiler/source:Span" %t329, { i64, ptr } %t330, ptr %t326)
  store %"compiler/check:idleCall" %t332, ptr %l170
  br label %bb88
bb88:
  %t333 = load ptr, ptr %l154, !tbaa !29
  %t334 = load %"compiler/check:idleCall", ptr %l170
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2ePush_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %v0, ptr %t333, %"compiler/check:idleCall" %t334)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l171, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t336, ptr %l172
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l8, !tbaa !29
  %t341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArgs(ptr %v0, ptr %v0, ptr %v0, ptr %t337, ptr %t338)
  store ptr %t341, ptr %l175
  br label %bb91
bb91:
  store { i64, [3 x i64] } zeroinitializer, ptr %t342
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 0
  store i64 2, ptr %t343
  %t344 = load %"compiler/source:Span", ptr %l172
  %t345 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t344, 0
  %t346 = load ptr, ptr %l175, !tbaa !29
  %t347 = insertvalue { %"compiler/source:Span", ptr } %t345, ptr %t346, 1
  %t348 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t347, ptr %t348
  %t349 = load { i64, [3 x i64] }, ptr %t342
  %t351 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t349, ptr %t351
  %t352 = load ptr, ptr %l171, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t352, ptr %t351)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb93:
  %t354 = load ptr, ptr %l2, !tbaa !29
  store ptr %t354, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t355 = load ptr, ptr %l178, !tbaa !29
  %t356 = icmp ne ptr %t355, null
  br i1 %t356, label %bb94, label %bb95
bb94:
  %t358 = load ptr, ptr %l178, !tbaa !29
  %t359 = load i64, ptr %t358, !range !{i64 0, i64 30}
  %t361 = icmp eq i64 %t359, 21
  store i1 %t361, ptr %l179, !tbaa !21
  br label %bb95
bb95:
  %t362 = load i1, ptr %l179, !tbaa !21
  br i1 %t362, label %bb96, label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb101
bb98:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/check:Checker", ptr %t363, i32 0, i32 43
  store i1 true, ptr %t365, !tbaa !21
  %t366 = load ptr, ptr %l0, !tbaa !29
  store ptr %t366, ptr %l183, !tbaa !29
  %t367 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t367, ptr %l184
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load ptr, ptr %l2, !tbaa !29
  %t371 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t375 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t368, ptr %t369, i32 %t371)
  store ptr %t375, ptr %l189
  br label %bb99
bb99:
  store { i64, [3 x i64] } zeroinitializer, ptr %t376
  %t377 = getelementptr { i64, [3 x i64] }, ptr %t376, i32 0, i32 0
  store i64 2, ptr %t377
  %t378 = load %"compiler/source:Span", ptr %l184
  %t379 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t378, 0
  %t380 = load ptr, ptr %l189, !tbaa !29
  %t381 = insertvalue { %"compiler/source:Span", ptr } %t379, ptr %t380, 1
  %t382 = getelementptr { i64, [3 x i64] }, ptr %t376, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t381, ptr %t382
  %t383 = load { i64, [3 x i64] }, ptr %t376
  %t385 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t383, ptr %t385
  %t386 = load ptr, ptr %l183, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t386, ptr %t385)
  br label %bb100
bb100:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/check:Checker", ptr %t388, i32 0, i32 43
  store i1 false, ptr %t390, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_check_failed(ptr @olang_loc_a929affe4386ca95_c275f1e9d349f711)
  unreachable
bb106:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load ptr, ptr %l2, !tbaa !29
  %t394 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t398 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t391, ptr %t392, i32 %t394)
  store ptr %t398, ptr %l197
  br label %bb107
bb107:
  %t399 = load ptr, ptr %l197, !tbaa !29
  %t403 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t399)
  store i32 %t403, ptr %l200
  br label %bb108
bb108:
  %t404 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t405 = load i32, ptr %l200, !tbaa !23
  %t407 = icmp eq i32 %t405, %t404
  br i1 %t407, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb110:
  br label %bb111
bb111:
  %t409 = load ptr, ptr %l2, !tbaa !29
  store ptr %t409, ptr %l204, !tbaa !29
  store i1 false, ptr %l205, !tbaa !21
  %t410 = load ptr, ptr %l204, !tbaa !29
  %t411 = icmp ne ptr %t410, null
  br i1 %t411, label %bb112, label %bb113
bb112:
  %t413 = load ptr, ptr %l204, !tbaa !29
  %t414 = load i64, ptr %t413, !range !{i64 0, i64 30}
  %t416 = icmp eq i64 %t414, 1
  store i1 %t416, ptr %l205, !tbaa !21
  br label %bb113
bb113:
  %t417 = load i1, ptr %l205, !tbaa !21
  br i1 %t417, label %bb114, label %bb115
bb114:
  %t418 = load ptr, ptr %l2, !tbaa !29
  %t420 = getelementptr { i64, [4 x i64] }, ptr %t418, i32 0, i32 1
  %t421 = getelementptr { %"compiler/source:Span", i32 }, ptr %t420, i32 0, i32 1
  %t422 = load i32, ptr %t421, !range !{i32 0, i32 114}
  store i32 %t422, ptr %l21
  br label %bb116
bb115:
  br label %bb117
bb116:
  %t424 = load i32, ptr %l21, !range !{i32 0, i32 114}
  %t426 = trunc i64 5 to i32
  %t427 = icmp eq i32 %t424, %t426
  store i1 %t427, ptr %l203, !tbaa !21
  br label %bb128
bb117:
  %t429 = load ptr, ptr %l2, !tbaa !29
  store ptr %t429, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t430 = load ptr, ptr %l212, !tbaa !29
  %t431 = icmp ne ptr %t430, null
  br i1 %t431, label %bb118, label %bb119
bb118:
  %t433 = load ptr, ptr %l212, !tbaa !29
  %t434 = load i64, ptr %t433, !range !{i64 0, i64 30}
  %t436 = icmp eq i64 %t434, 20
  store i1 %t436, ptr %l213, !tbaa !21
  br label %bb119
bb119:
  %t437 = load i1, ptr %l213, !tbaa !21
  br i1 %t437, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb128
bb123:
  br i1 true, label %bb124, label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb127
bb126:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_c2976cb1f3dad95e_90ea7f94faae157a)
  unreachable
bb128:
  %t438 = load i1, ptr %l203, !tbaa !21
  store i1 %t438, ptr %l22, !tbaa !21
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l216, !tbaa !29
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load ptr, ptr %l2, !tbaa !29
  %t444 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotStmtSpan(ptr %v0, ptr %v1, ptr %t440, ptr %t441)
  store %"compiler/source:Span" %t444, ptr %l219
  br label %bb129
bb129:
  %t445 = load i1, ptr %l22, !tbaa !21
  br i1 %t445, label %bb130, label %bb131
bb130:
  %t447 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinNextLine(ptr %s0)
  store %"compiler/diagmsg:Msg" %t447, ptr %l222
  br label %bb132
bb131:
  %t448 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAStatement(ptr %s0)
  store %"compiler/diagmsg:Msg" %t448, ptr %l223
  br label %bb133
bb132:
  %t449 = load %"compiler/diagmsg:Msg", ptr %l222
  store %"compiler/diagmsg:Msg" %t449, ptr %l221
  br label %bb134
bb133:
  %t450 = load %"compiler/diagmsg:Msg", ptr %l223
  store %"compiler/diagmsg:Msg" %t450, ptr %l221
  br label %bb134
bb134:
  %t451 = load ptr, ptr %l216, !tbaa !29
  %t452 = load %"compiler/source:Span", ptr %l219
  %t453 = load %"compiler/diagmsg:Msg", ptr %l221
  %t454 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t451, %"compiler/source:Span" %t452, %"compiler/diagmsg:Msg" %t453)
  store i64 %t454, ptr %l224
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnTypeParams(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca ptr
  %l22 = alloca i64
  %l26 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca ptr
  %l49 = alloca i32
  %l51 = alloca i32
  %l55 = alloca { i64, ptr }
  %l59 = alloca %"compiler/source:Span"
  %l63 = alloca { i64, ptr }
  %l65 = alloca %"compiler/diagmsg:Msg"
  %l66 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i1
  %l80 = alloca i1
  %l83 = alloca ptr
  %l89 = alloca ptr
  %l93 = alloca %"compiler/names:Ref"
  %l98 = alloca { i64, ptr }
  %l104 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i64
  %l112 = alloca i1
  %l114 = alloca ptr
  %l120 = alloca %"compiler/source:Span"
  %l121 = alloca ptr
  %l127 = alloca %"compiler/source:Span"
  %l128 = alloca { i64, ptr }
  %l129 = alloca %"compiler/diagmsg:Msg"
  %l130 = alloca i64
  %l139 = alloca { i64, ptr }
  %l145 = alloca i1
  %l147 = alloca ptr
  %l149 = alloca %"compiler/source:Span"
  %l150 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l153 = alloca { i64, ptr }
  %l154 = alloca %"compiler/diagmsg:Msg"
  %l155 = alloca i64
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l18
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l18, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l22
  br label %bb2
bb2:
  %t18 = load i64, ptr %l22, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t19, i64 -1, i64 %t20, i32 %t21, i32 0)
  store ptr %t25, ptr %l26
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Func", ptr %t26, i32 0, i32 5
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/ast:Func", ptr %t35, i32 0, i32 5
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l6, !tbaa !24
  br label %bb6
bb5:
  br label %bb76
bb6:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb7, label %bb8
bb7:
  br label %bb75
bb8:
  br label %bb9
bb9:
  %t52 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t52, ptr %l39, !tbaa !27
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 %t53
  %t58 = load ptr, ptr %t57, !tbaa !39
  store ptr %t58, ptr %l7, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load ptr, ptr %l7, !tbaa !29
  %t64 = getelementptr %"compiler/ast:TypeParam", ptr %t62, i32 0, i32 1
  %t65 = load i32, ptr %t64, !tbaa !23
  %t69 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesType(ptr %v0, ptr %t60, i64 %t61, i32 %t65)
  store i1 %t69, ptr %l46
  br label %bb10
bb10:
  %t70 = load i1, ptr %l46, !tbaa !21
  br i1 %t70, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l47, !tbaa !29
  %t72 = load ptr, ptr %l7, !tbaa !29
  %t74 = getelementptr %"compiler/ast:TypeParam", ptr %t72, i32 0, i32 0
  %t75 = getelementptr %"compiler/source:Span", ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  store i32 %t76, ptr %l49, !tbaa !23
  %t77 = load ptr, ptr %l7, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TypeParam", ptr %t77, i32 0, i32 0
  %t80 = getelementptr %"compiler/source:Span", ptr %t79, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  store i32 %t81, ptr %l51, !tbaa !23
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l7, !tbaa !29
  %t85 = getelementptr %"compiler/ast:TypeParam", ptr %t83, i32 0, i32 1
  %t86 = load i32, ptr %t85, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t82, i32 %t86)
  store { i64, ptr } %t89, ptr %l55
  br label %bb13
bb12:
  br label %bb18
bb13:
  %t90 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t93 = trunc i64 %t91 to i32
  %t94 = load i32, ptr %l51, !tbaa !23
  %t96 = add i32 %t94, %t93
  %t97 = load i32, ptr %l49, !tbaa !23
  %t99 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t97, i32 %t96)
  store %"compiler/source:Span" %t99, ptr %l59
  br label %bb14
bb14:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l7, !tbaa !29
  %t103 = getelementptr %"compiler/ast:TypeParam", ptr %t101, i32 0, i32 1
  %t104 = load i32, ptr %t103, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s4, ptr %t100, i32 %t104)
  store { i64, ptr } %t107, ptr %l63
  br label %bb15
bb15:
  %t108 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNamesType(ptr %s4, ptr %s4, { i64, ptr } %t114)
  store %"compiler/diagmsg:Msg" %t116, ptr %l65
  br label %bb16
bb16:
  %t117 = load ptr, ptr %l47, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l59
  %t119 = load %"compiler/diagmsg:Msg", ptr %l65
  %t120 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t117, %"compiler/source:Span" %t118, %"compiler/diagmsg:Msg" %t119)
  store i64 %t120, ptr %l66
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb18
bb18:
  %t121 = load ptr, ptr %l7, !tbaa !29
  %t123 = getelementptr %"compiler/ast:TypeParam", ptr %t121, i32 0, i32 2
  %t124 = load ptr, ptr %t123, !tbaa !29
  store ptr %t124, ptr %l8, !tbaa !29
  %t126 = load ptr, ptr %l8, !tbaa !29
  store ptr %t126, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t127 = load ptr, ptr %l69, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb19, label %bb20
bb19:
  %t130 = load ptr, ptr %l69, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 8}
  %t133 = icmp eq i64 %t131, 0
  store i1 %t133, ptr %l70, !tbaa !21
  br label %bb20
bb20:
  %t134 = load i1, ptr %l70, !tbaa !21
  br i1 %t134, label %bb21, label %bb22
bb21:
  %t135 = load ptr, ptr %l8, !tbaa !29
  %t137 = getelementptr { i64, [5 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t137, i32 0, i32 0
  %t139 = load %"compiler/source:Span", ptr %t138
  store %"compiler/source:Span" %t139, ptr %l9
  %t141 = load ptr, ptr %l8, !tbaa !29
  %t143 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t143, i32 0, i32 1
  %t145 = load { i64, ptr }, ptr %t144
  store { i64, ptr } %t145, ptr %l10, !tbaa !27
  br label %bb23
bb22:
  br label %bb32
bb23:
  %t147 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t151 = icmp eq i64 %t149, 1
  br i1 %t151, label %bb24, label %bb25
bb24:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  store ptr %t159, ptr %l83, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 0
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/load:Loader", ptr %t166, i32 0, i32 10
  %t169 = load i64, ptr %l3, !tbaa !24
  %t172 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t168, i64 %t169)
  store ptr %t172, ptr %l89
  br label %bb26
bb25:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb28
bb26:
  %t173 = load ptr, ptr %l89, !tbaa !29
  %t175 = getelementptr %"compiler/load:Module", ptr %t173, i32 0, i32 4
  %t176 = load i64, ptr %t175, !tbaa !24
  %t177 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 0
  %t178 = load i32, ptr %t177, !tbaa !23
  %t179 = load ptr, ptr %l83, !tbaa !29
  %t182 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t179, i64 %t176, i32 %t178)
  store %"compiler/names:Ref" %t182, ptr %l93
  br label %bb27
bb27:
  %t183 = getelementptr %"compiler/names:Ref", ptr %l93, i32 0, i32 0
  %t184 = load i32, ptr %t183, !range !{i32 0, i32 9}
  %t186 = trunc i64 0 to i32
  %t187 = icmp eq i32 %t184, %t186
  store i1 %t187, ptr %l80, !tbaa !21
  br label %bb28
bb28:
  %t189 = load i1, ptr %l80, !tbaa !21
  br i1 %t189, label %bb29, label %bb30
bb29:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l9
  %t192 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t192, ptr %l98, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr i32, ptr %t194, i64 0
  %t196 = load i32, ptr %t195, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %t190, %"compiler/source:Span" %t191, i32 %t196)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb74
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_e4171899205744bd_2a3775717c01c5d1)
  unreachable
bb37:
  %t200 = load ptr, ptr %l7, !tbaa !29
  %t202 = getelementptr %"compiler/ast:TypeParam", ptr %t200, i32 0, i32 2
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = icmp eq ptr %t203, null
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb38, label %bb39
bb38:
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l105, !tbaa !29
  %t210 = load i64, ptr %l3, !tbaa !24
  store i64 %t210, ptr %l106, !tbaa !24
  %t211 = load ptr, ptr %l7, !tbaa !29
  %t213 = getelementptr %"compiler/ast:TypeParam", ptr %t211, i32 0, i32 2
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = icmp eq ptr %t214, null
  br i1 %t216, label %bb40, label %bb41
bb39:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb44
bb40:
  call void @__olang_check_failed(ptr @olang_loc_f9f7abe6f4095c55_11136f6e879bf089)
  unreachable
bb41:
  br label %bb42
bb42:
  %t218 = load ptr, ptr %l7, !tbaa !29
  %t220 = getelementptr %"compiler/ast:TypeParam", ptr %t218, i32 0, i32 2
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t222 = load ptr, ptr %l105, !tbaa !29
  %t223 = load i64, ptr %l106, !tbaa !24
  %t225 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v0, ptr %t222, i64 %t223, ptr %t221)
  store i1 %t225, ptr %l112
  br label %bb43
bb43:
  %t226 = load i1, ptr %l112, !tbaa !21
  %t227 = xor i1 %t226, true
  store i1 %t227, ptr %l104, !tbaa !21
  br label %bb44
bb44:
  %t229 = load i1, ptr %l104, !tbaa !21
  br i1 %t229, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s7
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l114, !tbaa !29
  %t231 = load ptr, ptr %l7, !tbaa !29
  %t233 = getelementptr %"compiler/ast:TypeParam", ptr %t231, i32 0, i32 2
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = icmp eq ptr %t234, null
  br i1 %t236, label %bb47, label %bb48
bb46:
  br label %bb58
bb47:
  call void @__olang_check_failed(ptr @olang_loc_f9f7abe6f4095c55_11136f6e879bf089)
  unreachable
bb48:
  br label %bb49
bb49:
  %t238 = load ptr, ptr %l7, !tbaa !29
  %t240 = getelementptr %"compiler/ast:TypeParam", ptr %t238, i32 0, i32 2
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t241)
  store %"compiler/source:Span" %t243, ptr %l120
  br label %bb50
bb50:
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l121, !tbaa !29
  %t245 = load ptr, ptr %l7, !tbaa !29
  %t247 = getelementptr %"compiler/ast:TypeParam", ptr %t245, i32 0, i32 2
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t250 = icmp eq ptr %t248, null
  br i1 %t250, label %bb51, label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_f9f7abe6f4095c55_11136f6e879bf089)
  unreachable
bb52:
  br label %bb53
bb53:
  %t252 = load ptr, ptr %l7, !tbaa !29
  %t254 = getelementptr %"compiler/ast:TypeParam", ptr %t252, i32 0, i32 2
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t257 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t255)
  store %"compiler/source:Span" %t257, ptr %l127
  br label %bb54
bb54:
  %t258 = load ptr, ptr %l121, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l127
  %t260 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t258, %"compiler/source:Span" %t259)
  store { i64, ptr } %t260, ptr %l128
  br label %bb55
bb55:
  %t261 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %s7, { i64, ptr } %t261)
  store %"compiler/diagmsg:Msg" %t262, ptr %l129
  br label %bb56
bb56:
  %t263 = load ptr, ptr %l114, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l120
  %t265 = load %"compiler/diagmsg:Msg", ptr %l129
  %t266 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t263, %"compiler/source:Span" %t264, %"compiler/diagmsg:Msg" %t265)
  store i64 %t266, ptr %l130
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s7)
  br label %bb58
bb58:
  %t267 = load ptr, ptr %l7, !tbaa !29
  %t269 = getelementptr %"compiler/ast:TypeParam", ptr %t267, i32 0, i32 3
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  store { i64, ptr } %t270, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t272 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t272, 0
  store i64 %t274, ptr %l13, !tbaa !24
  br label %bb59
bb59:
  %t276 = load i64, ptr %l12, !tbaa !24
  %t277 = load i64, ptr %l13, !tbaa !24
  %t280 = icmp slt i64 %t276, %t277
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb60, label %bb61
bb60:
  br label %bb73
bb61:
  br label %bb62
bb62:
  %t284 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t284, ptr %l139, !tbaa !27
  %t285 = load i64, ptr %l12, !tbaa !24
  %t287 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr ptr, ptr %t288, i64 %t285
  %t290 = load ptr, ptr %t289, !tbaa !39
  store ptr %t290, ptr %l14, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load i64, ptr %l3, !tbaa !24
  %t294 = load ptr, ptr %l14, !tbaa !29
  %t298 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v0, ptr %t292, i64 %t293, ptr %t294)
  store i1 %t298, ptr %l145
  br label %bb63
bb63:
  %t299 = load i1, ptr %l145, !tbaa !21
  %t300 = xor i1 %t299, true
  br i1 %t300, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s10
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l147, !tbaa !29
  %t303 = load ptr, ptr %l14, !tbaa !29
  %t305 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t303)
  store %"compiler/source:Span" %t305, ptr %l149
  br label %bb66
bb65:
  br label %bb71
bb66:
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l150, !tbaa !29
  %t307 = load ptr, ptr %l14, !tbaa !29
  %t309 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t307)
  store %"compiler/source:Span" %t309, ptr %l152
  br label %bb67
bb67:
  %t310 = load ptr, ptr %l150, !tbaa !29
  %t311 = load %"compiler/source:Span", ptr %l152
  %t312 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t310, %"compiler/source:Span" %t311)
  store { i64, ptr } %t312, ptr %l153
  br label %bb68
bb68:
  %t313 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t314 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %s10, { i64, ptr } %t313)
  store %"compiler/diagmsg:Msg" %t314, ptr %l154
  br label %bb69
bb69:
  %t315 = load ptr, ptr %l147, !tbaa !29
  %t316 = load %"compiler/source:Span", ptr %l149
  %t317 = load %"compiler/diagmsg:Msg", ptr %l154
  %t318 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t315, %"compiler/source:Span" %t316, %"compiler/diagmsg:Msg" %t317)
  store i64 %t318, ptr %l155
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t319 = load i64, ptr %l12, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l12, !tbaa !24
  br label %bb59
bb73:
  br label %bb74
bb74:
  %t323 = load i64, ptr %l5, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l5, !tbaa !24
  br label %bb6
bb75:
  br label %bb76
bb76:
  %t327 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t327)
  br label %bb77
bb77:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efor3(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, i64, i64 }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, i64, i64 }
  %l37 = alloca ptr
  %t66 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t12 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 1, %"compiler/source:Span" %t8)
  store { i64, i64, i64 } %t12, ptr %l15
  br label %bb2
bb2:
  %t13 = load { i64, i64, i64 }, ptr %l15
  store { i64, i64, i64 } %t13, ptr %l4
  %t14 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l6, !tbaa !24
  %t20 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l7, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:For3", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t23, ptr %t27)
  br label %bb3
bb3:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr %"compiler/ast:For3", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/ast:For3", ptr %t37, i32 0, i32 3
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/ast:For3", ptr %t41, i32 0, i32 2
  %t44 = load ptr, ptr %t43, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t31, %"compiler/source:Span" %t32, ptr %t36, { i64, ptr } %t40, ptr %t44)
  br label %bb4
bb4:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l3, !tbaa !24
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t51, i64 %t52, i64 %t53, i64 %t54, i64 %t55)
  store ptr %t61, ptr %l37
  br label %bb5
bb5:
  %t62 = load ptr, ptr %l37, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [3 x i64] }, ptr %t66, i32 0, i32 0
  store i64 11, ptr %t67
  %t69 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t64, 0
  %t71 = insertvalue { %"compiler/source:Span", ptr } %t69, ptr %t62, 1
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t66, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t71, ptr %t72
  %t73 = load { i64, [3 x i64] }, ptr %t66
  %t75 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t73, ptr %t75
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t63, ptr %t75)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasZero(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l35 = alloca i64
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t12, i64 -1, i64 %a1, i32 %t14, i32 0)
  store ptr %t18, ptr %l16
  br label %bb1
bb1:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l18
  br label %bb2
bb2:
  %t22 = load i64, ptr %l18, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l20
  br label %bb3
bb3:
  %t26 = load i64, ptr %l20, !tbaa !24
  store i64 %t26, ptr %l5, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 15
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l23
  br label %bb4
bb4:
  %t32 = load i64, ptr %l23, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 133
  %t36 = load i1, ptr %t35, !tbaa !21
  store i1 %t36, ptr %l7, !tbaa !21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 133
  store i1 true, ptr %t40, !tbaa !21
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l27, !tbaa !29
  %t42 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t42, ptr %l28
  br label %bb5
bb5:
  %t44 = load ptr, ptr %l27, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l28
  %t47 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t44, %"compiler/source:Span" %t45, i32 %a2)
  store ptr %t47, ptr %l30
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i1, ptr %l7, !tbaa !21
  %t52 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 133
  store i1 %t49, ptr %t52, !tbaa !21
  %t53 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t53)
  br label %bb7
bb7:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t55)
  store i64 %t57, ptr %l35
  br label %bb8
bb8:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load i64, ptr %l35, !tbaa !24
  %t61 = icmp eq i64 %t59, %t58
  store i1 %t61, ptr %l8, !tbaa !21
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t64 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t63, i64 %t64)
  br label %bb9
bb9:
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t67, i64 %t68)
  br label %bb10
bb10:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 15
  %t74 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t73, i64 %t74)
  br label %bb11
bb11:
  %t77 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t77)
  br label %bb12
bb12:
  %t79 = load i1, ptr %l8, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceUndecided(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:inPlaceRead"
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca %"compiler/check:inPlaceRead"
  %l15 = alloca %"compiler/check:inPlaceRead"
  %l19 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca %"compiler/check:Gap"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 65
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eLe_Hf613227d99bb55cc0c1d4d516f382642(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l8
  br label %bb2
bb2:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/check:inPlaceRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eAt_Hf62b397eb49933d0308b5b903703d314(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/check:inPlaceRead" %t19, ptr %l13
  br label %bb6
bb6:
  %t21 = call %"compiler/check:inPlaceRead" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3ainPlaceRead(ptr %v0, ptr %l13)
  store %"compiler/check:inPlaceRead" %t21, ptr %l15
  br label %bb7
bb7:
  %t22 = load %"compiler/check:inPlaceRead", ptr %l15
  store %"compiler/check:inPlaceRead" %t22, ptr %l3
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 71
  %t26 = getelementptr %"compiler/check:inPlaceRead", ptr %l3, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t30 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v0, ptr %t25, { i64, ptr } %t27)
  store i1 %t30, ptr %l19
  br label %bb8
bb8:
  %t31 = load i1, ptr %l19, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 15
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = getelementptr %"compiler/check:inPlaceRead", ptr %l3, i32 0, i32 2
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = getelementptr %"compiler/check:inPlaceRead", ptr %l3, i32 0, i32 3
  %t38 = load %"compiler/source:Span", ptr %t37
  %t41 = call %"compiler/check:Gap" @compiler_2fcheck_3aGap_2ector(ptr %v0, ptr %v0, i64 %t36, %"compiler/source:Span" %t38, { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/check:Gap" %t41, ptr %l24
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t42 = load ptr, ptr %l21, !tbaa !29
  %t43 = load %"compiler/check:Gap", ptr %l24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2ePush_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v0, ptr %t42, %"compiler/check:Gap" %t43)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l2, !tbaa !24
  br label %bb1
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisWildType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i1
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i1
  %s1 = alloca %olang.scope
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb14
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp eq i64 %t24, 1
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp eq i64 %t30, 0
  store i1 %t32, ptr %l15, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l21, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i32, ptr %t38, i64 0
  %t40 = load i32, ptr %t39, !tbaa !33
  %t43 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %t40)
  store { i64, ptr } %t43, ptr %l23
  br label %bb11
bb10:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb13
bb11:
  %t44 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t45 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t44, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t45, ptr %l24
  br label %bb12
bb12:
  %t46 = load i1, ptr %l24, !tbaa !21
  store i1 %t46, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  %t47 = load i1, ptr %l19, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_dabacd8646f437fb_89d6d0c21504246f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %rv = alloca ptr
  %t12 = alloca { i64, [5 x i64] }, align 8
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/source:Span" %a1, ptr %l3
  %t3 = load i64, ptr %l2, !tbaa !24
  %t6 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneType(ptr %v0, ptr %a0, i64 %t3)
  store i32 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneMagic, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = add i64 %t7, %t8
  store { i64, [5 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [5 x i64] }, ptr %t12, i32 0, i32 0
  store i64 0, ptr %t13
  %t14 = load %"compiler/source:Span", ptr %l3
  %t15 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t14, 0
  %t16 = load i32, ptr %l6, !tbaa !23
  %t17 = insertvalue { %"compiler/source:Span", i32, i64 } %t15, i32 %t16, 1
  %t19 = insertvalue { %"compiler/source:Span", i32, i64 } %t17, i64 %t11, 2
  %t20 = getelementptr { i64, [5 x i64] }, ptr %t12, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t19, ptr %t20
  %t21 = load { i64, [5 x i64] }, ptr %t12
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t21, ptr %t23
  store ptr %t23, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, ptr %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca [2 x i64]
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca [3 x i64]
  %l24 = alloca i64
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l36 = alloca %"compiler/check:laneNode"
  %l38 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca %"compiler/check:laneNode"
  %l50 = alloca %"compiler/check:laneNode"
  %l55 = alloca i1
  %l59 = alloca i32
  %l63 = alloca i1
  %l64 = alloca i32
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca ptr
  %l73 = alloca i64
  %l74 = alloca i32
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i32
  %l84 = alloca i64
  %l86 = alloca %"compiler/check:laneNode"
  %l87 = alloca i64
  %l88 = alloca ptr
  %l90 = alloca i1
  %l94 = alloca %"compiler/check:laneNode"
  %l98 = alloca i1
  %l102 = alloca %"compiler/check:laneNode"
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca ptr
  %l112 = alloca %"compiler/check:laneNode"
  %l114 = alloca { i64, ptr }
  %l116 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i64
  %l119 = alloca { i64, ptr }
  %l121 = alloca i1
  %l124 = alloca { i64, ptr }
  %l127 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l132 = alloca i1
  %l135 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l142 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l147 = alloca i32
  %l148 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l157 = alloca i32
  %l158 = alloca ptr
  %l160 = alloca ptr
  %l164 = alloca i64
  %l165 = alloca ptr
  %l169 = alloca i64
  %l173 = alloca %"compiler/check:laneNode"
  %l178 = alloca %"compiler/check:laneNode"
  %l184 = alloca i1
  %l193 = alloca i1
  %l197 = alloca i1
  %l198 = alloca i1
  %l201 = alloca i1
  %l202 = alloca i1
  %l207 = alloca i32
  %l213 = alloca i32
  %l214 = alloca ptr
  %l215 = alloca %"compiler/source:Span"
  %l218 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l222 = alloca { i64, ptr }
  %l224 = alloca %"compiler/diagmsg:Msg"
  %l225 = alloca i64
  %l230 = alloca ptr
  %l231 = alloca %"compiler/source:Span"
  %l232 = alloca ptr
  %l233 = alloca i64
  %l234 = alloca i32
  %l235 = alloca %"compiler/source:Span"
  %l236 = alloca %"compiler/source:Span"
  %l237 = alloca i64
  %l238 = alloca i64
  %l239 = alloca i64
  %l240 = alloca i32
  %l245 = alloca i64
  %l249 = alloca { i64, ptr }
  %l251 = alloca i32
  %l252 = alloca %"compiler/check:laneNode"
  %l253 = alloca i64
  %l254 = alloca ptr
  %l260 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v2, ptr %t1, ptr %a4)
  store i64 %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load i64, ptr %l24, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t9, ptr %l26
  br label %bb2
bb2:
  %t10 = load i1, ptr %l26, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb6
bb4:
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t13, ptr %l29
  br label %bb5
bb5:
  %t14 = load i1, ptr %l29, !tbaa !21
  store i1 %t14, ptr %l27, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l27, !tbaa !21
  br i1 %t15, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l30, !tbaa !29
  %t17 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t17, ptr %l31, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 0
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l32, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 39
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s1, ptr %t24, i64 %t25)
  store %"compiler/check:laneNode" %t28, ptr %l36
  br label %bb9
bb8:
  br label %bb28
bb9:
  %t29 = getelementptr %"compiler/check:laneNode", ptr %l36, i32 0, i32 8
  %t30 = load i32, ptr %t29, !tbaa !23
  %t31 = load ptr, ptr %l30, !tbaa !29
  %t32 = load ptr, ptr %l32, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v3, ptr %v0, ptr %t31, ptr %t32, i32 %t30)
  store ptr %t34, ptr %l38
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l38, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v0, ptr %t36, ptr %t35)
  store i64 %t40, ptr %l41
  br label %bb11
bb11:
  %t41 = load i64, ptr %l41, !tbaa !24
  store i64 %t41, ptr %l8, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 39
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s1, ptr %t44, i64 %t45)
  store %"compiler/check:laneNode" %t48, ptr %l45
  br label %bb12
bb12:
  %t49 = getelementptr %"compiler/check:laneNode", ptr %l45, i32 0, i32 8
  %t50 = load i32, ptr %t49, !tbaa !23
  store i32 %t50, ptr %l9, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 39
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s1, ptr %t54, i64 %t55)
  store %"compiler/check:laneNode" %t58, ptr %l50
  br label %bb13
bb13:
  %t59 = getelementptr %"compiler/check:laneNode", ptr %l50, i32 0, i32 8
  %t60 = load i32, ptr %t59, !tbaa !23
  store i32 %t60, ptr %l10, !tbaa !23
  %t62 = load i32, ptr %l9, !tbaa !23
  %t63 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t66 = icmp ne i32 %t62, %t63
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t68 = load i32, ptr %l10, !tbaa !23
  %t69 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t72 = icmp ne i32 %t68, %t69
  store i1 %t72, ptr %l55, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb16
bb16:
  %t74 = load i1, ptr %l55, !tbaa !21
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t75 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t75, ptr %l59, !tbaa !23
  br label %bb19
bb18:
  %t77 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t77, ptr %l59, !tbaa !23
  br label %bb19
bb19:
  %t79 = load i32, ptr %l59, !tbaa !23
  store i32 %t79, ptr %l11, !tbaa !23
  %t80 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s1, { i64, ptr } %t80, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t82, ptr %l63
  br label %bb20
bb20:
  %t83 = load i1, ptr %l63, !tbaa !21
  br i1 %t83, label %bb21, label %bb22
bb21:
  store i32 94, ptr %l64
  br label %bb23
bb22:
  store i32 97, ptr %l64
  br label %bb23
bb23:
  %t86 = load i32, ptr %l64, !range !{i32 0, i32 114}
  %t87 = load i64, ptr %l6, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t90 = insertvalue [2 x i64] undef, i64 %t87, 0
  %t92 = insertvalue [2 x i64] %t90, i64 %t88, 1
  store [2 x i64] %t92, ptr %l13
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l70, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t95, ptr %l71
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l72, !tbaa !29
  %t97 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneCmp, !tbaa !24
  store i64 %t97, ptr %l73, !tbaa !24
  store i32 %t86, ptr %l74
  %t99 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t99, ptr %l75
  %t100 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t100, ptr %l76
  %t101 = load i64, ptr %l6, !tbaa !24
  store i64 %t101, ptr %l77, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  store i64 %t102, ptr %l78, !tbaa !24
  %t103 = load i32, ptr %l11, !tbaa !23
  store i32 %t103, ptr %l79, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = insertvalue { i64, ptr } undef, i64 2, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %l13, 1
  %t108 = load %"compiler/source:Span", ptr %l2
  %t112 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %s1, ptr %t104, { i64, ptr } %t107, %"compiler/source:Span" %t108)
  store i64 %t112, ptr %l84
  br label %bb24
bb24:
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t114 = load i64, ptr %l73, !tbaa !24
  %t115 = load i32, ptr %l74, !range !{i32 0, i32 114}
  %t116 = load %"compiler/source:Span", ptr %l75
  %t117 = load %"compiler/source:Span", ptr %l76
  %t118 = load i64, ptr %l77, !tbaa !24
  %t119 = load i64, ptr %l78, !tbaa !24
  %t120 = load i32, ptr %l79, !tbaa !23
  %t121 = load i64, ptr %l84, !tbaa !24
  %t123 = call %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v0, i64 %t114, i32 %t115, %"compiler/source:Span" %t116, %"compiler/source:Span" %t117, i64 %t118, i64 %t119, i64 -1, ptr null, i32 %t120, i64 %t121, i32 %t113)
  store %"compiler/check:laneNode" %t123, ptr %l86
  br label %bb25
bb25:
  %t124 = load ptr, ptr %l72, !tbaa !29
  %t125 = load %"compiler/check:laneNode", ptr %l86
  %t126 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v0, ptr %t124, %"compiler/check:laneNode" %t125)
  store i64 %t126, ptr %l87
  br label %bb26
bb26:
  %t127 = load ptr, ptr %l70, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l71
  %t129 = load i64, ptr %l87, !tbaa !24
  %t130 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v4, ptr %t127, %"compiler/source:Span" %t128, i64 %t129)
  store ptr %t130, ptr %l88
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t131 = load ptr, ptr %l88, !tbaa !29
  store ptr %t131, ptr %rv
  br label %ret
bb28:
  %t132 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t134 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t132, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t134, ptr %l90
  br label %bb29
bb29:
  %t135 = load i1, ptr %l90, !tbaa !21
  br i1 %t135, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s2
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 39
  %t139 = load i64, ptr %l6, !tbaa !24
  %t142 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s2, ptr %t138, i64 %t139)
  store %"compiler/check:laneNode" %t142, ptr %l94
  br label %bb32
bb31:
  br label %bb106
bb32:
  %t143 = getelementptr %"compiler/check:laneNode", ptr %l94, i32 0, i32 8
  %t144 = load i32, ptr %t143, !tbaa !23
  %t145 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t148 = icmp ne i32 %t144, %t145
  br i1 %t148, label %bb33, label %bb34
bb33:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 39
  %t153 = load i64, ptr %l6, !tbaa !24
  %t156 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s2, ptr %t152, i64 %t153)
  store %"compiler/check:laneNode" %t156, ptr %l102
  br label %bb35
bb34:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb36
bb35:
  %t157 = getelementptr %"compiler/check:laneNode", ptr %l102, i32 0, i32 8
  %t158 = load i32, ptr %t157, !tbaa !23
  %t159 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t162 = icmp ne i32 %t158, %t159
  store i1 %t162, ptr %l98, !tbaa !21
  br label %bb36
bb36:
  %t164 = load i1, ptr %l98, !tbaa !21
  br i1 %t164, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s3
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l106, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t166, ptr %l107
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l108, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 39
  %t171 = load i64, ptr %l6, !tbaa !24
  %t174 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s3, ptr %t170, i64 %t171)
  store %"compiler/check:laneNode" %t174, ptr %l112
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t175 = getelementptr %"compiler/check:laneNode", ptr %l112, i32 0, i32 8
  %t176 = load i32, ptr %t175, !tbaa !23
  %t177 = load ptr, ptr %l108, !tbaa !29
  %t179 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t177, i32 %t176)
  store { i64, ptr } %t179, ptr %l114
  br label %bb40
bb40:
  %t180 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 0
  %t182 = extractvalue { i64, ptr } %t180, 1
  %t183 = mul i64 %t181, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t183)
  call void @llvm.memcpy.p0.p0.i64(ptr %t184, ptr %t182, i64 %t183, i1 false)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  %t188 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneMaskBool(ptr %s3, ptr %s3, ptr %s3, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } %t186)
  store %"compiler/diagmsg:Msg" %t188, ptr %l116
  br label %bb41
bb41:
  %t189 = load ptr, ptr %l106, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l107
  %t191 = load %"compiler/diagmsg:Msg", ptr %l116
  %t192 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t189, %"compiler/source:Span" %t190, %"compiler/diagmsg:Msg" %t191)
  store i64 %t192, ptr %l117
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  store ptr null, ptr %l14, !tbaa !29
  store ptr null, ptr %l15, !tbaa !29
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t194, ptr %l119, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr ptr, ptr %t196, i64 0
  %t198 = load ptr, ptr %t197, !tbaa !39
  %t201 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v3, ptr %t193, ptr %t198)
  store i1 %t201, ptr %l121
  br label %bb44
bb44:
  %t202 = load i1, ptr %l121, !tbaa !21
  %t203 = xor i1 %t202, true
  br i1 %t203, label %bb45, label %bb46
bb45:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t206, ptr %l124, !tbaa !27
  %t207 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr ptr, ptr %t208, i64 0
  %t210 = load ptr, ptr %t209, !tbaa !39
  %t211 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t215 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v3, ptr %v0, ptr %t205, ptr %t210, i32 %t211)
  store ptr %t215, ptr %l127
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t216 = load ptr, ptr %l127, !tbaa !29
  store ptr %t216, ptr %l14, !tbaa !29
  br label %bb48
bb48:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t219, ptr %l130, !tbaa !27
  %t220 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr ptr, ptr %t221, i64 1
  %t223 = load ptr, ptr %t222, !tbaa !39
  %t226 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v3, ptr %t218, ptr %t223)
  store i1 %t226, ptr %l132
  br label %bb49
bb49:
  %t227 = load i1, ptr %l132, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb50, label %bb51
bb50:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t231, ptr %l135, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr ptr, ptr %t233, i64 1
  %t235 = load ptr, ptr %t234, !tbaa !39
  %t236 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t240 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v3, ptr %v0, ptr %t230, ptr %t235, i32 %t236)
  store ptr %t240, ptr %l138
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t241 = load ptr, ptr %l138, !tbaa !29
  store ptr %t241, ptr %l15, !tbaa !29
  br label %bb53
bb53:
  %t243 = load ptr, ptr %l14, !tbaa !29
  %t245 = icmp eq ptr %t243, null
  br i1 %t245, label %bb54, label %bb55
bb54:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l142, !tbaa !29
  %t248 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t248, ptr %l143, !tbaa !27
  %t249 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr ptr, ptr %t250, i64 0
  %t252 = load ptr, ptr %t251, !tbaa !39
  store ptr %t252, ptr %l144, !tbaa !29
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %l15, !tbaa !29
  %t257 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemType(ptr %v0, ptr %v0, ptr %t253, ptr %t254)
  store i32 %t257, ptr %l147
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t258 = load ptr, ptr %l142, !tbaa !29
  %t259 = load ptr, ptr %l144, !tbaa !29
  %t260 = load i32, ptr %l147, !tbaa !23
  %t261 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v3, ptr %v0, ptr %t258, ptr %t259, i32 %t260)
  store ptr %t261, ptr %l148
  br label %bb57
bb57:
  %t262 = load ptr, ptr %l148, !tbaa !29
  store ptr %t262, ptr %l14, !tbaa !29
  br label %bb58
bb58:
  %t264 = load ptr, ptr %l15, !tbaa !29
  %t266 = icmp eq ptr %t264, null
  br i1 %t266, label %bb59, label %bb60
bb59:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l152, !tbaa !29
  %t269 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t269, ptr %l153, !tbaa !27
  %t270 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr ptr, ptr %t271, i64 1
  %t273 = load ptr, ptr %t272, !tbaa !39
  store ptr %t273, ptr %l154, !tbaa !29
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load ptr, ptr %l14, !tbaa !29
  %t278 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemType(ptr %v0, ptr %v0, ptr %t274, ptr %t275)
  store i32 %t278, ptr %l157
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t279 = load ptr, ptr %l152, !tbaa !29
  %t280 = load ptr, ptr %l154, !tbaa !29
  %t281 = load i32, ptr %l157, !tbaa !23
  %t282 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v3, ptr %v0, ptr %t279, ptr %t280, i32 %t281)
  store ptr %t282, ptr %l158
  br label %bb62
bb62:
  %t283 = load ptr, ptr %l158, !tbaa !29
  store ptr %t283, ptr %l15, !tbaa !29
  br label %bb63
bb63:
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l160, !tbaa !29
  %t286 = load ptr, ptr %l14, !tbaa !29
  %t288 = icmp eq ptr %t286, null
  br i1 %t288, label %bb64, label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_f29deef1411bcac7_1d318aa8f75ec9a3)
  unreachable
bb65:
  br label %bb66
bb66:
  %t290 = load ptr, ptr %l14, !tbaa !29
  %t291 = load ptr, ptr %l160, !tbaa !29
  %t293 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v0, ptr %t291, ptr %t290)
  store i64 %t293, ptr %l164
  br label %bb67
bb67:
  %t294 = load i64, ptr %l164, !tbaa !24
  store i64 %t294, ptr %l16, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l165, !tbaa !29
  %t296 = load ptr, ptr %l15, !tbaa !29
  %t298 = icmp eq ptr %t296, null
  br i1 %t298, label %bb68, label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_15db60dea160a9a8_613bb3b113b67e94)
  unreachable
bb69:
  br label %bb70
bb70:
  %t300 = load ptr, ptr %l15, !tbaa !29
  %t301 = load ptr, ptr %l165, !tbaa !29
  %t303 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v0, ptr %t301, ptr %t300)
  store i64 %t303, ptr %l169
  br label %bb71
bb71:
  %t304 = load i64, ptr %l169, !tbaa !24
  store i64 %t304, ptr %l17, !tbaa !24
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/check:Checker", ptr %t305, i32 0, i32 39
  %t308 = load i64, ptr %l16, !tbaa !24
  %t311 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s2, ptr %t307, i64 %t308)
  store %"compiler/check:laneNode" %t311, ptr %l173
  br label %bb72
bb72:
  %t312 = getelementptr %"compiler/check:laneNode", ptr %l173, i32 0, i32 8
  %t313 = load i32, ptr %t312, !tbaa !23
  store i32 %t313, ptr %l18, !tbaa !23
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/check:Checker", ptr %t315, i32 0, i32 39
  %t318 = load i64, ptr %l17, !tbaa !24
  %t321 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s2, ptr %t317, i64 %t318)
  store %"compiler/check:laneNode" %t321, ptr %l178
  br label %bb73
bb73:
  %t322 = getelementptr %"compiler/check:laneNode", ptr %l178, i32 0, i32 8
  %t323 = load i32, ptr %t322, !tbaa !23
  store i32 %t323, ptr %l19, !tbaa !23
  %t325 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t325, ptr %l20, !tbaa !23
  %t327 = load i32, ptr %l18, !tbaa !23
  %t328 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t331 = icmp ne i32 %t327, %t328
  br i1 %t331, label %bb74, label %bb75
bb74:
  %t333 = load i32, ptr %l19, !tbaa !23
  %t334 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t337 = icmp ne i32 %t333, %t334
  store i1 %t337, ptr %l184, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l184, !tbaa !21
  br label %bb76
bb76:
  %t339 = load i1, ptr %l184, !tbaa !21
  br i1 %t339, label %bb77, label %bb78
bb77:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/check:Checker", ptr %t340, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t345 = getelementptr %"compiler/generic:Program", ptr %t343, i32 0, i32 2
  %t346 = load i32, ptr %l18, !tbaa !23
  %t347 = load i32, ptr %l19, !tbaa !23
  %t351 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t345, i32 %t346, i32 %t347)
  store i1 %t351, ptr %l193
  br label %bb79
bb78:
  br label %bb100
bb79:
  %t352 = load i1, ptr %l193, !tbaa !21
  br i1 %t352, label %bb80, label %bb81
bb80:
  %t353 = load i32, ptr %l18, !tbaa !23
  store i32 %t353, ptr %l20, !tbaa !23
  br label %bb99
bb81:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load i32, ptr %l18, !tbaa !23
  %t359 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t355, i32 %t356)
  store i1 %t359, ptr %l197
  br label %bb82
bb82:
  %t360 = load i1, ptr %l197, !tbaa !21
  br i1 %t360, label %bb83, label %bb84
bb83:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l19, !tbaa !23
  %t365 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t361, i32 %t362)
  store i1 %t365, ptr %l201
  br label %bb85
bb84:
  store i1 false, ptr %l198, !tbaa !21
  br label %bb86
bb85:
  %t366 = load i1, ptr %l201, !tbaa !21
  store i1 %t366, ptr %l198, !tbaa !21
  br label %bb86
bb86:
  %t367 = load i1, ptr %l198, !tbaa !21
  br i1 %t367, label %bb87, label %bb88
bb87:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/check:Checker", ptr %t368, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !29
  %t372 = load i32, ptr %l18, !tbaa !23
  %t373 = load i32, ptr %l19, !tbaa !23
  %t377 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t371, i32 %t372, i32 %t373)
  store i32 %t377, ptr %l207
  br label %bb89
bb88:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb90
bb89:
  %t378 = load i32, ptr %l207, !tbaa !23
  %t379 = icmp sge i32 %t378, 0
  store i1 %t379, ptr %l202, !tbaa !21
  br label %bb90
bb90:
  %t381 = load i1, ptr %l202, !tbaa !21
  br i1 %t381, label %bb91, label %bb92
bb91:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/check:Checker", ptr %t382, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !29
  %t386 = load i32, ptr %l18, !tbaa !23
  %t387 = load i32, ptr %l19, !tbaa !23
  %t391 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t385, i32 %t386, i32 %t387)
  store i32 %t391, ptr %l213
  br label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s12
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l214, !tbaa !29
  %t393 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t393, ptr %l215
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load i32, ptr %l18, !tbaa !23
  %t398 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t394, i32 %t395)
  store { i64, ptr } %t398, ptr %l218
  br label %bb94
bb93:
  %t399 = load i32, ptr %l213, !tbaa !23
  store i32 %t399, ptr %l20, !tbaa !23
  br label %bb98
bb94:
  %t400 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t400, 0
  %t402 = extractvalue { i64, ptr } %t400, 1
  %t403 = mul i64 %t401, 1
  %t404 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t403)
  call void @llvm.memcpy.p0.p0.i64(ptr %t404, ptr %t402, i64 %t403, i1 false)
  %t405 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t404, 1
  store { i64, ptr } %t406, ptr %l219, !tbaa !27
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load i32, ptr %l19, !tbaa !23
  %t411 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t407, i32 %t408)
  store { i64, ptr } %t411, ptr %l222
  br label %bb95
bb95:
  %t412 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t412, 0
  %t414 = extractvalue { i64, ptr } %t412, 1
  %t415 = mul i64 %t413, 1
  %t416 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t415)
  call void @llvm.memcpy.p0.p0.i64(ptr %t416, ptr %t414, i64 %t415, i1 false)
  %t417 = insertvalue { i64, ptr } undef, i64 %t413, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t416, 1
  %t419 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t421 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandsDiffer(ptr %s12, ptr %s12, ptr %s12, ptr %s12, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, ptr } %t419, { i64, ptr } %t418)
  store %"compiler/diagmsg:Msg" %t421, ptr %l224
  br label %bb96
bb96:
  %t422 = load ptr, ptr %l214, !tbaa !29
  %t423 = load %"compiler/source:Span", ptr %l215
  %t424 = load %"compiler/diagmsg:Msg", ptr %l224
  %t425 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t422, %"compiler/source:Span" %t423, %"compiler/diagmsg:Msg" %t424)
  store i64 %t425, ptr %l225
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s12)
  br label %bb98
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t426 = load i64, ptr %l6, !tbaa !24
  %t427 = load i64, ptr %l16, !tbaa !24
  %t428 = load i64, ptr %l17, !tbaa !24
  %t430 = insertvalue [3 x i64] undef, i64 %t426, 0
  %t432 = insertvalue [3 x i64] %t430, i64 %t427, 1
  %t434 = insertvalue [3 x i64] %t432, i64 %t428, 2
  store [3 x i64] %t434, ptr %l21
  %t436 = load ptr, ptr %l0, !tbaa !29
  store ptr %t436, ptr %l230, !tbaa !29
  %t437 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t437, ptr %l231
  %t438 = load ptr, ptr %l0, !tbaa !29
  store ptr %t438, ptr %l232, !tbaa !29
  %t439 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneSel, !tbaa !24
  store i64 %t439, ptr %l233, !tbaa !24
  store i32 68, ptr %l234
  %t440 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t440, ptr %l235
  %t441 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t441, ptr %l236
  %t442 = load i64, ptr %l6, !tbaa !24
  store i64 %t442, ptr %l237, !tbaa !24
  %t443 = load i64, ptr %l16, !tbaa !24
  store i64 %t443, ptr %l238, !tbaa !24
  %t444 = load i64, ptr %l17, !tbaa !24
  store i64 %t444, ptr %l239, !tbaa !24
  %t445 = load i32, ptr %l20, !tbaa !23
  store i32 %t445, ptr %l240, !tbaa !23
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = insertvalue { i64, ptr } undef, i64 3, 0
  %t449 = insertvalue { i64, ptr } %t448, ptr %l21, 1
  %t450 = load %"compiler/source:Span", ptr %l2
  %t454 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %s2, ptr %t446, { i64, ptr } %t449, %"compiler/source:Span" %t450)
  store i64 %t454, ptr %l245
  br label %bb101
bb101:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load i64, ptr %l16, !tbaa !24
  %t457 = load i64, ptr %l17, !tbaa !24
  %t458 = mul i64 2, 8
  %t459 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t458)
  %t460 = insertvalue { i64, ptr } undef, i64 2, 0
  %t461 = insertvalue { i64, ptr } %t460, ptr %t459, 1
  store { i64, ptr } %t461, ptr %l249, !tbaa !27
  %t463 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t464 = load ptr, ptr %t463, !tbaa !27
  %t465 = getelementptr i64, ptr %t464, i64 0
  store i64 %t456, ptr %t465, !tbaa !34
  %t467 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !27
  %t469 = getelementptr i64, ptr %t468, i64 1
  store i64 %t457, ptr %t469, !tbaa !34
  %t470 = load i32, ptr %l20, !tbaa !23
  %t472 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t474 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %s2, ptr %t455, { i64, ptr } %t472, i32 %t470)
  store i32 %t474, ptr %l251
  br label %bb102
bb102:
  %t475 = load i64, ptr %l233, !tbaa !24
  %t476 = load i32, ptr %l234, !range !{i32 0, i32 114}
  %t477 = load %"compiler/source:Span", ptr %l235
  %t478 = load %"compiler/source:Span", ptr %l236
  %t479 = load i64, ptr %l237, !tbaa !24
  %t480 = load i64, ptr %l238, !tbaa !24
  %t481 = load i64, ptr %l239, !tbaa !24
  %t482 = load i32, ptr %l240, !tbaa !23
  %t483 = load i64, ptr %l245, !tbaa !24
  %t484 = load i32, ptr %l251, !tbaa !23
  %t485 = call %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v0, i64 %t475, i32 %t476, %"compiler/source:Span" %t477, %"compiler/source:Span" %t478, i64 %t479, i64 %t480, i64 %t481, ptr null, i32 %t482, i64 %t483, i32 %t484)
  store %"compiler/check:laneNode" %t485, ptr %l252
  br label %bb103
bb103:
  %t486 = load ptr, ptr %l232, !tbaa !29
  %t487 = load %"compiler/check:laneNode", ptr %l252
  %t488 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v0, ptr %t486, %"compiler/check:laneNode" %t487)
  store i64 %t488, ptr %l253
  br label %bb104
bb104:
  %t489 = load ptr, ptr %l230, !tbaa !29
  %t490 = load %"compiler/source:Span", ptr %l231
  %t491 = load i64, ptr %l253, !tbaa !24
  %t492 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v4, ptr %t489, %"compiler/source:Span" %t490, i64 %t491)
  store ptr %t492, ptr %l254
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t493 = load ptr, ptr %l254, !tbaa !29
  store ptr %t493, ptr %rv
  br label %ret
bb106:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load %"compiler/source:Span", ptr %l1
  %t496 = load %"compiler/source:Span", ptr %l2
  %t497 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t498 = load i64, ptr %l6, !tbaa !24
  %t504 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTotal(ptr %v0, ptr %v1, ptr %v4, ptr %t494, %"compiler/source:Span" %t495, %"compiler/source:Span" %t496, { i64, ptr } %t497, i64 %t498)
  store ptr %t504, ptr %l260
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s0)
  %t505 = load ptr, ptr %l260, !tbaa !29
  store ptr %t505, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l7 = alloca i1
  %l8 = alloca i1
  %l13 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l20 = alloca { i64, ptr }
  %l22 = alloca %"compiler/diagmsg:Msg"
  %l23 = alloca i64
  %l25 = alloca %"compiler/check:litBuilder"
  %l27 = alloca ptr
  %l28 = alloca i32
  %l33 = alloca i32
  %l34 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca i64
  %l47 = alloca %"compiler/check:litBuilder"
  %l55 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l63 = alloca { i64, ptr }
  %l65 = alloca %"compiler/diagmsg:Msg"
  %l66 = alloca i64
  %l68 = alloca %"compiler/check:litBuilder"
  %l73 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %l85 = alloca i64
  %l87 = alloca %"compiler/check:litBuilder"
  %l90 = alloca %"compiler/check:litBuilder"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/check:litBuilder"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l13
  br label %bb4
bb4:
  %t17 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t19 = trunc i64 29 to i32
  %t20 = icmp eq i32 %t17, %t19
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l8, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l16, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t24, ptr %l17
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t25, i32 %t26)
  store { i64, ptr } %t29, ptr %l20
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t30 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t38 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNotMade(ptr %s1, ptr %s1, { i64, ptr } %t36)
  store %"compiler/diagmsg:Msg" %t38, ptr %l22
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l16, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l17
  %t41 = load %"compiler/diagmsg:Msg", ptr %l22
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t39, %"compiler/source:Span" %t40, %"compiler/diagmsg:Msg" %t41)
  store i64 %t42, ptr %l23
  br label %bb10
bb10:
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t45 = call %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %s1, i64 -1, i32 %t43)
  store %"compiler/check:litBuilder" %t45, ptr %l25
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t46 = load %"compiler/check:litBuilder", ptr %l25
  store %"compiler/check:litBuilder" %t46, ptr %rv
  br label %ret
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %l27, !tbaa !29
  %t51 = load i32, ptr %l2, !tbaa !23
  store i32 %t51, ptr %l28, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/load:Loader", ptr %t58, i32 0, i32 3
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t61, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i32 %t63, ptr %l33
  br label %bb13
bb13:
  %t64 = load ptr, ptr %l27, !tbaa !29
  %t65 = load i32, ptr %l28, !tbaa !23
  %t66 = load i32, ptr %l33, !tbaa !23
  %t67 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t64, i32 %t65, i32 %t66, i1 false)
  store i64 %t67, ptr %l34
  br label %bb14
bb14:
  %t68 = load i64, ptr %l34, !tbaa !24
  store i64 %t68, ptr %l3, !tbaa !24
  %t69 = load i64, ptr %l3, !tbaa !24
  %t71 = icmp slt i64 %t69, 0
  br i1 %t71, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l37, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t74, ptr %l38
  %t75 = load i32, ptr %l2, !tbaa !23
  store i32 %t75, ptr %l39, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l2, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t76, i32 %t77)
  store { i64, ptr } %t80, ptr %l42
  br label %bb17
bb16:
  br label %bb21
bb17:
  %t81 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  %t83 = extractvalue { i64, ptr } %t81, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  %t89 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNoFromIter(ptr %s2, ptr %s2, { i64, ptr } %t87)
  store %"compiler/diagmsg:Msg" %t89, ptr %l44
  br label %bb18
bb18:
  %t90 = load ptr, ptr %l37, !tbaa !29
  %t91 = load %"compiler/source:Span", ptr %l38
  %t92 = load i32, ptr %l39, !tbaa !23
  %t93 = load %"compiler/diagmsg:Msg", ptr %l44
  %t94 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s2, ptr %s2, ptr %t90, %"compiler/source:Span" %t91, i32 %t92, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d12, i32 0, i32 1) }, %"compiler/diagmsg:Msg" %t93)
  store i64 %t94, ptr %l45
  br label %bb19
bb19:
  %t95 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t97 = call %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %s2, i64 -1, i32 %t95)
  store %"compiler/check:litBuilder" %t97, ptr %l47
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t98 = load %"compiler/check:litBuilder", ptr %l47
  store %"compiler/check:litBuilder" %t98, ptr %rv
  br label %ret
bb21:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i64, ptr %l3, !tbaa !24
  %t101 = load %"compiler/source:Span", ptr %l1
  %t102 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %t99, i64 %t100, %"compiler/source:Span" %t101, i32 %t102)
  br label %bb22
bb22:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l3, !tbaa !24
  %t109 = load i32, ptr %l2, !tbaa !23
  %t113 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIterElem(ptr %v0, ptr %t107, i64 %t108, i32 %t109)
  store i32 %t113, ptr %l55
  br label %bb23
bb23:
  %t114 = load i32, ptr %l55, !tbaa !23
  store i32 %t114, ptr %l4, !tbaa !23
  %t115 = load i32, ptr %l4, !tbaa !23
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t119 = icmp eq i32 %t115, %t116
  br i1 %t119, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l59, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t122, ptr %l60
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l2, !tbaa !23
  %t127 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t123, i32 %t124)
  store { i64, ptr } %t127, ptr %l63
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t128 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromIterShape(ptr %s3, ptr %s3, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t136, ptr %l65
  br label %bb27
bb27:
  %t137 = load ptr, ptr %l59, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l60
  %t139 = load %"compiler/diagmsg:Msg", ptr %l65
  %t140 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t137, %"compiler/source:Span" %t138, %"compiler/diagmsg:Msg" %t139)
  store i64 %t140, ptr %l66
  br label %bb28
bb28:
  %t141 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t143 = call %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %s3, i64 -1, i32 %t141)
  store %"compiler/check:litBuilder" %t143, ptr %l68
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t144 = load %"compiler/check:litBuilder", ptr %l68
  store %"compiler/check:litBuilder" %t144, ptr %rv
  br label %ret
bb30:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l4, !tbaa !23
  %t154 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %t150, i32 %t151)
  store i1 %t154, ptr %l73
  br label %bb31
bb31:
  %t155 = load i1, ptr %l73, !tbaa !21
  br i1 %t155, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s4
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l74, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t157, ptr %l75
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l2, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t158, i32 %t159)
  store { i64, ptr } %t162, ptr %l78
  br label %bb34
bb33:
  br label %bb39
bb34:
  %t163 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  %t165 = extractvalue { i64, ptr } %t163, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  store { i64, ptr } %t169, ptr %l79, !tbaa !27
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l4, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t170, i32 %t171)
  store { i64, ptr } %t174, ptr %l82
  br label %bb35
bb35:
  %t175 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  %t177 = extractvalue { i64, ptr } %t175, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  %t182 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t184 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralUnique(ptr %s4, ptr %s4, ptr %s4, { i64, ptr } %t182, { i64, ptr } %t181)
  store %"compiler/diagmsg:Msg" %t184, ptr %l84
  br label %bb36
bb36:
  %t185 = load ptr, ptr %l74, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l75
  %t187 = load %"compiler/diagmsg:Msg", ptr %l84
  %t188 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t185, %"compiler/source:Span" %t186, %"compiler/diagmsg:Msg" %t187)
  store i64 %t188, ptr %l85
  br label %bb37
bb37:
  %t189 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t191 = call %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %s4, i64 -1, i32 %t189)
  store %"compiler/check:litBuilder" %t191, ptr %l87
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t192 = load %"compiler/check:litBuilder", ptr %l87
  store %"compiler/check:litBuilder" %t192, ptr %rv
  br label %ret
bb39:
  %t193 = load i64, ptr %l3, !tbaa !24
  %t194 = load i32, ptr %l4, !tbaa !23
  %t197 = call %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %s0, i64 %t193, i32 %t194)
  store %"compiler/check:litBuilder" %t197, ptr %l90
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t198 = load %"compiler/check:litBuilder", ptr %l90
  store %"compiler/check:litBuilder" %t198, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litBuilder", ptr %rv
  ret %"compiler/check:litBuilder" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, i64, i64 }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, i64, i64 }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/check:factsMark"
  %l20 = alloca i64
  %l24 = alloca { i64, i64, i64 }
  %l29 = alloca ptr
  %l34 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l60 = alloca i64
  %l62 = alloca ptr
  %l65 = alloca i64
  %l66 = alloca i32
  %l67 = alloca i64
  %l69 = alloca ptr
  %l72 = alloca i64
  %l73 = alloca i32
  %l79 = alloca ptr
  %l85 = alloca i64
  %l89 = alloca { i64, i64, i64 }
  %l97 = alloca %"compiler/check:factsMark"
  %l112 = alloca ptr
  %l123 = alloca i1
  %l126 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l129 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l134 = alloca ptr
  %s0 = alloca %olang.scope
  %t195 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l20
  br label %bb1
bb1:
  %t6 = load i64, ptr %l20, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t12 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 2, %"compiler/source:Span" %t8)
  store { i64, i64, i64 } %t12, ptr %l24
  br label %bb2
bb2:
  %t13 = load { i64, i64, i64 }, ptr %l24
  store { i64, i64, i64 } %t13, ptr %l6
  %t14 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l7, !tbaa !24
  %t17 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l8, !tbaa !24
  %t20 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l9, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l29
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l29, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 10
  %t29 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l34
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l34, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 11
  %t38 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t37, i64 %t38)
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = icmp eq ptr %t41, null
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb7, label %bb8
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l41, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l42, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t49, ptr %l43
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t54 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v0, ptr %t50, ptr %t51)
  store ptr %t54, ptr %l46
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l42, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l43
  %t58 = load ptr, ptr %l46, !tbaa !29
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t56, %"compiler/source:Span" %t57, ptr %t58, i64 %t55)
  store ptr %t60, ptr %l48
  br label %bb10
bb10:
  %t61 = load ptr, ptr %l41, !tbaa !29
  %t62 = load ptr, ptr %l48, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t61, ptr %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb13, label %bb14
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t69, ptr %t70, i1 true, i64 %t71)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb17, label %bb18
bb17:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v2, ptr %t81, { i64, ptr } %t82)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t85)
  store ptr %t87, ptr %l62
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l62, !tbaa !29
  %t90 = getelementptr %"compiler/check:frame", ptr %t88, i32 0, i32 10
  %t92 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t90)
  %t93 = extractvalue { i32, i64 } %t92, 1
  %t94 = extractvalue { i32, i64 } %t92, 0
  store i32 %t94, ptr %l66
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb23, label %ok.96, !prof !99
ok.96:
  store i64 %t93, ptr %l65
  br label %bb22
bb22:
  %t97 = load i64, ptr %l65, !tbaa !24
  store i64 %t97, ptr %l60, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t98)
  store ptr %t100, ptr %l69
  br label %bb26
bb26:
  %t101 = load ptr, ptr %l69, !tbaa !29
  %t103 = getelementptr %"compiler/check:frame", ptr %t101, i32 0, i32 11
  %t105 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t103)
  %t106 = extractvalue { i32, i64 } %t105, 1
  %t107 = extractvalue { i32, i64 } %t105, 0
  store i32 %t107, ptr %l73
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb28, label %ok.109, !prof !99
ok.109:
  store i64 %t106, ptr %l72
  br label %bb27
bb27:
  %t110 = load i64, ptr %l72, !tbaa !24
  store i64 %t110, ptr %l67, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i64, ptr %l7, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t114 = load i64, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l5, !tbaa !24
  %t121 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t111, i64 %t112, i64 %t113, i64 %t114, i64 %t115)
  store ptr %t121, ptr %l79
  br label %bb31
bb31:
  %t122 = load ptr, ptr %l79, !tbaa !29
  store ptr %t122, ptr %l10, !tbaa !29
  store ptr null, ptr %l11, !tbaa !29
  %t123 = load ptr, ptr %l4, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb32, label %bb33
bb32:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 37
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t131)
  store i64 %t133, ptr %l85
  br label %bb34
bb33:
  br label %bb44
bb34:
  %t134 = load i64, ptr %l85, !tbaa !24
  store i64 %t134, ptr %l12, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l1
  %t140 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t135, i32 3, %"compiler/source:Span" %t136)
  store { i64, i64, i64 } %t140, ptr %l89
  br label %bb35
bb35:
  %t141 = load { i64, i64, i64 }, ptr %l89
  store { i64, i64, i64 } %t141, ptr %l13
  %t142 = getelementptr { i64, i64, i64 }, ptr %l13, i32 0, i32 0
  %t143 = load i64, ptr %t142, !tbaa !24
  store i64 %t143, ptr %l14, !tbaa !24
  %t145 = getelementptr { i64, i64, i64 }, ptr %l13, i32 0, i32 1
  %t146 = load i64, ptr %t145, !tbaa !24
  store i64 %t146, ptr %l15, !tbaa !24
  %t148 = getelementptr { i64, i64, i64 }, ptr %l13, i32 0, i32 2
  %t149 = load i64, ptr %t148, !tbaa !24
  store i64 %t149, ptr %l16, !tbaa !24
  %t151 = load ptr, ptr %l2, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb36, label %bb37
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = call %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %t157)
  store %"compiler/check:factsMark" %t159, ptr %l97
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t160 = load %"compiler/check:factsMark", ptr %l97
  store %"compiler/check:factsMark" %t160, ptr %l17
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l2, !tbaa !29
  %t163 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t161, ptr %t162, i1 true, i64 %t163)
  br label %bb39
bb39:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load %"compiler/check:factsMark", ptr %l17
  %t169 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v2, ptr %t167, %"compiler/check:factsMark" %t168, { i64, ptr } %t169)
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v3, ptr %t173, ptr %t174)
  br label %bb42
bb42:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l14, !tbaa !24
  %t180 = load i64, ptr %l15, !tbaa !24
  %t181 = load i64, ptr %l16, !tbaa !24
  %t182 = load i64, ptr %l12, !tbaa !24
  %t188 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t178, i64 %t179, i64 %t180, i64 %t181, i64 %t182)
  store ptr %t188, ptr %l112
  br label %bb43
bb43:
  %t189 = load ptr, ptr %l112, !tbaa !29
  store ptr %t189, ptr %l11, !tbaa !29
  br label %bb44
bb44:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l1
  %t193 = load ptr, ptr %l10, !tbaa !29
  %t194 = load ptr, ptr %l11, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t195
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t195, i32 0, i32 0
  store i64 4, ptr %t196
  %t198 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t192, 0
  %t200 = insertvalue { %"compiler/source:Span", ptr, ptr } %t198, ptr %t193, 1
  %t202 = insertvalue { %"compiler/source:Span", ptr, ptr } %t200, ptr %t194, 2
  %t203 = getelementptr { i64, [3 x i64] }, ptr %t195, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t202, ptr %t203
  %t204 = load { i64, [3 x i64] }, ptr %t195
  %t206 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t204, ptr %t206
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t191, ptr %t206)
  br label %bb45
bb45:
  %t209 = load ptr, ptr %l2, !tbaa !29
  %t211 = icmp eq ptr %t209, null
  %t213 = xor i1 %t211, true
  br i1 %t213, label %bb46, label %bb47
bb46:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l1
  %t219 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s0, ptr %t215, %"compiler/source:Span" %t216)
  store { i64, ptr } %t219, ptr %l126
  br label %bb48
bb47:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb50
bb48:
  %t220 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l128, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t223 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t220, { i64, ptr } %t222)
  store i1 %t223, ptr %l129
  br label %bb49
bb49:
  %t224 = load i1, ptr %l129, !tbaa !21
  %t225 = xor i1 %t224, true
  store i1 %t225, ptr %l123, !tbaa !21
  br label %bb50
bb50:
  %t227 = load i1, ptr %l123, !tbaa !21
  br i1 %t227, label %bb51, label %bb52
bb51:
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l131, !tbaa !29
  %t229 = load ptr, ptr %l2, !tbaa !29
  store ptr %t229, ptr %l132, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t230)
  store ptr %t232, ptr %l134
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t233 = load ptr, ptr %l134, !tbaa !29
  %t235 = getelementptr %"compiler/check:frame", ptr %t233, i32 0, i32 7
  %t236 = load i64, ptr %t235, !tbaa !24
  %t237 = load ptr, ptr %l131, !tbaa !29
  %t238 = load ptr, ptr %l132, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t237, ptr %t238, i1 false, i64 %t236)
  br label %bb54
bb54:
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchValueMismatch(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i1
  %l22 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"compiler/diagmsg:Msg"
  %l37 = alloca i64
  %l40 = alloca i32
  %l43 = alloca i1
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l61 = alloca %"compiler/diagmsg:Msg"
  %l62 = alloca i64
  %l65 = alloca ptr
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca ptr
  %l71 = alloca i32
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l80 = alloca %"compiler/diagmsg:Msg"
  %l81 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t6 = load i32, ptr %l8, !tbaa !23
  %t8 = icmp eq i32 %t6, %t5
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l16
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i1, ptr %l16, !tbaa !21
  store i1 %t20, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l22
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t32 = load i1, ptr %l22, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l17, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t37, ptr %l25
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l26, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = load i32, ptr %l29, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t44, i32 %t45)
  store { i64, ptr } %t46, ptr %l30
  br label %bb13
bb13:
  %t47 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l31, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemptyArray(ptr %v0, ptr %s1, ptr %t54, i32 %t55)
  store { i64, ptr } %t58, ptr %l34
  br label %bb14
bb14:
  %t59 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t68 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToArray(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } %t66, { i64, ptr } %t65)
  store %"compiler/diagmsg:Msg" %t68, ptr %l36
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l24, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l25
  %t71 = load %"compiler/diagmsg:Msg", ptr %l36
  %t72 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t69, %"compiler/source:Span" %t70, %"compiler/diagmsg:Msg" %t71)
  store i64 %t72, ptr %l37
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t76 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t73)
  store i32 %t76, ptr %l40
  br label %bb18
bb18:
  %t77 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t78 = load i32, ptr %l40, !tbaa !23
  %t80 = icmp eq i32 %t78, %t77
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t86 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %t82, i32 %t83)
  store i1 %t86, ptr %l46
  br label %bb21
bb20:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb22
bb21:
  %t87 = load i1, ptr %l46, !tbaa !21
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb22
bb22:
  %t88 = load i1, ptr %l43, !tbaa !21
  br i1 %t88, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s2
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l47, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t90, ptr %l48
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l3, !tbaa !23
  %t95 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t91, i32 %t92)
  store { i64, ptr } %t95, ptr %l51
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t96 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  %t98 = extractvalue { i64, ptr } %t96, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l52, !tbaa !27
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l53, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l3, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l58
  br label %bb26
bb26:
  %t114 = load ptr, ptr %l53, !tbaa !29
  %t115 = load i32, ptr %l58, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t114, i32 %t115)
  store { i64, ptr } %t116, ptr %l59
  br label %bb27
bb27:
  %t117 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  %t119 = extractvalue { i64, ptr } %t117, 1
  %t120 = mul i64 %t118, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t120)
  call void @llvm.memcpy.p0.p0.i64(ptr %t121, ptr %t119, i64 %t120, i1 false)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  %t124 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t126 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToNonNull(ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t124, { i64, ptr } %t123)
  store %"compiler/diagmsg:Msg" %t126, ptr %l61
  br label %bb28
bb28:
  %t127 = load ptr, ptr %l47, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l48
  %t129 = load %"compiler/diagmsg:Msg", ptr %l61
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t127, %"compiler/source:Span" %t128, %"compiler/diagmsg:Msg" %t129)
  store i64 %t130, ptr %l62
  br label %bb29
bb29:
  %t131 = load i64, ptr %l62, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %t132, i64 %t131)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l65, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t137, ptr %l66
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l67, !tbaa !29
  %t139 = load i32, ptr %l2, !tbaa !23
  %t140 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t143 = icmp ne i32 %t139, %t140
  br i1 %t143, label %bb32, label %bb33
bb32:
  %t145 = load i32, ptr %l2, !tbaa !23
  store i32 %t145, ptr %l71, !tbaa !23
  br label %bb34
bb33:
  %t147 = load i32, ptr %l3, !tbaa !23
  store i32 %t147, ptr %l71, !tbaa !23
  br label %bb34
bb34:
  %t149 = load ptr, ptr %l67, !tbaa !29
  %t150 = load i32, ptr %l71, !tbaa !23
  %t151 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t149, i32 %t150)
  store { i64, ptr } %t151, ptr %l74
  br label %bb35
bb35:
  %t152 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  %t154 = extractvalue { i64, ptr } %t152, 1
  %t155 = mul i64 %t153, 1
  %t156 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t155)
  call void @llvm.memcpy.p0.p0.i64(ptr %t156, ptr %t154, i64 %t155, i1 false)
  %t157 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t156, 1
  store { i64, ptr } %t158, ptr %l75, !tbaa !27
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l4, !tbaa !29
  %t163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %s0, ptr %t159, ptr %t160)
  store { i64, ptr } %t163, ptr %l78
  br label %bb36
bb36:
  %t164 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  %t171 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t173 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueTypes(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t171, { i64, ptr } %t170)
  store %"compiler/diagmsg:Msg" %t173, ptr %l80
  br label %bb37
bb37:
  %t174 = load ptr, ptr %l65, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l66
  %t176 = load %"compiler/diagmsg:Msg", ptr %l80
  %t177 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t174, %"compiler/source:Span" %t175, %"compiler/diagmsg:Msg" %t176)
  store i64 %t177, ptr %l81
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emulti(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"compiler/source:Span"
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l80 = alloca i64
  %l81 = alloca ptr
  %lp82 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i64
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca i64
  %l90 = alloca ptr
  %l98 = alloca i1
  %l103 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l110 = alloca i32
  %l122 = alloca { i64, ptr }
  %l135 = alloca i32
  %l139 = alloca ptr
  %l141 = alloca { i64, ptr }
  %l143 = alloca %"compiler/source:Span"
  %l146 = alloca { i64, ptr }
  %l148 = alloca %"compiler/diagmsg:Msg"
  %l149 = alloca i64
  %l158 = alloca { i64, ptr }
  %l169 = alloca ptr
  %l174 = alloca i32
  %l175 = alloca { i64, ptr }
  %l180 = alloca ptr
  %l181 = alloca %"compiler/source:Span"
  %l185 = alloca %"compiler/diagmsg:Msg"
  %l186 = alloca i64
  %l195 = alloca { i64, ptr }
  %l209 = alloca i64
  %l222 = alloca i64
  %l225 = alloca i64
  %l244 = alloca { i64, ptr }
  %l247 = alloca %"compiler/source:Span"
  %l251 = alloca { i64, ptr }
  %l264 = alloca ptr
  %l267 = alloca { i64, ptr }
  %l273 = alloca { i64, ptr }
  %l283 = alloca ptr
  %l284 = alloca ptr
  %l286 = alloca { i64, ptr }
  %l290 = alloca %"compiler/source:Span"
  %l293 = alloca i64
  %l294 = alloca %"compiler/source:Span"
  %l299 = alloca %"compiler/diagmsg:Msg"
  %l300 = alloca i64
  %l309 = alloca { i64, ptr }
  %l316 = alloca ptr
  %l325 = alloca i64
  %l328 = alloca i64
  %l348 = alloca { i64, ptr }
  %l353 = alloca ptr
  %l354 = alloca ptr
  %l356 = alloca { i64, ptr }
  %l358 = alloca ptr
  %l359 = alloca ptr
  %l362 = alloca { i64, ptr }
  %l365 = alloca i1
  %l367 = alloca i32
  %l369 = alloca { i64, ptr }
  %l372 = alloca %"compiler/source:Span"
  %l373 = alloca i32
  %l375 = alloca i32
  %l377 = alloca i1
  %l378 = alloca ptr
  %l381 = alloca i32
  %l382 = alloca i1
  %l390 = alloca ptr
  %l393 = alloca i1
  %l395 = alloca i1
  %l398 = alloca i1
  %l402 = alloca ptr
  %l405 = alloca i32
  %l408 = alloca i1
  %l410 = alloca i1
  %l414 = alloca i1
  %l418 = alloca ptr
  %l421 = alloca i32
  %l424 = alloca i1
  %l426 = alloca i1
  %l431 = alloca i1
  %l434 = alloca ptr
  %l437 = alloca { i64, ptr }
  %l444 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l445 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l447 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l453 = alloca i64
  %l456 = alloca i64
  %l476 = alloca { i64, ptr }
  %l479 = alloca ptr
  %l484 = alloca ptr
  %l487 = alloca { i64, ptr }
  %l490 = alloca ptr
  %l499 = alloca i64
  %l502 = alloca i64
  %l522 = alloca ptr
  %l526 = alloca i1
  %l529 = alloca i1
  %l530 = alloca ptr
  %l533 = alloca { i64, ptr }
  %l536 = alloca %"compiler/source:Span"
  %l537 = alloca %"compiler/diagmsg:Msg"
  %l538 = alloca i64
  %l543 = alloca i64
  %l545 = alloca i64
  %l547 = alloca i64
  %l552 = alloca ptr
  %l556 = alloca i1
  %l557 = alloca ptr
  %l559 = alloca i32
  %l560 = alloca i1
  %l562 = alloca i1
  %l565 = alloca ptr
  %l567 = alloca i32
  %l568 = alloca i1
  %l578 = alloca i64
  %l581 = alloca i64
  %l601 = alloca ptr
  %l605 = alloca i32
  %l610 = alloca ptr
  %l613 = alloca i32
  %l616 = alloca ptr
  %l620 = alloca i32
  %l624 = alloca { i64, ptr }
  %l628 = alloca ptr
  %l631 = alloca ptr
  %l634 = alloca ptr
  %l637 = alloca ptr
  %l642 = alloca ptr
  %l643 = alloca ptr
  %l645 = alloca { i64, ptr }
  %l648 = alloca %"compiler/source:Span"
  %l651 = alloca i32
  %l654 = alloca i64
  %l655 = alloca ptr
  %l657 = alloca { i64, ptr }
  %l660 = alloca %"compiler/source:Span"
  %l678 = alloca i64
  %l681 = alloca i64
  %l701 = alloca ptr
  %l705 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l715 = alloca { i64, ptr }
  %l718 = alloca ptr
  %l719 = alloca ptr
  %l726 = alloca i32
  %l732 = alloca ptr
  %l733 = alloca ptr
  %l735 = alloca %"compiler/source:Span"
  %l738 = alloca i32
  %l741 = alloca i64
  %l742 = alloca ptr
  %l744 = alloca %"compiler/source:Span"
  %l751 = alloca ptr
  %l755 = alloca ptr
  %l758 = alloca ptr
  %l759 = alloca ptr
  %l760 = alloca %"compiler/source:Span"
  %l763 = alloca i64
  %l764 = alloca ptr
  %l765 = alloca ptr
  %l766 = alloca %"compiler/source:Span"
  %l767 = alloca ptr
  %l768 = alloca %"compiler/source:Span"
  %l770 = alloca %"compiler/source:Span"
  %l772 = alloca i64
  %l778 = alloca ptr
  %l779 = alloca ptr
  %l782 = alloca { i64, ptr }
  %l784 = alloca { i64, ptr }
  %l788 = alloca ptr
  %l793 = alloca ptr
  %l796 = alloca ptr
  %l797 = alloca %"compiler/source:Span"
  %l800 = alloca ptr
  %l803 = alloca ptr
  %l804 = alloca ptr
  %l805 = alloca %"compiler/source:Span"
  %l808 = alloca i64
  %l809 = alloca ptr
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %t253 = alloca { i64, [1 x i64] }, align 8
  %t270 = alloca { i64, [3 x i64] }, align 8
  %t361 = alloca { i64, [4 x i64] }, align 8
  %t374 = alloca { i64, [4 x i64] }, align 8
  %t653 = alloca { i64, [4 x i64] }, align 8
  %t1192 = alloca { i64, [1 x i64] }, align 8
  %t1220 = alloca { i64, [3 x i64] }, align 8
  %t1385 = alloca { i64, [1 x i64] }, align 8
  %t1404 = alloca { i64, [3 x i64] }, align 8
  %t1497 = alloca { i64, [3 x i64] }, align 8
  %t1537 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Multi", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Multi", ptr %t8, i32 0, i32 2
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t15 = icmp eq i64 %t13, 1
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t17, 1
  store i1 %t19, ptr %l98, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l98, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Multi", ptr %t23, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l103, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 0
  %t30 = load ptr, ptr %t29, !tbaa !39
  %t32 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t22, ptr %t30, i32 %t32)
  store ptr %t36, ptr %l107
  br label %bb6
bb5:
  br label %bb64
bb6:
  %t37 = load ptr, ptr %l107, !tbaa !29
  store ptr %t37, ptr %l4, !tbaa !29
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t41 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t38)
  store i32 %t41, ptr %l110
  br label %bb7
bb7:
  %t42 = load i32, ptr %l110, !tbaa !23
  store i32 %t42, ptr %l5, !tbaa !23
  %t43 = load i32, ptr %l5, !tbaa !23
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t47 = icmp eq i32 %t43, %t44
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/ast:Multi", ptr %t49, i32 0, i32 0
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l8, !tbaa !24
  br label %bb10
bb9:
  br label %bb17
bb10:
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t66 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t66, ptr %l122, !tbaa !27
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr ptr, ptr %t70, i64 %t67
  %t72 = load ptr, ptr %t71, !tbaa !39
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/ast:Multi", ptr %t76, i32 0, i32 1
  %t79 = load i1, ptr %t78, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclareUnknown(ptr %v0, ptr %v1, ptr %t74, ptr %t72, i1 %t79)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t83 = load i64, ptr %l7, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l7, !tbaa !24
  br label %bb10
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %l5, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l135
  br label %bb18
bb18:
  %t97 = load i32, ptr %l135, !range !{i32 0, i32 33}
  %t99 = trunc i64 22 to i32
  %t100 = icmp eq i32 %t97, %t99
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l139, !tbaa !29
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr %"compiler/ast:Multi", ptr %t105, i32 0, i32 2
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l141, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr ptr, ptr %t110, i64 0
  %t112 = load ptr, ptr %t111, !tbaa !39
  %t114 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t112)
  store %"compiler/source:Span" %t114, ptr %l143
  br label %bb21
bb20:
  br label %bb32
bb21:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l5, !tbaa !23
  %t119 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s6, ptr %t115, i32 %t116)
  store { i64, ptr } %t119, ptr %l146
  br label %bb22
bb22:
  %t120 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructOneValue(ptr %s6, ptr %s6, { i64, ptr } %t126)
  store %"compiler/diagmsg:Msg" %t128, ptr %l148
  br label %bb23
bb23:
  %t129 = load ptr, ptr %l139, !tbaa !29
  %t130 = load %"compiler/source:Span", ptr %l143
  %t131 = load %"compiler/diagmsg:Msg", ptr %l148
  %t132 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t129, %"compiler/source:Span" %t130, %"compiler/diagmsg:Msg" %t131)
  store i64 %t132, ptr %l149
  br label %bb24
bb24:
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t135 = getelementptr %"compiler/ast:Multi", ptr %t133, i32 0, i32 0
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  store i64 %t140, ptr %l12, !tbaa !24
  br label %bb25
bb25:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t143 = load i64, ptr %l12, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t150 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t150, ptr %l158, !tbaa !27
  %t151 = load i64, ptr %l11, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr ptr, ptr %t154, i64 %t151
  %t156 = load ptr, ptr %t155, !tbaa !39
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l2, !tbaa !29
  %t162 = getelementptr %"compiler/ast:Multi", ptr %t160, i32 0, i32 1
  %t163 = load i1, ptr %t162, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclareUnknown(ptr %v0, ptr %v1, ptr %t158, ptr %t156, i1 %t163)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t167 = load i64, ptr %l11, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l11, !tbaa !24
  br label %bb25
bb31:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb32:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  store ptr %t176, ptr %l169, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 2
  %t183 = load i32, ptr %l5, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l174
  br label %bb33
bb33:
  %t187 = load ptr, ptr %l169, !tbaa !29
  %t188 = load i32, ptr %l174, !tbaa !23
  %t189 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t187, i32 %t188)
  store { i64, ptr } %t189, ptr %l175
  br label %bb34
bb34:
  %t190 = load { i64, ptr }, ptr %l175, !tbaa !27
  store { i64, ptr } %t190, ptr %l14, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = load i64, ptr %l3, !tbaa !24
  %t197 = icmp ne i64 %t193, %t194
  br i1 %t197, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s10
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l180, !tbaa !29
  %t200 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t200, ptr %l181
  %t201 = load i64, ptr %l3, !tbaa !24
  %t202 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t207 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %s10, i64 %t201, i64 %t204)
  store %"compiler/diagmsg:Msg" %t207, ptr %l185
  br label %bb37
bb36:
  br label %bb46
bb37:
  %t208 = load ptr, ptr %l180, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l181
  %t210 = load %"compiler/diagmsg:Msg", ptr %l185
  %t211 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t208, %"compiler/source:Span" %t209, %"compiler/diagmsg:Msg" %t210)
  store i64 %t211, ptr %l186
  br label %bb38
bb38:
  %t212 = load ptr, ptr %l2, !tbaa !29
  %t214 = getelementptr %"compiler/ast:Multi", ptr %t212, i32 0, i32 0
  %t215 = load { i64, ptr }, ptr %t214, !tbaa !27
  store { i64, ptr } %t215, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t217 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t217, 0
  store i64 %t219, ptr %l17, !tbaa !24
  br label %bb39
bb39:
  %t221 = load i64, ptr %l16, !tbaa !24
  %t222 = load i64, ptr %l17, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb40, label %bb41
bb40:
  br label %bb45
bb41:
  br label %bb42
bb42:
  %t229 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t229, ptr %l195, !tbaa !27
  %t230 = load i64, ptr %l16, !tbaa !24
  %t232 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr ptr, ptr %t233, i64 %t230
  %t235 = load ptr, ptr %t234, !tbaa !39
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr %"compiler/ast:Multi", ptr %t239, i32 0, i32 1
  %t242 = load i1, ptr %t241, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclareUnknown(ptr %v0, ptr %v1, ptr %t237, ptr %t235, i1 %t242)
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t246 = load i64, ptr %l16, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l16, !tbaa !24
  br label %bb39
bb45:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb46:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load %"compiler/source:Span", ptr %l1
  %t252 = load i32, ptr %l5, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [1 x i64] }, ptr %t253, i32 0, i32 0
  store i64 0, ptr %t254
  %t255 = load { i64, [1 x i64] }, ptr %t253
  %t261 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t250, i32 0, %"compiler/source:Span" %t251, i32 %t252, i32 2, { i64, [1 x i64] } %t255)
  store i64 %t261, ptr %l209
  br label %bb47
bb47:
  %t262 = load i64, ptr %l209, !tbaa !24
  store i64 %t262, ptr %l19, !tbaa !24
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l1
  %t265 = load i64, ptr %l19, !tbaa !24
  %t267 = trunc i64 %t265 to i32
  %t269 = load ptr, ptr %l4, !tbaa !29
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
  br label %bb48
bb48:
  store i64 0, ptr %l20, !tbaa !24
  %t284 = load i64, ptr %l3, !tbaa !24
  store i64 %t284, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t286 = load i64, ptr %l21, !tbaa !24
  %t287 = load i64, ptr %l20, !tbaa !24
  %t290 = icmp sgt i64 %t286, %t287
  br i1 %t290, label %bb49, label %bb50
bb49:
  %t292 = load i64, ptr %l22, !tbaa !24
  %t294 = icmp sgt i64 %t292, 0
  br i1 %t294, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l222, !tbaa !24
  br label %bb54
bb51:
  %t296 = load i64, ptr %l21, !tbaa !24
  %t297 = load i64, ptr %l20, !tbaa !24
  %t300 = sub i64 %t296, %t297
  %t301 = load i64, ptr %l22, !tbaa !24
  %t304 = add i64 %t300, %t301
  %t306 = sub i64 %t304, 1
  %t307 = load i64, ptr %l22, !tbaa !24
  %t310 = sdiv i64 %t306, %t307
  store i64 %t310, ptr %l225, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l225, !tbaa !24
  br label %bb53
bb53:
  %t312 = load i64, ptr %l225, !tbaa !24
  store i64 %t312, ptr %l222, !tbaa !24
  br label %bb54
bb54:
  %t313 = load i64, ptr %l222, !tbaa !24
  store i64 %t313, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb55
bb55:
  %t314 = load i64, ptr %l24, !tbaa !24
  %t315 = load i64, ptr %l23, !tbaa !24
  %t318 = icmp slt i64 %t314, %t315
  %t320 = xor i1 %t318, true
  br i1 %t320, label %bb56, label %bb57
bb56:
  br label %bb63
bb57:
  br label %bb58
bb58:
  %t322 = load i64, ptr %l20, !tbaa !24
  %t323 = load i64, ptr %l24, !tbaa !24
  %t324 = load i64, ptr %l22, !tbaa !24
  %t327 = mul i64 %t323, %t324
  %t330 = add i64 %t322, %t327
  store i64 %t330, ptr %l25, !tbaa !24
  %t332 = load ptr, ptr %l2, !tbaa !29
  %t334 = getelementptr %"compiler/ast:Multi", ptr %t332, i32 0, i32 0
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  store { i64, ptr } %t335, ptr %l244, !tbaa !27
  %t336 = load i64, ptr %l25, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr ptr, ptr %t339, i64 %t336
  %t341 = load ptr, ptr %t340, !tbaa !39
  %t343 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t341)
  store %"compiler/source:Span" %t343, ptr %l247
  br label %bb59
bb59:
  %t344 = load %"compiler/source:Span", ptr %l247
  store %"compiler/source:Span" %t344, ptr %l26
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load %"compiler/source:Span", ptr %l26
  %t347 = load %"compiler/source:Span", ptr %l26
  %t348 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t348, ptr %l251, !tbaa !27
  %t349 = load i64, ptr %l25, !tbaa !24
  %t351 = getelementptr { i64, ptr }, ptr %l251, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !27
  %t353 = getelementptr i32, ptr %t352, i64 %t349
  %t354 = load i32, ptr %t353, !tbaa !33
  %t355 = load %"compiler/source:Span", ptr %l26
  %t356 = load i32, ptr %l5, !tbaa !23
  %t357 = load i64, ptr %l19, !tbaa !24
  %t359 = trunc i64 %t357 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t361
  %t362 = getelementptr { i64, [4 x i64] }, ptr %t361, i32 0, i32 0
  store i64 0, ptr %t362
  %t364 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t355, 0
  %t366 = insertvalue { %"compiler/source:Span", i32, i32 } %t364, i32 %t356, 1
  %t368 = insertvalue { %"compiler/source:Span", i32, i32 } %t366, i32 %t359, 2
  %t369 = getelementptr { i64, [4 x i64] }, ptr %t361, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t368, ptr %t369
  %t370 = load { i64, [4 x i64] }, ptr %t361
  %t372 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t370, ptr %t372
  %t373 = load i64, ptr %l25, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t374
  %t375 = getelementptr { i64, [4 x i64] }, ptr %t374, i32 0, i32 0
  store i64 3, ptr %t375
  %t377 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t347, 0
  %t379 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t377, i32 %t354, 1
  %t381 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t379, ptr %t372, 2
  %t383 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t381, i64 %t373, 3
  %t384 = getelementptr { i64, [4 x i64] }, ptr %t374, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t383, ptr %t384
  %t385 = load { i64, [4 x i64] }, ptr %t374
  %t387 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t385, ptr %t387
  %t391 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t345, %"compiler/source:Span" %t346, ptr %t387)
  store ptr %t391, ptr %l264
  br label %bb60
bb60:
  %t392 = load ptr, ptr %l264, !tbaa !29
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t394 = load ptr, ptr %l2, !tbaa !29
  %t396 = getelementptr %"compiler/ast:Multi", ptr %t394, i32 0, i32 0
  %t397 = load { i64, ptr }, ptr %t396, !tbaa !27
  store { i64, ptr } %t397, ptr %l267, !tbaa !27
  %t398 = load i64, ptr %l25, !tbaa !24
  %t400 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr ptr, ptr %t401, i64 %t398
  %t403 = load ptr, ptr %t402, !tbaa !39
  %t404 = load ptr, ptr %l2, !tbaa !29
  %t406 = getelementptr %"compiler/ast:Multi", ptr %t404, i32 0, i32 1
  %t407 = load i1, ptr %t406, !tbaa !21
  %t409 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t409, ptr %l273, !tbaa !27
  %t410 = load i64, ptr %l25, !tbaa !24
  %t412 = getelementptr { i64, ptr }, ptr %l273, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr i32, ptr %t413, i64 %t410
  %t415 = load i32, ptr %t414, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eputTarget(ptr %v0, ptr %v1, ptr %v0, ptr %t393, ptr %t403, i1 %t407, ptr %t392, i32 %t415)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t421 = load i64, ptr %l24, !tbaa !24
  %t423 = add i64 %t421, 1
  store i64 %t423, ptr %l24, !tbaa !24
  br label %bb55
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb64:
  %t425 = load ptr, ptr %l2, !tbaa !29
  %t427 = getelementptr %"compiler/ast:Multi", ptr %t425, i32 0, i32 2
  %t428 = load { i64, ptr }, ptr %t427, !tbaa !27
  %t430 = extractvalue { i64, ptr } %t428, 0
  %t431 = load i64, ptr %l3, !tbaa !24
  %t434 = icmp ne i64 %t430, %t431
  br i1 %t434, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s17
  %t436 = load ptr, ptr %l0, !tbaa !29
  store ptr %t436, ptr %l283, !tbaa !29
  %t437 = load ptr, ptr %l0, !tbaa !29
  store ptr %t437, ptr %l284, !tbaa !29
  %t438 = load ptr, ptr %l2, !tbaa !29
  %t440 = getelementptr %"compiler/ast:Multi", ptr %t438, i32 0, i32 0
  %t441 = load { i64, ptr }, ptr %t440, !tbaa !27
  store { i64, ptr } %t441, ptr %l286, !tbaa !27
  %t442 = load i64, ptr %l3, !tbaa !24
  %t444 = sub i64 %t442, 1
  %t446 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = getelementptr ptr, ptr %t447, i64 %t444
  %t449 = load ptr, ptr %t448, !tbaa !39
  %t451 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t449)
  store %"compiler/source:Span" %t451, ptr %l290
  br label %bb67
bb66:
  br label %bb81
bb67:
  %t452 = load ptr, ptr %l2, !tbaa !29
  %t454 = getelementptr %"compiler/ast:Multi", ptr %t452, i32 0, i32 1
  %t455 = load i1, ptr %t454, !tbaa !21
  br i1 %t455, label %bb68, label %bb69
bb68:
  store i64 2, ptr %l293, !tbaa !24
  br label %bb70
bb69:
  store i64 1, ptr %l293, !tbaa !24
  br label %bb70
bb70:
  %t457 = load ptr, ptr %l284, !tbaa !29
  %t458 = load %"compiler/source:Span", ptr %l290
  %t459 = load i64, ptr %l293, !tbaa !24
  %t460 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t457, %"compiler/source:Span" %t458, i64 %t459)
  store %"compiler/source:Span" %t460, ptr %l294
  br label %bb71
bb71:
  %t461 = load i64, ptr %l3, !tbaa !24
  %t462 = load ptr, ptr %l2, !tbaa !29
  %t464 = getelementptr %"compiler/ast:Multi", ptr %t462, i32 0, i32 2
  %t465 = load { i64, ptr }, ptr %t464, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t465, 0
  %t470 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssignListCount(ptr %s17, i64 %t461, i64 %t467)
  store %"compiler/diagmsg:Msg" %t470, ptr %l299
  br label %bb72
bb72:
  %t471 = load ptr, ptr %l283, !tbaa !29
  %t472 = load %"compiler/source:Span", ptr %l294
  %t473 = load %"compiler/diagmsg:Msg", ptr %l299
  %t474 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s17, ptr %t471, %"compiler/source:Span" %t472, %"compiler/diagmsg:Msg" %t473)
  store i64 %t474, ptr %l300
  br label %bb73
bb73:
  %t475 = load ptr, ptr %l2, !tbaa !29
  %t477 = getelementptr %"compiler/ast:Multi", ptr %t475, i32 0, i32 2
  %t478 = load { i64, ptr }, ptr %t477, !tbaa !27
  store { i64, ptr } %t478, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t480 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t482 = extractvalue { i64, ptr } %t480, 0
  store i64 %t482, ptr %l30, !tbaa !24
  br label %bb74
bb74:
  %t484 = load i64, ptr %l29, !tbaa !24
  %t485 = load i64, ptr %l30, !tbaa !24
  %t488 = icmp slt i64 %t484, %t485
  %t490 = xor i1 %t488, true
  br i1 %t490, label %bb75, label %bb76
bb75:
  br label %bb80
bb76:
  br label %bb77
bb77:
  %t492 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t492, ptr %l309, !tbaa !27
  %t493 = load i64, ptr %l29, !tbaa !24
  %t495 = getelementptr { i64, ptr }, ptr %l309, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = getelementptr ptr, ptr %t496, i64 %t493
  %t498 = load ptr, ptr %t497, !tbaa !39
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t503 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t507 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t500, ptr %t498, i32 %t503)
  store ptr %t507, ptr %l316
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t508 = load i64, ptr %l29, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l29, !tbaa !24
  br label %bb74
bb80:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb81:
  %t512 = load ptr, ptr %l2, !tbaa !29
  %t514 = getelementptr %"compiler/ast:Multi", ptr %t512, i32 0, i32 1
  %t515 = load i1, ptr %t514, !tbaa !21
  br i1 %t515, label %bb82, label %bb83
bb82:
  store i64 0, ptr %l32, !tbaa !24
  %t517 = load i64, ptr %l3, !tbaa !24
  store i64 %t517, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t519 = load i64, ptr %l33, !tbaa !24
  %t520 = load i64, ptr %l32, !tbaa !24
  %t523 = icmp sgt i64 %t519, %t520
  br i1 %t523, label %bb84, label %bb85
bb83:
  br label %bb140
bb84:
  %t525 = load i64, ptr %l34, !tbaa !24
  %t527 = icmp sgt i64 %t525, 0
  br i1 %t527, label %bb86, label %bb87
bb85:
  store i64 0, ptr %l325, !tbaa !24
  br label %bb89
bb86:
  %t529 = load i64, ptr %l33, !tbaa !24
  %t530 = load i64, ptr %l32, !tbaa !24
  %t533 = sub i64 %t529, %t530
  %t534 = load i64, ptr %l34, !tbaa !24
  %t537 = add i64 %t533, %t534
  %t539 = sub i64 %t537, 1
  %t540 = load i64, ptr %l34, !tbaa !24
  %t543 = sdiv i64 %t539, %t540
  store i64 %t543, ptr %l328, !tbaa !24
  br label %bb88
bb87:
  store i64 0, ptr %l328, !tbaa !24
  br label %bb88
bb88:
  %t545 = load i64, ptr %l328, !tbaa !24
  store i64 %t545, ptr %l325, !tbaa !24
  br label %bb89
bb89:
  %t546 = load i64, ptr %l325, !tbaa !24
  store i64 %t546, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb90
bb90:
  %t547 = load i64, ptr %l36, !tbaa !24
  %t548 = load i64, ptr %l35, !tbaa !24
  %t551 = icmp slt i64 %t547, %t548
  %t553 = xor i1 %t551, true
  br i1 %t553, label %bb91, label %bb92
bb91:
  br label %bb139
bb92:
  br label %bb93
bb93:
  %t555 = load i64, ptr %l32, !tbaa !24
  %t556 = load i64, ptr %l36, !tbaa !24
  %t557 = load i64, ptr %l34, !tbaa !24
  %t560 = mul i64 %t556, %t557
  %t563 = add i64 %t555, %t560
  store i64 %t563, ptr %l37, !tbaa !24
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t566 = load ptr, ptr %l2, !tbaa !29
  %t568 = getelementptr %"compiler/ast:Multi", ptr %t566, i32 0, i32 2
  %t569 = load { i64, ptr }, ptr %t568, !tbaa !27
  store { i64, ptr } %t569, ptr %l348, !tbaa !27
  %t570 = load i64, ptr %l37, !tbaa !24
  %t572 = getelementptr { i64, ptr }, ptr %l348, i32 0, i32 1
  %t573 = load ptr, ptr %t572, !tbaa !27
  %t574 = getelementptr ptr, ptr %t573, i64 %t570
  %t575 = load ptr, ptr %t574, !tbaa !39
  %t577 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t581 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t565, ptr %t575, i32 %t577)
  store ptr %t581, ptr %l353
  br label %bb94
bb94:
  %t582 = load ptr, ptr %l353, !tbaa !29
  store ptr %t582, ptr %l38, !tbaa !29
  %t583 = load ptr, ptr %l0, !tbaa !29
  store ptr %t583, ptr %l354, !tbaa !29
  %t584 = load ptr, ptr %l2, !tbaa !29
  %t586 = getelementptr %"compiler/ast:Multi", ptr %t584, i32 0, i32 2
  %t587 = load { i64, ptr }, ptr %t586, !tbaa !27
  store { i64, ptr } %t587, ptr %l356, !tbaa !27
  %t588 = load i64, ptr %l37, !tbaa !24
  %t590 = getelementptr { i64, ptr }, ptr %l356, i32 0, i32 1
  %t591 = load ptr, ptr %t590, !tbaa !27
  %t592 = getelementptr ptr, ptr %t591, i64 %t588
  %t593 = load ptr, ptr %t592, !tbaa !39
  store ptr %t593, ptr %l358, !tbaa !29
  %t594 = load ptr, ptr %l38, !tbaa !29
  store ptr %t594, ptr %l359, !tbaa !29
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t596 = load ptr, ptr %l2, !tbaa !29
  %t598 = getelementptr %"compiler/ast:Multi", ptr %t596, i32 0, i32 0
  %t599 = load { i64, ptr }, ptr %t598, !tbaa !27
  store { i64, ptr } %t599, ptr %l362, !tbaa !27
  %t600 = load i64, ptr %l37, !tbaa !24
  %t602 = getelementptr { i64, ptr }, ptr %l362, i32 0, i32 1
  %t603 = load ptr, ptr %t602, !tbaa !27
  %t604 = getelementptr ptr, ptr %t603, i64 %t600
  %t605 = load ptr, ptr %t604, !tbaa !39
  %t608 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoredName(ptr %v0, ptr %v1, ptr %t595, ptr %t605)
  store i1 %t608, ptr %l365
  br label %bb95
bb95:
  %t609 = load i1, ptr %l365, !tbaa !21
  %t610 = xor i1 %t609, true
  %t611 = load ptr, ptr %l354, !tbaa !29
  %t612 = load ptr, ptr %l358, !tbaa !29
  %t613 = load ptr, ptr %l359, !tbaa !29
  %t615 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v0, ptr %t611, ptr %t612, ptr %t613, i1 %t610)
  store i32 %t615, ptr %l367
  br label %bb96
bb96:
  %t616 = load i32, ptr %l367, !tbaa !23
  store i32 %t616, ptr %l39, !tbaa !23
  %t617 = load ptr, ptr %l2, !tbaa !29
  %t619 = getelementptr %"compiler/ast:Multi", ptr %t617, i32 0, i32 2
  %t620 = load { i64, ptr }, ptr %t619, !tbaa !27
  store { i64, ptr } %t620, ptr %l369, !tbaa !27
  %t621 = load i64, ptr %l37, !tbaa !24
  %t623 = getelementptr { i64, ptr }, ptr %l369, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !27
  %t625 = getelementptr ptr, ptr %t624, i64 %t621
  %t626 = load ptr, ptr %t625, !tbaa !39
  %t628 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t626)
  store %"compiler/source:Span" %t628, ptr %l372
  br label %bb97
bb97:
  %t629 = load %"compiler/source:Span", ptr %l372
  store %"compiler/source:Span" %t629, ptr %l40
  %t630 = load i32, ptr %l39, !tbaa !23
  store i32 %t630, ptr %l373, !tbaa !23
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t633 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t631)
  store i32 %t633, ptr %l375
  br label %bb98
bb98:
  %t634 = load i32, ptr %l373, !tbaa !23
  %t635 = load i32, ptr %l375, !tbaa !23
  %t636 = icmp eq i32 %t634, %t635
  br i1 %t636, label %bb99, label %bb100
bb99:
  %t638 = load ptr, ptr %l0, !tbaa !29
  store ptr %t638, ptr %l378, !tbaa !29
  %t639 = load ptr, ptr %l38, !tbaa !29
  %t642 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t639)
  store i32 %t642, ptr %l381
  br label %bb101
bb100:
  store i1 false, ptr %l377, !tbaa !21
  br label %bb103
bb101:
  %t643 = load ptr, ptr %l378, !tbaa !29
  %t644 = load i32, ptr %l381, !tbaa !23
  %t645 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t643, i32 %t644)
  store i1 %t645, ptr %l382
  br label %bb102
bb102:
  %t646 = load i1, ptr %l382, !tbaa !21
  store i1 %t646, ptr %l377, !tbaa !21
  br label %bb103
bb103:
  %t647 = load i1, ptr %l377, !tbaa !21
  br i1 %t647, label %bb104, label %bb105
bb104:
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t649 = load %"compiler/source:Span", ptr %l40
  %t650 = load %"compiler/source:Span", ptr %l40
  %t651 = load i32, ptr %l39, !tbaa !23
  %t652 = load ptr, ptr %l38, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t653
  %t654 = getelementptr { i64, [4 x i64] }, ptr %t653, i32 0, i32 0
  store i64 2, ptr %t654
  %t656 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t650, 0
  %t658 = insertvalue { %"compiler/source:Span", i32, ptr } %t656, i32 %t651, 1
  %t660 = insertvalue { %"compiler/source:Span", i32, ptr } %t658, ptr %t652, 2
  %t661 = getelementptr { i64, [4 x i64] }, ptr %t653, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t660, ptr %t661
  %t662 = load { i64, [4 x i64] }, ptr %t653
  %t664 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t662, ptr %t664
  %t668 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t648, %"compiler/source:Span" %t649, ptr %t664)
  store ptr %t668, ptr %l390
  br label %bb106
bb105:
  br label %bb107
bb106:
  %t669 = load ptr, ptr %l390, !tbaa !29
  store ptr %t669, ptr %l38, !tbaa !29
  br label %bb107
bb107:
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load i32, ptr %l39, !tbaa !23
  %t674 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t670, i32 %t671)
  store i1 %t674, ptr %l393
  br label %bb108
bb108:
  %t675 = load i1, ptr %l393, !tbaa !21
  %t676 = xor i1 %t675, true
  br i1 %t676, label %bb109, label %bb110
bb109:
  %t678 = load ptr, ptr %l0, !tbaa !29
  %t679 = load ptr, ptr %l38, !tbaa !29
  %t682 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v0, ptr %t678, ptr %t679)
  store i1 %t682, ptr %l398
  br label %bb111
bb110:
  store i1 false, ptr %l395, !tbaa !21
  br label %bb112
bb111:
  %t683 = load i1, ptr %l398, !tbaa !21
  store i1 %t683, ptr %l395, !tbaa !21
  br label %bb112
bb112:
  %t684 = load i1, ptr %l395, !tbaa !21
  br i1 %t684, label %bb113, label %bb114
bb113:
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t686 = load ptr, ptr %l38, !tbaa !29
  %t687 = load %"compiler/source:Span", ptr %l40
  %t691 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v0, ptr %v0, ptr %t685, ptr %t686, %"compiler/source:Span" %t687, i1 true)
  store ptr %t691, ptr %l402
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t692 = load ptr, ptr %l402, !tbaa !29
  store ptr %t692, ptr %l38, !tbaa !29
  %t693 = load ptr, ptr %l38, !tbaa !29
  %t696 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t693)
  store i32 %t696, ptr %l405
  br label %bb116
bb116:
  %t697 = load i32, ptr %l405, !tbaa !23
  store i32 %t697, ptr %l39, !tbaa !23
  br label %bb117
bb117:
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t699 = load i32, ptr %l39, !tbaa !23
  %t702 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t698, i32 %t699)
  store i1 %t702, ptr %l408
  br label %bb118
bb118:
  %t703 = load i1, ptr %l408, !tbaa !21
  %t704 = xor i1 %t703, true
  br i1 %t704, label %bb119, label %bb120
bb119:
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/check:Checker", ptr %t706, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t710 = load i32, ptr %l39, !tbaa !23
  %t713 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t709, i32 %t710)
  store i1 %t713, ptr %l414
  br label %bb121
bb120:
  store i1 false, ptr %l410, !tbaa !21
  br label %bb122
bb121:
  %t714 = load i1, ptr %l414, !tbaa !21
  store i1 %t714, ptr %l410, !tbaa !21
  br label %bb122
bb122:
  %t715 = load i1, ptr %l410, !tbaa !21
  br i1 %t715, label %bb123, label %bb124
bb123:
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t717 = load ptr, ptr %l38, !tbaa !29
  %t718 = load %"compiler/source:Span", ptr %l40
  %t722 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenRef(ptr %v0, ptr %v0, ptr %v0, ptr %t716, ptr %t717, %"compiler/source:Span" %t718)
  store ptr %t722, ptr %l418
  br label %bb125
bb124:
  br label %bb127
bb125:
  %t723 = load ptr, ptr %l418, !tbaa !29
  store ptr %t723, ptr %l38, !tbaa !29
  %t724 = load ptr, ptr %l38, !tbaa !29
  %t727 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t724)
  store i32 %t727, ptr %l421
  br label %bb126
bb126:
  %t728 = load i32, ptr %l421, !tbaa !23
  store i32 %t728, ptr %l39, !tbaa !23
  br label %bb127
bb127:
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t730 = load i32, ptr %l39, !tbaa !23
  %t733 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t729, i32 %t730)
  store i1 %t733, ptr %l424
  br label %bb128
bb128:
  %t734 = load i1, ptr %l424, !tbaa !21
  %t735 = xor i1 %t734, true
  br i1 %t735, label %bb129, label %bb130
bb129:
  %t737 = load ptr, ptr %l0, !tbaa !29
  %t739 = getelementptr %"compiler/check:Checker", ptr %t737, i32 0, i32 1
  %t740 = load ptr, ptr %t739, !tbaa !29
  %t742 = getelementptr %"compiler/generic:Program", ptr %t740, i32 0, i32 2
  %t743 = load i32, ptr %l39, !tbaa !23
  %t746 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t742, i32 %t743)
  store i1 %t746, ptr %l431
  br label %bb131
bb130:
  store i1 false, ptr %l426, !tbaa !21
  br label %bb132
bb131:
  %t747 = load i1, ptr %l431, !tbaa !21
  store i1 %t747, ptr %l426, !tbaa !21
  br label %bb132
bb132:
  %t748 = load i1, ptr %l426, !tbaa !21
  br i1 %t748, label %bb133, label %bb134
bb133:
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t750 = load ptr, ptr %l38, !tbaa !29
  %t753 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t749, ptr %t750)
  store ptr %t753, ptr %l434
  br label %bb135
bb134:
  br label %bb136
bb135:
  %t754 = load ptr, ptr %l434, !tbaa !29
  store ptr %t754, ptr %l38, !tbaa !29
  br label %bb136
bb136:
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t756 = load ptr, ptr %l2, !tbaa !29
  %t758 = getelementptr %"compiler/ast:Multi", ptr %t756, i32 0, i32 0
  %t759 = load { i64, ptr }, ptr %t758, !tbaa !27
  store { i64, ptr } %t759, ptr %l437, !tbaa !27
  %t760 = load i64, ptr %l37, !tbaa !24
  %t762 = getelementptr { i64, ptr }, ptr %l437, i32 0, i32 1
  %t763 = load ptr, ptr %t762, !tbaa !27
  %t764 = getelementptr ptr, ptr %t763, i64 %t760
  %t765 = load ptr, ptr %t764, !tbaa !39
  %t766 = load ptr, ptr %l38, !tbaa !29
  %t767 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eputTarget(ptr %v0, ptr %v1, ptr %v0, ptr %t755, ptr %t765, i1 true, ptr %t766, i32 %t767)
  br label %bb137
bb137:
  br label %bb138
bb138:
  %t772 = load i64, ptr %l36, !tbaa !24
  %t774 = add i64 %t772, 1
  store i64 %t774, ptr %l36, !tbaa !24
  br label %bb90
bb139:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb140:
  %t776 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t776, ptr %l444
  br label %bb141
bb141:
  %t777 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l444
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t777, ptr %l41
  %t778 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t778, ptr %l445
  br label %bb142
bb142:
  %t779 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l445
  %t780 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t779, ptr %t780
  store ptr %t780, ptr %l42, !tbaa !29
  %t782 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t782, ptr %l447
  br label %bb143
bb143:
  %t783 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l447
  %t784 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t783, ptr %t784
  store ptr %t784, ptr %l43, !tbaa !29
  store i64 0, ptr %l44, !tbaa !24
  %t786 = load i64, ptr %l3, !tbaa !24
  store i64 %t786, ptr %l45, !tbaa !24
  store i64 1, ptr %l46, !tbaa !24
  %t788 = load i64, ptr %l45, !tbaa !24
  %t789 = load i64, ptr %l44, !tbaa !24
  %t792 = icmp sgt i64 %t788, %t789
  br i1 %t792, label %bb144, label %bb145
bb144:
  %t794 = load i64, ptr %l46, !tbaa !24
  %t796 = icmp sgt i64 %t794, 0
  br i1 %t796, label %bb146, label %bb147
bb145:
  store i64 0, ptr %l453, !tbaa !24
  br label %bb149
bb146:
  %t798 = load i64, ptr %l45, !tbaa !24
  %t799 = load i64, ptr %l44, !tbaa !24
  %t802 = sub i64 %t798, %t799
  %t803 = load i64, ptr %l46, !tbaa !24
  %t806 = add i64 %t802, %t803
  %t808 = sub i64 %t806, 1
  %t809 = load i64, ptr %l46, !tbaa !24
  %t812 = sdiv i64 %t808, %t809
  store i64 %t812, ptr %l456, !tbaa !24
  br label %bb148
bb147:
  store i64 0, ptr %l456, !tbaa !24
  br label %bb148
bb148:
  %t814 = load i64, ptr %l456, !tbaa !24
  store i64 %t814, ptr %l453, !tbaa !24
  br label %bb149
bb149:
  %t815 = load i64, ptr %l453, !tbaa !24
  store i64 %t815, ptr %l47, !tbaa !24
  store i64 0, ptr %l48, !tbaa !24
  br label %bb150
bb150:
  %t816 = load i64, ptr %l48, !tbaa !24
  %t817 = load i64, ptr %l47, !tbaa !24
  %t820 = icmp slt i64 %t816, %t817
  %t822 = xor i1 %t820, true
  br i1 %t822, label %bb151, label %bb152
bb151:
  br label %bb162
bb152:
  br label %bb153
bb153:
  %t824 = load i64, ptr %l44, !tbaa !24
  %t825 = load i64, ptr %l48, !tbaa !24
  %t826 = load i64, ptr %l46, !tbaa !24
  %t829 = mul i64 %t825, %t826
  %t832 = add i64 %t824, %t829
  store i64 %t832, ptr %l49, !tbaa !24
  %t834 = load ptr, ptr %l0, !tbaa !29
  %t835 = load ptr, ptr %l2, !tbaa !29
  %t837 = getelementptr %"compiler/ast:Multi", ptr %t835, i32 0, i32 0
  %t838 = load { i64, ptr }, ptr %t837, !tbaa !27
  store { i64, ptr } %t838, ptr %l476, !tbaa !27
  %t839 = load i64, ptr %l49, !tbaa !24
  %t841 = getelementptr { i64, ptr }, ptr %l476, i32 0, i32 1
  %t842 = load ptr, ptr %t841, !tbaa !27
  %t843 = getelementptr ptr, ptr %t842, i64 %t839
  %t844 = load ptr, ptr %t843, !tbaa !39
  %t847 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetAtTarget(ptr %v0, ptr %v1, ptr %v0, ptr %t834, ptr %t844)
  store ptr %t847, ptr %l479
  br label %bb154
bb154:
  %t848 = load ptr, ptr %l479, !tbaa !29
  store ptr %t848, ptr %l50, !tbaa !29
  %t849 = load ptr, ptr %l43, !tbaa !29
  %t850 = load ptr, ptr %l50, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2ePu_H987461f55898bae561e1d5349703380d(ptr %v0, ptr %v0, ptr %t849, ptr %t850)
  br label %bb155
bb155:
  %t853 = load ptr, ptr %l50, !tbaa !29
  %t855 = icmp eq ptr %t853, null
  br i1 %t855, label %bb156, label %bb157
bb156:
  %t857 = load ptr, ptr %l0, !tbaa !29
  %t858 = load ptr, ptr %l2, !tbaa !29
  %t860 = getelementptr %"compiler/ast:Multi", ptr %t858, i32 0, i32 0
  %t861 = load { i64, ptr }, ptr %t860, !tbaa !27
  store { i64, ptr } %t861, ptr %l487, !tbaa !27
  %t862 = load i64, ptr %l49, !tbaa !24
  %t864 = getelementptr { i64, ptr }, ptr %l487, i32 0, i32 1
  %t865 = load ptr, ptr %t864, !tbaa !27
  %t866 = getelementptr ptr, ptr %t865, i64 %t862
  %t867 = load ptr, ptr %t866, !tbaa !39
  %t870 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ediscardOr(ptr %v0, ptr %v1, ptr %v0, ptr %t857, ptr %t867)
  store ptr %t870, ptr %l490
  br label %bb158
bb157:
  store ptr null, ptr %l484, !tbaa !29
  br label %bb159
bb158:
  %t871 = load ptr, ptr %l490, !tbaa !29
  store ptr %t871, ptr %l484, !tbaa !29
  br label %bb159
bb159:
  %t872 = load ptr, ptr %l484, !tbaa !29
  %t873 = load ptr, ptr %l42, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eP_Ha5c233616e2ae02d7fe37742cfaef2c2(ptr %v0, ptr %v0, ptr %t873, ptr %t872)
  br label %bb160
bb160:
  br label %bb161
bb161:
  %t877 = load i64, ptr %l48, !tbaa !24
  %t879 = add i64 %t877, 1
  store i64 %t879, ptr %l48, !tbaa !24
  br label %bb150
bb162:
  store i64 0, ptr %l52, !tbaa !24
  %t881 = load i64, ptr %l3, !tbaa !24
  store i64 %t881, ptr %l53, !tbaa !24
  store i64 1, ptr %l54, !tbaa !24
  %t883 = load i64, ptr %l53, !tbaa !24
  %t884 = load i64, ptr %l52, !tbaa !24
  %t887 = icmp sgt i64 %t883, %t884
  br i1 %t887, label %bb163, label %bb164
bb163:
  %t889 = load i64, ptr %l54, !tbaa !24
  %t891 = icmp sgt i64 %t889, 0
  br i1 %t891, label %bb165, label %bb166
bb164:
  store i64 0, ptr %l499, !tbaa !24
  br label %bb168
bb165:
  %t893 = load i64, ptr %l53, !tbaa !24
  %t894 = load i64, ptr %l52, !tbaa !24
  %t897 = sub i64 %t893, %t894
  %t898 = load i64, ptr %l54, !tbaa !24
  %t901 = add i64 %t897, %t898
  %t903 = sub i64 %t901, 1
  %t904 = load i64, ptr %l54, !tbaa !24
  %t907 = sdiv i64 %t903, %t904
  store i64 %t907, ptr %l502, !tbaa !24
  br label %bb167
bb166:
  store i64 0, ptr %l502, !tbaa !24
  br label %bb167
bb167:
  %t909 = load i64, ptr %l502, !tbaa !24
  store i64 %t909, ptr %l499, !tbaa !24
  br label %bb168
bb168:
  %t910 = load i64, ptr %l499, !tbaa !24
  store i64 %t910, ptr %l55, !tbaa !24
  store i64 0, ptr %l56, !tbaa !24
  br label %bb169
bb169:
  %t911 = load i64, ptr %l56, !tbaa !24
  %t912 = load i64, ptr %l55, !tbaa !24
  %t915 = icmp slt i64 %t911, %t912
  %t917 = xor i1 %t915, true
  br i1 %t917, label %bb170, label %bb171
bb170:
  br label %bb185
bb171:
  br label %bb172
bb172:
  %t919 = load i64, ptr %l52, !tbaa !24
  %t920 = load i64, ptr %l56, !tbaa !24
  %t921 = load i64, ptr %l54, !tbaa !24
  %t924 = mul i64 %t920, %t921
  %t927 = add i64 %t919, %t924
  store i64 %t927, ptr %l57, !tbaa !24
  %t929 = load ptr, ptr %l42, !tbaa !29
  %t930 = load i64, ptr %l57, !tbaa !24
  %t933 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v0, ptr %t929, i64 %t930)
  store ptr %t933, ptr %l522
  br label %bb173
bb173:
  %t934 = load ptr, ptr %l522, !tbaa !29
  store ptr %t934, ptr %l58, !tbaa !29
  %t935 = load ptr, ptr %l58, !tbaa !29
  %t937 = icmp eq ptr %t935, null
  %t939 = xor i1 %t937, true
  br i1 %t939, label %bb174, label %bb175
bb174:
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t942 = load ptr, ptr %l58, !tbaa !29
  %t945 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeColumn(ptr %v0, ptr %v0, ptr %t941, ptr %t942)
  store i1 %t945, ptr %l529
  br label %bb176
bb175:
  store i1 false, ptr %l526, !tbaa !21
  br label %bb177
bb176:
  %t946 = load i1, ptr %l529, !tbaa !21
  store i1 %t946, ptr %l526, !tbaa !21
  br label %bb177
bb177:
  %t947 = load i1, ptr %l526, !tbaa !21
  br i1 %t947, label %bb178, label %bb179
bb178:
  store %olang.scope zeroinitializer, ptr %s34
  %t948 = load ptr, ptr %l0, !tbaa !29
  store ptr %t948, ptr %l530, !tbaa !29
  %t949 = load ptr, ptr %l0, !tbaa !29
  %t950 = load ptr, ptr %l2, !tbaa !29
  %t952 = getelementptr %"compiler/ast:Multi", ptr %t950, i32 0, i32 0
  %t953 = load { i64, ptr }, ptr %t952, !tbaa !27
  store { i64, ptr } %t953, ptr %l533, !tbaa !27
  %t954 = load i64, ptr %l57, !tbaa !24
  %t956 = getelementptr { i64, ptr }, ptr %l533, i32 0, i32 1
  %t957 = load ptr, ptr %t956, !tbaa !27
  %t958 = getelementptr ptr, ptr %t957, i64 %t954
  %t959 = load ptr, ptr %t958, !tbaa !39
  %t962 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t949, ptr %t959)
  store %"compiler/source:Span" %t962, ptr %l536
  br label %bb180
bb179:
  br label %bb183
bb180:
  %t963 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnAssigned(ptr %s34)
  store %"compiler/diagmsg:Msg" %t963, ptr %l537
  br label %bb181
bb181:
  %t964 = load ptr, ptr %l530, !tbaa !29
  %t965 = load %"compiler/source:Span", ptr %l536
  %t966 = load %"compiler/diagmsg:Msg", ptr %l537
  %t967 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s34, ptr %t964, %"compiler/source:Span" %t965, %"compiler/diagmsg:Msg" %t966)
  store i64 %t967, ptr %l538
  br label %bb182
bb182:
  call void @__olang_scope_close(ptr %s34)
  br label %bb183
bb183:
  br label %bb184
bb184:
  %t968 = load i64, ptr %l56, !tbaa !24
  %t970 = add i64 %t968, 1
  store i64 %t970, ptr %l56, !tbaa !24
  br label %bb169
bb185:
  %t972 = load ptr, ptr %l0, !tbaa !29
  %t974 = getelementptr %"compiler/check:Checker", ptr %t972, i32 0, i32 10
  %t976 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t974)
  store i64 %t976, ptr %l543
  br label %bb186
bb186:
  %t977 = load i64, ptr %l543, !tbaa !24
  store i64 %t977, ptr %l59, !tbaa !24
  %t978 = load ptr, ptr %l42, !tbaa !29
  store ptr %t978, ptr %l60, !tbaa !29
  store i64 0, ptr %l61, !tbaa !24
  br label %bb187
bb187:
  %t980 = load i64, ptr %l61, !tbaa !24
  store i64 %t980, ptr %l545, !tbaa !24
  %t981 = load ptr, ptr %l60, !tbaa !29
  %t983 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %t981)
  store i64 %t983, ptr %l547
  br label %bb188
bb188:
  %t984 = load i64, ptr %l545, !tbaa !24
  %t985 = load i64, ptr %l547, !tbaa !24
  %t986 = icmp slt i64 %t984, %t985
  %t988 = xor i1 %t986, true
  br i1 %t988, label %bb189, label %bb190
bb189:
  br label %bb208
bb190:
  br label %bb191
bb191:
  %t990 = load ptr, ptr %l60, !tbaa !29
  %t991 = load i64, ptr %l61, !tbaa !24
  %t994 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v0, ptr %t990, i64 %t991)
  store ptr %t994, ptr %l552
  br label %bb192
bb192:
  %t995 = load ptr, ptr %l552, !tbaa !29
  store ptr %t995, ptr %l62, !tbaa !29
  %t996 = load ptr, ptr %l62, !tbaa !29
  %t998 = icmp eq ptr %t996, null
  %t1000 = xor i1 %t998, true
  br i1 %t1000, label %bb193, label %bb194
bb193:
  %t1002 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1002, ptr %l557, !tbaa !29
  %t1003 = load ptr, ptr %l62, !tbaa !29
  %t1005 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t1003)
  store i32 %t1005, ptr %l559
  br label %bb195
bb194:
  store i1 false, ptr %l556, !tbaa !21
  br label %bb197
bb195:
  %t1006 = load ptr, ptr %l557, !tbaa !29
  %t1007 = load i32, ptr %l559, !tbaa !23
  %t1008 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1006, i32 %t1007)
  store i1 %t1008, ptr %l560
  br label %bb196
bb196:
  %t1009 = load i1, ptr %l560, !tbaa !21
  %t1010 = xor i1 %t1009, true
  store i1 %t1010, ptr %l556, !tbaa !21
  br label %bb197
bb197:
  %t1012 = load i1, ptr %l556, !tbaa !21
  br i1 %t1012, label %bb198, label %bb199
bb198:
  %t1013 = load ptr, ptr %l0, !tbaa !29
  %t1015 = getelementptr %"compiler/check:Checker", ptr %t1013, i32 0, i32 1
  %t1016 = load ptr, ptr %t1015, !tbaa !29
  %t1018 = getelementptr %"compiler/generic:Program", ptr %t1016, i32 0, i32 2
  store ptr %t1018, ptr %l565, !tbaa !29
  %t1019 = load ptr, ptr %l62, !tbaa !29
  %t1021 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t1019)
  store i32 %t1021, ptr %l567
  br label %bb200
bb199:
  store i1 false, ptr %l562, !tbaa !21
  br label %bb202
bb200:
  %t1022 = load ptr, ptr %l565, !tbaa !29
  %t1023 = load i32, ptr %l567, !tbaa !23
  %t1024 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t1022, i32 %t1023)
  store i1 %t1024, ptr %l568
  br label %bb201
bb201:
  %t1025 = load i1, ptr %l568, !tbaa !21
  store i1 %t1025, ptr %l562, !tbaa !21
  br label %bb202
bb202:
  %t1026 = load i1, ptr %l562, !tbaa !21
  br i1 %t1026, label %bb203, label %bb204
bb203:
  %t1027 = load ptr, ptr %l0, !tbaa !29
  %t1029 = getelementptr %"compiler/check:Checker", ptr %t1027, i32 0, i32 10
  %t1030 = load ptr, ptr %l62, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v0, ptr %t1029, ptr %t1030)
  br label %bb205
bb204:
  br label %bb206
bb205:
  br label %bb206
bb206:
  br label %bb207
bb207:
  %t1033 = load i64, ptr %l61, !tbaa !24
  %t1035 = add i64 %t1033, 1
  store i64 %t1035, ptr %l61, !tbaa !24
  br label %bb187
bb208:
  store i64 0, ptr %l63, !tbaa !24
  %t1037 = load i64, ptr %l3, !tbaa !24
  store i64 %t1037, ptr %l64, !tbaa !24
  store i64 1, ptr %l65, !tbaa !24
  %t1039 = load i64, ptr %l64, !tbaa !24
  %t1040 = load i64, ptr %l63, !tbaa !24
  %t1043 = icmp sgt i64 %t1039, %t1040
  br i1 %t1043, label %bb209, label %bb210
bb209:
  %t1045 = load i64, ptr %l65, !tbaa !24
  %t1047 = icmp sgt i64 %t1045, 0
  br i1 %t1047, label %bb211, label %bb212
bb210:
  store i64 0, ptr %l578, !tbaa !24
  br label %bb214
bb211:
  %t1049 = load i64, ptr %l64, !tbaa !24
  %t1050 = load i64, ptr %l63, !tbaa !24
  %t1053 = sub i64 %t1049, %t1050
  %t1054 = load i64, ptr %l65, !tbaa !24
  %t1057 = add i64 %t1053, %t1054
  %t1059 = sub i64 %t1057, 1
  %t1060 = load i64, ptr %l65, !tbaa !24
  %t1063 = sdiv i64 %t1059, %t1060
  store i64 %t1063, ptr %l581, !tbaa !24
  br label %bb213
bb212:
  store i64 0, ptr %l581, !tbaa !24
  br label %bb213
bb213:
  %t1065 = load i64, ptr %l581, !tbaa !24
  store i64 %t1065, ptr %l578, !tbaa !24
  br label %bb214
bb214:
  %t1066 = load i64, ptr %l578, !tbaa !24
  store i64 %t1066, ptr %l66, !tbaa !24
  store i64 0, ptr %l67, !tbaa !24
  br label %bb215
bb215:
  store %olang.scope zeroinitializer, ptr %s41
  %t1067 = load i64, ptr %l67, !tbaa !24
  %t1068 = load i64, ptr %l66, !tbaa !24
  %t1071 = icmp slt i64 %t1067, %t1068
  %t1073 = xor i1 %t1071, true
  br i1 %t1073, label %bb216, label %bb217
bb216:
  call void @__olang_scope_close(ptr %s41)
  br label %bb249
bb217:
  br label %bb218
bb218:
  %t1075 = load i64, ptr %l63, !tbaa !24
  %t1076 = load i64, ptr %l67, !tbaa !24
  %t1077 = load i64, ptr %l65, !tbaa !24
  %t1080 = mul i64 %t1076, %t1077
  %t1083 = add i64 %t1075, %t1080
  store i64 %t1083, ptr %l68, !tbaa !24
  %t1085 = load ptr, ptr %l43, !tbaa !29
  %t1086 = load i64, ptr %l68, !tbaa !24
  %t1089 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2eAt_H6c7d5ab01c425e68e8a93a567ecc740a(ptr %v0, ptr %v0, ptr %t1085, i64 %t1086)
  store ptr %t1089, ptr %l601
  br label %bb219
bb219:
  %t1090 = load ptr, ptr %l601, !tbaa !29
  store ptr %t1090, ptr %l69, !tbaa !29
  %t1091 = load ptr, ptr %l69, !tbaa !29
  %t1093 = icmp eq ptr %t1091, null
  %t1095 = xor i1 %t1093, true
  br i1 %t1095, label %bb220, label %bb221
bb220:
  %t1097 = load ptr, ptr %l69, !tbaa !29
  %t1099 = getelementptr %"compiler/check:setAt", ptr %t1097, i32 0, i32 5
  %t1100 = load i32, ptr %t1099, !tbaa !23
  store i32 %t1100, ptr %l605, !tbaa !23
  br label %bb231
bb221:
  %t1102 = load ptr, ptr %l42, !tbaa !29
  %t1103 = load i64, ptr %l68, !tbaa !24
  %t1106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %s41, ptr %t1102, i64 %t1103)
  store ptr %t1106, ptr %l610
  br label %bb222
bb222:
  %t1107 = load ptr, ptr %l610, !tbaa !29
  %t1108 = icmp eq ptr %t1107, null
  %t1110 = xor i1 %t1108, true
  br i1 %t1110, label %bb223, label %bb224
bb223:
  %t1112 = load ptr, ptr %l42, !tbaa !29
  %t1113 = load i64, ptr %l68, !tbaa !24
  %t1116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v0, ptr %t1112, i64 %t1113)
  store ptr %t1116, ptr %l616
  br label %bb225
bb224:
  %t1117 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1117, ptr %l613, !tbaa !23
  br label %bb230
bb225:
  %t1119 = load ptr, ptr %l616, !tbaa !29
  store ptr %t1119, ptr %l70, !tbaa !29
  %t1120 = load ptr, ptr %l70, !tbaa !29
  %t1122 = icmp eq ptr %t1120, null
  br i1 %t1122, label %bb226, label %bb227
bb226:
  call void @__olang_check_failed(ptr @olang_loc_96ad6a547cbfae6b_c8fd4ea10ff1b69f)
  unreachable
bb227:
  br label %bb228
bb228:
  %t1124 = load ptr, ptr %l70, !tbaa !29
  %t1126 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t1124)
  store i32 %t1126, ptr %l620
  br label %bb229
bb229:
  %t1127 = load i32, ptr %l620, !tbaa !23
  store i32 %t1127, ptr %l613, !tbaa !23
  br label %bb230
bb230:
  %t1128 = load i32, ptr %l613, !tbaa !23
  store i32 %t1128, ptr %l605, !tbaa !23
  br label %bb231
bb231:
  %t1129 = load i32, ptr %l605, !tbaa !23
  %t1130 = load ptr, ptr %l0, !tbaa !29
  %t1131 = load ptr, ptr %l2, !tbaa !29
  %t1133 = getelementptr %"compiler/ast:Multi", ptr %t1131, i32 0, i32 2
  %t1134 = load { i64, ptr }, ptr %t1133, !tbaa !27
  store { i64, ptr } %t1134, ptr %l624, !tbaa !27
  %t1135 = load i64, ptr %l68, !tbaa !24
  %t1137 = getelementptr { i64, ptr }, ptr %l624, i32 0, i32 1
  %t1138 = load ptr, ptr %t1137, !tbaa !27
  %t1139 = getelementptr ptr, ptr %t1138, i64 %t1135
  %t1140 = load ptr, ptr %t1139, !tbaa !39
  %t1145 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t1130, ptr %t1140, i32 %t1129)
  store ptr %t1145, ptr %l628
  br label %bb232
bb232:
  %t1146 = load ptr, ptr %l628, !tbaa !29
  store ptr %t1146, ptr %l72, !tbaa !29
  %t1147 = load ptr, ptr %l42, !tbaa !29
  %t1148 = load i64, ptr %l68, !tbaa !24
  %t1151 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %s41, ptr %t1147, i64 %t1148)
  store ptr %t1151, ptr %l631
  br label %bb233
bb233:
  %t1152 = load ptr, ptr %l631, !tbaa !29
  %t1153 = icmp eq ptr %t1152, null
  %t1155 = xor i1 %t1153, true
  br i1 %t1155, label %bb234, label %bb235
bb234:
  %t1157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1157, ptr %l634, !tbaa !29
  %t1158 = load ptr, ptr %l42, !tbaa !29
  %t1159 = load i64, ptr %l68, !tbaa !24
  %t1162 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v0, ptr %t1158, i64 %t1159)
  store ptr %t1162, ptr %l637
  br label %bb236
bb235:
  br label %bb241
bb236:
  %t1163 = load ptr, ptr %l637, !tbaa !29
  store ptr %t1163, ptr %l73, !tbaa !29
  %t1164 = load ptr, ptr %l73, !tbaa !29
  %t1166 = icmp eq ptr %t1164, null
  br i1 %t1166, label %bb237, label %bb238
bb237:
  call void @__olang_check_failed(ptr @olang_loc_1e0e3f8e77107efc_26f178b75df49a00)
  unreachable
bb238:
  br label %bb239
bb239:
  %t1168 = load ptr, ptr %l73, !tbaa !29
  %t1169 = load ptr, ptr %l72, !tbaa !29
  %t1170 = load ptr, ptr %l634, !tbaa !29
  %t1173 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreCopy(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t1170, ptr %t1168, ptr %t1169)
  store ptr %t1173, ptr %l642
  br label %bb240
bb240:
  %t1174 = load ptr, ptr %l642, !tbaa !29
  store ptr %t1174, ptr %l72, !tbaa !29
  br label %bb241
bb241:
  %t1175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1175, ptr %l643, !tbaa !29
  %t1176 = load ptr, ptr %l2, !tbaa !29
  %t1178 = getelementptr %"compiler/ast:Multi", ptr %t1176, i32 0, i32 2
  %t1179 = load { i64, ptr }, ptr %t1178, !tbaa !27
  store { i64, ptr } %t1179, ptr %l645, !tbaa !27
  %t1180 = load i64, ptr %l68, !tbaa !24
  %t1182 = getelementptr { i64, ptr }, ptr %l645, i32 0, i32 1
  %t1183 = load ptr, ptr %t1182, !tbaa !27
  %t1184 = getelementptr ptr, ptr %t1183, i64 %t1180
  %t1185 = load ptr, ptr %t1184, !tbaa !39
  %t1187 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1185)
  store %"compiler/source:Span" %t1187, ptr %l648
  br label %bb242
bb242:
  %t1188 = load ptr, ptr %l72, !tbaa !29
  %t1191 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1188)
  store i32 %t1191, ptr %l651
  br label %bb243
bb243:
  store { i64, [1 x i64] } zeroinitializer, ptr %t1192
  %t1193 = getelementptr { i64, [1 x i64] }, ptr %t1192, i32 0, i32 0
  store i64 0, ptr %t1193
  %t1194 = load { i64, [1 x i64] }, ptr %t1192
  %t1195 = load ptr, ptr %l643, !tbaa !29
  %t1196 = load %"compiler/source:Span", ptr %l648
  %t1197 = load i32, ptr %l651, !tbaa !23
  %t1200 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t1195, i32 0, %"compiler/source:Span" %t1196, i32 %t1197, i32 2, { i64, [1 x i64] } %t1194)
  store i64 %t1200, ptr %l654
  br label %bb244
bb244:
  %t1201 = load i64, ptr %l654, !tbaa !24
  store i64 %t1201, ptr %l74, !tbaa !24
  %t1202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1202, ptr %l655, !tbaa !29
  %t1203 = load ptr, ptr %l2, !tbaa !29
  %t1205 = getelementptr %"compiler/ast:Multi", ptr %t1203, i32 0, i32 2
  %t1206 = load { i64, ptr }, ptr %t1205, !tbaa !27
  store { i64, ptr } %t1206, ptr %l657, !tbaa !27
  %t1207 = load i64, ptr %l68, !tbaa !24
  %t1209 = getelementptr { i64, ptr }, ptr %l657, i32 0, i32 1
  %t1210 = load ptr, ptr %t1209, !tbaa !27
  %t1211 = getelementptr ptr, ptr %t1210, i64 %t1207
  %t1212 = load ptr, ptr %t1211, !tbaa !39
  %t1214 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1212)
  store %"compiler/source:Span" %t1214, ptr %l660
  br label %bb245
bb245:
  %t1215 = load i64, ptr %l74, !tbaa !24
  %t1217 = trunc i64 %t1215 to i32
  %t1219 = load ptr, ptr %l72, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t1220
  %t1221 = getelementptr { i64, [3 x i64] }, ptr %t1220, i32 0, i32 0
  store i64 0, ptr %t1221
  %t1222 = load %"compiler/source:Span", ptr %l660
  %t1223 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1222, 0
  %t1225 = insertvalue { %"compiler/source:Span", i32, ptr } %t1223, i32 %t1217, 1
  %t1227 = insertvalue { %"compiler/source:Span", i32, ptr } %t1225, ptr %t1219, 2
  %t1228 = getelementptr { i64, [3 x i64] }, ptr %t1220, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1227, ptr %t1228
  %t1229 = load { i64, [3 x i64] }, ptr %t1220
  %t1231 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1229, ptr %t1231
  %t1232 = load ptr, ptr %l655, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1232, ptr %t1231)
  br label %bb246
bb246:
  %t1234 = load i64, ptr %l74, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l41, i64 %t1234)
  br label %bb247
bb247:
  call void @__olang_scope_close(ptr %s41)
  br label %bb248
bb248:
  %t1237 = load i64, ptr %l67, !tbaa !24
  %t1239 = add i64 %t1237, 1
  store i64 %t1239, ptr %l67, !tbaa !24
  br label %bb215
bb249:
  %t1241 = load ptr, ptr %l0, !tbaa !29
  %t1243 = getelementptr %"compiler/check:Checker", ptr %t1241, i32 0, i32 10
  %t1244 = load i64, ptr %l59, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eTrun_Haa7c8ccc08c8123d0b87c9688e5d351e(ptr %v0, ptr %t1243, i64 %t1244)
  br label %bb250
bb250:
  store i64 0, ptr %l75, !tbaa !24
  %t1247 = load i64, ptr %l3, !tbaa !24
  store i64 %t1247, ptr %l76, !tbaa !24
  store i64 1, ptr %l77, !tbaa !24
  %t1249 = load i64, ptr %l76, !tbaa !24
  %t1250 = load i64, ptr %l75, !tbaa !24
  %t1253 = icmp sgt i64 %t1249, %t1250
  br i1 %t1253, label %bb251, label %bb252
bb251:
  %t1255 = load i64, ptr %l77, !tbaa !24
  %t1257 = icmp sgt i64 %t1255, 0
  br i1 %t1257, label %bb253, label %bb254
bb252:
  store i64 0, ptr %l678, !tbaa !24
  br label %bb256
bb253:
  %t1259 = load i64, ptr %l76, !tbaa !24
  %t1260 = load i64, ptr %l75, !tbaa !24
  %t1263 = sub i64 %t1259, %t1260
  %t1264 = load i64, ptr %l77, !tbaa !24
  %t1267 = add i64 %t1263, %t1264
  %t1269 = sub i64 %t1267, 1
  %t1270 = load i64, ptr %l77, !tbaa !24
  %t1273 = sdiv i64 %t1269, %t1270
  store i64 %t1273, ptr %l681, !tbaa !24
  br label %bb255
bb254:
  store i64 0, ptr %l681, !tbaa !24
  br label %bb255
bb255:
  %t1275 = load i64, ptr %l681, !tbaa !24
  store i64 %t1275, ptr %l678, !tbaa !24
  br label %bb256
bb256:
  %t1276 = load i64, ptr %l678, !tbaa !24
  store i64 %t1276, ptr %l78, !tbaa !24
  store i64 0, ptr %l79, !tbaa !24
  br label %bb257
bb257:
  %t1277 = load i64, ptr %l79, !tbaa !24
  %t1278 = load i64, ptr %l78, !tbaa !24
  %t1281 = icmp slt i64 %t1277, %t1278
  %t1283 = xor i1 %t1281, true
  br i1 %t1283, label %bb258, label %bb259
bb258:
  br label %bb310
bb259:
  br label %bb260
bb260:
  %t1285 = load i64, ptr %l75, !tbaa !24
  %t1286 = load i64, ptr %l79, !tbaa !24
  %t1287 = load i64, ptr %l77, !tbaa !24
  %t1290 = mul i64 %t1286, %t1287
  %t1293 = add i64 %t1285, %t1290
  store i64 %t1293, ptr %l80, !tbaa !24
  %t1295 = load ptr, ptr %l43, !tbaa !29
  %t1296 = load i64, ptr %l80, !tbaa !24
  %t1299 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2eAt_H6c7d5ab01c425e68e8a93a567ecc740a(ptr %v0, ptr %v0, ptr %t1295, i64 %t1296)
  store ptr %t1299, ptr %l701
  br label %bb261
bb261:
  %t1300 = load ptr, ptr %l701, !tbaa !29
  store ptr %t1300, ptr %l81, !tbaa !29
  %t1301 = load ptr, ptr %l81, !tbaa !29
  %t1303 = icmp eq ptr %t1301, null
  %t1305 = xor i1 %t1303, true
  br i1 %t1305, label %bb262, label %bb263
bb262:
  %t1307 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1307, ptr %l705
  br label %bb264
bb263:
  store %olang.scope zeroinitializer, ptr %s50
  %t1308 = load ptr, ptr %l42, !tbaa !29
  %t1309 = load i64, ptr %l80, !tbaa !24
  %t1312 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %s50, ptr %t1308, i64 %t1309)
  store ptr %t1312, ptr %l793
  br label %bb297
bb264:
  %t1313 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t1313, ptr %lp82
  %t1314 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l705
  %t1315 = load ptr, ptr %lp82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1314, ptr %t1315
  %t1316 = load ptr, ptr %l81, !tbaa !29
  %t1318 = getelementptr %"compiler/check:setAt", ptr %t1316, i32 0, i32 2
  %t1319 = load { i64, ptr }, ptr %t1318, !tbaa !27
  store { i64, ptr } %t1319, ptr %l83, !tbaa !27
  store i64 0, ptr %l84, !tbaa !24
  %t1321 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t1323 = extractvalue { i64, ptr } %t1321, 0
  store i64 %t1323, ptr %l85, !tbaa !24
  br label %bb265
bb265:
  %t1325 = load i64, ptr %l84, !tbaa !24
  %t1326 = load i64, ptr %l85, !tbaa !24
  %t1329 = icmp slt i64 %t1325, %t1326
  %t1331 = xor i1 %t1329, true
  br i1 %t1331, label %bb266, label %bb267
bb266:
  br label %bb281
bb267:
  br label %bb268
bb268:
  %t1333 = load i64, ptr %l84, !tbaa !24
  store i64 %t1333, ptr %l86, !tbaa !24
  %t1335 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t1335, ptr %l715, !tbaa !27
  %t1336 = load i64, ptr %l84, !tbaa !24
  %t1338 = getelementptr { i64, ptr }, ptr %l715, i32 0, i32 1
  %t1339 = load ptr, ptr %t1338, !tbaa !27
  %t1340 = getelementptr ptr, ptr %t1339, i64 %t1336
  %t1341 = load ptr, ptr %t1340, !tbaa !39
  store ptr %t1341, ptr %l87, !tbaa !29
  %t1343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1343, ptr %l718, !tbaa !29
  %t1344 = load ptr, ptr %l87, !tbaa !29
  store ptr %t1344, ptr %l719, !tbaa !29
  %t1345 = load i64, ptr %l86, !tbaa !24
  %t1347 = add i64 %t1345, 1
  %t1348 = load ptr, ptr %l81, !tbaa !29
  %t1350 = getelementptr %"compiler/check:setAt", ptr %t1348, i32 0, i32 3
  %t1351 = load { i64, ptr }, ptr %t1350, !tbaa !27
  %t1353 = extractvalue { i64, ptr } %t1351, 0
  %t1356 = icmp slt i64 %t1347, %t1353
  br i1 %t1356, label %bb269, label %bb270
bb269:
  %t1358 = load ptr, ptr %l81, !tbaa !29
  %t1359 = load i64, ptr %l86, !tbaa !24
  %t1361 = add i64 %t1359, 1
  %t1363 = getelementptr %"compiler/check:setAt", ptr %t1358, i32 0, i32 3
  %t1365 = getelementptr { i64, ptr }, ptr %t1363, i32 0, i32 1
  %t1366 = load ptr, ptr %t1365, !tbaa !27
  %t1367 = getelementptr i32, ptr %t1366, i64 %t1361
  %t1368 = load i32, ptr %t1367, !tbaa !33
  store i32 %t1368, ptr %l726, !tbaa !23
  br label %bb271
bb270:
  %t1370 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1370, ptr %l726, !tbaa !23
  br label %bb271
bb271:
  %t1372 = load ptr, ptr %l718, !tbaa !29
  %t1373 = load ptr, ptr %l719, !tbaa !29
  %t1374 = load i32, ptr %l726, !tbaa !23
  %t1375 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v0, ptr %v0, ptr %t1372, ptr %t1373, i32 %t1374)
  store ptr %t1375, ptr %l732
  br label %bb272
bb272:
  %t1376 = load ptr, ptr %l732, !tbaa !29
  store ptr %t1376, ptr %l88, !tbaa !29
  %t1377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1377, ptr %l733, !tbaa !29
  %t1378 = load ptr, ptr %l87, !tbaa !29
  %t1380 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t1378)
  store %"compiler/source:Span" %t1380, ptr %l735
  br label %bb273
bb273:
  %t1381 = load ptr, ptr %l88, !tbaa !29
  %t1384 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1381)
  store i32 %t1384, ptr %l738
  br label %bb274
bb274:
  store { i64, [1 x i64] } zeroinitializer, ptr %t1385
  %t1386 = getelementptr { i64, [1 x i64] }, ptr %t1385, i32 0, i32 0
  store i64 0, ptr %t1386
  %t1387 = load { i64, [1 x i64] }, ptr %t1385
  %t1388 = load ptr, ptr %l733, !tbaa !29
  %t1389 = load %"compiler/source:Span", ptr %l735
  %t1390 = load i32, ptr %l738, !tbaa !23
  %t1393 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t1388, i32 0, %"compiler/source:Span" %t1389, i32 %t1390, i32 2, { i64, [1 x i64] } %t1387)
  store i64 %t1393, ptr %l741
  br label %bb275
bb275:
  %t1394 = load i64, ptr %l741, !tbaa !24
  store i64 %t1394, ptr %l89, !tbaa !24
  %t1395 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1395, ptr %l742, !tbaa !29
  %t1396 = load ptr, ptr %l87, !tbaa !29
  %t1398 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t1396)
  store %"compiler/source:Span" %t1398, ptr %l744
  br label %bb276
bb276:
  %t1399 = load i64, ptr %l89, !tbaa !24
  %t1401 = trunc i64 %t1399 to i32
  %t1403 = load ptr, ptr %l88, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t1404
  %t1405 = getelementptr { i64, [3 x i64] }, ptr %t1404, i32 0, i32 0
  store i64 0, ptr %t1405
  %t1406 = load %"compiler/source:Span", ptr %l744
  %t1407 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1406, 0
  %t1409 = insertvalue { %"compiler/source:Span", i32, ptr } %t1407, i32 %t1401, 1
  %t1411 = insertvalue { %"compiler/source:Span", i32, ptr } %t1409, ptr %t1403, 2
  %t1412 = getelementptr { i64, [3 x i64] }, ptr %t1404, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1411, ptr %t1412
  %t1413 = load { i64, [3 x i64] }, ptr %t1404
  %t1415 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1413, ptr %t1415
  %t1416 = load ptr, ptr %l742, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1416, ptr %t1415)
  br label %bb277
bb277:
  %t1418 = load ptr, ptr %lp82
  store ptr %t1418, ptr %l751, !tbaa !29
  %t1419 = load ptr, ptr %l0, !tbaa !29
  %t1420 = load %"compiler/source:Span", ptr %l1
  %t1421 = load i64, ptr %l89, !tbaa !24
  %t1425 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1419, %"compiler/source:Span" %t1420, i64 %t1421)
  store ptr %t1425, ptr %l755
  br label %bb278
bb278:
  %t1426 = load ptr, ptr %l751, !tbaa !29
  %t1427 = load ptr, ptr %l755, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1426, ptr %t1427)
  br label %bb279
bb279:
  br label %bb280
bb280:
  %t1428 = load i64, ptr %l84, !tbaa !24
  %t1430 = add i64 %t1428, 1
  store i64 %t1430, ptr %l84, !tbaa !24
  br label %bb265
bb281:
  %t1432 = load ptr, ptr %lp82
  store ptr %t1432, ptr %l758, !tbaa !29
  %t1433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1433, ptr %l759, !tbaa !29
  %t1434 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1434, ptr %l760
  %t1435 = load i64, ptr %l80, !tbaa !24
  %t1438 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l41, i64 %t1435)
  store i64 %t1438, ptr %l763
  br label %bb282
bb282:
  %t1439 = load ptr, ptr %l759, !tbaa !29
  %t1440 = load %"compiler/source:Span", ptr %l760
  %t1441 = load i64, ptr %l763, !tbaa !24
  %t1442 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1439, %"compiler/source:Span" %t1440, i64 %t1441)
  store ptr %t1442, ptr %l764
  br label %bb283
bb283:
  %t1443 = load ptr, ptr %l758, !tbaa !29
  %t1444 = load ptr, ptr %l764, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1443, ptr %t1444)
  br label %bb284
bb284:
  %t1445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1445, ptr %l765, !tbaa !29
  %t1446 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1446, ptr %l766
  %t1447 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1447, ptr %l767, !tbaa !29
  %t1448 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1448, ptr %l768
  %t1449 = load ptr, ptr %l81, !tbaa !29
  %t1451 = getelementptr %"compiler/check:setAt", ptr %t1449, i32 0, i32 4
  %t1452 = load %"compiler/source:Span", ptr %t1451
  store %"compiler/source:Span" %t1452, ptr %l770
  %t1453 = load ptr, ptr %l81, !tbaa !29
  %t1455 = getelementptr %"compiler/check:setAt", ptr %t1453, i32 0, i32 1
  %t1456 = load i64, ptr %t1455, !tbaa !24
  store i64 %t1456, ptr %l772, !tbaa !24
  %t1457 = load ptr, ptr %l0, !tbaa !29
  %t1458 = load ptr, ptr %l81, !tbaa !29
  %t1460 = getelementptr %"compiler/check:setAt", ptr %t1458, i32 0, i32 4
  %t1461 = load %"compiler/source:Span", ptr %t1460
  %t1462 = load ptr, ptr %l81, !tbaa !29
  %t1464 = getelementptr %"compiler/check:setAt", ptr %t1462, i32 0, i32 0
  %t1465 = load ptr, ptr %t1464, !tbaa !29
  %t1469 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t1457, %"compiler/source:Span" %t1461, ptr %t1465)
  store ptr %t1469, ptr %l778
  br label %bb285
bb285:
  %t1470 = load ptr, ptr %l778, !tbaa !29
  store ptr %t1470, ptr %l779, !tbaa !29
  %t1471 = icmp sge i64 0, 0
  br i1 %t1471, label %bb286, label %bb287
bb286:
  %t1473 = icmp sle i64 0, 1152921504606846975
  br i1 %t1473, label %bb288, label %bb289
bb287:
  call void @__olang_check_failed(ptr @olang_loc_89675b40bb29f91f_f23262abf4982edb)
  unreachable
bb288:
  %t1475 = mul i64 0, 8
  %t1476 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1477 = insertvalue { i64, ptr } %t1476, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1477, ptr %l782, !tbaa !27
  %t1478 = load ptr, ptr %lp82
  %t1480 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v0, ptr %t1478)
  store { i64, ptr } %t1480, ptr %l784
  br label %bb290
bb289:
  call void @__olang_check_failed(ptr @olang_loc_89675b40bb29f91f_f23262abf4982edb)
  unreachable
bb290:
  %t1481 = icmp sge i64 0, 0
  br i1 %t1481, label %bb291, label %bb292
bb291:
  %t1483 = icmp sle i64 0, 2305843009213693951
  br i1 %t1483, label %bb293, label %bb294
bb292:
  call void @__olang_check_failed(ptr @olang_loc_7114c498979ee84a_e24a16e9735bab46)
  unreachable
bb293:
  %t1485 = mul i64 0, 4
  %t1486 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1487 = insertvalue { i64, ptr } %t1486, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1488 = load ptr, ptr %l767, !tbaa !29
  %t1489 = load %"compiler/source:Span", ptr %l768
  %t1490 = load %"compiler/source:Span", ptr %l770
  %t1491 = load i64, ptr %l772, !tbaa !24
  %t1492 = load ptr, ptr %l779, !tbaa !29
  %t1493 = load { i64, ptr }, ptr %l782, !tbaa !27
  %t1494 = load { i64, ptr }, ptr %l784, !tbaa !27
  %t1496 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t1488, %"compiler/source:Span" %t1489, %"compiler/source:Span" %t1490, i64 %t1491, ptr %t1492, { i64, ptr } %t1493, { i64, ptr } %t1494, { i64, ptr } %t1487)
  store ptr %t1496, ptr %l788
  br label %bb295
bb294:
  call void @__olang_check_failed(ptr @olang_loc_7114c498979ee84a_e24a16e9735bab46)
  unreachable
bb295:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1497
  %t1498 = getelementptr { i64, [3 x i64] }, ptr %t1497, i32 0, i32 0
  store i64 2, ptr %t1498
  %t1499 = load %"compiler/source:Span", ptr %l766
  %t1500 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1499, 0
  %t1501 = load ptr, ptr %l788, !tbaa !29
  %t1502 = insertvalue { %"compiler/source:Span", ptr } %t1500, ptr %t1501, 1
  %t1503 = getelementptr { i64, [3 x i64] }, ptr %t1497, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1502, ptr %t1503
  %t1504 = load { i64, [3 x i64] }, ptr %t1497
  %t1506 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1504, ptr %t1506
  %t1507 = load ptr, ptr %l765, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1507, ptr %t1506)
  br label %bb296
bb296:
  br label %bb308
bb297:
  %t1509 = load ptr, ptr %l793, !tbaa !29
  %t1510 = icmp eq ptr %t1509, null
  %t1512 = xor i1 %t1510, true
  br i1 %t1512, label %bb298, label %bb299
bb298:
  %t1514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1514, ptr %l796, !tbaa !29
  %t1515 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1515, ptr %l797
  %t1516 = load ptr, ptr %l42, !tbaa !29
  %t1517 = load i64, ptr %l80, !tbaa !24
  %t1520 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v0, ptr %t1516, i64 %t1517)
  store ptr %t1520, ptr %l800
  br label %bb300
bb299:
  br label %bb307
bb300:
  %t1521 = load ptr, ptr %l800, !tbaa !29
  store ptr %t1521, ptr %l90, !tbaa !29
  %t1522 = load ptr, ptr %l90, !tbaa !29
  %t1524 = icmp eq ptr %t1522, null
  br i1 %t1524, label %bb301, label %bb302
bb301:
  call void @__olang_check_failed(ptr @olang_loc_c7908973d247e2d7_c6acba74781c2b93)
  unreachable
bb302:
  br label %bb303
bb303:
  %t1526 = load ptr, ptr %l90, !tbaa !29
  store ptr %t1526, ptr %l803, !tbaa !29
  %t1527 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1527, ptr %l804, !tbaa !29
  %t1528 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1528, ptr %l805
  %t1529 = load i64, ptr %l80, !tbaa !24
  %t1532 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l41, i64 %t1529)
  store i64 %t1532, ptr %l808
  br label %bb304
bb304:
  %t1533 = load ptr, ptr %l804, !tbaa !29
  %t1534 = load %"compiler/source:Span", ptr %l805
  %t1535 = load i64, ptr %l808, !tbaa !24
  %t1536 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1533, %"compiler/source:Span" %t1534, i64 %t1535)
  store ptr %t1536, ptr %l809
  br label %bb305
bb305:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1537
  %t1538 = getelementptr { i64, [3 x i64] }, ptr %t1537, i32 0, i32 0
  store i64 1, ptr %t1538
  %t1539 = load %"compiler/source:Span", ptr %l797
  %t1540 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t1539, 0
  %t1541 = load ptr, ptr %l803, !tbaa !29
  %t1542 = insertvalue { %"compiler/source:Span", ptr, ptr } %t1540, ptr %t1541, 1
  %t1543 = load ptr, ptr %l809, !tbaa !29
  %t1544 = insertvalue { %"compiler/source:Span", ptr, ptr } %t1542, ptr %t1543, 2
  %t1545 = getelementptr { i64, [3 x i64] }, ptr %t1537, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t1544, ptr %t1545
  %t1546 = load { i64, [3 x i64] }, ptr %t1537
  %t1548 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1546, ptr %t1548
  %t1549 = load ptr, ptr %l796, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1549, ptr %t1548)
  br label %bb306
bb306:
  br label %bb307
bb307:
  call void @__olang_scope_close(ptr %s50)
  br label %bb308
bb308:
  br label %bb309
bb309:
  %t1551 = load i64, ptr %l79, !tbaa !24
  %t1553 = add i64 %t1551, 1
  store i64 %t1553, ptr %l79, !tbaa !24
  br label %bb257
bb310:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoBuilder(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"compiler/msgs:Nearest"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l32 = alloca ptr
  %l36 = alloca i1
  %l37 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l51 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca %"compiler/source:Span"
  %l59 = alloca i32
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l4, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t7 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t6)
  store %"compiler/msgs:Nearest" %t7, ptr %l12
  br label %bb2
bb2:
  %t8 = load %"compiler/msgs:Nearest", ptr %l12
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t8, ptr %t9
  store ptr %t9, ptr %l5, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load i32, ptr %l3, !tbaa !23
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuildersOf(ptr %v0, ptr %s1, ptr %t14, i32 %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l17
  br label %bb3
bb3:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t20 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %t20
  store ptr %t20, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t22 = load i64, ptr %l7, !tbaa !24
  store i64 %t22, ptr %l19, !tbaa !24
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t23)
  store i64 %t25, ptr %l21
  br label %bb5
bb5:
  %t26 = load i64, ptr %l19, !tbaa !24
  %t27 = load i64, ptr %l21, !tbaa !24
  %t28 = icmp slt i64 %t26, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb7:
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t32, i64 %t33)
  store i64 %t36, ptr %l26
  br label %bb9
bb9:
  %t37 = load i64, ptr %l26, !tbaa !24
  store i64 %t37, ptr %l8, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t45, ptr %l30
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t46)
  store ptr %t48, ptr %l32
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t51 = getelementptr %"compiler/check:frame", ptr %t49, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr %l30, !tbaa !24
  %t55 = icmp eq i64 %t53, %t52
  br i1 %t55, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb17
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l37, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l41
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l41, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Func", ptr %t66, i32 0, i32 10
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = load ptr, ptr %l37, !tbaa !29
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t70, i32 %t69)
  store { i64, ptr } %t72, ptr %l44
  br label %bb15
bb15:
  %t73 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t74 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t73)
  store i1 %t74, ptr %l45
  br label %bb16
bb16:
  %t75 = load i1, ptr %l45, !tbaa !21
  store i1 %t75, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t77 = load ptr, ptr %l5, !tbaa !29
  store ptr %t77, ptr %l46, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l47, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i64, ptr %l8, !tbaa !24
  %t86 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s3, ptr %t82, i64 %t83)
  store ptr %t86, ptr %l51
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t87 = load ptr, ptr %l51, !tbaa !29
  %t89 = getelementptr %"compiler/ast:Func", ptr %t87, i32 0, i32 10
  %t90 = load i32, ptr %t89, !tbaa !23
  %t91 = load ptr, ptr %l47, !tbaa !29
  %t93 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t91, i32 %t90)
  store { i64, ptr } %t93, ptr %l54
  br label %bb21
bb21:
  %t94 = load ptr, ptr %l46, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l54, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t94, { i64, ptr } %t95)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l7, !tbaa !24
  br label %bb4
bb25:
  call void @__olang_scope_close(ptr %s1)
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l57, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l58
  %t102 = load i32, ptr %l3, !tbaa !23
  store i32 %t102, ptr %l59, !tbaa !23
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l4, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t103, i32 %t104)
  store { i64, ptr } %t107, ptr %l62
  br label %bb26
bb26:
  %t108 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t110 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = extractvalue { i64, ptr } %t110, 0
  %t113 = add i64 %t109, %t112
  %t114 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t108, i64 %t109)
  %t115 = getelementptr i8, ptr %t114, i64 %t109
  call void @olang_textcopy(ptr %t115, ptr %t111, i64 %t112)
  %t116 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t114, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  store { i64, ptr } %t124, ptr %l64, !tbaa !27
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i32, ptr %l3, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t125, i32 %t126)
  store { i64, ptr } %t129, ptr %l67
  br label %bb27
bb27:
  %t130 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  %t132 = extractvalue { i64, ptr } %t130, 1
  %t133 = mul i64 %t131, 1
  %t134 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  store { i64, ptr } %t136, ptr %l68, !tbaa !27
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i32, ptr %l4, !tbaa !23
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t137, i32 %t138)
  store { i64, ptr } %t141, ptr %l71
  br label %bb28
bb28:
  %t142 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l72, !tbaa !27
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t151 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %s0, ptr %t149)
  store { i64, ptr } %t151, ptr %l74
  br label %bb29
bb29:
  %t152 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  %t154 = extractvalue { i64, ptr } %t152, 1
  %t155 = mul i64 %t153, 1
  %t156 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t155)
  call void @llvm.memcpy.p0.p0.i64(ptr %t156, ptr %t154, i64 %t155, i1 false)
  %t157 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t156, 1
  %t159 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t162 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoBuilder(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t159, { i64, ptr } %t160, { i64, ptr } %t158)
  store %"compiler/diagmsg:Msg" %t162, ptr %l76
  br label %bb30
bb30:
  %t163 = load ptr, ptr %l57, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l58
  %t165 = load i32, ptr %l59, !tbaa !23
  %t166 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t167 = load %"compiler/diagmsg:Msg", ptr %l76
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s0, ptr %s0, ptr %t163, %"compiler/source:Span" %t164, i32 %t165, { i64, ptr } %t166, %"compiler/diagmsg:Msg" %t167)
  store i64 %t168, ptr %l77
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i1
  %l22 = alloca { i64, ptr }
  %l27 = alloca %"compiler/check:ownerAt"
  %l37 = alloca i32
  %l38 = alloca %"compiler/check:ownerAt"
  %l41 = alloca i32
  %l45 = alloca %"compiler/check:ownerAt"
  %l50 = alloca i32
  %l51 = alloca %"compiler/check:ownerAt"
  %l54 = alloca i32
  %l60 = alloca i32
  %l61 = alloca %"compiler/check:ownerAt"
  %l64 = alloca i32
  %l68 = alloca %"compiler/check:ownerAt"
  %l69 = alloca ptr
  %l70 = alloca i1
  %l77 = alloca { i64, ptr }
  %l78 = alloca i1
  %l81 = alloca i32
  %l85 = alloca %"compiler/check:ownerAt"
  %l87 = alloca %"compiler/check:ownerAt"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"compiler/check:ownerAt"
  %t52 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 13
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb23
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v1, ptr %s1, ptr %t28)
  store { i64, ptr } %t30, ptr %l22
  br label %bb6
bb6:
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l5, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t36 = icmp eq i64 %t34, 0
  br i1 %t36, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t40 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s2, i32 %t38, i1 false)
  store %"compiler/check:ownerAt" %t40, ptr %l27
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t41 = load %"compiler/check:ownerAt", ptr %l27
  store %"compiler/check:ownerAt" %t41, ptr %rv
  br label %ret
bb10:
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = icmp eq i64 %t44, 1
  br i1 %t46, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l2
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t52
  %t53 = getelementptr { i64, [5 x i64] }, ptr %t52, i32 0, i32 0
  store i64 0, ptr %t53
  %t55 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t49, 0
  %t57 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t55, { i64, ptr } %t50, 1
  %t59 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t57, { i64, ptr } %t51, 2
  %t60 = getelementptr { i64, [5 x i64] }, ptr %t52, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t59, ptr %t60
  %t61 = load { i64, [5 x i64] }, ptr %t52
  %t63 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 48, i64 8)
  store { i64, [5 x i64] } %t61, ptr %t63
  %t66 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %s3, ptr %t48, ptr %t63)
  store i32 %t66, ptr %l37
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t67 = load i32, ptr %l37, !tbaa !23
  %t68 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s3, i32 %t67, i1 false)
  store %"compiler/check:ownerAt" %t68, ptr %l38
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t69 = load %"compiler/check:ownerAt", ptr %l38
  store %"compiler/check:ownerAt" %t69, ptr %rv
  br label %ret
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t74 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t70, ptr %t71)
  store i32 %t74, ptr %l41
  br label %bb16
bb16:
  %t75 = load i32, ptr %l41, !tbaa !23
  store i32 %t75, ptr %l6, !tbaa !23
  %t76 = load i32, ptr %l6, !tbaa !23
  %t78 = icmp slt i32 %t76, 0
  br i1 %t78, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t80 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t82 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s4, i32 %t80, i1 false)
  store %"compiler/check:ownerAt" %t82, ptr %l45
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t83 = load %"compiler/check:ownerAt", ptr %l45
  store %"compiler/check:ownerAt" %t83, ptr %rv
  br label %ret
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l2
  %t86 = load i32, ptr %l6, !tbaa !23
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t92 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %t84, %"compiler/source:Span" %t85, i32 %t86, { i64, ptr } %t87)
  store i32 %t92, ptr %l50
  br label %bb21
bb21:
  %t93 = load i32, ptr %l50, !tbaa !23
  %t94 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s1, i32 %t93, i1 false)
  store %"compiler/check:ownerAt" %t94, ptr %l51
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t95 = load %"compiler/check:ownerAt", ptr %l51
  store %"compiler/check:ownerAt" %t95, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_25badba18653f983_c74616522228d697)
  unreachable
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i32 %t100, ptr %l54
  br label %bb29
bb29:
  %t101 = load i32, ptr %l54, !tbaa !23
  store i32 %t101, ptr %l7, !tbaa !23
  %t102 = load i32, ptr %l7, !tbaa !23
  %t104 = icmp sge i32 %t102, 0
  br i1 %t104, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i32, ptr %l7, !tbaa !23
  %t113 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l60
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t114 = load i32, ptr %l60, !tbaa !23
  %t115 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s6, i32 %t114, i1 true)
  store %"compiler/check:ownerAt" %t115, ptr %l61
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t116 = load %"compiler/check:ownerAt", ptr %l61
  store %"compiler/check:ownerAt" %t116, ptr %rv
  br label %ret
bb34:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t121 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t117, ptr %t118)
  store i32 %t121, ptr %l64
  br label %bb35
bb35:
  %t122 = load i32, ptr %l64, !tbaa !23
  store i32 %t122, ptr %l8, !tbaa !23
  %t123 = load i32, ptr %l8, !tbaa !23
  %t125 = icmp sge i32 %t123, 0
  br i1 %t125, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t127 = load i32, ptr %l8, !tbaa !23
  %t129 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s7, i32 %t127, i1 false)
  store %"compiler/check:ownerAt" %t129, ptr %l68
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t130 = load %"compiler/check:ownerAt", ptr %l68
  store %"compiler/check:ownerAt" %t130, ptr %rv
  br label %ret
bb39:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t132 = load ptr, ptr %l69, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb40, label %bb41
bb40:
  %t135 = load ptr, ptr %l69, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 30}
  %t138 = icmp eq i64 %t136, 14
  store i1 %t138, ptr %l70, !tbaa !21
  br label %bb41
bb41:
  %t139 = load i1, ptr %l70, !tbaa !21
  br i1 %t139, label %bb42, label %bb43
bb42:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t142, i32 0, i32 2
  %t144 = load i32, ptr %t143
  store i32 %t144, ptr %l9, !tbaa !23
  br label %bb44
bb43:
  br label %bb54
bb44:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l9, !tbaa !23
  %t150 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t146, i32 %t147)
  store { i64, ptr } %t150, ptr %l77
  br label %bb45
bb45:
  %t151 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t152 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t151)
  store i1 %t152, ptr %l78
  br label %bb46
bb46:
  %t153 = load i1, ptr %l78, !tbaa !21
  br i1 %t153, label %bb47, label %bb48
bb47:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t158 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t154, ptr %t155)
  store i32 %t158, ptr %l81
  br label %bb49
bb48:
  br label %bb54
bb49:
  %t159 = load i32, ptr %l81, !tbaa !23
  store i32 %t159, ptr %l10, !tbaa !23
  %t160 = load i32, ptr %l10, !tbaa !23
  %t162 = icmp sge i32 %t160, 0
  br i1 %t162, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t164 = load i32, ptr %l10, !tbaa !23
  %t166 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s9, i32 %t164, i1 false)
  store %"compiler/check:ownerAt" %t166, ptr %l85
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t167 = load %"compiler/check:ownerAt", ptr %l85
  store %"compiler/check:ownerAt" %t167, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_6168eeb228a64802_deceb7d8f3c3ddf6)
  unreachable
bb59:
  %t168 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t170 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s0, i32 %t168, i1 false)
  store %"compiler/check:ownerAt" %t170, ptr %l87
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t171 = load %"compiler/check:ownerAt", ptr %l87
  store %"compiler/check:ownerAt" %t171, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:ownerAt", ptr %rv
  ret %"compiler/check:ownerAt" %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedWhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l47 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t6, i32 %t7)
  store i64 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t14, ptr %l11, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l12, !tbaa !24
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l13, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l12, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  %t28 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t28, ptr %l11, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l18
  br label %bb5
bb5:
  %t40 = load i32, ptr %l18, !tbaa !23
  store i32 %t40, ptr %l2, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l23
  br label %bb6
bb6:
  %t51 = load i32, ptr %l23, !range !{i32 0, i32 33}
  store i32 %t51, ptr %l3
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t54 = trunc i64 20 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t57, ptr %l24, !tbaa !27
  br label %bb42
bb10:
  %t59 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t61 = trunc i64 21 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t64, ptr %l24, !tbaa !27
  br label %bb42
bb14:
  %t66 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t68 = trunc i64 29 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t71, ptr %l24, !tbaa !27
  br label %bb42
bb18:
  %t73 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t75 = trunc i64 32 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t78, ptr %l24, !tbaa !27
  br label %bb42
bb22:
  %t80 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t82 = trunc i64 19 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb32
bb25:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l2, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l47
  br label %bb26
bb26:
  %t95 = load i32, ptr %l47, !tbaa !23
  %t96 = icmp eq i32 %t95, 0
  br i1 %t96, label %bb27, label %bb28
bb27:
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t98, ptr %l49, !tbaa !27
  br label %bb31
bb28:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l52, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l2, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l57
  br label %bb29
bb29:
  %t111 = load ptr, ptr %l52, !tbaa !29
  %t112 = load i32, ptr %l57, !tbaa !23
  %t113 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedWhat(ptr %v0, ptr %v1, ptr %t111, i32 %t112)
  store { i64, ptr } %t113, ptr %l58
  br label %bb30
bb30:
  %t114 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t114, ptr %l49, !tbaa !27
  br label %bb31
bb31:
  %t115 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t115, ptr %l24, !tbaa !27
  br label %bb42
bb32:
  %t116 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t118 = trunc i64 18 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l2, !tbaa !23
  %t125 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedPackedWhat(ptr %v0, ptr %v1, ptr %t121, i32 %t122)
  store { i64, ptr } %t125, ptr %l63
  br label %bb36
bb36:
  %t126 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t126, ptr %l24, !tbaa !27
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t127, ptr %l24, !tbaa !27
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_b024c5157650ed4d_a91dda553fa89049)
  unreachable
bb42:
  %t129 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l66, !tbaa !24
  %t131 = load i64, ptr %l66, !tbaa !24
  %t132 = mul i64 %t131, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l67, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l66, !tbaa !24
  %t141 = mul i64 %t140, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %t139, i64 %t141, i1 false)
  %t142 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t142, ptr %l24, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l60 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i1
  %l73 = alloca i1
  %l74 = alloca i1
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l93 = alloca { i64, ptr }
  %l99 = alloca i1
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
  store ptr %t6, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t7 = load ptr, ptr %l15, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l15, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l16, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb24
bb7:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t22 = load ptr, ptr %l21, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l21, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 30}
  %t28 = icmp eq i64 %t26, 26
  store i1 %t28, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l22, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l2, !tbaa !29
  br label %bb24
bb11:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t37 = load ptr, ptr %l27, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 30}
  %t43 = icmp eq i64 %t41, 28
  store i1 %t43, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l28, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l2, !tbaa !29
  br label %bb24
bb15:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t52 = load ptr, ptr %l33, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t55 = load ptr, ptr %l33, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 30}
  %t58 = icmp eq i64 %t56, 3
  store i1 %t58, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l34, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l2, !tbaa !29
  br label %bb24
bb19:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %l39, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 30}
  %t73 = icmp eq i64 %t71, 14
  store i1 %t73, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t74 = load i1, ptr %l40, !tbaa !21
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t77, i32 0, i32 1
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l2, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t86 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  store i1 %t86, ptr %l48
  br label %bb25
bb25:
  %t87 = load i1, ptr %l48, !tbaa !21
  store i1 %t87, ptr %rv
  br label %ret
bb26:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t89 = load ptr, ptr %l49, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb27, label %bb28
bb27:
  %t92 = load ptr, ptr %l49, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 30}
  %t95 = icmp eq i64 %t93, 12
  store i1 %t95, ptr %l50, !tbaa !21
  br label %bb28
bb28:
  %t96 = load i1, ptr %l50, !tbaa !21
  br i1 %t96, label %bb29, label %bb30
bb29:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t99, i32 0, i32 1
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l3, !tbaa !29
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t105, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %t106
  store { i64, ptr } %t107, ptr %l4, !tbaa !27
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t115 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamLen(ptr %v0, ptr %v1, ptr %v1, ptr %t109, ptr %t110, { i64, ptr } %t111)
  store i64 %t115, ptr %l60
  br label %bb32
bb32:
  %t116 = load i64, ptr %l60, !tbaa !24
  %t117 = icmp sge i64 %t116, 0
  store i1 %t117, ptr %rv
  br label %ret
bb33:
  %t119 = load ptr, ptr %l1, !tbaa !29
  store ptr %t119, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t120 = load ptr, ptr %l62, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb34, label %bb35
bb34:
  %t123 = load ptr, ptr %l62, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 30}
  %t126 = icmp eq i64 %t124, 5
  store i1 %t126, ptr %l63, !tbaa !21
  br label %bb35
bb35:
  %t127 = load i1, ptr %l63, !tbaa !21
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t130, i32 0, i32 2
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l5, !tbaa !29
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t136, i32 0, i32 3
  %t138 = load ptr, ptr %t137
  store ptr %t138, ptr %l6, !tbaa !29
  br label %bb38
bb37:
  br label %bb44
bb38:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l5, !tbaa !29
  %t145 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t140, ptr %t141)
  store i1 %t145, ptr %l73
  br label %bb39
bb39:
  %t146 = load i1, ptr %l73, !tbaa !21
  br i1 %t146, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb43
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l6, !tbaa !29
  %t152 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t147, ptr %t148)
  store i1 %t152, ptr %l78
  br label %bb42
bb42:
  %t153 = load i1, ptr %l78, !tbaa !21
  store i1 %t153, ptr %l74, !tbaa !21
  br label %bb43
bb43:
  %t154 = load i1, ptr %l74, !tbaa !21
  store i1 %t154, ptr %rv
  br label %ret
bb44:
  %t155 = load ptr, ptr %l1, !tbaa !29
  store ptr %t155, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t156 = load ptr, ptr %l79, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t159 = load ptr, ptr %l79, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 30}
  %t162 = icmp eq i64 %t160, 7
  store i1 %t162, ptr %l80, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l80, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", ptr }, ptr %t166, i32 0, i32 1
  %t168 = load ptr, ptr %t167
  store ptr %t168, ptr %l7, !tbaa !29
  br label %bb49
bb48:
  br label %bb60
bb49:
  %t170 = load ptr, ptr %l7, !tbaa !29
  %t172 = getelementptr %"compiler/ast:Chain", ptr %t170, i32 0, i32 1
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  store { i64, ptr } %t173, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  store i64 %t177, ptr %l10, !tbaa !24
  br label %bb50
bb50:
  %t179 = load i64, ptr %l9, !tbaa !24
  %t180 = load i64, ptr %l10, !tbaa !24
  %t183 = icmp slt i64 %t179, %t180
  %t185 = xor i1 %t183, true
  br i1 %t185, label %bb51, label %bb52
bb51:
  br label %bb59
bb52:
  br label %bb53
bb53:
  %t187 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t187, ptr %l93, !tbaa !27
  %t188 = load i64, ptr %l9, !tbaa !24
  %t190 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr ptr, ptr %t191, i64 %t188
  %t193 = load ptr, ptr %t192, !tbaa !39
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t200 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t195, ptr %t193)
  store i1 %t200, ptr %l99
  br label %bb54
bb54:
  %t201 = load i1, ptr %l99, !tbaa !21
  br i1 %t201, label %bb55, label %bb56
bb55:
  store i1 true, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t203 = load i64, ptr %l9, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l9, !tbaa !24
  br label %bb50
bb59:
  store i1 false, ptr %rv
  br label %ret
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store i1 false, ptr %rv
  br label %ret
bb64:
  call void @__olang_check_failed(ptr @olang_loc_983ca47650ebcf0f_470cb00b1bd66703)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettleResults(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/pair:Pair.1eb2466213689e002f25e81e83536e78"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca %"std/pair:Pair.1eb2466213689e002f25e81e83536e78"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l30 = alloca i64
  %l35 = alloca i64
  %l37 = alloca ptr
  %l40 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 89
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H48754b4fa56ee3a8c3b855086bca91dc(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l13
  br label %bb2
bb2:
  %t9 = load i64, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H015c7298d54f1d140374736283ef15ae(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t19, ptr %l18
  br label %bb6
bb6:
  %t20 = load %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l18
  store %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t20, ptr %l4
  %t21 = getelementptr %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l4, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = icmp ne i64 %t22, %t23
  br i1 %t26, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb8:
  br label %bb9
bb9:
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l22
  br label %bb10
bb10:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l5
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t32 = getelementptr %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l4, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeep(ptr %v0, ptr %v0, ptr %s2, ptr %t30, i64 %t31, ptr %t33, ptr %l5)
  br label %bb11
bb11:
  store ptr %l5, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s5
  %t39 = load i64, ptr %l7, !tbaa !24
  store i64 %t39, ptr %l28, !tbaa !24
  %t40 = load ptr, ptr %l6, !tbaa !29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t40)
  store i64 %t42, ptr %l30
  br label %bb13
bb13:
  %t43 = load i64, ptr %l28, !tbaa !24
  %t44 = load i64, ptr %l30, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s5)
  br label %bb21
bb15:
  br label %bb16
bb16:
  %t49 = load ptr, ptr %l6, !tbaa !29
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t49, i64 %t50)
  store i64 %t53, ptr %l35
  br label %bb17
bb17:
  %t54 = load i64, ptr %l35, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 88
  store ptr %t57, ptr %l37, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t62 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s5, i64 %t58, i64 %t54)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t62, ptr %l40
  br label %bb18
bb18:
  %t63 = load ptr, ptr %l37, !tbaa !29
  %t64 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l40
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t63, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t64, i1 true)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb20
bb20:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l7, !tbaa !24
  br label %bb12
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t69 = load i64, ptr %l3, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l3, !tbaa !24
  br label %bb1
bb23:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqSlice(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i64
  %l15 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca %"compiler/source:Span"
  %l26 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i1
  %l48 = alloca i64
  %l53 = alloca i1
  %l54 = alloca i32
  %l61 = alloca i32
  %l62 = alloca %"compiler/source:Span"
  %l68 = alloca i32
  %l73 = alloca %"compiler/typed:Slice"
  %rv = alloca ptr
  %t133 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
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
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 36
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l15
  br label %bb3
bb2:
  br label %bb17
bb3:
  %t13 = load i64, ptr %l15, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 36
  %t17 = load ptr, ptr %l4, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t16, ptr %t17)
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 36
  %t23 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t22, ptr %t23)
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l22, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t27, ptr %l23
  %t28 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t28, ptr %l24
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/check:seqOf", ptr %t29, i32 0, i32 3
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l26, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l1
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v0, ptr %t33, %"compiler/source:Span" %t34, ptr %t35)
  store ptr %t39, ptr %l30
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l30, !tbaa !29
  store ptr %t40, ptr %l31, !tbaa !29
  %t41 = icmp sge i64 0, 0
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = icmp sle i64 0, 1152921504606846975
  br i1 %t43, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_b8e2733ff2674fd_52419f97eade6699)
  unreachable
bb9:
  %t45 = mul i64 0, 8
  %t46 = insertvalue { i64, ptr } undef, i64 0, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t47, ptr %l34, !tbaa !27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 36
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  store { i64, ptr } %t54, ptr %l38
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_b8e2733ff2674fd_52419f97eade6699)
  unreachable
bb11:
  %t55 = icmp sge i64 0, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = icmp sle i64 0, 2305843009213693951
  br i1 %t57, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_4fb1ec40319fc7d0_191a57ffdbf9a78c)
  unreachable
bb14:
  %t59 = mul i64 0, 4
  %t60 = insertvalue { i64, ptr } undef, i64 0, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t62 = load ptr, ptr %l22, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l23
  %t64 = load %"compiler/source:Span", ptr %l24
  %t65 = load i64, ptr %l26, !tbaa !24
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v5, ptr %v5, ptr %t62, %"compiler/source:Span" %t63, %"compiler/source:Span" %t64, i64 %t65, ptr %t66, { i64, ptr } %t67, { i64, ptr } %t68, { i64, ptr } %t61)
  store ptr %t70, ptr %l42
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4fb1ec40319fc7d0_191a57ffdbf9a78c)
  unreachable
bb16:
  %t71 = load ptr, ptr %l42, !tbaa !29
  store ptr %t71, ptr %rv
  br label %ret
bb17:
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t72)
  store i32 %t74, ptr %l44
  br label %bb18
bb18:
  %t75 = load i32, ptr %l44, !tbaa !23
  store i32 %t75, ptr %l7, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %t76, ptr %t77)
  store i1 %t80, ptr %l47
  br label %bb19
bb19:
  %t81 = load i1, ptr %l47, !tbaa !21
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t82 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t82, ptr %l48, !tbaa !24
  br label %bb22
bb21:
  %t84 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t84, ptr %l48, !tbaa !24
  br label %bb22
bb22:
  %t86 = load i64, ptr %l48, !tbaa !24
  store i64 %t86, ptr %l8, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l7, !tbaa !23
  %t91 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t87, i32 %t88)
  store i1 %t91, ptr %l53
  br label %bb23
bb23:
  %t92 = load i1, ptr %l53, !tbaa !21
  br i1 %t92, label %bb24, label %bb25
bb24:
  %t93 = load i32, ptr %l7, !tbaa !23
  store i32 %t93, ptr %l54, !tbaa !23
  br label %bb27
bb25:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load ptr, ptr %l3, !tbaa !29
  %t103 = getelementptr %"compiler/check:seqOf", ptr %t101, i32 0, i32 0
  %t104 = load i32, ptr %t103, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t100, i32 %t104, i32 0)
  store i32 %t107, ptr %l61
  br label %bb26
bb26:
  %t108 = load i32, ptr %l61, !tbaa !23
  store i32 %t108, ptr %l54, !tbaa !23
  br label %bb27
bb27:
  %t109 = load i32, ptr %l54, !tbaa !23
  %t110 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t110, ptr %l62
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t118 = load i64, ptr %l8, !tbaa !24
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t116, i32 %t109, i64 %t118)
  store i32 %t122, ptr %l68
  br label %bb28
bb28:
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t124 = load ptr, ptr %l4, !tbaa !29
  %t125 = load ptr, ptr %l5, !tbaa !29
  %t130 = call %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v1, ptr %v3, ptr %v4, ptr %v5, ptr %t123, ptr %t124, ptr %t125, i32 0)
  store %"compiler/typed:Slice" %t130, ptr %l73
  br label %bb29
bb29:
  %t131 = load %"compiler/typed:Slice", ptr %l73
  %t132 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store %"compiler/typed:Slice" %t131, ptr %t132
  store { i64, [5 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [5 x i64] }, ptr %t133, i32 0, i32 0
  store i64 10, ptr %t134
  %t135 = load %"compiler/source:Span", ptr %l62
  %t136 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t135, 0
  %t137 = load i32, ptr %l68, !tbaa !23
  %t138 = insertvalue { %"compiler/source:Span", i32, ptr } %t136, i32 %t137, 1
  %t140 = insertvalue { %"compiler/source:Span", i32, ptr } %t138, ptr %t132, 2
  %t141 = getelementptr { i64, [5 x i64] }, ptr %t133, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t140, ptr %t141
  %t142 = load { i64, [5 x i64] }, ptr %t133
  %t144 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t142, ptr %t144
  store ptr %t144, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPatOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l11 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i1
  %l33 = alloca { i64, ptr }
  %l44 = alloca i32
  %l48 = alloca i1
  %l51 = alloca ptr
  %l56 = alloca i32
  %l61 = alloca i32
  %l62 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t68 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i1, ptr %l11, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l3, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l18
  br label %bb4
bb4:
  %t20 = load i32, ptr %l18, !tbaa !23
  %t22 = icmp ne i32 %t20, %a2
  store i1 %t22, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t27 = load ptr, ptr %l22, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 30}
  %t33 = icmp eq i64 %t31, 13
  store i1 %t33, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l23, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t37, i32 0, i32 0
  %t39 = load %"compiler/source:Span", ptr %t38
  store %"compiler/source:Span" %t39, ptr %l4
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t43, i32 0, i32 1
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l5, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t49, i32 0, i32 2
  %t51 = load { i64, ptr }, ptr %t50
  store { i64, ptr } %t51, ptr %l6, !tbaa !27
  br label %bb13
bb12:
  br label %bb25
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = call { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v1, ptr %s2, ptr %t53)
  store { i64, ptr } %t55, ptr %l33
  br label %bb14
bb14:
  %t56 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t56, ptr %l7, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t61 = icmp eq i64 %t59, 0
  br i1 %t61, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l4
  %t66 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 0
  store i64 0, ptr %t69
  %t71 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t65, 0
  %t73 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t71, { i64, ptr } %t66, 1
  %t75 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t73, { i64, ptr } %t67, 2
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t75, ptr %t76
  %t77 = load { i64, [5 x i64] }, ptr %t68
  %t79 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 48, i64 8)
  store { i64, [5 x i64] } %t77, ptr %t79
  %t82 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %s2, ptr %t64, ptr %t79)
  store i32 %t82, ptr %l44
  br label %bb18
bb18:
  %t83 = load i32, ptr %l44, !tbaa !23
  store i32 %t83, ptr %l8, !tbaa !23
  %t84 = load i32, ptr %l8, !tbaa !23
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t88 = icmp eq i32 %t84, %t85
  br i1 %t88, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb24
bb20:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  store ptr %t95, ptr %l51, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l8, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l56
  br label %bb21
bb21:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l3, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l61
  br label %bb22
bb22:
  %t116 = load ptr, ptr %l51, !tbaa !29
  %t117 = load i32, ptr %l56, !tbaa !23
  %t118 = load i32, ptr %l61, !tbaa !23
  %t119 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t116, i32 %t117, i32 %t118)
  store i1 %t119, ptr %l62
  br label %bb23
bb23:
  %t120 = load i1, ptr %l62, !tbaa !21
  store i1 %t120, ptr %l48, !tbaa !21
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  %t121 = load i1, ptr %l48, !tbaa !21
  store i1 %t121, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 true, ptr %rv
  br label %ret
bb29:
  call void @__olang_check_failed(ptr @olang_loc_43a48225da0bb134_ea32de8827419df8)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etakenSet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i1 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/typed:Item"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, ptr }
  %l29 = alloca i1
  %l36 = alloca i32
  %l47 = alloca i32
  %l49 = alloca i64
  %l51 = alloca i64
  %l56 = alloca %"compiler/typed:Item"
  %l66 = alloca i1
  %l71 = alloca i64
  %l72 = alloca i64
  %l76 = alloca ptr
  %l81 = alloca i64
  %l83 = alloca i32
  %l88 = alloca ptr
  %l89 = alloca ptr
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l5
  store { i64, ptr } %a1, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb46
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t17, ptr %l23, !tbaa !27
  %t18 = load i64, ptr %l7, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i32, ptr %t21, i64 %t18
  %t23 = load i32, ptr %t22, !tbaa !33
  store i32 %t23, ptr %l9, !tbaa !23
  %t25 = load i32, ptr %l9, !tbaa !23
  %t26 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t29 = icmp eq i32 %t25, %t26
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb8
bb7:
  %t31 = load i32, ptr %l9, !tbaa !23
  %t32 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t35 = icmp eq i32 %t31, %t32
  store i1 %t35, ptr %l29, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l29, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  br label %bb45
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l9, !tbaa !23
  %t44 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v3, ptr %t38, i32 %t39, ptr %a4)
  store i32 %t44, ptr %l36
  br label %bb12
bb12:
  %t45 = load i32, ptr %l36, !tbaa !23
  store i32 %t45, ptr %l10, !tbaa !23
  %t46 = load i32, ptr %l10, !tbaa !23
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t50 = icmp eq i32 %t46, %t47
  br i1 %t50, label %bb13, label %bb14
bb13:
  br label %bb45
bb14:
  br label %bb15
bb15:
  br i1 %a3, label %bb16, label %bb17
bb16:
  %t54 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t54)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb45
bb19:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l10, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l47
  br label %bb20
bb20:
  %t67 = load i32, ptr %l47, !tbaa !23
  store i32 %t67, ptr %l11, !tbaa !23
  store ptr %a2, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb21
bb21:
  %t70 = load i64, ptr %l13, !tbaa !24
  store i64 %t70, ptr %l49, !tbaa !24
  %t71 = load ptr, ptr %l12, !tbaa !29
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eLen_3ccompiler_2ftyped_3aItem_3e(ptr %v2, ptr %t71)
  store i64 %t73, ptr %l51
  br label %bb22
bb22:
  %t74 = load i64, ptr %l49, !tbaa !24
  %t75 = load i64, ptr %l51, !tbaa !24
  %t76 = icmp slt i64 %t74, %t75
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb23, label %bb24
bb23:
  br label %bb44
bb24:
  br label %bb25
bb25:
  %t80 = load ptr, ptr %l12, !tbaa !29
  %t81 = load i64, ptr %l13, !tbaa !24
  %t84 = call %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v2, ptr %t80, i64 %t81)
  store %"compiler/typed:Item" %t84, ptr %l56
  br label %bb26
bb26:
  %t85 = load %"compiler/typed:Item", ptr %l56
  store %"compiler/typed:Item" %t85, ptr %l14
  %t86 = getelementptr %"compiler/typed:Item", ptr %l14, i32 0, i32 0
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = load i32, ptr %l11, !tbaa !23
  %t91 = icmp ne i32 %t87, %t88
  br i1 %t91, label %bb27, label %bb28
bb27:
  br label %bb43
bb28:
  br label %bb29
bb29:
  %t93 = getelementptr %"compiler/typed:Item", ptr %l14, i32 0, i32 1
  %t94 = load i64, ptr %t93, !tbaa !24
  %t96 = icmp slt i64 %t94, 0
  br i1 %t96, label %bb30, label %bb31
bb30:
  %t98 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t98)
  br label %bb32
bb31:
  %t101 = getelementptr %"compiler/typed:Item", ptr %l14, i32 0, i32 1
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = icmp slt i64 %t102, 64
  br i1 %t104, label %bb33, label %bb34
bb32:
  br label %bb42
bb33:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l10, !tbaa !23
  %t115 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t111, i32 %t112)
  store i64 %t115, ptr %l71
  br label %bb35
bb34:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb36
bb35:
  %t116 = getelementptr %"compiler/typed:Item", ptr %l14, i32 0, i32 1
  %t117 = load i64, ptr %t116, !tbaa !24
  store i64 %t117, ptr %l72, !tbaa !24
  %t118 = load i64, ptr %l72, !tbaa !24
  %t119 = load i64, ptr %l72, !tbaa !24
  %t120 = shl i64 1, %t119
  %t121 = load i64, ptr %l71, !tbaa !65
  %t123 = and i64 %t121, %t120
  %t125 = icmp ne i64 %t123, 0
  store i1 %t125, ptr %l66, !tbaa !21
  br label %bb36
bb36:
  %t127 = load i1, ptr %l66, !tbaa !21
  br i1 %t127, label %bb37, label %bb38
bb37:
  store ptr %l5, ptr %l76, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l11, !tbaa !23
  %t135 = getelementptr %"compiler/typed:Item", ptr %l14, i32 0, i32 1
  %t136 = load i64, ptr %t135, !tbaa !24
  store i64 %t136, ptr %l81, !tbaa !24
  %t137 = load i64, ptr %l81, !tbaa !24
  %t138 = load i64, ptr %l81, !tbaa !24
  %t139 = shl i64 1, %t138
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t133, i32 %t134, i64 %t139)
  store i32 %t143, ptr %l83
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t144 = load ptr, ptr %l76, !tbaa !29
  %t145 = load i32, ptr %l83, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t144, i32 %t145)
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t146 = load i64, ptr %l13, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l13, !tbaa !24
  br label %bb21
bb44:
  br label %bb45
bb45:
  %t150 = load i64, ptr %l7, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l7, !tbaa !24
  br label %bb2
bb46:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l88, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l89, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t159 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %s0, ptr %t156, ptr %l5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l92
  br label %bb47
bb47:
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  %t161 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %t161
  %t162 = load ptr, ptr %l89, !tbaa !29
  %t164 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %s0, ptr %s0, ptr %t162, ptr %t161)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l94
  br label %bb48
bb48:
  %t165 = load ptr, ptr %l88, !tbaa !29
  %t167 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %s0, ptr %t165, ptr %l94)
  store i32 %t167, ptr %l96
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t168 = load i32, ptr %l96, !tbaa !23
  store i32 %t168, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeContexts(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca %"compiler/generic:Origin"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l16 = alloca %"compiler/generic:Origin"
  %l19 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l28 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca %"std/prelude/text:StringBuilder"
  %l54 = alloca i64
  %l57 = alloca i64
  %l80 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l87 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l111 = alloca { i64, [3 x i64] }
  %l113 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  %t207 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeOrigin(ptr %v0, ptr %t4, i32 %t5)
  store %"compiler/generic:Origin" %t8, ptr %l16
  br label %bb1
bb1:
  %t9 = load %"compiler/generic:Origin", ptr %l16
  store %"compiler/generic:Origin" %t9, ptr %l3
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l19, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l24
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t27 = load i32, ptr %l24, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l25
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t29, ptr %l4, !tbaa !27
  %t30 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 0
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = icmp slt i64 %t31, 0
  br i1 %t33, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb6
bb5:
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l28, !tbaa !21
  br label %bb6
bb6:
  %t41 = load i1, ptr %l28, !tbaa !21
  br i1 %t41, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb9
bb8:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  store i1 %t44, ptr %l32, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l32, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb12
bb11:
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/ast:TypeDecl", ptr %t47, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t54 = icmp eq i64 %t52, 0
  store i1 %t54, ptr %l35, !tbaa !21
  br label %bb12
bb12:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t58 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 2
  %t59 = load i64, ptr %t58, !tbaa !24
  %t61 = icmp sge i64 %t59, 0
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 2
  %t65 = load i64, ptr %t64, !tbaa !24
  %t68 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstContexts(ptr %v0, ptr %t63, i64 %t65)
  store i64 %t68, ptr %l46
  br label %bb18
bb17:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb19
bb18:
  %t69 = load i64, ptr %l46, !tbaa !24
  store i64 %t69, ptr %l43, !tbaa !24
  br label %bb19
bb19:
  %t70 = load i64, ptr %l43, !tbaa !24
  store i64 %t70, ptr %l5, !tbaa !24
  %t71 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t71, ptr %l47
  br label %bb20
bb20:
  %t72 = load %"std/prelude/text:StringBuilder", ptr %l47
  store %"std/prelude/text:StringBuilder" %t72, ptr %l6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb21
bb21:
  store i64 0, ptr %l7, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  store i64 %t76, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  br i1 %t82, label %bb22, label %bb23
bb22:
  %t84 = load i64, ptr %l9, !tbaa !24
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb27
bb24:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = add i64 %t92, %t93
  %t98 = sub i64 %t96, 1
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = sdiv i64 %t98, %t99
  store i64 %t102, ptr %l57, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb26
bb26:
  %t104 = load i64, ptr %l57, !tbaa !24
  store i64 %t104, ptr %l54, !tbaa !24
  br label %bb27
bb27:
  %t105 = load i64, ptr %l54, !tbaa !24
  store i64 %t105, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s3
  %t106 = load i64, ptr %l11, !tbaa !24
  %t107 = load i64, ptr %l10, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb45
bb30:
  br label %bb31
bb31:
  %t114 = load i64, ptr %l7, !tbaa !24
  %t115 = load i64, ptr %l11, !tbaa !24
  %t116 = load i64, ptr %l9, !tbaa !24
  %t119 = mul i64 %t115, %t116
  %t122 = add i64 %t114, %t119
  store i64 %t122, ptr %l12, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t125 = load ptr, ptr %l2, !tbaa !29
  %t127 = getelementptr %"compiler/ast:TypeDecl", ptr %t125, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t133 = icmp sge i64 %t124, %t130
  br i1 %t133, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s3)
  br label %bb45
bb33:
  br label %bb34
bb34:
  store ptr %l6, ptr %l80, !tbaa !29
  %t135 = load i64, ptr %l12, !tbaa !24
  %t137 = icmp eq i64 %t135, 0
  br i1 %t137, label %bb35, label %bb36
bb35:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l83, !tbaa !27
  br label %bb37
bb36:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l83, !tbaa !27
  br label %bb37
bb37:
  %t139 = load ptr, ptr %l80, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l83, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t139, { i64, ptr } %t140)
  br label %bb38
bb38:
  store ptr %l6, ptr %l84, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr %"compiler/ast:TypeDecl", ptr %t142, i32 0, i32 1
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  store { i64, ptr } %t145, ptr %l87, !tbaa !27
  %t146 = load i64, ptr %l12, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr ptr, ptr %t149, i64 %t146
  %t151 = load ptr, ptr %t150, !tbaa !39
  %t153 = getelementptr %"compiler/ast:TypeParam", ptr %t151, i32 0, i32 1
  %t154 = load i32, ptr %t153, !tbaa !23
  %t157 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t141, i32 %t154)
  store { i64, ptr } %t157, ptr %l91
  br label %bb39
bb39:
  %t158 = load ptr, ptr %l84, !tbaa !29
  %t159 = load { i64, ptr }, ptr %l91, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t158, { i64, ptr } %t159)
  br label %bb40
bb40:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb41
bb41:
  store ptr %l6, ptr %l93, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t162, ptr %l95, !tbaa !27
  %t163 = load i64, ptr %l12, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i32, ptr %t166, i64 %t163
  %t168 = load i32, ptr %t167, !tbaa !33
  %t171 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t161, i32 %t168)
  store { i64, ptr } %t171, ptr %l98
  br label %bb42
bb42:
  %t172 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 0
  %t174 = extractvalue { i64, ptr } %t172, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t179 = load ptr, ptr %l93, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t179, { i64, ptr } %t178)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb44:
  %t181 = load i64, ptr %l11, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l11, !tbaa !24
  br label %bb28
bb45:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/check:Checker", ptr %t185, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/generic:Program", ptr %t188, i32 0, i32 0
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/load:Loader", ptr %t191, i32 0, i32 4
  %t194 = load ptr, ptr %t193, !tbaa !29
  store ptr %t194, ptr %l105, !tbaa !29
  %t195 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 0
  %t196 = load i64, ptr %t195, !tbaa !24
  %t197 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 1
  %t198 = getelementptr %"compiler/source:Span", ptr %t197, i32 0, i32 0
  %t199 = load i32, ptr %t198, !tbaa !23
  %t201 = sext i32 %t199 to i64
  %t202 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 1
  %t203 = getelementptr %"compiler/source:Span", ptr %t202, i32 0, i32 1
  %t204 = load i32, ptr %t203, !tbaa !23
  %t206 = sext i32 %t204 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t207
  %t208 = getelementptr { i64, [3 x i64] }, ptr %t207, i32 0, i32 0
  store i64 3, ptr %t208
  %t210 = insertvalue { i64, i64, i64 } undef, i64 %t196, 0
  %t212 = insertvalue { i64, i64, i64 } %t210, i64 %t201, 1
  %t214 = insertvalue { i64, i64, i64 } %t212, i64 %t206, 2
  %t215 = getelementptr { i64, [3 x i64] }, ptr %t207, i32 0, i32 1
  store { i64, i64, i64 } %t214, ptr %t215
  %t216 = load { i64, [3 x i64] }, ptr %t207
  store { i64, [3 x i64] } %t216, ptr %l111
  %t218 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t218, ptr %l113
  br label %bb46
bb46:
  %t219 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  %t221 = extractvalue { i64, ptr } %t219, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  %t226 = load ptr, ptr %l105, !tbaa !29
  %t227 = load { i64, [3 x i64] }, ptr %l111
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %s0, ptr %t226, { i64, [3 x i64] } %t227, { i64, ptr } %t225)
  br label %bb47
bb47:
  %t229 = load i64, ptr %l5, !tbaa !24
  %t231 = add i64 %t229, 1
  call void @__olang_scope_close(ptr %s0)
  store i64 %t231, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeInstNote(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca i32
  %l18 = alloca i64
  %l21 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l33 = alloca i64
  %l36 = alloca i64
  %l54 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l64 = alloca %"compiler/generic:varRow"
  %l66 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb2
bb2:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l17
  br label %bb3
bb3:
  %t14 = load i32, ptr %l17, !tbaa !23
  %t15 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t14)
  store i64 %t15, ptr %l18
  br label %bb4
bb4:
  %t16 = load i64, ptr %l18, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  store ptr %t22, ptr %l21, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l26
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = load i32, ptr %l26, !tbaa !23
  %t35 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t33, i32 %t34)
  store { i64, ptr } %t35, ptr %l27
  br label %bb6
bb6:
  %t36 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t36, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb7, label %bb8
bb7:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb12
bb9:
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l36, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb11
bb11:
  %t67 = load i64, ptr %l36, !tbaa !24
  store i64 %t67, ptr %l33, !tbaa !24
  br label %bb12
bb12:
  %t68 = load i64, ptr %l33, !tbaa !24
  store i64 %t68, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t77 = load i64, ptr %l5, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l10, !tbaa !24
  store ptr %l2, ptr %l54, !tbaa !29
  %t87 = load i64, ptr %l10, !tbaa !24
  %t89 = icmp eq i64 %t87, 0
  br i1 %t89, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb19
bb18:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb19
bb19:
  %t91 = load ptr, ptr %l54, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t91, { i64, ptr } %t92)
  br label %bb20
bb20:
  store ptr %l2, ptr %l58, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l59, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load i64, ptr %l3, !tbaa !24
  %t99 = load i64, ptr %l10, !tbaa !24
  %t103 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t97, i64 %t98, i64 %t99)
  store %"compiler/generic:varRow" %t103, ptr %l64
  br label %bb21
bb21:
  %t104 = getelementptr %"compiler/generic:varRow", ptr %l64, i32 0, i32 1
  %t105 = load i32, ptr %t104, !tbaa !23
  %t106 = load ptr, ptr %l59, !tbaa !29
  %t108 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t106, i32 %t105)
  store { i64, ptr } %t108, ptr %l66
  br label %bb22
bb22:
  %t109 = load ptr, ptr %l58, !tbaa !29
  %t110 = load { i64, ptr }, ptr %l66, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t109, { i64, ptr } %t110)
  br label %bb23
bb23:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb24
bb24:
  store ptr %l2, ptr %l68, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t113, ptr %l70, !tbaa !27
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i32, ptr %t117, i64 %t114
  %t119 = load i32, ptr %t118, !tbaa !33
  %t122 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t112, i32 %t119)
  store { i64, ptr } %t122, ptr %l73
  br label %bb25
bb25:
  %t123 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  %t125 = extractvalue { i64, ptr } %t123, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load ptr, ptr %l68, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t130, { i64, ptr } %t129)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb27:
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l9, !tbaa !24
  br label %bb13
bb28:
  %t137 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t137, ptr %l78
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t138 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t138, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l20 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l14
  br label %bb4
bb4:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t29, i32 %t30)
  store i64 %t33, ptr %l20
  br label %bb7
bb6:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb7:
  %t34 = load i64, ptr %l20, !tbaa !24
  %t35 = icmp sle i64 %t34, 64
  store i1 %t35, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l15, !tbaa !21
  store i1 %t37, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l9, !tbaa !21
  store i1 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarDecl(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i64
  %l12 = alloca i32
  %l14 = alloca i32
  %l15 = alloca { i64, [1 x i64] }
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i64
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i1
  %l31 = alloca %"compiler/check:unsetCand"
  %l32 = alloca i1
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca { i64, [3 x i64] }
  %l37 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca { i64, [3 x i64] }
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i1
  %l44 = alloca i64
  %l45 = alloca i1
  %l46 = alloca i1
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i1
  %l52 = alloca i64
  %l53 = alloca i1
  %l57 = alloca i1
  %l61 = alloca i1
  %l66 = alloca i1
  %l76 = alloca i64
  %l79 = alloca i64
  %l99 = alloca { i64, ptr }
  %l102 = alloca i64
  %l107 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l114 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l118 = alloca i32
  %l119 = alloca i32
  %l121 = alloca ptr
  %l125 = alloca %"compiler/typed:Local"
  %l127 = alloca i64
  %l128 = alloca ptr
  %l129 = alloca %"compiler/source:Span"
  %l132 = alloca i32
  %l140 = alloca i32
  %l141 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca i64
  %l149 = alloca i1
  %l151 = alloca i1
  %l155 = alloca i1
  %l159 = alloca i1
  %l160 = alloca i1
  %l162 = alloca i1
  %l163 = alloca ptr
  %l173 = alloca ptr
  %l188 = alloca i1
  %l210 = alloca i32
  %l214 = alloca { i64, [1 x i64] }
  %l217 = alloca i1
  %l221 = alloca ptr
  %l228 = alloca %"compiler/source:Span"
  %l231 = alloca ptr
  %l232 = alloca %"compiler/source:Span"
  %l233 = alloca %"compiler/diagmsg:Msg"
  %l234 = alloca i64
  %l238 = alloca ptr
  %l245 = alloca %"compiler/source:Span"
  %l248 = alloca ptr
  %l249 = alloca %"compiler/source:Span"
  %l252 = alloca %"compiler/diagmsg:Msg"
  %l255 = alloca { i64, ptr }
  %l257 = alloca %"compiler/diagmsg:Msg"
  %l260 = alloca { i64, ptr }
  %l262 = alloca %"compiler/diagmsg:Msg"
  %l263 = alloca i64
  %l266 = alloca i32
  %l275 = alloca i64
  %l278 = alloca i64
  %l297 = alloca { i64, ptr }
  %l304 = alloca { i64, ptr }
  %l307 = alloca i64
  %l310 = alloca i1
  %l312 = alloca ptr
  %l316 = alloca %"compiler/typed:Local"
  %l319 = alloca ptr
  %l320 = alloca %"compiler/source:Span"
  %l323 = alloca { i64, ptr }
  %l326 = alloca { i64, ptr }
  %l328 = alloca %"compiler/diagmsg:Msg"
  %l329 = alloca i64
  %l333 = alloca ptr
  %l334 = alloca i64
  %l335 = alloca ptr
  %l337 = alloca ptr
  %l341 = alloca %"compiler/typed:Local"
  %l343 = alloca { i64, [3 x i64] }
  %l346 = alloca { i64, ptr }
  %l349 = alloca { i64, ptr }
  %l351 = alloca %"compiler/diagmsg:Msg"
  %l355 = alloca %"compiler/check:unsetCand"
  %l357 = alloca ptr
  %l361 = alloca { i64, ptr }
  %l364 = alloca i1
  %l369 = alloca ptr
  %l371 = alloca ptr
  %l374 = alloca i64
  %l375 = alloca i32
  %l380 = alloca i32
  %l383 = alloca i1
  %l388 = alloca i32
  %l393 = alloca i1
  %l398 = alloca i1
  %l402 = alloca i1
  %l409 = alloca ptr
  %l411 = alloca ptr
  %l416 = alloca { i64, ptr }
  %l420 = alloca i32
  %l423 = alloca i1
  %l429 = alloca i1
  %l433 = alloca i1
  %l438 = alloca i1
  %l442 = alloca i1
  %l447 = alloca i32
  %l450 = alloca i1
  %l451 = alloca ptr
  %l456 = alloca i32
  %l457 = alloca i1
  %l460 = alloca { i64, ptr }
  %l465 = alloca ptr
  %l468 = alloca ptr
  %l470 = alloca i32
  %l472 = alloca i1
  %l473 = alloca i1
  %l476 = alloca ptr
  %l478 = alloca i32
  %l479 = alloca i32
  %l483 = alloca i32
  %l484 = alloca ptr
  %l487 = alloca ptr
  %l488 = alloca i32
  %l490 = alloca { i64, ptr }
  %l493 = alloca %"compiler/source:Span"
  %l494 = alloca ptr
  %l507 = alloca i1
  %l511 = alloca ptr
  %l512 = alloca ptr
  %l518 = alloca { i64, [3 x i64] }
  %l522 = alloca i1
  %l527 = alloca i1
  %l530 = alloca { i64, ptr }
  %l534 = alloca { i64, ptr }
  %l537 = alloca i1
  %l542 = alloca { i64, ptr }
  %l546 = alloca ptr
  %l554 = alloca i1
  %l557 = alloca ptr
  %l559 = alloca { i64, ptr }
  %l561 = alloca ptr
  %l566 = alloca i32
  %l570 = alloca ptr
  %l574 = alloca i1
  %l577 = alloca ptr
  %l580 = alloca i32
  %l581 = alloca i1
  %l586 = alloca i32
  %l592 = alloca i1
  %l597 = alloca ptr
  %l604 = alloca %"compiler/source:Span"
  %l607 = alloca ptr
  %l608 = alloca %"compiler/source:Span"
  %l611 = alloca { i64, ptr }
  %l613 = alloca %"compiler/diagmsg:Msg"
  %l614 = alloca i64
  %l617 = alloca ptr
  %l620 = alloca i32
  %l621 = alloca i32
  %l624 = alloca i1
  %l627 = alloca ptr
  %l628 = alloca i32
  %l630 = alloca i32
  %l631 = alloca i1
  %l633 = alloca ptr
  %l636 = alloca ptr
  %l637 = alloca i32
  %l639 = alloca { i64, ptr }
  %l642 = alloca %"compiler/source:Span"
  %l643 = alloca ptr
  %l647 = alloca ptr
  %l648 = alloca ptr
  %l654 = alloca { i64, [3 x i64] }
  %l660 = alloca i64
  %l662 = alloca i64
  %l666 = alloca ptr
  %l670 = alloca i64
  %l677 = alloca ptr
  %l683 = alloca i64
  %l690 = alloca i64
  %l694 = alloca ptr
  %l704 = alloca %"compiler/check:unsetCand"
  %l705 = alloca i32
  %l707 = alloca i32
  %l709 = alloca i1
  %l710 = alloca ptr
  %l712 = alloca i32
  %l713 = alloca i1
  %l714 = alloca ptr
  %l715 = alloca %"compiler/source:Span"
  %l716 = alloca %"compiler/source:Span"
  %l717 = alloca i32
  %l723 = alloca ptr
  %l730 = alloca i1
  %l734 = alloca i1
  %l742 = alloca i1
  %l745 = alloca i1
  %l747 = alloca i1
  %l748 = alloca ptr
  %l752 = alloca i1
  %l754 = alloca i1
  %l758 = alloca ptr
  %l761 = alloca ptr
  %l763 = alloca { i64, ptr }
  %l766 = alloca %"compiler/source:Span"
  %l767 = alloca ptr
  %l771 = alloca i32
  %l772 = alloca ptr
  %l776 = alloca i1
  %l777 = alloca ptr
  %l780 = alloca ptr
  %l783 = alloca { i64, ptr }
  %l786 = alloca { i64, ptr }
  %l789 = alloca ptr
  %l796 = alloca i1
  %l798 = alloca i1
  %l802 = alloca i1
  %l805 = alloca i1
  %l807 = alloca i1
  %l811 = alloca i1
  %l812 = alloca ptr
  %l815 = alloca ptr
  %l817 = alloca { i64, ptr }
  %l820 = alloca %"compiler/source:Span"
  %l821 = alloca ptr
  %l825 = alloca i32
  %l828 = alloca i1
  %l834 = alloca i1
  %l839 = alloca i1
  %l845 = alloca i1
  %l848 = alloca { i64, ptr }
  %l851 = alloca i32
  %l855 = alloca ptr
  %l857 = alloca { i64, ptr }
  %l860 = alloca %"compiler/source:Span"
  %l863 = alloca { i64, ptr }
  %l865 = alloca %"compiler/diagmsg:Msg"
  %l866 = alloca i64
  %l868 = alloca i1
  %l871 = alloca i1
  %l872 = alloca i1
  %l877 = alloca i64
  %l881 = alloca i1
  %l884 = alloca ptr
  %l887 = alloca i32
  %l888 = alloca i32
  %l892 = alloca i1
  %l895 = alloca i1
  %l898 = alloca ptr
  %l903 = alloca i32
  %l908 = alloca i64
  %l912 = alloca i32
  %l918 = alloca i1
  %l921 = alloca i1
  %l924 = alloca i1
  %l926 = alloca ptr
  %l927 = alloca ptr
  %l929 = alloca { i64, ptr }
  %l932 = alloca %"compiler/source:Span"
  %l934 = alloca i1
  %l937 = alloca { i64, ptr }
  %l944 = alloca i64
  %l948 = alloca ptr
  %l952 = alloca ptr
  %l960 = alloca i1
  %l964 = alloca i1
  %l969 = alloca i1
  %l972 = alloca ptr
  %l977 = alloca i32
  %l978 = alloca i32
  %l981 = alloca i1
  %l984 = alloca ptr
  %l989 = alloca i32
  %l990 = alloca i32
  %l992 = alloca i1
  %l995 = alloca i1
  %l998 = alloca ptr
  %l1002 = alloca ptr
  %l1008 = alloca ptr
  %l1017 = alloca %"compiler/check:unsetCand"
  %l1022 = alloca i1
  %l1027 = alloca ptr
  %l1029 = alloca ptr
  %l1030 = alloca i64
  %l1031 = alloca ptr
  %l1037 = alloca { i64, [3 x i64] }
  %l1039 = alloca ptr
  %l1040 = alloca i64
  %l1045 = alloca i1
  %l1049 = alloca i1
  %l1052 = alloca i1
  %l1053 = alloca i1
  %l1056 = alloca { i64, ptr }
  %l1059 = alloca i1
  %l1061 = alloca ptr
  %l1063 = alloca ptr
  %l1067 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l1071 = alloca i1
  %l1077 = alloca i1
  %l1080 = alloca i1
  %l1082 = alloca ptr
  %l1084 = alloca ptr
  %l1088 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l1090 = alloca { i64, ptr }
  %l1094 = alloca %"compiler/check:fixedInit"
  %l1100 = alloca i1
  %l1103 = alloca i1
  %l1105 = alloca i1
  %l1110 = alloca i1
  %l1111 = alloca i1
  %l1114 = alloca ptr
  %l1118 = alloca ptr
  %l1120 = alloca ptr
  %l1121 = alloca %"compiler/source:Span"
  %l1124 = alloca i32
  %l1133 = alloca ptr
  %l1139 = alloca ptr
  %l1140 = alloca i64
  %l1141 = alloca %"compiler/source:Span"
  %l1144 = alloca i1
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s47 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %t165 = alloca { i64, [4 x i64] }, align 8
  %t236 = alloca { i64, [3 x i64] }, align 8
  %t304 = alloca { i64, [1 x i64] }, align 8
  %t1431 = alloca { i64, [4 x i64] }, align 8
  %t2301 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 5
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/ast:VarDecl", ptr %t6, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  store i1 %t11, ptr %l57, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l57, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/ast:VarDecl", ptr %t14, i32 0, i32 3
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t21 = icmp eq i64 %t19, 0
  store i1 %t21, ptr %l61, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l61, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:VarDecl", ptr %t24, i32 0, i32 4
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  store i1 %t29, ptr %l66, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l66, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store i64 0, ptr %l3, !tbaa !24
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/ast:VarDecl", ptr %t32, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb12, label %bb13
bb11:
  br label %bb54
bb12:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb17
bb14:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l79, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb16
bb16:
  %t65 = load i64, ptr %l79, !tbaa !24
  store i64 %t65, ptr %l76, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l76, !tbaa !24
  store i64 %t66, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb53
bb20:
  br label %bb21
bb21:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l5, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l8, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr %"compiler/ast:VarDecl", ptr %t86, i32 0, i32 0
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l99, !tbaa !27
  %t90 = load i64, ptr %l8, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i32, ptr %t93, i64 %t90
  %t95 = load i32, ptr %t94, !tbaa !33
  %t98 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t85, i32 %t95)
  store i64 %t98, ptr %l102
  br label %bb22
bb22:
  %t99 = load i64, ptr %l102, !tbaa !24
  store i64 %t99, ptr %l9, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t102 = icmp slt i64 %t100, 0
  br i1 %t102, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr %"compiler/ast:VarDecl", ptr %t105, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l107, !tbaa !27
  %t109 = load i64, ptr %l8, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr %"compiler/source:Span", ptr %t112, i64 %t109
  %t114 = load %"compiler/source:Span", ptr %t113
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s4, ptr %t104, %"compiler/source:Span" %t114, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  br label %bb52
bb26:
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr %"compiler/ast:VarDecl", ptr %t117, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l111, !tbaa !27
  %t121 = load i64, ptr %l8, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr %"compiler/source:Span", ptr %t124, i64 %t121
  %t126 = load %"compiler/source:Span", ptr %t125
  store %"compiler/source:Span" %t126, ptr %l10
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l114, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t129, ptr %l115
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t130, i64 %t131)
  store i32 %t134, ptr %l118
  br label %bb27
bb27:
  store i32 6, ptr %l119
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t135)
  store ptr %t137, ptr %l121
  br label %bb28
bb28:
  %t138 = load ptr, ptr %l121, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Body", ptr %t138, i32 0, i32 7
  %t141 = load i64, ptr %l9, !tbaa !24
  %t144 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t140, i64 %t141)
  store %"compiler/typed:Local" %t144, ptr %l125
  br label %bb29
bb29:
  %t145 = getelementptr %"compiler/typed:Local", ptr %l125, i32 0, i32 5
  %t146 = load { i64, [1 x i64] }, ptr %t145
  %t147 = load ptr, ptr %l114, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l115
  %t149 = load i32, ptr %l118, !tbaa !23
  %t150 = load i32, ptr %l119, !range !{i32 0, i32 7}
  %t152 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t147, i32 0, %"compiler/source:Span" %t148, i32 %t149, i32 %t150, { i64, [1 x i64] } %t146)
  store i64 %t152, ptr %l127
  br label %bb30
bb30:
  %t153 = load i64, ptr %l127, !tbaa !24
  store i64 %t153, ptr %l11, !tbaa !24
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l128, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t155, ptr %l129
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i64, ptr %l9, !tbaa !24
  %t160 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t156, i64 %t157)
  store i32 %t160, ptr %l132
  br label %bb31
bb31:
  %t161 = load i64, ptr %l9, !tbaa !24
  %t163 = trunc i64 %t161 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 0
  store i64 0, ptr %t166
  %t167 = load %"compiler/source:Span", ptr %l129
  %t168 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t167, 0
  %t169 = load i32, ptr %l132, !tbaa !23
  %t170 = insertvalue { %"compiler/source:Span", i32, i32 } %t168, i32 %t169, 1
  %t172 = insertvalue { %"compiler/source:Span", i32, i32 } %t170, i32 %t163, 2
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t172, ptr %t173
  %t174 = load { i64, [4 x i64] }, ptr %t165
  %t176 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 40, i64 8)
  store { i64, [4 x i64] } %t174, ptr %t176
  %t177 = load ptr, ptr %l128, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %s3, ptr %t177, ptr %t176)
  br label %bb32
bb32:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l9, !tbaa !24
  %t183 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t179, i64 %t180)
  store i32 %t183, ptr %l140
  br label %bb33
bb33:
  %t184 = load i32, ptr %l140, !tbaa !23
  store i32 %t184, ptr %l12, !tbaa !23
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l141, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load %"compiler/source:Span", ptr %l10
  %t188 = load i64, ptr %l9, !tbaa !24
  %t192 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t186, %"compiler/source:Span" %t187, i64 %t188)
  store ptr %t192, ptr %l145
  br label %bb34
bb34:
  %t193 = load i64, ptr %l9, !tbaa !24
  store i64 %t193, ptr %l146, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l12, !tbaa !23
  %t198 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t194, i32 %t195)
  store i1 %t198, ptr %l149
  br label %bb35
bb35:
  %t199 = load i1, ptr %l149, !tbaa !21
  %t200 = xor i1 %t199, true
  br i1 %t200, label %bb36, label %bb37
bb36:
  %t202 = load i32, ptr %l12, !tbaa !23
  %t203 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t206 = icmp ne i32 %t202, %t203
  store i1 %t206, ptr %l151, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb38
bb38:
  %t208 = load i1, ptr %l151, !tbaa !21
  br i1 %t208, label %bb39, label %bb40
bb39:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/check:Checker", ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t213 = load i32, ptr %l12, !tbaa !23
  %t216 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t212, i32 %t213)
  store i1 %t216, ptr %l159
  br label %bb41
bb40:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb42
bb41:
  %t217 = load i1, ptr %l159, !tbaa !21
  store i1 %t217, ptr %l155, !tbaa !21
  br label %bb42
bb42:
  %t218 = load i1, ptr %l155, !tbaa !21
  br i1 %t218, label %bb43, label %bb44
bb43:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emovesHere(ptr %v0, ptr %t219)
  store i1 %t221, ptr %l162
  br label %bb45
bb44:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb46
bb45:
  %t222 = load i1, ptr %l162, !tbaa !21
  store i1 %t222, ptr %l160, !tbaa !21
  br label %bb46
bb46:
  %t223 = load ptr, ptr %l141, !tbaa !29
  %t224 = load ptr, ptr %l145, !tbaa !29
  %t225 = load i64, ptr %l146, !tbaa !24
  %t226 = load i1, ptr %l160, !tbaa !21
  %t227 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandOn(ptr %v0, ptr %v0, ptr %v0, ptr %t223, ptr %t224, i64 %t225, i1 %t226)
  store ptr %t227, ptr %l163
  br label %bb47
bb47:
  %t228 = load ptr, ptr %l163, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l10
  %t231 = load i64, ptr %l11, !tbaa !24
  %t233 = trunc i64 %t231 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t236
  %t237 = getelementptr { i64, [3 x i64] }, ptr %t236, i32 0, i32 0
  store i64 0, ptr %t237
  %t239 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t230, 0
  %t241 = insertvalue { %"compiler/source:Span", i32, ptr } %t239, i32 %t233, 1
  %t243 = insertvalue { %"compiler/source:Span", i32, ptr } %t241, ptr %t228, 2
  %t244 = getelementptr { i64, [3 x i64] }, ptr %t236, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t243, ptr %t244
  %t245 = load { i64, [3 x i64] }, ptr %t236
  %t247 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t245, ptr %t247
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t229, ptr %t247)
  br label %bb48
bb48:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t250)
  store ptr %t252, ptr %l173
  br label %bb49
bb49:
  %t253 = load ptr, ptr %l173, !tbaa !29
  %t255 = getelementptr %"compiler/typed:Body", ptr %t253, i32 0, i32 10
  %t256 = load i64, ptr %l11, !tbaa !24
  %t258 = trunc i64 %t256 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t255, i32 %t258)
  br label %bb50
bb50:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i64, ptr %l11, !tbaa !24
  %t264 = load %"compiler/source:Span", ptr %l10
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %t262, i64 %t263, %"compiler/source:Span" %t264, i1 true)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s3)
  br label %bb52
bb52:
  %t268 = load i64, ptr %l7, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l7, !tbaa !24
  br label %bb18
bb53:
  br label %ret
bb54:
  %t272 = load ptr, ptr %l2, !tbaa !29
  %t274 = getelementptr %"compiler/ast:VarDecl", ptr %t272, i32 0, i32 3
  %t275 = load { i64, ptr }, ptr %t274, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t279 = icmp ne i64 %t277, 0
  br i1 %t279, label %bb55, label %bb56
bb55:
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t283 = getelementptr %"compiler/ast:VarDecl", ptr %t281, i32 0, i32 3
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t284, 0
  %t287 = load ptr, ptr %l2, !tbaa !29
  %t289 = getelementptr %"compiler/ast:VarDecl", ptr %t287, i32 0, i32 0
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t295 = icmp ne i64 %t286, %t292
  store i1 %t295, ptr %l188, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb57
bb57:
  %t297 = load i1, ptr %l188, !tbaa !21
  br i1 %t297, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s6
  %t298 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s6, ptr %t298, %"compiler/source:Span" %a1, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb61:
  %t302 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t302, ptr %l14, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t304
  %t305 = getelementptr { i64, [1 x i64] }, ptr %t304, i32 0, i32 0
  store i64 4, ptr %t305
  %t306 = load { i64, [1 x i64] }, ptr %t304
  store { i64, [1 x i64] } %t306, ptr %l15
  %t308 = load ptr, ptr %l2, !tbaa !29
  %t310 = getelementptr %"compiler/ast:VarDecl", ptr %t308, i32 0, i32 2
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = icmp eq ptr %t311, null
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb62, label %bb63
bb62:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load ptr, ptr %l2, !tbaa !29
  %t320 = getelementptr %"compiler/ast:VarDecl", ptr %t318, i32 0, i32 5
  %t321 = load i1, ptr %t320, !tbaa !21
  %t324 = getelementptr %"compiler/check:Checker", ptr %t317, i32 0, i32 97
  store i1 %t321, ptr %t324, !tbaa !21
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load ptr, ptr %l2, !tbaa !29
  %t328 = getelementptr %"compiler/ast:VarDecl", ptr %t326, i32 0, i32 2
  %t329 = load ptr, ptr %t328, !tbaa !29
  %t332 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t325, ptr %t329)
  store i32 %t332, ptr %l210
  br label %bb64
bb63:
  br label %bb99
bb64:
  %t333 = load i32, ptr %l210, !tbaa !23
  store i32 %t333, ptr %l14, !tbaa !23
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load ptr, ptr %l2, !tbaa !29
  %t337 = getelementptr %"compiler/ast:VarDecl", ptr %t335, i32 0, i32 2
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t341 = call { i64, [1 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkOf(ptr %v0, ptr %v1, ptr %t334, ptr %t338)
  store { i64, [1 x i64] } %t341, ptr %l214
  br label %bb65
bb65:
  %t342 = load { i64, [1 x i64] }, ptr %l214
  store { i64, [1 x i64] } %t342, ptr %l15
  %t343 = load ptr, ptr %l2, !tbaa !29
  %t345 = getelementptr %"compiler/ast:VarDecl", ptr %t343, i32 0, i32 4
  %t346 = load i1, ptr %t345, !tbaa !21
  br i1 %t346, label %bb66, label %bb67
bb66:
  %t348 = load ptr, ptr %l2, !tbaa !29
  %t350 = getelementptr %"compiler/ast:VarDecl", ptr %t348, i32 0, i32 5
  %t351 = load i1, ptr %t350, !tbaa !21
  %t353 = xor i1 %t351, true
  store i1 %t353, ptr %l217, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l217, !tbaa !21
  br label %bb68
bb68:
  %t355 = load i1, ptr %l217, !tbaa !21
  br i1 %t355, label %bb69, label %bb70
bb69:
  %t356 = load ptr, ptr %l0, !tbaa !29
  store ptr %t356, ptr %l221, !tbaa !29
  %t357 = load ptr, ptr %l2, !tbaa !29
  %t359 = getelementptr %"compiler/ast:VarDecl", ptr %t357, i32 0, i32 2
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t362 = icmp eq ptr %t360, null
  br i1 %t362, label %bb71, label %bb72
bb70:
  %t364 = load ptr, ptr %l2, !tbaa !29
  %t366 = getelementptr %"compiler/ast:VarDecl", ptr %t364, i32 0, i32 4
  %t367 = load i1, ptr %t366, !tbaa !21
  %t369 = xor i1 %t367, true
  br i1 %t369, label %bb80, label %bb81
bb71:
  call void @__olang_check_failed(ptr @olang_loc_31b59b203b4a4e3f_1cfff4f24a22d803)
  unreachable
bb72:
  br label %bb73
bb73:
  %t371 = load ptr, ptr %l2, !tbaa !29
  %t373 = getelementptr %"compiler/ast:VarDecl", ptr %t371, i32 0, i32 2
  %t374 = load ptr, ptr %t373, !tbaa !29
  %t375 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t376 = load ptr, ptr %l221, !tbaa !29
  %t379 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %t376, ptr %t374, i32 %t375)
  store %"compiler/source:Span" %t379, ptr %l228
  br label %bb74
bb74:
  %t380 = load %"compiler/source:Span", ptr %l228
  store %"compiler/source:Span" %t380, ptr %l16
  %t381 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t382 = load i32, ptr %t381, !tbaa !23
  %t384 = icmp sge i32 %t382, 0
  br i1 %t384, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s9
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l231, !tbaa !29
  %t387 = load %"compiler/source:Span", ptr %l16
  store %"compiler/source:Span" %t387, ptr %l232
  %t388 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnInferredLocal(ptr %s9)
  store %"compiler/diagmsg:Msg" %t388, ptr %l233
  br label %bb77
bb76:
  br label %bb79
bb77:
  %t389 = load ptr, ptr %l231, !tbaa !29
  %t390 = load %"compiler/source:Span", ptr %l232
  %t391 = load %"compiler/diagmsg:Msg", ptr %l233
  %t392 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t389, %"compiler/source:Span" %t390, %"compiler/diagmsg:Msg" %t391)
  store i64 %t392, ptr %l234
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s9)
  br label %bb79
bb79:
  br label %bb98
bb80:
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l238, !tbaa !29
  %t394 = load ptr, ptr %l2, !tbaa !29
  %t396 = getelementptr %"compiler/ast:VarDecl", ptr %t394, i32 0, i32 2
  %t397 = load ptr, ptr %t396, !tbaa !29
  %t399 = icmp eq ptr %t397, null
  br i1 %t399, label %bb82, label %bb83
bb81:
  br label %bb97
bb82:
  call void @__olang_check_failed(ptr @olang_loc_35f48b5c7c141c20_d3954a821088874)
  unreachable
bb83:
  br label %bb84
bb84:
  %t401 = load ptr, ptr %l2, !tbaa !29
  %t403 = getelementptr %"compiler/ast:VarDecl", ptr %t401, i32 0, i32 2
  %t404 = load ptr, ptr %t403, !tbaa !29
  %t405 = load i32, ptr %l14, !tbaa !23
  %t406 = load ptr, ptr %l238, !tbaa !29
  %t409 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %t406, ptr %t404, i32 %t405)
  store %"compiler/source:Span" %t409, ptr %l245
  br label %bb85
bb85:
  %t410 = load %"compiler/source:Span", ptr %l245
  store %"compiler/source:Span" %t410, ptr %l17
  %t411 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t412 = load i32, ptr %t411, !tbaa !23
  %t414 = icmp sge i32 %t412, 0
  br i1 %t414, label %bb86, label %bb87
bb86:
  store %olang.scope zeroinitializer, ptr %s12
  %t416 = load ptr, ptr %l0, !tbaa !29
  store ptr %t416, ptr %l248, !tbaa !29
  %t417 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t417, ptr %l249
  %t418 = load ptr, ptr %l2, !tbaa !29
  %t420 = getelementptr %"compiler/ast:VarDecl", ptr %t418, i32 0, i32 5
  %t421 = load i1, ptr %t420, !tbaa !21
  br i1 %t421, label %bb88, label %bb89
bb87:
  br label %bb96
bb88:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load i32, ptr %l14, !tbaa !23
  %t427 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t423, i32 %t424)
  store { i64, ptr } %t427, ptr %l255
  br label %bb90
bb89:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t429 = load i32, ptr %l14, !tbaa !23
  %t432 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t428, i32 %t429)
  store { i64, ptr } %t432, ptr %l260
  br label %bb92
bb90:
  %t433 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t433, 0
  %t435 = extractvalue { i64, ptr } %t433, 1
  %t436 = mul i64 %t434, 1
  %t437 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t436)
  call void @llvm.memcpy.p0.p0.i64(ptr %t437, ptr %t435, i64 %t436, i1 false)
  %t438 = insertvalue { i64, ptr } undef, i64 %t434, 0
  %t439 = insertvalue { i64, ptr } %t438, ptr %t437, 1
  %t441 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueField(ptr %s12, ptr %s12, { i64, ptr } %t439)
  store %"compiler/diagmsg:Msg" %t441, ptr %l257
  br label %bb91
bb91:
  %t442 = load %"compiler/diagmsg:Msg", ptr %l257
  store %"compiler/diagmsg:Msg" %t442, ptr %l252
  br label %bb94
bb92:
  %t443 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t444 = extractvalue { i64, ptr } %t443, 0
  %t445 = extractvalue { i64, ptr } %t443, 1
  %t446 = mul i64 %t444, 1
  %t447 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t446)
  call void @llvm.memcpy.p0.p0.i64(ptr %t447, ptr %t445, i64 %t446, i1 false)
  %t448 = insertvalue { i64, ptr } undef, i64 %t444, 0
  %t449 = insertvalue { i64, ptr } %t448, ptr %t447, 1
  %t451 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnLocal(ptr %s12, ptr %s12, { i64, ptr } %t449)
  store %"compiler/diagmsg:Msg" %t451, ptr %l262
  br label %bb93
bb93:
  %t452 = load %"compiler/diagmsg:Msg", ptr %l262
  store %"compiler/diagmsg:Msg" %t452, ptr %l252
  br label %bb94
bb94:
  %t453 = load ptr, ptr %l248, !tbaa !29
  %t454 = load %"compiler/source:Span", ptr %l249
  %t455 = load %"compiler/diagmsg:Msg", ptr %l252
  %t456 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t453, %"compiler/source:Span" %t454, %"compiler/diagmsg:Msg" %t455)
  store i64 %t456, ptr %l263
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s12)
  br label %bb96
bb96:
  br label %bb97
bb97:
  br label %bb98
bb98:
  br label %bb99
bb99:
  %t457 = load ptr, ptr %l2, !tbaa !29
  %t459 = getelementptr %"compiler/ast:VarDecl", ptr %t457, i32 0, i32 5
  %t460 = load i1, ptr %t459, !tbaa !21
  br i1 %t460, label %bb100, label %bb101
bb100:
  store i32 6, ptr %l266
  br label %bb102
bb101:
  store i32 1, ptr %l266
  br label %bb102
bb102:
  %t464 = load i32, ptr %l266, !range !{i32 0, i32 7}
  store i32 %t464, ptr %l18
  store i64 0, ptr %l19, !tbaa !24
  %t465 = load ptr, ptr %l2, !tbaa !29
  %t467 = getelementptr %"compiler/ast:VarDecl", ptr %t465, i32 0, i32 0
  %t468 = load { i64, ptr }, ptr %t467, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t468, 0
  store i64 %t470, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t472 = load i64, ptr %l20, !tbaa !24
  %t473 = load i64, ptr %l19, !tbaa !24
  %t476 = icmp sgt i64 %t472, %t473
  br i1 %t476, label %bb103, label %bb104
bb103:
  %t478 = load i64, ptr %l21, !tbaa !24
  %t480 = icmp sgt i64 %t478, 0
  br i1 %t480, label %bb105, label %bb106
bb104:
  store i64 0, ptr %l275, !tbaa !24
  br label %bb108
bb105:
  %t482 = load i64, ptr %l20, !tbaa !24
  %t483 = load i64, ptr %l19, !tbaa !24
  %t486 = sub i64 %t482, %t483
  %t487 = load i64, ptr %l21, !tbaa !24
  %t490 = add i64 %t486, %t487
  %t492 = sub i64 %t490, 1
  %t493 = load i64, ptr %l21, !tbaa !24
  %t496 = sdiv i64 %t492, %t493
  store i64 %t496, ptr %l278, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l278, !tbaa !24
  br label %bb107
bb107:
  %t498 = load i64, ptr %l278, !tbaa !24
  store i64 %t498, ptr %l275, !tbaa !24
  br label %bb108
bb108:
  %t499 = load i64, ptr %l275, !tbaa !24
  store i64 %t499, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb109
bb109:
  store %olang.scope zeroinitializer, ptr %s14
  %t500 = load i64, ptr %l23, !tbaa !24
  %t501 = load i64, ptr %l22, !tbaa !24
  %t504 = icmp slt i64 %t500, %t501
  %t506 = xor i1 %t504, true
  br i1 %t506, label %bb110, label %bb111
bb110:
  call void @__olang_scope_close(ptr %s14)
  br label %bb556
bb111:
  br label %bb112
bb112:
  %t508 = load i64, ptr %l19, !tbaa !24
  %t509 = load i64, ptr %l23, !tbaa !24
  %t510 = load i64, ptr %l21, !tbaa !24
  %t513 = mul i64 %t509, %t510
  %t516 = add i64 %t508, %t513
  store i64 %t516, ptr %l24, !tbaa !24
  %t518 = load ptr, ptr %l2, !tbaa !29
  %t520 = getelementptr %"compiler/ast:VarDecl", ptr %t518, i32 0, i32 1
  %t521 = load { i64, ptr }, ptr %t520, !tbaa !27
  store { i64, ptr } %t521, ptr %l297, !tbaa !27
  %t522 = load i64, ptr %l24, !tbaa !24
  %t524 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t525 = load ptr, ptr %t524, !tbaa !27
  %t526 = getelementptr %"compiler/source:Span", ptr %t525, i64 %t522
  %t527 = load %"compiler/source:Span", ptr %t526
  store %"compiler/source:Span" %t527, ptr %l25
  %t529 = load ptr, ptr %l2, !tbaa !29
  %t531 = getelementptr %"compiler/ast:VarDecl", ptr %t529, i32 0, i32 5
  %t532 = load i1, ptr %t531, !tbaa !21
  br i1 %t532, label %bb113, label %bb114
bb113:
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t535 = load ptr, ptr %l2, !tbaa !29
  %t537 = getelementptr %"compiler/ast:VarDecl", ptr %t535, i32 0, i32 0
  %t538 = load { i64, ptr }, ptr %t537, !tbaa !27
  store { i64, ptr } %t538, ptr %l304, !tbaa !27
  %t539 = load i64, ptr %l24, !tbaa !24
  %t541 = getelementptr { i64, ptr }, ptr %l304, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr i32, ptr %t542, i64 %t539
  %t544 = load i32, ptr %t543, !tbaa !33
  %t547 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t534, i32 %t544)
  store i64 %t547, ptr %l307
  br label %bb115
bb114:
  br label %bb133
bb115:
  %t548 = load i64, ptr %l307, !tbaa !24
  store i64 %t548, ptr %l26, !tbaa !24
  %t549 = load i64, ptr %l26, !tbaa !24
  %t551 = icmp sge i64 %t549, 0
  br i1 %t551, label %bb116, label %bb117
bb116:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t555 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t553)
  store ptr %t555, ptr %l312
  br label %bb118
bb117:
  store i1 false, ptr %l310, !tbaa !21
  br label %bb120
bb118:
  %t556 = load ptr, ptr %l312, !tbaa !29
  %t558 = getelementptr %"compiler/typed:Body", ptr %t556, i32 0, i32 7
  %t559 = load i64, ptr %l26, !tbaa !24
  %t562 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t558, i64 %t559)
  store %"compiler/typed:Local" %t562, ptr %l316
  br label %bb119
bb119:
  %t563 = getelementptr %"compiler/typed:Local", ptr %l316, i32 0, i32 4
  %t564 = load i32, ptr %t563, !range !{i32 0, i32 7}
  %t566 = trunc i64 0 to i32
  %t567 = icmp eq i32 %t564, %t566
  store i1 %t567, ptr %l310, !tbaa !21
  br label %bb120
bb120:
  %t569 = load i1, ptr %l310, !tbaa !21
  br i1 %t569, label %bb121, label %bb122
bb121:
  store %olang.scope zeroinitializer, ptr %s16
  %t570 = load ptr, ptr %l0, !tbaa !29
  store ptr %t570, ptr %l319, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t571, ptr %l320
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t573 = load ptr, ptr %l2, !tbaa !29
  %t575 = getelementptr %"compiler/ast:VarDecl", ptr %t573, i32 0, i32 0
  %t576 = load { i64, ptr }, ptr %t575, !tbaa !27
  store { i64, ptr } %t576, ptr %l323, !tbaa !27
  %t577 = load i64, ptr %l24, !tbaa !24
  %t579 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t580 = load ptr, ptr %t579, !tbaa !27
  %t581 = getelementptr i32, ptr %t580, i64 %t577
  %t582 = load i32, ptr %t581, !tbaa !33
  %t585 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s16, ptr %t572, i32 %t582)
  store { i64, ptr } %t585, ptr %l326
  br label %bb123
bb122:
  br label %bb132
bb123:
  %t586 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t587 = extractvalue { i64, ptr } %t586, 0
  %t588 = extractvalue { i64, ptr } %t586, 1
  %t589 = mul i64 %t587, 1
  %t590 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t589)
  call void @llvm.memcpy.p0.p0.i64(ptr %t590, ptr %t588, i64 %t589, i1 false)
  %t591 = insertvalue { i64, ptr } undef, i64 %t587, 0
  %t592 = insertvalue { i64, ptr } %t591, ptr %t590, 1
  %t594 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldHasParamName(ptr %s16, ptr %s16, { i64, ptr } %t592)
  store %"compiler/diagmsg:Msg" %t594, ptr %l328
  br label %bb124
bb124:
  %t595 = load ptr, ptr %l319, !tbaa !29
  %t596 = load %"compiler/source:Span", ptr %l320
  %t597 = load %"compiler/diagmsg:Msg", ptr %l328
  %t598 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s16, ptr %t595, %"compiler/source:Span" %t596, %"compiler/diagmsg:Msg" %t597)
  store i64 %t598, ptr %l329
  br label %bb125
bb125:
  %t599 = load i64, ptr %l329, !tbaa !24
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t602 = getelementptr %"compiler/check:Checker", ptr %t600, i32 0, i32 1
  %t603 = load ptr, ptr %t602, !tbaa !29
  %t605 = getelementptr %"compiler/generic:Program", ptr %t603, i32 0, i32 0
  %t606 = load ptr, ptr %t605, !tbaa !29
  %t608 = getelementptr %"compiler/load:Loader", ptr %t606, i32 0, i32 4
  %t609 = load ptr, ptr %t608, !tbaa !29
  store ptr %t609, ptr %l333, !tbaa !29
  store i64 %t599, ptr %l334, !tbaa !24
  %t611 = load ptr, ptr %l0, !tbaa !29
  store ptr %t611, ptr %l335, !tbaa !29
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t612)
  store ptr %t614, ptr %l337
  br label %bb126
bb126:
  %t615 = load ptr, ptr %l337, !tbaa !29
  %t617 = getelementptr %"compiler/typed:Body", ptr %t615, i32 0, i32 7
  %t618 = load i64, ptr %l26, !tbaa !24
  %t621 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t617, i64 %t618)
  store %"compiler/typed:Local" %t621, ptr %l341
  br label %bb127
bb127:
  %t622 = getelementptr %"compiler/typed:Local", ptr %l341, i32 0, i32 1
  %t623 = load %"compiler/source:Span", ptr %t622
  %t624 = load ptr, ptr %l335, !tbaa !29
  %t626 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t624, %"compiler/source:Span" %t623)
  store { i64, [3 x i64] } %t626, ptr %l343
  br label %bb128
bb128:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t628 = load ptr, ptr %l2, !tbaa !29
  %t630 = getelementptr %"compiler/ast:VarDecl", ptr %t628, i32 0, i32 0
  %t631 = load { i64, ptr }, ptr %t630, !tbaa !27
  store { i64, ptr } %t631, ptr %l346, !tbaa !27
  %t632 = load i64, ptr %l24, !tbaa !24
  %t634 = getelementptr { i64, ptr }, ptr %l346, i32 0, i32 1
  %t635 = load ptr, ptr %t634, !tbaa !27
  %t636 = getelementptr i32, ptr %t635, i64 %t632
  %t637 = load i32, ptr %t636, !tbaa !33
  %t640 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s16, ptr %t627, i32 %t637)
  store { i64, ptr } %t640, ptr %l349
  br label %bb129
bb129:
  %t641 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t642 = extractvalue { i64, ptr } %t641, 0
  %t643 = extractvalue { i64, ptr } %t641, 1
  %t644 = mul i64 %t642, 1
  %t645 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t644)
  call void @llvm.memcpy.p0.p0.i64(ptr %t645, ptr %t643, i64 %t644, i1 false)
  %t646 = insertvalue { i64, ptr } undef, i64 %t642, 0
  %t647 = insertvalue { i64, ptr } %t646, ptr %t645, 1
  %t649 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %s16, ptr %s16, { i64, ptr } %t647)
  store %"compiler/diagmsg:Msg" %t649, ptr %l351
  br label %bb130
bb130:
  %t650 = load ptr, ptr %l333, !tbaa !29
  %t651 = load i64, ptr %l334, !tbaa !24
  %t652 = load { i64, [3 x i64] }, ptr %l343
  %t653 = load %"compiler/diagmsg:Msg", ptr %l351
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s16, ptr %t650, i64 %t651, { i64, [3 x i64] } %t652, %"compiler/diagmsg:Msg" %t653)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s16)
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t654 = load i32, ptr %l14, !tbaa !23
  store i32 %t654, ptr %l28, !tbaa !23
  store ptr null, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t656 = load %"compiler/source:Span", ptr %l25
  %t657 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t660 = call %"compiler/check:unsetCand" @compiler_2fcheck_3aunsetCand_2ector(ptr %s14, i64 -1, i64 -1, i64 -1, i1 false, i64 -1, %"compiler/source:Span" %t656, i32 %t657, i1 false)
  store %"compiler/check:unsetCand" %t660, ptr %l355
  br label %bb134
bb134:
  %t661 = load %"compiler/check:unsetCand", ptr %l355
  store %"compiler/check:unsetCand" %t661, ptr %l31
  %t662 = load ptr, ptr %l0, !tbaa !29
  %t664 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t662)
  store ptr %t664, ptr %l357
  br label %bb135
bb135:
  %t665 = load ptr, ptr %l357, !tbaa !29
  %t667 = getelementptr %"compiler/check:frame", ptr %t665, i32 0, i32 43
  %t668 = load ptr, ptr %l2, !tbaa !29
  %t670 = getelementptr %"compiler/ast:VarDecl", ptr %t668, i32 0, i32 0
  %t671 = load { i64, ptr }, ptr %t670, !tbaa !27
  store { i64, ptr } %t671, ptr %l361, !tbaa !27
  %t672 = load i64, ptr %l24, !tbaa !24
  %t674 = getelementptr { i64, ptr }, ptr %l361, i32 0, i32 1
  %t675 = load ptr, ptr %t674, !tbaa !27
  %t676 = getelementptr i32, ptr %t675, i64 %t672
  %t677 = load i32, ptr %t676, !tbaa !33
  %t680 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t667, i32 %t677)
  store i1 %t680, ptr %l364
  br label %bb136
bb136:
  %t681 = load i1, ptr %l364, !tbaa !21
  %t682 = xor i1 %t681, true
  store i1 %t682, ptr %l32, !tbaa !21
  %t684 = load i32, ptr %l14, !tbaa !23
  store i32 %t684, ptr %l33, !tbaa !23
  %t686 = load ptr, ptr %l2, !tbaa !29
  %t688 = getelementptr %"compiler/ast:VarDecl", ptr %t686, i32 0, i32 5
  %t689 = load i1, ptr %t688, !tbaa !21
  br i1 %t689, label %bb137, label %bb138
bb137:
  store i1 true, ptr %l32, !tbaa !21
  %t691 = load ptr, ptr %l0, !tbaa !29
  store ptr %t691, ptr %l369, !tbaa !29
  %t692 = load ptr, ptr %l0, !tbaa !29
  %t694 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t692)
  store ptr %t694, ptr %l371
  br label %bb139
bb138:
  %t695 = load i1, ptr %l32, !tbaa !21
  br i1 %t695, label %bb150, label %bb151
bb139:
  %t697 = load ptr, ptr %l371, !tbaa !29
  %t699 = getelementptr %"compiler/typed:Body", ptr %t697, i32 0, i32 10
  %t701 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t699)
  store i64 %t701, ptr %l374
  br label %bb140
bb140:
  %t702 = load ptr, ptr %l369, !tbaa !29
  %t703 = load i64, ptr %l374, !tbaa !24
  %t704 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypeAt(ptr %v0, ptr %t702, i64 %t703)
  store i32 %t704, ptr %l375
  br label %bb141
bb141:
  %t705 = load i32, ptr %l375, !tbaa !23
  store i32 %t705, ptr %l34, !tbaa !23
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/check:Checker", ptr %t706, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t711 = getelementptr %"compiler/generic:Program", ptr %t709, i32 0, i32 2
  %t712 = load i32, ptr %l34, !tbaa !23
  %t715 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t711, i32 %t712)
  store i32 %t715, ptr %l380
  br label %bb142
bb142:
  %t716 = load i32, ptr %l380, !range !{i32 0, i32 33}
  %t718 = trunc i64 19 to i32
  %t719 = icmp eq i32 %t716, %t718
  br i1 %t719, label %bb143, label %bb144
bb143:
  %t721 = load ptr, ptr %l0, !tbaa !29
  %t723 = getelementptr %"compiler/check:Checker", ptr %t721, i32 0, i32 1
  %t724 = load ptr, ptr %t723, !tbaa !29
  %t726 = getelementptr %"compiler/generic:Program", ptr %t724, i32 0, i32 2
  %t727 = load i32, ptr %l34, !tbaa !23
  %t730 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t726, i32 %t727)
  store i32 %t730, ptr %l388
  br label %bb145
bb144:
  store i1 false, ptr %l383, !tbaa !21
  br label %bb146
bb145:
  %t731 = load i32, ptr %l388, !tbaa !23
  %t732 = icmp ne i32 %t731, 0
  store i1 %t732, ptr %l383, !tbaa !21
  br label %bb146
bb146:
  %t734 = load i1, ptr %l383, !tbaa !21
  br i1 %t734, label %bb147, label %bb148
bb147:
  %t735 = load i32, ptr %l34, !tbaa !23
  store i32 %t735, ptr %l33, !tbaa !23
  %t737 = load i32, ptr %l34, !tbaa !23
  store i32 %t737, ptr %l28, !tbaa !23
  br label %bb149
bb148:
  br label %bb149
bb149:
  br label %bb164
bb150:
  %t739 = load ptr, ptr %l2, !tbaa !29
  %t741 = getelementptr %"compiler/ast:VarDecl", ptr %t739, i32 0, i32 2
  %t742 = load ptr, ptr %t741, !tbaa !29
  %t744 = icmp eq ptr %t742, null
  %t746 = xor i1 %t744, true
  store i1 %t746, ptr %l393, !tbaa !21
  br label %bb152
bb151:
  store i1 false, ptr %l393, !tbaa !21
  br label %bb152
bb152:
  %t748 = load i1, ptr %l393, !tbaa !21
  br i1 %t748, label %bb153, label %bb154
bb153:
  %t749 = load ptr, ptr %l2, !tbaa !29
  %t751 = getelementptr %"compiler/ast:VarDecl", ptr %t749, i32 0, i32 4
  %t752 = load i1, ptr %t751, !tbaa !21
  %t754 = xor i1 %t752, true
  store i1 %t754, ptr %l398, !tbaa !21
  br label %bb155
bb154:
  store i1 false, ptr %l398, !tbaa !21
  br label %bb155
bb155:
  %t756 = load i1, ptr %l398, !tbaa !21
  br i1 %t756, label %bb156, label %bb157
bb156:
  %t757 = load i64, ptr %l24, !tbaa !24
  %t758 = load ptr, ptr %l2, !tbaa !29
  %t760 = getelementptr %"compiler/ast:VarDecl", ptr %t758, i32 0, i32 3
  %t761 = load { i64, ptr }, ptr %t760, !tbaa !27
  %t763 = extractvalue { i64, ptr } %t761, 0
  %t766 = icmp slt i64 %t757, %t763
  store i1 %t766, ptr %l402, !tbaa !21
  br label %bb158
bb157:
  store i1 false, ptr %l402, !tbaa !21
  br label %bb158
bb158:
  %t768 = load i1, ptr %l402, !tbaa !21
  br i1 %t768, label %bb159, label %bb160
bb159:
  %t769 = load ptr, ptr %l0, !tbaa !29
  %t771 = getelementptr %"compiler/check:Checker", ptr %t769, i32 0, i32 1
  %t772 = load ptr, ptr %t771, !tbaa !29
  store ptr %t772, ptr %l409, !tbaa !29
  %t773 = load ptr, ptr %l0, !tbaa !29
  %t775 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t773)
  store ptr %t775, ptr %l411
  br label %bb161
bb160:
  br label %bb163
bb161:
  %t776 = load ptr, ptr %l411, !tbaa !29
  %t778 = getelementptr %"compiler/check:frame", ptr %t776, i32 0, i32 4
  %t779 = load i32, ptr %l14, !tbaa !23
  %t780 = load ptr, ptr %l2, !tbaa !29
  %t782 = getelementptr %"compiler/ast:VarDecl", ptr %t780, i32 0, i32 3
  %t783 = load { i64, ptr }, ptr %t782, !tbaa !27
  store { i64, ptr } %t783, ptr %l416, !tbaa !27
  %t784 = load i64, ptr %l24, !tbaa !24
  %t786 = getelementptr { i64, ptr }, ptr %l416, i32 0, i32 1
  %t787 = load ptr, ptr %t786, !tbaa !27
  %t788 = getelementptr ptr, ptr %t787, i64 %t784
  %t789 = load ptr, ptr %t788, !tbaa !39
  %t791 = load ptr, ptr %l409, !tbaa !29
  %t795 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eStorageOf(ptr %v0, ptr %v0, ptr %v1, ptr %t791, ptr %t778, i32 %t779, ptr %t789)
  store i32 %t795, ptr %l420
  br label %bb162
bb162:
  %t796 = load i32, ptr %l420, !tbaa !23
  store i32 %t796, ptr %l33, !tbaa !23
  %t797 = load i32, ptr %l33, !tbaa !23
  store i32 %t797, ptr %l28, !tbaa !23
  br label %bb163
bb163:
  br label %bb164
bb164:
  %t799 = load i1, ptr %l32, !tbaa !21
  br i1 %t799, label %bb165, label %bb166
bb165:
  %t801 = load i64, ptr %l24, !tbaa !24
  %t802 = load ptr, ptr %l2, !tbaa !29
  %t804 = getelementptr %"compiler/ast:VarDecl", ptr %t802, i32 0, i32 3
  %t805 = load { i64, ptr }, ptr %t804, !tbaa !27
  %t807 = extractvalue { i64, ptr } %t805, 0
  %t810 = icmp slt i64 %t801, %t807
  store i1 %t810, ptr %l423, !tbaa !21
  br label %bb167
bb166:
  store i1 false, ptr %l423, !tbaa !21
  br label %bb167
bb167:
  %t812 = load i1, ptr %l423, !tbaa !21
  br i1 %t812, label %bb168, label %bb169
bb168:
  %t813 = load ptr, ptr %l2, !tbaa !29
  %t815 = getelementptr %"compiler/ast:VarDecl", ptr %t813, i32 0, i32 5
  %t816 = load i1, ptr %t815, !tbaa !21
  %t818 = xor i1 %t816, true
  store i1 %t818, ptr %l429, !tbaa !21
  br label %bb170
bb169:
  store i1 false, ptr %l429, !tbaa !21
  br label %bb170
bb170:
  %t820 = load i1, ptr %l429, !tbaa !21
  br i1 %t820, label %bb171, label %bb172
bb171:
  %t821 = load ptr, ptr %l2, !tbaa !29
  %t823 = getelementptr %"compiler/ast:VarDecl", ptr %t821, i32 0, i32 2
  %t824 = load ptr, ptr %t823, !tbaa !29
  %t826 = icmp eq ptr %t824, null
  %t828 = xor i1 %t826, true
  store i1 %t828, ptr %l433, !tbaa !21
  br label %bb173
bb172:
  store i1 false, ptr %l433, !tbaa !21
  br label %bb173
bb173:
  %t830 = load i1, ptr %l433, !tbaa !21
  br i1 %t830, label %bb174, label %bb175
bb174:
  %t831 = load ptr, ptr %l2, !tbaa !29
  %t833 = getelementptr %"compiler/ast:VarDecl", ptr %t831, i32 0, i32 4
  %t834 = load i1, ptr %t833, !tbaa !21
  %t836 = xor i1 %t834, true
  store i1 %t836, ptr %l438, !tbaa !21
  br label %bb176
bb175:
  store i1 false, ptr %l438, !tbaa !21
  br label %bb176
bb176:
  %t838 = load i1, ptr %l438, !tbaa !21
  br i1 %t838, label %bb177, label %bb178
bb177:
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t841 = getelementptr %"compiler/check:Checker", ptr %t839, i32 0, i32 1
  %t842 = load ptr, ptr %t841, !tbaa !29
  %t844 = getelementptr %"compiler/generic:Program", ptr %t842, i32 0, i32 2
  %t845 = load i32, ptr %l33, !tbaa !23
  %t848 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t844, i32 %t845)
  store i32 %t848, ptr %l447
  br label %bb179
bb178:
  store i1 false, ptr %l442, !tbaa !21
  br label %bb180
bb179:
  %t849 = load i32, ptr %l447, !range !{i32 0, i32 33}
  %t851 = trunc i64 19 to i32
  %t852 = icmp eq i32 %t849, %t851
  store i1 %t852, ptr %l442, !tbaa !21
  br label %bb180
bb180:
  %t854 = load i1, ptr %l442, !tbaa !21
  br i1 %t854, label %bb181, label %bb182
bb181:
  %t855 = load ptr, ptr %l0, !tbaa !29
  store ptr %t855, ptr %l451, !tbaa !29
  %t856 = load ptr, ptr %l0, !tbaa !29
  %t858 = getelementptr %"compiler/check:Checker", ptr %t856, i32 0, i32 1
  %t859 = load ptr, ptr %t858, !tbaa !29
  %t861 = getelementptr %"compiler/generic:Program", ptr %t859, i32 0, i32 2
  %t862 = load i32, ptr %l33, !tbaa !23
  %t865 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t861, i32 %t862)
  store i32 %t865, ptr %l456
  br label %bb183
bb182:
  store i1 false, ptr %l450, !tbaa !21
  br label %bb185
bb183:
  %t866 = load ptr, ptr %l451, !tbaa !29
  %t867 = load i32, ptr %l456, !tbaa !23
  %t868 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %t866, i32 %t867)
  store i1 %t868, ptr %l457
  br label %bb184
bb184:
  %t869 = load i1, ptr %l457, !tbaa !21
  store i1 %t869, ptr %l450, !tbaa !21
  br label %bb185
bb185:
  %t870 = load i1, ptr %l450, !tbaa !21
  br i1 %t870, label %bb186, label %bb187
bb186:
  %t871 = load ptr, ptr %l0, !tbaa !29
  %t872 = load ptr, ptr %l2, !tbaa !29
  %t874 = getelementptr %"compiler/ast:VarDecl", ptr %t872, i32 0, i32 3
  %t875 = load { i64, ptr }, ptr %t874, !tbaa !27
  store { i64, ptr } %t875, ptr %l460, !tbaa !27
  %t876 = load i64, ptr %l24, !tbaa !24
  %t878 = getelementptr { i64, ptr }, ptr %l460, i32 0, i32 1
  %t879 = load ptr, ptr %t878, !tbaa !27
  %t880 = getelementptr ptr, ptr %t879, i64 %t876
  %t881 = load ptr, ptr %t880, !tbaa !39
  %t883 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t887 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t871, ptr %t881, i32 %t883)
  store ptr %t887, ptr %l465
  br label %bb188
bb187:
  %t888 = load i64, ptr %l24, !tbaa !24
  %t889 = load ptr, ptr %l2, !tbaa !29
  %t891 = getelementptr %"compiler/ast:VarDecl", ptr %t889, i32 0, i32 3
  %t892 = load { i64, ptr }, ptr %t891, !tbaa !27
  %t894 = extractvalue { i64, ptr } %t892, 0
  %t897 = icmp slt i64 %t888, %t894
  br i1 %t897, label %bb205, label %bb206
bb188:
  %t899 = load ptr, ptr %l465, !tbaa !29
  store ptr %t899, ptr %l29, !tbaa !29
  %t901 = load ptr, ptr %l0, !tbaa !29
  %t903 = getelementptr %"compiler/check:Checker", ptr %t901, i32 0, i32 1
  %t904 = load ptr, ptr %t903, !tbaa !29
  store ptr %t904, ptr %l468, !tbaa !29
  %t905 = load ptr, ptr %l29, !tbaa !29
  %t907 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t905)
  store i32 %t907, ptr %l470
  br label %bb189
bb189:
  %t908 = load i32, ptr %l33, !tbaa !23
  %t909 = load ptr, ptr %l468, !tbaa !29
  %t910 = load i32, ptr %l470, !tbaa !23
  %t912 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %t909, i32 %t910, i32 %t908)
  store i1 %t912, ptr %l472
  br label %bb190
bb190:
  %t913 = load i1, ptr %l472, !tbaa !21
  br i1 %t913, label %bb191, label %bb192
bb191:
  %t914 = load ptr, ptr %l0, !tbaa !29
  %t916 = getelementptr %"compiler/check:Checker", ptr %t914, i32 0, i32 1
  %t917 = load ptr, ptr %t916, !tbaa !29
  %t919 = getelementptr %"compiler/generic:Program", ptr %t917, i32 0, i32 2
  store ptr %t919, ptr %l476, !tbaa !29
  %t920 = load ptr, ptr %l29, !tbaa !29
  %t922 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t920)
  store i32 %t922, ptr %l478
  br label %bb193
bb192:
  store i1 false, ptr %l473, !tbaa !21
  br label %bb195
bb193:
  %t923 = load ptr, ptr %l476, !tbaa !29
  %t924 = load i32, ptr %l478, !tbaa !23
  %t925 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t923, i32 %t924)
  store i32 %t925, ptr %l479
  br label %bb194
bb194:
  %t926 = load i32, ptr %l479, !range !{i32 0, i32 33}
  %t928 = trunc i64 19 to i32
  %t929 = icmp eq i32 %t926, %t928
  store i1 %t929, ptr %l473, !tbaa !21
  br label %bb195
bb195:
  %t931 = load i1, ptr %l473, !tbaa !21
  br i1 %t931, label %bb196, label %bb197
bb196:
  %t932 = load ptr, ptr %l29, !tbaa !29
  %t934 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t932)
  store i32 %t934, ptr %l483
  br label %bb198
bb197:
  %t935 = load ptr, ptr %l0, !tbaa !29
  store ptr %t935, ptr %l484, !tbaa !29
  %t936 = load ptr, ptr %l29, !tbaa !29
  %t938 = icmp eq ptr %t936, null
  br i1 %t938, label %bb199, label %bb200
bb198:
  %t940 = load i32, ptr %l483, !tbaa !23
  store i32 %t940, ptr %l28, !tbaa !23
  br label %bb204
bb199:
  call void @__olang_check_failed(ptr @olang_loc_458efae6ce1c735_ac6225d3d907fb69)
  unreachable
bb200:
  br label %bb201
bb201:
  %t941 = load ptr, ptr %l29, !tbaa !29
  store ptr %t941, ptr %l487, !tbaa !29
  %t942 = load i32, ptr %l33, !tbaa !23
  store i32 %t942, ptr %l488, !tbaa !23
  %t943 = load ptr, ptr %l2, !tbaa !29
  %t945 = getelementptr %"compiler/ast:VarDecl", ptr %t943, i32 0, i32 3
  %t946 = load { i64, ptr }, ptr %t945, !tbaa !27
  store { i64, ptr } %t946, ptr %l490, !tbaa !27
  %t947 = load i64, ptr %l24, !tbaa !24
  %t949 = getelementptr { i64, ptr }, ptr %l490, i32 0, i32 1
  %t950 = load ptr, ptr %t949, !tbaa !27
  %t951 = getelementptr ptr, ptr %t950, i64 %t947
  %t952 = load ptr, ptr %t951, !tbaa !39
  %t954 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t952)
  store %"compiler/source:Span" %t954, ptr %l493
  br label %bb202
bb202:
  %t955 = load ptr, ptr %l484, !tbaa !29
  %t956 = load ptr, ptr %l487, !tbaa !29
  %t957 = load i32, ptr %l488, !tbaa !23
  %t958 = load %"compiler/source:Span", ptr %l493
  %t959 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t955, ptr %t956, i32 %t957, %"compiler/source:Span" %t958)
  store ptr %t959, ptr %l494
  br label %bb203
bb203:
  %t960 = load ptr, ptr %l494, !tbaa !29
  store ptr %t960, ptr %l29, !tbaa !29
  br label %bb204
bb204:
  br label %bb301
bb205:
  %t962 = load ptr, ptr %l0, !tbaa !29
  %t964 = getelementptr %"compiler/check:Checker", ptr %t962, i32 0, i32 13
  %t965 = load { i64, [3 x i64] }, ptr %t964
  store { i64, [3 x i64] } %t965, ptr %l35
  %t967 = load ptr, ptr %l2, !tbaa !29
  %t969 = getelementptr %"compiler/ast:VarDecl", ptr %t967, i32 0, i32 2
  %t970 = load ptr, ptr %t969, !tbaa !29
  %t972 = icmp eq ptr %t970, null
  %t974 = xor i1 %t972, true
  br i1 %t974, label %bb207, label %bb208
bb206:
  store %olang.scope zeroinitializer, ptr %s32
  %t976 = load ptr, ptr %l0, !tbaa !29
  %t978 = getelementptr %"compiler/check:Checker", ptr %t976, i32 0, i32 13
  %t979 = load { i64, [3 x i64] }, ptr %t978
  store { i64, [3 x i64] } %t979, ptr %l39
  %t981 = load ptr, ptr %l0, !tbaa !29
  store ptr %t981, ptr %l647, !tbaa !29
  %t982 = load ptr, ptr %l0, !tbaa !29
  store ptr %t982, ptr %l648, !tbaa !29
  %t983 = load ptr, ptr %l2, !tbaa !29
  %t985 = getelementptr %"compiler/ast:VarDecl", ptr %t983, i32 0, i32 2
  %t986 = load ptr, ptr %t985, !tbaa !29
  %t988 = icmp eq ptr %t986, null
  br i1 %t988, label %bb279, label %bb280
bb207:
  %t990 = load ptr, ptr %l2, !tbaa !29
  %t992 = getelementptr %"compiler/ast:VarDecl", ptr %t990, i32 0, i32 4
  %t993 = load i1, ptr %t992, !tbaa !21
  %t995 = xor i1 %t993, true
  store i1 %t995, ptr %l507, !tbaa !21
  br label %bb209
bb208:
  store i1 false, ptr %l507, !tbaa !21
  br label %bb209
bb209:
  %t997 = load i1, ptr %l507, !tbaa !21
  br i1 %t997, label %bb210, label %bb211
bb210:
  %t998 = load ptr, ptr %l0, !tbaa !29
  store ptr %t998, ptr %l511, !tbaa !29
  %t999 = load ptr, ptr %l0, !tbaa !29
  store ptr %t999, ptr %l512, !tbaa !29
  %t1000 = load ptr, ptr %l2, !tbaa !29
  %t1002 = getelementptr %"compiler/ast:VarDecl", ptr %t1000, i32 0, i32 2
  %t1003 = load ptr, ptr %t1002, !tbaa !29
  %t1005 = icmp eq ptr %t1003, null
  br i1 %t1005, label %bb212, label %bb213
bb211:
  br label %bb216
bb212:
  call void @__olang_check_failed(ptr @olang_loc_f3c73b72e55a8b8e_5460cc7526c67482)
  unreachable
bb213:
  br label %bb214
bb214:
  %t1007 = load ptr, ptr %l2, !tbaa !29
  %t1009 = getelementptr %"compiler/ast:VarDecl", ptr %t1007, i32 0, i32 2
  %t1010 = load ptr, ptr %t1009, !tbaa !29
  %t1011 = load ptr, ptr %l512, !tbaa !29
  %t1013 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %t1011, ptr %t1010)
  store { i64, [3 x i64] } %t1013, ptr %l518
  br label %bb215
bb215:
  %t1014 = load { i64, [3 x i64] }, ptr %l518
  %t1015 = load ptr, ptr %l511, !tbaa !29
  %t1016 = getelementptr %"compiler/check:Checker", ptr %t1015, i32 0, i32 13
  store { i64, [3 x i64] } %t1014, ptr %t1016
  br label %bb216
bb216:
  %t1017 = load ptr, ptr %l2, !tbaa !29
  %t1019 = getelementptr %"compiler/ast:VarDecl", ptr %t1017, i32 0, i32 5
  %t1020 = load i1, ptr %t1019, !tbaa !21
  %t1022 = xor i1 %t1020, true
  br i1 %t1022, label %bb217, label %bb218
bb217:
  %t1024 = load ptr, ptr %l2, !tbaa !29
  %t1026 = getelementptr %"compiler/ast:VarDecl", ptr %t1024, i32 0, i32 0
  %t1027 = load { i64, ptr }, ptr %t1026, !tbaa !27
  %t1029 = extractvalue { i64, ptr } %t1027, 0
  %t1031 = icmp eq i64 %t1029, 1
  store i1 %t1031, ptr %l522, !tbaa !21
  br label %bb219
bb218:
  store i1 false, ptr %l522, !tbaa !21
  br label %bb219
bb219:
  %t1033 = load i1, ptr %l522, !tbaa !21
  br i1 %t1033, label %bb220, label %bb221
bb220:
  %t1034 = load ptr, ptr %l0, !tbaa !29
  %t1035 = load ptr, ptr %l2, !tbaa !29
  %t1037 = getelementptr %"compiler/ast:VarDecl", ptr %t1035, i32 0, i32 0
  %t1038 = load { i64, ptr }, ptr %t1037, !tbaa !27
  store { i64, ptr } %t1038, ptr %l530, !tbaa !27
  %t1039 = load i64, ptr %l24, !tbaa !24
  %t1041 = getelementptr { i64, ptr }, ptr %l530, i32 0, i32 1
  %t1042 = load ptr, ptr %t1041, !tbaa !27
  %t1043 = getelementptr i32, ptr %t1042, i64 %t1039
  %t1044 = load i32, ptr %t1043, !tbaa !33
  %t1045 = load ptr, ptr %l2, !tbaa !29
  %t1047 = getelementptr %"compiler/ast:VarDecl", ptr %t1045, i32 0, i32 3
  %t1048 = load { i64, ptr }, ptr %t1047, !tbaa !27
  store { i64, ptr } %t1048, ptr %l534, !tbaa !27
  %t1049 = load i64, ptr %l24, !tbaa !24
  %t1051 = getelementptr { i64, ptr }, ptr %l534, i32 0, i32 1
  %t1052 = load ptr, ptr %t1051, !tbaa !27
  %t1053 = getelementptr ptr, ptr %t1052, i64 %t1049
  %t1054 = load ptr, ptr %t1053, !tbaa !39
  %t1058 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efilledNext(ptr %v0, ptr %v1, ptr %t1034, i32 %t1044, ptr %t1054)
  store i1 %t1058, ptr %l537
  br label %bb222
bb221:
  store i1 false, ptr %l527, !tbaa !21
  br label %bb223
bb222:
  %t1059 = load i1, ptr %l537, !tbaa !21
  store i1 %t1059, ptr %l527, !tbaa !21
  br label %bb223
bb223:
  %t1060 = load i1, ptr %l527, !tbaa !21
  %t1061 = load ptr, ptr %l0, !tbaa !29
  %t1065 = getelementptr %"compiler/check:Checker", ptr %t1061, i32 0, i32 127
  store i1 %t1060, ptr %t1065, !tbaa !21
  %t1066 = load ptr, ptr %l0, !tbaa !29
  %t1067 = load ptr, ptr %l2, !tbaa !29
  %t1069 = getelementptr %"compiler/ast:VarDecl", ptr %t1067, i32 0, i32 3
  %t1070 = load { i64, ptr }, ptr %t1069, !tbaa !27
  store { i64, ptr } %t1070, ptr %l542, !tbaa !27
  %t1071 = load i64, ptr %l24, !tbaa !24
  %t1073 = getelementptr { i64, ptr }, ptr %l542, i32 0, i32 1
  %t1074 = load ptr, ptr %t1073, !tbaa !27
  %t1075 = getelementptr ptr, ptr %t1074, i64 %t1071
  %t1076 = load ptr, ptr %t1075, !tbaa !39
  %t1077 = load i32, ptr %l33, !tbaa !23
  %t1081 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t1066, ptr %t1076, i32 %t1077)
  store ptr %t1081, ptr %l546
  br label %bb224
bb224:
  %t1082 = load ptr, ptr %l546, !tbaa !29
  store ptr %t1082, ptr %l29, !tbaa !29
  %t1084 = load ptr, ptr %l0, !tbaa !29
  %t1086 = getelementptr %"compiler/check:Checker", ptr %t1084, i32 0, i32 127
  store i1 false, ptr %t1086, !tbaa !21
  %t1087 = load ptr, ptr %l0, !tbaa !29
  %t1088 = load { i64, [3 x i64] }, ptr %l35
  %t1091 = getelementptr %"compiler/check:Checker", ptr %t1087, i32 0, i32 13
  store { i64, [3 x i64] } %t1088, ptr %t1091
  %t1092 = load ptr, ptr %l2, !tbaa !29
  %t1094 = getelementptr %"compiler/ast:VarDecl", ptr %t1092, i32 0, i32 2
  %t1095 = load ptr, ptr %t1094, !tbaa !29
  %t1097 = icmp eq ptr %t1095, null
  br i1 %t1097, label %bb225, label %bb226
bb225:
  store i1 true, ptr %l554, !tbaa !21
  br label %bb227
bb226:
  %t1099 = load ptr, ptr %l2, !tbaa !29
  %t1101 = getelementptr %"compiler/ast:VarDecl", ptr %t1099, i32 0, i32 4
  %t1102 = load i1, ptr %t1101, !tbaa !21
  store i1 %t1102, ptr %l554, !tbaa !21
  br label %bb227
bb227:
  %t1104 = load i1, ptr %l554, !tbaa !21
  br i1 %t1104, label %bb228, label %bb229
bb228:
  %t1105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1105, ptr %l557, !tbaa !29
  %t1106 = load ptr, ptr %l2, !tbaa !29
  %t1108 = getelementptr %"compiler/ast:VarDecl", ptr %t1106, i32 0, i32 3
  %t1109 = load { i64, ptr }, ptr %t1108, !tbaa !27
  store { i64, ptr } %t1109, ptr %l559, !tbaa !27
  %t1110 = load i64, ptr %l24, !tbaa !24
  %t1112 = getelementptr { i64, ptr }, ptr %l559, i32 0, i32 1
  %t1113 = load ptr, ptr %t1112, !tbaa !27
  %t1114 = getelementptr ptr, ptr %t1113, i64 %t1110
  %t1115 = load ptr, ptr %t1114, !tbaa !39
  store ptr %t1115, ptr %l561, !tbaa !29
  %t1116 = load ptr, ptr %l29, !tbaa !29
  %t1118 = icmp eq ptr %t1116, null
  br i1 %t1118, label %bb230, label %bb231
bb229:
  br label %bb278
bb230:
  call void @__olang_check_failed(ptr @olang_loc_de90e7498c4216b3_b17be322d1a772cf)
  unreachable
bb231:
  br label %bb232
bb232:
  %t1120 = load ptr, ptr %l29, !tbaa !29
  %t1121 = load i1, ptr %l32, !tbaa !21
  %t1122 = load ptr, ptr %l557, !tbaa !29
  %t1123 = load ptr, ptr %l561, !tbaa !29
  %t1126 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v0, ptr %t1122, ptr %t1123, ptr %t1120, i1 %t1121)
  store i32 %t1126, ptr %l566
  br label %bb233
bb233:
  %t1127 = load i32, ptr %l566, !tbaa !23
  store i32 %t1127, ptr %l28, !tbaa !23
  %t1128 = load ptr, ptr %l29, !tbaa !29
  %t1130 = icmp eq ptr %t1128, null
  br i1 %t1130, label %bb234, label %bb235
bb234:
  call void @__olang_check_failed(ptr @olang_loc_36f1ca435b2ee6e4_790f65bce77245f0)
  unreachable
bb235:
  br label %bb236
bb236:
  %t1132 = load ptr, ptr %l29, !tbaa !29
  %t1134 = call ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v0, ptr %t1132)
  store ptr %t1134, ptr %l570
  br label %bb237
bb237:
  %t1135 = load ptr, ptr %l570, !tbaa !29
  store ptr %t1135, ptr %l37, !tbaa !29
  %t1136 = load ptr, ptr %l37, !tbaa !29
  %t1138 = icmp eq ptr %t1136, null
  %t1140 = xor i1 %t1138, true
  br i1 %t1140, label %bb238, label %bb239
bb238:
  %t1142 = load ptr, ptr %l0, !tbaa !29
  %t1144 = getelementptr %"compiler/check:Checker", ptr %t1142, i32 0, i32 1
  %t1145 = load ptr, ptr %t1144, !tbaa !29
  %t1147 = getelementptr %"compiler/generic:Program", ptr %t1145, i32 0, i32 2
  store ptr %t1147, ptr %l577, !tbaa !29
  %t1148 = load ptr, ptr %l37, !tbaa !29
  %t1151 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1148)
  store i32 %t1151, ptr %l580
  br label %bb240
bb239:
  store i1 false, ptr %l574, !tbaa !21
  br label %bb242
bb240:
  %t1152 = load ptr, ptr %l577, !tbaa !29
  %t1153 = load i32, ptr %l580, !tbaa !23
  %t1154 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t1152, i32 %t1153)
  store i1 %t1154, ptr %l581
  br label %bb241
bb241:
  %t1155 = load i1, ptr %l581, !tbaa !21
  store i1 %t1155, ptr %l574, !tbaa !21
  br label %bb242
bb242:
  %t1156 = load i1, ptr %l574, !tbaa !21
  br i1 %t1156, label %bb243, label %bb244
bb243:
  %t1157 = load ptr, ptr %l37, !tbaa !29
  store ptr %t1157, ptr %l29, !tbaa !29
  %t1160 = load ptr, ptr %l37, !tbaa !29
  %t1163 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1160)
  store i32 %t1163, ptr %l586
  br label %bb245
bb244:
  br label %bb246
bb245:
  %t1164 = load i32, ptr %l586, !tbaa !23
  store i32 %t1164, ptr %l28, !tbaa !23
  %t1165 = load ptr, ptr %l2, !tbaa !29
  %t1167 = getelementptr %"compiler/ast:VarDecl", ptr %t1165, i32 0, i32 5
  %t1168 = load i1, ptr %t1167, !tbaa !21
  %t1170 = xor i1 %t1168, true
  store i1 %t1170, ptr %l30, !tbaa !21
  br label %bb246
bb246:
  %t1172 = load ptr, ptr %l2, !tbaa !29
  %t1174 = getelementptr %"compiler/ast:VarDecl", ptr %t1172, i32 0, i32 5
  %t1175 = load i1, ptr %t1174, !tbaa !21
  br i1 %t1175, label %bb247, label %bb248
bb247:
  %t1177 = load ptr, ptr %l2, !tbaa !29
  %t1179 = getelementptr %"compiler/ast:VarDecl", ptr %t1177, i32 0, i32 2
  %t1180 = load ptr, ptr %t1179, !tbaa !29
  %t1182 = icmp eq ptr %t1180, null
  %t1184 = xor i1 %t1182, true
  store i1 %t1184, ptr %l592, !tbaa !21
  br label %bb249
bb248:
  store i1 false, ptr %l592, !tbaa !21
  br label %bb249
bb249:
  %t1186 = load i1, ptr %l592, !tbaa !21
  br i1 %t1186, label %bb250, label %bb251
bb250:
  %t1187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1187, ptr %l597, !tbaa !29
  %t1188 = load ptr, ptr %l2, !tbaa !29
  %t1190 = getelementptr %"compiler/ast:VarDecl", ptr %t1188, i32 0, i32 2
  %t1191 = load ptr, ptr %t1190, !tbaa !29
  %t1193 = icmp eq ptr %t1191, null
  br i1 %t1193, label %bb252, label %bb253
bb251:
  br label %bb262
bb252:
  call void @__olang_check_failed(ptr @olang_loc_f2aff2ea660e9d99_96029929a029dd45)
  unreachable
bb253:
  br label %bb254
bb254:
  %t1195 = load ptr, ptr %l2, !tbaa !29
  %t1197 = getelementptr %"compiler/ast:VarDecl", ptr %t1195, i32 0, i32 2
  %t1198 = load ptr, ptr %t1197, !tbaa !29
  %t1199 = load i32, ptr %l28, !tbaa !23
  %t1200 = load ptr, ptr %l597, !tbaa !29
  %t1203 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %t1200, ptr %t1198, i32 %t1199)
  store %"compiler/source:Span" %t1203, ptr %l604
  br label %bb255
bb255:
  %t1204 = load %"compiler/source:Span", ptr %l604
  store %"compiler/source:Span" %t1204, ptr %l38
  %t1205 = getelementptr %"compiler/source:Span", ptr %l38, i32 0, i32 0
  %t1206 = load i32, ptr %t1205, !tbaa !23
  %t1208 = icmp sge i32 %t1206, 0
  br i1 %t1208, label %bb256, label %bb257
bb256:
  store %olang.scope zeroinitializer, ptr %s30
  %t1210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1210, ptr %l607, !tbaa !29
  %t1211 = load %"compiler/source:Span", ptr %l38
  store %"compiler/source:Span" %t1211, ptr %l608
  %t1212 = load ptr, ptr %l0, !tbaa !29
  %t1213 = load i32, ptr %l28, !tbaa !23
  %t1216 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s30, ptr %t1212, i32 %t1213)
  store { i64, ptr } %t1216, ptr %l611
  br label %bb258
bb257:
  br label %bb261
bb258:
  %t1217 = load { i64, ptr }, ptr %l611, !tbaa !27
  %t1218 = extractvalue { i64, ptr } %t1217, 0
  %t1219 = extractvalue { i64, ptr } %t1217, 1
  %t1220 = mul i64 %t1218, 1
  %t1221 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t1220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1221, ptr %t1219, i64 %t1220, i1 false)
  %t1222 = insertvalue { i64, ptr } undef, i64 %t1218, 0
  %t1223 = insertvalue { i64, ptr } %t1222, ptr %t1221, 1
  %t1225 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueField(ptr %s30, ptr %s30, { i64, ptr } %t1223)
  store %"compiler/diagmsg:Msg" %t1225, ptr %l613
  br label %bb259
bb259:
  %t1226 = load ptr, ptr %l607, !tbaa !29
  %t1227 = load %"compiler/source:Span", ptr %l608
  %t1228 = load %"compiler/diagmsg:Msg", ptr %l613
  %t1229 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s30, ptr %t1226, %"compiler/source:Span" %t1227, %"compiler/diagmsg:Msg" %t1228)
  store i64 %t1229, ptr %l614
  br label %bb260
bb260:
  call void @__olang_scope_close(ptr %s30)
  br label %bb261
bb261:
  br label %bb262
bb262:
  %t1230 = load ptr, ptr %l0, !tbaa !29
  %t1232 = getelementptr %"compiler/check:Checker", ptr %t1230, i32 0, i32 1
  %t1233 = load ptr, ptr %t1232, !tbaa !29
  %t1235 = getelementptr %"compiler/generic:Program", ptr %t1233, i32 0, i32 2
  store ptr %t1235, ptr %l617, !tbaa !29
  %t1236 = load ptr, ptr %l0, !tbaa !29
  %t1237 = load i32, ptr %l28, !tbaa !23
  %t1240 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1236, i32 %t1237)
  store i32 %t1240, ptr %l620
  br label %bb263
bb263:
  %t1241 = load ptr, ptr %l617, !tbaa !29
  %t1242 = load i32, ptr %l620, !tbaa !23
  %t1243 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1241, i32 %t1242)
  store i32 %t1243, ptr %l621
  br label %bb264
bb264:
  %t1244 = load i32, ptr %l621, !range !{i32 0, i32 33}
  %t1246 = trunc i64 19 to i32
  %t1247 = icmp eq i32 %t1244, %t1246
  br i1 %t1247, label %bb265, label %bb266
bb265:
  %t1249 = load ptr, ptr %l0, !tbaa !29
  %t1251 = getelementptr %"compiler/check:Checker", ptr %t1249, i32 0, i32 1
  %t1252 = load ptr, ptr %t1251, !tbaa !29
  %t1254 = getelementptr %"compiler/generic:Program", ptr %t1252, i32 0, i32 2
  store ptr %t1254, ptr %l627, !tbaa !29
  %t1255 = load i32, ptr %l28, !tbaa !23
  store i32 %t1255, ptr %l628, !tbaa !23
  %t1256 = load ptr, ptr %l29, !tbaa !29
  %t1258 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1256)
  store i32 %t1258, ptr %l630
  br label %bb267
bb266:
  store i1 false, ptr %l624, !tbaa !21
  br label %bb269
bb267:
  %t1259 = load ptr, ptr %l627, !tbaa !29
  %t1260 = load i32, ptr %l628, !tbaa !23
  %t1261 = load i32, ptr %l630, !tbaa !23
  %t1262 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t1259, i32 %t1260, i32 %t1261)
  store i1 %t1262, ptr %l631
  br label %bb268
bb268:
  %t1263 = load i1, ptr %l631, !tbaa !21
  %t1264 = xor i1 %t1263, true
  store i1 %t1264, ptr %l624, !tbaa !21
  br label %bb269
bb269:
  %t1266 = load i1, ptr %l624, !tbaa !21
  br i1 %t1266, label %bb270, label %bb271
bb270:
  %t1267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1267, ptr %l633, !tbaa !29
  %t1268 = load ptr, ptr %l29, !tbaa !29
  %t1270 = icmp eq ptr %t1268, null
  br i1 %t1270, label %bb272, label %bb273
bb271:
  br label %bb277
bb272:
  call void @__olang_check_failed(ptr @olang_loc_91617ece661d0672_429c03ea7d9d989e)
  unreachable
bb273:
  br label %bb274
bb274:
  %t1272 = load ptr, ptr %l29, !tbaa !29
  store ptr %t1272, ptr %l636, !tbaa !29
  %t1273 = load i32, ptr %l28, !tbaa !23
  store i32 %t1273, ptr %l637, !tbaa !23
  %t1274 = load ptr, ptr %l2, !tbaa !29
  %t1276 = getelementptr %"compiler/ast:VarDecl", ptr %t1274, i32 0, i32 3
  %t1277 = load { i64, ptr }, ptr %t1276, !tbaa !27
  store { i64, ptr } %t1277, ptr %l639, !tbaa !27
  %t1278 = load i64, ptr %l24, !tbaa !24
  %t1280 = getelementptr { i64, ptr }, ptr %l639, i32 0, i32 1
  %t1281 = load ptr, ptr %t1280, !tbaa !27
  %t1282 = getelementptr ptr, ptr %t1281, i64 %t1278
  %t1283 = load ptr, ptr %t1282, !tbaa !39
  %t1285 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1283)
  store %"compiler/source:Span" %t1285, ptr %l642
  br label %bb275
bb275:
  %t1286 = load ptr, ptr %l633, !tbaa !29
  %t1287 = load ptr, ptr %l636, !tbaa !29
  %t1288 = load i32, ptr %l637, !tbaa !23
  %t1289 = load %"compiler/source:Span", ptr %l642
  %t1290 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t1286, ptr %t1287, i32 %t1288, %"compiler/source:Span" %t1289)
  store ptr %t1290, ptr %l643
  br label %bb276
bb276:
  %t1291 = load ptr, ptr %l643, !tbaa !29
  store ptr %t1291, ptr %l29, !tbaa !29
  br label %bb277
bb277:
  br label %bb278
bb278:
  br label %bb300
bb279:
  call void @__olang_check_failed(ptr @olang_loc_60b97769ab73fcb7_dac12c977cbf3c9b)
  unreachable
bb280:
  br label %bb281
bb281:
  %t1293 = load ptr, ptr %l2, !tbaa !29
  %t1295 = getelementptr %"compiler/ast:VarDecl", ptr %t1293, i32 0, i32 2
  %t1296 = load ptr, ptr %t1295, !tbaa !29
  %t1297 = load ptr, ptr %l648, !tbaa !29
  %t1299 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %t1297, ptr %t1296)
  store { i64, [3 x i64] } %t1299, ptr %l654
  br label %bb282
bb282:
  %t1300 = load { i64, [3 x i64] }, ptr %l654
  %t1301 = load ptr, ptr %l647, !tbaa !29
  %t1302 = getelementptr %"compiler/check:Checker", ptr %t1301, i32 0, i32 13
  store { i64, [3 x i64] } %t1300, ptr %t1302
  %t1303 = load ptr, ptr %l0, !tbaa !29
  %t1305 = getelementptr %"compiler/check:Checker", ptr %t1303, i32 0, i32 1
  %t1306 = load ptr, ptr %t1305, !tbaa !29
  %t1308 = getelementptr %"compiler/generic:Program", ptr %t1306, i32 0, i32 0
  %t1309 = load ptr, ptr %t1308, !tbaa !29
  %t1311 = getelementptr %"compiler/load:Loader", ptr %t1309, i32 0, i32 4
  %t1312 = load ptr, ptr %t1311, !tbaa !29
  store ptr %t1312, ptr %l40, !tbaa !29
  %t1314 = load ptr, ptr %l40, !tbaa !29
  %t1316 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t1314)
  store i64 %t1316, ptr %l660
  br label %bb283
bb283:
  %t1317 = load i64, ptr %l660, !tbaa !24
  store i64 %t1317, ptr %l41, !tbaa !24
  %t1318 = load ptr, ptr %l40, !tbaa !29
  %t1320 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t1318)
  store i64 %t1320, ptr %l662
  br label %bb284
bb284:
  %t1321 = load i64, ptr %l662, !tbaa !24
  store i64 %t1321, ptr %l42, !tbaa !24
  %t1322 = load ptr, ptr %l0, !tbaa !29
  %t1323 = load %"compiler/source:Span", ptr %l25
  %t1324 = load i32, ptr %l28, !tbaa !23
  %t1328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t1322, %"compiler/source:Span" %t1323, i32 %t1324)
  store ptr %t1328, ptr %l666
  br label %bb285
bb285:
  %t1329 = load ptr, ptr %l666, !tbaa !29
  store ptr %t1329, ptr %l29, !tbaa !29
  %t1331 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t1331)
  br label %bb286
bb286:
  %t1333 = load ptr, ptr %l40, !tbaa !29
  %t1335 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t1333)
  store i64 %t1335, ptr %l670
  br label %bb287
bb287:
  %t1336 = load i64, ptr %l42, !tbaa !24
  %t1337 = load i64, ptr %l670, !tbaa !24
  %t1339 = icmp sgt i64 %t1337, %t1336
  store i1 %t1339, ptr %l43, !tbaa !21
  %t1341 = load i1, ptr %l43, !tbaa !21
  br i1 %t1341, label %bb288, label %bb289
bb288:
  %t1343 = load ptr, ptr %l0, !tbaa !29
  %t1344 = load %"compiler/source:Span", ptr %l25
  %t1345 = load i32, ptr %l28, !tbaa !23
  %t1349 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t1343, %"compiler/source:Span" %t1344, i32 %t1345, i64 0)
  store ptr %t1349, ptr %l677
  br label %bb290
bb289:
  br label %bb291
bb290:
  %t1350 = load ptr, ptr %l677, !tbaa !29
  store ptr %t1350, ptr %l29, !tbaa !29
  br label %bb291
bb291:
  %t1352 = load ptr, ptr %l0, !tbaa !29
  %t1353 = load { i64, [3 x i64] }, ptr %l39
  %t1356 = getelementptr %"compiler/check:Checker", ptr %t1352, i32 0, i32 13
  store { i64, [3 x i64] } %t1353, ptr %t1356
  %t1357 = load ptr, ptr %l0, !tbaa !29
  %t1359 = getelementptr %"compiler/check:Checker", ptr %t1357, i32 0, i32 111
  %t1361 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t1359)
  store i64 %t1361, ptr %l683
  br label %bb292
bb292:
  %t1362 = load i64, ptr %l683, !tbaa !24
  store i64 %t1362, ptr %l44, !tbaa !24
  %t1363 = load ptr, ptr %l0, !tbaa !29
  %t1364 = load %"compiler/source:Span", ptr %l25
  %t1365 = load i32, ptr %l28, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v0, ptr %t1363, i32 1, %"compiler/source:Span" %t1364, i32 %t1365, ptr null)
  br label %bb293
bb293:
  %t1370 = load ptr, ptr %l0, !tbaa !29
  %t1372 = getelementptr %"compiler/check:Checker", ptr %t1370, i32 0, i32 111
  %t1374 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t1372)
  store i64 %t1374, ptr %l690
  br label %bb294
bb294:
  %t1375 = load i64, ptr %l44, !tbaa !24
  %t1376 = load i64, ptr %l690, !tbaa !24
  %t1378 = icmp eq i64 %t1376, %t1375
  br i1 %t1378, label %bb295, label %bb296
bb295:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb297
bb296:
  br label %bb297
bb297:
  %t1380 = load ptr, ptr %l0, !tbaa !29
  %t1382 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1380)
  store ptr %t1382, ptr %l694
  br label %bb298
bb298:
  %t1383 = load ptr, ptr %l694, !tbaa !29
  %t1385 = getelementptr %"compiler/check:frame", ptr %t1383, i32 0, i32 0
  %t1386 = load i64, ptr %t1385, !tbaa !24
  %t1387 = load i64, ptr %l41, !tbaa !24
  %t1388 = load i1, ptr %l43, !tbaa !21
  %t1389 = load i64, ptr %l44, !tbaa !24
  %t1390 = load %"compiler/source:Span", ptr %l25
  %t1391 = load i32, ptr %l28, !tbaa !23
  %t1392 = load ptr, ptr %l2, !tbaa !29
  %t1394 = getelementptr %"compiler/ast:VarDecl", ptr %t1392, i32 0, i32 5
  %t1395 = load i1, ptr %t1394, !tbaa !21
  %t1403 = call %"compiler/check:unsetCand" @compiler_2fcheck_3aunsetCand_2ector(ptr %s32, i64 %t1386, i64 -1, i64 %t1387, i1 %t1388, i64 %t1389, %"compiler/source:Span" %t1390, i32 %t1391, i1 %t1395)
  store %"compiler/check:unsetCand" %t1403, ptr %l704
  br label %bb299
bb299:
  %t1404 = load %"compiler/check:unsetCand", ptr %l704
  store %"compiler/check:unsetCand" %t1404, ptr %l31
  call void @__olang_scope_close(ptr %s32)
  br label %bb300
bb300:
  br label %bb301
bb301:
  %t1405 = load i32, ptr %l28, !tbaa !23
  store i32 %t1405, ptr %l705, !tbaa !23
  %t1406 = load ptr, ptr %l0, !tbaa !29
  %t1408 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t1406)
  store i32 %t1408, ptr %l707
  br label %bb302
bb302:
  %t1409 = load i32, ptr %l705, !tbaa !23
  %t1410 = load i32, ptr %l707, !tbaa !23
  %t1411 = icmp eq i32 %t1409, %t1410
  br i1 %t1411, label %bb303, label %bb304
bb303:
  %t1413 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1413, ptr %l710, !tbaa !29
  %t1414 = load ptr, ptr %l29, !tbaa !29
  %t1416 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1414)
  store i32 %t1416, ptr %l712
  br label %bb305
bb304:
  store i1 false, ptr %l709, !tbaa !21
  br label %bb307
bb305:
  %t1417 = load ptr, ptr %l710, !tbaa !29
  %t1418 = load i32, ptr %l712, !tbaa !23
  %t1419 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1417, i32 %t1418)
  store i1 %t1419, ptr %l713
  br label %bb306
bb306:
  %t1420 = load i1, ptr %l713, !tbaa !21
  store i1 %t1420, ptr %l709, !tbaa !21
  br label %bb307
bb307:
  %t1421 = load i1, ptr %l709, !tbaa !21
  br i1 %t1421, label %bb308, label %bb309
bb308:
  %t1422 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1422, ptr %l714, !tbaa !29
  %t1423 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t1423, ptr %l715
  %t1424 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t1424, ptr %l716
  %t1425 = load i32, ptr %l28, !tbaa !23
  store i32 %t1425, ptr %l717, !tbaa !23
  %t1426 = load ptr, ptr %l29, !tbaa !29
  %t1428 = icmp eq ptr %t1426, null
  br i1 %t1428, label %bb310, label %bb311
bb309:
  br label %bb314
bb310:
  call void @__olang_check_failed(ptr @olang_loc_456a500fefc58a98_a2eaf47e24a406ac)
  unreachable
bb311:
  br label %bb312
bb312:
  %t1430 = load ptr, ptr %l29, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t1431
  %t1432 = getelementptr { i64, [4 x i64] }, ptr %t1431, i32 0, i32 0
  store i64 2, ptr %t1432
  %t1433 = load %"compiler/source:Span", ptr %l716
  %t1434 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1433, 0
  %t1435 = load i32, ptr %l717, !tbaa !23
  %t1436 = insertvalue { %"compiler/source:Span", i32, ptr } %t1434, i32 %t1435, 1
  %t1438 = insertvalue { %"compiler/source:Span", i32, ptr } %t1436, ptr %t1430, 2
  %t1439 = getelementptr { i64, [4 x i64] }, ptr %t1431, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1438, ptr %t1439
  %t1440 = load { i64, [4 x i64] }, ptr %t1431
  %t1442 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t1440, ptr %t1442
  %t1443 = load ptr, ptr %l714, !tbaa !29
  %t1444 = load %"compiler/source:Span", ptr %l715
  %t1446 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t1443, %"compiler/source:Span" %t1444, ptr %t1442)
  store ptr %t1446, ptr %l723
  br label %bb313
bb313:
  %t1447 = load ptr, ptr %l723, !tbaa !29
  store ptr %t1447, ptr %l29, !tbaa !29
  br label %bb314
bb314:
  %t1449 = load i64, ptr %l24, !tbaa !24
  %t1450 = load ptr, ptr %l2, !tbaa !29
  %t1452 = getelementptr %"compiler/ast:VarDecl", ptr %t1450, i32 0, i32 3
  %t1453 = load { i64, ptr }, ptr %t1452, !tbaa !27
  %t1455 = extractvalue { i64, ptr } %t1453, 0
  %t1458 = icmp slt i64 %t1449, %t1455
  br i1 %t1458, label %bb315, label %bb316
bb315:
  %t1460 = load ptr, ptr %l2, !tbaa !29
  %t1462 = getelementptr %"compiler/ast:VarDecl", ptr %t1460, i32 0, i32 2
  %t1463 = load ptr, ptr %t1462, !tbaa !29
  %t1465 = icmp eq ptr %t1463, null
  br i1 %t1465, label %bb317, label %bb318
bb316:
  store i1 false, ptr %l730, !tbaa !21
  br label %bb320
bb317:
  store i1 true, ptr %l734, !tbaa !21
  br label %bb319
bb318:
  %t1467 = load ptr, ptr %l2, !tbaa !29
  %t1469 = getelementptr %"compiler/ast:VarDecl", ptr %t1467, i32 0, i32 4
  %t1470 = load i1, ptr %t1469, !tbaa !21
  store i1 %t1470, ptr %l734, !tbaa !21
  br label %bb319
bb319:
  %t1472 = load i1, ptr %l734, !tbaa !21
  store i1 %t1472, ptr %l730, !tbaa !21
  br label %bb320
bb320:
  %t1473 = load i1, ptr %l730, !tbaa !21
  store i1 %t1473, ptr %l45, !tbaa !21
  store i1 false, ptr %l46, !tbaa !21
  %t1474 = load i64, ptr %l24, !tbaa !24
  %t1475 = load ptr, ptr %l2, !tbaa !29
  %t1477 = getelementptr %"compiler/ast:VarDecl", ptr %t1475, i32 0, i32 3
  %t1478 = load { i64, ptr }, ptr %t1477, !tbaa !27
  %t1480 = extractvalue { i64, ptr } %t1478, 0
  %t1483 = icmp slt i64 %t1474, %t1480
  br i1 %t1483, label %bb321, label %bb322
bb321:
  %t1485 = load ptr, ptr %l0, !tbaa !29
  %t1486 = load i32, ptr %l28, !tbaa !23
  %t1489 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1485, i32 %t1486)
  store i1 %t1489, ptr %l745
  br label %bb323
bb322:
  store i1 false, ptr %l742, !tbaa !21
  br label %bb324
bb323:
  %t1490 = load i1, ptr %l745, !tbaa !21
  %t1491 = xor i1 %t1490, true
  store i1 %t1491, ptr %l742, !tbaa !21
  br label %bb324
bb324:
  %t1493 = load i1, ptr %l742, !tbaa !21
  br i1 %t1493, label %bb325, label %bb326
bb325:
  %t1494 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1494, ptr %l748, !tbaa !29
  %t1495 = load ptr, ptr %l29, !tbaa !29
  %t1497 = icmp eq ptr %t1495, null
  br i1 %t1497, label %bb327, label %bb328
bb326:
  store i1 false, ptr %l747, !tbaa !21
  br label %bb331
bb327:
  call void @__olang_check_failed(ptr @olang_loc_3b566e89984acdce_dde06b5f9a89c81a)
  unreachable
bb328:
  br label %bb329
bb329:
  %t1499 = load ptr, ptr %l29, !tbaa !29
  %t1500 = load ptr, ptr %l748, !tbaa !29
  %t1502 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v0, ptr %t1500, ptr %t1499)
  store i1 %t1502, ptr %l752
  br label %bb330
bb330:
  %t1503 = load i1, ptr %l752, !tbaa !21
  store i1 %t1503, ptr %l747, !tbaa !21
  br label %bb331
bb331:
  %t1504 = load i1, ptr %l747, !tbaa !21
  br i1 %t1504, label %bb332, label %bb333
bb332:
  %t1505 = load i1, ptr %l45, !tbaa !21
  br i1 %t1505, label %bb334, label %bb335
bb333:
  br label %bb355
bb334:
  %t1507 = load ptr, ptr %l2, !tbaa !29
  %t1509 = getelementptr %"compiler/ast:VarDecl", ptr %t1507, i32 0, i32 5
  %t1510 = load i1, ptr %t1509, !tbaa !21
  %t1512 = xor i1 %t1510, true
  store i1 %t1512, ptr %l754, !tbaa !21
  br label %bb336
bb335:
  store i1 false, ptr %l754, !tbaa !21
  br label %bb336
bb336:
  %t1514 = load i1, ptr %l754, !tbaa !21
  br i1 %t1514, label %bb337, label %bb338
bb337:
  %t1515 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1515, ptr %l758, !tbaa !29
  %t1516 = load ptr, ptr %l29, !tbaa !29
  %t1518 = icmp eq ptr %t1516, null
  br i1 %t1518, label %bb339, label %bb340
bb338:
  store %olang.scope zeroinitializer, ptr %s38
  %t1520 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1520, ptr %l772, !tbaa !29
  %t1521 = load ptr, ptr %l29, !tbaa !29
  %t1523 = icmp eq ptr %t1521, null
  br i1 %t1523, label %bb345, label %bb346
bb339:
  call void @__olang_check_failed(ptr @olang_loc_9c28400664f91d75_969ef375bde61da1)
  unreachable
bb340:
  br label %bb341
bb341:
  %t1525 = load ptr, ptr %l29, !tbaa !29
  store ptr %t1525, ptr %l761, !tbaa !29
  %t1526 = load ptr, ptr %l2, !tbaa !29
  %t1528 = getelementptr %"compiler/ast:VarDecl", ptr %t1526, i32 0, i32 3
  %t1529 = load { i64, ptr }, ptr %t1528, !tbaa !27
  store { i64, ptr } %t1529, ptr %l763, !tbaa !27
  %t1530 = load i64, ptr %l24, !tbaa !24
  %t1532 = getelementptr { i64, ptr }, ptr %l763, i32 0, i32 1
  %t1533 = load ptr, ptr %t1532, !tbaa !27
  %t1534 = getelementptr ptr, ptr %t1533, i64 %t1530
  %t1535 = load ptr, ptr %t1534, !tbaa !39
  %t1537 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1535)
  store %"compiler/source:Span" %t1537, ptr %l766
  br label %bb342
bb342:
  %t1538 = load ptr, ptr %l758, !tbaa !29
  %t1539 = load ptr, ptr %l761, !tbaa !29
  %t1540 = load %"compiler/source:Span", ptr %l766
  %t1541 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v0, ptr %v0, ptr %t1538, ptr %t1539, %"compiler/source:Span" %t1540, i1 true)
  store ptr %t1541, ptr %l767
  br label %bb343
bb343:
  %t1542 = load ptr, ptr %l767, !tbaa !29
  store ptr %t1542, ptr %l29, !tbaa !29
  %t1544 = load ptr, ptr %l29, !tbaa !29
  %t1547 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1544)
  store i32 %t1547, ptr %l771
  br label %bb344
bb344:
  %t1548 = load i32, ptr %l771, !tbaa !23
  store i32 %t1548, ptr %l28, !tbaa !23
  br label %bb354
bb345:
  call void @__olang_check_failed(ptr @olang_loc_982a334cfac79560_875fefac8daf1dec)
  unreachable
bb346:
  br label %bb347
bb347:
  %t1549 = load ptr, ptr %l29, !tbaa !29
  %t1550 = load ptr, ptr %l772, !tbaa !29
  %t1552 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v0, ptr %t1550, ptr %t1549)
  store i1 %t1552, ptr %l776
  br label %bb348
bb348:
  %t1553 = load i1, ptr %l776, !tbaa !21
  store i1 %t1553, ptr %l46, !tbaa !21
  %t1554 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1554, ptr %l777, !tbaa !29
  %t1555 = load ptr, ptr %l29, !tbaa !29
  %t1557 = icmp eq ptr %t1555, null
  br i1 %t1557, label %bb349, label %bb350
bb349:
  call void @__olang_check_failed(ptr @olang_loc_376d11cdba21927f_511e748ac6a9e8db)
  unreachable
bb350:
  br label %bb351
bb351:
  %t1559 = load ptr, ptr %l29, !tbaa !29
  store ptr %t1559, ptr %l780, !tbaa !29
  %t1560 = load ptr, ptr %l0, !tbaa !29
  %t1561 = load ptr, ptr %l2, !tbaa !29
  %t1563 = getelementptr %"compiler/ast:VarDecl", ptr %t1561, i32 0, i32 0
  %t1564 = load { i64, ptr }, ptr %t1563, !tbaa !27
  store { i64, ptr } %t1564, ptr %l783, !tbaa !27
  %t1565 = load i64, ptr %l24, !tbaa !24
  %t1567 = getelementptr { i64, ptr }, ptr %l783, i32 0, i32 1
  %t1568 = load ptr, ptr %t1567, !tbaa !27
  %t1569 = getelementptr i32, ptr %t1568, i64 %t1565
  %t1570 = load i32, ptr %t1569, !tbaa !33
  %t1573 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s38, ptr %t1560, i32 %t1570)
  store { i64, ptr } %t1573, ptr %l786
  br label %bb352
bb352:
  %t1574 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t1575 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t1576 = load { i64, ptr }, ptr %l786, !tbaa !27
  %t1577 = extractvalue { i64, ptr } %t1576, 1
  %t1578 = extractvalue { i64, ptr } %t1576, 0
  %t1579 = add i64 %t1575, %t1578
  %t1580 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t1581 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t1582 = add i64 %t1579, %t1581
  %t1583 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1582)
  call void @olang_textcopy(ptr %t1583, ptr %t1574, i64 %t1575)
  %t1584 = getelementptr i8, ptr %t1583, i64 %t1575
  call void @olang_textcopy(ptr %t1584, ptr %t1577, i64 %t1578)
  %t1585 = getelementptr i8, ptr %t1584, i64 %t1578
  call void @olang_textcopy(ptr %t1585, ptr %t1580, i64 %t1581)
  %t1586 = insertvalue { i64, ptr } undef, i64 %t1582, 0
  %t1587 = insertvalue { i64, ptr } %t1586, ptr %t1583, 1
  %t1589 = extractvalue { i64, ptr } %t1587, 0
  %t1590 = extractvalue { i64, ptr } %t1587, 1
  %t1591 = mul i64 %t1589, 1
  %t1592 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1591)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1592, ptr %t1590, i64 %t1591, i1 false)
  %t1593 = insertvalue { i64, ptr } undef, i64 %t1589, 0
  %t1594 = insertvalue { i64, ptr } %t1593, ptr %t1592, 1
  %t1595 = load ptr, ptr %l777, !tbaa !29
  %t1596 = load ptr, ptr %l780, !tbaa !29
  %t1598 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t1595, ptr %t1596, { i64, ptr } %t1594, i1 false)
  store ptr %t1598, ptr %l789
  br label %bb353
bb353:
  %t1599 = load ptr, ptr %l789, !tbaa !29
  store ptr %t1599, ptr %l29, !tbaa !29
  call void @__olang_scope_close(ptr %s38)
  br label %bb354
bb354:
  br label %bb355
bb355:
  %t1601 = load i64, ptr %l24, !tbaa !24
  %t1602 = load ptr, ptr %l2, !tbaa !29
  %t1604 = getelementptr %"compiler/ast:VarDecl", ptr %t1602, i32 0, i32 3
  %t1605 = load { i64, ptr }, ptr %t1604, !tbaa !27
  %t1607 = extractvalue { i64, ptr } %t1605, 0
  %t1610 = icmp slt i64 %t1601, %t1607
  br i1 %t1610, label %bb356, label %bb357
bb356:
  %t1612 = load i1, ptr %l45, !tbaa !21
  store i1 %t1612, ptr %l796, !tbaa !21
  br label %bb358
bb357:
  store i1 false, ptr %l796, !tbaa !21
  br label %bb358
bb358:
  %t1614 = load i1, ptr %l796, !tbaa !21
  br i1 %t1614, label %bb359, label %bb360
bb359:
  %t1615 = load ptr, ptr %l2, !tbaa !29
  %t1617 = getelementptr %"compiler/ast:VarDecl", ptr %t1615, i32 0, i32 5
  %t1618 = load i1, ptr %t1617, !tbaa !21
  %t1620 = xor i1 %t1618, true
  store i1 %t1620, ptr %l798, !tbaa !21
  br label %bb361
bb360:
  store i1 false, ptr %l798, !tbaa !21
  br label %bb361
bb361:
  %t1622 = load i1, ptr %l798, !tbaa !21
  br i1 %t1622, label %bb362, label %bb363
bb362:
  %t1623 = load ptr, ptr %l0, !tbaa !29
  %t1624 = load i32, ptr %l28, !tbaa !23
  %t1627 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1623, i32 %t1624)
  store i1 %t1627, ptr %l805
  br label %bb364
bb363:
  store i1 false, ptr %l802, !tbaa !21
  br label %bb365
bb364:
  %t1628 = load i1, ptr %l805, !tbaa !21
  %t1629 = xor i1 %t1628, true
  store i1 %t1629, ptr %l802, !tbaa !21
  br label %bb365
bb365:
  %t1631 = load i1, ptr %l802, !tbaa !21
  br i1 %t1631, label %bb366, label %bb367
bb366:
  %t1632 = load ptr, ptr %l0, !tbaa !29
  %t1634 = getelementptr %"compiler/check:Checker", ptr %t1632, i32 0, i32 1
  %t1635 = load ptr, ptr %t1634, !tbaa !29
  %t1636 = load i32, ptr %l28, !tbaa !23
  %t1639 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t1635, i32 %t1636)
  store i1 %t1639, ptr %l811
  br label %bb368
bb367:
  store i1 false, ptr %l807, !tbaa !21
  br label %bb369
bb368:
  %t1640 = load i1, ptr %l811, !tbaa !21
  store i1 %t1640, ptr %l807, !tbaa !21
  br label %bb369
bb369:
  %t1641 = load i1, ptr %l807, !tbaa !21
  br i1 %t1641, label %bb370, label %bb371
bb370:
  %t1642 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1642, ptr %l812, !tbaa !29
  %t1643 = load ptr, ptr %l29, !tbaa !29
  %t1645 = icmp eq ptr %t1643, null
  br i1 %t1645, label %bb372, label %bb373
bb371:
  br label %bb378
bb372:
  call void @__olang_check_failed(ptr @olang_loc_3a82445390a851b2_9b15ba0f114a52d6)
  unreachable
bb373:
  br label %bb374
bb374:
  %t1647 = load ptr, ptr %l29, !tbaa !29
  store ptr %t1647, ptr %l815, !tbaa !29
  %t1648 = load ptr, ptr %l2, !tbaa !29
  %t1650 = getelementptr %"compiler/ast:VarDecl", ptr %t1648, i32 0, i32 3
  %t1651 = load { i64, ptr }, ptr %t1650, !tbaa !27
  store { i64, ptr } %t1651, ptr %l817, !tbaa !27
  %t1652 = load i64, ptr %l24, !tbaa !24
  %t1654 = getelementptr { i64, ptr }, ptr %l817, i32 0, i32 1
  %t1655 = load ptr, ptr %t1654, !tbaa !27
  %t1656 = getelementptr ptr, ptr %t1655, i64 %t1652
  %t1657 = load ptr, ptr %t1656, !tbaa !39
  %t1659 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1657)
  store %"compiler/source:Span" %t1659, ptr %l820
  br label %bb375
bb375:
  %t1660 = load ptr, ptr %l812, !tbaa !29
  %t1661 = load ptr, ptr %l815, !tbaa !29
  %t1662 = load %"compiler/source:Span", ptr %l820
  %t1663 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenRef(ptr %v0, ptr %v0, ptr %v0, ptr %t1660, ptr %t1661, %"compiler/source:Span" %t1662)
  store ptr %t1663, ptr %l821
  br label %bb376
bb376:
  %t1664 = load ptr, ptr %l821, !tbaa !29
  store ptr %t1664, ptr %l29, !tbaa !29
  %t1666 = load ptr, ptr %l29, !tbaa !29
  %t1669 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1666)
  store i32 %t1669, ptr %l825
  br label %bb377
bb377:
  %t1670 = load i32, ptr %l825, !tbaa !23
  store i32 %t1670, ptr %l28, !tbaa !23
  br label %bb378
bb378:
  %t1671 = load ptr, ptr %l2, !tbaa !29
  %t1673 = getelementptr %"compiler/ast:VarDecl", ptr %t1671, i32 0, i32 5
  %t1674 = load i1, ptr %t1673, !tbaa !21
  br i1 %t1674, label %bb379, label %bb380
bb379:
  %t1676 = load i64, ptr %l24, !tbaa !24
  %t1677 = load ptr, ptr %l2, !tbaa !29
  %t1679 = getelementptr %"compiler/ast:VarDecl", ptr %t1677, i32 0, i32 3
  %t1680 = load { i64, ptr }, ptr %t1679, !tbaa !27
  %t1682 = extractvalue { i64, ptr } %t1680, 0
  %t1685 = icmp slt i64 %t1676, %t1682
  store i1 %t1685, ptr %l828, !tbaa !21
  br label %bb381
bb380:
  store i1 false, ptr %l828, !tbaa !21
  br label %bb381
bb381:
  %t1687 = load i1, ptr %l828, !tbaa !21
  br i1 %t1687, label %bb382, label %bb383
bb382:
  %t1688 = load ptr, ptr %l2, !tbaa !29
  %t1690 = getelementptr %"compiler/ast:VarDecl", ptr %t1688, i32 0, i32 2
  %t1691 = load ptr, ptr %t1690, !tbaa !29
  %t1693 = icmp eq ptr %t1691, null
  %t1695 = xor i1 %t1693, true
  store i1 %t1695, ptr %l834, !tbaa !21
  br label %bb384
bb383:
  store i1 false, ptr %l834, !tbaa !21
  br label %bb384
bb384:
  %t1697 = load i1, ptr %l834, !tbaa !21
  br i1 %t1697, label %bb385, label %bb386
bb385:
  %t1698 = load ptr, ptr %l2, !tbaa !29
  %t1700 = getelementptr %"compiler/ast:VarDecl", ptr %t1698, i32 0, i32 2
  %t1701 = load ptr, ptr %t1700, !tbaa !29
  %t1703 = icmp eq ptr %t1701, null
  br i1 %t1703, label %bb387, label %bb388
bb386:
  store i1 false, ptr %l839, !tbaa !21
  br label %bb391
bb387:
  call void @__olang_check_failed(ptr @olang_loc_3fb68a5e1b4562d9_d329c5eb93afbebd)
  unreachable
bb388:
  br label %bb389
bb389:
  %t1705 = load ptr, ptr %l2, !tbaa !29
  %t1707 = getelementptr %"compiler/ast:VarDecl", ptr %t1705, i32 0, i32 2
  %t1708 = load ptr, ptr %t1707, !tbaa !29
  %t1710 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsWeak(ptr %v1, ptr %t1708)
  store i1 %t1710, ptr %l845
  br label %bb390
bb390:
  %t1711 = load i1, ptr %l845, !tbaa !21
  store i1 %t1711, ptr %l839, !tbaa !21
  br label %bb391
bb391:
  %t1712 = load i1, ptr %l839, !tbaa !21
  br i1 %t1712, label %bb392, label %bb393
bb392:
  %t1713 = load ptr, ptr %l0, !tbaa !29
  %t1714 = load ptr, ptr %l2, !tbaa !29
  %t1716 = getelementptr %"compiler/ast:VarDecl", ptr %t1714, i32 0, i32 3
  %t1717 = load { i64, ptr }, ptr %t1716, !tbaa !27
  store { i64, ptr } %t1717, ptr %l848, !tbaa !27
  %t1718 = load i64, ptr %l24, !tbaa !24
  %t1720 = getelementptr { i64, ptr }, ptr %l848, i32 0, i32 1
  %t1721 = load ptr, ptr %t1720, !tbaa !27
  %t1722 = getelementptr ptr, ptr %t1721, i64 %t1718
  %t1723 = load ptr, ptr %t1722, !tbaa !39
  %t1726 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewInstance(ptr %v0, ptr %v1, ptr %t1713, ptr %t1723)
  store i32 %t1726, ptr %l851
  br label %bb394
bb393:
  br label %bb402
bb394:
  %t1727 = load i32, ptr %l851, !tbaa !23
  store i32 %t1727, ptr %l47, !tbaa !23
  %t1728 = load i32, ptr %l47, !tbaa !23
  %t1729 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1732 = icmp ne i32 %t1728, %t1729
  br i1 %t1732, label %bb395, label %bb396
bb395:
  store %olang.scope zeroinitializer, ptr %s42
  %t1734 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1734, ptr %l855, !tbaa !29
  %t1735 = load ptr, ptr %l2, !tbaa !29
  %t1737 = getelementptr %"compiler/ast:VarDecl", ptr %t1735, i32 0, i32 3
  %t1738 = load { i64, ptr }, ptr %t1737, !tbaa !27
  store { i64, ptr } %t1738, ptr %l857, !tbaa !27
  %t1739 = load i64, ptr %l24, !tbaa !24
  %t1741 = getelementptr { i64, ptr }, ptr %l857, i32 0, i32 1
  %t1742 = load ptr, ptr %t1741, !tbaa !27
  %t1743 = getelementptr ptr, ptr %t1742, i64 %t1739
  %t1744 = load ptr, ptr %t1743, !tbaa !39
  %t1746 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1744)
  store %"compiler/source:Span" %t1746, ptr %l860
  br label %bb397
bb396:
  br label %bb401
bb397:
  %t1747 = load ptr, ptr %l0, !tbaa !29
  %t1748 = load i32, ptr %l47, !tbaa !23
  %t1751 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s42, ptr %t1747, i32 %t1748)
  store { i64, ptr } %t1751, ptr %l863
  br label %bb398
bb398:
  %t1752 = load { i64, ptr }, ptr %l863, !tbaa !27
  %t1753 = extractvalue { i64, ptr } %t1752, 0
  %t1754 = extractvalue { i64, ptr } %t1752, 1
  %t1755 = mul i64 %t1753, 1
  %t1756 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1755)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1756, ptr %t1754, i64 %t1755, i1 false)
  %t1757 = insertvalue { i64, ptr } undef, i64 %t1753, 0
  %t1758 = insertvalue { i64, ptr } %t1757, ptr %t1756, 1
  %t1760 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakFresh(ptr %s42, ptr %s42, { i64, ptr } %t1758)
  store %"compiler/diagmsg:Msg" %t1760, ptr %l865
  br label %bb399
bb399:
  %t1761 = load ptr, ptr %l855, !tbaa !29
  %t1762 = load %"compiler/source:Span", ptr %l860
  %t1763 = load %"compiler/diagmsg:Msg", ptr %l865
  %t1764 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s42, ptr %t1761, %"compiler/source:Span" %t1762, %"compiler/diagmsg:Msg" %t1763)
  store i64 %t1764, ptr %l866
  br label %bb400
bb400:
  call void @__olang_scope_close(ptr %s42)
  br label %bb401
bb401:
  br label %bb402
bb402:
  %t1765 = load i1, ptr %l45, !tbaa !21
  br i1 %t1765, label %bb403, label %bb404
bb403:
  %t1767 = load ptr, ptr %l0, !tbaa !29
  %t1768 = load i32, ptr %l28, !tbaa !23
  %t1771 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1767, i32 %t1768)
  store i1 %t1771, ptr %l871
  br label %bb405
bb404:
  store i1 false, ptr %l868, !tbaa !21
  br label %bb406
bb405:
  %t1772 = load i1, ptr %l871, !tbaa !21
  store i1 %t1772, ptr %l868, !tbaa !21
  br label %bb406
bb406:
  %t1773 = load i1, ptr %l868, !tbaa !21
  br i1 %t1773, label %bb407, label %bb408
bb407:
  %t1774 = load ptr, ptr %l0, !tbaa !29
  %t1776 = getelementptr %"compiler/check:Checker", ptr %t1774, i32 0, i32 1
  %t1777 = load ptr, ptr %t1776, !tbaa !29
  %t1779 = getelementptr %"compiler/generic:Program", ptr %t1777, i32 0, i32 2
  %t1780 = load i32, ptr %l28, !tbaa !23
  %t1783 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t1779, i32 %t1780)
  store i64 %t1783, ptr %l877
  br label %bb409
bb408:
  store i1 false, ptr %l872, !tbaa !21
  br label %bb410
bb409:
  %t1784 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t1785 = load i64, ptr %l877, !tbaa !24
  %t1787 = and i64 %t1785, %t1784
  %t1789 = icmp ne i64 %t1787, 0
  store i1 %t1789, ptr %l872, !tbaa !21
  br label %bb410
bb410:
  %t1791 = load i1, ptr %l872, !tbaa !21
  br i1 %t1791, label %bb411, label %bb412
bb411:
  %t1792 = load ptr, ptr %l0, !tbaa !29
  %t1794 = getelementptr %"compiler/check:Checker", ptr %t1792, i32 0, i32 1
  %t1795 = load ptr, ptr %t1794, !tbaa !29
  %t1797 = getelementptr %"compiler/generic:Program", ptr %t1795, i32 0, i32 2
  store ptr %t1797, ptr %l884, !tbaa !29
  %t1798 = load ptr, ptr %l0, !tbaa !29
  %t1799 = load i32, ptr %l28, !tbaa !23
  %t1802 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1798, i32 %t1799)
  store i32 %t1802, ptr %l887
  br label %bb413
bb412:
  store i1 false, ptr %l881, !tbaa !21
  br label %bb415
bb413:
  %t1803 = load ptr, ptr %l884, !tbaa !29
  %t1804 = load i32, ptr %l887, !tbaa !23
  %t1805 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1803, i32 %t1804)
  store i32 %t1805, ptr %l888
  br label %bb414
bb414:
  %t1806 = load i32, ptr %l888, !range !{i32 0, i32 33}
  %t1808 = trunc i64 21 to i32
  %t1809 = icmp eq i32 %t1806, %t1808
  %t1811 = xor i1 %t1809, true
  store i1 %t1811, ptr %l881, !tbaa !21
  br label %bb415
bb415:
  %t1813 = load i1, ptr %l881, !tbaa !21
  br i1 %t1813, label %bb416, label %bb417
bb416:
  %t1814 = load ptr, ptr %l0, !tbaa !29
  %t1815 = load ptr, ptr %l29, !tbaa !29
  %t1818 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v0, ptr %t1814, ptr %t1815)
  store i1 %t1818, ptr %l895
  br label %bb418
bb417:
  store i1 false, ptr %l892, !tbaa !21
  br label %bb419
bb418:
  %t1819 = load i1, ptr %l895, !tbaa !21
  store i1 %t1819, ptr %l892, !tbaa !21
  br label %bb419
bb419:
  %t1820 = load i1, ptr %l892, !tbaa !21
  br i1 %t1820, label %bb420, label %bb421
bb420:
  %t1821 = load ptr, ptr %l0, !tbaa !29
  %t1823 = getelementptr %"compiler/check:Checker", ptr %t1821, i32 0, i32 1
  %t1824 = load ptr, ptr %t1823, !tbaa !29
  %t1826 = getelementptr %"compiler/generic:Program", ptr %t1824, i32 0, i32 2
  store ptr %t1826, ptr %l898, !tbaa !29
  %t1827 = load ptr, ptr %l0, !tbaa !29
  %t1829 = getelementptr %"compiler/check:Checker", ptr %t1827, i32 0, i32 1
  %t1830 = load ptr, ptr %t1829, !tbaa !29
  %t1832 = getelementptr %"compiler/generic:Program", ptr %t1830, i32 0, i32 2
  %t1833 = load i32, ptr %l28, !tbaa !23
  %t1836 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t1832, i32 %t1833)
  store i32 %t1836, ptr %l903
  br label %bb422
bb421:
  br label %bb425
bb422:
  %t1837 = load ptr, ptr %l0, !tbaa !29
  %t1839 = getelementptr %"compiler/check:Checker", ptr %t1837, i32 0, i32 1
  %t1840 = load ptr, ptr %t1839, !tbaa !29
  %t1842 = getelementptr %"compiler/generic:Program", ptr %t1840, i32 0, i32 2
  %t1843 = load i32, ptr %l28, !tbaa !23
  %t1846 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t1842, i32 %t1843)
  store i64 %t1846, ptr %l908
  br label %bb423
bb423:
  %t1847 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t1849 = xor i64 %t1847, -1
  %t1850 = load i64, ptr %l908, !tbaa !24
  %t1852 = and i64 %t1850, %t1849
  %t1853 = load ptr, ptr %l898, !tbaa !29
  %t1854 = load i32, ptr %l903, !tbaa !23
  %t1856 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t1853, i32 %t1854, i64 %t1852)
  store i32 %t1856, ptr %l912
  br label %bb424
bb424:
  %t1857 = load i32, ptr %l912, !tbaa !23
  store i32 %t1857, ptr %l28, !tbaa !23
  br label %bb425
bb425:
  %t1858 = load i64, ptr %l24, !tbaa !24
  %t1859 = load ptr, ptr %l2, !tbaa !29
  %t1861 = getelementptr %"compiler/ast:VarDecl", ptr %t1859, i32 0, i32 3
  %t1862 = load { i64, ptr }, ptr %t1861, !tbaa !27
  %t1864 = extractvalue { i64, ptr } %t1862, 0
  %t1867 = icmp slt i64 %t1858, %t1864
  br i1 %t1867, label %bb426, label %bb427
bb426:
  %t1869 = load i1, ptr %l45, !tbaa !21
  %t1871 = xor i1 %t1869, true
  store i1 %t1871, ptr %l918, !tbaa !21
  br label %bb428
bb427:
  store i1 false, ptr %l918, !tbaa !21
  br label %bb428
bb428:
  %t1873 = load i1, ptr %l918, !tbaa !21
  br i1 %t1873, label %bb429, label %bb430
bb429:
  %t1874 = load ptr, ptr %l0, !tbaa !29
  %t1875 = load i32, ptr %l28, !tbaa !23
  %t1878 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1874, i32 %t1875)
  store i1 %t1878, ptr %l924
  br label %bb431
bb430:
  store i1 false, ptr %l921, !tbaa !21
  br label %bb432
bb431:
  %t1879 = load i1, ptr %l924, !tbaa !21
  %t1880 = xor i1 %t1879, true
  store i1 %t1880, ptr %l921, !tbaa !21
  br label %bb432
bb432:
  %t1882 = load i1, ptr %l921, !tbaa !21
  br i1 %t1882, label %bb433, label %bb434
bb433:
  %t1883 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1883, ptr %l926, !tbaa !29
  %t1884 = load ptr, ptr %l29, !tbaa !29
  store ptr %t1884, ptr %l927, !tbaa !29
  %t1885 = load ptr, ptr %l2, !tbaa !29
  %t1887 = getelementptr %"compiler/ast:VarDecl", ptr %t1885, i32 0, i32 3
  %t1888 = load { i64, ptr }, ptr %t1887, !tbaa !27
  store { i64, ptr } %t1888, ptr %l929, !tbaa !27
  %t1889 = load i64, ptr %l24, !tbaa !24
  %t1891 = getelementptr { i64, ptr }, ptr %l929, i32 0, i32 1
  %t1892 = load ptr, ptr %t1891, !tbaa !27
  %t1893 = getelementptr ptr, ptr %t1892, i64 %t1889
  %t1894 = load ptr, ptr %t1893, !tbaa !39
  %t1896 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1894)
  store %"compiler/source:Span" %t1896, ptr %l932
  br label %bb435
bb434:
  br label %bb437
bb435:
  %t1897 = load i64, ptr @G_2ecompiler_2fcheck_2eRoDecl, !tbaa !24
  %t1898 = load ptr, ptr %l926, !tbaa !29
  %t1899 = load ptr, ptr %l927, !tbaa !29
  %t1900 = load %"compiler/source:Span", ptr %l932
  %t1902 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t1898, ptr %t1899, %"compiler/source:Span" %t1900, i64 %t1897)
  store i1 %t1902, ptr %l934
  br label %bb436
bb436:
  br label %bb437
bb437:
  %t1903 = load ptr, ptr %l0, !tbaa !29
  %t1904 = load ptr, ptr %l2, !tbaa !29
  %t1906 = getelementptr %"compiler/ast:VarDecl", ptr %t1904, i32 0, i32 0
  %t1907 = load { i64, ptr }, ptr %t1906, !tbaa !27
  store { i64, ptr } %t1907, ptr %l937, !tbaa !27
  %t1908 = load i64, ptr %l24, !tbaa !24
  %t1910 = getelementptr { i64, ptr }, ptr %l937, i32 0, i32 1
  %t1911 = load ptr, ptr %t1910, !tbaa !27
  %t1912 = getelementptr i32, ptr %t1911, i64 %t1908
  %t1913 = load i32, ptr %t1912, !tbaa !33
  %t1914 = load %"compiler/source:Span", ptr %l25
  %t1915 = load i32, ptr %l28, !tbaa !23
  %t1916 = load i32, ptr %l18, !range !{i32 0, i32 7}
  %t1917 = load { i64, [1 x i64] }, ptr %l15
  %t1924 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t1903, i32 %t1913, %"compiler/source:Span" %t1914, i32 %t1915, i32 %t1916, { i64, [1 x i64] } %t1917)
  store i64 %t1924, ptr %l944
  br label %bb438
bb438:
  %t1925 = load i64, ptr %l944, !tbaa !24
  store i64 %t1925, ptr %l48, !tbaa !24
  %t1926 = load i1, ptr %l30, !tbaa !21
  br i1 %t1926, label %bb439, label %bb440
bb439:
  %t1928 = load i64, ptr %l48, !tbaa !24
  store i64 %t1928, ptr %l49, !tbaa !24
  store i1 true, ptr %l50, !tbaa !21
  %t1930 = load ptr, ptr %l0, !tbaa !29
  %t1932 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1930)
  store ptr %t1932, ptr %l948
  br label %bb441
bb440:
  br label %bb443
bb441:
  %t1933 = load ptr, ptr %l948, !tbaa !29
  %t1935 = getelementptr %"compiler/typed:Body", ptr %t1933, i32 0, i32 7
  %t1936 = load i64, ptr %l49, !tbaa !24
  %t1939 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v0, ptr %t1935, i64 %t1936)
  store ptr %t1939, ptr %l952
  br label %bb442
bb442:
  %t1940 = load ptr, ptr %l952, !tbaa !29
  %t1942 = load i1, ptr %l50, !tbaa !21
  %t1945 = getelementptr %"compiler/typed:Local", ptr %t1940, i32 0, i32 7
  store i1 %t1942, ptr %t1945, !tbaa !21
  br label %bb443
bb443:
  %t1946 = load i64, ptr %l24, !tbaa !24
  %t1947 = load ptr, ptr %l2, !tbaa !29
  %t1949 = getelementptr %"compiler/ast:VarDecl", ptr %t1947, i32 0, i32 3
  %t1950 = load { i64, ptr }, ptr %t1949, !tbaa !27
  %t1952 = extractvalue { i64, ptr } %t1950, 0
  %t1955 = icmp slt i64 %t1946, %t1952
  br i1 %t1955, label %bb444, label %bb445
bb444:
  %t1957 = load ptr, ptr %l2, !tbaa !29
  %t1959 = getelementptr %"compiler/ast:VarDecl", ptr %t1957, i32 0, i32 5
  %t1960 = load i1, ptr %t1959, !tbaa !21
  %t1962 = xor i1 %t1960, true
  store i1 %t1962, ptr %l960, !tbaa !21
  br label %bb446
bb445:
  store i1 false, ptr %l960, !tbaa !21
  br label %bb446
bb446:
  %t1964 = load i1, ptr %l960, !tbaa !21
  br i1 %t1964, label %bb447, label %bb448
bb447:
  %t1965 = load ptr, ptr %l2, !tbaa !29
  %t1967 = getelementptr %"compiler/ast:VarDecl", ptr %t1965, i32 0, i32 0
  %t1968 = load { i64, ptr }, ptr %t1967, !tbaa !27
  %t1970 = extractvalue { i64, ptr } %t1968, 0
  %t1972 = icmp eq i64 %t1970, 1
  store i1 %t1972, ptr %l964, !tbaa !21
  br label %bb449
bb448:
  store i1 false, ptr %l964, !tbaa !21
  br label %bb449
bb449:
  %t1974 = load i1, ptr %l964, !tbaa !21
  br i1 %t1974, label %bb450, label %bb451
bb450:
  %t1975 = load ptr, ptr %l0, !tbaa !29
  %t1977 = getelementptr %"compiler/check:Checker", ptr %t1975, i32 0, i32 1
  %t1978 = load ptr, ptr %t1977, !tbaa !29
  %t1980 = getelementptr %"compiler/generic:Program", ptr %t1978, i32 0, i32 2
  store ptr %t1980, ptr %l972, !tbaa !29
  %t1981 = load ptr, ptr %l0, !tbaa !29
  %t1983 = getelementptr %"compiler/check:Checker", ptr %t1981, i32 0, i32 1
  %t1984 = load ptr, ptr %t1983, !tbaa !29
  %t1986 = getelementptr %"compiler/generic:Program", ptr %t1984, i32 0, i32 2
  %t1987 = load i32, ptr %l28, !tbaa !23
  %t1990 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1986, i32 %t1987)
  store i32 %t1990, ptr %l977
  br label %bb452
bb451:
  store i1 false, ptr %l969, !tbaa !21
  br label %bb454
bb452:
  %t1991 = load ptr, ptr %l972, !tbaa !29
  %t1992 = load i32, ptr %l977, !tbaa !23
  %t1993 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1991, i32 %t1992)
  store i32 %t1993, ptr %l978
  br label %bb453
bb453:
  %t1994 = load i32, ptr %l978, !range !{i32 0, i32 33}
  %t1996 = trunc i64 19 to i32
  %t1997 = icmp eq i32 %t1994, %t1996
  store i1 %t1997, ptr %l969, !tbaa !21
  br label %bb454
bb454:
  %t1999 = load i1, ptr %l969, !tbaa !21
  br i1 %t1999, label %bb455, label %bb456
bb455:
  %t2000 = load ptr, ptr %l0, !tbaa !29
  %t2002 = getelementptr %"compiler/check:Checker", ptr %t2000, i32 0, i32 1
  %t2003 = load ptr, ptr %t2002, !tbaa !29
  %t2005 = getelementptr %"compiler/generic:Program", ptr %t2003, i32 0, i32 2
  store ptr %t2005, ptr %l984, !tbaa !29
  %t2006 = load ptr, ptr %l0, !tbaa !29
  %t2008 = getelementptr %"compiler/check:Checker", ptr %t2006, i32 0, i32 1
  %t2009 = load ptr, ptr %t2008, !tbaa !29
  %t2011 = getelementptr %"compiler/generic:Program", ptr %t2009, i32 0, i32 2
  %t2012 = load i32, ptr %l28, !tbaa !23
  %t2015 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t2011, i32 %t2012)
  store i32 %t2015, ptr %l989
  br label %bb457
bb456:
  store i1 false, ptr %l981, !tbaa !21
  br label %bb459
bb457:
  %t2016 = load ptr, ptr %l984, !tbaa !29
  %t2017 = load i32, ptr %l989, !tbaa !23
  %t2018 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t2016, i32 %t2017)
  store i32 %t2018, ptr %l990
  br label %bb458
bb458:
  %t2019 = load i32, ptr %l990, !tbaa !23
  %t2020 = icmp ne i32 %t2019, 0
  store i1 %t2020, ptr %l981, !tbaa !21
  br label %bb459
bb459:
  %t2022 = load i1, ptr %l981, !tbaa !21
  br i1 %t2022, label %bb460, label %bb461
bb460:
  %t2023 = load ptr, ptr %l0, !tbaa !29
  %t2024 = load ptr, ptr %l29, !tbaa !29
  %t2027 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoClearMade(ptr %v0, ptr %v0, ptr %t2023, ptr %t2024)
  store i1 %t2027, ptr %l995
  br label %bb462
bb461:
  store i1 false, ptr %l992, !tbaa !21
  br label %bb463
bb462:
  %t2028 = load i1, ptr %l995, !tbaa !21
  store i1 %t2028, ptr %l992, !tbaa !21
  br label %bb463
bb463:
  %t2029 = load i1, ptr %l992, !tbaa !21
  br i1 %t2029, label %bb464, label %bb465
bb464:
  %t2030 = load i64, ptr %l48, !tbaa !24
  store i64 %t2030, ptr %l52, !tbaa !24
  store i1 true, ptr %l53, !tbaa !21
  %t2032 = load ptr, ptr %l0, !tbaa !29
  %t2034 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t2032)
  store ptr %t2034, ptr %l998
  br label %bb466
bb465:
  br label %bb468
bb466:
  %t2035 = load ptr, ptr %l998, !tbaa !29
  %t2037 = getelementptr %"compiler/typed:Body", ptr %t2035, i32 0, i32 7
  %t2038 = load i64, ptr %l52, !tbaa !24
  %t2041 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v0, ptr %t2037, i64 %t2038)
  store ptr %t2041, ptr %l1002
  br label %bb467
bb467:
  %t2042 = load ptr, ptr %l1002, !tbaa !29
  %t2044 = load i1, ptr %l53, !tbaa !21
  %t2047 = getelementptr %"compiler/typed:Local", ptr %t2042, i32 0, i32 6
  store i1 %t2044, ptr %t2047, !tbaa !21
  br label %bb468
bb468:
  %t2048 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 2
  %t2049 = load i64, ptr %t2048, !tbaa !24
  %t2051 = icmp sge i64 %t2049, 0
  br i1 %t2051, label %bb469, label %bb470
bb469:
  store %olang.scope zeroinitializer, ptr %s47
  %t2053 = load ptr, ptr %l0, !tbaa !29
  %t2055 = getelementptr %"compiler/check:Checker", ptr %t2053, i32 0, i32 112
  store ptr %t2055, ptr %l1008, !tbaa !29
  %t2056 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 0
  %t2057 = load i64, ptr %t2056, !tbaa !24
  %t2058 = load i64, ptr %l48, !tbaa !24
  %t2059 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 2
  %t2060 = load i64, ptr %t2059, !tbaa !24
  %t2061 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 3
  %t2062 = load i1, ptr %t2061, !tbaa !21
  %t2063 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 4
  %t2064 = load i64, ptr %t2063, !tbaa !24
  %t2065 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 5
  %t2066 = load %"compiler/source:Span", ptr %t2065
  %t2067 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 6
  %t2068 = load i32, ptr %t2067, !tbaa !23
  %t2069 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 7
  %t2070 = load i1, ptr %t2069, !tbaa !21
  %t2079 = call %"compiler/check:unsetCand" @compiler_2fcheck_3aunsetCand_2ector(ptr %s47, i64 %t2057, i64 %t2058, i64 %t2060, i1 %t2062, i64 %t2064, %"compiler/source:Span" %t2066, i32 %t2068, i1 %t2070)
  store %"compiler/check:unsetCand" %t2079, ptr %l1017
  br label %bb471
bb470:
  br label %bb473
bb471:
  %t2080 = load ptr, ptr %l1008, !tbaa !29
  %t2081 = load %"compiler/check:unsetCand", ptr %l1017
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2ePush_Hd5bae6439baa110b1f2b8b5b7cdda5ce(ptr %v0, ptr %t2080, %"compiler/check:unsetCand" %t2081)
  br label %bb472
bb472:
  call void @__olang_scope_close(ptr %s47)
  br label %bb473
bb473:
  %t2082 = load ptr, ptr %l2, !tbaa !29
  %t2084 = getelementptr %"compiler/ast:VarDecl", ptr %t2082, i32 0, i32 2
  %t2085 = load ptr, ptr %t2084, !tbaa !29
  %t2087 = icmp eq ptr %t2085, null
  %t2089 = xor i1 %t2087, true
  br i1 %t2089, label %bb474, label %bb475
bb474:
  %t2091 = load ptr, ptr %l2, !tbaa !29
  %t2093 = getelementptr %"compiler/ast:VarDecl", ptr %t2091, i32 0, i32 4
  %t2094 = load i1, ptr %t2093, !tbaa !21
  %t2096 = xor i1 %t2094, true
  store i1 %t2096, ptr %l1022, !tbaa !21
  br label %bb476
bb475:
  store i1 false, ptr %l1022, !tbaa !21
  br label %bb476
bb476:
  %t2098 = load i1, ptr %l1022, !tbaa !21
  br i1 %t2098, label %bb477, label %bb478
bb477:
  %t2099 = load ptr, ptr %l0, !tbaa !29
  %t2101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t2099)
  store ptr %t2101, ptr %l1027
  br label %bb479
bb478:
  br label %bb485
bb479:
  %t2102 = load ptr, ptr %l1027, !tbaa !29
  %t2104 = getelementptr %"compiler/check:frame", ptr %t2102, i32 0, i32 3
  store ptr %t2104, ptr %l1029, !tbaa !29
  %t2105 = load i64, ptr %l48, !tbaa !24
  store i64 %t2105, ptr %l1030, !tbaa !24
  %t2106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2106, ptr %l1031, !tbaa !29
  %t2107 = load ptr, ptr %l2, !tbaa !29
  %t2109 = getelementptr %"compiler/ast:VarDecl", ptr %t2107, i32 0, i32 2
  %t2110 = load ptr, ptr %t2109, !tbaa !29
  %t2112 = icmp eq ptr %t2110, null
  br i1 %t2112, label %bb480, label %bb481
bb480:
  call void @__olang_check_failed(ptr @olang_loc_794124879bbe2724_fc21d7c86e4799e8)
  unreachable
bb481:
  br label %bb482
bb482:
  %t2114 = load ptr, ptr %l2, !tbaa !29
  %t2116 = getelementptr %"compiler/ast:VarDecl", ptr %t2114, i32 0, i32 2
  %t2117 = load ptr, ptr %t2116, !tbaa !29
  %t2118 = load ptr, ptr %l1031, !tbaa !29
  %t2120 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %t2118, ptr %t2117)
  store { i64, [3 x i64] } %t2120, ptr %l1037
  br label %bb483
bb483:
  %t2121 = load ptr, ptr %l1029, !tbaa !29
  %t2122 = load i64, ptr %l1030, !tbaa !24
  %t2123 = load { i64, [3 x i64] }, ptr %l1037
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %t2121, i64 %t2122, { i64, [3 x i64] } %t2123)
  br label %bb484
bb484:
  br label %bb485
bb485:
  %t2124 = load i1, ptr %l45, !tbaa !21
  br i1 %t2124, label %bb486, label %bb487
bb486:
  %t2126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2126, ptr %l1039, !tbaa !29
  %t2127 = load i64, ptr %l48, !tbaa !24
  store i64 %t2127, ptr %l1040, !tbaa !24
  %t2128 = load ptr, ptr %l29, !tbaa !29
  %t2130 = icmp eq ptr %t2128, null
  br i1 %t2130, label %bb488, label %bb489
bb487:
  br label %bb492
bb488:
  call void @__olang_check_failed(ptr @olang_loc_2c22f34bd067d0f3_c6f2db583ea9f707)
  unreachable
bb489:
  br label %bb490
bb490:
  %t2132 = load ptr, ptr %l29, !tbaa !29
  %t2133 = load ptr, ptr %l1039, !tbaa !29
  %t2134 = load i64, ptr %l1040, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v0, ptr %t2133, i64 %t2134, ptr %t2132)
  br label %bb491
bb491:
  br label %bb492
bb492:
  %t2136 = load i1, ptr %l45, !tbaa !21
  br i1 %t2136, label %bb493, label %bb494
bb493:
  %t2138 = load ptr, ptr %l2, !tbaa !29
  %t2140 = getelementptr %"compiler/ast:VarDecl", ptr %t2138, i32 0, i32 5
  %t2141 = load i1, ptr %t2140, !tbaa !21
  %t2143 = xor i1 %t2141, true
  store i1 %t2143, ptr %l1045, !tbaa !21
  br label %bb495
bb494:
  store i1 false, ptr %l1045, !tbaa !21
  br label %bb495
bb495:
  %t2145 = load i1, ptr %l1045, !tbaa !21
  br i1 %t2145, label %bb496, label %bb497
bb496:
  %t2146 = load ptr, ptr %l0, !tbaa !29
  %t2147 = load i32, ptr %l28, !tbaa !23
  %t2150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t2146, i32 %t2147)
  store i1 %t2150, ptr %l1052
  br label %bb498
bb497:
  store i1 false, ptr %l1049, !tbaa !21
  br label %bb499
bb498:
  %t2151 = load i1, ptr %l1052, !tbaa !21
  store i1 %t2151, ptr %l1049, !tbaa !21
  br label %bb499
bb499:
  %t2152 = load i1, ptr %l1049, !tbaa !21
  br i1 %t2152, label %bb500, label %bb501
bb500:
  %t2153 = load ptr, ptr %l0, !tbaa !29
  %t2154 = load ptr, ptr %l2, !tbaa !29
  %t2156 = getelementptr %"compiler/ast:VarDecl", ptr %t2154, i32 0, i32 3
  %t2157 = load { i64, ptr }, ptr %t2156, !tbaa !27
  store { i64, ptr } %t2157, ptr %l1056, !tbaa !27
  %t2158 = load i64, ptr %l24, !tbaa !24
  %t2160 = getelementptr { i64, ptr }, ptr %l1056, i32 0, i32 1
  %t2161 = load ptr, ptr %t2160, !tbaa !27
  %t2162 = getelementptr ptr, ptr %t2161, i64 %t2158
  %t2163 = load ptr, ptr %t2162, !tbaa !39
  %t2166 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t2153, ptr %t2163)
  store i1 %t2166, ptr %l1059
  br label %bb502
bb501:
  store i1 false, ptr %l1053, !tbaa !21
  br label %bb503
bb502:
  %t2167 = load i1, ptr %l1059, !tbaa !21
  store i1 %t2167, ptr %l1053, !tbaa !21
  br label %bb503
bb503:
  %t2168 = load i1, ptr %l1053, !tbaa !21
  br i1 %t2168, label %bb504, label %bb505
bb504:
  store %olang.scope zeroinitializer, ptr %s50
  %t2169 = load ptr, ptr %l0, !tbaa !29
  %t2171 = getelementptr %"compiler/check:Checker", ptr %t2169, i32 0, i32 31
  store ptr %t2171, ptr %l1061, !tbaa !29
  %t2172 = load ptr, ptr %l0, !tbaa !29
  %t2174 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t2172)
  store ptr %t2174, ptr %l1063
  br label %bb506
bb505:
  br label %bb509
bb506:
  %t2175 = load ptr, ptr %l1063, !tbaa !29
  %t2177 = getelementptr %"compiler/check:frame", ptr %t2175, i32 0, i32 0
  %t2178 = load i64, ptr %t2177, !tbaa !24
  %t2179 = load i64, ptr %l48, !tbaa !24
  %t2182 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s50, i64 %t2178, i64 %t2179)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t2182, ptr %l1067
  br label %bb507
bb507:
  %t2183 = load ptr, ptr %l1061, !tbaa !29
  %t2184 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1067
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t2183, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t2184, i1 true)
  br label %bb508
bb508:
  call void @__olang_scope_close(ptr %s50)
  br label %bb509
bb509:
  %t2185 = load ptr, ptr %l2, !tbaa !29
  %t2187 = getelementptr %"compiler/ast:VarDecl", ptr %t2185, i32 0, i32 5
  %t2188 = load i1, ptr %t2187, !tbaa !21
  %t2190 = xor i1 %t2188, true
  br i1 %t2190, label %bb510, label %bb511
bb510:
  %t2192 = load i64, ptr %l24, !tbaa !24
  %t2193 = load ptr, ptr %l2, !tbaa !29
  %t2195 = getelementptr %"compiler/ast:VarDecl", ptr %t2193, i32 0, i32 3
  %t2196 = load { i64, ptr }, ptr %t2195, !tbaa !27
  %t2198 = extractvalue { i64, ptr } %t2196, 0
  %t2201 = icmp slt i64 %t2192, %t2198
  store i1 %t2201, ptr %l1071, !tbaa !21
  br label %bb512
bb511:
  store i1 false, ptr %l1071, !tbaa !21
  br label %bb512
bb512:
  %t2203 = load i1, ptr %l1071, !tbaa !21
  br i1 %t2203, label %bb513, label %bb514
bb513:
  %t2204 = load ptr, ptr %l0, !tbaa !29
  %t2205 = load i32, ptr %l28, !tbaa !23
  %t2208 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainScalar(ptr %v0, ptr %t2204, i32 %t2205)
  store i1 %t2208, ptr %l1080
  br label %bb515
bb514:
  store i1 false, ptr %l1077, !tbaa !21
  br label %bb516
bb515:
  %t2209 = load i1, ptr %l1080, !tbaa !21
  store i1 %t2209, ptr %l1077, !tbaa !21
  br label %bb516
bb516:
  %t2210 = load i1, ptr %l1077, !tbaa !21
  br i1 %t2210, label %bb517, label %bb518
bb517:
  store %olang.scope zeroinitializer, ptr %s51
  %t2211 = load ptr, ptr %l0, !tbaa !29
  %t2213 = getelementptr %"compiler/check:Checker", ptr %t2211, i32 0, i32 141
  store ptr %t2213, ptr %l1082, !tbaa !29
  %t2214 = load ptr, ptr %l0, !tbaa !29
  %t2216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t2214)
  store ptr %t2216, ptr %l1084
  br label %bb519
bb518:
  br label %bb523
bb519:
  %t2217 = load ptr, ptr %l1084, !tbaa !29
  %t2219 = getelementptr %"compiler/check:frame", ptr %t2217, i32 0, i32 0
  %t2220 = load i64, ptr %t2219, !tbaa !24
  %t2221 = load i64, ptr %l48, !tbaa !24
  %t2224 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s51, i64 %t2220, i64 %t2221)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t2224, ptr %l1088
  br label %bb520
bb520:
  %t2225 = load ptr, ptr %l2, !tbaa !29
  %t2227 = getelementptr %"compiler/ast:VarDecl", ptr %t2225, i32 0, i32 3
  %t2228 = load { i64, ptr }, ptr %t2227, !tbaa !27
  store { i64, ptr } %t2228, ptr %l1090, !tbaa !27
  %t2229 = load i64, ptr %l24, !tbaa !24
  %t2231 = getelementptr { i64, ptr }, ptr %l1090, i32 0, i32 1
  %t2232 = load ptr, ptr %t2231, !tbaa !27
  %t2233 = getelementptr ptr, ptr %t2232, i64 %t2229
  %t2234 = load ptr, ptr %t2233, !tbaa !39
  %t2235 = load i32, ptr %l28, !tbaa !23
  %t2238 = call %"compiler/check:fixedInit" @compiler_2fcheck_3afixedInit_2ector(ptr %v1, ptr %v0, ptr %t2234, i32 %t2235)
  store %"compiler/check:fixedInit" %t2238, ptr %l1094
  br label %bb521
bb521:
  %t2239 = load ptr, ptr %l1082, !tbaa !29
  %t2240 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1088
  %t2241 = load %"compiler/check:fixedInit", ptr %l1094
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5daf2b89f219287cc2404f0b0e96c809(ptr %v0, ptr %v0, ptr %t2239, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t2240, %"compiler/check:fixedInit" %t2241)
  br label %bb522
bb522:
  call void @__olang_scope_close(ptr %s51)
  br label %bb523
bb523:
  %t2242 = load i64, ptr %l24, !tbaa !24
  %t2243 = load ptr, ptr %l2, !tbaa !29
  %t2245 = getelementptr %"compiler/ast:VarDecl", ptr %t2243, i32 0, i32 3
  %t2246 = load { i64, ptr }, ptr %t2245, !tbaa !27
  %t2248 = extractvalue { i64, ptr } %t2246, 0
  %t2251 = icmp slt i64 %t2242, %t2248
  br i1 %t2251, label %bb524, label %bb525
bb524:
  %t2253 = load ptr, ptr %l0, !tbaa !29
  %t2254 = load i32, ptr %l28, !tbaa !23
  %t2257 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t2253, i32 %t2254)
  store i1 %t2257, ptr %l1103
  br label %bb526
bb525:
  store i1 false, ptr %l1100, !tbaa !21
  br label %bb527
bb526:
  %t2258 = load i1, ptr %l1103, !tbaa !21
  %t2259 = xor i1 %t2258, true
  store i1 %t2259, ptr %l1100, !tbaa !21
  br label %bb527
bb527:
  %t2261 = load i1, ptr %l1100, !tbaa !21
  br i1 %t2261, label %bb528, label %bb529
bb528:
  %t2262 = load ptr, ptr %l0, !tbaa !29
  %t2264 = getelementptr %"compiler/check:Checker", ptr %t2262, i32 0, i32 1
  %t2265 = load ptr, ptr %t2264, !tbaa !29
  %t2267 = getelementptr %"compiler/generic:Program", ptr %t2265, i32 0, i32 2
  %t2268 = load i32, ptr %l28, !tbaa !23
  %t2271 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t2267, i32 %t2268)
  store i1 %t2271, ptr %l1110
  br label %bb530
bb529:
  store i1 false, ptr %l1105, !tbaa !21
  br label %bb531
bb530:
  %t2272 = load i1, ptr %l1110, !tbaa !21
  store i1 %t2272, ptr %l1105, !tbaa !21
  br label %bb531
bb531:
  %t2273 = load i1, ptr %l1105, !tbaa !21
  br i1 %t2273, label %bb532, label %bb533
bb532:
  %t2274 = load i1, ptr %l46, !tbaa !21
  %t2276 = xor i1 %t2274, true
  store i1 %t2276, ptr %l1111, !tbaa !21
  br label %bb534
bb533:
  store i1 false, ptr %l1111, !tbaa !21
  br label %bb534
bb534:
  %t2278 = load i1, ptr %l1111, !tbaa !21
  br i1 %t2278, label %bb535, label %bb536
bb535:
  %t2279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2279, ptr %l1114, !tbaa !29
  %t2280 = load ptr, ptr %l29, !tbaa !29
  %t2282 = icmp eq ptr %t2280, null
  br i1 %t2282, label %bb537, label %bb538
bb536:
  br label %bb541
bb537:
  call void @__olang_check_failed(ptr @olang_loc_d0518beb2c6ede06_d5bdb61bd652bbc2)
  unreachable
bb538:
  br label %bb539
bb539:
  %t2284 = load ptr, ptr %l29, !tbaa !29
  %t2285 = load ptr, ptr %l1114, !tbaa !29
  %t2287 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t2285, ptr %t2284)
  store ptr %t2287, ptr %l1118
  br label %bb540
bb540:
  %t2288 = load ptr, ptr %l1118, !tbaa !29
  store ptr %t2288, ptr %l29, !tbaa !29
  br label %bb541
bb541:
  %t2290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2290, ptr %l1120, !tbaa !29
  %t2291 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t2291, ptr %l1121
  %t2292 = load i64, ptr %l48, !tbaa !24
  %t2294 = trunc i64 %t2292 to i32
  store i32 %t2294, ptr %l1124, !tbaa !23
  %t2296 = load ptr, ptr %l29, !tbaa !29
  %t2298 = icmp eq ptr %t2296, null
  br i1 %t2298, label %bb542, label %bb543
bb542:
  call void @__olang_check_failed(ptr @olang_loc_d272211c05fc00ed_3c47c1e1bb4a7a9)
  unreachable
bb543:
  br label %bb544
bb544:
  %t2300 = load ptr, ptr %l29, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t2301
  %t2302 = getelementptr { i64, [3 x i64] }, ptr %t2301, i32 0, i32 0
  store i64 0, ptr %t2302
  %t2303 = load %"compiler/source:Span", ptr %l1121
  %t2304 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2303, 0
  %t2305 = load i32, ptr %l1124, !tbaa !23
  %t2306 = insertvalue { %"compiler/source:Span", i32, ptr } %t2304, i32 %t2305, 1
  %t2308 = insertvalue { %"compiler/source:Span", i32, ptr } %t2306, ptr %t2300, 2
  %t2309 = getelementptr { i64, [3 x i64] }, ptr %t2301, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2308, ptr %t2309
  %t2310 = load { i64, [3 x i64] }, ptr %t2301
  %t2312 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t2310, ptr %t2312
  %t2313 = load ptr, ptr %l1120, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t2313, ptr %t2312)
  br label %bb545
bb545:
  %t2315 = load ptr, ptr %l2, !tbaa !29
  %t2317 = getelementptr %"compiler/ast:VarDecl", ptr %t2315, i32 0, i32 5
  %t2318 = load i1, ptr %t2317, !tbaa !21
  br i1 %t2318, label %bb546, label %bb547
bb546:
  %t2320 = load ptr, ptr %l0, !tbaa !29
  %t2322 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t2320)
  store ptr %t2322, ptr %l1133
  br label %bb548
bb547:
  br label %bb550
bb548:
  %t2323 = load ptr, ptr %l1133, !tbaa !29
  %t2325 = getelementptr %"compiler/typed:Body", ptr %t2323, i32 0, i32 10
  %t2326 = load i64, ptr %l48, !tbaa !24
  %t2328 = trunc i64 %t2326 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t2325, i32 %t2328)
  br label %bb549
bb549:
  br label %bb550
bb550:
  %t2332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2332, ptr %l1139, !tbaa !29
  %t2333 = load i64, ptr %l48, !tbaa !24
  store i64 %t2333, ptr %l1140, !tbaa !24
  %t2334 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t2334, ptr %l1141
  %t2335 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 3
  %t2336 = load i1, ptr %t2335, !tbaa !21
  %t2338 = xor i1 %t2336, true
  br i1 %t2338, label %bb551, label %bb552
bb551:
  store i1 true, ptr %l1144, !tbaa !21
  br label %bb553
bb552:
  %t2340 = getelementptr %"compiler/check:unsetCand", ptr %l31, i32 0, i32 2
  %t2341 = load i64, ptr %t2340, !tbaa !24
  %t2343 = icmp slt i64 %t2341, 0
  store i1 %t2343, ptr %l1144, !tbaa !21
  br label %bb553
bb553:
  %t2345 = load ptr, ptr %l1139, !tbaa !29
  %t2346 = load i64, ptr %l1140, !tbaa !24
  %t2347 = load %"compiler/source:Span", ptr %l1141
  %t2348 = load i1, ptr %l1144, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %t2345, i64 %t2346, %"compiler/source:Span" %t2347, i1 %t2348)
  br label %bb554
bb554:
  call void @__olang_scope_close(ptr %s14)
  br label %bb555
bb555:
  %t2349 = load i64, ptr %l23, !tbaa !24
  %t2351 = add i64 %t2349, 1
  store i64 %t2351, ptr %l23, !tbaa !24
  br label %bb109
bb556:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i32
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i64
  %l16 = alloca %"compiler/generic:Origin"
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i32
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l59 = alloca i1
  %l64 = alloca i1
  %l68 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l81 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l90 = alloca i1
  %l94 = alloca i1
  %l98 = alloca i1
  %l109 = alloca i1
  %l118 = alloca ptr
  %l120 = alloca ptr
  %l125 = alloca i32
  %l128 = alloca i1
  %l131 = alloca %"compiler/source:Span"
  %l132 = alloca i32
  %l134 = alloca %"compiler/source:Span"
  %l137 = alloca %"compiler/source:Span"
  %l138 = alloca ptr
  %l141 = alloca i32
  %l142 = alloca i64
  %l145 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l149 = alloca { i64, ptr }
  %l151 = alloca %"compiler/diagmsg:Msg"
  %l152 = alloca i64
  %l157 = alloca %"compiler/generic:Origin"
  %l158 = alloca ptr
  %l160 = alloca ptr
  %l164 = alloca i64
  %l165 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l178 = alloca { i64, [3 x i64] }
  %l179 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l184 = alloca %"compiler/diagmsg:Msg"
  %l185 = alloca i64
  %l189 = alloca ptr
  %l190 = alloca i64
  %l193 = alloca { i64, [3 x i64] }
  %l194 = alloca %"compiler/diagmsg:Msg"
  %l197 = alloca ptr
  %l198 = alloca i1
  %l211 = alloca i1
  %l214 = alloca i1
  %l217 = alloca i1
  %l218 = alloca ptr
  %l220 = alloca ptr
  %l222 = alloca ptr
  %l226 = alloca i32
  %l227 = alloca i32
  %l228 = alloca ptr
  %l232 = alloca %"compiler/source:Span"
  %l233 = alloca i32
  %l235 = alloca i32
  %l237 = alloca %"compiler/diagmsg:Msg"
  %l238 = alloca %"compiler/diagmsg:Msg"
  %l241 = alloca { i64, ptr }
  %l243 = alloca %"compiler/diagmsg:Msg"
  %l244 = alloca i64
  %l250 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca i1
  %l259 = alloca ptr
  %l260 = alloca %"compiler/source:Span"
  %l261 = alloca ptr
  %l263 = alloca %"compiler/source:Span"
  %l264 = alloca { i64, ptr }
  %l265 = alloca %"compiler/diagmsg:Msg"
  %l266 = alloca i64
  %l268 = alloca ptr
  %l269 = alloca i1
  %l272 = alloca i1
  %l274 = alloca ptr
  %l275 = alloca i1
  %l284 = alloca ptr
  %l286 = alloca %"compiler/source:Span"
  %l287 = alloca %"compiler/diagmsg:Msg"
  %l288 = alloca i64
  %l290 = alloca ptr
  %l291 = alloca i1
  %l295 = alloca ptr
  %l296 = alloca i1
  %l303 = alloca i1
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca i1
  %t328 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 97
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 97
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t15 = load ptr, ptr %l34, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l34, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 8}
  %t21 = icmp eq i64 %t19, 0
  store i1 %t21, ptr %l35, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l35, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t25, i32 0, i32 0
  %t27 = load %"compiler/source:Span", ptr %t26
  store %"compiler/source:Span" %t27, ptr %l3
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t31, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t37, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38
  store { i64, ptr } %t39, ptr %l5, !tbaa !27
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l3
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedMet(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t41, ptr %t42, %"compiler/source:Span" %t43, { i64, ptr } %t44, { i64, ptr } %t45)
  store i1 %t51, ptr %l49
  br label %bb9
bb9:
  %t52 = load i1, ptr %l49, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
bb10:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t54 = load ptr, ptr %l50, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb11, label %bb12
bb11:
  %t57 = load ptr, ptr %l50, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 3
  store i1 %t60, ptr %l51, !tbaa !21
  br label %bb12
bb12:
  %t61 = load i1, ptr %l51, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l6, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t70, i32 0, i32 3
  %t72 = load i1, ptr %t71
  store i1 %t72, ptr %l7, !tbaa !21
  br label %bb15
bb14:
  br label %bb88
bb15:
  %t74 = load i1, ptr %l7, !tbaa !21
  br i1 %t74, label %bb16, label %bb17
bb16:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t78 = load ptr, ptr %l6, !tbaa !29
  %t79 = load i1, ptr %l2, !tbaa !21
  %t84 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakMet(ptr %v0, ptr %v1, ptr %v1, ptr %t76, ptr %t77, ptr %t78, i1 %t79)
  store i1 %t84, ptr %l64
  br label %bb18
bb17:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb19
bb18:
  %t85 = load i1, ptr %l64, !tbaa !21
  %t86 = xor i1 %t85, true
  store i1 %t86, ptr %l59, !tbaa !21
  br label %bb19
bb19:
  %t88 = load i1, ptr %l59, !tbaa !21
  br i1 %t88, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t90 = load i1, ptr %l2, !tbaa !21
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t92 = load i1, ptr %l7, !tbaa !21
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l68, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb25
bb25:
  %t96 = load i1, ptr %l68, !tbaa !21
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHeld(ptr %v0, ptr %v1, ptr %t97, ptr %t98)
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t101 = load ptr, ptr %l6, !tbaa !29
  store ptr %t101, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t102 = load ptr, ptr %l73, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb30, label %bb31
bb30:
  %t105 = load ptr, ptr %l73, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 8}
  %t108 = icmp eq i64 %t106, 5
  store i1 %t108, ptr %l74, !tbaa !21
  br label %bb31
bb31:
  %t109 = load i1, ptr %l74, !tbaa !21
  br i1 %t109, label %bb32, label %bb33
bb32:
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t112 = getelementptr { i64, [5 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", ptr }, ptr %t112, i32 0, i32 1
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l8, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l8, !tbaa !29
  %t120 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyWritten(ptr %v0, ptr %v1, ptr %t116, ptr %t117)
  store i1 %t120, ptr %l81
  br label %bb35
bb35:
  %t121 = load i1, ptr %l81, !tbaa !21
  store i1 %t121, ptr %rv
  br label %ret
bb36:
  %t122 = load ptr, ptr %l6, !tbaa !29
  store ptr %t122, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t123 = load ptr, ptr %l82, !tbaa !29
  %t124 = icmp ne ptr %t123, null
  br i1 %t124, label %bb37, label %bb38
bb37:
  %t126 = load ptr, ptr %l82, !tbaa !29
  %t127 = load i64, ptr %t126, !range !{i64 0, i64 8}
  %t129 = icmp eq i64 %t127, 1
  store i1 %t129, ptr %l83, !tbaa !21
  br label %bb38
bb38:
  %t130 = load i1, ptr %l83, !tbaa !21
  br i1 %t130, label %bb39, label %bb40
bb39:
  %t131 = load ptr, ptr %l6, !tbaa !29
  %t133 = getelementptr { i64, [5 x i64] }, ptr %t131, i32 0, i32 1
  %t134 = getelementptr { %"compiler/source:Span", ptr }, ptr %t133, i32 0, i32 1
  %t135 = load ptr, ptr %t134
  store ptr %t135, ptr %l9, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l9, !tbaa !29
  %t141 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esigWritten(ptr %v0, ptr %v1, ptr %t137, ptr %t138)
  store i1 %t141, ptr %l90
  br label %bb42
bb42:
  %t142 = load i1, ptr %l90, !tbaa !21
  store i1 %t142, ptr %rv
  br label %ret
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_a757b13292ee07be_48a52c46e9cd849a)
  unreachable
bb48:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t149 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitWritten(ptr %v0, ptr %v1, ptr %v1, ptr %t143, ptr %t144, ptr %t145)
  store i1 %t149, ptr %l94
  br label %bb49
bb49:
  %t150 = load i1, ptr %l94, !tbaa !21
  br i1 %t150, label %bb50, label %bb51
bb50:
  store i1 false, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l6, !tbaa !29
  %t156 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %t152, ptr %t153)
  store i1 %t156, ptr %l98
  br label %bb53
bb53:
  %t157 = load i1, ptr %l98, !tbaa !21
  br i1 %t157, label %bb54, label %bb55
bb54:
  store i1 true, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/check:Checker", ptr %t159, i32 0, i32 96
  %t162 = load i1, ptr %t161, !tbaa !21
  store i1 %t162, ptr %l10, !tbaa !21
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 101
  %t167 = load i1, ptr %t166, !tbaa !21
  store i1 %t167, ptr %l11, !tbaa !21
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 96
  store i1 true, ptr %t171, !tbaa !21
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/check:Checker", ptr %t172, i32 0, i32 101
  store i1 true, ptr %t174, !tbaa !21
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l6, !tbaa !29
  %t180 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t175, ptr %t176)
  store i1 %t180, ptr %l109
  br label %bb57
bb57:
  %t181 = load i1, ptr %l109, !tbaa !21
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i1, ptr %l10, !tbaa !21
  %t186 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 96
  store i1 %t183, ptr %t186, !tbaa !21
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i1, ptr %l11, !tbaa !21
  %t191 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 101
  store i1 %t188, ptr %t191, !tbaa !21
  %t194 = xor i1 %t181, true
  br i1 %t194, label %bb58, label %bb59
bb58:
  store i1 false, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  store ptr %t200, ptr %l118, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t201)
  store ptr %t203, ptr %l120
  br label %bb61
bb61:
  %t204 = load ptr, ptr %l120, !tbaa !29
  %t206 = getelementptr %"compiler/check:frame", ptr %t204, i32 0, i32 4
  %t207 = load ptr, ptr %l6, !tbaa !29
  %t209 = load ptr, ptr %l118, !tbaa !29
  %t212 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t209, ptr %t206, ptr %t207)
  store i32 %t212, ptr %l125
  br label %bb62
bb62:
  %t213 = load i32, ptr %l125, !tbaa !23
  store i32 %t213, ptr %l13, !tbaa !23
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i32, ptr %l13, !tbaa !23
  %t218 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %t214, i32 %t215)
  store i1 %t218, ptr %l128
  br label %bb63
bb63:
  %t219 = load i1, ptr %l128, !tbaa !21
  %t220 = xor i1 %t219, true
  br i1 %t220, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s12
  %t222 = load ptr, ptr %l6, !tbaa !29
  %t224 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t222)
  store %"compiler/source:Span" %t224, ptr %l131
  br label %bb66
bb65:
  br label %bb87
bb66:
  %t225 = getelementptr %"compiler/source:Span", ptr %l131, i32 0, i32 1
  %t226 = load i32, ptr %t225, !tbaa !23
  store i32 %t226, ptr %l132, !tbaa !23
  %t227 = load ptr, ptr %l6, !tbaa !29
  %t229 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t227)
  store %"compiler/source:Span" %t229, ptr %l134
  br label %bb67
bb67:
  %t230 = getelementptr %"compiler/source:Span", ptr %l134, i32 0, i32 1
  %t231 = load i32, ptr %t230, !tbaa !23
  %t233 = add i32 %t231, 1
  %t234 = load i32, ptr %l132, !tbaa !23
  %t236 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s12, i32 %t234, i32 %t233)
  store %"compiler/source:Span" %t236, ptr %l137
  br label %bb68
bb68:
  %t237 = load %"compiler/source:Span", ptr %l137
  store %"compiler/source:Span" %t237, ptr %l14
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l138, !tbaa !29
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l13, !tbaa !23
  %t243 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t243, ptr %l141
  br label %bb69
bb69:
  %t244 = load ptr, ptr %l138, !tbaa !29
  %t245 = load i32, ptr %l141, !tbaa !23
  %t246 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundBy(ptr %v0, ptr %t244, i32 %t245)
  store i64 %t246, ptr %l142
  br label %bb70
bb70:
  %t247 = load i64, ptr %l142, !tbaa !24
  store i64 %t247, ptr %l15, !tbaa !24
  %t248 = load i64, ptr %l15, !tbaa !24
  %t250 = icmp slt i64 %t248, 0
  br i1 %t250, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s13
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l145, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t253, ptr %l146
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i32, ptr %l13, !tbaa !23
  %t258 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s13, ptr %t254, i32 %t255)
  store { i64, ptr } %t258, ptr %l149
  br label %bb73
bb72:
  br label %bb76
bb73:
  %t259 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 0
  %t261 = extractvalue { i64, ptr } %t259, 1
  %t262 = mul i64 %t260, 1
  %t263 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t262)
  call void @llvm.memcpy.p0.p0.i64(ptr %t263, ptr %t261, i64 %t262, i1 false)
  %t264 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  %t267 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInvalidReferenceTarget(ptr %s13, ptr %s13, { i64, ptr } %t265)
  store %"compiler/diagmsg:Msg" %t267, ptr %l151
  br label %bb74
bb74:
  %t268 = load ptr, ptr %l145, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l146
  %t270 = load %"compiler/diagmsg:Msg", ptr %l151
  %t271 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s13, ptr %t268, %"compiler/source:Span" %t269, %"compiler/diagmsg:Msg" %t270)
  store i64 %t271, ptr %l152
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s12)
  store i1 false, ptr %rv
  br label %ret
bb76:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t277 = load i64, ptr %l15, !tbaa !24
  %t280 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t276, i64 %t277)
  store %"compiler/generic:Origin" %t280, ptr %l157
  br label %bb77
bb77:
  %t281 = load %"compiler/generic:Origin", ptr %l157
  store %"compiler/generic:Origin" %t281, ptr %l16
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l158, !tbaa !29
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/check:Checker", ptr %t283, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !29
  store ptr %t286, ptr %l160, !tbaa !29
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t291 = load i64, ptr %l15, !tbaa !24
  %t294 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t290, i64 %t291)
  store i64 %t294, ptr %l164
  br label %bb78
bb78:
  %t295 = load ptr, ptr %l160, !tbaa !29
  %t296 = load i64, ptr %l164, !tbaa !24
  %t297 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s12, ptr %t295, i64 %t296)
  store ptr %t297, ptr %l165
  br label %bb79
bb79:
  %t298 = load ptr, ptr %l165, !tbaa !29
  %t300 = getelementptr %"compiler/ast:Func", ptr %t298, i32 0, i32 2
  %t301 = load i32, ptr %t300, !tbaa !23
  %t302 = load ptr, ptr %l158, !tbaa !29
  %t304 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t302, i32 %t301)
  store { i64, ptr } %t304, ptr %l168
  br label %bb80
bb80:
  %t305 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/check:Checker", ptr %t306, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t311 = getelementptr %"compiler/generic:Program", ptr %t309, i32 0, i32 0
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = getelementptr %"compiler/load:Loader", ptr %t312, i32 0, i32 4
  %t315 = load ptr, ptr %t314, !tbaa !29
  store ptr %t315, ptr %l172, !tbaa !29
  %t316 = getelementptr %"compiler/generic:Origin", ptr %l16, i32 0, i32 0
  %t317 = load i64, ptr %t316, !tbaa !24
  %t318 = getelementptr %"compiler/generic:Origin", ptr %l16, i32 0, i32 1
  %t319 = getelementptr %"compiler/source:Span", ptr %t318, i32 0, i32 0
  %t320 = load i32, ptr %t319, !tbaa !23
  %t322 = sext i32 %t320 to i64
  %t323 = getelementptr %"compiler/generic:Origin", ptr %l16, i32 0, i32 1
  %t324 = getelementptr %"compiler/source:Span", ptr %t323, i32 0, i32 1
  %t325 = load i32, ptr %t324, !tbaa !23
  %t327 = sext i32 %t325 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t328
  %t329 = getelementptr { i64, [3 x i64] }, ptr %t328, i32 0, i32 0
  store i64 3, ptr %t329
  %t331 = insertvalue { i64, i64, i64 } undef, i64 %t317, 0
  %t333 = insertvalue { i64, i64, i64 } %t331, i64 %t322, 1
  %t335 = insertvalue { i64, i64, i64 } %t333, i64 %t327, 2
  %t336 = getelementptr { i64, [3 x i64] }, ptr %t328, i32 0, i32 1
  store { i64, i64, i64 } %t335, ptr %t336
  %t337 = load { i64, [3 x i64] }, ptr %t328
  store { i64, [3 x i64] } %t337, ptr %l178
  store { i64, ptr } %t305, ptr %l179, !tbaa !27
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i32, ptr %l13, !tbaa !23
  %t343 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t339, i32 %t340)
  store { i64, ptr } %t343, ptr %l182
  br label %bb81
bb81:
  %t344 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = extractvalue { i64, ptr } %t344, 1
  %t347 = mul i64 %t345, 1
  %t348 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  %t351 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t353 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceNotReferable(ptr %v0, ptr %s12, ptr %s12, { i64, ptr } %t351, { i64, ptr } %t350)
  store %"compiler/diagmsg:Msg" %t353, ptr %l184
  br label %bb82
bb82:
  %t354 = load ptr, ptr %l172, !tbaa !29
  %t355 = load { i64, [3 x i64] }, ptr %l178
  %t356 = load %"compiler/diagmsg:Msg", ptr %l184
  %t357 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %s12, ptr %t354, { i64, [3 x i64] } %t355, %"compiler/diagmsg:Msg" %t356)
  store i64 %t357, ptr %l185
  br label %bb83
bb83:
  %t358 = load i64, ptr %l185, !tbaa !24
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/check:Checker", ptr %t359, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !29
  %t364 = getelementptr %"compiler/generic:Program", ptr %t362, i32 0, i32 0
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t367 = getelementptr %"compiler/load:Loader", ptr %t365, i32 0, i32 4
  %t368 = load ptr, ptr %t367, !tbaa !29
  store ptr %t368, ptr %l189, !tbaa !29
  store i64 %t358, ptr %l190, !tbaa !24
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l14
  %t374 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t370, %"compiler/source:Span" %t371)
  store { i64, [3 x i64] } %t374, ptr %l193
  br label %bb84
bb84:
  %t375 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInstanceRef(ptr %s12)
  store %"compiler/diagmsg:Msg" %t375, ptr %l194
  br label %bb85
bb85:
  %t376 = load ptr, ptr %l189, !tbaa !29
  %t377 = load i64, ptr %l190, !tbaa !24
  %t378 = load { i64, [3 x i64] }, ptr %l193
  %t379 = load %"compiler/diagmsg:Msg", ptr %l194
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s12, ptr %t376, i64 %t377, { i64, [3 x i64] } %t378, %"compiler/diagmsg:Msg" %t379)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s12)
  store i1 false, ptr %rv
  br label %ret
bb87:
  store i1 true, ptr %rv
  br label %ret
bb88:
  %t382 = load ptr, ptr %l1, !tbaa !29
  store ptr %t382, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t383 = load ptr, ptr %l197, !tbaa !29
  %t384 = icmp ne ptr %t383, null
  br i1 %t384, label %bb89, label %bb90
bb89:
  %t386 = load ptr, ptr %l197, !tbaa !29
  %t387 = load i64, ptr %t386, !range !{i64 0, i64 8}
  %t389 = icmp eq i64 %t387, 4
  store i1 %t389, ptr %l198, !tbaa !21
  br label %bb90
bb90:
  %t390 = load i1, ptr %l198, !tbaa !21
  br i1 %t390, label %bb91, label %bb92
bb91:
  %t391 = load ptr, ptr %l1, !tbaa !29
  %t393 = getelementptr { i64, [5 x i64] }, ptr %t391, i32 0, i32 1
  %t394 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t393, i32 0, i32 0
  %t395 = load %"compiler/source:Span", ptr %t394
  store %"compiler/source:Span" %t395, ptr %l19
  %t397 = load ptr, ptr %l1, !tbaa !29
  %t399 = getelementptr { i64, [5 x i64] }, ptr %t397, i32 0, i32 1
  %t400 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t399, i32 0, i32 1
  %t401 = load ptr, ptr %t400
  store ptr %t401, ptr %l20, !tbaa !29
  %t403 = load ptr, ptr %l1, !tbaa !29
  %t405 = getelementptr { i64, [5 x i64] }, ptr %t403, i32 0, i32 1
  %t406 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t405, i32 0, i32 2
  %t407 = load i1, ptr %t406
  store i1 %t407, ptr %l21, !tbaa !21
  br label %bb93
bb92:
  br label %bb117
bb93:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/check:Checker", ptr %t409, i32 0, i32 68
  %t412 = load i1, ptr %t411, !tbaa !21
  store i1 %t412, ptr %l22, !tbaa !21
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/check:Checker", ptr %t414, i32 0, i32 68
  store i1 false, ptr %t416, !tbaa !21
  %t417 = load i1, ptr %l21, !tbaa !21
  br i1 %t417, label %bb94, label %bb95
bb94:
  %t419 = load i1, ptr %l22, !tbaa !21
  %t421 = xor i1 %t419, true
  store i1 %t421, ptr %l211, !tbaa !21
  br label %bb96
bb95:
  store i1 false, ptr %l211, !tbaa !21
  br label %bb96
bb96:
  %t423 = load i1, ptr %l211, !tbaa !21
  br i1 %t423, label %bb97, label %bb98
bb97:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load ptr, ptr %l20, !tbaa !29
  %t428 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutRef(ptr %v0, ptr %v1, ptr %t424, ptr %t425)
  store i1 %t428, ptr %l217
  br label %bb99
bb98:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb100
bb99:
  %t429 = load i1, ptr %l217, !tbaa !21
  store i1 %t429, ptr %l214, !tbaa !21
  br label %bb100
bb100:
  %t430 = load i1, ptr %l214, !tbaa !21
  br i1 %t430, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s15
  %t431 = load ptr, ptr %l0, !tbaa !29
  store ptr %t431, ptr %l218, !tbaa !29
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/check:Checker", ptr %t432, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !29
  store ptr %t435, ptr %l220, !tbaa !29
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t436)
  store ptr %t438, ptr %l222
  br label %bb103
bb102:
  br label %bb115
bb103:
  %t439 = load ptr, ptr %l222, !tbaa !29
  %t441 = getelementptr %"compiler/check:frame", ptr %t439, i32 0, i32 4
  %t442 = load ptr, ptr %l20, !tbaa !29
  %t443 = load ptr, ptr %l220, !tbaa !29
  %t446 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t443, ptr %t441, ptr %t442)
  store i32 %t446, ptr %l226
  br label %bb104
bb104:
  %t447 = load ptr, ptr %l218, !tbaa !29
  %t448 = load i32, ptr %l226, !tbaa !23
  %t449 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t447, i32 %t448)
  store i32 %t449, ptr %l227
  br label %bb105
bb105:
  %t450 = load i32, ptr %l227, !tbaa !23
  store i32 %t450, ptr %l23, !tbaa !23
  %t451 = load ptr, ptr %l0, !tbaa !29
  store ptr %t451, ptr %l228, !tbaa !29
  %t452 = getelementptr %"compiler/source:Span", ptr %l19, i32 0, i32 0
  %t453 = load i32, ptr %t452, !tbaa !23
  %t454 = getelementptr %"compiler/source:Span", ptr %l19, i32 0, i32 0
  %t455 = load i32, ptr %t454, !tbaa !23
  %t457 = add i32 %t455, 3
  %t460 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s15, i32 %t453, i32 %t457)
  store %"compiler/source:Span" %t460, ptr %l232
  br label %bb106
bb106:
  %t461 = load i32, ptr %l23, !tbaa !23
  store i32 %t461, ptr %l233, !tbaa !23
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t462)
  store i32 %t464, ptr %l235
  br label %bb107
bb107:
  %t465 = load i32, ptr %l233, !tbaa !23
  %t466 = load i32, ptr %l235, !tbaa !23
  %t467 = icmp eq i32 %t465, %t466
  br i1 %t467, label %bb108, label %bb109
bb108:
  %t469 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextMutRef(ptr %s15)
  store %"compiler/diagmsg:Msg" %t469, ptr %l238
  br label %bb110
bb109:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i32, ptr %l23, !tbaa !23
  %t474 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s15, ptr %t470, i32 %t471)
  store { i64, ptr } %t474, ptr %l241
  br label %bb111
bb110:
  %t475 = load %"compiler/diagmsg:Msg", ptr %l238
  store %"compiler/diagmsg:Msg" %t475, ptr %l237
  br label %bb113
bb111:
  %t476 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t477 = extractvalue { i64, ptr } %t476, 0
  %t478 = extractvalue { i64, ptr } %t476, 1
  %t479 = mul i64 %t477, 1
  %t480 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t479)
  call void @llvm.memcpy.p0.p0.i64(ptr %t480, ptr %t478, i64 %t479, i1 false)
  %t481 = insertvalue { i64, ptr } undef, i64 %t477, 0
  %t482 = insertvalue { i64, ptr } %t481, ptr %t480, 1
  %t484 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutMutRef(ptr %s15, ptr %s15, { i64, ptr } %t482)
  store %"compiler/diagmsg:Msg" %t484, ptr %l243
  br label %bb112
bb112:
  %t485 = load %"compiler/diagmsg:Msg", ptr %l243
  store %"compiler/diagmsg:Msg" %t485, ptr %l237
  br label %bb113
bb113:
  %t486 = load ptr, ptr %l228, !tbaa !29
  %t487 = load %"compiler/source:Span", ptr %l232
  %t488 = load %"compiler/diagmsg:Msg", ptr %l237
  %t489 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t486, %"compiler/source:Span" %t487, %"compiler/diagmsg:Msg" %t488)
  store i64 %t489, ptr %l244
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s15)
  store i1 false, ptr %rv
  br label %ret
bb115:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i1, ptr %l2, !tbaa !21
  %t495 = getelementptr %"compiler/check:Checker", ptr %t491, i32 0, i32 97
  store i1 %t492, ptr %t495, !tbaa !21
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load ptr, ptr %l20, !tbaa !29
  %t500 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t496, ptr %t497)
  store i1 %t500, ptr %l250
  br label %bb116
bb116:
  %t501 = load i1, ptr %l250, !tbaa !21
  store i1 %t501, ptr %rv
  br label %ret
bb117:
  %t502 = load ptr, ptr %l1, !tbaa !29
  store ptr %t502, ptr %l251, !tbaa !29
  store i1 false, ptr %l252, !tbaa !21
  %t503 = load ptr, ptr %l251, !tbaa !29
  %t504 = icmp ne ptr %t503, null
  br i1 %t504, label %bb118, label %bb119
bb118:
  %t506 = load ptr, ptr %l251, !tbaa !29
  %t507 = load i64, ptr %t506, !range !{i64 0, i64 8}
  %t509 = icmp eq i64 %t507, 5
  store i1 %t509, ptr %l252, !tbaa !21
  br label %bb119
bb119:
  %t510 = load i1, ptr %l252, !tbaa !21
  br i1 %t510, label %bb120, label %bb121
bb120:
  %t511 = load ptr, ptr %l1, !tbaa !29
  %t513 = getelementptr { i64, [5 x i64] }, ptr %t511, i32 0, i32 1
  %t514 = getelementptr { %"compiler/source:Span", ptr }, ptr %t513, i32 0, i32 0
  %t515 = load %"compiler/source:Span", ptr %t514
  store %"compiler/source:Span" %t515, ptr %l24
  %t517 = load ptr, ptr %l1, !tbaa !29
  %t519 = getelementptr { i64, [5 x i64] }, ptr %t517, i32 0, i32 1
  %t520 = getelementptr { %"compiler/source:Span", ptr }, ptr %t519, i32 0, i32 1
  %t521 = load ptr, ptr %t520
  store ptr %t521, ptr %l25, !tbaa !29
  br label %bb122
bb121:
  br label %bb127
bb122:
  store %olang.scope zeroinitializer, ptr %s16
  %t523 = load ptr, ptr %l0, !tbaa !29
  store ptr %t523, ptr %l259, !tbaa !29
  %t524 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t524, ptr %l260
  %t525 = load ptr, ptr %l0, !tbaa !29
  store ptr %t525, ptr %l261, !tbaa !29
  %t526 = load ptr, ptr %l25, !tbaa !29
  %t528 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t526)
  store %"compiler/source:Span" %t528, ptr %l263
  br label %bb123
bb123:
  %t529 = load ptr, ptr %l261, !tbaa !29
  %t530 = load %"compiler/source:Span", ptr %l263
  %t531 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t529, %"compiler/source:Span" %t530)
  store { i64, ptr } %t531, ptr %l264
  br label %bb124
bb124:
  %t532 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t533 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNeedsMarker(ptr %v0, ptr %s16, { i64, ptr } %t532)
  store %"compiler/diagmsg:Msg" %t533, ptr %l265
  br label %bb125
bb125:
  %t534 = load ptr, ptr %l259, !tbaa !29
  %t535 = load %"compiler/source:Span", ptr %l260
  %t536 = load %"compiler/diagmsg:Msg", ptr %l265
  %t537 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s16, ptr %t534, %"compiler/source:Span" %t535, %"compiler/diagmsg:Msg" %t536)
  store i64 %t537, ptr %l266
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s16)
  store i1 false, ptr %rv
  br label %ret
bb127:
  %t539 = load ptr, ptr %l1, !tbaa !29
  store ptr %t539, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t540 = load ptr, ptr %l268, !tbaa !29
  %t541 = icmp ne ptr %t540, null
  br i1 %t541, label %bb128, label %bb129
bb128:
  %t543 = load ptr, ptr %l268, !tbaa !29
  %t544 = load i64, ptr %t543, !range !{i64 0, i64 8}
  %t546 = icmp eq i64 %t544, 2
  store i1 %t546, ptr %l269, !tbaa !21
  br label %bb129
bb129:
  %t547 = load i1, ptr %l269, !tbaa !21
  br i1 %t547, label %bb130, label %bb131
bb130:
  %t548 = load ptr, ptr %l1, !tbaa !29
  %t550 = getelementptr { i64, [5 x i64] }, ptr %t548, i32 0, i32 1
  %t551 = getelementptr { %"compiler/source:Span", ptr }, ptr %t550, i32 0, i32 1
  %t552 = load ptr, ptr %t551
  store ptr %t552, ptr %l274, !tbaa !29
  store i1 false, ptr %l275, !tbaa !21
  %t553 = load ptr, ptr %l274, !tbaa !29
  %t554 = icmp ne ptr %t553, null
  br i1 %t554, label %bb132, label %bb133
bb131:
  store i1 false, ptr %l272, !tbaa !21
  br label %bb134
bb132:
  %t556 = load ptr, ptr %l274, !tbaa !29
  %t557 = load i64, ptr %t556, !range !{i64 0, i64 5}
  %t559 = icmp eq i64 %t557, 1
  store i1 %t559, ptr %l275, !tbaa !21
  br label %bb133
bb133:
  %t560 = load i1, ptr %l275, !tbaa !21
  store i1 %t560, ptr %l272, !tbaa !21
  br label %bb134
bb134:
  %t561 = load i1, ptr %l272, !tbaa !21
  br i1 %t561, label %bb135, label %bb136
bb135:
  %t562 = load ptr, ptr %l1, !tbaa !29
  %t564 = getelementptr { i64, [5 x i64] }, ptr %t562, i32 0, i32 1
  %t565 = getelementptr { %"compiler/source:Span", ptr }, ptr %t564, i32 0, i32 1
  %t566 = load ptr, ptr %t565
  %t568 = getelementptr { i64, [6 x i64] }, ptr %t566, i32 0, i32 1
  %t569 = getelementptr { { i64, ptr }, ptr }, ptr %t568, i32 0, i32 1
  %t570 = load ptr, ptr %t569
  store ptr %t570, ptr %l26, !tbaa !29
  br label %bb137
bb136:
  br label %bb143
bb137:
  %t572 = load ptr, ptr %l26, !tbaa !29
  %t574 = icmp eq ptr %t572, null
  %t576 = xor i1 %t574, true
  br i1 %t576, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s17
  %t578 = load ptr, ptr %l0, !tbaa !29
  store ptr %t578, ptr %l284, !tbaa !29
  %t579 = load ptr, ptr %l26, !tbaa !29
  %t581 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t579)
  store %"compiler/source:Span" %t581, ptr %l286
  br label %bb140
bb139:
  br label %bb143
bb140:
  %t582 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawAnonymous(ptr %s17)
  store %"compiler/diagmsg:Msg" %t582, ptr %l287
  br label %bb141
bb141:
  %t583 = load ptr, ptr %l284, !tbaa !29
  %t584 = load %"compiler/source:Span", ptr %l286
  %t585 = load %"compiler/diagmsg:Msg", ptr %l287
  %t586 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s17, ptr %t583, %"compiler/source:Span" %t584, %"compiler/diagmsg:Msg" %t585)
  store i64 %t586, ptr %l288
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s17)
  store i1 false, ptr %rv
  br label %ret
bb143:
  %t588 = load ptr, ptr %l1, !tbaa !29
  store ptr %t588, ptr %l290, !tbaa !29
  store i1 false, ptr %l291, !tbaa !21
  %t589 = load ptr, ptr %l290, !tbaa !29
  %t590 = icmp ne ptr %t589, null
  br i1 %t590, label %bb144, label %bb145
bb144:
  %t592 = load ptr, ptr %l290, !tbaa !29
  %t593 = load i64, ptr %t592, !range !{i64 0, i64 8}
  %t595 = icmp eq i64 %t593, 2
  store i1 %t595, ptr %l291, !tbaa !21
  br label %bb145
bb145:
  %t596 = load i1, ptr %l291, !tbaa !21
  br i1 %t596, label %bb146, label %bb147
bb146:
  br label %bb148
bb147:
  br label %bb149
bb148:
  store i1 true, ptr %rv
  br label %ret
bb149:
  %t598 = load ptr, ptr %l1, !tbaa !29
  store ptr %t598, ptr %l295, !tbaa !29
  store i1 false, ptr %l296, !tbaa !21
  %t599 = load ptr, ptr %l295, !tbaa !29
  %t600 = icmp ne ptr %t599, null
  br i1 %t600, label %bb150, label %bb151
bb150:
  %t602 = load ptr, ptr %l295, !tbaa !29
  %t603 = load i64, ptr %t602, !range !{i64 0, i64 8}
  %t605 = icmp eq i64 %t603, 1
  store i1 %t605, ptr %l296, !tbaa !21
  br label %bb151
bb151:
  %t606 = load i1, ptr %l296, !tbaa !21
  br i1 %t606, label %bb152, label %bb153
bb152:
  %t607 = load ptr, ptr %l1, !tbaa !29
  %t609 = getelementptr { i64, [5 x i64] }, ptr %t607, i32 0, i32 1
  %t610 = getelementptr { %"compiler/source:Span", ptr }, ptr %t609, i32 0, i32 1
  %t611 = load ptr, ptr %t610
  store ptr %t611, ptr %l27, !tbaa !29
  br label %bb154
bb153:
  br label %bb156
bb154:
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t614 = load ptr, ptr %l27, !tbaa !29
  %t617 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esigWritten(ptr %v0, ptr %v1, ptr %t613, ptr %t614)
  store i1 %t617, ptr %l303
  br label %bb155
bb155:
  %t618 = load i1, ptr %l303, !tbaa !21
  store i1 %t618, ptr %rv
  br label %ret
bb156:
  br i1 true, label %bb157, label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb160
bb159:
  store i1 true, ptr %rv
  br label %ret
bb160:
  call void @__olang_check_failed(ptr @olang_loc_4663d5afab64fabf_85284f2c40ca9e9b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCasePath(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i1
  %l17 = alloca i32
  %l20 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i32
  %l34 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l40 = alloca { i64, ptr }
  %l42 = alloca %"compiler/source:Span"
  %l46 = alloca %"compiler/diagmsg:Msg"
  %l47 = alloca i64
  %l51 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l59 = alloca i1
  %l64 = alloca i32
  %l69 = alloca i32
  %l74 = alloca ptr
  %l76 = alloca %"compiler/source:Span"
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l83 = alloca %"compiler/source:Span"
  %l84 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb46
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  store i32 %t26, ptr %l17
  br label %bb6
bb6:
  %t27 = load i32, ptr %l17, !tbaa !23
  store i32 %t27, ptr %l6, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l20
  br label %bb7
bb7:
  %t33 = load i1, ptr %l20, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load i32, ptr %l6, !tbaa !23
  %t36 = icmp sge i32 %t34, 0
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l6, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l29
  br label %bb13
bb12:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb15
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l34
  br label %bb14
bb14:
  %t59 = load i32, ptr %l29, !tbaa !23
  %t60 = load i32, ptr %l34, !tbaa !23
  %t61 = icmp eq i32 %t59, %t60
  store i1 %t61, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l24, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l36, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l37
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l5, !tbaa !23
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t66, i32 %t67)
  store { i64, ptr } %t70, ptr %l40
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t71 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  %t73 = load %"compiler/source:Span", ptr %l37
  %t75 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t73, i64 %t72)
  store %"compiler/source:Span" %t75, ptr %l42
  br label %bb19
bb19:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l3, !tbaa !23
  %t78 = load i32, ptr %l5, !tbaa !23
  %t82 = call %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %s2, ptr %t76, i32 %t77, i32 %t78)
  store %"compiler/diagmsg:Msg" %t82, ptr %l46
  br label %bb20
bb20:
  %t83 = load ptr, ptr %l36, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l42
  %t85 = load %"compiler/diagmsg:Msg", ptr %l46
  %t86 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t83, %"compiler/source:Span" %t84, %"compiler/diagmsg:Msg" %t85)
  store i64 %t86, ptr %l47
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb22:
  %t88 = load i32, ptr %l6, !tbaa !23
  %t90 = icmp sge i32 %t88, 0
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l6, !tbaa !23
  %t96 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t92, i32 %t93)
  store i1 %t96, ptr %l54
  br label %bb25
bb24:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb26
bb25:
  %t97 = load i1, ptr %l54, !tbaa !21
  store i1 %t97, ptr %l51, !tbaa !21
  br label %bb26
bb26:
  %t98 = load i1, ptr %l51, !tbaa !21
  br i1 %t98, label %bb27, label %bb28
bb27:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i32, ptr %l3, !tbaa !23
  %t103 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t99, i32 %t100)
  store i1 %t103, ptr %l58
  br label %bb29
bb28:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb35
bb29:
  %t104 = load i1, ptr %l58, !tbaa !21
  br i1 %t104, label %bb30, label %bb31
bb30:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  %t111 = load i32, ptr %l6, !tbaa !23
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t110, i32 %t111)
  store i32 %t114, ptr %l64
  br label %bb32
bb31:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb34
bb32:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l3, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l69
  br label %bb33
bb33:
  %t125 = load i32, ptr %l64, !tbaa !23
  %t126 = load i32, ptr %l69, !tbaa !23
  %t127 = icmp eq i32 %t125, %t126
  store i1 %t127, ptr %l59, !tbaa !21
  br label %bb34
bb34:
  %t129 = load i1, ptr %l59, !tbaa !21
  %t130 = xor i1 %t129, true
  store i1 %t130, ptr %l55, !tbaa !21
  br label %bb35
bb35:
  %t132 = load i1, ptr %l55, !tbaa !21
  %t133 = xor i1 %t132, true
  br i1 %t133, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l74, !tbaa !29
  %t137 = load ptr, ptr %l4, !tbaa !29
  %t139 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t137)
  store %"compiler/source:Span" %t139, ptr %l76
  br label %bb39
bb39:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l3, !tbaa !23
  %t144 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t140, i32 %t141)
  store { i64, ptr } %t144, ptr %l79
  br label %bb40
bb40:
  %t145 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  %t147 = extractvalue { i64, ptr } %t145, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l80, !tbaa !27
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l81, !tbaa !29
  %t153 = load ptr, ptr %l4, !tbaa !29
  %t155 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t153)
  store %"compiler/source:Span" %t155, ptr %l83
  br label %bb41
bb41:
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l83
  %t158 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t156, %"compiler/source:Span" %t157)
  store { i64, ptr } %t158, ptr %l84
  br label %bb42
bb42:
  %t159 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t160 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s1, { i64, ptr } %t159)
  store { i64, ptr } %t160, ptr %l85
  br label %bb43
bb43:
  %t161 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t168 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t170 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatternType(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } %t168, { i64, ptr } %t167)
  store %"compiler/diagmsg:Msg" %t170, ptr %l87
  br label %bb44
bb44:
  %t171 = load ptr, ptr %l74, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l76
  %t173 = load %"compiler/diagmsg:Msg", ptr %l87
  %t174 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t171, %"compiler/source:Span" %t172, %"compiler/diagmsg:Msg" %t173)
  store i64 %t174, ptr %l88
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i1 false, ptr %rv
  br label %ret
bb50:
  call void @__olang_check_failed(ptr @olang_loc_3377d0df2c72c56f_fd113dcd8b508953)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esomeHolds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l14 = alloca { i64, ptr }
  %l19 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  br label %bb17
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l6, !tbaa !23
  %t23 = load i32, ptr %l6, !tbaa !23
  %t25 = icmp ne i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:collWalk", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = load i32, ptr %l6, !tbaa !23
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t33 = call ptr @__olang_scope_or(ptr %v2, ptr %t32)
  %t34 = ptrtoint ptr %t33 to i64
  %t36 = inttoptr i64 %t34 to ptr
  %t37 = load ptr, ptr %l21, !tbaa !29
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t36, ptr %t37, i32 %t31)
  store i1 %t39, ptr %l24
  br label %bb7
bb6:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb8
bb7:
  %t40 = load i1, ptr %l24, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t43 = load i1, ptr %l19, !tbaa !21
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l6, !tbaa !23
  %t48 = add i64 %a2, 1
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2eholds(ptr %v0, ptr %v2, ptr %t44, i32 %t45, i64 %t48)
  store i1 %t52, ptr %l31
  br label %bb11
bb10:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb12
bb11:
  %t53 = load i1, ptr %l31, !tbaa !21
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l4, !tbaa !24
  br label %bb1
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecopyDoes(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca i1
  %l19 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l28 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Facts", ptr %t22, i32 0, i32 20
  %t25 = load i64, ptr %t24, !tbaa !24
  %t27 = icmp ne i64 %t25, 0
  br i1 %t27, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t29, ptr %l11, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l12, !tbaa !24
  %t32 = load i64, ptr %l12, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l13, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l12, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t43, ptr %l11, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/effects:Facts", ptr %t45, i32 0, i32 9
  %t48 = load i1, ptr %t47, !tbaa !21
  br i1 %t48, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb9
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/effects:Facts", ptr %t50, i32 0, i32 10
  %t53 = load i1, ptr %t52, !tbaa !21
  store i1 %t53, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t55 = load i1, ptr %l16, !tbaa !21
  br i1 %t55, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb12
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Facts", ptr %t56, i32 0, i32 14
  %t59 = load i1, ptr %t58, !tbaa !21
  store i1 %t59, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t61 = load i1, ptr %l19, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t62, ptr %l23, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l24, !tbaa !24
  %t65 = load i64, ptr %l24, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l25, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l24, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t76, ptr %l23, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/effects:Facts", ptr %t78, i32 0, i32 4
  %t81 = load i1, ptr %t80, !tbaa !21
  br i1 %t81, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb18
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/effects:Facts", ptr %t83, i32 0, i32 18
  %t86 = load i64, ptr %t85, !tbaa !24
  %t88 = icmp ne i64 %t86, 0
  store i1 %t88, ptr %l28, !tbaa !21
  br label %bb18
bb18:
  %t90 = load i1, ptr %l28, !tbaa !21
  br i1 %t90, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t91 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t91, ptr %l33, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l34, !tbaa !24
  %t94 = load i64, ptr %l34, !tbaa !24
  %t95 = mul i64 %t94, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l35, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l34, !tbaa !24
  %t104 = mul i64 %t103, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t100, ptr %t102, i64 %t104, i1 false)
  %t105 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t105, ptr %l33, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t106, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/effects:Facts", ptr %t107, i32 0, i32 6
  %t110 = load i1, ptr %t109, !tbaa !21
  br i1 %t110, label %bb22, label %bb23
bb22:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t112, ptr %l39, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  store i64 %t114, ptr %l40, !tbaa !24
  %t115 = load i64, ptr %l40, !tbaa !24
  %t116 = mul i64 %t115, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t116)
  %t118 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l41, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l40, !tbaa !24
  %t125 = mul i64 %t124, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t121, ptr %t123, i64 %t125, i1 false)
  %t126 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t126, ptr %l39, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t127, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/effects:Facts", ptr %t128, i32 0, i32 1
  %t131 = load i1, ptr %t130, !tbaa !21
  br i1 %t131, label %bb25, label %bb26
bb25:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t133, ptr %l45, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  store i64 %t135, ptr %l46, !tbaa !24
  %t136 = load i64, ptr %l46, !tbaa !24
  %t137 = mul i64 %t136, 1
  %t138 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t137)
  %t139 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  store { i64, ptr } %t140, ptr %l47, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = load i64, ptr %l46, !tbaa !24
  %t146 = mul i64 %t145, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t142, ptr %t144, i64 %t146, i1 false)
  %t147 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t147, ptr %l45, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t148, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/effects:Facts", ptr %t149, i32 0, i32 12
  %t152 = load i1, ptr %t151, !tbaa !21
  br i1 %t152, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t154, ptr %l51, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 0
  store i64 %t156, ptr %l52, !tbaa !24
  %t157 = load i64, ptr %l52, !tbaa !24
  %t158 = mul i64 %t157, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t158)
  %t160 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  store { i64, ptr } %t161, ptr %l53, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = load i64, ptr %l52, !tbaa !24
  %t167 = mul i64 %t166, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t163, ptr %t165, i64 %t167, i1 false)
  %t168 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t168, ptr %l51, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t169, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t170, ptr %l55, !tbaa !27
  %t171 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 0
  store i64 %t172, ptr %l56, !tbaa !24
  %t173 = load i64, ptr %l56, !tbaa !24
  %t174 = mul i64 %t173, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t174)
  %t176 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  store { i64, ptr } %t177, ptr %l57, !tbaa !27
  %t178 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = load i64, ptr %l56, !tbaa !24
  %t183 = mul i64 %t182, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t179, ptr %t181, i64 %t183, i1 false)
  %t184 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t184, ptr %l55, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t185, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
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
  %t18 = trunc i64 7 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_e33a974712b651f_d1b714717850974b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eskipsRest(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l49 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i1
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Block", ptr %t6, i32 0, i32 1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb51
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t23, ptr %l18, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l4, !tbaa !29
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = call i1 @compiler_2fcheck_2eleaves(ptr %v0, ptr %t31)
  store i1 %t33, ptr %l22
  br label %bb8
bb8:
  %t34 = load i1, ptr %l22, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l4, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t37 = load ptr, ptr %l24, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 17}
  %t43 = icmp eq i64 %t41, 5
  store i1 %t43, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  %t46 = load ptr, ptr %l4, !tbaa !29
  store ptr %t46, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t47 = load ptr, ptr %l29, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb18, label %bb19
bb18:
  %t50 = load ptr, ptr %l29, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 17}
  %t53 = icmp eq i64 %t51, 11
  store i1 %t53, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t54 = load i1, ptr %l30, !tbaa !21
  br i1 %t54, label %bb20, label %bb21
bb20:
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr }, ptr %t57, i32 0, i32 1
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l5, !tbaa !29
  br label %bb22
bb21:
  br label %bb27
bb22:
  %t61 = load ptr, ptr %l5, !tbaa !29
  %t64 = call i1 @compiler_2fcheck_2eskipsRest(ptr %v0, ptr %t61)
  store i1 %t64, ptr %l37
  br label %bb23
bb23:
  %t65 = load i1, ptr %l37, !tbaa !21
  br i1 %t65, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb49
bb27:
  %t67 = load ptr, ptr %l4, !tbaa !29
  store ptr %t67, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb28, label %bb29
bb28:
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 17}
  %t74 = icmp eq i64 %t72, 3
  store i1 %t74, ptr %l40, !tbaa !21
  br label %bb29
bb29:
  %t75 = load i1, ptr %l40, !tbaa !21
  br i1 %t75, label %bb30, label %bb31
bb30:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = getelementptr { i64, [3 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", ptr }, ptr %t78, i32 0, i32 1
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l6, !tbaa !29
  br label %bb32
bb31:
  br label %bb44
bb32:
  %t82 = load ptr, ptr %l6, !tbaa !29
  %t84 = getelementptr %"compiler/typed:If", ptr %t82, i32 0, i32 2
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = icmp eq ptr %t85, null
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb33, label %bb34
bb33:
  %t91 = load ptr, ptr %l6, !tbaa !29
  %t93 = getelementptr %"compiler/typed:If", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t97 = call i1 @compiler_2fcheck_2eskipsRest(ptr %v0, ptr %t94)
  store i1 %t97, ptr %l53
  br label %bb35
bb34:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb36
bb35:
  %t98 = load i1, ptr %l53, !tbaa !21
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb36
bb36:
  %t99 = load i1, ptr %l49, !tbaa !21
  br i1 %t99, label %bb37, label %bb38
bb37:
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t102 = getelementptr %"compiler/typed:If", ptr %t100, i32 0, i32 2
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = call i1 @compiler_2fcheck_2eskipsRest(ptr %v0, ptr %t103)
  store i1 %t105, ptr %l57
  br label %bb39
bb38:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb40
bb39:
  %t106 = load i1, ptr %l57, !tbaa !21
  store i1 %t106, ptr %l54, !tbaa !21
  br label %bb40
bb40:
  %t107 = load i1, ptr %l54, !tbaa !21
  br i1 %t107, label %bb41, label %bb42
bb41:
  store i1 true, ptr %rv
  br label %ret
bb42:
  br label %bb43
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
  call void @__olang_check_failed(ptr @olang_loc_3fc1b8518c3f3f5f_8bf558a7bfac0c2b)
  unreachable
bb49:
  br label %bb50
bb50:
  %t109 = load i64, ptr %l2, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l2, !tbaa !24
  br label %bb4
bb51:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i128 } @compiler_2fcheck_2ewideDigits(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i128
  %l24 = alloca i64
  %l25 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i32
  %l33 = alloca i128
  %l34 = alloca i32
  %l39 = alloca i1
  %l42 = alloca i1
  %l45 = alloca i1
  %l48 = alloca i128
  %l50 = alloca i64
  %l51 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i32
  %l59 = alloca i128
  %l60 = alloca i32
  %l62 = alloca i128
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca i32
  %l67 = alloca i128
  %l68 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, i128 }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t6 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a0, { i64, ptr } %t4, { i64, ptr } %t5)
  store { i64, ptr } %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l8, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %l1, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp sgt i64 %t24, 2
  br i1 %t26, label %bb2, label %bb3
bb2:
  %t28 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i8, ptr %t29, i64 0
  %t31 = load i8, ptr %t30, !tbaa !32
  %t33 = icmp eq i8 %t31, 48
  store i1 %t33, ptr %l13, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t35 = load i1, ptr %l13, !tbaa !21
  br i1 %t35, label %bb5, label %bb6
bb5:
  %t36 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i8, ptr %t37, i64 1
  %t39 = load i8, ptr %t38, !tbaa !32
  %t41 = icmp eq i8 %t39, 120
  br i1 %t41, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb10
bb7:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb8:
  %t43 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i8, ptr %t44, i64 1
  %t46 = load i8, ptr %t45, !tbaa !32
  %t48 = icmp eq i8 %t46, 88
  store i1 %t48, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t50 = load i1, ptr %l19, !tbaa !21
  store i1 %t50, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t51 = load i1, ptr %l16, !tbaa !21
  br i1 %t51, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t52 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  store i64 %t54, ptr %l24, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l25, !tbaa !24
  %t57 = icmp sge i64 2, 0
  br i1 %t57, label %bb13, label %bb14
bb12:
  br label %bb24
bb13:
  %t59 = load i64, ptr %l24, !tbaa !24
  %t60 = icmp sle i64 2, %t59
  br i1 %t60, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_a6a8aee764c9772b_17fecb5b27ccad8f)
  unreachable
bb15:
  %t62 = load i64, ptr %l24, !tbaa !24
  %t63 = load i64, ptr %l25, !tbaa !24
  %t64 = icmp sle i64 %t62, %t63
  br i1 %t64, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_a6a8aee764c9772b_17fecb5b27ccad8f)
  unreachable
bb17:
  %t66 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l24, !tbaa !24
  %t69 = getelementptr i8, ptr %t67, i64 2
  %t70 = sub i64 %t68, 2
  %t71 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  store { i64, ptr } %t72, ptr %l29, !tbaa !27
  %t73 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 16)
  %t74 = extractvalue { i32, i64 } %t73, 1
  %t75 = extractvalue { i32, i64 } %t73, 0
  store i32 %t75, ptr %l31
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb20, label %ok.77, !prof !99
ok.77:
  store i64 %t74, ptr %l30
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_a6a8aee764c9772b_17fecb5b27ccad8f)
  unreachable
bb19:
  %t78 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t79 = load i64, ptr %l30, !tbaa !24
  %t80 = call { i32, i128 } @std_2fprelude_2ftext_2eT_2eParse_3cU128_3e(ptr %s0, { i64, ptr } %t78, i64 %t79)
  %t81 = extractvalue { i32, i128 } %t80, 1
  %t82 = extractvalue { i32, i128 } %t80, 0
  store i32 %t82, ptr %l34
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb22, label %ok.84, !prof !99
ok.84:
  store i128 %t81, ptr %l33
  br label %bb21
bb20:
  %t85 = load i32, ptr %l31, !tbaa !23
  %t86 = lshr i32 %t85, 16
  %t87 = and i32 %t85, 65535
  %t88 = icmp eq i32 %t86, 1
  %t89 = select i1 %t88, i32 0, i32 0
  %t90 = icmp eq i32 %t85, 0
  %t91 = shl i32 %t89, 16
  %t92 = or i32 %t91, %t87
  %t93 = select i1 %t90, i32 0, i32 %t92
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t95 = insertvalue { i32, i128 } zeroinitializer, i32 %t93, 0
  store { i32, i128 } %t95, ptr %rv
  br label %ret
bb21:
  %t96 = load i128, ptr %l33
  store i128 %t96, ptr %l22
  br label %bb23
bb22:
  %t97 = load i32, ptr %l34, !tbaa !23
  %t98 = lshr i32 %t97, 16
  %t99 = and i32 %t97, 65535
  %t100 = icmp eq i32 %t98, 1
  %t101 = select i1 %t100, i32 1, i32 0
  %t102 = icmp eq i32 %t97, 0
  %t103 = shl i32 %t101, 16
  %t104 = or i32 %t103, %t99
  %t105 = select i1 %t102, i32 0, i32 %t104
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t107 = insertvalue { i32, i128 } zeroinitializer, i32 %t105, 0
  store { i32, i128 } %t107, ptr %rv
  br label %ret
bb23:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t108 = load i128, ptr %l22
  %t109 = insertvalue { i32, i128 } zeroinitializer, i128 %t108, 1
  store { i32, i128 } %t109, ptr %rv
  br label %ret
bb24:
  %t110 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  %t114 = icmp sgt i64 %t112, 2
  br i1 %t114, label %bb25, label %bb26
bb25:
  %t116 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i8, ptr %t117, i64 0
  %t119 = load i8, ptr %t118, !tbaa !32
  %t121 = icmp eq i8 %t119, 48
  store i1 %t121, ptr %l39, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb27
bb27:
  %t123 = load i1, ptr %l39, !tbaa !21
  br i1 %t123, label %bb28, label %bb29
bb28:
  %t124 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 1
  %t127 = load i8, ptr %t126, !tbaa !32
  %t129 = icmp eq i8 %t127, 98
  br i1 %t129, label %bb30, label %bb31
bb29:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb33
bb30:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb32
bb31:
  %t131 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i8, ptr %t132, i64 1
  %t134 = load i8, ptr %t133, !tbaa !32
  %t136 = icmp eq i8 %t134, 66
  store i1 %t136, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t138 = load i1, ptr %l45, !tbaa !21
  store i1 %t138, ptr %l42, !tbaa !21
  br label %bb33
bb33:
  %t139 = load i1, ptr %l42, !tbaa !21
  br i1 %t139, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s2
  %t140 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l50, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  store i64 %t144, ptr %l51, !tbaa !24
  %t145 = icmp sge i64 2, 0
  br i1 %t145, label %bb36, label %bb37
bb35:
  br label %bb47
bb36:
  %t147 = load i64, ptr %l50, !tbaa !24
  %t148 = icmp sle i64 2, %t147
  br i1 %t148, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_8cde041b4e8c8e2e_cde163ca5cf5392)
  unreachable
bb38:
  %t150 = load i64, ptr %l50, !tbaa !24
  %t151 = load i64, ptr %l51, !tbaa !24
  %t152 = icmp sle i64 %t150, %t151
  br i1 %t152, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_8cde041b4e8c8e2e_cde163ca5cf5392)
  unreachable
bb40:
  %t154 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = load i64, ptr %l50, !tbaa !24
  %t157 = getelementptr i8, ptr %t155, i64 2
  %t158 = sub i64 %t156, 2
  %t159 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t157, 1
  store { i64, ptr } %t160, ptr %l55, !tbaa !27
  %t161 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s2, i64 2)
  %t162 = extractvalue { i32, i64 } %t161, 1
  %t163 = extractvalue { i32, i64 } %t161, 0
  store i32 %t163, ptr %l57
  %t164 = icmp ne i32 %t163, 0
  br i1 %t164, label %bb43, label %ok.165, !prof !99
ok.165:
  store i64 %t162, ptr %l56
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_8cde041b4e8c8e2e_cde163ca5cf5392)
  unreachable
bb42:
  %t166 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t167 = load i64, ptr %l56, !tbaa !24
  %t168 = call { i32, i128 } @std_2fprelude_2ftext_2eT_2eParse_3cU128_3e(ptr %s0, { i64, ptr } %t166, i64 %t167)
  %t169 = extractvalue { i32, i128 } %t168, 1
  %t170 = extractvalue { i32, i128 } %t168, 0
  store i32 %t170, ptr %l60
  %t171 = icmp ne i32 %t170, 0
  br i1 %t171, label %bb45, label %ok.172, !prof !99
ok.172:
  store i128 %t169, ptr %l59
  br label %bb44
bb43:
  %t173 = load i32, ptr %l57, !tbaa !23
  %t174 = lshr i32 %t173, 16
  %t175 = and i32 %t173, 65535
  %t176 = icmp eq i32 %t174, 1
  %t177 = select i1 %t176, i32 0, i32 0
  %t178 = icmp eq i32 %t173, 0
  %t179 = shl i32 %t177, 16
  %t180 = or i32 %t179, %t175
  %t181 = select i1 %t178, i32 0, i32 %t180
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t183 = insertvalue { i32, i128 } zeroinitializer, i32 %t181, 0
  store { i32, i128 } %t183, ptr %rv
  br label %ret
bb44:
  %t184 = load i128, ptr %l59
  store i128 %t184, ptr %l48
  br label %bb46
bb45:
  %t185 = load i32, ptr %l60, !tbaa !23
  %t186 = lshr i32 %t185, 16
  %t187 = and i32 %t185, 65535
  %t188 = icmp eq i32 %t186, 1
  %t189 = select i1 %t188, i32 1, i32 0
  %t190 = icmp eq i32 %t185, 0
  %t191 = shl i32 %t189, 16
  %t192 = or i32 %t191, %t187
  %t193 = select i1 %t190, i32 0, i32 %t192
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t195 = insertvalue { i32, i128 } zeroinitializer, i32 %t193, 0
  store { i32, i128 } %t195, ptr %rv
  br label %ret
bb46:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t196 = load i128, ptr %l48
  %t197 = insertvalue { i32, i128 } zeroinitializer, i128 %t196, 1
  store { i32, i128 } %t197, ptr %rv
  br label %ret
bb47:
  %t198 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t198, ptr %l63, !tbaa !27
  %t199 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t200 = extractvalue { i32, i64 } %t199, 1
  %t201 = extractvalue { i32, i64 } %t199, 0
  store i32 %t201, ptr %l65
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb49, label %ok.203, !prof !99
ok.203:
  store i64 %t200, ptr %l64
  br label %bb48
bb48:
  %t204 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t205 = load i64, ptr %l64, !tbaa !24
  %t206 = call { i32, i128 } @std_2fprelude_2ftext_2eT_2eParse_3cU128_3e(ptr %s0, { i64, ptr } %t204, i64 %t205)
  %t207 = extractvalue { i32, i128 } %t206, 1
  %t208 = extractvalue { i32, i128 } %t206, 0
  store i32 %t208, ptr %l68
  %t209 = icmp ne i32 %t208, 0
  br i1 %t209, label %bb51, label %ok.210, !prof !99
ok.210:
  store i128 %t207, ptr %l67
  br label %bb50
bb49:
  %t211 = load i32, ptr %l65, !tbaa !23
  %t212 = lshr i32 %t211, 16
  %t213 = and i32 %t211, 65535
  %t214 = icmp eq i32 %t212, 1
  %t215 = select i1 %t214, i32 0, i32 0
  %t216 = icmp eq i32 %t211, 0
  %t217 = shl i32 %t215, 16
  %t218 = or i32 %t217, %t213
  %t219 = select i1 %t216, i32 0, i32 %t218
  call void @__olang_scope_close(ptr %s0)
  %t221 = insertvalue { i32, i128 } zeroinitializer, i32 %t219, 0
  store { i32, i128 } %t221, ptr %rv
  br label %ret
bb50:
  %t222 = load i128, ptr %l67
  store i128 %t222, ptr %l62
  br label %bb52
bb51:
  %t223 = load i32, ptr %l68, !tbaa !23
  %t224 = lshr i32 %t223, 16
  %t225 = and i32 %t223, 65535
  %t226 = icmp eq i32 %t224, 1
  %t227 = select i1 %t226, i32 1, i32 0
  %t228 = icmp eq i32 %t223, 0
  %t229 = shl i32 %t227, 16
  %t230 = or i32 %t229, %t225
  %t231 = select i1 %t228, i32 0, i32 %t230
  call void @__olang_scope_close(ptr %s0)
  %t233 = insertvalue { i32, i128 } zeroinitializer, i32 %t231, 0
  store { i32, i128 } %t233, ptr %rv
  br label %ret
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t234 = load i128, ptr %l62
  %t235 = insertvalue { i32, i128 } zeroinitializer, i128 %t234, 1
  store { i32, i128 } %t235, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i128 }, ptr %rv
  ret { i32, i128 } %rr
}

define dso_local %"compiler/check:heldCand" @compiler_2fcheck_3aheldCand_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/check:heldCand"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:heldCand" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/check:heldCand" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/check:heldCand" %t10, i64 %a2, 2
  store %"compiler/check:heldCand" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:heldCand", ptr %rv
  ret %"compiler/check:heldCand" %rr
}

define dso_local %"compiler/check:opShape" @compiler_2fcheck_3aopShape_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i1 %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:opShape"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:opShape" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/check:opShape" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/check:opShape" %t12, i1 %a2, 2
  %t16 = insertvalue %"compiler/check:opShape" %t14, i1 %a3, 3
  store %"compiler/check:opShape" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:opShape", ptr %rv
  ret %"compiler/check:opShape" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@__olang_empty_array = external constant [16 x i64]
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0) #0 {
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

@.d2 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"the checker asked for the body of a frame that checks none" }>, align 8
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
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
define linkonce_odr %"compiler/check:inPlaceRead" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3ainPlaceRead(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/check:inPlaceRead"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/check:inPlaceRead"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/check:inPlaceRead", ptr %a0
  store %"compiler/check:inPlaceRead" %t2, ptr %l1
  %t3 = getelementptr %"compiler/check:inPlaceRead", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/check:inPlaceRead", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/check:inPlaceRead", ptr %l1
  store %"compiler/check:inPlaceRead" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:inPlaceRead", ptr %rv
  ret %"compiler/check:inPlaceRead" %rr
}

@.d3 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"a call through x[i] made in place whose callee may change the collection (E31b)" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d5 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"LanesEqual" }>, align 8
@.d6 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"LanesLess" }>, align 8
@.d7 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"LanesEqual" }>, align 8
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Select" }>, align 8
@.d9 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'Select'" }>, align 8
@.d10 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'Select'" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d11 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"FromIter" }>, align 8
@.d12 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a builder 'FromIter'" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"break" }>, align 8
@.d14 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"a builder " }>, align 8
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
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d16 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a reference" }>, align 8
@.d17 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"a function value" }>, align 8
@.d18 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"an any" }>, align 8
@.d19 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"an error value" }>, align 8
@.d20 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"an array of a run-time length" }>, align 8
@.d21 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"it has no width in bits" }>, align 8
@.d22 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"instantiated here" }>, align 8
@.d23 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", with " }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d26 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"instantiated here" }>, align 8
@.d27 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", with " }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d30 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a pun naming no parameter (C4)" }>, align 8
@.d31 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a declaration of several names from one value (D8c)" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@.d33 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"writes a global" }>, align 8
@.d34 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"writes through what it is given" }>, align 8
@.d35 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"calls through a function value or an 'any'" }>, align 8
@.d36 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"calls C" }>, align 8
@.d37 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"starts tasks" }>, align 8
@.d38 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"may wait" }>, align 8
@.d39 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"may end the program" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@olang_loc_980c9dc24d8ab357_bac7a576dce6b97b = external constant [0 x i8]
@olang_loc_a6ae1e9a693d05c9_888d1f7981f90365 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBodyIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %a5, i32 %a6)
declare i1 @compiler_2fcheck_2eisTrue(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunsettle(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyKey(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf3bb75ba9d3f922b4d327e9d3c1adfb0(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_7362f3ae74bf0a7_8f389ee36c95dce3 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecVoidRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecBorrow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCStrRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e75bf8e677cd64fa_b74b0f73d6209566 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, i32 %a5)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_854899d5724a103b_e7dfb19072d83fa7 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, ptr %a3, i32 %a4, %"compiler/source:Span" %a5, i1 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_852b58c2eb82b3cc_e47a0c64d3951188 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisZeroLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_d2b428b6a63c5a88_9cb41cac42ab9d54 = external constant [0 x i8]
declare { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8d3e5410ed2a27a9_4efdc57dac874585 = external constant [0 x i8]
@olang_loc_1dfbc037cdd154d8_cf42e6f659c8aed4 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_43d20343d6f566de_136f8b7be912828a = external constant [0 x i8]
@G_2ecompiler_2fgeneric_2eListFunctions = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFuncDescriptor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
@G_2ecompiler_2fgeneric_2eListMethods = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListBuilders = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListFields = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListCases = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListParams = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@olang_loc_56167ce98e06ac0c_8ddb750e2bed0608 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estep(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAStatement(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_602058b5bbdc5ba4_407e96c83aaf1680 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %a0)
declare %"compiler/check:idleCall" @compiler_2fcheck_3aidleCall_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, ptr %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2ePush_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:idleCall" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_a929affe4386ca95_c275f1e9d349f711 = external constant [0 x i8]
@olang_loc_c2976cb1f3dad95e_90ea7f94faae157a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotStmtSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinNextLine(ptr %v0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNamesType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@olang_loc_e4171899205744bd_2a3775717c01c5d1 = external constant [0 x i8]
@olang_loc_f9f7abe6f4095c55_11136f6e879bf089 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eLe_Hf613227d99bb55cc0c1d4d516f382642(ptr %v0, ptr %a0)
declare %"compiler/check:inPlaceRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eAt_Hf62b397eb49933d0308b5b903703d314(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/check:Gap" @compiler_2fcheck_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2ePush_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:Gap" %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_dabacd8646f437fb_89d6d0c21504246f = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneType(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fcheck_2eLaneMagic = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@G_2ecompiler_2fcheck_2eLaneCmp = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneMaskBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f29deef1411bcac7_1d318aa8f75ec9a3 = external constant [0 x i8]
@olang_loc_15db60dea160a9a8_613bb3b113b67e94 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandsDiffer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@G_2ecompiler_2fcheck_2eLaneSel = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTotal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i64 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNotMade(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %v0, i64 %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNoFromIter(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIterElem(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromIterShape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralUnique(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factsMark" %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemptyArray(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToArray(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToNonNull(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueTypes(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclareUnknown(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructOneValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eputTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, ptr %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssignListCount(ptr %v0, i64 %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoredName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetAtTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2ePu_H987461f55898bae561e1d5349703380d(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ediscardOr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eP_Ha5c233616e2ae02d7fe37742cfaef2c2(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnAssigned(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2eAt_H6c7d5ab01c425e68e8a93a567ecc740a(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_96ad6a547cbfae6b_c8fd4ea10ff1b69f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_1e0e3f8e77107efc_26f178b75df49a00 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eTrun_Haa7c8ccc08c8123d0b87c9688e5d351e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_89675b40bb29f91f_f23262abf4982edb = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_7114c498979ee84a_e24a16e9735bab46 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
@olang_loc_c7908973d247e2d7_c6acba74781c2b93 = external constant [0 x i8]
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuildersOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoBuilder(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %v0, i32 %a0, i1 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_25badba18653f983_c74616522228d697 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6168eeb228a64802_deceb7d8f3c3ddf6 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedPackedWhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_b024c5157650ed4d_a91dda553fa89049 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_983ca47650ebcf0f_470cb00b1bd66703 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H48754b4fa56ee3a8c3b855086bca91dc(ptr %v0, ptr %a0)
declare %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H015c7298d54f1d140374736283ef15ae(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeep(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
@olang_loc_b8e2733ff2674fd_52419f97eade6699 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4fb1ec40319fc7d0_191a57ffdbf9a78c = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_43a48225da0bb134_ea32de8827419df8 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eLen_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeOrigin(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstContexts(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emovesHere(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [1 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_31b59b203b4a4e3f_1cfff4f24a22d803 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnInferredLocal(ptr %v0)
@olang_loc_35f48b5c7c141c20_d3954a821088874 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueField(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnLocal(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldHasParamName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/check:unsetCand" @compiler_2fcheck_3aunsetCand_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i1 %a3, i64 %a4, %"compiler/source:Span" %a5, i32 %a6, i1 %a7)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypeAt(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eStorageOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_458efae6ce1c735_ac6225d3d907fb69 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_f3c73b72e55a8b8e_5460cc7526c67482 = external constant [0 x i8]
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efilledNext(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_de90e7498c4216b3_b17be322d1a772cf = external constant [0 x i8]
@olang_loc_36f1ca435b2ee6e4_790f65bce77245f0 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_f2aff2ea660e9d99_96029929a029dd45 = external constant [0 x i8]
@olang_loc_91617ece661d0672_429c03ea7d9d989e = external constant [0 x i8]
@olang_loc_60b97769ab73fcb7_dac12c977cbf3c9b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4)
@olang_loc_456a500fefc58a98_a2eaf47e24a406ac = external constant [0 x i8]
@olang_loc_3b566e89984acdce_dde06b5f9a89c81a = external constant [0 x i8]
@olang_loc_9c28400664f91d75_969ef375bde61da1 = external constant [0 x i8]
@olang_loc_982a334cfac79560_875fefac8daf1dec = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_376d11cdba21927f_511e748ac6a9e8db = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
@olang_loc_3a82445390a851b2_9b15ba0f114a52d6 = external constant [0 x i8]
@olang_loc_3fb68a5e1b4562d9_d329c5eb93afbebd = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsWeak(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewInstance(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakFresh(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eRoDecl = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoClearMade(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2ePush_Hd5bae6439baa110b1f2b8b5b7cdda5ce(ptr %v0, ptr %a0, %"compiler/check:unsetCand" %a1)
@olang_loc_794124879bbe2724_fc21d7c86e4799e8 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2)
@olang_loc_2c22f34bd067d0f3_c6f2db583ea9f707 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainScalar(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:fixedInit" @compiler_2fcheck_3afixedInit_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5daf2b89f219287cc2404f0b0e96c809(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"compiler/check:fixedInit" %a2)
@olang_loc_d0518beb2c6ede06_d5bdb61bd652bbc2 = external constant [0 x i8]
@olang_loc_d272211c05fc00ed_3c47c1e1bb4a7a9 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedMet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakMet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHeld(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esigWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a757b13292ee07be_48a52c46e9cd849a = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitWritten(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundBy(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInvalidReferenceTarget(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceNotReferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInstanceRef(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextMutRef(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutMutRef(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNeedsMarker(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawAnonymous(ptr %v0)
@olang_loc_4663d5afab64fabf_85284f2c40ca9e9b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatternType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_3377d0df2c72c56f_fd113dcd8b508953 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2eholds(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_e33a974712b651f_d1b714717850974b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eleaves(ptr %v0, ptr %a0)
@olang_loc_3fc1b8518c3f3f5f_8bf558a7bfac0c2b = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_a6a8aee764c9772b_17fecb5b27ccad8f = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i128 } @std_2fprelude_2ftext_2eT_2eParse_3cU128_3e(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_8cde041b4e8c8e2e_cde163ca5cf5392 = external constant [0 x i8]

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
