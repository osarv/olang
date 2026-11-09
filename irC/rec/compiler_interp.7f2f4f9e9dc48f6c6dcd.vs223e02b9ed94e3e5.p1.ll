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
%"compiler/interp:CondErr" = type { { i64, [3 x i64] }, %"compiler/diagmsg:Msg" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:ValueAsk" = type { i32, i64, %"compiler/source:Span", i32, i64, { i64, [3 x i64] }, i1, { i64, [3 x i64] } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/interp:Exec" = type { ptr, ptr, i32, %"compiler/lower:Lowerer", %"compiler/eval:Machine", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:EmbedAsk" = type { i64, i64, i32 }
%"compiler/check:UnrollAsk" = type { { i64, ptr }, { i64, ptr }, i64, i32 }
%"compiler/check:Ask" = type { i64, i64, i32, ptr, i64, { i64, ptr } }
%"compiler/generic:ConstAsk" = type { i64, ptr, i32, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"compiler/interp:chained" = type { i64, i1, { i64, ptr }, { i64, [3 x i64] } }
%"compiler/check:TopAssertAsk" = type { i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64 }
%"compiler/check:AssertAsk" = type { i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t3 = trunc i64 3 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb4:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t8 = trunc i64 4 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb8:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t13 = trunc i64 5 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb12:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t18 = trunc i64 7 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb16:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t23 = trunc i64 8 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb20:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t28 = trunc i64 9 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb24:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t33 = trunc i64 11 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb28:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t38 = trunc i64 12 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb32:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t43 = trunc i64 10 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb36:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t48 = trunc i64 13 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb40:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t53 = trunc i64 14 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb44:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t58 = trunc i64 15 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_eb3df5da8012cb63_283e587d4f698dd7)
  unreachable
bb53:
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
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
  %t303 = alloca %"compiler/check:Checker", align 8
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
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t56, i64 5856, i1 false)
  br label %bb13
bb13:
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 5856, i64 8)
  store ptr %t59, ptr %lp14
  %t60 = load ptr, ptr %lp14
  call void @llvm.memmove.p0.p0.i64(ptr %t60, ptr %l40, i64 5856, i1 false)
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
  %t80 = icmp ne ptr %t79, null
  %t81 = select i1 %t80, ptr %t79, ptr null
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45, i32 0, i32 1
  %t83 = load { i64, ptr }, ptr %t82
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = call ptr @__olang_region_or(ptr %t84, ptr null)
  %t86 = icmp ne ptr %t85, null
  %t87 = select i1 %t86, ptr %t85, ptr %t81
  %t88 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45, i32 0, i32 0
  %t89 = load { i64, ptr }, ptr %t88
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = call ptr @__olang_region_or(ptr %t90, ptr null)
  %t92 = icmp ne ptr %t91, null
  %t93 = select i1 %t92, ptr %t91, ptr %t87
  %t94 = icmp eq ptr %t93, %t75
  call void @__olang_region_settle(ptr %t75, i1 %t94)
  br label %bb18
bb18:
  %t95 = load ptr, ptr %lp14
  %t96 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 54
  %t97 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t97, ptr %l47
  %t98 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  %t99 = load ptr, ptr %lp14
  %t100 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t98, ptr %t100
  %t101 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e54
  br i1 %t101, label %bb19, label %bb20
bb19:
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 2
  %t104 = load { i64, ptr }, ptr %t103
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = call ptr @__olang_region_or(ptr %t105, ptr null)
  %t107 = icmp ne ptr %t106, null
  %t108 = select i1 %t107, ptr %t106, ptr null
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 1
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t108
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr %t114
  call void @__olang_region_drop(ptr %t120)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l47
  br label %bb20
bb20:
  %t121 = ptrtoint ptr %v2 to i64
  store i64 %t121, ptr %l49, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e56
  br i1 %t122, label %bb21, label %bb22
bb21:
  %t124 = call ptr @__olang_region_make(ptr %v2)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l49, !tbaa !24
  br label %bb22
bb22:
  %t126 = load ptr, ptr %lp6
  %t127 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t126
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t127, ptr %l51
  %t128 = load i64, ptr %l49
  %t129 = inttoptr i64 %t128 to ptr
  %t131 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H78c060037e43d34bc1ccb9cb8b566ae6(ptr %t129, ptr %l51)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t131, ptr %l53
  br label %bb23
bb23:
  %t132 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e56
  br i1 %t132, label %bb24, label %bb25
bb24:
  %t134 = load i64, ptr %l49
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 2
  %t137 = load { i64, ptr }, ptr %t136
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = call ptr @__olang_region_or(ptr %t138, ptr null)
  %t140 = icmp ne ptr %t139, null
  %t141 = select i1 %t140, ptr %t139, ptr null
  %t142 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 1
  %t143 = load { i64, ptr }, ptr %t142
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = call ptr @__olang_region_or(ptr %t144, ptr null)
  %t146 = icmp ne ptr %t145, null
  %t147 = select i1 %t146, ptr %t145, ptr %t141
  %t148 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 0
  %t149 = load { i64, ptr }, ptr %t148
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = call ptr @__olang_region_or(ptr %t150, ptr null)
  %t152 = icmp ne ptr %t151, null
  %t153 = select i1 %t152, ptr %t151, ptr %t147
  %t154 = icmp eq ptr %t153, %t135
  call void @__olang_region_settle(ptr %t135, i1 %t154)
  br label %bb25
bb25:
  %t155 = load ptr, ptr %lp14
  %t156 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 56
  %t157 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t156
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t157, ptr %l55
  %t158 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53
  %t159 = load ptr, ptr %lp14
  %t160 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t158, ptr %t160
  %t161 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e56
  br i1 %t161, label %bb26, label %bb27
bb26:
  %t163 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 2
  %t164 = load { i64, ptr }, ptr %t163
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = call ptr @__olang_region_or(ptr %t165, ptr null)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr null
  %t169 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 1
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr %t168
  %t175 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = call ptr @__olang_region_or(ptr %t177, ptr null)
  %t179 = icmp ne ptr %t178, null
  %t180 = select i1 %t179, ptr %t178, ptr %t174
  call void @__olang_region_drop(ptr %t180)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l55
  br label %bb27
bb27:
  %t181 = ptrtoint ptr %v2 to i64
  store i64 %t181, ptr %l57, !tbaa !24
  %t182 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e57
  br i1 %t182, label %bb28, label %bb29
bb28:
  %t184 = call ptr @__olang_region_make(ptr %v2)
  %t185 = ptrtoint ptr %t184 to i64
  store i64 %t185, ptr %l57, !tbaa !24
  br label %bb29
bb29:
  %t186 = load ptr, ptr %lp7
  %t187 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t186
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t187, ptr %l59
  %t188 = load i64, ptr %l57
  %t189 = inttoptr i64 %t188 to ptr
  %t191 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e(ptr %t189, ptr %l59)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t191, ptr %l61
  br label %bb30
bb30:
  %t192 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e57
  br i1 %t192, label %bb31, label %bb32
bb31:
  %t194 = load i64, ptr %l57
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %t196
  %t198 = extractvalue { i64, ptr } %t197, 1
  %t199 = call ptr @__olang_region_or(ptr %t198, ptr null)
  %t200 = icmp ne ptr %t199, null
  %t201 = select i1 %t200, ptr %t199, ptr null
  %t202 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 1
  %t203 = load { i64, ptr }, ptr %t202
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = call ptr @__olang_region_or(ptr %t204, ptr null)
  %t206 = icmp ne ptr %t205, null
  %t207 = select i1 %t206, ptr %t205, ptr %t201
  %t208 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 0
  %t209 = load { i64, ptr }, ptr %t208
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = call ptr @__olang_region_or(ptr %t210, ptr null)
  %t212 = icmp ne ptr %t211, null
  %t213 = select i1 %t212, ptr %t211, ptr %t207
  %t214 = icmp eq ptr %t213, %t195
  call void @__olang_region_settle(ptr %t195, i1 %t214)
  br label %bb32
bb32:
  %t215 = load ptr, ptr %lp14
  %t216 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 57
  %t217 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t216
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t217, ptr %l63
  %t218 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  %t219 = load ptr, ptr %lp14
  %t220 = getelementptr %"compiler/generic:Program", ptr %t219, i32 0, i32 57
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t218, ptr %t220
  %t221 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e57
  br i1 %t221, label %bb33, label %bb34
bb33:
  %t223 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 2
  %t224 = load { i64, ptr }, ptr %t223
  %t225 = extractvalue { i64, ptr } %t224, 1
  %t226 = call ptr @__olang_region_or(ptr %t225, ptr null)
  %t227 = icmp ne ptr %t226, null
  %t228 = select i1 %t227, ptr %t226, ptr null
  %t229 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 1
  %t230 = load { i64, ptr }, ptr %t229
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = call ptr @__olang_region_or(ptr %t231, ptr null)
  %t233 = icmp ne ptr %t232, null
  %t234 = select i1 %t233, ptr %t232, ptr %t228
  %t235 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 0
  %t236 = load { i64, ptr }, ptr %t235
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = call ptr @__olang_region_or(ptr %t237, ptr null)
  %t239 = icmp ne ptr %t238, null
  %t240 = select i1 %t239, ptr %t238, ptr %t234
  call void @__olang_region_drop(ptr %t240)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l63
  br label %bb34
bb34:
  %t241 = ptrtoint ptr %v2 to i64
  store i64 %t241, ptr %l65, !tbaa !24
  %t242 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e58
  br i1 %t242, label %bb35, label %bb36
bb35:
  %t244 = call ptr @__olang_region_make(ptr %v2)
  %t245 = ptrtoint ptr %t244 to i64
  store i64 %t245, ptr %l65, !tbaa !24
  br label %bb36
bb36:
  %t246 = load ptr, ptr %lp8
  %t247 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t246
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t247, ptr %l67
  %t248 = load i64, ptr %l65
  %t249 = inttoptr i64 %t248 to ptr
  %t251 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H04c1419530b7cb79edb46934aa4393dc(ptr %t249, ptr %l67)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t251, ptr %l69
  br label %bb37
bb37:
  %t252 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e58
  br i1 %t252, label %bb38, label %bb39
bb38:
  %t254 = load i64, ptr %l65
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69, i32 0, i32 2
  %t257 = load { i64, ptr }, ptr %t256
  %t258 = extractvalue { i64, ptr } %t257, 1
  %t259 = call ptr @__olang_region_or(ptr %t258, ptr null)
  %t260 = icmp ne ptr %t259, null
  %t261 = select i1 %t260, ptr %t259, ptr null
  %t262 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69, i32 0, i32 1
  %t263 = load { i64, ptr }, ptr %t262
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = call ptr @__olang_region_or(ptr %t264, ptr null)
  %t266 = icmp ne ptr %t265, null
  %t267 = select i1 %t266, ptr %t265, ptr %t261
  %t268 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69, i32 0, i32 0
  %t269 = load { i64, ptr }, ptr %t268
  %t270 = extractvalue { i64, ptr } %t269, 1
  %t271 = call ptr @__olang_region_or(ptr %t270, ptr null)
  %t272 = icmp ne ptr %t271, null
  %t273 = select i1 %t272, ptr %t271, ptr %t267
  %t274 = icmp eq ptr %t273, %t255
  call void @__olang_region_settle(ptr %t255, i1 %t274)
  br label %bb39
bb39:
  %t275 = load ptr, ptr %lp14
  %t276 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 58
  %t277 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t276
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t277, ptr %l71
  %t278 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  %t279 = load ptr, ptr %lp14
  %t280 = getelementptr %"compiler/generic:Program", ptr %t279, i32 0, i32 58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t278, ptr %t280
  %t281 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e58
  br i1 %t281, label %bb40, label %bb41
bb40:
  %t283 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 2
  %t284 = load { i64, ptr }, ptr %t283
  %t285 = extractvalue { i64, ptr } %t284, 1
  %t286 = call ptr @__olang_region_or(ptr %t285, ptr null)
  %t287 = icmp ne ptr %t286, null
  %t288 = select i1 %t287, ptr %t286, ptr null
  %t289 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 1
  %t290 = load { i64, ptr }, ptr %t289
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = call ptr @__olang_region_or(ptr %t291, ptr null)
  %t293 = icmp ne ptr %t292, null
  %t294 = select i1 %t293, ptr %t292, ptr %t288
  %t295 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 0
  %t296 = load { i64, ptr }, ptr %t295
  %t297 = extractvalue { i64, ptr } %t296, 1
  %t298 = call ptr @__olang_region_or(ptr %t297, ptr null)
  %t299 = icmp ne ptr %t298, null
  %t300 = select i1 %t299, ptr %t298, ptr %t294
  call void @__olang_region_drop(ptr %t300)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l71
  br label %bb41
bb41:
  %t301 = load ptr, ptr %lp14
  call void @compiler_2fcheck_3aChecker_2ector(ptr %t303, ptr %v2, ptr %v2, ptr %t301, i1 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t303, i64 5248, i1 false)
  br label %bb42
bb42:
  %t306 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 5248, i64 8)
  store ptr %t306, ptr %lp15
  %t307 = load ptr, ptr %lp15
  call void @llvm.memmove.p0.p0.i64(ptr %t307, ptr %l75, i64 5248, i1 false)
  %t308 = ptrtoint ptr %v2 to i64
  store i64 %t308, ptr %l76, !tbaa !24
  %t309 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e105
  br i1 %t309, label %bb43, label %bb44
bb43:
  %t311 = call ptr @__olang_region_make(ptr %v2)
  %t312 = ptrtoint ptr %t311 to i64
  store i64 %t312, ptr %l76, !tbaa !24
  br label %bb44
bb44:
  %t313 = load ptr, ptr %lp3
  %t314 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t313
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t314, ptr %l78
  %t315 = load i64, ptr %l76
  %t316 = inttoptr i64 %t315 to ptr
  %t318 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t316, ptr %l78)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t318, ptr %l80
  br label %bb45
bb45:
  %t319 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e105
  br i1 %t319, label %bb46, label %bb47
bb46:
  %t321 = load i64, ptr %l76
  %t322 = inttoptr i64 %t321 to ptr
  %t323 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 2
  %t324 = load { i64, ptr }, ptr %t323
  %t325 = extractvalue { i64, ptr } %t324, 1
  %t326 = call ptr @__olang_region_or(ptr %t325, ptr null)
  %t327 = icmp ne ptr %t326, null
  %t328 = select i1 %t327, ptr %t326, ptr null
  %t329 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 1
  %t330 = load { i64, ptr }, ptr %t329
  %t331 = extractvalue { i64, ptr } %t330, 1
  %t332 = call ptr @__olang_region_or(ptr %t331, ptr null)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr %t328
  %t335 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 0
  %t336 = load { i64, ptr }, ptr %t335
  %t337 = extractvalue { i64, ptr } %t336, 1
  %t338 = call ptr @__olang_region_or(ptr %t337, ptr null)
  %t339 = icmp ne ptr %t338, null
  %t340 = select i1 %t339, ptr %t338, ptr %t334
  %t341 = icmp eq ptr %t340, %t322
  call void @__olang_region_settle(ptr %t322, i1 %t341)
  br label %bb47
bb47:
  %t342 = load ptr, ptr %lp15
  %t343 = getelementptr %"compiler/check:Checker", ptr %t342, i32 0, i32 105
  %t344 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t343
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t344, ptr %l82
  %t345 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80
  %t346 = load ptr, ptr %lp15
  %t347 = getelementptr %"compiler/check:Checker", ptr %t346, i32 0, i32 105
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t345, ptr %t347
  %t348 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e105
  br i1 %t348, label %bb48, label %bb49
bb48:
  %t350 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 2
  %t351 = load { i64, ptr }, ptr %t350
  %t352 = extractvalue { i64, ptr } %t351, 1
  %t353 = call ptr @__olang_region_or(ptr %t352, ptr null)
  %t354 = icmp ne ptr %t353, null
  %t355 = select i1 %t354, ptr %t353, ptr null
  %t356 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 1
  %t357 = load { i64, ptr }, ptr %t356
  %t358 = extractvalue { i64, ptr } %t357, 1
  %t359 = call ptr @__olang_region_or(ptr %t358, ptr null)
  %t360 = icmp ne ptr %t359, null
  %t361 = select i1 %t360, ptr %t359, ptr %t355
  %t362 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 0
  %t363 = load { i64, ptr }, ptr %t362
  %t364 = extractvalue { i64, ptr } %t363, 1
  %t365 = call ptr @__olang_region_or(ptr %t364, ptr null)
  %t366 = icmp ne ptr %t365, null
  %t367 = select i1 %t366, ptr %t365, ptr %t361
  call void @__olang_region_drop(ptr %t367)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l82
  br label %bb49
bb49:
  %t368 = ptrtoint ptr %v2 to i64
  store i64 %t368, ptr %l84, !tbaa !24
  %t369 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e145
  br i1 %t369, label %bb50, label %bb51
bb50:
  %t371 = call ptr @__olang_region_make(ptr %v2)
  %t372 = ptrtoint ptr %t371 to i64
  store i64 %t372, ptr %l84, !tbaa !24
  br label %bb51
bb51:
  %t373 = load ptr, ptr %lp4
  %t374 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t373
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t374, ptr %l86
  %t375 = load i64, ptr %l84
  %t376 = inttoptr i64 %t375 to ptr
  %t378 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t376, ptr %l86)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t378, ptr %l88
  br label %bb52
bb52:
  %t379 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e145
  br i1 %t379, label %bb53, label %bb54
bb53:
  %t381 = load i64, ptr %l84
  %t382 = inttoptr i64 %t381 to ptr
  %t383 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 2
  %t384 = load { i64, ptr }, ptr %t383
  %t385 = extractvalue { i64, ptr } %t384, 1
  %t386 = call ptr @__olang_region_or(ptr %t385, ptr null)
  %t387 = icmp ne ptr %t386, null
  %t388 = select i1 %t387, ptr %t386, ptr null
  %t389 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 1
  %t390 = load { i64, ptr }, ptr %t389
  %t391 = extractvalue { i64, ptr } %t390, 1
  %t392 = call ptr @__olang_region_or(ptr %t391, ptr null)
  %t393 = icmp ne ptr %t392, null
  %t394 = select i1 %t393, ptr %t392, ptr %t388
  %t395 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 0
  %t396 = load { i64, ptr }, ptr %t395
  %t397 = extractvalue { i64, ptr } %t396, 1
  %t398 = call ptr @__olang_region_or(ptr %t397, ptr null)
  %t399 = icmp ne ptr %t398, null
  %t400 = select i1 %t399, ptr %t398, ptr %t394
  %t401 = icmp eq ptr %t400, %t382
  call void @__olang_region_settle(ptr %t382, i1 %t401)
  br label %bb54
bb54:
  %t402 = load ptr, ptr %lp15
  %t403 = getelementptr %"compiler/check:Checker", ptr %t402, i32 0, i32 145
  %t404 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t403
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t404, ptr %l90
  %t405 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88
  %t406 = load ptr, ptr %lp15
  %t407 = getelementptr %"compiler/check:Checker", ptr %t406, i32 0, i32 145
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t405, ptr %t407
  %t408 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e145
  br i1 %t408, label %bb55, label %bb56
bb55:
  %t410 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 2
  %t411 = load { i64, ptr }, ptr %t410
  %t412 = extractvalue { i64, ptr } %t411, 1
  %t413 = call ptr @__olang_region_or(ptr %t412, ptr null)
  %t414 = icmp ne ptr %t413, null
  %t415 = select i1 %t414, ptr %t413, ptr null
  %t416 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 1
  %t417 = load { i64, ptr }, ptr %t416
  %t418 = extractvalue { i64, ptr } %t417, 1
  %t419 = call ptr @__olang_region_or(ptr %t418, ptr null)
  %t420 = icmp ne ptr %t419, null
  %t421 = select i1 %t420, ptr %t419, ptr %t415
  %t422 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 0
  %t423 = load { i64, ptr }, ptr %t422
  %t424 = extractvalue { i64, ptr } %t423, 1
  %t425 = call ptr @__olang_region_or(ptr %t424, ptr null)
  %t426 = icmp ne ptr %t425, null
  %t427 = select i1 %t426, ptr %t425, ptr %t421
  call void @__olang_region_drop(ptr %t427)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l90
  br label %bb56
bb56:
  %t428 = load ptr, ptr %lp15
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCheckProgram(ptr %v2, ptr %t428)
  br label %bb57
bb57:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load ptr, ptr %lp15
  %t432 = load ptr, ptr %lp3
  %t433 = load ptr, ptr %lp4
  %t434 = load ptr, ptr %lp5
  %t435 = load ptr, ptr %lp6
  %t436 = load ptr, ptr %lp7
  %t437 = load ptr, ptr %lp8
  %t438 = load ptr, ptr %lp9
  %t448 = call i64 @compiler_2finterp_2edecide(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t430, ptr %t431, ptr %t432, ptr %t433, ptr %t434, ptr %t435, ptr %t436, ptr %t437, ptr %t438)
  store i64 %t448, ptr %l102
  br label %bb58
bb58:
  %t449 = load i64, ptr %l102, !tbaa !24
  %t450 = icmp eq i64 %t449, 0
  br i1 %t450, label %bb59, label %bb60
bb59:
  %t452 = load ptr, ptr %lp9
  store ptr %t452, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb61
bb60:
  br label %bb80
bb61:
  %t454 = load i64, ptr %l17, !tbaa !24
  store i64 %t454, ptr %l105, !tbaa !24
  %t455 = load ptr, ptr %l16, !tbaa !29
  %t457 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2eLen_3ccompiler_2finterp_3aCondErr_3e(ptr %v2, ptr %t455)
  store i64 %t457, ptr %l107
  br label %bb62
bb62:
  %t458 = load i64, ptr %l105, !tbaa !24
  %t459 = load i64, ptr %l107, !tbaa !24
  %t460 = icmp slt i64 %t458, %t459
  %t462 = xor i1 %t460, true
  br i1 %t462, label %bb63, label %bb64
bb63:
  br label %bb69
bb64:
  br label %bb65
bb65:
  %t464 = load ptr, ptr %l16, !tbaa !29
  %t465 = load i64, ptr %l17, !tbaa !24
  %t468 = call %"compiler/interp:CondErr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2eAt_3ccompiler_2finterp_3aCondErr_3e(ptr %v2, ptr %v2, ptr %t464, i64 %t465)
  store %"compiler/interp:CondErr" %t468, ptr %l112
  br label %bb66
bb66:
  %t469 = load %"compiler/interp:CondErr", ptr %l112
  store %"compiler/interp:CondErr" %t469, ptr %l18
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = getelementptr %"compiler/load:Loader", ptr %t470, i32 0, i32 4
  %t473 = load ptr, ptr %t472, !tbaa !29
  %t474 = getelementptr %"compiler/interp:CondErr", ptr %l18, i32 0, i32 0
  %t475 = load { i64, [3 x i64] }, ptr %t474
  %t476 = getelementptr %"compiler/interp:CondErr", ptr %l18, i32 0, i32 1
  %t477 = load %"compiler/diagmsg:Msg", ptr %t476
  %t481 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v2, ptr %t473, { i64, [3 x i64] } %t475, %"compiler/diagmsg:Msg" %t477)
  store i64 %t481, ptr %l117
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t482 = load i64, ptr %l17, !tbaa !24
  %t484 = add i64 %t482, 1
  store i64 %t484, ptr %l17, !tbaa !24
  br label %bb61
bb69:
  %t486 = call i64 @std_2ftime_2eNow()
  store i64 %t486, ptr %l120
  br label %bb70
bb70:
  %t487 = load i64, ptr %l120, !tbaa !24
  store i64 %t487, ptr %l19, !tbaa !24
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/load:Loader", ptr %t488, i32 0, i32 4
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFirm(ptr %v0, ptr %t491)
  store i64 %t493, ptr %l123
  br label %bb71
bb71:
  %t494 = load i64, ptr %l12, !tbaa !24
  %t495 = load i64, ptr %l123, !tbaa !24
  %t497 = sub i64 %t495, %t494
  %t499 = icmp eq i64 %t497, 0
  br i1 %t499, label %bb72, label %bb73
bb72:
  %t501 = load ptr, ptr %l2, !tbaa !29
  %t503 = getelementptr %"compiler/views:Kept", ptr %t501, i32 0, i32 3
  %t504 = load i1, ptr %t503, !tbaa !21
  br i1 %t504, label %bb74, label %bb75
bb73:
  br label %bb78
bb74:
  %t506 = load ptr, ptr %lp15
  %t507 = getelementptr %"compiler/check:Checker", ptr %t506, i32 0, i32 73
  store i1 true, ptr %t507, !tbaa !21
  br label %bb77
bb75:
  %t508 = load ptr, ptr %lp15
  %t509 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2finterp_2ejudgeViews(ptr %v2, ptr %v1, ptr %t508, ptr %t509)
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t512 = call i64 @std_2ftime_2eNow()
  store i64 %t512, ptr %l131
  br label %bb79
bb79:
  %t513 = load i64, ptr %l19, !tbaa !24
  %t514 = load i64, ptr %l131, !tbaa !24
  %t516 = sub i64 %t514, %t513
  %t518 = sdiv i64 %t516, 1000000
  %t520 = load ptr, ptr %lp15
  %t521 = getelementptr %"compiler/check:Checker", ptr %t520, i32 0, i32 74
  store i64 %t518, ptr %t521, !tbaa !24
  %t522 = load i64, ptr %l10, !tbaa !24
  %t524 = load ptr, ptr %lp15
  %t525 = getelementptr %"compiler/check:Checker", ptr %t524, i32 0, i32 75
  store i64 %t522, ptr %t525, !tbaa !24
  %t526 = load ptr, ptr %lp15
  call void @llvm.memmove.p0.p0.i64(ptr %l136, ptr %t526, i64 5248, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l136, i64 5248, i1 false)
  br label %ret
bb80:
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t529 = getelementptr %"compiler/load:Loader", ptr %t527, i32 0, i32 4
  %t530 = load ptr, ptr %t529, !tbaa !29
  %t531 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t530, i64 %t531)
  br label %bb81
bb81:
  br label %bb82
bb82:
  br label %bb8
ret:
  ret void
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
  %l139 = alloca { i64, ptr }
  %l140 = alloca i64
  %l141 = alloca { i64, ptr }
  %l143 = alloca ptr
  %l144 = alloca { i64, [3 x i64] }
  %l147 = alloca { i64, ptr }
  %l149 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l151 = alloca { i64, ptr }
  %l153 = alloca i64
  %l155 = alloca i64
  %l156 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l158 = alloca { i64, [3 x i64] }
  %l161 = alloca { i64, ptr }
  %l164 = alloca %"compiler/diagmsg:Msg"
  %l165 = alloca i64
  %l167 = alloca ptr
  %l168 = alloca i64
  %l169 = alloca { i64, [3 x i64] }
  %l170 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca ptr
  %l175 = alloca i64
  %l176 = alloca { i64, [3 x i64] }
  %l177 = alloca %"compiler/diagmsg:Msg"
  %l185 = alloca i1
  %l187 = alloca ptr
  %l188 = alloca i64
  %l189 = alloca { i64, [3 x i64] }
  %l191 = alloca %"compiler/diagmsg:Msg"
  %l193 = alloca ptr
  %l194 = alloca i64
  %l195 = alloca { i64, [3 x i64] }
  %l198 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l204 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i64
  %t28 = alloca %"compiler/interp:Exec", align 8
  %t143 = alloca { i64, [2 x i64] }, align 8
  %t182 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 111
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
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 14
  call void @compiler_2finterp_3aExec_2ector(ptr %t28, ptr %v0, ptr %v0, ptr %v0, ptr %t24, ptr %t27, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t28, i64 4976, i1 false)
  br label %bb5
bb5:
  %t32 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 4976, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %l36, i64 4976, i1 false)
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
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 140
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
  %t56 = icmp ne ptr %t55, null
  %t57 = select i1 %t56, ptr %t55, ptr null
  %t58 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 1
  %t59 = load { i64, ptr }, ptr %t58
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_region_or(ptr %t60, ptr null)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr %t57
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64
  %t66 = extractvalue { i64, ptr } %t65, 1
  %t67 = call ptr @__olang_region_or(ptr %t66, ptr null)
  %t68 = icmp ne ptr %t67, null
  %t69 = select i1 %t68, ptr %t67, ptr %t63
  %t70 = icmp eq ptr %t69, %t51
  call void @__olang_region_settle(ptr %t51, i1 %t70)
  br label %bb10
bb10:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = getelementptr %"compiler/interp:Exec", ptr %t71, i32 0, i32 10
  %t73 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t72
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t73, ptr %l46
  %t74 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44
  %t75 = load ptr, ptr %l38, !tbaa !29
  %t76 = getelementptr %"compiler/interp:Exec", ptr %t75, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t74, ptr %t76
  %t77 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t77, label %bb11, label %bb12
bb11:
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l46, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr null
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l46, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr %t84
  %t91 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l46, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr %t90
  call void @__olang_region_drop(ptr %t96)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l46
  br label %bb12
bb12:
  %t97 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t97, ptr %l48
  br label %bb13
bb13:
  %t98 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t98, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 111
  store ptr %t101, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t103 = load i64, ptr %l6, !tbaa !24
  store i64 %t103, ptr %l51, !tbaa !24
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t104)
  store i64 %t106, ptr %l53
  br label %bb15
bb15:
  %t107 = load i64, ptr %l51, !tbaa !24
  %t108 = load i64, ptr %l53, !tbaa !24
  %t109 = icmp slt i64 %t107, %t108
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb95
bb17:
  br label %bb18
bb18:
  %t113 = load ptr, ptr %l5, !tbaa !29
  %t114 = load i64, ptr %l6, !tbaa !24
  %t117 = call %"compiler/check:ValueAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eAt_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t113, i64 %t114)
  store %"compiler/check:ValueAsk" %t117, ptr %l58
  br label %bb19
bb19:
  %t118 = load %"compiler/check:ValueAsk", ptr %l58
  store %"compiler/check:ValueAsk" %t118, ptr %l7
  %t119 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 6
  %t120 = load i1, ptr %t119, !tbaa !21
  br i1 %t120, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb94
bb21:
  br label %bb22
bb22:
  %t122 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t123 = load i64, ptr %t122, !tbaa !24
  %t124 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t125 = getelementptr %"compiler/source:Span", ptr %t124, i32 0, i32 0
  %t126 = load i32, ptr %t125, !tbaa !23
  %t128 = sext i32 %t126 to i64
  %t131 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t123, i64 %t128)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t131, ptr %l63
  br label %bb23
bb23:
  %t132 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l63
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t132, ptr %l8
  %t133 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t136 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t133)
  store i1 %t136, ptr %l66
  br label %bb24
bb24:
  %t137 = load i1, ptr %l66, !tbaa !21
  br i1 %t137, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb94
bb26:
  br label %bb27
bb27:
  %t138 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 4
  %t139 = load i64, ptr %t138, !tbaa !24
  %t141 = trunc i64 %t139 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [2 x i64] }, ptr %t143, i32 0, i32 0
  store i64 0, ptr %t144
  %t146 = insertvalue { i32 } undef, i32 %t141, 0
  %t147 = getelementptr { i64, [2 x i64] }, ptr %t143, i32 0, i32 1
  store { i32 } %t146, ptr %t147
  %t148 = load { i64, [2 x i64] }, ptr %t143
  store { i64, [2 x i64] } %t148, ptr %l9
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t151 = load { i64, [2 x i64] }, ptr %l9
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t150, { i64, [2 x i64] } %t151)
  br label %bb28
bb28:
  %t154 = load ptr, ptr %l2, !tbaa !29
  %t156 = getelementptr %"compiler/interp:Exec", ptr %t154, i32 0, i32 4
  store ptr %t156, ptr %l74, !tbaa !29
  %t157 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t157, ptr %l75
  %t158 = icmp sge i64 0, 0
  br i1 %t158, label %bb29, label %bb30
bb29:
  %t160 = icmp sle i64 0, 1152921504606846975
  br i1 %t160, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_e1183b54591591ba_6784d54d52bb291e)
  unreachable
bb31:
  %t162 = mul i64 0, 8
  %t163 = insertvalue { i64, ptr } undef, i64 0, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t165 = load ptr, ptr %l74, !tbaa !29
  %t166 = load { i64, [2 x i64] }, ptr %l75
  %t168 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v0, ptr %v0, ptr %t165, { i64, [2 x i64] } %t166, { i64, ptr } %t164)
  store { i64, [5 x i64] } %t168, ptr %l79
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e1183b54591591ba_6784d54d52bb291e)
  unreachable
bb33:
  %t169 = load { i64, [5 x i64] }, ptr %l79
  %t170 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t171 = load i64, ptr %t170, !tbaa !24
  %t172 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t173 = getelementptr %"compiler/source:Span", ptr %t172, i32 0, i32 0
  %t174 = load i32, ptr %t173, !tbaa !23
  %t176 = sext i32 %t174 to i64
  %t177 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t178 = getelementptr %"compiler/source:Span", ptr %t177, i32 0, i32 1
  %t179 = load i32, ptr %t178, !tbaa !23
  %t181 = sext i32 %t179 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [3 x i64] }, ptr %t182, i32 0, i32 0
  store i64 3, ptr %t183
  %t185 = insertvalue { i64, i64, i64 } undef, i64 %t171, 0
  %t187 = insertvalue { i64, i64, i64 } %t185, i64 %t176, 1
  %t189 = insertvalue { i64, i64, i64 } %t187, i64 %t181, 2
  %t190 = getelementptr { i64, [3 x i64] }, ptr %t182, i32 0, i32 1
  store { i64, i64, i64 } %t189, ptr %t190
  %t191 = load { i64, [3 x i64] }, ptr %t182
  store { i64, [3 x i64] } %t191, ptr %l11
  %t194 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t195 = load %"compiler/source:Span", ptr %t194
  %t198 = call { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2finterp_2evalueWhy(ptr %v0, ptr %s3, { i64, [5 x i64] } %t169, %"compiler/source:Span" %t195)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t198, ptr %l88
  br label %bb34
bb34:
  %t199 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l88
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t199, ptr %l12
  %t200 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l12, i32 0, i32 0
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l13, !tbaa !27
  %t203 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l12, i32 0, i32 1
  %t204 = load i64, ptr %t203, !tbaa !24
  store i64 %t204, ptr %l14, !tbaa !24
  %t206 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l12, i32 0, i32 2
  %t207 = load %"compiler/source:Span", ptr %t206
  store %"compiler/source:Span" %t207, ptr %l15
  %t209 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t211 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t209, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t211, ptr %l93
  br label %bb35
bb35:
  %t212 = load i1, ptr %l93, !tbaa !21
  br i1 %t212, label %bb36, label %bb37
bb36:
  %t213 = load i64, ptr %l4, !tbaa !24
  %t215 = add i64 %t213, 1
  store i64 %t215, ptr %l4, !tbaa !24
  %t217 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 0
  %t218 = load i32, ptr %t217, !range !{i32 0, i32 3}
  %t220 = trunc i64 2 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb38, label %bb39
bb37:
  br label %bb49
bb38:
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t225 = getelementptr %"compiler/interp:Exec", ptr %t223, i32 0, i32 4
  %t227 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eResultHoldsAddress(ptr %v0, ptr %t225)
  store i1 %t227, ptr %l101
  br label %bb40
bb39:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb41
bb40:
  %t228 = load i1, ptr %l101, !tbaa !21
  store i1 %t228, ptr %l98, !tbaa !21
  br label %bb41
bb41:
  %t229 = load i1, ptr %l98, !tbaa !21
  br i1 %t229, label %bb42, label %bb43
bb42:
  %t230 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t230, i1 true)
  br label %bb44
bb43:
  br label %bb48
bb44:
  %t233 = load ptr, ptr %l1, !tbaa !29
  store ptr %t233, ptr %l104, !tbaa !29
  %t234 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t234, ptr %l105
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t237 = load i32, ptr %t236, !tbaa !23
  %t240 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v0, ptr %t235, i32 %t237)
  store { i64, ptr } %t240, ptr %l108
  br label %bb45
bb45:
  %t241 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 0
  %t243 = extractvalue { i64, ptr } %t241, 1
  %t244 = mul i64 %t242, 1
  %t245 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t244)
  call void @llvm.memcpy.p0.p0.i64(ptr %t245, ptr %t243, i64 %t244, i1 false)
  %t246 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  %t249 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eZeroValueShared(ptr %v0, ptr %v0, { i64, ptr } %t247)
  store %"compiler/diagmsg:Msg" %t249, ptr %l110
  br label %bb46
bb46:
  %t250 = load ptr, ptr %l104, !tbaa !29
  %t251 = load { i64, [3 x i64] }, ptr %l105
  %t252 = load %"compiler/diagmsg:Msg", ptr %l110
  %t253 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t250, { i64, [3 x i64] } %t251, %"compiler/diagmsg:Msg" %t252)
  store i64 %t253, ptr %l111
  br label %bb47
bb47:
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s3)
  br label %bb94
bb49:
  %t254 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t254, i1 true)
  br label %bb50
bb50:
  %t257 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 0
  %t258 = load i32, ptr %t257, !range !{i32 0, i32 3}
  %t260 = trunc i64 0 to i32
  %t261 = icmp eq i32 %t258, %t260
  br i1 %t261, label %bb51, label %bb52
bb51:
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %l116, !tbaa !29
  %t264 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t264, ptr %l117
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t267 = load i32, ptr %t266, !tbaa !23
  %t270 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v0, ptr %t265, i32 %t267)
  store { i64, ptr } %t270, ptr %l120
  br label %bb53
bb52:
  br label %bb57
bb53:
  %t271 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  %t273 = extractvalue { i64, ptr } %t271, 1
  %t274 = mul i64 %t272, 1
  %t275 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t274)
  call void @llvm.memcpy.p0.p0.i64(ptr %t275, ptr %t273, i64 %t274, i1 false)
  %t276 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  %t278 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t281 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralCtorFails(ptr %v0, ptr %s3, ptr %v0, { i64, ptr } %t277, { i64, ptr } %t278)
  store %"compiler/diagmsg:Msg" %t281, ptr %l123
  br label %bb54
bb54:
  %t282 = load ptr, ptr %l116, !tbaa !29
  %t283 = load { i64, [3 x i64] }, ptr %l117
  %t284 = load %"compiler/diagmsg:Msg", ptr %l123
  %t285 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t282, { i64, [3 x i64] } %t283, %"compiler/diagmsg:Msg" %t284)
  store i64 %t285, ptr %l124
  br label %bb55
bb55:
  %t286 = load i64, ptr %l124, !tbaa !24
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t290 = load i64, ptr %t289, !tbaa !24
  %t291 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t292 = load %"compiler/source:Span", ptr %t291
  %t293 = load i64, ptr %l14, !tbaa !24
  %t294 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2finterp_2enoteWhy(ptr %v0, ptr %t287, i64 %t286, i64 %t290, %"compiler/source:Span" %t292, i64 %t293, %"compiler/source:Span" %t294)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s3)
  br label %bb94
bb57:
  %t301 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 5
  %t302 = load { i64, [3 x i64] }, ptr %t301
  store { i64, [3 x i64] } %t302, ptr %l131
  %t303 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t303, ptr %l133
  %t306 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdiag_3aWhere(ptr %l131, ptr %l133)
  store i1 %t306, ptr %l135
  br label %bb58
bb58:
  %t307 = load i1, ptr %l135, !tbaa !21
  %t308 = xor i1 %t307, true
  store i1 %t308, ptr %l17, !tbaa !21
  %t310 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 5
  %t311 = load { i64, [3 x i64] }, ptr %t310
  store { i64, [3 x i64] } %t311, ptr %l18
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l138, !tbaa !27
  %t313 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t313, ptr %l139, !tbaa !27
  %t314 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t314, 0
  store i64 %t315, ptr %l140, !tbaa !24
  %t316 = load i64, ptr %l140, !tbaa !24
  %t317 = mul i64 %t316, 1
  %t318 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t317)
  %t319 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t318, 1
  store { i64, ptr } %t320, ptr %l141, !tbaa !27
  %t321 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = load i64, ptr %l140, !tbaa !24
  %t326 = mul i64 %t325, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t322, ptr %t324, i64 %t326, i1 false)
  %t327 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t327, ptr %l19, !tbaa !27
  %t328 = load i1, ptr %l17, !tbaa !21
  br i1 %t328, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s9
  %t330 = load ptr, ptr %l1, !tbaa !29
  store ptr %t330, ptr %l143, !tbaa !29
  %t331 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 5
  %t332 = load { i64, [3 x i64] }, ptr %t331
  store { i64, [3 x i64] } %t332, ptr %l144
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t335 = load i32, ptr %t334, !tbaa !23
  %t338 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s9, ptr %t333, i32 %t335)
  store { i64, ptr } %t338, ptr %l147
  br label %bb61
bb60:
  br label %bb66
bb61:
  %t339 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t339, 0
  %t341 = extractvalue { i64, ptr } %t339, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  %t346 = load ptr, ptr %l143, !tbaa !29
  %t347 = load { i64, [3 x i64] }, ptr %l144
  %t349 = call { { i64, [3 x i64] }, { i64, ptr } } @compiler_2finterp_2ezeroUseArg(ptr %v0, ptr %s9, ptr %s9, ptr %t346, { i64, [3 x i64] } %t347, { i64, ptr } %t345)
  store { { i64, [3 x i64] }, { i64, ptr } } %t349, ptr %l149
  br label %bb62
bb62:
  %t350 = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %l149
  store { { i64, [3 x i64] }, { i64, ptr } } %t350, ptr %l20
  %t351 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l20, i32 0, i32 0
  %t352 = load { i64, [3 x i64] }, ptr %t351
  store { i64, [3 x i64] } %t352, ptr %l18
  %t354 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l20, i32 0, i32 1
  %t355 = load { i64, ptr }, ptr %t354, !tbaa !27
  store { i64, ptr } %t355, ptr %l151, !tbaa !27
  %t356 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t356, 0
  %t358 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 0
  store i64 %t359, ptr %l153, !tbaa !24
  %t361 = load i64, ptr %l153, !tbaa !24
  %t362 = icmp eq i64 %t357, %t361
  br i1 %t362, label %bb63, label %bb64
bb63:
  %t364 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t365 = load ptr, ptr %t364, !tbaa !27
  %t366 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = load i64, ptr %l153, !tbaa !24
  %t369 = mul i64 %t368, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t365, ptr %t367, i64 %t369, i1 false)
  br label %bb65
bb64:
  %t370 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t371 = extractvalue { i64, ptr } %t370, 0
  store i64 %t371, ptr %l155, !tbaa !24
  %t372 = load i64, ptr %l155, !tbaa !24
  %t373 = mul i64 %t372, 1
  %t374 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t373)
  %t375 = insertvalue { i64, ptr } undef, i64 %t372, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t374, 1
  store { i64, ptr } %t376, ptr %l156, !tbaa !27
  %t377 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !27
  %t381 = load i64, ptr %l155, !tbaa !24
  %t382 = mul i64 %t381, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t378, ptr %t380, i64 %t382, i1 false)
  %t383 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t383, ptr %l19, !tbaa !27
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb66:
  %t384 = load ptr, ptr %l1, !tbaa !29
  store ptr %t384, ptr %l157, !tbaa !29
  %t385 = load { i64, [3 x i64] }, ptr %l18
  store { i64, [3 x i64] } %t385, ptr %l158
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t388 = load i32, ptr %t387, !tbaa !23
  %t391 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v0, ptr %t386, i32 %t388)
  store { i64, ptr } %t391, ptr %l161
  br label %bb67
bb67:
  %t392 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 0
  %t394 = extractvalue { i64, ptr } %t392, 1
  %t395 = mul i64 %t393, 1
  %t396 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t395)
  call void @llvm.memcpy.p0.p0.i64(ptr %t396, ptr %t394, i64 %t395, i1 false)
  %t397 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  %t399 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t402 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %v0, ptr %s3, ptr %v0, { i64, ptr } %t398, { i64, ptr } %t399)
  store %"compiler/diagmsg:Msg" %t402, ptr %l164
  br label %bb68
bb68:
  %t403 = load ptr, ptr %l157, !tbaa !29
  %t404 = load { i64, [3 x i64] }, ptr %l158
  %t405 = load %"compiler/diagmsg:Msg", ptr %l164
  %t406 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t403, { i64, [3 x i64] } %t404, %"compiler/diagmsg:Msg" %t405)
  store i64 %t406, ptr %l165
  br label %bb69
bb69:
  %t407 = load i64, ptr %l165, !tbaa !24
  store i64 %t407, ptr %l21, !tbaa !24
  %t408 = load i1, ptr %l17, !tbaa !21
  br i1 %t408, label %bb70, label %bb71
bb70:
  %t410 = load ptr, ptr %l1, !tbaa !29
  store ptr %t410, ptr %l167, !tbaa !29
  %t411 = load i64, ptr %l21, !tbaa !24
  store i64 %t411, ptr %l168, !tbaa !24
  %t412 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t412, ptr %l169
  %t413 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %v0)
  store %"compiler/diagmsg:Msg" %t413, ptr %l170
  br label %bb72
bb71:
  br label %bb74
bb72:
  %t414 = load ptr, ptr %l167, !tbaa !29
  %t415 = load i64, ptr %l168, !tbaa !24
  %t416 = load { i64, [3 x i64] }, ptr %l169
  %t417 = load %"compiler/diagmsg:Msg", ptr %l170
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t414, i64 %t415, { i64, [3 x i64] } %t416, %"compiler/diagmsg:Msg" %t417)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t418 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 7
  %t419 = load { i64, [3 x i64] }, ptr %t418
  %t421 = extractvalue { i64, [3 x i64] } %t419, 0
  %t422 = icmp eq i64 %t421, 0
  %t424 = xor i1 %t422, true
  br i1 %t424, label %bb75, label %bb76
bb75:
  %t426 = load ptr, ptr %l1, !tbaa !29
  store ptr %t426, ptr %l174, !tbaa !29
  %t427 = load i64, ptr %l21, !tbaa !24
  store i64 %t427, ptr %l175, !tbaa !24
  %t428 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 7
  %t429 = load { i64, [3 x i64] }, ptr %t428
  store { i64, [3 x i64] } %t429, ptr %l176
  %t430 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadUnassigned(ptr %v0)
  store %"compiler/diagmsg:Msg" %t430, ptr %l177
  br label %bb77
bb76:
  br label %bb79
bb77:
  %t431 = load ptr, ptr %l174, !tbaa !29
  %t432 = load i64, ptr %l175, !tbaa !24
  %t433 = load { i64, [3 x i64] }, ptr %l176
  %t434 = load %"compiler/diagmsg:Msg", ptr %l177
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t431, i64 %t432, { i64, [3 x i64] } %t433, %"compiler/diagmsg:Msg" %t434)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t435 = load ptr, ptr %l1, !tbaa !29
  %t436 = load i64, ptr %l21, !tbaa !24
  %t437 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t438 = load i64, ptr %t437, !tbaa !24
  %t439 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t440 = load %"compiler/source:Span", ptr %t439
  %t441 = load i64, ptr %l14, !tbaa !24
  %t442 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2finterp_2enoteWhy(ptr %v0, ptr %t435, i64 %t436, i64 %t438, %"compiler/source:Span" %t440, i64 %t441, %"compiler/source:Span" %t442)
  br label %bb80
bb80:
  %t449 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t451 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t449, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t451, ptr %l185
  br label %bb81
bb81:
  %t452 = load i1, ptr %l185, !tbaa !21
  %t453 = xor i1 %t452, true
  br i1 %t453, label %bb82, label %bb83
bb82:
  %t455 = load ptr, ptr %l1, !tbaa !29
  store ptr %t455, ptr %l187, !tbaa !29
  %t456 = load i64, ptr %l21, !tbaa !24
  store i64 %t456, ptr %l188, !tbaa !24
  %t457 = load { i64, [3 x i64] }, ptr %l18
  store { i64, [3 x i64] } %t457, ptr %l189
  %t458 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t460 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroByReference(ptr %s3, ptr %v0, { i64, ptr } %t458)
  store %"compiler/diagmsg:Msg" %t460, ptr %l191
  br label %bb84
bb83:
  %t461 = load i1, ptr %l17, !tbaa !21
  br i1 %t461, label %bb86, label %bb87
bb84:
  %t463 = load ptr, ptr %l187, !tbaa !29
  %t464 = load i64, ptr %l188, !tbaa !24
  %t465 = load { i64, [3 x i64] }, ptr %l189
  %t466 = load %"compiler/diagmsg:Msg", ptr %l191
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t463, i64 %t464, { i64, [3 x i64] } %t465, %"compiler/diagmsg:Msg" %t466)
  br label %bb85
bb85:
  br label %bb93
bb86:
  %t467 = load ptr, ptr %l1, !tbaa !29
  store ptr %t467, ptr %l193, !tbaa !29
  %t468 = load i64, ptr %l21, !tbaa !24
  store i64 %t468, ptr %l194, !tbaa !24
  %t469 = load { i64, [3 x i64] }, ptr %l18
  store { i64, [3 x i64] } %t469, ptr %l195
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t472 = load i32, ptr %t471, !tbaa !23
  %t475 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v0, ptr %t470, i32 %t472)
  store { i64, ptr } %t475, ptr %l198
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t476 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t477 = extractvalue { i64, ptr } %t476, 0
  %t478 = extractvalue { i64, ptr } %t476, 1
  %t479 = mul i64 %t477, 1
  %t480 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t479)
  call void @llvm.memcpy.p0.p0.i64(ptr %t480, ptr %t478, i64 %t479, i1 false)
  %t481 = insertvalue { i64, ptr } undef, i64 %t477, 0
  %t482 = insertvalue { i64, ptr } %t481, ptr %t480, 1
  store { i64, ptr } %t482, ptr %l199, !tbaa !27
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t485 = load i32, ptr %t484, !tbaa !23
  %t488 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v0, ptr %t483, i32 %t485)
  store { i64, ptr } %t488, ptr %l202
  br label %bb89
bb89:
  %t489 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t490 = extractvalue { i64, ptr } %t489, 0
  %t491 = extractvalue { i64, ptr } %t489, 1
  %t492 = mul i64 %t490, 1
  %t493 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t492)
  call void @llvm.memcpy.p0.p0.i64(ptr %t493, ptr %t491, i64 %t492, i1 false)
  %t494 = insertvalue { i64, ptr } undef, i64 %t490, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr %t493, 1
  %t496 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t498 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroReferenceHasOne(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t496, { i64, ptr } %t495)
  store %"compiler/diagmsg:Msg" %t498, ptr %l204
  br label %bb90
bb90:
  %t499 = load ptr, ptr %l193, !tbaa !29
  %t500 = load i64, ptr %l194, !tbaa !24
  %t501 = load { i64, [3 x i64] }, ptr %l195
  %t502 = load %"compiler/diagmsg:Msg", ptr %l204
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t499, i64 %t500, { i64, [3 x i64] } %t501, %"compiler/diagmsg:Msg" %t502)
  br label %bb91
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s3)
  br label %bb94
bb94:
  %t503 = load i64, ptr %l6, !tbaa !24
  %t505 = add i64 %t503, 1
  store i64 %t505, ptr %l6, !tbaa !24
  br label %bb14
bb95:
  %t507 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t507, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 15
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

define dso_local { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eInitGlobals(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
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
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store ptr %t6, ptr %lp1
  %t8 = load ptr, ptr %lp1
  store { i64, [5 x i64] } %t5, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/interp:Exec", ptr %t9, i32 0, i32 9
  store ptr %t11, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l13, !tbaa !24
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l15
  br label %bb3
bb3:
  %t17 = load i64, ptr %l13, !tbaa !24
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  br label %bb26
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l20
  br label %bb7
bb7:
  %t28 = load i64, ptr %l20, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/interp:Exec", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t37 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t32, i64 %t28)
  store ptr %t37, ptr %l25
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l25, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Body", ptr %t38, i32 0, i32 1
  %t41 = load { i64, [2 x i64] }, ptr %t40
  store { i64, [2 x i64] } %t41, ptr %l5
  %t43 = load { i64, [2 x i64] }, ptr %l5
  %t45 = extractvalue { i64, [2 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 6
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t49 = getelementptr { i64, i32 }, ptr %t48, i32 0, i32 0
  %t50 = load i64, ptr %t49
  store i64 %t50, ptr %l6, !tbaa !24
  %t52 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t53 = getelementptr { i64, i32 }, ptr %t52, i32 0, i32 1
  %t54 = load i32, ptr %t53
  store i32 %t54, ptr %l7, !tbaa !23
  br label %bb11
bb10:
  br label %bb19
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/interp:Exec", ptr %t56, i32 0, i32 4
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i32, ptr %l7, !tbaa !23
  %t64 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eInitGlobal(ptr %v0, ptr %v0, ptr %t58, i64 %t59, i32 %t60)
  store { i64, [5 x i64] } %t64, ptr %l36
  br label %bb12
bb12:
  %t65 = load { i64, [5 x i64] }, ptr %l36
  store { i64, [5 x i64] } %t65, ptr %l8
  %t66 = load { i64, [5 x i64] }, ptr %l8
  %t68 = extractvalue { i64, [5 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 0
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb13, label %bb14
bb13:
  %t73 = load ptr, ptr %lp1
  %t74 = load { i64, [5 x i64] }, ptr %t73
  %t76 = extractvalue { i64, [5 x i64] } %t74, 0
  %t77 = icmp eq i64 %t76, 0
  store i1 %t77, ptr %l40, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb15
bb15:
  %t79 = load i1, ptr %l40, !tbaa !21
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t80 = load { i64, [5 x i64] }, ptr %l8
  %t82 = load ptr, ptr %lp1
  store { i64, [5 x i64] } %t80, ptr %t82
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
  %t83 = load i64, ptr %l3, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l3, !tbaa !24
  br label %bb2
bb26:
  %t87 = load ptr, ptr %lp1
  %t88 = load { i64, [5 x i64] }, ptr %t87
  store { i64, [5 x i64] } %t88, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
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
  %t87 = getelementptr %"compiler/lower:Lowerer", ptr %t86, i32 0, i32 7
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
  %t123 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 21
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
  call void @compiler_2finterp_2esayErr(ptr %s1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d16, i32 0, i32 1) })
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
  %t51 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %s0, ptr %t48, { i64, [2 x i64] } %t49, { i64, ptr } %t47)
  store { i64, [5 x i64] } %t51, ptr %l33
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_c21b7649f9083df0_c859438e5e055394)
  unreachable
bb14:
  %t52 = load { i64, [5 x i64] }, ptr %l33
  store { i64, [5 x i64] } %t52, ptr %l5
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
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
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
  %t143 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t145 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
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
  %t195 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t197 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = add i64 %t196, %t199
  %t201 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
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
  %t225 = load i32, ptr %t224, !range !{i32 0, i32 16}
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
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
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
  %t254 = load i32, ptr %l10, !range !{i32 0, i32 16}
  %t256 = trunc i64 14 to i32
  %t257 = icmp eq i32 %t254, %t256
  br i1 %t257, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb56
bb55:
  %t259 = load i32, ptr %l10, !range !{i32 0, i32 16}
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
  %t278 = load i32, ptr %l10, !range !{i32 0, i32 16}
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
  %t296 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t297 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
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
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t137, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) })
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
  %t235 = getelementptr %"compiler/eval:Machine", ptr %t234, i32 0, i32 83
  store i1 true, ptr %t235, !tbaa !21
  store i64 0, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  store [0 x i64] zeroinitializer, ptr %l20
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l143, !tbaa !29
  %t238 = ptrtoint ptr %v0 to i64
  store i64 %t238, ptr %l144, !tbaa !24
  %t239 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e80
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
  %t288 = getelementptr %"compiler/eval:Machine", ptr %t287, i32 0, i32 80
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  store { i64, ptr } %t289, ptr %l159, !tbaa !27
  %t291 = load ptr, ptr %l143, !tbaa !29
  %t292 = getelementptr %"compiler/interp:Exec", ptr %t291, i32 0, i32 4
  %t293 = getelementptr %"compiler/eval:Machine", ptr %t292, i32 0, i32 80
  store { i64, ptr } %t285, ptr %t293, !tbaa !27
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e80
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
  %t328 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 81
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  store { i64, ptr } %t329, ptr %l175, !tbaa !27
  %t331 = load ptr, ptr %l173, !tbaa !29
  %t332 = getelementptr %"compiler/interp:Exec", ptr %t331, i32 0, i32 4
  %t333 = getelementptr %"compiler/eval:Machine", ptr %t332, i32 0, i32 81
  store { i64, ptr } %t325, ptr %t333, !tbaa !27
  %t334 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e81
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
  %t369 = getelementptr %"compiler/eval:Machine", ptr %t368, i32 0, i32 82
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
  %t401 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t402 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t404 = extractvalue { i64, ptr } %t400, 1
  %t405 = extractvalue { i64, ptr } %t400, 0
  %t406 = add i64 %t402, %t405
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
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
  %t434 = load i32, ptr %t433, !range !{i32 0, i32 16}
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
  %t442 = load i32, ptr %t441, !range !{i32 0, i32 16}
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
  %t471 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t472 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t473 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t473, 1
  %t475 = extractvalue { i64, ptr } %t473, 0
  %t476 = add i64 %t472, %t475
  %t477 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t478 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t479 = add i64 %t476, %t478
  %t480 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t481 = extractvalue { i64, ptr } %t480, 1
  %t482 = extractvalue { i64, ptr } %t480, 0
  %t483 = add i64 %t479, %t482
  %t484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t485 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t486 = add i64 %t483, %t485
  %t487 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t487, 1
  %t489 = extractvalue { i64, ptr } %t487, 0
  %t490 = add i64 %t486, %t489
  %t491 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t492 = extractvalue { i64, ptr } %t491, 1
  %t493 = extractvalue { i64, ptr } %t491, 0
  %t494 = add i64 %t490, %t493
  %t495 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t496 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
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
  %t551 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t552 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t553 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t553, 1
  %t555 = extractvalue { i64, ptr } %t553, 0
  %t556 = add i64 %t552, %t555
  %t557 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t558 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t559 = add i64 %t556, %t558
  %t560 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t561 = extractvalue { i64, ptr } %t560, 1
  %t562 = extractvalue { i64, ptr } %t560, 0
  %t563 = add i64 %t559, %t562
  %t564 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t565 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
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
  %t599 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s16, ptr %s16, { i64, ptr } %t597, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) })
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
  %t607 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t608 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
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
  %t629 = load i32, ptr %t628, !range !{i32 0, i32 16}
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
  %t637 = load i32, ptr %t636, !range !{i32 0, i32 16}
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
  %t666 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t667 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t669 = extractvalue { i64, ptr } %t665, 1
  %t670 = extractvalue { i64, ptr } %t665, 0
  %t671 = add i64 %t667, %t670
  %t672 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t673 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
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
  %t696 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t697 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t698 = add i64 %t695, %t697
  %t700 = call i64 @__olang_fmt_i64(ptr null, i64 %t693)
  %t701 = add i64 %t698, %t700
  %t702 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t703 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
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
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 87
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/interp:Exec", ptr %t11, i32 0, i32 4
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 87
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %t15)
  %t20 = add i64 %t17, %t19
  %t21 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb23
bb19:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t114 = icmp eq i64 %t112, 1
  br i1 %t114, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l62, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l62, !tbaa !27
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
  %t170 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t174 = extractvalue { i64, ptr } %t166, 1
  %t175 = extractvalue { i64, ptr } %t166, 0
  %t176 = add i64 %t172, %t175
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
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
  %t81 = getelementptr %"compiler/ast:Sig", ptr %t79, i32 0, i32 7
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

define dso_local { i32, i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eintOf(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l11 = alloca ptr
  %l12 = alloca { i64, [2 x i64] }
  %l16 = alloca { i64, [5 x i64] }
  %l26 = alloca i64
  %rv = alloca { i32, i64 }
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
  %t30 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v0, ptr %v0, ptr %t27, { i64, [2 x i64] } %t28, { i64, ptr } %t26)
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
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 15
  %t47 = load %"compiler/eval:Ptr", ptr %t46
  %t52 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t42, %"compiler/eval:Ptr" %t47, i32 %a2)
  store i64 %t52, ptr %l26
  br label %bb10
bb10:
  %t53 = load i64, ptr %l26, !tbaa !24
  %t54 = insertvalue { i32, i64 } zeroinitializer, i64 %t53, 1
  store { i32, i64 } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
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
  %t431 = alloca { i64, [2 x i64] }, align 8
  %t639 = alloca { i64, [2 x i64] }, align 8
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
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e4
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
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t20, i64 400, i1 false)
  %t22 = load i64, ptr %l38
  %t23 = inttoptr i64 %t22 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aGenInfo(ptr %t21, ptr %t23, ptr %l43)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t21, i64 400, i1 false)
  br label %bb7
bb7:
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e4
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load i64, ptr %l38
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 5
  %t30 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = call ptr @__olang_region_or(ptr %t32, ptr null)
  %t34 = icmp ne ptr %t33, null
  %t35 = select i1 %t34, ptr %t33, ptr null
  %t36 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 4
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t36, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr %t35
  %t43 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 4
  %t44 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t43, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = call ptr @__olang_region_or(ptr %t46, ptr null)
  %t48 = icmp ne ptr %t47, null
  %t49 = select i1 %t48, ptr %t47, ptr %t42
  %t50 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 4
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t50, i32 0, i32 0
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr %t49
  %t57 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 3
  %t58 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t57, i32 0, i32 2
  %t59 = load { i64, ptr }, ptr %t58
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_region_or(ptr %t60, ptr null)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr %t56
  %t64 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 3
  %t65 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t64, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr %t63
  %t71 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 3
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = call ptr @__olang_region_or(ptr %t74, ptr null)
  %t76 = icmp ne ptr %t75, null
  %t77 = select i1 %t76, ptr %t75, ptr %t70
  %t78 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 2
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t78, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr %t77
  %t85 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 2
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t85, i32 0, i32 1
  %t87 = load { i64, ptr }, ptr %t86
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr null)
  %t90 = icmp ne ptr %t89, null
  %t91 = select i1 %t90, ptr %t89, ptr %t84
  %t92 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 2
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t92, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr %t91
  %t99 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 1
  %t100 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t99, i32 0, i32 2
  %t101 = load { i64, ptr }, ptr %t100
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = call ptr @__olang_region_or(ptr %t102, ptr null)
  %t104 = icmp ne ptr %t103, null
  %t105 = select i1 %t104, ptr %t103, ptr %t98
  %t106 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 1
  %t107 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = call ptr @__olang_region_or(ptr %t109, ptr null)
  %t111 = icmp ne ptr %t110, null
  %t112 = select i1 %t111, ptr %t110, ptr %t105
  %t113 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 1
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t113, i32 0, i32 0
  %t115 = load { i64, ptr }, ptr %t114
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = call ptr @__olang_region_or(ptr %t116, ptr null)
  %t118 = icmp ne ptr %t117, null
  %t119 = select i1 %t118, ptr %t117, ptr %t112
  %t120 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 0
  %t121 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t120, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = call ptr @__olang_region_or(ptr %t123, ptr null)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr %t119
  %t127 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 0
  %t128 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t127, i32 0, i32 1
  %t129 = load { i64, ptr }, ptr %t128
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = call ptr @__olang_region_or(ptr %t130, ptr null)
  %t132 = icmp ne ptr %t131, null
  %t133 = select i1 %t132, ptr %t131, ptr %t126
  %t134 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 0
  %t135 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t134, i32 0, i32 0
  %t136 = load { i64, ptr }, ptr %t135
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = call ptr @__olang_region_or(ptr %t137, ptr null)
  %t139 = icmp ne ptr %t138, null
  %t140 = select i1 %t139, ptr %t138, ptr %t133
  %t141 = icmp eq ptr %t140, %t28
  call void @__olang_region_settle(ptr %t28, i1 %t141)
  br label %bb9
bb9:
  %t142 = load ptr, ptr %l37, !tbaa !29
  %t143 = getelementptr %"compiler/interp:Exec", ptr %t142, i32 0, i32 4
  %t144 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t144, i64 400, i1 false)
  %t145 = load ptr, ptr %l37, !tbaa !29
  %t146 = getelementptr %"compiler/interp:Exec", ptr %t145, i32 0, i32 4
  %t147 = getelementptr %"compiler/eval:Machine", ptr %t146, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t147, ptr %l45, i64 400, i1 false)
  %t148 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e4
  br i1 %t148, label %bb10, label %bb11
bb10:
  %t150 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 5
  %t151 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t150, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 4
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t157, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr %t156
  %t164 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 4
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t164, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr %t163
  %t171 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 4
  %t172 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t171, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = icmp ne ptr %t175, null
  %t177 = select i1 %t176, ptr %t175, ptr %t170
  %t178 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 3
  %t179 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t178, i32 0, i32 2
  %t180 = load { i64, ptr }, ptr %t179
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = call ptr @__olang_region_or(ptr %t181, ptr null)
  %t183 = icmp ne ptr %t182, null
  %t184 = select i1 %t183, ptr %t182, ptr %t177
  %t185 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 3
  %t186 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t185, i32 0, i32 1
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = icmp ne ptr %t189, null
  %t191 = select i1 %t190, ptr %t189, ptr %t184
  %t192 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 3
  %t193 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t192, i32 0, i32 0
  %t194 = load { i64, ptr }, ptr %t193
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = call ptr @__olang_region_or(ptr %t195, ptr null)
  %t197 = icmp ne ptr %t196, null
  %t198 = select i1 %t197, ptr %t196, ptr %t191
  %t199 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 2
  %t200 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t199, i32 0, i32 2
  %t201 = load { i64, ptr }, ptr %t200
  %t202 = extractvalue { i64, ptr } %t201, 1
  %t203 = call ptr @__olang_region_or(ptr %t202, ptr null)
  %t204 = icmp ne ptr %t203, null
  %t205 = select i1 %t204, ptr %t203, ptr %t198
  %t206 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 2
  %t207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t206, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = icmp ne ptr %t210, null
  %t212 = select i1 %t211, ptr %t210, ptr %t205
  %t213 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 2
  %t214 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t213, i32 0, i32 0
  %t215 = load { i64, ptr }, ptr %t214
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = call ptr @__olang_region_or(ptr %t216, ptr null)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr %t212
  %t220 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 1
  %t221 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t220, i32 0, i32 2
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr %t219
  %t227 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 1
  %t228 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t227, i32 0, i32 1
  %t229 = load { i64, ptr }, ptr %t228
  %t230 = extractvalue { i64, ptr } %t229, 1
  %t231 = call ptr @__olang_region_or(ptr %t230, ptr null)
  %t232 = icmp ne ptr %t231, null
  %t233 = select i1 %t232, ptr %t231, ptr %t226
  %t234 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 1
  %t235 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t234, i32 0, i32 0
  %t236 = load { i64, ptr }, ptr %t235
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = call ptr @__olang_region_or(ptr %t237, ptr null)
  %t239 = icmp ne ptr %t238, null
  %t240 = select i1 %t239, ptr %t238, ptr %t233
  %t241 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 0
  %t242 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t241, i32 0, i32 2
  %t243 = load { i64, ptr }, ptr %t242
  %t244 = extractvalue { i64, ptr } %t243, 1
  %t245 = call ptr @__olang_region_or(ptr %t244, ptr null)
  %t246 = icmp ne ptr %t245, null
  %t247 = select i1 %t246, ptr %t245, ptr %t240
  %t248 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 0
  %t249 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t248, i32 0, i32 1
  %t250 = load { i64, ptr }, ptr %t249
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = call ptr @__olang_region_or(ptr %t251, ptr null)
  %t253 = icmp ne ptr %t252, null
  %t254 = select i1 %t253, ptr %t252, ptr %t247
  %t255 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 0
  %t256 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t255, i32 0, i32 0
  %t257 = load { i64, ptr }, ptr %t256
  %t258 = extractvalue { i64, ptr } %t257, 1
  %t259 = call ptr @__olang_region_or(ptr %t258, ptr null)
  %t260 = icmp ne ptr %t259, null
  %t261 = select i1 %t260, ptr %t259, ptr %t254
  call void @__olang_region_drop(ptr %t261)
  store %"compiler/mir:GenInfo" zeroinitializer, ptr %l47
  br label %bb11
bb11:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/interp:Exec", ptr %t262, i32 0, i32 0
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t267 = getelementptr %"compiler/generic:Program", ptr %t265, i32 0, i32 0
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = getelementptr %"compiler/load:Loader", ptr %t268, i32 0, i32 10
  store ptr %t270, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t272 = load i64, ptr %l2, !tbaa !24
  store i64 %t272, ptr %l53, !tbaa !24
  %t273 = load ptr, ptr %l1, !tbaa !29
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t273)
  store i64 %t275, ptr %l55
  br label %bb13
bb13:
  %t276 = load i64, ptr %l53, !tbaa !24
  %t277 = load i64, ptr %l55, !tbaa !24
  %t278 = icmp slt i64 %t276, %t277
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t282 = load ptr, ptr %l1, !tbaa !29
  %t283 = load i64, ptr %l2, !tbaa !24
  %t286 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t282, i64 %t283)
  store ptr %t286, ptr %l60
  br label %bb17
bb17:
  %t287 = load ptr, ptr %l60, !tbaa !29
  store ptr %t287, ptr %l3, !tbaa !29
  %t288 = load ptr, ptr %l3, !tbaa !29
  %t290 = getelementptr %"compiler/load:Module", ptr %t288, i32 0, i32 2
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  %t293 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s3, { i64, ptr } %t291, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t293, ptr %l63
  br label %bb18
bb18:
  %t294 = load i1, ptr %l63, !tbaa !21
  br i1 %t294, label %bb19, label %bb20
bb19:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/interp:Exec", ptr %t295, i32 0, i32 4
  %t298 = getelementptr %"compiler/eval:Machine", ptr %t297, i32 0, i32 78
  %t299 = load ptr, ptr %l3, !tbaa !29
  %t301 = getelementptr %"compiler/load:Module", ptr %t299, i32 0, i32 4
  %t302 = load i64, ptr %t301, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t298, i64 %t302, i1 true)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb23:
  %t305 = load i64, ptr %l2, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l2, !tbaa !24
  br label %bb12
bb24:
  store i64 0, ptr %l4, !tbaa !24
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/interp:Exec", ptr %t309, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t312)
  store i64 %t314, ptr %l72
  br label %bb25
bb25:
  %t315 = load i64, ptr %l72, !tbaa !24
  store i64 %t315, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t316 = load i64, ptr %l5, !tbaa !24
  %t317 = load i64, ptr %l4, !tbaa !24
  %t320 = icmp sgt i64 %t316, %t317
  br i1 %t320, label %bb26, label %bb27
bb26:
  %t322 = load i64, ptr %l6, !tbaa !24
  %t324 = icmp sgt i64 %t322, 0
  br i1 %t324, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb31
bb28:
  %t326 = load i64, ptr %l5, !tbaa !24
  %t327 = load i64, ptr %l4, !tbaa !24
  %t330 = sub i64 %t326, %t327
  %t331 = load i64, ptr %l6, !tbaa !24
  %t334 = add i64 %t330, %t331
  %t336 = sub i64 %t334, 1
  %t337 = load i64, ptr %l6, !tbaa !24
  %t340 = sdiv i64 %t336, %t337
  store i64 %t340, ptr %l79, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb30
bb30:
  %t342 = load i64, ptr %l79, !tbaa !24
  store i64 %t342, ptr %l76, !tbaa !24
  br label %bb31
bb31:
  %t343 = load i64, ptr %l76, !tbaa !24
  store i64 %t343, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb32
bb32:
  %t344 = load i64, ptr %l8, !tbaa !24
  %t345 = load i64, ptr %l7, !tbaa !24
  %t348 = icmp slt i64 %t344, %t345
  %t350 = xor i1 %t348, true
  br i1 %t350, label %bb33, label %bb34
bb33:
  br label %bb71
bb34:
  br label %bb35
bb35:
  %t352 = load i64, ptr %l4, !tbaa !24
  %t353 = load i64, ptr %l8, !tbaa !24
  %t354 = load i64, ptr %l6, !tbaa !24
  %t357 = mul i64 %t353, %t354
  %t360 = add i64 %t352, %t357
  store i64 %t360, ptr %l9, !tbaa !24
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/interp:Exec", ptr %t362, i32 0, i32 1
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t366 = load i64, ptr %l9, !tbaa !24
  %t369 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t365, i64 %t366)
  store ptr %t369, ptr %l100
  br label %bb36
bb36:
  %t370 = load ptr, ptr %l100, !tbaa !29
  store ptr %t370, ptr %l10, !tbaa !29
  %t371 = load ptr, ptr %l10, !tbaa !29
  %t373 = getelementptr %"compiler/typed:Body", ptr %t371, i32 0, i32 1
  %t374 = load { i64, [2 x i64] }, ptr %t373
  store { i64, [2 x i64] } %t374, ptr %l11
  %t376 = load { i64, [2 x i64] }, ptr %l11
  %t378 = extractvalue { i64, [2 x i64] } %t376, 0
  %t379 = icmp eq i64 %t378, 3
  br i1 %t379, label %bb37, label %bb38
bb37:
  %t381 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t382 = getelementptr { i32 }, ptr %t381, i32 0, i32 0
  %t383 = load i32, ptr %t382
  store i32 %t383, ptr %l12, !tbaa !23
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/interp:Exec", ptr %t385, i32 0, i32 7
  %t388 = load i32, ptr %l12, !tbaa !23
  %t389 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t387, i32 %t388, i64 %t389)
  br label %bb40
bb40:
  br label %bb69
bb41:
  %t393 = load { i64, [2 x i64] }, ptr %l11
  %t395 = extractvalue { i64, [2 x i64] } %t393, 0
  %t396 = icmp eq i64 %t395, 6
  br i1 %t396, label %bb42, label %bb43
bb42:
  %t398 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t399 = getelementptr { i64, i32 }, ptr %t398, i32 0, i32 0
  %t400 = load i64, ptr %t399
  store i64 %t400, ptr %l13, !tbaa !24
  %t402 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t403 = getelementptr { i64, i32 }, ptr %t402, i32 0, i32 1
  %t404 = load i32, ptr %t403
  store i32 %t404, ptr %l14, !tbaa !23
  br label %bb44
bb43:
  br label %bb64
bb44:
  %t406 = load ptr, ptr %l10, !tbaa !29
  %t408 = getelementptr %"compiler/typed:Body", ptr %t406, i32 0, i32 11
  %t409 = load ptr, ptr %t408, !tbaa !29
  %t411 = icmp eq ptr %t409, null
  br i1 %t411, label %bb45, label %bb46
bb45:
  br label %bb70
bb46:
  br label %bb47
bb47:
  %t413 = load ptr, ptr %l10, !tbaa !29
  %t414 = load i64, ptr %l13, !tbaa !24
  %t415 = load i32, ptr %l14, !tbaa !23
  %t419 = call i32 @compiler_2finterp_2eglobalType(ptr %v0, ptr %t413, i64 %t414, i32 %t415)
  store i32 %t419, ptr %l120
  br label %bb48
bb48:
  %t420 = load i32, ptr %l120, !tbaa !23
  store i32 %t420, ptr %l15, !tbaa !23
  %t421 = load i32, ptr %l15, !tbaa !23
  %t422 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t425 = icmp eq i32 %t421, %t422
  br i1 %t425, label %bb49, label %bb50
bb49:
  br label %bb70
bb50:
  br label %bb51
bb51:
  %t427 = load i64, ptr %l9, !tbaa !24
  %t429 = trunc i64 %t427 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t431
  %t432 = getelementptr { i64, [2 x i64] }, ptr %t431, i32 0, i32 0
  store i64 0, ptr %t432
  %t434 = insertvalue { i32 } undef, i32 %t429, 0
  %t435 = getelementptr { i64, [2 x i64] }, ptr %t431, i32 0, i32 1
  store { i32 } %t434, ptr %t435
  %t436 = load { i64, [2 x i64] }, ptr %t431
  store { i64, [2 x i64] } %t436, ptr %l16
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/interp:Exec", ptr %t438, i32 0, i32 0
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t442 = load i64, ptr %l13, !tbaa !24
  %t443 = load i32, ptr %l14, !tbaa !23
  %t447 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t441, i64 %t442, i32 %t443)
  store ptr %t447, ptr %l132
  br label %bb52
bb52:
  %t448 = load ptr, ptr %l132, !tbaa !29
  store ptr %t448, ptr %l17, !tbaa !29
  %t449 = load ptr, ptr %l17, !tbaa !29
  %t451 = icmp eq ptr %t449, null
  %t453 = xor i1 %t451, true
  br i1 %t453, label %bb53, label %bb54
bb53:
  %t455 = load ptr, ptr %l17, !tbaa !29
  %t457 = getelementptr %"compiler/ast:VarDecl", ptr %t455, i32 0, i32 2
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t460 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t458)
  store i1 %t460, ptr %l139
  br label %bb55
bb54:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb56
bb55:
  %t461 = load i1, ptr %l139, !tbaa !21
  store i1 %t461, ptr %l136, !tbaa !21
  br label %bb56
bb56:
  %t462 = load i1, ptr %l136, !tbaa !21
  store i1 %t462, ptr %l18, !tbaa !21
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/interp:Exec", ptr %t463, i32 0, i32 4
  %t466 = load i64, ptr %l13, !tbaa !24
  %t467 = load i32, ptr %l14, !tbaa !23
  %t468 = load i32, ptr %l15, !tbaa !23
  %t469 = load i1, ptr %l18, !tbaa !21
  %t470 = load { i64, [2 x i64] }, ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineGlobal(ptr %v0, ptr %t465, i64 %t466, i32 %t467, i32 %t468, i1 %t469, { i64, [2 x i64] } %t470)
  br label %bb57
bb57:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load i64, ptr %l13, !tbaa !24
  %t479 = load i32, ptr %l15, !tbaa !23
  %t480 = load i1, ptr %l18, !tbaa !21
  %t485 = call i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebuildDefault(ptr %v0, ptr %t477, i64 %t478, i32 %t479, i1 %t480)
  store i1 %t485, ptr %l151
  br label %bb58
bb58:
  %t486 = load i1, ptr %l151, !tbaa !21
  br i1 %t486, label %bb59, label %bb60
bb59:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t489 = getelementptr %"compiler/interp:Exec", ptr %t487, i32 0, i32 4
  %t490 = load i64, ptr %l13, !tbaa !24
  %t491 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eBuildGlobal(ptr %v0, ptr %t489, i64 %t490, i32 %t491)
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/interp:Exec", ptr %t495, i32 0, i32 9
  %t498 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t497, i64 %t498)
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
  %t501 = load i64, ptr %l8, !tbaa !24
  %t503 = add i64 %t501, 1
  store i64 %t503, ptr %l8, !tbaa !24
  br label %bb32
bb71:
  %t505 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t505, ptr %l161
  br label %bb72
bb72:
  %t506 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t506, ptr %l19
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/interp:Exec", ptr %t507, i32 0, i32 0
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t512 = getelementptr %"compiler/generic:Program", ptr %t510, i32 0, i32 60
  store ptr %t512, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb73
bb73:
  %t514 = load i64, ptr %l21, !tbaa !24
  store i64 %t514, ptr %l165, !tbaa !24
  %t515 = load ptr, ptr %l20, !tbaa !29
  %t517 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t515)
  store i64 %t517, ptr %l167
  br label %bb74
bb74:
  %t518 = load i64, ptr %l165, !tbaa !24
  %t519 = load i64, ptr %l167, !tbaa !24
  %t520 = icmp slt i64 %t518, %t519
  %t522 = xor i1 %t520, true
  br i1 %t522, label %bb75, label %bb76
bb75:
  br label %bb85
bb76:
  br label %bb77
bb77:
  %t524 = load ptr, ptr %l20, !tbaa !29
  %t525 = load i64, ptr %l21, !tbaa !24
  %t528 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t524, i64 %t525)
  store i64 %t528, ptr %l172
  br label %bb78
bb78:
  %t529 = load i64, ptr %l172, !tbaa !24
  store i64 %t529, ptr %l22, !tbaa !24
  %t530 = load i64, ptr %l22, !tbaa !24
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t534 = getelementptr %"compiler/interp:Exec", ptr %t532, i32 0, i32 9
  %t538 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t534, i64 %t530)
  store i1 %t538, ptr %l177
  br label %bb79
bb79:
  %t539 = load i1, ptr %l177, !tbaa !21
  br i1 %t539, label %bb80, label %bb81
bb80:
  %t540 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t540)
  br label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t543 = load i64, ptr %l21, !tbaa !24
  %t545 = add i64 %t543, 1
  store i64 %t545, ptr %l21, !tbaa !24
  br label %bb73
bb85:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/interp:Exec", ptr %t547, i32 0, i32 9
  store ptr %t549, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb86
bb86:
  %t551 = load i64, ptr %l25, !tbaa !24
  store i64 %t551, ptr %l184, !tbaa !24
  %t552 = load ptr, ptr %l24, !tbaa !29
  %t554 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t552)
  store i64 %t554, ptr %l186
  br label %bb87
bb87:
  %t555 = load i64, ptr %l184, !tbaa !24
  %t556 = load i64, ptr %l186, !tbaa !24
  %t557 = icmp slt i64 %t555, %t556
  %t559 = xor i1 %t557, true
  br i1 %t559, label %bb88, label %bb89
bb88:
  br label %bb98
bb89:
  br label %bb90
bb90:
  %t561 = load ptr, ptr %l24, !tbaa !29
  %t562 = load i64, ptr %l25, !tbaa !24
  %t565 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t561, i64 %t562)
  store i64 %t565, ptr %l191
  br label %bb91
bb91:
  %t566 = load i64, ptr %l191, !tbaa !24
  store i64 %t566, ptr %l26, !tbaa !24
  %t567 = load i64, ptr %l26, !tbaa !24
  %t572 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l19, i64 %t567)
  store i1 %t572, ptr %l195
  br label %bb92
bb92:
  %t573 = load i1, ptr %l195, !tbaa !21
  %t574 = xor i1 %t573, true
  br i1 %t574, label %bb93, label %bb94
bb93:
  %t576 = load i64, ptr %l26, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t576)
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t579 = load i64, ptr %l25, !tbaa !24
  %t581 = add i64 %t579, 1
  store i64 %t581, ptr %l25, !tbaa !24
  br label %bb86
bb98:
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t585 = getelementptr %"compiler/interp:Exec", ptr %t583, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t585)
  br label %bb99
bb99:
  store ptr %l19, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb100
bb100:
  %t588 = load i64, ptr %l29, !tbaa !24
  store i64 %t588, ptr %l204, !tbaa !24
  %t589 = load ptr, ptr %l28, !tbaa !29
  %t591 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t589)
  store i64 %t591, ptr %l206
  br label %bb101
bb101:
  %t592 = load i64, ptr %l204, !tbaa !24
  %t593 = load i64, ptr %l206, !tbaa !24
  %t594 = icmp slt i64 %t592, %t593
  %t596 = xor i1 %t594, true
  br i1 %t596, label %bb102, label %bb103
bb102:
  br label %bb108
bb103:
  br label %bb104
bb104:
  %t598 = load ptr, ptr %l28, !tbaa !29
  %t599 = load i64, ptr %l29, !tbaa !24
  %t602 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t598, i64 %t599)
  store i64 %t602, ptr %l211
  br label %bb105
bb105:
  %t603 = load i64, ptr %l211, !tbaa !24
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/interp:Exec", ptr %t604, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t606, i64 %t603)
  br label %bb106
bb106:
  br label %bb107
bb107:
  %t610 = load i64, ptr %l29, !tbaa !24
  %t612 = add i64 %t610, 1
  store i64 %t612, ptr %l29, !tbaa !24
  br label %bb100
bb108:
  %t614 = load ptr, ptr %l0, !tbaa !29
  %t616 = getelementptr %"compiler/interp:Exec", ptr %t614, i32 0, i32 9
  store ptr %t616, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb109
bb109:
  %t618 = load i64, ptr %l32, !tbaa !24
  store i64 %t618, ptr %l219, !tbaa !24
  %t619 = load ptr, ptr %l31, !tbaa !29
  %t621 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t619)
  store i64 %t621, ptr %l221
  br label %bb110
bb110:
  %t622 = load i64, ptr %l219, !tbaa !24
  %t623 = load i64, ptr %l221, !tbaa !24
  %t624 = icmp slt i64 %t622, %t623
  %t626 = xor i1 %t624, true
  br i1 %t626, label %bb111, label %bb112
bb111:
  br label %bb117
bb112:
  br label %bb113
bb113:
  %t628 = load ptr, ptr %l31, !tbaa !29
  %t629 = load i64, ptr %l32, !tbaa !24
  %t632 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t628, i64 %t629)
  store i64 %t632, ptr %l226
  br label %bb114
bb114:
  %t633 = load i64, ptr %l226, !tbaa !24
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t637 = trunc i64 %t633 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t639
  %t640 = getelementptr { i64, [2 x i64] }, ptr %t639, i32 0, i32 0
  store i64 0, ptr %t640
  %t642 = insertvalue { i32 } undef, i32 %t637, 0
  %t643 = getelementptr { i64, [2 x i64] }, ptr %t639, i32 0, i32 1
  store { i32 } %t642, ptr %t643
  %t644 = load { i64, [2 x i64] }, ptr %t639
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t634, { i64, [2 x i64] } %t644)
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t647 = load i64, ptr %l32, !tbaa !24
  %t649 = add i64 %t647, 1
  store i64 %t649, ptr %l32, !tbaa !24
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
  %t560 = alloca { i64, [2 x i64] }, align 8
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
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 106
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
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 107
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
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 137
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
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 14
  call void @compiler_2finterp_3aExec_2ector(ptr %t57, ptr %v1, ptr %v1, ptr %v1, ptr %t53, ptr %t56, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %t57, i64 4976, i1 false)
  br label %bb22
bb22:
  %t61 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 4976, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %l84, i64 4976, i1 false)
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
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 140
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
  %t85 = icmp ne ptr %t84, null
  %t86 = select i1 %t85, ptr %t84, ptr null
  %t87 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 1
  %t88 = load { i64, ptr }, ptr %t87
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = call ptr @__olang_region_or(ptr %t89, ptr null)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr %t86
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr %t92
  %t99 = icmp eq ptr %t98, %t80
  call void @__olang_region_settle(ptr %t80, i1 %t99)
  br label %bb27
bb27:
  %t100 = load ptr, ptr %l86, !tbaa !29
  %t101 = getelementptr %"compiler/interp:Exec", ptr %t100, i32 0, i32 10
  %t102 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t101
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t102, ptr %l94
  %t103 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92
  %t104 = load ptr, ptr %l86, !tbaa !29
  %t105 = getelementptr %"compiler/interp:Exec", ptr %t104, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t103, ptr %t105
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t106, label %bb28, label %bb29
bb28:
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 2
  %t109 = load { i64, ptr }, ptr %t108
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = call ptr @__olang_region_or(ptr %t110, ptr null)
  %t112 = icmp ne ptr %t111, null
  %t113 = select i1 %t112, ptr %t111, ptr null
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 1
  %t115 = load { i64, ptr }, ptr %t114
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = call ptr @__olang_region_or(ptr %t116, ptr null)
  %t118 = icmp ne ptr %t117, null
  %t119 = select i1 %t118, ptr %t117, ptr %t113
  %t120 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 0
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr %t119
  call void @__olang_region_drop(ptr %t125)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l94
  br label %bb29
bb29:
  %t126 = load ptr, ptr %l10, !tbaa !29
  store ptr %t126, ptr %l96, !tbaa !29
  %t127 = ptrtoint ptr %v1 to i64
  store i64 %t127, ptr %l97, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t128, label %bb30, label %bb31
bb30:
  %t130 = call ptr @__olang_region_make(ptr %v1)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l97, !tbaa !24
  br label %bb31
bb31:
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 144
  %t135 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t134
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t135, ptr %l100
  %t136 = load i64, ptr %l97
  %t137 = inttoptr i64 %t136 to ptr
  %t139 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t137, ptr %l100)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t139, ptr %l102
  br label %bb32
bb32:
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t140, label %bb33, label %bb34
bb33:
  %t142 = load i64, ptr %l97
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 2
  %t145 = load { i64, ptr }, ptr %t144
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = call ptr @__olang_region_or(ptr %t146, ptr null)
  %t148 = icmp ne ptr %t147, null
  %t149 = select i1 %t148, ptr %t147, ptr null
  %t150 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 1
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr %t149
  %t156 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 0
  %t157 = load { i64, ptr }, ptr %t156
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = call ptr @__olang_region_or(ptr %t158, ptr null)
  %t160 = icmp ne ptr %t159, null
  %t161 = select i1 %t160, ptr %t159, ptr %t155
  %t162 = icmp eq ptr %t161, %t143
  call void @__olang_region_settle(ptr %t143, i1 %t162)
  br label %bb34
bb34:
  %t163 = load ptr, ptr %l96, !tbaa !29
  %t164 = getelementptr %"compiler/interp:Exec", ptr %t163, i32 0, i32 11
  %t165 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t164
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t165, ptr %l104
  %t166 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102
  %t167 = load ptr, ptr %l96, !tbaa !29
  %t168 = getelementptr %"compiler/interp:Exec", ptr %t167, i32 0, i32 11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t166, ptr %t168
  %t169 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t169, label %bb35, label %bb36
bb35:
  %t171 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 2
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = icmp ne ptr %t174, null
  %t176 = select i1 %t175, ptr %t174, ptr null
  %t177 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 1
  %t178 = load { i64, ptr }, ptr %t177
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr %t176
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 0
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr %t182
  call void @__olang_region_drop(ptr %t188)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l104
  br label %bb36
bb36:
  store i64 0, ptr %l11, !tbaa !24
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 107
  store ptr %t191, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s3
  %t193 = load i64, ptr %l13, !tbaa !24
  store i64 %t193, ptr %l108, !tbaa !24
  %t194 = load ptr, ptr %l12, !tbaa !29
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eLen_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v1, ptr %t194)
  store i64 %t196, ptr %l110
  br label %bb38
bb38:
  %t197 = load i64, ptr %l108, !tbaa !24
  %t198 = load i64, ptr %l110, !tbaa !24
  %t199 = icmp slt i64 %t197, %t198
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb54
bb40:
  br label %bb41
bb41:
  %t203 = load ptr, ptr %l12, !tbaa !29
  %t204 = load i64, ptr %l13, !tbaa !24
  %t207 = call %"compiler/check:EmbedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eAt_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v1, ptr %t203, i64 %t204)
  store %"compiler/check:EmbedAsk" %t207, ptr %l115
  br label %bb42
bb42:
  %t208 = load %"compiler/check:EmbedAsk", ptr %l115
  store %"compiler/check:EmbedAsk" %t208, ptr %l14
  %t209 = getelementptr %"compiler/check:EmbedAsk", ptr %l14, i32 0, i32 1
  %t210 = load i64, ptr %t209, !tbaa !24
  %t211 = getelementptr %"compiler/check:EmbedAsk", ptr %l14, i32 0, i32 2
  %t212 = load i32, ptr %t211, !tbaa !23
  %t214 = sext i32 %t212 to i64
  %t217 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t210, i64 %t214)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t217, ptr %l119
  br label %bb43
bb43:
  %t218 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l119
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t218, ptr %l15
  %t219 = load ptr, ptr %l5, !tbaa !29
  %t220 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l15
  %t223 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4b90e82c7a9c5937397e46eef988cfe3(ptr %v5, ptr %t219, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t220)
  store i1 %t223, ptr %l122
  br label %bb44
bb44:
  %t224 = load i1, ptr %l122, !tbaa !21
  br i1 %t224, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s3)
  br label %bb53
bb46:
  br label %bb47
bb47:
  %t225 = load i64, ptr %l11, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l11, !tbaa !24
  %t229 = load ptr, ptr %l10, !tbaa !29
  %t230 = getelementptr %"compiler/check:EmbedAsk", ptr %l14, i32 0, i32 0
  %t231 = load i64, ptr %t230, !tbaa !24
  %t234 = call { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v1, ptr %v5, ptr %t229, i64 %t231)
  %t235 = extractvalue { i32, { i64, ptr } } %t234, 1
  %t236 = extractvalue { i32, { i64, ptr } } %t234, 0
  store i32 %t236, ptr %l129
  %t237 = icmp ne i32 %t236, 0
  br i1 %t237, label %bb49, label %ok.238, !prof !99
ok.238:
  store { i64, ptr } %t235, ptr %l128
  br label %bb48
bb48:
  %t239 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t239, ptr %l125, !tbaa !27
  br label %bb51
bb49:
  br label %bb50
bb50:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l130, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t240, ptr %l125, !tbaa !27
  br label %bb51
bb51:
  %t242 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 0
  store i64 %t243, ptr %l132, !tbaa !24
  %t244 = load i64, ptr %l132, !tbaa !24
  %t245 = mul i64 %t244, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t245)
  %t247 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  store { i64, ptr } %t248, ptr %l133, !tbaa !27
  %t249 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = load i64, ptr %l132, !tbaa !24
  %t254 = mul i64 %t253, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t250, ptr %t252, i64 %t254, i1 false)
  %t255 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t255, ptr %lp16
  %t256 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t257 = load ptr, ptr %lp16
  store { i64, ptr } %t256, ptr %t257, !tbaa !27
  %t258 = load ptr, ptr %l5, !tbaa !29
  %t259 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l15
  %t260 = load ptr, ptr %lp16
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H94076cc109da9d789864820ff05c3ac1(ptr %v5, ptr %v5, ptr %t258, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t259, { i64, ptr } %t261)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s3)
  br label %bb53
bb53:
  %t265 = load i64, ptr %l13, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l13, !tbaa !24
  br label %bb37
bb54:
  %t269 = load i64, ptr %l11, !tbaa !24
  %t271 = icmp sgt i64 %t269, 0
  br i1 %t271, label %bb55, label %bb56
bb55:
  %t273 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t273, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr %"compiler/check:Checker", ptr %t275, i32 0, i32 137
  store ptr %t277, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb58
bb58:
  store %olang.scope zeroinitializer, ptr %s8
  %t279 = load i64, ptr %l18, !tbaa !24
  store i64 %t279, ptr %l144, !tbaa !24
  %t280 = load ptr, ptr %l17, !tbaa !29
  %t282 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eLen__H3e1caeca23cca4e886f5085abf2ba261(ptr %v1, ptr %t280)
  store i64 %t282, ptr %l146
  br label %bb59
bb59:
  %t283 = load i64, ptr %l144, !tbaa !24
  %t284 = load i64, ptr %l146, !tbaa !24
  %t285 = icmp slt i64 %t283, %t284
  %t287 = xor i1 %t285, true
  br i1 %t287, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s8)
  br label %bb93
bb61:
  br label %bb62
bb62:
  %t289 = load ptr, ptr %l17, !tbaa !29
  %t290 = load i64, ptr %l18, !tbaa !24
  %t293 = call %"compiler/check:UnrollAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eAt_3ccompiler_2fcheck_3aUnrollAsk_3e(ptr %v1, ptr %v1, ptr %t289, i64 %t290)
  store %"compiler/check:UnrollAsk" %t293, ptr %l151
  br label %bb63
bb63:
  %t294 = load %"compiler/check:UnrollAsk", ptr %l151
  store %"compiler/check:UnrollAsk" %t294, ptr %l19
  %t295 = load ptr, ptr %l6, !tbaa !29
  %t296 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  %t300 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H227dc11a6a27d53bbdf34efa35d45ee3(ptr %v6, ptr %v1, ptr %t295, { i64, ptr } %t297)
  store i1 %t300, ptr %l154
  br label %bb64
bb64:
  %t301 = load i1, ptr %l154, !tbaa !21
  br i1 %t301, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb68
bb66:
  %t302 = load ptr, ptr %l7, !tbaa !29
  %t303 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  %t307 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v7, ptr %v1, ptr %t302, { i64, ptr } %t304)
  store i1 %t307, ptr %l158
  br label %bb67
bb67:
  %t308 = load i1, ptr %l158, !tbaa !21
  store i1 %t308, ptr %l155, !tbaa !21
  br label %bb68
bb68:
  %t309 = load i1, ptr %l155, !tbaa !21
  br i1 %t309, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s8)
  br label %bb92
bb70:
  br label %bb71
bb71:
  %t310 = load i64, ptr %l11, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l11, !tbaa !24
  %t314 = load ptr, ptr %l10, !tbaa !29
  %t317 = call { i64, [2 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eunrolled(ptr %v1, ptr %s8, ptr %v7, ptr %t314, ptr %l19)
  store { i64, [2 x i64] } %t317, ptr %l163
  br label %bb72
bb72:
  %t318 = load { i64, [2 x i64] }, ptr %l163
  store { i64, [2 x i64] } %t318, ptr %l20
  %t319 = load { i64, [2 x i64] }, ptr %l20
  %t321 = extractvalue { i64, [2 x i64] } %t319, 0
  %t322 = icmp eq i64 %t321, 0
  br i1 %t322, label %bb73, label %bb74
bb73:
  %t324 = getelementptr { i64, [2 x i64] }, ptr %l20, i32 0, i32 1
  %t325 = getelementptr { { i64, ptr } }, ptr %t324, i32 0, i32 0
  %t326 = load { i64, ptr }, ptr %t325
  store { i64, ptr } %t326, ptr %l21, !tbaa !27
  br label %bb75
bb74:
  br label %bb85
bb75:
  %t328 = load ptr, ptr %l6, !tbaa !29
  store ptr %t328, ptr %l167, !tbaa !29
  %t329 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l168, !tbaa !27
  %t331 = ptrtoint ptr %v6 to i64
  store i64 %t331, ptr %l169, !tbaa !24
  %t332 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e_2e1
  br i1 %t332, label %bb76, label %bb77
bb76:
  %t334 = call ptr @__olang_region_make(ptr %v6)
  %t335 = ptrtoint ptr %t334 to i64
  store i64 %t335, ptr %l169, !tbaa !24
  br label %bb77
bb77:
  %t336 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t336, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t338 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t338, 0
  store i64 %t340, ptr %l24, !tbaa !24
  %t342 = load i64, ptr %l24, !tbaa !24
  %t344 = mul i64 %t342, 8
  %t345 = load i64, ptr %l169
  %t346 = inttoptr i64 %t345 to ptr
  %t347 = call ptr @__olang_scope_alloc(ptr %t346, i64 %t344)
  %t348 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t347, 1
  store { i64, ptr } %t349, ptr %l175, !tbaa !27
  store i64 0, ptr %l176, !tbaa !24
  br label %bb78
bb78:
  %t350 = load i64, ptr %l23, !tbaa !24
  %t351 = load i64, ptr %l24, !tbaa !24
  %t354 = icmp slt i64 %t350, %t351
  %t356 = xor i1 %t354, true
  br i1 %t356, label %bb79, label %bb80
bb79:
  br label %bb83
bb80:
  br label %bb81
bb81:
  %t358 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t358, ptr %l181, !tbaa !27
  %t359 = load i64, ptr %l23, !tbaa !24
  %t361 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = getelementptr i64, ptr %t362, i64 %t359
  %t364 = load i64, ptr %t363, !tbaa !34
  %t368 = load i64, ptr %l176, !tbaa !24
  %t369 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr i64, ptr %t370, i64 %t368
  store i64 %t364, ptr %t371, !tbaa !34
  %t372 = load i64, ptr %l176, !tbaa !24
  %t373 = add i64 %t372, 1
  store i64 %t373, ptr %l176, !tbaa !24
  br label %bb82
bb82:
  %t374 = load i64, ptr %l23, !tbaa !24
  %t376 = add i64 %t374, 1
  store i64 %t376, ptr %l23, !tbaa !24
  br label %bb78
bb83:
  %t378 = load ptr, ptr %l167, !tbaa !29
  %t379 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t380 = load { i64, ptr }, ptr %l175, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H0a119a96f6a24054f8ced6f159e533e6(ptr %v6, ptr %v1, ptr %v6, ptr %t378, { i64, ptr } %t379, { i64, ptr } %t380)
  br label %bb84
bb84:
  br label %bb91
bb85:
  %t381 = load { i64, [2 x i64] }, ptr %l20
  %t383 = extractvalue { i64, [2 x i64] } %t381, 0
  %t384 = icmp eq i64 %t383, 1
  br i1 %t384, label %bb86, label %bb87
bb86:
  %t386 = getelementptr { i64, [2 x i64] }, ptr %l20, i32 0, i32 1
  %t387 = getelementptr { { i64, ptr } }, ptr %t386, i32 0, i32 0
  %t388 = load { i64, ptr }, ptr %t387
  store { i64, ptr } %t388, ptr %l26, !tbaa !27
  br label %bb88
bb87:
  br label %bb90
bb88:
  %t390 = load ptr, ptr %l7, !tbaa !29
  %t391 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t392 = load { i64, ptr }, ptr %t391, !tbaa !27
  %t393 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v7, ptr %v1, ptr %v7, ptr %t390, { i64, ptr } %t392, { i64, ptr } %t393)
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
  %t397 = load i64, ptr %l18, !tbaa !24
  %t399 = add i64 %t397, 1
  store i64 %t399, ptr %l18, !tbaa !24
  br label %bb58
bb93:
  %t401 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t401, ptr %l195
  br label %bb94
bb94:
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l195
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %l27
  %t403 = load ptr, ptr %l1, !tbaa !29
  %t405 = getelementptr %"compiler/check:Checker", ptr %t403, i32 0, i32 106
  store ptr %t405, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb95
bb95:
  store %olang.scope zeroinitializer, ptr %s17
  %t407 = load i64, ptr %l29, !tbaa !24
  store i64 %t407, ptr %l198, !tbaa !24
  %t408 = load ptr, ptr %l28, !tbaa !29
  %t410 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v1, ptr %t408)
  store i64 %t410, ptr %l200
  br label %bb96
bb96:
  %t411 = load i64, ptr %l198, !tbaa !24
  %t412 = load i64, ptr %l200, !tbaa !24
  %t413 = icmp slt i64 %t411, %t412
  %t415 = xor i1 %t413, true
  br i1 %t415, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s17)
  br label %bb121
bb98:
  br label %bb99
bb99:
  %t417 = load ptr, ptr %l28, !tbaa !29
  %t418 = load i64, ptr %l29, !tbaa !24
  %t421 = call %"compiler/check:Ask" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v1, ptr %v1, ptr %t417, i64 %t418)
  store %"compiler/check:Ask" %t421, ptr %l205
  br label %bb100
bb100:
  %t422 = load %"compiler/check:Ask", ptr %l205
  store %"compiler/check:Ask" %t422, ptr %l30
  %t423 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 1
  %t424 = load i64, ptr %t423, !tbaa !24
  %t425 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 2
  %t426 = load i32, ptr %t425, !tbaa !23
  %t428 = sext i32 %t426 to i64
  %t431 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s17, i64 %t424, i64 %t428)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t431, ptr %l209
  br label %bb101
bb101:
  %t432 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l209
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t432, ptr %l31
  %t433 = load ptr, ptr %l2, !tbaa !29
  %t434 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  %t437 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v2, ptr %t433, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t434)
  store i1 %t437, ptr %l212
  br label %bb102
bb102:
  %t438 = load i1, ptr %l212, !tbaa !21
  br i1 %t438, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l213, !tbaa !21
  br label %bb106
bb104:
  %t439 = load ptr, ptr %l3, !tbaa !29
  %t440 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  %t443 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v3, ptr %t439, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t440)
  store i1 %t443, ptr %l216
  br label %bb105
bb105:
  %t444 = load i1, ptr %l216, !tbaa !21
  store i1 %t444, ptr %l213, !tbaa !21
  br label %bb106
bb106:
  %t445 = load i1, ptr %l213, !tbaa !21
  br i1 %t445, label %bb107, label %bb108
bb107:
  call void @__olang_scope_close(ptr %s17)
  br label %bb120
bb108:
  br label %bb109
bb109:
  %t446 = load ptr, ptr %l10, !tbaa !29
  %t447 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 0
  %t448 = load i64, ptr %t447, !tbaa !24
  %t451 = call { i32, i1 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eCond(ptr %v1, ptr %t446, i64 %t448)
  %t452 = extractvalue { i32, i1 } %t451, 1
  %t453 = extractvalue { i32, i1 } %t451, 0
  store i32 %t453, ptr %l221
  %t454 = icmp ne i32 %t453, 0
  br i1 %t454, label %bb111, label %ok.455, !prof !99
ok.455:
  store i1 %t452, ptr %l220
  br label %bb110
bb110:
  %t456 = load i1, ptr %l220, !tbaa !21
  store i1 %t456, ptr %l217, !tbaa !21
  br label %bb114
bb111:
  br label %bb112
bb112:
  %t457 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 3
  %t458 = load ptr, ptr %t457, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2ePush_3ccompiler_2fast_3aIf_26_3e(ptr %s0, ptr %v1, ptr %l27, ptr %t458)
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s17)
  br label %bb120
bb114:
  %t461 = load i1, ptr %l217, !tbaa !21
  store i1 %t461, ptr %l32, !tbaa !21
  %t462 = load i64, ptr %l11, !tbaa !24
  %t464 = add i64 %t462, 1
  store i64 %t464, ptr %l11, !tbaa !24
  %t466 = load ptr, ptr %l10, !tbaa !29
  %t468 = getelementptr %"compiler/interp:Exec", ptr %t466, i32 0, i32 4
  %t469 = getelementptr %"compiler/eval:Machine", ptr %t468, i32 0, i32 20
  %t470 = load i1, ptr %t469, !tbaa !21
  %t472 = xor i1 %t470, true
  br i1 %t472, label %bb115, label %bb116
bb115:
  %t474 = load ptr, ptr %l3, !tbaa !29
  %t475 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v3, ptr %t474, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t475, i1 true)
  br label %bb117
bb116:
  %t478 = load ptr, ptr %l2, !tbaa !29
  %t479 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  %t480 = load i1, ptr %l32, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v2, ptr %t478, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t479, i1 %t480)
  br label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s17)
  br label %bb120
bb120:
  %t484 = load i64, ptr %l29, !tbaa !24
  %t486 = add i64 %t484, 1
  store i64 %t486, ptr %l29, !tbaa !24
  br label %bb95
bb121:
  %t488 = load ptr, ptr %l1, !tbaa !29
  %t490 = getelementptr %"compiler/check:Checker", ptr %t488, i32 0, i32 1
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = getelementptr %"compiler/generic:Program", ptr %t491, i32 0, i32 55
  store ptr %t493, ptr %l33, !tbaa !29
  store i64 0, ptr %l34, !tbaa !24
  br label %bb122
bb122:
  store %olang.scope zeroinitializer, ptr %s24
  %t495 = load i64, ptr %l34, !tbaa !24
  store i64 %t495, ptr %l239, !tbaa !24
  %t496 = load ptr, ptr %l33, !tbaa !29
  %t498 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v1, ptr %t496)
  store i64 %t498, ptr %l241
  br label %bb123
bb123:
  %t499 = load i64, ptr %l239, !tbaa !24
  %t500 = load i64, ptr %l241, !tbaa !24
  %t501 = icmp slt i64 %t499, %t500
  %t503 = xor i1 %t501, true
  br i1 %t503, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s24)
  br label %bb156
bb125:
  br label %bb126
bb126:
  %t505 = load ptr, ptr %l33, !tbaa !29
  %t506 = load i64, ptr %l34, !tbaa !24
  %t509 = call %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v1, ptr %v1, ptr %t505, i64 %t506)
  store %"compiler/generic:ConstAsk" %t509, ptr %l246
  br label %bb127
bb127:
  %t510 = load %"compiler/generic:ConstAsk", ptr %l246
  store %"compiler/generic:ConstAsk" %t510, ptr %l35
  %t511 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 6
  %t512 = load { i64, ptr }, ptr %t511, !tbaa !27
  store { i64, ptr } %t512, ptr %l36, !tbaa !27
  %t514 = load ptr, ptr %l4, !tbaa !29
  %t515 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t518 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v4, ptr %v1, ptr %t514, { i64, ptr } %t515)
  store i1 %t518, ptr %l250
  br label %bb128
bb128:
  %t519 = load i1, ptr %l250, !tbaa !21
  br i1 %t519, label %bb129, label %bb130
bb129:
  call void @__olang_scope_close(ptr %s24)
  br label %bb155
bb130:
  br label %bb131
bb131:
  %t520 = load i64, ptr %l11, !tbaa !24
  %t522 = add i64 %t520, 1
  store i64 %t522, ptr %l11, !tbaa !24
  %t524 = load ptr, ptr %l1, !tbaa !29
  %t525 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 0
  %t526 = load i64, ptr %t525, !tbaa !24
  %t527 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 3
  %t528 = load i64, ptr %t527, !tbaa !24
  %t529 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 4
  %t530 = load { i64, ptr }, ptr %t529, !tbaa !27
  %t531 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 5
  %t532 = load { i64, ptr }, ptr %t531, !tbaa !27
  %t533 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 1
  %t534 = load ptr, ptr %t533, !tbaa !29
  %t535 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 2
  %t536 = load i32, ptr %t535, !tbaa !23
  %t544 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBodyIn(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t524, i64 %t526, i64 %t528, { i64, ptr } %t530, { i64, ptr } %t532, ptr %t534, i32 %t536)
  store i64 %t544, ptr %l260
  br label %bb132
bb132:
  %t545 = load i64, ptr %l260, !tbaa !24
  store i64 %t545, ptr %l37, !tbaa !24
  %t546 = load i64, ptr %l37, !tbaa !24
  %t548 = icmp slt i64 %t546, 0
  br i1 %t548, label %bb133, label %bb134
bb133:
  %t550 = load ptr, ptr %l4, !tbaa !29
  %t551 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t552 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v4, ptr %v1, ptr %t550, { i64, ptr } %t551, i64 %t552)
  br label %bb135
bb134:
  br label %bb136
bb135:
  call void @__olang_scope_close(ptr %s24)
  br label %bb155
bb136:
  %t556 = load i64, ptr %l37, !tbaa !24
  %t558 = trunc i64 %t556 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t560
  %t561 = getelementptr { i64, [2 x i64] }, ptr %t560, i32 0, i32 0
  store i64 0, ptr %t561
  %t563 = insertvalue { i32 } undef, i32 %t558, 0
  %t564 = getelementptr { i64, [2 x i64] }, ptr %t560, i32 0, i32 1
  store { i32 } %t563, ptr %t564
  %t565 = load { i64, [2 x i64] }, ptr %t560
  store { i64, [2 x i64] } %t565, ptr %l38
  %t567 = load ptr, ptr %l10, !tbaa !29
  %t568 = load { i64, [2 x i64] }, ptr %l38
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v1, ptr %t567, { i64, [2 x i64] } %t568)
  br label %bb137
bb137:
  %t571 = load ptr, ptr %l10, !tbaa !29
  %t573 = getelementptr %"compiler/interp:Exec", ptr %t571, i32 0, i32 4
  store ptr %t573, ptr %l273, !tbaa !29
  %t574 = load { i64, [2 x i64] }, ptr %l38
  store { i64, [2 x i64] } %t574, ptr %l274
  %t575 = icmp sge i64 0, 0
  br i1 %t575, label %bb138, label %bb139
bb138:
  %t577 = icmp sle i64 0, 1152921504606846975
  br i1 %t577, label %bb140, label %bb141
bb139:
  call void @__olang_check_failed(ptr @olang_loc_b43ed542b52bdb2d_e8039c8a87e26b41)
  unreachable
bb140:
  %t579 = mul i64 0, 8
  %t580 = insertvalue { i64, ptr } undef, i64 0, 0
  %t581 = insertvalue { i64, ptr } %t580, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t582 = load ptr, ptr %l273, !tbaa !29
  %t583 = load { i64, [2 x i64] }, ptr %l274
  %t585 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v1, ptr %s24, ptr %s24, ptr %t582, { i64, [2 x i64] } %t583, { i64, ptr } %t581)
  store { i64, [5 x i64] } %t585, ptr %l278
  br label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_b43ed542b52bdb2d_e8039c8a87e26b41)
  unreachable
bb142:
  %t586 = load { i64, [5 x i64] }, ptr %l278
  %t589 = extractvalue { i64, [5 x i64] } %t586, 0
  %t590 = icmp eq i64 %t589, 0
  br i1 %t590, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb148
bb145:
  %t592 = load ptr, ptr %l4, !tbaa !29
  store ptr %t592, ptr %l281, !tbaa !29
  %t593 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t593, ptr %l282, !tbaa !27
  %t594 = load ptr, ptr %l10, !tbaa !29
  %t596 = getelementptr %"compiler/interp:Exec", ptr %t594, i32 0, i32 4
  %t597 = load ptr, ptr %l10, !tbaa !29
  %t599 = getelementptr %"compiler/interp:Exec", ptr %t597, i32 0, i32 4
  %t600 = getelementptr %"compiler/eval:Machine", ptr %t599, i32 0, i32 15
  %t601 = load %"compiler/eval:Ptr", ptr %t600
  %t602 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 2
  %t603 = load i32, ptr %t602, !tbaa !23
  %t607 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v1, ptr %t596, %"compiler/eval:Ptr" %t601, i32 %t603)
  store i64 %t607, ptr %l288
  br label %bb146
bb146:
  %t608 = load ptr, ptr %l281, !tbaa !29
  %t609 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t610 = load i64, ptr %l288, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v4, ptr %v1, ptr %t608, { i64, ptr } %t609, i64 %t610)
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
  %t611 = load ptr, ptr %l4, !tbaa !29
  %t612 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t613 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v4, ptr %v1, ptr %t611, { i64, ptr } %t612, i64 %t613)
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
  %t617 = load i64, ptr %l34, !tbaa !24
  %t619 = add i64 %t617, 1
  store i64 %t619, ptr %l34, !tbaa !24
  br label %bb122
bb156:
  store ptr %l9, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb157
bb157:
  store %olang.scope zeroinitializer, ptr %s31
  %t622 = load i64, ptr %l41, !tbaa !24
  store i64 %t622, ptr %l295, !tbaa !24
  %t623 = load ptr, ptr %l40, !tbaa !29
  %t625 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H8bd9ddbe6d7efc10dd35c4d42ad9dacf(ptr %s0, ptr %t623)
  store i64 %t625, ptr %l297
  br label %bb158
bb158:
  %t626 = load i64, ptr %l295, !tbaa !24
  %t627 = load i64, ptr %l297, !tbaa !24
  %t628 = icmp slt i64 %t626, %t627
  %t630 = xor i1 %t628, true
  br i1 %t630, label %bb159, label %bb160
bb159:
  call void @__olang_scope_close(ptr %s31)
  br label %bb203
bb160:
  br label %bb161
bb161:
  %t632 = load ptr, ptr %l40, !tbaa !29
  %t633 = load i64, ptr %l41, !tbaa !24
  %t636 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H7486c711b8ab0d124cd9b327dc5d14f9(ptr %s0, ptr %t632, i64 %t633)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t636, ptr %l302
  br label %bb162
bb162:
  %t637 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l302
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t637, ptr %l42
  %t638 = load ptr, ptr %l0, !tbaa !29
  %t640 = getelementptr %"compiler/load:Loader", ptr %t638, i32 0, i32 10
  %t641 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 0
  %t642 = load i64, ptr %t641, !tbaa !24
  %t645 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t640, i64 %t642)
  store ptr %t645, ptr %l306
  br label %bb163
bb163:
  %t646 = load ptr, ptr %l306, !tbaa !29
  %t648 = getelementptr %"compiler/load:Module", ptr %t646, i32 0, i32 8
  %t649 = load { i64, ptr }, ptr %t648, !tbaa !27
  %t650 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 1
  %t651 = load i32, ptr %t650, !tbaa !23
  %t654 = call ptr @compiler_2finterp_2efindIf(ptr %v0, ptr %v0, { i64, ptr } %t649, i32 %t651)
  store ptr %t654, ptr %l310
  br label %bb164
bb164:
  %t655 = load ptr, ptr %l310, !tbaa !29
  store ptr %t655, ptr %l43, !tbaa !29
  %t656 = load ptr, ptr %l43, !tbaa !29
  %t658 = icmp eq ptr %t656, null
  br i1 %t658, label %bb165, label %bb166
bb165:
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb166:
  br label %bb167
bb167:
  %t660 = load ptr, ptr %l10, !tbaa !29
  %t661 = load ptr, ptr %l1, !tbaa !29
  %t662 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 0
  %t663 = load i64, ptr %t662, !tbaa !24
  %t664 = load ptr, ptr %l43, !tbaa !29
  %t669 = call %"compiler/interp:chained" @compiler_2finterp_2echained_2echain(ptr %v1, ptr %v1, ptr %v0, ptr %s31, ptr %t660, ptr %t661, i64 %t663, ptr %t664)
  store %"compiler/interp:chained" %t669, ptr %l317
  br label %bb168
bb168:
  %t670 = load %"compiler/interp:chained", ptr %l317
  store %"compiler/interp:chained" %t670, ptr %l44
  %t671 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 0
  %t672 = load i64, ptr %t671, !tbaa !24
  store i64 %t672, ptr %l45, !tbaa !24
  %t674 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 1
  %t675 = load i1, ptr %t674, !tbaa !21
  store i1 %t675, ptr %l46, !tbaa !21
  %t677 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 2
  %t678 = load { i64, ptr }, ptr %t677, !tbaa !27
  store { i64, ptr } %t678, ptr %l47, !tbaa !27
  %t680 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 3
  %t681 = load { i64, [3 x i64] }, ptr %t680
  store { i64, [3 x i64] } %t681, ptr %l48
  %t683 = load i1, ptr %l46, !tbaa !21
  %t685 = xor i1 %t683, true
  br i1 %t685, label %bb169, label %bb170
bb169:
  %t687 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t689 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s31, { i64, ptr } %t687, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t689, ptr %l326
  br label %bb171
bb170:
  store i1 false, ptr %l324, !tbaa !21
  br label %bb172
bb171:
  %t690 = load i1, ptr %l326, !tbaa !21
  store i1 %t690, ptr %l324, !tbaa !21
  br label %bb172
bb172:
  %t691 = load i1, ptr %l324, !tbaa !21
  br i1 %t691, label %bb173, label %bb174
bb173:
  %t692 = load ptr, ptr %l0, !tbaa !29
  %t694 = getelementptr %"compiler/load:Loader", ptr %t692, i32 0, i32 4
  %t695 = load ptr, ptr %t694, !tbaa !29
  %t696 = load { i64, [3 x i64] }, ptr %l48
  %t699 = call i1 @compiler_2finterp_2econdSaid(ptr %v0, ptr %t695, { i64, [3 x i64] } %t696)
  store i1 %t699, ptr %l331
  br label %bb175
bb174:
  store i1 false, ptr %l327, !tbaa !21
  br label %bb176
bb175:
  %t700 = load i1, ptr %l331, !tbaa !21
  store i1 %t700, ptr %l327, !tbaa !21
  br label %bb176
bb176:
  %t701 = load i1, ptr %l327, !tbaa !21
  br i1 %t701, label %bb177, label %bb178
bb177:
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb178:
  br label %bb179
bb179:
  %t702 = load i1, ptr %l46, !tbaa !21
  %t704 = xor i1 %t702, true
  br i1 %t704, label %bb180, label %bb181
bb180:
  %t706 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t708 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s31, { i64, ptr } %t706, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t708, ptr %l336
  br label %bb182
bb181:
  store i1 false, ptr %l334, !tbaa !21
  br label %bb183
bb182:
  %t709 = load i1, ptr %l336, !tbaa !21
  store i1 %t709, ptr %l334, !tbaa !21
  br label %bb183
bb183:
  %t710 = load i1, ptr %l334, !tbaa !21
  br i1 %t710, label %bb184, label %bb185
bb184:
  %t711 = load ptr, ptr %l1, !tbaa !29
  %t713 = getelementptr %"compiler/check:Checker", ptr %t711, i32 0, i32 139
  %t714 = load i1, ptr %t713, !tbaa !21
  store i1 %t714, ptr %l337, !tbaa !21
  br label %bb186
bb185:
  store i1 false, ptr %l337, !tbaa !21
  br label %bb186
bb186:
  %t716 = load i1, ptr %l337, !tbaa !21
  br i1 %t716, label %bb187, label %bb188
bb187:
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb188:
  br label %bb189
bb189:
  %t717 = load i1, ptr %l46, !tbaa !21
  %t719 = xor i1 %t717, true
  br i1 %t719, label %bb190, label %bb191
bb190:
  store %olang.scope zeroinitializer, ptr %s35
  store ptr %a8, ptr %l342, !tbaa !29
  %t722 = load { i64, [3 x i64] }, ptr %l48
  store { i64, [3 x i64] } %t722, ptr %l343
  %t723 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t725 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s35, { i64, ptr } %t723, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t725, ptr %l345
  br label %bb192
bb191:
  br label %bb200
bb192:
  %t726 = load i1, ptr %l345, !tbaa !21
  br i1 %t726, label %bb193, label %bb194
bb193:
  %t727 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUnseen(ptr %v8)
  store %"compiler/diagmsg:Msg" %t727, ptr %l347
  br label %bb195
bb194:
  %t728 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t730 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUndecidable(ptr %s31, ptr %v8, { i64, ptr } %t728)
  store %"compiler/diagmsg:Msg" %t730, ptr %l349
  br label %bb196
bb195:
  %t731 = load %"compiler/diagmsg:Msg", ptr %l347
  store %"compiler/diagmsg:Msg" %t731, ptr %l346
  br label %bb197
bb196:
  %t732 = load %"compiler/diagmsg:Msg", ptr %l349
  store %"compiler/diagmsg:Msg" %t732, ptr %l346
  br label %bb197
bb197:
  %t733 = load { i64, [3 x i64] }, ptr %l343
  %t734 = load %"compiler/diagmsg:Msg", ptr %l346
  %t735 = call %"compiler/interp:CondErr" @compiler_2finterp_3aCondErr_2ector(ptr %v8, ptr %v8, { i64, [3 x i64] } %t733, %"compiler/diagmsg:Msg" %t734)
  store %"compiler/interp:CondErr" %t735, ptr %l350
  br label %bb198
bb198:
  %t736 = load ptr, ptr %l342, !tbaa !29
  %t737 = load %"compiler/interp:CondErr", ptr %l350
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2ePush_3ccompiler_2finterp_3aCondErr_3e(ptr %v8, ptr %v8, ptr %t736, %"compiler/interp:CondErr" %t737)
  br label %bb199
bb199:
  %t738 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  store i64 %t738, ptr %l45, !tbaa !24
  call void @__olang_scope_close(ptr %s35)
  br label %bb200
bb200:
  %t740 = load ptr, ptr %l0, !tbaa !29
  %t741 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 0
  %t742 = load i64, ptr %t741, !tbaa !24
  %t743 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 1
  %t744 = load i32, ptr %t743, !tbaa !23
  %t745 = load i64, ptr %l45, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eDecide(ptr %v0, ptr %t740, i64 %t742, i32 %t744, i64 %t745)
  br label %bb201
bb201:
  %t750 = load i64, ptr %l11, !tbaa !24
  %t752 = add i64 %t750, 1
  store i64 %t752, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb202:
  %t754 = load i64, ptr %l41, !tbaa !24
  %t756 = add i64 %t754, 1
  store i64 %t756, ptr %l41, !tbaa !24
  br label %bb157
bb203:
  %t758 = load i64, ptr %l11, !tbaa !24
  %t760 = icmp eq i64 %t758, 0
  br i1 %t760, label %bb204, label %bb205
bb204:
  store ptr %l27, ptr %l49, !tbaa !29
  store i64 0, ptr %l50, !tbaa !24
  br label %bb206
bb205:
  br label %bb215
bb206:
  %t763 = load i64, ptr %l50, !tbaa !24
  store i64 %t763, ptr %l363, !tbaa !24
  %t764 = load ptr, ptr %l49, !tbaa !29
  %t766 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eLen_3ccompiler_2fast_3aIf_26_3e(ptr %s0, ptr %t764)
  store i64 %t766, ptr %l365
  br label %bb207
bb207:
  %t767 = load i64, ptr %l363, !tbaa !24
  %t768 = load i64, ptr %l365, !tbaa !24
  %t769 = icmp slt i64 %t767, %t768
  %t771 = xor i1 %t769, true
  br i1 %t771, label %bb208, label %bb209
bb208:
  br label %bb214
bb209:
  br label %bb210
bb210:
  %t773 = load ptr, ptr %l49, !tbaa !29
  %t774 = load i64, ptr %l50, !tbaa !24
  %t777 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eAt_3ccompiler_2fast_3aIf_26_3e(ptr %s0, ptr %s0, ptr %t773, i64 %t774)
  store ptr %t777, ptr %l370
  br label %bb211
bb211:
  %t778 = load ptr, ptr %l370, !tbaa !29
  %t779 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v1, ptr %s0, ptr %t779, ptr %t778)
  br label %bb212
bb212:
  br label %bb213
bb213:
  %t783 = load i64, ptr %l50, !tbaa !24
  %t785 = add i64 %t783, 1
  store i64 %t785, ptr %l50, !tbaa !24
  br label %bb206
bb214:
  br label %bb215
bb215:
  %t787 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t787, ptr %rv
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
  %s3 = alloca %olang.scope
  %s10 = alloca %olang.scope
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
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 109
  store ptr %t14, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
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
  %t62 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v1, ptr %v1, ptr %v1, ptr %t59, { i64, [2 x i64] } %t60, { i64, ptr } %t58)
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
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t101, i32 0, i32 15
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
  %t151 = load i32, ptr %t150, !range !{i32 0, i32 16}
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
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/interp:Exec", ptr %t161, i32 0, i32 4
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 18
  %t165 = load i64, ptr %t164, !tbaa !24
  %t167 = icmp sge i64 %t165, 0
  br i1 %t167, label %bb32, label %bb33
bb32:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t170 = load ptr, ptr %l2, !tbaa !29
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr %"compiler/interp:Exec", ptr %t171, i32 0, i32 4
  %t174 = getelementptr %"compiler/eval:Machine", ptr %t173, i32 0, i32 18
  %t175 = load i64, ptr %t174, !tbaa !24
  %t176 = load i32, ptr %l11, !range !{i32 0, i32 16}
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load %"compiler/source:Span", ptr %l13
  call void @compiler_2finterp_2eglobalAborts(ptr %v1, ptr %v0, ptr %t169, ptr %t170, i64 %t175, i32 %t176, i64 %t177, %"compiler/source:Span" %t178)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb63
bb35:
  %t185 = load ptr, ptr %l2, !tbaa !29
  store ptr %t185, ptr %l94, !tbaa !29
  %t186 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t186, ptr %l95
  %t187 = load i32, ptr %l11, !range !{i32 0, i32 16}
  %t189 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %v0, i32 %t187)
  store { i64, ptr } %t189, ptr %l97
  br label %bb36
bb36:
  %t190 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t191 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %v0, ptr %v0, { i64, ptr } %t190)
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
  %t280 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t283 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t283, 1
  %t285 = extractvalue { i64, ptr } %t283, 0
  %t286 = add i64 %t282, %t285
  %t287 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t288 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t289 = add i64 %t286, %t288
  %t290 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t289)
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
  %t300 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t304 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertUndecidable(ptr %v0, ptr %v0, { i64, ptr } %t302)
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
  %t314 = load ptr, ptr %l2, !tbaa !29
  store ptr %t314, ptr %l140, !tbaa !29
  %t315 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t315, ptr %l141
  %t316 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertUndecidable(ptr %v0, ptr %v0, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d54, i32 0, i32 1) })
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
  br label %bb62
bb61:
  call void @__olang_check_failed(ptr @olang_loc_5ce1b8d60352552c_3e5898832c479718)
  unreachable
bb62:
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
  %t29 = alloca { i64, [3 x i64] }, align 8
  %t100 = alloca { i64, [3 x i64] }, align 8
  store ptr %a1, ptr %l1
  store i64 %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
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
  %t41 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %v1, i32 %a3)
  store { i64, ptr } %t41, ptr %l23
  br label %bb2
bb2:
  %t42 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalAborts(ptr %v1, ptr %v1, { i64, ptr } %t42)
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
  br label %ret
ret:
  ret void
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
  %t14 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %s0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
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
  %t3 = call i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
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
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d56, i32 0, i32 1) })
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
  %t16 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s1, { i64, ptr } %t14, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l18, !tbaa !27
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
  %t71 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s3, ptr %s3, { i64, ptr } %t69, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
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
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s4, { i64, ptr } %t93, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) })
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
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s4, { i64, ptr } %t97, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t99, ptr %l46
  br label %bb29
bb29:
  %t100 = load i1, ptr %l46, !tbaa !21
  br i1 %t100, label %bb30, label %bb31
bb30:
  %t101 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l50, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l56, !tbaa !27
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
  %t12 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 136
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
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 17
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
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 17
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
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t94, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) })
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
  %t169 = getelementptr %"compiler/eval:Machine", ptr %t168, i32 0, i32 17
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
  %t238 = load i32, ptr %t237, !range !{i32 0, i32 16}
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
  %t248 = load i32, ptr %l18, !range !{i32 0, i32 16}
  %t250 = trunc i64 0 to i32
  %t251 = icmp eq i32 %t248, %t250
  br i1 %t251, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb45
bb44:
  %t253 = load i32, ptr %l18, !range !{i32 0, i32 16}
  %t255 = trunc i64 1 to i32
  %t256 = icmp eq i32 %t253, %t255
  store i1 %t256, ptr %l118, !tbaa !21
  br label %bb45
bb45:
  %t258 = load i1, ptr %l118, !tbaa !21
  br i1 %t258, label %bb46, label %bb47
bb46:
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
  br label %ret
bb52:
  %t272 = load ptr, ptr %l2, !tbaa !29
  store ptr %t272, ptr %l127, !tbaa !29
  %t273 = load { i64, [3 x i64] }, ptr %l12
  store { i64, [3 x i64] } %t273, ptr %l128
  %t274 = load i32, ptr %l18, !range !{i32 0, i32 16}
  %t276 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %v2, i32 %t274)
  store { i64, ptr } %t276, ptr %l130
  br label %bb53
bb53:
  %t277 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t278 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalAborts(ptr %v2, ptr %v2, { i64, ptr } %t277)
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
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
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
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t9, i64 1456, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l22, i64 1456, i1 false)
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l2, !range !{i32 0, i32 2}
  call void @compiler_2feval_2eMachine_2eNew(ptr %t16, ptr %v0, ptr %v2, ptr %t14, i32 %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t16, i64 3032, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l26, i64 3032, i1 false)
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
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr %t40
  %t47 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr %t46
  %t53 = icmp eq ptr %t52, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t53)
  br label %bb9
bb9:
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %l10
  %t55 = ptrtoint ptr %v2 to i64
  store i64 %t55, ptr %l33, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e8
  br i1 %t56, label %bb10, label %bb11
bb10:
  %t58 = call ptr @__olang_region_make(ptr %v2)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l33, !tbaa !24
  br label %bb11
bb11:
  %t60 = load i64, ptr %l33
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t61)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t62, ptr %l35
  br label %bb12
bb12:
  %t63 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e8
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load i64, ptr %l33
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr null
  %t73 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr %t72
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr %t78
  %t85 = icmp eq ptr %t84, %t66
  call void @__olang_region_settle(ptr %t66, i1 %t85)
  br label %bb14
bb14:
  %t86 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t86, ptr %l11
  %t87 = ptrtoint ptr %v2 to i64
  store i64 %t87, ptr %l37, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e9
  br i1 %t88, label %bb15, label %bb16
bb15:
  %t90 = call ptr @__olang_region_make(ptr %v2)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l37, !tbaa !24
  br label %bb16
bb16:
  %t92 = load i64, ptr %l37
  %t93 = inttoptr i64 %t92 to ptr
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t93, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l39
  br label %bb17
bb17:
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e9
  br i1 %t95, label %bb18, label %bb19
bb18:
  %t97 = load i64, ptr %l37
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = icmp ne ptr %t102, null
  %t104 = select i1 %t103, ptr %t102, ptr null
  %t105 = icmp eq ptr %t104, %t98
  call void @__olang_region_settle(ptr %t98, i1 %t105)
  br label %bb19
bb19:
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l12
  %t107 = ptrtoint ptr %v2 to i64
  store i64 %t107, ptr %l41, !tbaa !24
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t108, label %bb20, label %bb21
bb20:
  %t110 = call ptr @__olang_region_make(ptr %v2)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l41, !tbaa !24
  br label %bb21
bb21:
  %t112 = load i64, ptr %l41
  %t113 = inttoptr i64 %t112 to ptr
  %t114 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t113)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %l43
  br label %bb22
bb22:
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t117 = load i64, ptr %l41
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 2
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = icmp ne ptr %t128, null
  %t130 = select i1 %t129, ptr %t128, ptr %t124
  %t131 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr %t130
  %t137 = icmp eq ptr %t136, %t118
  call void @__olang_region_settle(ptr %t118, i1 %t137)
  br label %bb24
bb24:
  %t138 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t138, ptr %l13
  %t139 = ptrtoint ptr %v2 to i64
  store i64 %t139, ptr %l45, !tbaa !24
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t140, label %bb25, label %bb26
bb25:
  %t142 = call ptr @__olang_region_make(ptr %v2)
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l45, !tbaa !24
  br label %bb26
bb26:
  %t144 = load i64, ptr %l45
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t145)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t146, ptr %l47
  br label %bb27
bb27:
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t147, label %bb28, label %bb29
bb28:
  %t149 = load i64, ptr %l45
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr %t156
  %t163 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 0
  %t164 = load { i64, ptr }, ptr %t163
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = call ptr @__olang_region_or(ptr %t165, ptr null)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr %t162
  %t169 = icmp eq ptr %t168, %t150
  call void @__olang_region_settle(ptr %t150, i1 %t169)
  br label %bb29
bb29:
  %t170 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t170, ptr %l14
  %t171 = ptrtoint ptr %v2 to i64
  store i64 %t171, ptr %l49, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e12
  br i1 %t172, label %bb30, label %bb31
bb30:
  %t174 = call ptr @__olang_region_make(ptr %v2)
  %t175 = ptrtoint ptr %t174 to i64
  store i64 %t175, ptr %l49, !tbaa !24
  br label %bb31
bb31:
  %t176 = load i64, ptr %l49
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t177, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l51
  br label %bb32
bb32:
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e12
  br i1 %t179, label %bb33, label %bb34
bb33:
  %t181 = load i64, ptr %l49
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr null
  %t189 = icmp eq ptr %t188, %t182
  call void @__olang_region_settle(ptr %t182, i1 %t189)
  br label %bb34
bb34:
  %t190 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  %t191 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 0
  %t192 = load ptr, ptr %l3, !tbaa !29
  store ptr %t192, ptr %t191, !tbaa !29
  %t193 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 1
  %t194 = load ptr, ptr %l4, !tbaa !29
  store ptr %t194, ptr %t193, !tbaa !29
  %t195 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 2
  %t196 = load i32, ptr %l5, !range !{i32 0, i32 2}
  store i32 %t196, ptr %t195
  %t197 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t197, ptr %l6, i64 1456, i1 false)
  %t198 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %l7, i64 3032, i1 false)
  %t199 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 5
  %t200 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %t199
  %t201 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 6
  %t202 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t202, ptr %t201
  %t203 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 7
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, ptr %t203
  %t205 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 8
  %t206 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t206, ptr %t205
  %t207 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 9
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %t207
  %t209 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 10
  %t210 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t210, ptr %t209
  %t211 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 11
  %t212 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t212, ptr %t211
  %t213 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t190, ptr %t213
  %t215 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 13
  store i1 false, ptr %t215, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l53, i64 4976, i1 false)
  br label %ret
ret:
  ret void
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
@.d10 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"an error reaches '!', which ends the program" }>, align 8
@.d11 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"an error leaves the test, which ends it" }>, align 8
@.d12 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"it ends the test or the process" }>, align 8
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e105 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e145 = weak hidden constant i1 false
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

@__olang_empty_array = external constant [16 x i64]
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no main\0A" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d18 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang interpret: " }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d20 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang interpret: " }>, align 8
@.d21 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c": the collection grew here\0A" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e80 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2feval_3aMachine_2e81 = weak hidden constant i1 false
@.d25 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ok - " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d27 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"FAIL - " }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d30 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c": left the test\0A" }>, align 8
@.d31 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"FAIL - " }>, align 8
@.d32 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d36 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"FAIL - " }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d38 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" passed, " }>, align 8
@.d39 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" failed\0A" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d41 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" earlier places not kept)\0A" }>, align 8
@.d42 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"raised here" }>, align 8
@.d43 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"try passed it on" }>, align 8
@.d44 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a task failed, and its join passed it on" }>, align 8
@.d45 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e4 = weak hidden constant i1 false
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aGenInfo(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:GenInfo"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 400, i1 false)
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
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 400, i1 false)
  br label %ret
ret:
  ret void
}

@.d47 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler_2finterp_3aExec_2e11 = weak hidden constant i1 false
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e_2e1 = weak hidden constant i1 false
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d54 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare void @__olang_errpay_pop()
@.d56 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"GROUP" }>, align 8
@.d57 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"INPUT" }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d61 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"lib" }>, align 8
@.d62 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare void @compiler_2finterp_2ejudgeViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %a0)
declare %"compiler/check:ValueAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eAt_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_e1183b54591591ba_6784d54d52bb291e = external constant [0 x i8]
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2finterp_2evalueWhy(ptr %v0, ptr %v1, { i64, [5 x i64] } %a0, %"compiler/source:Span" %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eResultHoldsAddress(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eZeroValueShared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralCtorFails(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { { i64, [3 x i64] }, { i64, ptr } } @compiler_2finterp_2ezeroUseArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %v0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadUnassigned(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroByReference(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroReferenceHasOne(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2erun(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_5b75817b97c7703f_a9caa4d803bddbab = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eInitGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_fce8d31b7e62f371_71870e12b086bddd = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePop_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefine(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c21b7649f9083df0_c859438e5e055394 = external constant [0 x i8]
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEndProgram(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [5 x i64] } %a1, i64 %a2, ptr %a3)
@G_2ecompiler_2feval_2eWhyStale = external constant <{ [8 x i8], ptr }>
declare { i64, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eStaleGrewAt(ptr %v0, ptr %a0)
@olang_loc_736b533d144489ee_c645810c81b1a7fa = external constant [0 x i8]
declare i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eselected(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_edfb88544329c1e0_5f50a381ae60fbc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTestName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2finterp_2edetachedEnd(ptr %v0, { i64, ptr } %a0)
@olang_loc_a4fccf70f04f1e46_a9480d1c36ec4c52 = external constant [0 x i8]
declare void @compiler_2finterp_2esay(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eerrorName(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceLen(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceAt(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceWhat(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExternSymbol(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineExtern(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3)
@olang_loc_6b327bc23f54125b_df118949941dcc1f = external constant [0 x i8]
@olang_loc_4dbbfc1aefa6e21c_e99ccf60d5e11690 = external constant [0 x i8]
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2finterp_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i1 %a4, { i64, [2 x i64] } %a5)
declare i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebuildDefault(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i1 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eBuildGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_5218513f7b2d35ff_8134a4fdf2d394bb = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eAnySlotBase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6661ff5fcd5a0e74_cadc672e97162150 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineTable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2ePendingIfs(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H8bd9ddbe6d7efc10dd35c4d42ad9dacf(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eLen_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eLen__H3e1caeca23cca4e886f5085abf2ba261(ptr %v0, ptr %a0)
declare %"compiler/check:EmbedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eAt_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4b90e82c7a9c5937397e46eef988cfe3(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H94076cc109da9d789864820ff05c3ac1(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, ptr } %a2)
declare %"compiler/check:UnrollAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eAt_3ccompiler_2fcheck_3aUnrollAsk_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H227dc11a6a27d53bbdf34efa35d45ee3(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, [2 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eunrolled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
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
declare %"compiler/interp:chained" @compiler_2finterp_2echained_2echain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
declare i1 @compiler_2finterp_2econdSaid(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUnseen(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUndecidable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2ePush_3ccompiler_2finterp_3aCondErr_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/interp:CondErr" %a1)
@G_2ecompiler_2fload_2eNoBranch = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2eDecide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eLen_3ccompiler_2fast_3aIf_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eAt_3ccompiler_2fast_3aIf_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eL_H34364174f15757c2d142d60c88ce0944(ptr %v0, ptr %a0)
declare %"compiler/check:TopAssertAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eA_H4ee666e103d2e1a6dd21794f4936298a(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c1dbe1436b3e45a6_af45377485db5b6a = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalse(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalseMessage(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertStale(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertUndecidable(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_5ce1b8d60352552c_3e5898832c479718 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseMessage(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_ef1298413c90a2dc_ba44d1693e670768 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2finterp_2efindInIf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_2f4ce1a9e181e1f2_bd4ae6421df971e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalAborts(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_c5607a0551bceea3_a83aa459e58f2847 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_33cf42576bc92052_8a57929dd960fbd6 = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_4a2450c320d71be4_787663299ea3b538 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H95f86c29c688efeac83a664cabcff622(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0)
@olang_loc_9513d9c663183758_bab169d76cbcad14 = external constant [0 x i8]
declare i64 @compiler_2finterp_2eglobalModule(ptr %v0, ptr %a0)
declare i32 @compiler_2finterp_2ehomesKnown(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H8e3ab02101333f4dae95aad48f2e722e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eRef_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2finterp_2ekeptBlob(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, ptr %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ePush_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_Hd47ddefe3838698aaa5711f2f63b01ed(ptr %v0, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/eval:Image" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrewHere(ptr %v0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_Hcc4dae5da0ed3c5355f9c78c0e71655b(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrNotBuilt(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2finterp_2efirstAt(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalStale(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7adf7e442ebbc99f_3e36fcedb7533913 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseWritten(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalse(ptr %v0)
declare void @compiler_2flower_3aLowerer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2feval_2eMachine_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
