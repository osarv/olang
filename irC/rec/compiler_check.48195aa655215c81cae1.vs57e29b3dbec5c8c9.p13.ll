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
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:ValueAsk" = type { i32, i64, %"compiler/source:Span", i32, i64, { i64, [3 x i64] }, i1, { i64, [3 x i64] } }
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/check:errNarrow" = type { i32, i32, i64, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/check:landing" = type { i64, i64, %"compiler/source:Span", i32, i64 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:factRead" = type { i64, i64, { i64, ptr }, i1, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:effectPlace" = type { i64, i64, %"compiler/source:Span", ptr, i32, i32 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/check:ownerAt" = type { i32, i1 }
%"compiler/check:payloadItem" = type { i32, ptr }
define dso_local i1 @compiler_2fcheck_2eassignsWhole(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l25 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l2
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t24, i32 0, i32 3
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t28 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t30 = trunc i64 78 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = call i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %t33, { i64, ptr } %t34)
  store i1 %t37, ptr %l20
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t38 = load i1, ptr %l20, !tbaa !21
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l17, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t40, { i64, ptr } %t42)
  store i1 %t45, ptr %l25
  br label %bb12
bb11:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb13
bb12:
  %t46 = load i1, ptr %l25, !tbaa !21
  %t47 = xor i1 %t46, true
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t49 = load i1, ptr %l21, !tbaa !21
  store i1 %t49, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_fa991e6198fa6a14_3129c18424918488)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRenderBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca { i64, [2 x i64] }
  %l30 = alloca i32
  %l33 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i64
  %l46 = alloca %"compiler/generic:Context"
  %l48 = alloca %"compiler/generic:Context"
  %l51 = alloca ptr
  %l54 = alloca i32
  %l57 = alloca i64
  %l61 = alloca i32
  %l68 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca i32
  %l81 = alloca i1
  %l86 = alloca i32
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l95 = alloca i32
  %l101 = alloca ptr
  %l105 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca %"compiler/source:Span"
  %l112 = alloca i32
  %l114 = alloca { i64, ptr }
  %l118 = alloca i32
  %l119 = alloca %"compiler/typed:Text"
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l131 = alloca { i64, ptr }
  %l132 = alloca %"compiler/typed:Block"
  %l140 = alloca i64
  %l148 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t24 = alloca { i64, [2 x i64] }, align 8
  %t74 = alloca %"compiler/generic:Context", align 8
  %t199 = alloca { i64, [4 x i64] }, align 8
  %t277 = alloca { i64, [5 x i64] }, align 8
  %t289 = alloca { i64, [2 x i64] }, align 8
  %t299 = alloca { i64, [2 x i64] }, align 8
  %t329 = alloca { i64, [5 x i64] }, align 8
  %t341 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
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
  store ptr %t10, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l19
  br label %bb1
bb1:
  %t15 = load i64, ptr %l19, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t16)
  store i32 %t18, ptr %l21
  br label %bb2
bb2:
  %t19 = load i32, ptr %l21, !tbaa !23
  store i32 %t19, ptr %l6, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l22, !tbaa !29
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 0
  store i64 7, ptr %t25
  %t27 = insertvalue { i64, i32 } undef, i64 %t21, 0
  %t29 = insertvalue { i64, i32 } %t27, i32 %t23, 1
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  store { i64, i32 } %t29, ptr %t30
  %t31 = load { i64, [2 x i64] }, ptr %t24
  store { i64, [2 x i64] } %t31, ptr %l25
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l6, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t37, i32 0, i32 %t38, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t41, ptr %l30
  br label %bb3
bb3:
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load %"compiler/source:Span", ptr %l3
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = load { i64, [2 x i64] }, ptr %l25
  %t46 = load i32, ptr %l30, !tbaa !23
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t44, { i64, [2 x i64] } %t45, i32 %t46, i64 %t42, %"compiler/source:Span" %t43)
  store i64 %t49, ptr %l33
  br label %bb4
bb4:
  %t50 = load i64, ptr %l33, !tbaa !24
  store i64 %t50, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 19
  %t54 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t53, i64 %t54, i64 1)
  br label %bb5
bb5:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l1, !tbaa !24
  %t60 = load i32, ptr %l6, !tbaa !23
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t57, i64 %t58, i64 %t59, i32 %t60, i32 0)
  store ptr %t65, ptr %l41
  br label %bb6
bb6:
  %t66 = load ptr, ptr %l41, !tbaa !29
  store ptr %t66, ptr %l42, !tbaa !29
  %t68 = ptrtoint ptr %v0 to i64
  store i64 %t68, ptr %l43, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t69, label %bb7, label %bb8
bb7:
  %t71 = call ptr @__olang_region_make(ptr %v0)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l43, !tbaa !24
  br label %bb8
bb8:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t75 = load i64, ptr %l43
  %t76 = inttoptr i64 %t75 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t74, ptr %t76, i64 %t73, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t74, i64 160, i1 false)
  br label %bb9
bb9:
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t78, label %bb10, label %bb11
bb10:
  %t80 = load i64, ptr %l43
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = getelementptr %"compiler/generic:Context", ptr %l46, i32 0, i32 3
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t82, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr null
  %t89 = getelementptr %"compiler/generic:Context", ptr %l46, i32 0, i32 3
  %t90 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t89, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = icmp ne ptr %t93, null
  %t95 = select i1 %t94, ptr %t93, ptr %t88
  %t96 = getelementptr %"compiler/generic:Context", ptr %l46, i32 0, i32 3
  %t97 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t96, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr %t95
  %t103 = getelementptr %"compiler/generic:Context", ptr %l46, i32 0, i32 2
  %t104 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t103, i32 0, i32 2
  %t105 = load { i64, ptr }, ptr %t104
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = call ptr @__olang_region_or(ptr %t106, ptr null)
  %t108 = icmp ne ptr %t107, null
  %t109 = select i1 %t108, ptr %t107, ptr %t102
  %t110 = getelementptr %"compiler/generic:Context", ptr %l46, i32 0, i32 2
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t110, i32 0, i32 1
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr %t109
  %t117 = getelementptr %"compiler/generic:Context", ptr %l46, i32 0, i32 2
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t117, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = icmp ne ptr %t121, null
  %t123 = select i1 %t122, ptr %t121, ptr %t116
  %t124 = icmp eq ptr %t123, %t81
  call void @__olang_region_settle(ptr %t81, i1 %t124)
  br label %bb11
bb11:
  %t125 = load ptr, ptr %l42, !tbaa !29
  %t126 = getelementptr %"compiler/check:frame", ptr %t125, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t126, i64 160, i1 false)
  %t127 = load ptr, ptr %l42, !tbaa !29
  %t128 = getelementptr %"compiler/check:frame", ptr %t127, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t128, ptr %l46, i64 160, i1 false)
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t129, label %bb12, label %bb13
bb12:
  %t131 = getelementptr %"compiler/generic:Context", ptr %l48, i32 0, i32 3
  %t132 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t131, i32 0, i32 2
  %t133 = load { i64, ptr }, ptr %t132
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr null)
  %t136 = icmp ne ptr %t135, null
  %t137 = select i1 %t136, ptr %t135, ptr null
  %t138 = getelementptr %"compiler/generic:Context", ptr %l48, i32 0, i32 3
  %t139 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t138, i32 0, i32 1
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = icmp ne ptr %t142, null
  %t144 = select i1 %t143, ptr %t142, ptr %t137
  %t145 = getelementptr %"compiler/generic:Context", ptr %l48, i32 0, i32 3
  %t146 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t145, i32 0, i32 0
  %t147 = load { i64, ptr }, ptr %t146
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = call ptr @__olang_region_or(ptr %t148, ptr null)
  %t150 = icmp ne ptr %t149, null
  %t151 = select i1 %t150, ptr %t149, ptr %t144
  %t152 = getelementptr %"compiler/generic:Context", ptr %l48, i32 0, i32 2
  %t153 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t152, i32 0, i32 2
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr %t151
  %t159 = getelementptr %"compiler/generic:Context", ptr %l48, i32 0, i32 2
  %t160 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t159, i32 0, i32 1
  %t161 = load { i64, ptr }, ptr %t160
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = call ptr @__olang_region_or(ptr %t162, ptr null)
  %t164 = icmp ne ptr %t163, null
  %t165 = select i1 %t164, ptr %t163, ptr %t158
  %t166 = getelementptr %"compiler/generic:Context", ptr %l48, i32 0, i32 2
  %t167 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t166, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr %t165
  call void @__olang_region_drop(ptr %t172)
  store %"compiler/generic:Context" zeroinitializer, ptr %l48
  br label %bb13
bb13:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t173)
  store ptr %t175, ptr %l51
  br label %bb14
bb14:
  %t176 = load %"compiler/source:Span", ptr %l3
  %t177 = load ptr, ptr %l51, !tbaa !29
  %t180 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t177, i32 -1, i32 0, %"compiler/source:Span" %t176)
  store i32 %t180, ptr %l54
  br label %bb15
bb15:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t181, i32 0, i32 37
  %t185 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t183)
  store i64 %t185, ptr %l57
  br label %bb16
bb16:
  %t186 = load i64, ptr %l57, !tbaa !24
  store i64 %t186, ptr %l9, !tbaa !24
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i64, ptr %l1, !tbaa !24
  %t189 = load i32, ptr %l2, !tbaa !23
  %t193 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t187, i64 %t188, i32 %t189)
  store i32 %t193, ptr %l61
  br label %bb17
bb17:
  %t194 = load i32, ptr %l61, !tbaa !23
  store i32 %t194, ptr %l10, !tbaa !23
  %t195 = load %"compiler/source:Span", ptr %l3
  %t196 = load i32, ptr %l10, !tbaa !23
  %t197 = load i64, ptr %l1, !tbaa !24
  %t198 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t199, i32 0, i32 0
  store i64 1, ptr %t200
  %t202 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t195, 0
  %t204 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t202, i32 %t196, 1
  %t206 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t204, i64 %t197, 2
  %t208 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t206, i32 %t198, 3
  %t209 = getelementptr { i64, [4 x i64] }, ptr %t199, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t208, ptr %t209
  %t210 = load { i64, [4 x i64] }, ptr %t199
  %t212 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t210, ptr %t212
  store ptr %t212, ptr %l11, !tbaa !29
  %t214 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t214, ptr %l68
  br label %bb18
bb18:
  %t215 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l68
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t215, ptr %l12
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %s0, ptr %t216, i32 %t217, ptr %l12, i64 0)
  br label %bb19
bb19:
  %t221 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l72
  br label %bb20
bb20:
  %t222 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l72
  %t223 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %t223
  store ptr %t223, ptr %l13, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = load i32, ptr %l10, !tbaa !23
  %t234 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t230, i32 %t231)
  store i32 %t234, ptr %l78
  br label %bb21
bb21:
  %t235 = load i32, ptr %l78, !range !{i32 0, i32 33}
  %t237 = trunc i64 19 to i32
  %t238 = icmp eq i32 %t235, %t237
  br i1 %t238, label %bb22, label %bb23
bb22:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/check:Checker", ptr %t240, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t245 = getelementptr %"compiler/generic:Program", ptr %t243, i32 0, i32 2
  %t246 = load i32, ptr %l10, !tbaa !23
  %t249 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t245, i32 %t246)
  store i32 %t249, ptr %l86
  br label %bb24
bb23:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb25
bb24:
  %t250 = load i32, ptr %l86, !tbaa !23
  %t251 = icmp ne i32 %t250, 0
  store i1 %t251, ptr %l81, !tbaa !21
  br label %bb25
bb25:
  %t253 = load i1, ptr %l81, !tbaa !21
  br i1 %t253, label %bb26, label %bb27
bb26:
  %t254 = load ptr, ptr %l13, !tbaa !29
  store ptr %t254, ptr %l88, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t255, ptr %l89
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/check:Checker", ptr %t256, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/generic:Program", ptr %t259, i32 0, i32 2
  %t262 = load i32, ptr %l10, !tbaa !23
  %t263 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t267 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t261, i32 %t262, i64 %t263)
  store i32 %t267, ptr %l95
  br label %bb28
bb27:
  %t268 = load ptr, ptr %l13, !tbaa !29
  store ptr %t268, ptr %l101, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l3
  %t271 = load ptr, ptr %l11, !tbaa !29
  %t275 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t269, %"compiler/source:Span" %t270, ptr %t271)
  store ptr %t275, ptr %l105
  br label %bb30
bb28:
  %t276 = load ptr, ptr %l11, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t277
  %t278 = getelementptr { i64, [5 x i64] }, ptr %t277, i32 0, i32 0
  store i64 3, ptr %t278
  %t279 = load %"compiler/source:Span", ptr %l89
  %t280 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t279, 0
  %t281 = load i32, ptr %l95, !tbaa !23
  %t282 = insertvalue { %"compiler/source:Span", i32, ptr } %t280, i32 %t281, 1
  %t284 = insertvalue { %"compiler/source:Span", i32, ptr } %t282, ptr %t276, 2
  %t285 = getelementptr { i64, [5 x i64] }, ptr %t277, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t284, ptr %t285
  %t286 = load { i64, [5 x i64] }, ptr %t277
  %t288 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t286, ptr %t288
  store { i64, [2 x i64] } zeroinitializer, ptr %t289
  %t290 = getelementptr { i64, [2 x i64] }, ptr %t289, i32 0, i32 0
  store i64 1, ptr %t290
  %t292 = insertvalue { ptr } undef, ptr %t288, 0
  %t293 = getelementptr { i64, [2 x i64] }, ptr %t289, i32 0, i32 1
  store { ptr } %t292, ptr %t293
  %t294 = load { i64, [2 x i64] }, ptr %t289
  %t296 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t294, ptr %t296
  %t297 = load ptr, ptr %l88, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v0, ptr %v0, ptr %t297, ptr %t296)
  br label %bb29
bb29:
  br label %bb32
bb30:
  store { i64, [2 x i64] } zeroinitializer, ptr %t299
  %t300 = getelementptr { i64, [2 x i64] }, ptr %t299, i32 0, i32 0
  store i64 1, ptr %t300
  %t301 = load ptr, ptr %l105, !tbaa !29
  %t302 = insertvalue { ptr } undef, ptr %t301, 0
  %t303 = getelementptr { i64, [2 x i64] }, ptr %t299, i32 0, i32 1
  store { ptr } %t302, ptr %t303
  %t304 = load { i64, [2 x i64] }, ptr %t299
  %t306 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t304, ptr %t306
  %t307 = load ptr, ptr %l101, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v0, ptr %v0, ptr %t307, ptr %t306)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/check:Checker", ptr %t309, i32 0, i32 37
  store ptr %t311, ptr %l109, !tbaa !29
  %t312 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t312, ptr %l110
  %t313 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t313, ptr %l111
  %t314 = load i32, ptr %l6, !tbaa !23
  store i32 %t314, ptr %l112, !tbaa !23
  %t315 = load ptr, ptr %l13, !tbaa !29
  %t317 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2eToArr_H1b89f7fcc263bba924ca04e7c3aa48c7(ptr %v0, ptr %v0, ptr %t315)
  store { i64, ptr } %t317, ptr %l114
  br label %bb33
bb33:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load %"compiler/source:Span", ptr %l3
  %t323 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t318, i32 4, %"compiler/source:Span" %t319)
  store i32 %t323, ptr %l118
  br label %bb34
bb34:
  %t324 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t325 = load i32, ptr %l118, !tbaa !23
  %t326 = call %"compiler/typed:Text" @compiler_2ftyped_3aText_2ector(ptr %v0, ptr %v0, { i64, ptr } %t324, i32 %t325)
  store %"compiler/typed:Text" %t326, ptr %l119
  br label %bb35
bb35:
  %t327 = load %"compiler/typed:Text", ptr %l119
  %t328 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Text" %t327, ptr %t328
  store { i64, [5 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [5 x i64] }, ptr %t329, i32 0, i32 0
  store i64 16, ptr %t330
  %t331 = load %"compiler/source:Span", ptr %l111
  %t332 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t331, 0
  %t333 = load i32, ptr %l112, !tbaa !23
  %t334 = insertvalue { %"compiler/source:Span", i32, ptr } %t332, i32 %t333, 1
  %t336 = insertvalue { %"compiler/source:Span", i32, ptr } %t334, ptr %t328, 2
  %t337 = getelementptr { i64, [5 x i64] }, ptr %t329, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t336, ptr %t337
  %t338 = load { i64, [5 x i64] }, ptr %t329
  %t340 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t338, ptr %t340
  store { i64, [3 x i64] } zeroinitializer, ptr %t341
  %t342 = getelementptr { i64, [3 x i64] }, ptr %t341, i32 0, i32 0
  store i64 6, ptr %t342
  %t343 = load %"compiler/source:Span", ptr %l110
  %t344 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t343, 0
  %t346 = insertvalue { %"compiler/source:Span", ptr } %t344, ptr %t340, 1
  %t347 = getelementptr { i64, [3 x i64] }, ptr %t341, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t346, ptr %t347
  %t348 = load { i64, [3 x i64] }, ptr %t341
  %t350 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t348, ptr %t350
  %t351 = load ptr, ptr %l109, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t351, ptr %t350)
  br label %bb36
bb36:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t353)
  store ptr %t355, ptr %l126
  br label %bb37
bb37:
  %t356 = load ptr, ptr %l126, !tbaa !29
  store ptr %t356, ptr %l127, !tbaa !29
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 37
  %t360 = load i64, ptr %l9, !tbaa !24
  %t363 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t359, i64 %t360)
  store { i64, ptr } %t363, ptr %l131
  br label %bb38
bb38:
  %t364 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t365 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t364)
  store %"compiler/typed:Block" %t365, ptr %l132
  br label %bb39
bb39:
  %t366 = load %"compiler/typed:Block", ptr %l132
  %t367 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t366, ptr %t367
  %t369 = load ptr, ptr %l127, !tbaa !29
  %t370 = getelementptr %"compiler/typed:Body", ptr %t369, i32 0, i32 11
  store ptr %t367, ptr %t370, !tbaa !29
  %t371 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t371)
  br label %bb40
bb40:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/check:Checker", ptr %t373, i32 0, i32 19
  %t376 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t375, i64 %t376, i64 2)
  br label %bb41
bb41:
  %t379 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %t379)
  br label %bb42
bb42:
  %t381 = load ptr, ptr %l4, !tbaa !29
  %t383 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t381)
  store i64 %t383, ptr %l140
  br label %bb43
bb43:
  %t384 = load i64, ptr %l5, !tbaa !24
  %t385 = load i64, ptr %l140, !tbaa !24
  %t387 = icmp sgt i64 %t385, %t384
  br i1 %t387, label %bb44, label %bb45
bb44:
  %t389 = load ptr, ptr %l4, !tbaa !29
  %t390 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t389, i64 %t390)
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/check:Checker", ptr %t393, i32 0, i32 14
  %t396 = load i64, ptr %l7, !tbaa !24
  %t399 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t395, i64 %t396)
  store ptr %t399, ptr %l148
  br label %bb47
bb47:
  %t400 = load ptr, ptr %l148, !tbaa !29
  %t402 = getelementptr %"compiler/typed:Body", ptr %t400, i32 0, i32 11
  store ptr null, ptr %t402, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb48:
  %t404 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t404, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %lp3 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l25 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 16
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp sgt i64 %t13, 0
  store i1 %t14, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %t17, i32 %t18)
  store { i64, ptr } %t21, ptr %l14
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 7
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t23, i64 -1, i64 %t27, i32 %t28, i32 0)
  store ptr %t32, ptr %l19
  br label %bb9
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 5
  %t36 = load i1, ptr %t35, !tbaa !21
  store i1 %t36, ptr %l2, !tbaa !21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 5
  store i1 true, ptr %t40, !tbaa !21
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %t41, i32 %t42)
  store { i64, ptr } %t45, ptr %l25
  br label %bb10
bb10:
  %t46 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t46, ptr %lp3
  %t47 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t48 = load ptr, ptr %lp3
  store { i64, ptr } %t47, ptr %t48, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i1, ptr %l2, !tbaa !21
  %t53 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 5
  store i1 %t50, ptr %t53, !tbaa !21
  %t54 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t54)
  br label %bb11
bb11:
  %t56 = load ptr, ptr %lp3
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyAs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l17 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l39 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l7, !tbaa !29
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t5 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t3)
  store %"compiler/source:Span" %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v3, ptr %t6)
  store %"compiler/source:Span" %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l9
  %t11 = load %"compiler/source:Span", ptr %l11
  %t12 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t9, %"compiler/source:Span" %t10, %"compiler/source:Span" %t11, i64 2)
  store %"compiler/source:Span" %t12, ptr %l12
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t13)
  store i32 %t16, ptr %l15
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l12
  %t20 = load i32, ptr %l15, !tbaa !23
  %t22 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCaseType(ptr %v0, ptr %v3, ptr %t18, %"compiler/source:Span" %t19, i32 %t20, ptr %t17)
  store i32 %t22, ptr %l17
  br label %bb5
bb5:
  %t23 = load i32, ptr %l17, !tbaa !23
  store i32 %t23, ptr %l5, !tbaa !23
  %t24 = load i32, ptr %l5, !tbaa !23
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t28 = icmp eq i32 %t24, %t25
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l1
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t30, %"compiler/source:Span" %t31)
  store ptr %t34, ptr %l23
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load ptr, ptr %l23, !tbaa !29
  store ptr %t35, ptr %rv
  br label %ret
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t37, ptr %l25
  %t38 = load ptr, ptr %l2, !tbaa !29
  store ptr %t38, ptr %l26, !tbaa !29
  %t39 = load i32, ptr %l5, !tbaa !23
  store i32 %t39, ptr %l27, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l28, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCase(ptr %v0, ptr %t41)
  store i32 %t43, ptr %l30
  br label %bb10
bb10:
  %t44 = mul i64 1, 4
  %t45 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t44)
  %t46 = insertvalue { i64, ptr } undef, i64 1, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l31, !tbaa !27
  %t48 = load i32, ptr %l30, !tbaa !23
  %t49 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i32, ptr %t50, i64 0
  store i32 %t48, ptr %t51, !tbaa !33
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l32, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t53)
  store %"compiler/source:Span" %t55, ptr %l34
  br label %bb11
bb11:
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v3, ptr %t56)
  store %"compiler/source:Span" %t58, ptr %l36
  br label %bb12
bb12:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l34
  %t61 = load %"compiler/source:Span", ptr %l36
  %t62 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t59, %"compiler/source:Span" %t60, %"compiler/source:Span" %t61, i64 2)
  store %"compiler/source:Span" %t62, ptr %l37
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l28, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t65 = load %"compiler/source:Span", ptr %l37
  %t66 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %s0, ptr %t63, { i64, ptr } %t64, %"compiler/source:Span" %t65, i1 true)
  store i32 %t66, ptr %l38
  br label %bb14
bb14:
  %t67 = load ptr, ptr %l24, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l25
  %t69 = load ptr, ptr %l26, !tbaa !29
  %t70 = load i32, ptr %l27, !tbaa !23
  %t71 = load i32, ptr %l38, !range !{i32 0, i32 3}
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyInstance(ptr %v0, ptr %v1, ptr %v4, ptr %t67, %"compiler/source:Span" %t68, ptr %t69, i32 %t70, i32 %t71)
  store ptr %t72, ptr %l39
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t73 = load ptr, ptr %l39, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyInstance(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i64
  %l23 = alloca i32
  %l26 = alloca i64
  %l31 = alloca ptr
  %l35 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca i32
  %l44 = alloca i32
  %l45 = alloca i32
  %l49 = alloca { i64, ptr }
  %l54 = alloca i1
  %l65 = alloca i32
  %l81 = alloca ptr
  %l84 = alloca i32
  %l85 = alloca i32
  %l96 = alloca ptr
  %rv = alloca ptr
  %t75 = alloca { i64, [5 x i64] }, align 8
  %t128 = alloca { i64, [4 x i64] }, align 8
  %t140 = alloca { i64, [4 x i64] }, align 8
  %t153 = alloca { i64, [5 x i64] }, align 8
  %t192 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l13, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t7)
  store i32 %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = load i32, ptr %l16, !tbaa !23
  %t13 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t13, ptr %l17
  br label %bb2
bb2:
  %t14 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t15 = load i64, ptr %l17, !tbaa !24
  %t17 = and i64 %t15, %t14
  store i64 %t17, ptr %l5, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l23
  br label %bb3
bb3:
  %t27 = load i32, ptr %l23, !tbaa !23
  store i32 %t27, ptr %l6, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 36
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l26
  br label %bb4
bb4:
  %t33 = load i64, ptr %l26, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 36
  %t37 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 36
  store ptr %t42, ptr %l31, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l1
  %t45 = load i32, ptr %l3, !tbaa !23
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t43, %"compiler/source:Span" %t44, i32 %t45, i64 0)
  store ptr %t49, ptr %l35
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l31, !tbaa !29
  %t51 = load ptr, ptr %l35, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t50, ptr %t51)
  br label %bb7
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l6, !tbaa !23
  %t59 = load i64, ptr %l5, !tbaa !24
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t57, i32 %t58, i64 %t59)
  store i32 %t63, ptr %l41
  br label %bb8
bb8:
  %t64 = load i32, ptr %l41, !tbaa !23
  %t65 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t65, ptr %l42
  store i32 %t64, ptr %l43, !tbaa !23
  store i32 43, ptr %l44
  store i32 %a4, ptr %l45
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 36
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t70, i64 %t71)
  store { i64, ptr } %t74, ptr %l49
  br label %bb9
bb9:
  store { i64, [5 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 0
  store i64 9, ptr %t76
  %t77 = load %"compiler/source:Span", ptr %l42
  %t78 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t77, 0
  %t79 = load i32, ptr %l43, !tbaa !23
  %t80 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t78, i32 %t79, 1
  %t81 = load i32, ptr %l44, !range !{i32 0, i32 52}
  %t82 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t80, i32 %t81, 2
  %t83 = load i32, ptr %l45, !range !{i32 0, i32 3}
  %t84 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t82, i32 %t83, 3
  %t85 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t86 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t84, { i64, ptr } %t85, 4
  %t87 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t86, ptr %t87
  %t88 = load { i64, [5 x i64] }, ptr %t75
  %t90 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t88, ptr %t90
  store ptr %t90, ptr %l9, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCopies(ptr %v0, ptr %t92, i32 %t93)
  store i1 %t96, ptr %l54
  br label %bb10
bb10:
  %t97 = load i1, ptr %l54, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb11, label %bb12
bb11:
  %t100 = load ptr, ptr %l9, !tbaa !29
  store ptr %t100, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t102 = load i32, ptr %l6, !tbaa !23
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = icmp ne i32 %t102, %t103
  br i1 %t106, label %bb14, label %bb15
bb14:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l3, !tbaa !23
  %t115 = load i64, ptr %l5, !tbaa !24
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t113, i32 %t114, i64 %t115)
  store i32 %t119, ptr %l65
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t120 = load i32, ptr %l65, !tbaa !23
  %t121 = load %"compiler/source:Span", ptr %l1
  %t123 = load %"compiler/source:Span", ptr %l1
  %t124 = load i32, ptr %l3, !tbaa !23
  %t125 = load %"compiler/source:Span", ptr %l1
  %t126 = load i32, ptr %l6, !tbaa !23
  %t127 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t128
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 0
  store i64 2, ptr %t129
  %t131 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t125, 0
  %t133 = insertvalue { %"compiler/source:Span", i32, ptr } %t131, i32 %t126, 1
  %t135 = insertvalue { %"compiler/source:Span", i32, ptr } %t133, ptr %t127, 2
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t135, ptr %t136
  %t137 = load { i64, [4 x i64] }, ptr %t128
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t137, ptr %t139
  store { i64, [4 x i64] } zeroinitializer, ptr %t140
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 0
  store i64 3, ptr %t141
  %t143 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t123, 0
  %t145 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t143, i32 %t124, 1
  %t147 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t145, ptr %t139, 2
  %t148 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t147, i64 0, 3
  %t149 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t148, ptr %t149
  %t150 = load { i64, [4 x i64] }, ptr %t140
  %t152 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t150, ptr %t152
  store { i64, [5 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t153, i32 0, i32 0
  store i64 3, ptr %t154
  %t156 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t121, 0
  %t158 = insertvalue { %"compiler/source:Span", i32, ptr } %t156, i32 %t120, 1
  %t160 = insertvalue { %"compiler/source:Span", i32, ptr } %t158, ptr %t152, 2
  %t161 = getelementptr { i64, [5 x i64] }, ptr %t153, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t160, ptr %t161
  %t162 = load { i64, [5 x i64] }, ptr %t153
  %t164 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t162, ptr %t164
  store ptr %t164, ptr %rv
  br label %ret
bb17:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  store ptr %t171, ptr %l81, !tbaa !29
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l3, !tbaa !23
  %t176 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l84
  br label %bb18
bb18:
  %t177 = load ptr, ptr %l81, !tbaa !29
  %t178 = load i32, ptr %l84, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t179, ptr %l85
  br label %bb19
bb19:
  %t180 = load i32, ptr %l85, !range !{i32 0, i32 33}
  %t182 = trunc i64 19 to i32
  %t183 = icmp eq i32 %t180, %t182
  br i1 %t183, label %bb20, label %bb21
bb20:
  %t185 = load ptr, ptr %l9, !tbaa !29
  store ptr %t185, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t189 = load %"compiler/source:Span", ptr %l1
  %t190 = load i32, ptr %l3, !tbaa !23
  %t191 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 0
  store i64 2, ptr %t193
  %t195 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t189, 0
  %t197 = insertvalue { %"compiler/source:Span", i32, ptr } %t195, i32 %t190, 1
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } %t197, ptr %t191, 2
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t199, ptr %t200
  %t201 = load { i64, [4 x i64] }, ptr %t192
  %t203 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t201, ptr %t203
  %t207 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t187, %"compiler/source:Span" %t188, ptr %t203)
  store ptr %t207, ptr %l96
  br label %bb23
bb23:
  %t208 = load ptr, ptr %l96, !tbaa !29
  store ptr %t208, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca { i64, [2 x i64] }
  %l23 = alloca i32
  %l26 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i64
  %l39 = alloca %"compiler/generic:Context"
  %l41 = alloca %"compiler/generic:Context"
  %l44 = alloca ptr
  %l47 = alloca i32
  %l50 = alloca i64
  %l53 = alloca i64
  %l61 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l69 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca i32
  %l78 = alloca ptr
  %l82 = alloca { i64, ptr }
  %l86 = alloca i32
  %l87 = alloca %"compiler/typed:Call"
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l104 = alloca { i64, ptr }
  %l105 = alloca %"compiler/typed:Block"
  %rv = alloca i64
  %t5 = alloca { i64, [2 x i64] }, align 8
  %t55 = alloca %"compiler/generic:Context", align 8
  %t218 = alloca { i64, [3 x i64] }, align 8
  %t245 = alloca { i64, [5 x i64] }, align 8
  %t264 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 7, ptr %t6
  %t8 = insertvalue { i64, i32 } undef, i64 %t2, 0
  %t10 = insertvalue { i64, i32 } %t8, i32 %t4, 1
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i64, i32 } %t10, ptr %t11
  %t12 = load { i64, [2 x i64] }, ptr %t5
  store { i64, [2 x i64] } %t12, ptr %l18
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t18, i32 0, i32 %t19, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t22, ptr %l23
  br label %bb1
bb1:
  %t23 = load i64, ptr %l1, !tbaa !24
  %t24 = load %"compiler/source:Span", ptr %l2
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load { i64, [2 x i64] }, ptr %l18
  %t27 = load i32, ptr %l23, !tbaa !23
  %t30 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t25, { i64, [2 x i64] } %t26, i32 %t27, i64 %t23, %"compiler/source:Span" %t24)
  store i64 %t30, ptr %l26
  br label %bb2
bb2:
  %t31 = load i64, ptr %l26, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 19
  %t35 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t34, i64 %t35, i64 1)
  br label %bb3
bb3:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l1, !tbaa !24
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t46 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t38, i64 %t39, i64 %t40, i32 %t41, i32 0)
  store ptr %t46, ptr %l34
  br label %bb4
bb4:
  %t47 = load ptr, ptr %l34, !tbaa !29
  store ptr %t47, ptr %l35, !tbaa !29
  %t49 = ptrtoint ptr %v0 to i64
  store i64 %t49, ptr %l36, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t50, label %bb5, label %bb6
bb5:
  %t52 = call ptr @__olang_region_make(ptr %v0)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l36, !tbaa !24
  br label %bb6
bb6:
  %t54 = load i64, ptr %l1, !tbaa !24
  %t56 = load i64, ptr %l36
  %t57 = inttoptr i64 %t56 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t55, ptr %t57, i64 %t54, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l39, ptr %t55, i64 160, i1 false)
  br label %bb7
bb7:
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t59, label %bb8, label %bb9
bb8:
  %t61 = load i64, ptr %l36
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = getelementptr %"compiler/generic:Context", ptr %l39, i32 0, i32 3
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 2
  %t65 = load { i64, ptr }, ptr %t64
  %t66 = extractvalue { i64, ptr } %t65, 1
  %t67 = call ptr @__olang_region_or(ptr %t66, ptr null)
  %t68 = icmp ne ptr %t67, null
  %t69 = select i1 %t68, ptr %t67, ptr null
  %t70 = getelementptr %"compiler/generic:Context", ptr %l39, i32 0, i32 3
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t70, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr %t69
  %t77 = getelementptr %"compiler/generic:Context", ptr %l39, i32 0, i32 3
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t77, i32 0, i32 0
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = icmp ne ptr %t81, null
  %t83 = select i1 %t82, ptr %t81, ptr %t76
  %t84 = getelementptr %"compiler/generic:Context", ptr %l39, i32 0, i32 2
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t84, i32 0, i32 2
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr %t83
  %t91 = getelementptr %"compiler/generic:Context", ptr %l39, i32 0, i32 2
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 1
  %t93 = load { i64, ptr }, ptr %t92
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = call ptr @__olang_region_or(ptr %t94, ptr null)
  %t96 = icmp ne ptr %t95, null
  %t97 = select i1 %t96, ptr %t95, ptr %t90
  %t98 = getelementptr %"compiler/generic:Context", ptr %l39, i32 0, i32 2
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = icmp ne ptr %t102, null
  %t104 = select i1 %t103, ptr %t102, ptr %t97
  %t105 = icmp eq ptr %t104, %t62
  call void @__olang_region_settle(ptr %t62, i1 %t105)
  br label %bb9
bb9:
  %t106 = load ptr, ptr %l35, !tbaa !29
  %t107 = getelementptr %"compiler/check:frame", ptr %t106, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l41, ptr %t107, i64 160, i1 false)
  %t108 = load ptr, ptr %l35, !tbaa !29
  %t109 = getelementptr %"compiler/check:frame", ptr %t108, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t109, ptr %l39, i64 160, i1 false)
  %t110 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t110, label %bb10, label %bb11
bb10:
  %t112 = getelementptr %"compiler/generic:Context", ptr %l41, i32 0, i32 3
  %t113 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr null
  %t119 = getelementptr %"compiler/generic:Context", ptr %l41, i32 0, i32 3
  %t120 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t119, i32 0, i32 1
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr %t118
  %t126 = getelementptr %"compiler/generic:Context", ptr %l41, i32 0, i32 3
  %t127 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t126, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr %t125
  %t133 = getelementptr %"compiler/generic:Context", ptr %l41, i32 0, i32 2
  %t134 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t133, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = icmp ne ptr %t137, null
  %t139 = select i1 %t138, ptr %t137, ptr %t132
  %t140 = getelementptr %"compiler/generic:Context", ptr %l41, i32 0, i32 2
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t140, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr %t139
  %t147 = getelementptr %"compiler/generic:Context", ptr %l41, i32 0, i32 2
  %t148 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t147, i32 0, i32 0
  %t149 = load { i64, ptr }, ptr %t148
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = call ptr @__olang_region_or(ptr %t150, ptr null)
  %t152 = icmp ne ptr %t151, null
  %t153 = select i1 %t152, ptr %t151, ptr %t146
  call void @__olang_region_drop(ptr %t153)
  store %"compiler/generic:Context" zeroinitializer, ptr %l41
  br label %bb11
bb11:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t154)
  store ptr %t156, ptr %l44
  br label %bb12
bb12:
  %t157 = load %"compiler/source:Span", ptr %l2
  %t158 = load ptr, ptr %l44, !tbaa !29
  %t161 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t158, i32 -1, i32 0, %"compiler/source:Span" %t157)
  store i32 %t161, ptr %l47
  br label %bb13
bb13:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 37
  %t166 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t164)
  store i64 %t166, ptr %l50
  br label %bb14
bb14:
  %t167 = load i64, ptr %l50, !tbaa !24
  store i64 %t167, ptr %l8, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 36
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l53
  br label %bb15
bb15:
  %t173 = load i64, ptr %l53, !tbaa !24
  store i64 %t173, ptr %l9, !tbaa !24
  store { i64, ptr } %a5, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t176 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t176, 0
  store i64 %t178, ptr %l12, !tbaa !24
  br label %bb16
bb16:
  %t180 = load i64, ptr %l11, !tbaa !24
  %t181 = load i64, ptr %l12, !tbaa !24
  %t184 = icmp slt i64 %t180, %t181
  %t186 = xor i1 %t184, true
  br i1 %t186, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t188 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t188, ptr %l61, !tbaa !27
  %t189 = load i64, ptr %l11, !tbaa !24
  %t191 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr ptr, ptr %t192, i64 %t189
  %t194 = load ptr, ptr %t193, !tbaa !39
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/check:Checker", ptr %t196, i32 0, i32 36
  store ptr %t198, ptr %l65, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t205 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t199, ptr %t194, i64 %a3)
  store ptr %t205, ptr %l69
  br label %bb20
bb20:
  %t206 = load ptr, ptr %l65, !tbaa !29
  %t207 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t206, ptr %t207)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t208 = load i64, ptr %l11, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l11, !tbaa !24
  br label %bb16
bb23:
  %t212 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t212, ptr %l72
  %t213 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t213, ptr %l73, !tbaa !23
  %t216 = trunc i64 %a4 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t218
  %t219 = getelementptr { i64, [3 x i64] }, ptr %t218, i32 0, i32 0
  store i64 0, ptr %t219
  %t221 = insertvalue { i32 } undef, i32 %t216, 0
  %t222 = getelementptr { i64, [3 x i64] }, ptr %t218, i32 0, i32 1
  store { i32 } %t221, ptr %t222
  %t223 = load { i64, [3 x i64] }, ptr %t218
  %t225 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t223, ptr %t225
  store ptr %t225, ptr %l78, !tbaa !29
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/check:Checker", ptr %t226, i32 0, i32 36
  %t229 = load i64, ptr %l9, !tbaa !24
  %t232 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t228, i64 %t229)
  store { i64, ptr } %t232, ptr %l82
  br label %bb24
bb24:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load %"compiler/source:Span", ptr %l2
  %t238 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t233, i32 0, %"compiler/source:Span" %t234)
  store i32 %t238, ptr %l86
  br label %bb25
bb25:
  %t239 = load ptr, ptr %l78, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t241 = load i32, ptr %l86, !tbaa !23
  %t242 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t239, { i64, ptr } %t240, i32 %t241, i1 false, i1 false)
  store %"compiler/typed:Call" %t242, ptr %l87
  br label %bb26
bb26:
  %t243 = load %"compiler/typed:Call", ptr %l87
  %t244 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Call" %t243, ptr %t244
  store { i64, [5 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [5 x i64] }, ptr %t245, i32 0, i32 0
  store i64 6, ptr %t246
  %t247 = load %"compiler/source:Span", ptr %l72
  %t248 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t247, 0
  %t249 = load i32, ptr %l73, !tbaa !23
  %t250 = insertvalue { %"compiler/source:Span", i32, ptr } %t248, i32 %t249, 1
  %t252 = insertvalue { %"compiler/source:Span", i32, ptr } %t250, ptr %t244, 2
  %t253 = getelementptr { i64, [5 x i64] }, ptr %t245, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t252, ptr %t253
  %t254 = load { i64, [5 x i64] }, ptr %t245
  %t256 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t254, ptr %t256
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/check:Checker", ptr %t258, i32 0, i32 37
  %t261 = load %"compiler/source:Span", ptr %l2
  store { i64, [3 x i64] } zeroinitializer, ptr %t264
  %t265 = getelementptr { i64, [3 x i64] }, ptr %t264, i32 0, i32 0
  store i64 6, ptr %t265
  %t267 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t261, 0
  %t269 = insertvalue { %"compiler/source:Span", ptr } %t267, ptr %t256, 1
  %t270 = getelementptr { i64, [3 x i64] }, ptr %t264, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t269, ptr %t270
  %t271 = load { i64, [3 x i64] }, ptr %t264
  %t273 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t271, ptr %t273
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t260, ptr %t273)
  br label %bb27
bb27:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t276)
  store ptr %t278, ptr %l99
  br label %bb28
bb28:
  %t279 = load ptr, ptr %l99, !tbaa !29
  store ptr %t279, ptr %l100, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/check:Checker", ptr %t280, i32 0, i32 37
  %t283 = load i64, ptr %l8, !tbaa !24
  %t286 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t282, i64 %t283)
  store { i64, ptr } %t286, ptr %l104
  br label %bb29
bb29:
  %t287 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t288 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t287)
  store %"compiler/typed:Block" %t288, ptr %l105
  br label %bb30
bb30:
  %t289 = load %"compiler/typed:Block", ptr %l105
  %t290 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t289, ptr %t290
  %t292 = load ptr, ptr %l100, !tbaa !29
  %t293 = getelementptr %"compiler/typed:Body", ptr %t292, i32 0, i32 11
  store ptr %t290, ptr %t293, !tbaa !29
  %t294 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t294)
  br label %bb31
bb31:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/check:Checker", ptr %t296, i32 0, i32 19
  %t299 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t298, i64 %t299, i64 2)
  br label %bb32
bb32:
  %t302 = load i64, ptr %l6, !tbaa !24
  store i64 %t302, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i1
  %l21 = alloca i64
  %l23 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l42 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i1
  %l48 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca %"compiler/source:Span"
  %l60 = alloca { i64, ptr }
  %l62 = alloca %"compiler/diagmsg:Msg"
  %l63 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l71 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca { i64, [2 x i64] }
  %l86 = alloca i32
  %l89 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca ptr
  %l99 = alloca i64
  %l102 = alloca %"compiler/generic:Context"
  %l104 = alloca %"compiler/generic:Context"
  %l106 = alloca %"compiler/generic:Context"
  %l109 = alloca ptr
  %l112 = alloca i32
  %l115 = alloca i64
  %l119 = alloca ptr
  %l124 = alloca ptr
  %l128 = alloca ptr
  %l134 = alloca ptr
  %l143 = alloca ptr
  %l144 = alloca ptr
  %l148 = alloca { i64, ptr }
  %l149 = alloca %"compiler/typed:Block"
  %l157 = alloca i64
  %l160 = alloca i1
  %l163 = alloca i64
  %l174 = alloca ptr
  %l177 = alloca ptr
  %l178 = alloca i32
  %l179 = alloca i64
  %l180 = alloca %"compiler/source:Span"
  %l181 = alloca i32
  %l182 = alloca i64
  %l190 = alloca { i64, [3 x i64] }
  %l191 = alloca %"compiler/check:ValueAsk"
  %s0 = alloca %olang.scope
  %t139 = alloca { i64, [2 x i64] }, align 8
  %t190 = alloca %"compiler/generic:Context", align 8
  %t344 = alloca { i64, [3 x i64] }, align 8
  %t442 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 133
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 16
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l21
  br label %bb3
bb3:
  %t11 = load i64, ptr %l21, !tbaa !24
  %t12 = icmp eq i64 %t11, 0
  store i1 %t12, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l18, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb7
bb6:
  %t15 = load i32, ptr %l3, !tbaa !23
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t19 = icmp eq i32 %t15, %t16
  store i1 %t19, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l23, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 3}
  %t24 = trunc i64 0 to i32
  %t25 = icmp eq i32 %t22, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t33, ptr %l33
  br label %bb13
bb12:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  %t34 = load i1, ptr %l33, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t37 = load i1, ptr %l30, !tbaa !21
  br i1 %t37, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/load:Loader", ptr %t44, i32 0, i32 4
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l5, !tbaa !29
  %t49 = load i32, ptr %l1, !range !{i32 0, i32 3}
  %t51 = trunc i64 0 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l3, !tbaa !23
  %t60 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l45
  br label %bb20
bb19:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb21
bb20:
  %t61 = load i1, ptr %l45, !tbaa !21
  store i1 %t61, ptr %l42, !tbaa !21
  br label %bb21
bb21:
  %t62 = load i1, ptr %l42, !tbaa !21
  br i1 %t62, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l48, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l3, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l53
  br label %bb24
bb23:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb26
bb24:
  %t77 = load ptr, ptr %l48, !tbaa !29
  %t78 = load i32, ptr %l53, !tbaa !23
  %t79 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %t77, i32 %t78)
  store i64 %t79, ptr %l54
  br label %bb25
bb25:
  %t80 = load i64, ptr %l54, !tbaa !24
  %t81 = icmp sgt i64 %t80, 0
  store i1 %t81, ptr %l46, !tbaa !21
  br label %bb26
bb26:
  %t83 = load i1, ptr %l46, !tbaa !21
  br i1 %t83, label %bb27, label %bb28
bb27:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l56, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t85, ptr %l57
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l3, !tbaa !23
  %t90 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t86, i32 %t87)
  store { i64, ptr } %t90, ptr %l60
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t91 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t97, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t99, ptr %l62
  br label %bb30
bb30:
  %t100 = load ptr, ptr %l56, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l57
  %t102 = load %"compiler/diagmsg:Msg", ptr %l62
  %t103 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t100, %"compiler/source:Span" %t101, %"compiler/diagmsg:Msg" %t102)
  store i64 %t103, ptr %l63
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb32:
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t104)
  store i64 %t106, ptr %l65
  br label %bb33
bb33:
  %t107 = load i64, ptr %l65, !tbaa !24
  store i64 %t107, ptr %l6, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 15
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t110)
  store i64 %t112, ptr %l68
  br label %bb34
bb34:
  %t113 = load i64, ptr %l68, !tbaa !24
  store i64 %t113, ptr %l7, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 133
  store i1 true, ptr %t116, !tbaa !21
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t117)
  store ptr %t119, ptr %l71
  br label %bb35
bb35:
  %t120 = load ptr, ptr %l71, !tbaa !29
  store ptr %t120, ptr %l8, !tbaa !29
  %t121 = load ptr, ptr %l8, !tbaa !29
  %t123 = getelementptr %"compiler/check:frame", ptr %t121, i32 0, i32 1
  %t124 = load i64, ptr %t123, !tbaa !24
  store i64 %t124, ptr %l9, !tbaa !24
  %t126 = load ptr, ptr %l8, !tbaa !29
  %t128 = getelementptr %"compiler/check:frame", ptr %t126, i32 0, i32 2
  %t129 = load i64, ptr %t128, !tbaa !24
  store i64 %t129, ptr %l10, !tbaa !24
  %t131 = load ptr, ptr %l8, !tbaa !29
  %t133 = getelementptr %"compiler/check:frame", ptr %t131, i32 0, i32 4
  store ptr %t133, ptr %l11, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l78, !tbaa !29
  %t136 = load i64, ptr %l9, !tbaa !24
  %t137 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t138 = load i32, ptr %t137, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [2 x i64] }, ptr %t139, i32 0, i32 0
  store i64 7, ptr %t140
  %t142 = insertvalue { i64, i32 } undef, i64 %t136, 0
  %t144 = insertvalue { i64, i32 } %t142, i32 %t138, 1
  %t145 = getelementptr { i64, [2 x i64] }, ptr %t139, i32 0, i32 1
  store { i64, i32 } %t144, ptr %t145
  %t146 = load { i64, [2 x i64] }, ptr %t139
  store { i64, [2 x i64] } %t146, ptr %l81
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 2
  %t153 = load i32, ptr %l3, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t152, i32 0, i32 %t153, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t156, ptr %l86
  br label %bb36
bb36:
  %t157 = load i64, ptr %l9, !tbaa !24
  %t158 = load %"compiler/source:Span", ptr %l2
  %t159 = load ptr, ptr %l78, !tbaa !29
  %t160 = load { i64, [2 x i64] }, ptr %l81
  %t161 = load i32, ptr %l86, !tbaa !23
  %t164 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t159, { i64, [2 x i64] } %t160, i32 %t161, i64 %t157, %"compiler/source:Span" %t158)
  store i64 %t164, ptr %l89
  br label %bb37
bb37:
  %t165 = load i64, ptr %l89, !tbaa !24
  store i64 %t165, ptr %l12, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 19
  %t169 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t168, i64 %t169, i64 1)
  br label %bb38
bb38:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i64, ptr %l12, !tbaa !24
  %t174 = load i64, ptr %l9, !tbaa !24
  %t175 = load i32, ptr %l3, !tbaa !23
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t172, i64 %t173, i64 %t174, i32 %t175, i32 0)
  store ptr %t180, ptr %l97
  br label %bb39
bb39:
  %t181 = load ptr, ptr %l97, !tbaa !29
  store ptr %t181, ptr %l98, !tbaa !29
  %t183 = ptrtoint ptr %v0 to i64
  store i64 %t183, ptr %l99, !tbaa !24
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t184, label %bb40, label %bb41
bb40:
  %t186 = call ptr @__olang_region_make(ptr %v0)
  %t187 = ptrtoint ptr %t186 to i64
  store i64 %t187, ptr %l99, !tbaa !24
  br label %bb41
bb41:
  %t188 = load ptr, ptr %l11, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t188, i64 160, i1 false)
  %t191 = load i64, ptr %l99
  %t192 = inttoptr i64 %t191 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t190, ptr %t192, ptr %l102)
  call void @llvm.memmove.p0.p0.i64(ptr %l104, ptr %t190, i64 160, i1 false)
  br label %bb42
bb42:
  %t194 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t194, label %bb43, label %bb44
bb43:
  %t196 = load i64, ptr %l99
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t199 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t198, i32 0, i32 2
  %t200 = load { i64, ptr }, ptr %t199
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr null
  %t205 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t206 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t205, i32 0, i32 1
  %t207 = load { i64, ptr }, ptr %t206
  %t208 = extractvalue { i64, ptr } %t207, 1
  %t209 = call ptr @__olang_region_or(ptr %t208, ptr null)
  %t210 = icmp ne ptr %t209, null
  %t211 = select i1 %t210, ptr %t209, ptr %t204
  %t212 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t212, i32 0, i32 0
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = icmp ne ptr %t216, null
  %t218 = select i1 %t217, ptr %t216, ptr %t211
  %t219 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t220 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t219, i32 0, i32 2
  %t221 = load { i64, ptr }, ptr %t220
  %t222 = extractvalue { i64, ptr } %t221, 1
  %t223 = call ptr @__olang_region_or(ptr %t222, ptr null)
  %t224 = icmp ne ptr %t223, null
  %t225 = select i1 %t224, ptr %t223, ptr %t218
  %t226 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t227 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t226, i32 0, i32 1
  %t228 = load { i64, ptr }, ptr %t227
  %t229 = extractvalue { i64, ptr } %t228, 1
  %t230 = call ptr @__olang_region_or(ptr %t229, ptr null)
  %t231 = icmp ne ptr %t230, null
  %t232 = select i1 %t231, ptr %t230, ptr %t225
  %t233 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t234 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t233, i32 0, i32 0
  %t235 = load { i64, ptr }, ptr %t234
  %t236 = extractvalue { i64, ptr } %t235, 1
  %t237 = call ptr @__olang_region_or(ptr %t236, ptr null)
  %t238 = icmp ne ptr %t237, null
  %t239 = select i1 %t238, ptr %t237, ptr %t232
  %t240 = icmp eq ptr %t239, %t197
  call void @__olang_region_settle(ptr %t197, i1 %t240)
  br label %bb44
bb44:
  %t241 = load ptr, ptr %l98, !tbaa !29
  %t242 = getelementptr %"compiler/check:frame", ptr %t241, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l106, ptr %t242, i64 160, i1 false)
  %t243 = load ptr, ptr %l98, !tbaa !29
  %t244 = getelementptr %"compiler/check:frame", ptr %t243, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t244, ptr %l104, i64 160, i1 false)
  %t245 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t245, label %bb45, label %bb46
bb45:
  %t247 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t248 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t247, i32 0, i32 2
  %t249 = load { i64, ptr }, ptr %t248
  %t250 = extractvalue { i64, ptr } %t249, 1
  %t251 = call ptr @__olang_region_or(ptr %t250, ptr null)
  %t252 = icmp ne ptr %t251, null
  %t253 = select i1 %t252, ptr %t251, ptr null
  %t254 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t255 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t254, i32 0, i32 1
  %t256 = load { i64, ptr }, ptr %t255
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = call ptr @__olang_region_or(ptr %t257, ptr null)
  %t259 = icmp ne ptr %t258, null
  %t260 = select i1 %t259, ptr %t258, ptr %t253
  %t261 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t262 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t261, i32 0, i32 0
  %t263 = load { i64, ptr }, ptr %t262
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = call ptr @__olang_region_or(ptr %t264, ptr null)
  %t266 = icmp ne ptr %t265, null
  %t267 = select i1 %t266, ptr %t265, ptr %t260
  %t268 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t269 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t268, i32 0, i32 2
  %t270 = load { i64, ptr }, ptr %t269
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = call ptr @__olang_region_or(ptr %t271, ptr null)
  %t273 = icmp ne ptr %t272, null
  %t274 = select i1 %t273, ptr %t272, ptr %t267
  %t275 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t276 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t275, i32 0, i32 1
  %t277 = load { i64, ptr }, ptr %t276
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = call ptr @__olang_region_or(ptr %t278, ptr null)
  %t280 = icmp ne ptr %t279, null
  %t281 = select i1 %t280, ptr %t279, ptr %t274
  %t282 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t283 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t282, i32 0, i32 0
  %t284 = load { i64, ptr }, ptr %t283
  %t285 = extractvalue { i64, ptr } %t284, 1
  %t286 = call ptr @__olang_region_or(ptr %t285, ptr null)
  %t287 = icmp ne ptr %t286, null
  %t288 = select i1 %t287, ptr %t286, ptr %t281
  call void @__olang_region_drop(ptr %t288)
  store %"compiler/generic:Context" zeroinitializer, ptr %l106
  br label %bb46
bb46:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t289)
  store ptr %t291, ptr %l109
  br label %bb47
bb47:
  %t292 = load %"compiler/source:Span", ptr %l2
  %t293 = load ptr, ptr %l109, !tbaa !29
  %t296 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t293, i32 -1, i32 0, %"compiler/source:Span" %t292)
  store i32 %t296, ptr %l112
  br label %bb48
bb48:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/check:Checker", ptr %t297, i32 0, i32 37
  %t301 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t299)
  store i64 %t301, ptr %l115
  br label %bb49
bb49:
  %t302 = load i64, ptr %l115, !tbaa !24
  store i64 %t302, ptr %l14, !tbaa !24
  %t303 = load ptr, ptr %l4, !tbaa !29
  %t305 = icmp eq ptr %t303, null
  %t307 = xor i1 %t305, true
  br i1 %t307, label %bb50, label %bb51
bb50:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load ptr, ptr %l4, !tbaa !29
  %t312 = load i32, ptr %l3, !tbaa !23
  %t316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitCtor(ptr %v0, ptr %v1, ptr %v0, ptr %t309, ptr %t310, i32 %t312)
  store ptr %t316, ptr %l124
  br label %bb52
bb51:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load %"compiler/source:Span", ptr %l2
  %t319 = load i32, ptr %l3, !tbaa !23
  %t323 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t317, %"compiler/source:Span" %t318, i32 %t319)
  store ptr %t323, ptr %l128
  br label %bb53
bb52:
  %t324 = load ptr, ptr %l124, !tbaa !29
  store ptr %t324, ptr %l119, !tbaa !29
  br label %bb54
bb53:
  %t325 = load ptr, ptr %l128, !tbaa !29
  store ptr %t325, ptr %l119, !tbaa !29
  br label %bb54
bb54:
  %t327 = load ptr, ptr %l119, !tbaa !29
  store ptr %t327, ptr %l15, !tbaa !29
  %t328 = load ptr, ptr %l15, !tbaa !29
  %t330 = icmp eq ptr %t328, null
  br i1 %t330, label %bb55, label %bb56
bb55:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load %"compiler/source:Span", ptr %l2
  %t336 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v0, ptr %t332, %"compiler/source:Span" %t333)
  store ptr %t336, ptr %l134
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t337 = load ptr, ptr %l134, !tbaa !29
  store ptr %t337, ptr %l15, !tbaa !29
  br label %bb58
bb58:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/check:Checker", ptr %t339, i32 0, i32 37
  %t342 = load %"compiler/source:Span", ptr %l2
  %t343 = load ptr, ptr %l15, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t344
  %t345 = getelementptr { i64, [3 x i64] }, ptr %t344, i32 0, i32 0
  store i64 6, ptr %t345
  %t347 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t342, 0
  %t349 = insertvalue { %"compiler/source:Span", ptr } %t347, ptr %t343, 1
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t344, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t349, ptr %t350
  %t351 = load { i64, [3 x i64] }, ptr %t344
  %t353 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t351, ptr %t353
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t341, ptr %t353)
  br label %bb59
bb59:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t356)
  store ptr %t358, ptr %l143
  br label %bb60
bb60:
  %t359 = load ptr, ptr %l143, !tbaa !29
  store ptr %t359, ptr %l144, !tbaa !29
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 37
  %t363 = load i64, ptr %l14, !tbaa !24
  %t366 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t362, i64 %t363)
  store { i64, ptr } %t366, ptr %l148
  br label %bb61
bb61:
  %t367 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t368 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t367)
  store %"compiler/typed:Block" %t368, ptr %l149
  br label %bb62
bb62:
  %t369 = load %"compiler/typed:Block", ptr %l149
  %t370 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t369, ptr %t370
  %t372 = load ptr, ptr %l144, !tbaa !29
  %t373 = getelementptr %"compiler/typed:Body", ptr %t372, i32 0, i32 11
  store ptr %t370, ptr %t373, !tbaa !29
  %t374 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t374)
  br label %bb63
bb63:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/check:Checker", ptr %t376, i32 0, i32 19
  %t379 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t378, i64 %t379, i64 2)
  br label %bb64
bb64:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/check:Checker", ptr %t382, i32 0, i32 133
  store i1 false, ptr %t384, !tbaa !21
  %t385 = load ptr, ptr %l5, !tbaa !29
  %t387 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t385)
  store i64 %t387, ptr %l157
  br label %bb65
bb65:
  %t388 = load i64, ptr %l6, !tbaa !24
  %t389 = load i64, ptr %l157, !tbaa !24
  %t391 = icmp sgt i64 %t389, %t388
  br i1 %t391, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l160, !tbaa !21
  br label %bb69
bb67:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/check:Checker", ptr %t393, i32 0, i32 15
  %t397 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t395)
  store i64 %t397, ptr %l163
  br label %bb68
bb68:
  %t398 = load i64, ptr %l7, !tbaa !24
  %t399 = load i64, ptr %l163, !tbaa !24
  %t401 = icmp sgt i64 %t399, %t398
  store i1 %t401, ptr %l160, !tbaa !21
  br label %bb69
bb69:
  %t403 = load i1, ptr %l160, !tbaa !21
  br i1 %t403, label %bb70, label %bb71
bb70:
  %t404 = load ptr, ptr %l5, !tbaa !29
  %t405 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t404, i64 %t405)
  br label %bb72
bb71:
  br label %bb75
bb72:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/check:Checker", ptr %t408, i32 0, i32 15
  %t411 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t410, i64 %t411)
  br label %bb73
bb73:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/check:Checker", ptr %t414, i32 0, i32 14
  %t417 = load i64, ptr %l12, !tbaa !24
  %t420 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t416, i64 %t417)
  store ptr %t420, ptr %l174
  br label %bb74
bb74:
  %t421 = load ptr, ptr %l174, !tbaa !29
  %t423 = getelementptr %"compiler/typed:Body", ptr %t421, i32 0, i32 11
  store ptr null, ptr %t423, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb75:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr %"compiler/check:Checker", ptr %t424, i32 0, i32 111
  store ptr %t426, ptr %l177, !tbaa !29
  %t427 = load i32, ptr %l1, !range !{i32 0, i32 3}
  store i32 %t427, ptr %l178
  %t428 = load i64, ptr %l10, !tbaa !24
  store i64 %t428, ptr %l179, !tbaa !24
  %t429 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t429, ptr %l180
  %t430 = load i32, ptr %l3, !tbaa !23
  store i32 %t430, ptr %l181, !tbaa !23
  %t431 = load i64, ptr %l12, !tbaa !24
  store i64 %t431, ptr %l182, !tbaa !24
  %t432 = load ptr, ptr %l5, !tbaa !29
  %t433 = load i64, ptr %l10, !tbaa !24
  %t434 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t435 = load i32, ptr %t434, !tbaa !23
  %t437 = sext i32 %t435 to i64
  %t438 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t439 = load i32, ptr %t438, !tbaa !23
  %t441 = sext i32 %t439 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t442
  %t443 = getelementptr { i64, [3 x i64] }, ptr %t442, i32 0, i32 0
  store i64 3, ptr %t443
  %t445 = insertvalue { i64, i64, i64 } undef, i64 %t433, 0
  %t447 = insertvalue { i64, i64, i64 } %t445, i64 %t437, 1
  %t449 = insertvalue { i64, i64, i64 } %t447, i64 %t441, 2
  %t450 = getelementptr { i64, [3 x i64] }, ptr %t442, i32 0, i32 1
  store { i64, i64, i64 } %t449, ptr %t450
  %t451 = load { i64, [3 x i64] }, ptr %t442
  %t454 = call { i64, [3 x i64] } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUseOf(ptr %v0, ptr %t432, { i64, [3 x i64] } %t451)
  store { i64, [3 x i64] } %t454, ptr %l190
  br label %bb76
bb76:
  %t455 = load i32, ptr %l178, !range !{i32 0, i32 3}
  %t456 = load i64, ptr %l179, !tbaa !24
  %t457 = load %"compiler/source:Span", ptr %l180
  %t458 = load i32, ptr %l181, !tbaa !23
  %t459 = load i64, ptr %l182, !tbaa !24
  %t460 = load { i64, [3 x i64] }, ptr %l190
  %t461 = call %"compiler/check:ValueAsk" @compiler_2fcheck_3aValueAsk_2ector(ptr %s0, i32 %t455, i64 %t456, %"compiler/source:Span" %t457, i32 %t458, i64 %t459, { i64, [3 x i64] } %t460)
  store %"compiler/check:ValueAsk" %t461, ptr %l191
  br label %bb77
bb77:
  %t462 = load ptr, ptr %l177, !tbaa !29
  %t463 = load %"compiler/check:ValueAsk", ptr %l191
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2ePush_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t462, %"compiler/check:ValueAsk" %t463)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i1
  %l15 = alloca i32
  %l16 = alloca i1
  %l21 = alloca ptr
  %l26 = alloca i32
  %l29 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l45 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l56 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca { i64, ptr }
  %l77 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l6, !tbaa !21
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
  store i32 %t22, ptr %l15
  br label %bb7
bb7:
  %t23 = load i32, ptr %l15, !range !{i32 0, i32 33}
  store i32 %t23, ptr %l3
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t26 = trunc i64 21 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb48
bb11:
  %t29 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t31 = trunc i64 19 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l26
  br label %bb15
bb15:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = add i64 %t45, 1
  %t48 = load ptr, ptr %l21, !tbaa !29
  %t49 = load i32, ptr %l26, !tbaa !23
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsFn(ptr %v0, ptr %t48, i32 %t49, i64 %t47)
  store i1 %t51, ptr %l29
  br label %bb16
bb16:
  %t52 = load i1, ptr %l29, !tbaa !21
  store i1 %t52, ptr %l16, !tbaa !21
  br label %bb48
bb17:
  %t53 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t55 = trunc i64 22 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  %t58 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t60 = trunc i64 23 to i32
  %t61 = icmp eq i32 %t58, %t60
  br i1 %t61, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l34, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l37, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l42
  br label %bb23
bb23:
  %t80 = load ptr, ptr %l37, !tbaa !29
  %t81 = load i32, ptr %l42, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t80, i32 %t81)
  store { i64, ptr } %t82, ptr %l43
  br label %bb24
bb24:
  %t83 = load i64, ptr %l2, !tbaa !24
  %t84 = load ptr, ptr %l34, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t87 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsAny(ptr %v0, ptr %v0, ptr %t84, { i64, ptr } %t85, i64 %t83)
  store i1 %t87, ptr %l45
  br label %bb25
bb25:
  %t88 = load i1, ptr %l45, !tbaa !21
  store i1 %t88, ptr %l16, !tbaa !21
  br label %bb48
bb26:
  %t89 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t91 = trunc i64 18 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb43
bb29:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load i32, ptr %l1, !tbaa !23
  %t101 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l51
  br label %bb30
bb30:
  %t102 = load i1, ptr %l51, !tbaa !21
  br i1 %t102, label %bb31, label %bb32
bb31:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l53, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  store ptr %t109, ptr %l56, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l1, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l61
  br label %bb33
bb32:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb42
bb33:
  %t120 = load ptr, ptr %l56, !tbaa !29
  %t121 = load i32, ptr %l61, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t120, i32 %t121)
  store { i64, ptr } %t122, ptr %l62
  br label %bb34
bb34:
  %t123 = load i64, ptr %l2, !tbaa !24
  %t124 = load ptr, ptr %l53, !tbaa !29
  %t125 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsAny(ptr %v0, ptr %v0, ptr %t124, { i64, ptr } %t125, i64 %t123)
  store i1 %t127, ptr %l64
  br label %bb35
bb35:
  %t128 = load i1, ptr %l64, !tbaa !21
  br i1 %t128, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb41
bb37:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l66, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  store ptr %t135, ptr %l69, !tbaa !29
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  %t142 = load i32, ptr %l1, !tbaa !23
  %t145 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t141, i32 %t142)
  store i32 %t145, ptr %l74
  br label %bb38
bb38:
  %t146 = load ptr, ptr %l69, !tbaa !29
  %t147 = load i32, ptr %l74, !tbaa !23
  %t148 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t146, i32 %t147)
  store { i64, ptr } %t148, ptr %l75
  br label %bb39
bb39:
  %t149 = load i64, ptr %l2, !tbaa !24
  %t150 = load ptr, ptr %l66, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t153 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsAny(ptr %v0, ptr %v0, ptr %t150, { i64, ptr } %t151, i64 %t149)
  store i1 %t153, ptr %l77
  br label %bb40
bb40:
  %t154 = load i1, ptr %l77, !tbaa !21
  store i1 %t154, ptr %l65, !tbaa !21
  br label %bb41
bb41:
  %t155 = load i1, ptr %l65, !tbaa !21
  store i1 %t155, ptr %l52, !tbaa !21
  br label %bb42
bb42:
  %t156 = load i1, ptr %l52, !tbaa !21
  store i1 %t156, ptr %l16, !tbaa !21
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_6d92d89bf6179935_a746df8e6ee4ce11)
  unreachable
bb48:
  %t157 = load i1, ptr %l16, !tbaa !21
  store i1 %t157, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i1
  %l43 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l52 = alloca i32
  %l69 = alloca ptr
  %l70 = alloca i32
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca ptr
  %l85 = alloca i64
  %l91 = alloca i1
  %l95 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l125 = alloca i32
  %l126 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l145 = alloca ptr
  %l146 = alloca ptr
  %l151 = alloca i32
  %l160 = alloca ptr
  %l165 = alloca i32
  %l166 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store i1 true, ptr %l24, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l2, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l24, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l24, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l2, !tbaa !23
  %t14 = icmp eq i32 %t12, 0
  store i1 %t14, ptr %l28, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l28, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb10
bb8:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/check:b5aWalk", ptr %t17, i32 0, i32 5
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v1, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l35
  br label %bb9
bb9:
  %t24 = load i1, ptr %l35, !tbaa !21
  store i1 %t24, ptr %l31, !tbaa !21
  br label %bb10
bb10:
  %t25 = load i1, ptr %l31, !tbaa !21
  br i1 %t25, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr %"compiler/check:b5aWalk", ptr %t26, i32 0, i32 5
  %t29 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v1, ptr %t28, i32 %t29, i1 true)
  br label %bb14
bb14:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l43
  br label %bb15
bb15:
  %t42 = load i32, ptr %l43, !range !{i32 0, i32 33}
  store i32 %t42, ptr %l4
  %t43 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t45 = trunc i64 20 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l46, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l47, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l52
  br label %bb19
bb19:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t62 = add i64 %t60, 1
  %t63 = load ptr, ptr %l46, !tbaa !29
  %t64 = load ptr, ptr %l47, !tbaa !29
  %t65 = load i32, ptr %l52, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t63, ptr %t64, i32 %t65, i64 %t62)
  br label %bb20
bb20:
  br label %bb86
bb21:
  %t67 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t69 = trunc i64 18 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb60
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t73 = insertvalue [2 x { i64, ptr }] %t72, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t75 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store [2 x { i64, ptr }] %t73, ptr %t75
  store ptr %t75, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t77 = load ptr, ptr %l5
  store i64 2, ptr %l7, !tbaa !24
  br label %bb25
bb25:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb26, label %bb27
bb26:
  br label %bb37
bb27:
  br label %bb28
bb28:
  %t88 = load ptr, ptr %l5
  %t89 = load i64, ptr %l6, !tbaa !24
  %t92 = getelementptr [2 x { i64, ptr }], ptr %t88, i64 0, i64 %t89
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !37
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  store ptr %t98, ptr %l69, !tbaa !29
  %t99 = load i32, ptr %l2, !tbaa !23
  store i32 %t99, ptr %l70, !tbaa !23
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = getelementptr %"compiler/types:Table", ptr %t105, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l73, !tbaa !29
  %t109 = load ptr, ptr %l73, !tbaa !29
  %t110 = call ptr @__olang_scope_of(ptr %t109, ptr null)
  %t111 = ptrtoint ptr %t110 to i64
  %t113 = inttoptr i64 %t111 to ptr
  %t114 = load ptr, ptr @__olang_prog_scope
  %t115 = load ptr, ptr %l73, !tbaa !29
  %t117 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t113, ptr %t114, ptr %t115, { i64, ptr } %t93)
  store i32 %t117, ptr %l76
  br label %bb29
bb29:
  %t118 = load ptr, ptr %l69, !tbaa !29
  %t119 = load i32, ptr %l70, !tbaa !23
  %t120 = load i32, ptr %l76, !tbaa !23
  %t121 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t118, i32 %t119, i32 %t120)
  store i64 %t121, ptr %l77
  br label %bb30
bb30:
  %t122 = load i64, ptr %l77, !tbaa !24
  store i64 %t122, ptr %l9, !tbaa !24
  %t123 = load i64, ptr %l9, !tbaa !24
  %t125 = icmp sge i64 %t123, 0
  br i1 %t125, label %bb31, label %bb32
bb31:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l80, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l81, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l9, !tbaa !24
  %t131 = load i32, ptr %l2, !tbaa !23
  %t135 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStrBody(ptr %v0, ptr %t129, i64 %t130, i32 %t131)
  store i64 %t135, ptr %l85
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t136 = load ptr, ptr %l80, !tbaa !29
  %t137 = load ptr, ptr %l81, !tbaa !29
  %t138 = load i64, ptr %l85, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %t136, ptr %t137, i64 %t138)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb35:
  br label %bb36
bb36:
  %t139 = load i64, ptr %l6, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l6, !tbaa !24
  br label %bb25
bb37:
  call void @__olang_scope_close(ptr %s4)
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l2, !tbaa !23
  %t150 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l91
  br label %bb38
bb38:
  %t151 = load i1, ptr %l91, !tbaa !21
  %t152 = xor i1 %t151, true
  br i1 %t152, label %bb39, label %bb40
bb39:
  br label %ret
bb40:
  br label %bb41
bb41:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  store ptr %t159, ptr %l95, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  %t166 = load i32, ptr %l2, !tbaa !23
  %t169 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t169, ptr %l100
  br label %bb42
bb42:
  %t170 = load ptr, ptr %l95, !tbaa !29
  %t171 = load i32, ptr %l100, !tbaa !23
  %t172 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t170, i32 %t171)
  store { i64, ptr } %t172, ptr %l101
  br label %bb43
bb43:
  %t173 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t173, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  store i64 %t176, ptr %l12, !tbaa !24
  br label %bb44
bb44:
  %t178 = load i64, ptr %l11, !tbaa !24
  %t179 = load i64, ptr %l12, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb45, label %bb46
bb45:
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t186, ptr %l108, !tbaa !27
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i32, ptr %t190, i64 %t187
  %t192 = load i32, ptr %t191, !tbaa !33
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = load i64, ptr %l3, !tbaa !24
  %t199 = add i64 %t197, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t194, ptr %t195, i32 %t192, i64 %t199)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t204 = load i64, ptr %l11, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l11, !tbaa !24
  br label %bb44
bb50:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = getelementptr %"compiler/generic:Program", ptr %t211, i32 0, i32 2
  store ptr %t213, ptr %l120, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 2
  %t220 = load i32, ptr %l2, !tbaa !23
  %t223 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t219, i32 %t220)
  store i32 %t223, ptr %l125
  br label %bb51
bb51:
  %t224 = load ptr, ptr %l120, !tbaa !29
  %t225 = load i32, ptr %l125, !tbaa !23
  %t226 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t224, i32 %t225)
  store { i64, ptr } %t226, ptr %l126
  br label %bb52
bb52:
  %t227 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t227, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  store i64 %t230, ptr %l16, !tbaa !24
  br label %bb53
bb53:
  %t232 = load i64, ptr %l15, !tbaa !24
  %t233 = load i64, ptr %l16, !tbaa !24
  %t236 = icmp slt i64 %t232, %t233
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb54, label %bb55
bb54:
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t240 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t240, ptr %l133, !tbaa !27
  %t241 = load i64, ptr %l15, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 %t241
  %t246 = load i32, ptr %t245, !tbaa !33
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t251 = load i64, ptr %l3, !tbaa !24
  %t253 = add i64 %t251, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t248, ptr %t249, i32 %t246, i64 %t253)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t258 = load i64, ptr %l15, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l15, !tbaa !24
  br label %bb53
bb59:
  br label %bb86
bb60:
  %t262 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t264 = trunc i64 19 to i32
  %t265 = icmp eq i32 %t262, %t264
  br i1 %t265, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb66
bb63:
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l145, !tbaa !29
  %t268 = load ptr, ptr %l1, !tbaa !29
  store ptr %t268, ptr %l146, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t272, i32 0, i32 2
  %t275 = load i32, ptr %l2, !tbaa !23
  %t278 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t274, i32 %t275)
  store i32 %t278, ptr %l151
  br label %bb64
bb64:
  %t279 = load i64, ptr %l3, !tbaa !24
  %t281 = add i64 %t279, 1
  %t282 = load ptr, ptr %l145, !tbaa !29
  %t283 = load ptr, ptr %l146, !tbaa !29
  %t284 = load i32, ptr %l151, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t282, ptr %t283, i32 %t284, i64 %t281)
  br label %bb65
bb65:
  br label %bb86
bb66:
  %t286 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t288 = trunc i64 22 to i32
  %t289 = icmp eq i32 %t286, %t288
  br i1 %t289, label %bb67, label %bb68
bb67:
  br label %bb71
bb68:
  %t291 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t293 = trunc i64 23 to i32
  %t294 = icmp eq i32 %t291, %t293
  br i1 %t294, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb81
bb71:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/check:Checker", ptr %t296, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = getelementptr %"compiler/generic:Program", ptr %t299, i32 0, i32 2
  store ptr %t301, ptr %l160, !tbaa !29
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/check:Checker", ptr %t302, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !29
  %t307 = getelementptr %"compiler/generic:Program", ptr %t305, i32 0, i32 2
  %t308 = load i32, ptr %l2, !tbaa !23
  %t311 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t307, i32 %t308)
  store i32 %t311, ptr %l165
  br label %bb72
bb72:
  %t312 = load ptr, ptr %l160, !tbaa !29
  %t313 = load i32, ptr %l165, !tbaa !23
  %t314 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t312, i32 %t313)
  store { i64, ptr } %t314, ptr %l166
  br label %bb73
bb73:
  %t315 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t315, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t316 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t316, 0
  store i64 %t318, ptr %l20, !tbaa !24
  br label %bb74
bb74:
  %t320 = load i64, ptr %l19, !tbaa !24
  %t321 = load i64, ptr %l20, !tbaa !24
  %t324 = icmp slt i64 %t320, %t321
  %t326 = xor i1 %t324, true
  br i1 %t326, label %bb75, label %bb76
bb75:
  br label %bb80
bb76:
  br label %bb77
bb77:
  %t328 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t328, ptr %l173, !tbaa !27
  %t329 = load i64, ptr %l19, !tbaa !24
  %t331 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr i32, ptr %t332, i64 %t329
  %t334 = load i32, ptr %t333, !tbaa !33
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load ptr, ptr %l1, !tbaa !29
  %t339 = load i64, ptr %l3, !tbaa !24
  %t341 = add i64 %t339, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t336, ptr %t337, i32 %t334, i64 %t341)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t346 = load i64, ptr %l19, !tbaa !24
  %t348 = add i64 %t346, 1
  store i64 %t348, ptr %l19, !tbaa !24
  br label %bb74
bb80:
  br label %bb86
bb81:
  br i1 true, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_4235fda77c59946a_df60ad3f0caa2a66)
  unreachable
bb86:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadOver(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i32
  %l30 = alloca i1
  %l35 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l10
  br label %bb4
bb4:
  %t14 = load i32, ptr %l10, !range !{i32 0, i32 6}
  %t16 = trunc i64 4 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l7, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l19
  br label %bb9
bb9:
  %t33 = load i32, ptr %l19, !tbaa !23
  store i32 %t33, ptr %l2, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l22
  br label %bb10
bb10:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l26
  br label %bb13
bb12:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb18
bb13:
  %t45 = load i32, ptr %l26, !range !{i32 0, i32 6}
  %t47 = trunc i64 4 to i32
  %t48 = icmp eq i32 %t45, %t47
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb17
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l35
  br label %bb16
bb16:
  %t62 = load i32, ptr %l35, !tbaa !23
  %t63 = icmp ne i32 %t62, 0
  store i1 %t63, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t65 = load i1, ptr %l30, !tbaa !21
  store i1 %t65, ptr %l23, !tbaa !21
  br label %bb18
bb18:
  %t66 = load i1, ptr %l23, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderOwnerOk(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l13 = alloca i64
  %l19 = alloca ptr
  %l26 = alloca i32
  %l32 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %l39 = alloca { i64, ptr }
  %l41 = alloca %"compiler/diagmsg:Msg"
  %l42 = alloca i64
  %l52 = alloca i64
  %l56 = alloca i1
  %l58 = alloca i1
  %l64 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l72 = alloca { i64, ptr }
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %l81 = alloca i32
  %l86 = alloca i1
  %l90 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l98 = alloca i64
  %l100 = alloca %"compiler/diagmsg:Msg"
  %l103 = alloca { i64, ptr }
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l108 = alloca { i64, ptr }
  %l110 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca i64
  %l115 = alloca i32
  %l119 = alloca i1
  %l123 = alloca i1
  %l127 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca %"compiler/source:Span"
  %l135 = alloca { i64, ptr }
  %l137 = alloca %"compiler/diagmsg:Msg"
  %l138 = alloca i64
  %l141 = alloca ptr
  %l146 = alloca i32
  %l147 = alloca i64
  %l151 = alloca i1
  %l153 = alloca i1
  %l159 = alloca ptr
  %l163 = alloca ptr
  %l164 = alloca %"compiler/source:Span"
  %l167 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %l176 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i64, ptr %l13, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 10
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l19
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l19, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 3
  %t26 = load i1, ptr %t25, !tbaa !21
  store i1 %t26, ptr %l5, !tbaa !21
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l26
  br label %bb3
bb3:
  %t38 = load i32, ptr %l26, !range !{i32 0, i32 33}
  %t40 = trunc i64 25 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb4, label %bb5
bb4:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load i64, ptr %l1, !tbaa !24
  %t50 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %t46, i64 %t47)
  store i64 %t50, ptr %l32
  br label %bb6
bb5:
  br label %bb27
bb6:
  %t51 = load i64, ptr %l32, !tbaa !24
  store i64 %t51, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t52, 0
  br i1 %t54, label %bb7, label %bb8
bb7:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l35, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t57, ptr %l36
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l2, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t58, i32 %t59)
  store { i64, ptr } %t62, ptr %l39
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t63 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  %t65 = extractvalue { i64, ptr } %t63, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t71 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerKind(ptr %v0, ptr %v0, { i64, ptr } %t69)
  store %"compiler/diagmsg:Msg" %t71, ptr %l41
  br label %bb10
bb10:
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l36
  %t74 = load %"compiler/diagmsg:Msg", ptr %l41
  %t75 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t72, %"compiler/source:Span" %t73, %"compiler/diagmsg:Msg" %t74)
  store i64 %t75, ptr %l42
  br label %bb11
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = shl i64 1, 40
  %t84 = sub i64 %t82, 1
  %t87 = and i64 %t81, %t84
  %t89 = trunc i64 %t87 to i32
  %t93 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t80, i32 %t89)
  store i64 %t93, ptr %l52
  br label %bb13
bb13:
  %t94 = load i64, ptr %l52, !tbaa !24
  store i64 %t94, ptr %l7, !tbaa !24
  %t95 = load i64, ptr %l7, !tbaa !24
  %t96 = load i64, ptr %l4, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  br i1 %t99, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb20
bb15:
  %t101 = load i1, ptr %l5, !tbaa !21
  br i1 %t101, label %bb16, label %bb17
bb16:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 0
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/load:Loader", ptr %t109, i32 0, i32 10
  %t112 = load i64, ptr %l7, !tbaa !24
  %t115 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t111, i64 %t112)
  store ptr %t115, ptr %l64
  br label %bb18
bb17:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb19
bb18:
  %t116 = load ptr, ptr %l64, !tbaa !29
  %t118 = getelementptr %"compiler/load:Module", ptr %t116, i32 0, i32 3
  %t119 = load i1, ptr %t118, !tbaa !21
  store i1 %t119, ptr %l58, !tbaa !21
  br label %bb19
bb19:
  %t121 = load i1, ptr %l58, !tbaa !21
  store i1 %t121, ptr %l56, !tbaa !21
  br label %bb20
bb20:
  %t122 = load i1, ptr %l56, !tbaa !21
  br i1 %t122, label %bb21, label %bb22
bb21:
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l68, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t125, ptr %l69
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i32, ptr %l2, !tbaa !23
  %t130 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t126, i32 %t127)
  store { i64, ptr } %t130, ptr %l72
  br label %bb24
bb24:
  %t131 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  %t133 = extractvalue { i64, ptr } %t131, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t139 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerElsewhere(ptr %v0, ptr %v0, { i64, ptr } %t137)
  store %"compiler/diagmsg:Msg" %t139, ptr %l74
  br label %bb25
bb25:
  %t140 = load ptr, ptr %l68, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l69
  %t142 = load %"compiler/diagmsg:Msg", ptr %l74
  %t143 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t140, %"compiler/source:Span" %t141, %"compiler/diagmsg:Msg" %t142)
  store i64 %t143, ptr %l75
  br label %bb26
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l2, !tbaa !23
  %t154 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t150, i32 %t151)
  store i32 %t154, ptr %l81
  br label %bb28
bb28:
  %t155 = load i32, ptr %l81, !range !{i32 0, i32 33}
  %t157 = trunc i64 18 to i32
  %t158 = icmp eq i32 %t155, %t157
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb29, label %bb30
bb29:
  %t162 = load i1, ptr %l5, !tbaa !21
  br i1 %t162, label %bb31, label %bb32
bb30:
  br label %bb47
bb31:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t168 = load i64, ptr %l1, !tbaa !24
  %t171 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %t167, i64 %t168)
  store i64 %t171, ptr %l90
  br label %bb33
bb32:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb34
bb33:
  %t172 = load i64, ptr %l90, !tbaa !24
  %t173 = icmp sge i64 %t172, 0
  store i1 %t173, ptr %l86, !tbaa !21
  br label %bb34
bb34:
  %t175 = load i1, ptr %l86, !tbaa !21
  br i1 %t175, label %bb35, label %bb36
bb35:
  store i1 true, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l93, !tbaa !29
  %t178 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t178, ptr %l94
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t183 = load i64, ptr %l1, !tbaa !24
  %t186 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %t182, i64 %t183)
  store i64 %t186, ptr %l98
  br label %bb38
bb38:
  %t187 = load i64, ptr %l98, !tbaa !24
  %t188 = icmp sge i64 %t187, 0
  br i1 %t188, label %bb39, label %bb40
bb39:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l2, !tbaa !23
  %t194 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t190, i32 %t191)
  store { i64, ptr } %t194, ptr %l103
  br label %bb41
bb40:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l2, !tbaa !23
  %t199 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t195, i32 %t196)
  store { i64, ptr } %t199, ptr %l108
  br label %bb43
bb41:
  %t200 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  %t202 = extractvalue { i64, ptr } %t200, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  %t208 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerElsewhere(ptr %v0, ptr %v0, { i64, ptr } %t206)
  store %"compiler/diagmsg:Msg" %t208, ptr %l105
  br label %bb42
bb42:
  %t209 = load %"compiler/diagmsg:Msg", ptr %l105
  store %"compiler/diagmsg:Msg" %t209, ptr %l100
  br label %bb45
bb43:
  %t210 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 0
  %t212 = extractvalue { i64, ptr } %t210, 1
  %t213 = mul i64 %t211, 1
  %t214 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t214, ptr %t212, i64 %t213, i1 false)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  %t218 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerKind(ptr %v0, ptr %v0, { i64, ptr } %t216)
  store %"compiler/diagmsg:Msg" %t218, ptr %l110
  br label %bb44
bb44:
  %t219 = load %"compiler/diagmsg:Msg", ptr %l110
  store %"compiler/diagmsg:Msg" %t219, ptr %l100
  br label %bb45
bb45:
  %t220 = load ptr, ptr %l93, !tbaa !29
  %t221 = load %"compiler/source:Span", ptr %l94
  %t222 = load %"compiler/diagmsg:Msg", ptr %l100
  %t223 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t220, %"compiler/source:Span" %t221, %"compiler/diagmsg:Msg" %t222)
  store i64 %t223, ptr %l111
  br label %bb46
bb46:
  store i1 false, ptr %rv
  br label %ret
bb47:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i32, ptr %l2, !tbaa !23
  %t229 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t225, i32 %t226)
  store i32 %t229, ptr %l115
  br label %bb48
bb48:
  %t230 = load i32, ptr %l115, !range !{i32 0, i32 6}
  store i32 %t230, ptr %l8
  %t231 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t233 = trunc i64 0 to i32
  %t234 = icmp eq i32 %t231, %t233
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb49, label %bb50
bb49:
  %t238 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t240 = trunc i64 1 to i32
  %t241 = icmp eq i32 %t238, %t240
  %t243 = xor i1 %t241, true
  store i1 %t243, ptr %l119, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb51
bb51:
  %t245 = load i1, ptr %l119, !tbaa !21
  br i1 %t245, label %bb52, label %bb53
bb52:
  %t246 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t248 = trunc i64 4 to i32
  %t249 = icmp eq i32 %t246, %t248
  %t251 = xor i1 %t249, true
  store i1 %t251, ptr %l123, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb54
bb54:
  %t253 = load i1, ptr %l123, !tbaa !21
  br i1 %t253, label %bb55, label %bb56
bb55:
  %t254 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t256 = trunc i64 5 to i32
  %t257 = icmp eq i32 %t254, %t256
  %t259 = xor i1 %t257, true
  store i1 %t259, ptr %l127, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb57
bb57:
  %t261 = load i1, ptr %l127, !tbaa !21
  br i1 %t261, label %bb58, label %bb59
bb58:
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l131, !tbaa !29
  %t263 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t263, ptr %l132
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i32, ptr %l2, !tbaa !23
  %t268 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t264, i32 %t265)
  store { i64, ptr } %t268, ptr %l135
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t269 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 0
  %t271 = extractvalue { i64, ptr } %t269, 1
  %t272 = mul i64 %t270, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t273, ptr %t271, i64 %t272, i1 false)
  %t274 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  %t277 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerKind(ptr %v0, ptr %v0, { i64, ptr } %t275)
  store %"compiler/diagmsg:Msg" %t277, ptr %l137
  br label %bb61
bb61:
  %t278 = load ptr, ptr %l131, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l132
  %t280 = load %"compiler/diagmsg:Msg", ptr %l137
  %t281 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t278, %"compiler/source:Span" %t279, %"compiler/diagmsg:Msg" %t280)
  store i64 %t281, ptr %l138
  br label %bb62
bb62:
  store i1 false, ptr %rv
  br label %ret
bb63:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/check:Checker", ptr %t283, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !29
  store ptr %t286, ptr %l141, !tbaa !29
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t292 = getelementptr %"compiler/generic:Program", ptr %t290, i32 0, i32 2
  %t293 = load i32, ptr %l2, !tbaa !23
  %t296 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t292, i32 %t293)
  store i32 %t296, ptr %l146
  br label %bb64
bb64:
  %t297 = load ptr, ptr %l141, !tbaa !29
  %t298 = load i32, ptr %l146, !tbaa !23
  %t299 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t297, i32 %t298)
  store i64 %t299, ptr %l147
  br label %bb65
bb65:
  %t300 = load i64, ptr %l147, !tbaa !24
  store i64 %t300, ptr %l9, !tbaa !24
  %t301 = load i64, ptr %l9, !tbaa !24
  %t302 = load i64, ptr %l4, !tbaa !24
  %t305 = icmp ne i64 %t301, %t302
  br i1 %t305, label %bb66, label %bb67
bb66:
  %t307 = load i1, ptr %l5, !tbaa !21
  br i1 %t307, label %bb68, label %bb69
bb67:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb72
bb68:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/check:Checker", ptr %t309, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = getelementptr %"compiler/generic:Program", ptr %t312, i32 0, i32 0
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/load:Loader", ptr %t315, i32 0, i32 10
  %t318 = load i64, ptr %l9, !tbaa !24
  %t321 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t317, i64 %t318)
  store ptr %t321, ptr %l159
  br label %bb70
bb69:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb71
bb70:
  %t322 = load ptr, ptr %l159, !tbaa !29
  %t324 = getelementptr %"compiler/load:Module", ptr %t322, i32 0, i32 3
  %t325 = load i1, ptr %t324, !tbaa !21
  store i1 %t325, ptr %l153, !tbaa !21
  br label %bb71
bb71:
  %t327 = load i1, ptr %l153, !tbaa !21
  %t328 = xor i1 %t327, true
  store i1 %t328, ptr %l151, !tbaa !21
  br label %bb72
bb72:
  %t330 = load i1, ptr %l151, !tbaa !21
  br i1 %t330, label %bb73, label %bb74
bb73:
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l163, !tbaa !29
  %t332 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t332, ptr %l164
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load i32, ptr %l2, !tbaa !23
  %t337 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t333, i32 %t334)
  store { i64, ptr } %t337, ptr %l167
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t338 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t339 = extractvalue { i64, ptr } %t338, 0
  %t340 = extractvalue { i64, ptr } %t338, 1
  %t341 = mul i64 %t339, 1
  %t342 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t341)
  call void @llvm.memcpy.p0.p0.i64(ptr %t342, ptr %t340, i64 %t341, i1 false)
  %t343 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t344 = insertvalue { i64, ptr } %t343, ptr %t342, 1
  %t346 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerElsewhere(ptr %v0, ptr %v0, { i64, ptr } %t344)
  store %"compiler/diagmsg:Msg" %t346, ptr %l169
  br label %bb76
bb76:
  %t347 = load ptr, ptr %l163, !tbaa !29
  %t348 = load %"compiler/source:Span", ptr %l164
  %t349 = load %"compiler/diagmsg:Msg", ptr %l169
  %t350 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t347, %"compiler/source:Span" %t348, %"compiler/diagmsg:Msg" %t349)
  store i64 %t350, ptr %l170
  br label %bb77
bb77:
  store i1 false, ptr %rv
  br label %ret
bb78:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load i64, ptr %l1, !tbaa !24
  %t354 = load i32, ptr %l2, !tbaa !23
  %t355 = load %"compiler/source:Span", ptr %l3
  %t360 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerWritten(ptr %v0, ptr %t352, i64 %t353, i32 %t354, %"compiler/source:Span" %t355)
  store i1 %t360, ptr %l176
  br label %bb79
bb79:
  %t361 = load i1, ptr %l176, !tbaa !21
  store i1 %t361, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i1
  %rv = alloca i1
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t12 = load i32, ptr %l1, !tbaa !23
  %t14 = icmp sle i32 %t12, 14
  store i1 %t14, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l7, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtLast(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l41 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l62 = alloca i1
  %l69 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Match", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l22, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l19, !tbaa !24
  store i64 %t35, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l8, !tbaa !24
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Match", ptr %t54, i32 0, i32 3
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l41, !tbaa !27
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  %t65 = getelementptr %"compiler/ast:Case", ptr %t63, i32 0, i32 3
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb11, label %bb12
bb11:
  br label %bb24
bb12:
  br label %bb13
bb13:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Match", ptr %t72, i32 0, i32 3
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l48, !tbaa !27
  %t76 = load i64, ptr %l8, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr ptr, ptr %t79, i64 %t76
  %t81 = load ptr, ptr %t80, !tbaa !39
  %t83 = getelementptr %"compiler/ast:Case", ptr %t81, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  store i64 %t88, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l11, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t98 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t98, ptr %l58, !tbaa !27
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr ptr, ptr %t102, i64 %t99
  %t104 = load ptr, ptr %t103, !tbaa !39
  %t108 = call i1 @compiler_2fcheck_2eisWild(ptr %v1, ptr %t104)
  store i1 %t108, ptr %l62
  br label %bb18
bb18:
  %t109 = load i1, ptr %l62, !tbaa !21
  br i1 %t109, label %bb19, label %bb20
bb19:
  %t110 = load i64, ptr %l8, !tbaa !24
  store i64 %t110, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t112 = load i64, ptr %l10, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l10, !tbaa !24
  br label %bb14
bb23:
  br label %bb24
bb24:
  %t116 = load i64, ptr %l7, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l7, !tbaa !24
  br label %bb7
bb25:
  br i1 %a2, label %bb26, label %bb27
bb26:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/ast:Match", ptr %t122, i32 0, i32 3
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t129 = sub i64 %t127, 1
  store i64 %t129, ptr %l69, !tbaa !24
  br label %bb28
bb27:
  store i64 -1, ptr %l69, !tbaa !24
  br label %bb28
bb28:
  %t131 = load i64, ptr %l69, !tbaa !24
  store i64 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdChoosesPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l38 = alloca { i64, ptr }
  %l44 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l61 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 11
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Cond", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %t16, ptr %t20)
  store i1 %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Cond", ptr %t26, i32 0, i32 2
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %t25, ptr %t29)
  store i1 %t33, ptr %l23
  br label %bb9
bb9:
  %t34 = load i1, ptr %l23, !tbaa !21
  store i1 %t34, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l18, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
bb11:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t37 = load ptr, ptr %l24, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 13
  store i1 %t43, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb34
bb16:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Match", ptr %t51, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t68, ptr %l38, !tbaa !27
  %t69 = load i64, ptr %l5, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Arm", ptr %t74, i32 0, i32 4
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %t76, ptr %t80)
  store i1 %t83, ptr %l44
  br label %bb21
bb21:
  %t84 = load i1, ptr %l44, !tbaa !21
  br i1 %t84, label %bb22, label %bb23
bb22:
  store i1 true, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l5, !tbaa !24
  br label %bb17
bb26:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Match", ptr %t90, i32 0, i32 2
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = icmp eq ptr %t93, null
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb27, label %bb28
bb27:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l53, !tbaa !29
  %t100 = load ptr, ptr %l3, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Match", ptr %t100, i32 0, i32 2
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb29, label %bb30
bb28:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb33
bb29:
  call void @__olang_check_failed(ptr @olang_loc_2ede4c4ba9909085_e989644cd371c6b1)
  unreachable
bb30:
  br label %bb31
bb31:
  %t107 = load ptr, ptr %l3, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Match", ptr %t107, i32 0, i32 2
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Arm", ptr %t110, i32 0, i32 4
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t115 = load ptr, ptr %l53, !tbaa !29
  %t117 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %t115, ptr %t114)
  store i1 %t117, ptr %l61
  br label %bb32
bb32:
  %t118 = load i1, ptr %l61, !tbaa !21
  store i1 %t118, ptr %l52, !tbaa !21
  br label %bb33
bb33:
  %t119 = load i1, ptr %l52, !tbaa !21
  store i1 %t119, ptr %rv
  br label %ret
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_7d19fc126307206d_86c002714b5cfe09)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l9 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a3, i32 20, ptr %a2, ptr null)
  store ptr %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l9, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecurInst(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i1
  %l7 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l7
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l5, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t21)
  store ptr %t23, ptr %l13
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %t24)
  store i64 %t25, ptr %l14
  br label %bb10
bb10:
  %t26 = load i64, ptr %l14, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseHolds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l20 = alloca i1
  %l24 = alloca ptr
  %l32 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
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
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 22}
  %t13 = icmp eq i64 %t11, 5
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb23
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:If", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_50a05787c39822f3_4820228f4f4dc477)
  unreachable
bb10:
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/ast:If", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Branch", ptr %t31, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/load:Loader", ptr %t45, i32 0, i32 4
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l24, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/ast:If", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_50a05787c39822f3_4820228f4f4dc477)
  unreachable
bb15:
  br label %bb16
bb16:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr %"compiler/ast:If", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Branch", ptr %t59, i32 0, i32 2
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = load ptr, ptr %l24, !tbaa !29
  %t66 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %t64, i64 %t63)
  store i1 %t66, ptr %l32
  br label %bb17
bb17:
  %t67 = load i1, ptr %l32, !tbaa !21
  store i1 %t67, ptr %l20, !tbaa !21
  br label %bb18
bb18:
  %t68 = load i1, ptr %l20, !tbaa !21
  br i1 %t68, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb22
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"compiler/ast:If", ptr %t70, i32 0, i32 2
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseHolds(ptr %v0, ptr %v1, ptr %t69, ptr %t73)
  store i1 %t76, ptr %l37
  br label %bb21
bb21:
  %t77 = load i1, ptr %l37, !tbaa !21
  store i1 %t77, ptr %l33, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l33, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_a066d2ce16f881cb_b1c9ea2c2a0314f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemptyArray(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  store i32 %t7, ptr %l9, !tbaa !23
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t8)
  store i32 %t10, ptr %l11
  br label %bb2
bb2:
  %t11 = load i32, ptr %l9, !tbaa !23
  %t12 = load i32, ptr %l11, !tbaa !23
  %t13 = icmp eq i32 %t11, %t12
  br i1 %t13, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l15, !tbaa !24
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = mul i64 %t27, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %t26, i64 %t28, i1 false)
  %t29 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t29, ptr %l14, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t30 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t30, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 5
  %t34 = load i1, ptr %t33, !tbaa !21
  store i1 %t34, ptr %l3, !tbaa !21
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 5
  store i1 true, ptr %t38, !tbaa !21
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l20, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  store ptr %t45, ptr %l23, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l26
  br label %bb6
bb6:
  %t51 = load ptr, ptr %l23, !tbaa !29
  %t52 = load i32, ptr %l26, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t53, ptr %l27
  br label %bb7
bb7:
  %t54 = load ptr, ptr %l20, !tbaa !29
  %t55 = load i32, ptr %l27, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t54, i32 %t55)
  store { i64, ptr } %t56, ptr %l28
  br label %bb8
bb8:
  %t57 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t59 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t62 = add i64 %t58, %t61
  %t63 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t57, i64 %t58)
  %t67 = getelementptr i8, ptr %t66, i64 %t58
  call void @olang_textcopy(ptr %t67, ptr %t60, i64 %t61)
  %t68 = getelementptr i8, ptr %t67, i64 %t61
  call void @olang_textcopy(ptr %t68, ptr %t63, i64 %t64)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t66, 1
  store { i64, ptr } %t70, ptr %l4, !tbaa !27
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l2, !tbaa !23
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t72, i32 %t73)
  store i1 %t76, ptr %l32
  br label %bb9
bb9:
  %t77 = load i1, ptr %l32, !tbaa !21
  br i1 %t77, label %bb10, label %bb11
bb10:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l2, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t78, i32 %t79)
  store { i64, ptr } %t82, ptr %l36
  br label %bb12
bb11:
  %t83 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t83, ptr %l33, !tbaa !27
  br label %bb13
bb12:
  %t85 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t93 = extractvalue { i64, ptr } %t85, 1
  %t94 = extractvalue { i64, ptr } %t85, 0
  %t95 = add i64 %t91, %t94
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t87, i64 %t88)
  %t100 = getelementptr i8, ptr %t99, i64 %t88
  call void @olang_textcopy(ptr %t100, ptr %t89, i64 %t90)
  %t101 = getelementptr i8, ptr %t100, i64 %t90
  call void @olang_textcopy(ptr %t101, ptr %t93, i64 %t94)
  %t102 = getelementptr i8, ptr %t101, i64 %t94
  call void @olang_textcopy(ptr %t102, ptr %t96, i64 %t97)
  %t103 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t99, 1
  store { i64, ptr } %t104, ptr %l33, !tbaa !27
  br label %bb13
bb13:
  %t106 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  store i64 %t107, ptr %l40, !tbaa !24
  %t108 = load i64, ptr %l40, !tbaa !24
  %t109 = mul i64 %t108, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t109)
  %t111 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l41, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = load i64, ptr %l40, !tbaa !24
  %t118 = mul i64 %t117, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t114, ptr %t116, i64 %t118, i1 false)
  %t119 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i1, ptr %l3, !tbaa !21
  %t124 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 5
  store i1 %t121, ptr %t124, !tbaa !21
  store { i64, ptr } %t119, ptr %l44, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l45, !tbaa !24
  %t128 = load i64, ptr %l45, !tbaa !24
  %t129 = mul i64 %t128, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t129)
  %t131 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l46, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l45, !tbaa !24
  %t138 = mul i64 %t137, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %t136, i64 %t138, i1 false)
  %t139 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t139, ptr %l44, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t140 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t140, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrBefore(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i32
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l28 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca ptr
  %l40 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca ptr
  %l51 = alloca i1
  %l55 = alloca i1
  %l56 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca { i64, ptr }
  %l70 = alloca i1
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
  store ptr %t6, ptr %l9, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t12, i32 %a1)
  store i32 %t16, ptr %l14
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = load i32, ptr %l14, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t19, ptr %l15
  br label %bb2
bb2:
  %t20 = load i32, ptr %l15, !tbaa !23
  store i32 %t20, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t32, i32 %a2)
  store i32 %t36, ptr %l23
  br label %bb3
bb3:
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i32, ptr %l23, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t39, ptr %l24
  br label %bb4
bb4:
  %t40 = load i32, ptr %l24, !tbaa !23
  store i32 %t40, ptr %l4, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/load:Loader", ptr %t47, i32 0, i32 10
  store ptr %t49, ptr %l28, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l3, !tbaa !23
  %t59 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t55, i32 %t56)
  store i64 %t59, ptr %l33
  br label %bb5
bb5:
  %t60 = load ptr, ptr %l28, !tbaa !29
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t60, i64 %t61)
  store ptr %t62, ptr %l34
  br label %bb6
bb6:
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t65 = getelementptr %"compiler/load:Module", ptr %t63, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l5, !tbaa !27
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/load:Loader", ptr %t74, i32 0, i32 10
  store ptr %t76, ptr %l40, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l4, !tbaa !23
  %t86 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t82, i32 %t83)
  store i64 %t86, ptr %l45
  br label %bb7
bb7:
  %t87 = load ptr, ptr %l40, !tbaa !29
  %t88 = load i64, ptr %l45, !tbaa !24
  %t89 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t87, i64 %t88)
  store ptr %t89, ptr %l46
  br label %bb8
bb8:
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t92 = getelementptr %"compiler/load:Module", ptr %t90, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l6, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t95, { i64, ptr } %t96)
  store i1 %t99, ptr %l51
  br label %bb9
bb9:
  %t100 = load i1, ptr %l51, !tbaa !21
  %t101 = xor i1 %t100, true
  br i1 %t101, label %bb10, label %bb11
bb10:
  %t103 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t107 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v0, { i64, ptr } %t103, { i64, ptr } %t104)
  store i1 %t107, ptr %l55
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t108 = load i1, ptr %l55, !tbaa !21
  store i1 %t108, ptr %rv
  br label %ret
bb13:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l56, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l3, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l61
  br label %bb14
bb14:
  %t120 = load ptr, ptr %l56, !tbaa !29
  %t121 = load i32, ptr %l61, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t120, i32 %t121)
  store { i64, ptr } %t122, ptr %l62
  br label %bb15
bb15:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l63, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %l4, !tbaa !23
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t129, i32 %t130)
  store i32 %t133, ptr %l68
  br label %bb16
bb16:
  %t134 = load ptr, ptr %l63, !tbaa !29
  %t135 = load i32, ptr %l68, !tbaa !23
  %t136 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t134, i32 %t135)
  store { i64, ptr } %t136, ptr %l69
  br label %bb17
bb17:
  %t137 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v0, { i64, ptr } %t137, { i64, ptr } %t138)
  store i1 %t139, ptr %l70
  br label %bb18
bb18:
  %t140 = load i1, ptr %l70, !tbaa !21
  store i1 %t140, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l17 = alloca %"compiler/check:errNarrow"
  %l21 = alloca i1
  %l25 = alloca %"compiler/check:errNarrow"
  %l28 = alloca ptr
  %l32 = alloca %"compiler/check:errNarrow"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
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
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 59
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l9
  br label %bb2
bb2:
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = sub i64 %t10, 1
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  br label %bb18
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 59
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %t21, i64 %t22)
  store %"compiler/check:errNarrow" %t25, ptr %l17
  br label %bb7
bb7:
  %t26 = getelementptr %"compiler/check:errNarrow", ptr %l17, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t31 = icmp eq i32 %t27, %a1
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/check:frame", ptr %t33, i32 0, i32 59
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %t35, i64 %t36)
  store %"compiler/check:errNarrow" %t39, ptr %l25
  br label %bb10
bb9:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  %t40 = getelementptr %"compiler/check:errNarrow", ptr %l25, i32 0, i32 3
  %t41 = load i1, ptr %t40, !tbaa !21
  %t43 = xor i1 %t41, true
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr %"compiler/check:frame", ptr %t47, i32 0, i32 59
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %t49, i64 %t50)
  store %"compiler/check:errNarrow" %t53, ptr %l32
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t54 = getelementptr %"compiler/check:errNarrow", ptr %l32, i32 0, i32 1
  %t55 = load i32, ptr %t54, !tbaa !23
  %t56 = load ptr, ptr %l28, !tbaa !29
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %t56, i32 %t55)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l34
  br label %bb15
bb15:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = sub i64 %t60, 1
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb3
bb18:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %t64, i32 %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l39
  br label %bb19
bb19:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenResultMet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l24 = alloca { i64, ptr }
  %l28 = alloca i1
  %l33 = alloca i1
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb20
bb5:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp eq i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp slt i64 %t28, %t29
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb10, label %bb11
bb10:
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t36, ptr %l24, !tbaa !27
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr ptr, ptr %t40, i64 %t37
  %t42 = load ptr, ptr %t41, !tbaa !39
  store ptr %t42, ptr %l7, !tbaa !29
  %t44 = load ptr, ptr %l7, !tbaa !29
  %t46 = call i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v1, ptr %t44)
  store i1 %t46, ptr %l28
  br label %bb13
bb13:
  %t47 = load i1, ptr %l28, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  %t51 = load ptr, ptr %l7, !tbaa !29
  %t55 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %t51)
  store i1 %t55, ptr %l33
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb9
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
  call void @__olang_check_failed(ptr @olang_loc_48c434cc052a730a_3ea1b318a5aaa0d6)
  unreachable
bb25:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb19
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 14
  %t24 = load i32, ptr %l3, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l19
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 1
  %t34 = load { i64, [2 x i64] }, ptr %t33
  store { i64, [2 x i64] } %t34, ptr %l5
  %t36 = load { i64, [2 x i64] }, ptr %l5
  %t38 = extractvalue { i64, [2 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 0
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t42 = getelementptr { i64 }, ptr %t41, i32 0, i32 0
  %t43 = load i64, ptr %t42
  store i64 %t43, ptr %l6, !tbaa !24
  br label %bb9
bb8:
  br label %bb13
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  store ptr %t49, ptr %l28, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t53, i64 %t54)
  store i64 %t57, ptr %l32
  br label %bb10
bb10:
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t59 = load i64, ptr %l32, !tbaa !24
  %t60 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t58, i64 %t59)
  store ptr %t60, ptr %l33
  br label %bb11
bb11:
  %t61 = load ptr, ptr %l33, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Func", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %t63, !tbaa !23
  %t65 = load ptr, ptr %l26, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v2, ptr %t65, i32 %t64)
  store { i64, ptr } %t67, ptr %l36
  br label %bb12
bb12:
  %t68 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t68, ptr %l22, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t70, ptr %l22, !tbaa !27
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b9703f47e3d93663_9ebf3615d73f11ff)
  unreachable
bb18:
  %t72 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l40, !tbaa !24
  %t74 = load i64, ptr %l40, !tbaa !24
  %t75 = mul i64 %t74, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l41, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = load i64, ptr %l40, !tbaa !24
  %t84 = mul i64 %t83, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t80, ptr %t82, i64 %t84, i1 false)
  %t85 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t85, ptr %l22, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l42, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t87, ptr %l43, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l44, !tbaa !24
  %t90 = load i64, ptr %l44, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l45, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l44, !tbaa !24
  %t100 = mul i64 %t99, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %t98, i64 %t100, i1 false)
  %t101 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t101, ptr %l43, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t102, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_1d4c1b6caa485862_a69bc63913ecdbfe)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i64
  %l11 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l15 = alloca i1
  %l31 = alloca i32
  %l36 = alloca i64
  %l40 = alloca i1
  %l45 = alloca i1
  %l49 = alloca %"compiler/source:Span"
  %l53 = alloca i64
  %rv = alloca ptr
  %t5 = alloca { i64, [5 x i64] }, align 8
  %t115 = alloca { i64, [3 x i64] }, align 8
  %t143 = alloca { i64, [4 x i64] }, align 8
  %t155 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t1)
  store %"compiler/source:Span" %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [5 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load %"compiler/source:Span", ptr %l11
  %t8 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t7, 0
  %t10 = insertvalue { %"compiler/source:Span", i32, i64 } %t8, i32 %t4, 1
  %t11 = insertvalue { %"compiler/source:Span", i32, i64 } %t10, i64 0, 2
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t5, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t11, ptr %t12
  %t13 = load { i64, [5 x i64] }, ptr %t5
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t14, ptr %lp2
  %t16 = load ptr, ptr %lp2
  store { i64, [5 x i64] } %t13, ptr %t16
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t18 = load ptr, ptr %l14, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 18}
  %t24 = icmp eq i64 %t22, 5
  store i1 %t24, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t25 = load i1, ptr %l15, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  %t28 = load ptr, ptr %lp2
  store ptr %t28, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 0
  %t34 = load %"compiler/source:Span", ptr %t33
  store %"compiler/source:Span" %t34, ptr %l3
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 1
  %t40 = load i32, ptr %t39
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [5 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l5, !tbaa !29
  store i32 %t40, ptr %l6, !tbaa !23
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Promote", ptr %t50, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t57 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t54)
  store i32 %t57, ptr %l31
  br label %bb7
bb7:
  %t58 = load i32, ptr %l31, !tbaa !23
  store i32 %t58, ptr %l7, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l6, !tbaa !23
  %t68 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l36
  br label %bb8
bb8:
  %t69 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t70 = load i64, ptr %l36, !tbaa !24
  %t72 = and i64 %t70, %t69
  %t74 = icmp eq i64 %t72, 0
  br i1 %t74, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb12
bb10:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l7, !tbaa !23
  %t85 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t81, i32 %t82)
  store i1 %t85, ptr %l45
  br label %bb11
bb11:
  %t86 = load i1, ptr %l45, !tbaa !21
  %t87 = xor i1 %t86, true
  store i1 %t87, ptr %l40, !tbaa !21
  br label %bb12
bb12:
  %t89 = load i1, ptr %l40, !tbaa !21
  br i1 %t89, label %bb13, label %bb14
bb13:
  %t90 = load ptr, ptr %lp2
  store ptr %t90, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t92)
  store %"compiler/source:Span" %t94, ptr %l49
  br label %bb16
bb16:
  %t95 = load %"compiler/source:Span", ptr %l49
  store %"compiler/source:Span" %t95, ptr %l8
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l8
  %t98 = load i32, ptr %l7, !tbaa !23
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t96, %"compiler/source:Span" %t97, i32 %t98)
  store i64 %t102, ptr %l53
  br label %bb17
bb17:
  %t103 = load i64, ptr %l53, !tbaa !24
  store i64 %t103, ptr %l9, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l8
  %t106 = load i64, ptr %l9, !tbaa !24
  %t108 = trunc i64 %t106 to i32
  %t110 = load ptr, ptr %l5, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Promote", ptr %t110, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [3 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t118 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t105, 0
  %t120 = insertvalue { %"compiler/source:Span", i32, ptr } %t118, i32 %t108, 1
  %t122 = insertvalue { %"compiler/source:Span", i32, ptr } %t120, ptr %t114, 2
  %t123 = getelementptr { i64, [3 x i64] }, ptr %t115, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t122, ptr %t123
  %t124 = load { i64, [3 x i64] }, ptr %t115
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t124, ptr %t126
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t104, ptr %t126)
  br label %bb18
bb18:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l9, !tbaa !24
  %t131 = load %"compiler/source:Span", ptr %l8
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %t129, i64 %t130, %"compiler/source:Span" %t131, i1 true)
  br label %bb19
bb19:
  %t135 = load %"compiler/source:Span", ptr %l8
  %t136 = load i32, ptr %l6, !tbaa !23
  %t137 = load %"compiler/source:Span", ptr %l8
  %t138 = load i32, ptr %l7, !tbaa !23
  %t139 = load i64, ptr %l9, !tbaa !24
  %t141 = trunc i64 %t139 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t143, i32 0, i32 0
  store i64 0, ptr %t144
  %t146 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t137, 0
  %t148 = insertvalue { %"compiler/source:Span", i32, i32 } %t146, i32 %t138, 1
  %t150 = insertvalue { %"compiler/source:Span", i32, i32 } %t148, i32 %t141, 2
  %t151 = getelementptr { i64, [4 x i64] }, ptr %t143, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t150, ptr %t151
  %t152 = load { i64, [4 x i64] }, ptr %t143
  %t154 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t152, ptr %t154
  store { i64, [5 x i64] } zeroinitializer, ptr %t155
  %t156 = getelementptr { i64, [5 x i64] }, ptr %t155, i32 0, i32 0
  store i64 3, ptr %t156
  %t158 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t135, 0
  %t160 = insertvalue { %"compiler/source:Span", i32, ptr } %t158, i32 %t136, 1
  %t162 = insertvalue { %"compiler/source:Span", i32, ptr } %t160, ptr %t154, 2
  %t163 = getelementptr { i64, [5 x i64] }, ptr %t155, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t162, ptr %t163
  %t164 = load { i64, [5 x i64] }, ptr %t155
  %t166 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t164, ptr %t166
  store ptr %t166, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstHoldsItself(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i1
  %l19 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l36 = alloca i64
  %l54 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i1
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca ptr
  %l68 = alloca %"compiler/source:Span"
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load i1, ptr %l15, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l19, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l24
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = load i32, ptr %l24, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store { i64, ptr } %t30, ptr %l25
  br label %bb6
bb6:
  %t31 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v1, ptr %s0, ptr %a3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l27
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb10:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l36, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l36, !tbaa !24
  store i64 %t66, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l33, !tbaa !24
  store i64 %t67, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l10, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb15, label %bb16
bb15:
  br label %bb31
bb16:
  br label %bb17
bb17:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  store i64 %t86, ptr %l54, !tbaa !24
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l5)
  store i64 %t88, ptr %l56
  br label %bb18
bb18:
  %t89 = load i64, ptr %l54, !tbaa !24
  %t90 = load i64, ptr %l56, !tbaa !24
  %t91 = icmp slt i64 %t89, %t90
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t94, ptr %l60, !tbaa !27
  %t95 = load i64, ptr %l11, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  %t101 = load i32, ptr %l1, !tbaa !23
  %t105 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %t93, i32 %t100, i32 %t101, i64 0)
  store i1 %t105, ptr %l64
  br label %bb21
bb20:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb22
bb21:
  %t106 = load i1, ptr %l64, !tbaa !21
  store i1 %t106, ptr %l58, !tbaa !21
  br label %bb22
bb22:
  %t107 = load i1, ptr %l58, !tbaa !21
  br i1 %t107, label %bb23, label %bb24
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l65, !tbaa !29
  %t109 = load i64, ptr %l11, !tbaa !24
  %t112 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l5, i64 %t109)
  store %"compiler/source:Span" %t112, ptr %l68
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l1, !tbaa !23
  %t117 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t113, i32 %t114)
  store { i64, ptr } %t117, ptr %l71
  br label %bb26
bb26:
  %t118 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  %t120 = extractvalue { i64, ptr } %t118, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %v0, ptr %v0, { i64, ptr } %t124)
  store %"compiler/diagmsg:Msg" %t126, ptr %l73
  br label %bb27
bb27:
  %t127 = load ptr, ptr %l65, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l68
  %t129 = load %"compiler/diagmsg:Msg", ptr %l73
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128, %"compiler/diagmsg:Msg" %t129)
  store i64 %t130, ptr %l74
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  br label %bb30
bb30:
  %t131 = load i64, ptr %l10, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l10, !tbaa !24
  br label %bb14
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandedNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, [3 x i64] }
  %l5 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l20 = alloca %"compiler/typed:Local"
  %l22 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca { i64, [3 x i64] }
  %l30 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"compiler/diagmsg:Msg"
  %l37 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca { i64, [3 x i64] }
  %l43 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l53 = alloca %"compiler/typed:Local"
  %l55 = alloca { i64, ptr }
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca i64
  %t19 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:landing", ptr %t5, i32 0, i32 2
  %t8 = getelementptr %"compiler/source:Span", ptr %t7, i32 0, i32 0
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/check:landing", ptr %t12, i32 0, i32 2
  %t15 = getelementptr %"compiler/source:Span", ptr %t14, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 0
  store i64 3, ptr %t20
  %t22 = insertvalue { i64, i64, i64 } undef, i64 %t4, 0
  %t24 = insertvalue { i64, i64, i64 } %t22, i64 %t11, 1
  %t26 = insertvalue { i64, i64, i64 } %t24, i64 %t18, 2
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 1
  store { i64, i64, i64 } %t26, ptr %t27
  %t28 = load { i64, [3 x i64] }, ptr %t19
  store { i64, [3 x i64] } %t28, ptr %l4
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l15, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Body", ptr %t31, i32 0, i32 7
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/check:landing", ptr %t34, i32 0, i32 1
  %t37 = load i64, ptr %t36, !tbaa !24
  %t40 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t33, i64 %t37)
  store %"compiler/typed:Local" %t40, ptr %l20
  br label %bb1
bb1:
  %t41 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = load ptr, ptr %l15, !tbaa !29
  %t45 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t43, i32 %t42)
  store { i64, ptr } %t45, ptr %l22
  br label %bb2
bb2:
  %t46 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t46, ptr %l5, !tbaa !27
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = icmp slt i64 %t47, 0
  br i1 %t49, label %bb3, label %bb4
bb3:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/load:Loader", ptr %t57, i32 0, i32 4
  %t60 = load ptr, ptr %t59, !tbaa !29
  store ptr %t60, ptr %l28, !tbaa !29
  %t61 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t61, ptr %l29
  %t62 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t62, ptr %l30, !tbaa !27
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"compiler/check:landing", ptr %t64, i32 0, i32 3
  %t67 = load i32, ptr %t66, !tbaa !23
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t63, i32 %t67)
  store { i64, ptr } %t70, ptr %l34
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t71 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t80 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueLentHere(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t78, { i64, ptr } %t77)
  store %"compiler/diagmsg:Msg" %t80, ptr %l36
  br label %bb6
bb6:
  %t81 = load ptr, ptr %l28, !tbaa !29
  %t82 = load { i64, [3 x i64] }, ptr %l29
  %t83 = load %"compiler/diagmsg:Msg", ptr %l36
  %t84 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t81, { i64, [3 x i64] } %t82, %"compiler/diagmsg:Msg" %t83)
  store i64 %t84, ptr %l37
  br label %bb7
bb7:
  br label %ret
bb8:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/load:Loader", ptr %t91, i32 0, i32 4
  %t94 = load ptr, ptr %t93, !tbaa !29
  store ptr %t94, ptr %l41, !tbaa !29
  %t95 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t95, ptr %l42
  %t96 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t96, ptr %l43, !tbaa !27
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/check:landing", ptr %t98, i32 0, i32 3
  %t101 = load i32, ptr %t100, !tbaa !23
  %t104 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t97, i32 %t101)
  store { i64, ptr } %t104, ptr %l47
  br label %bb9
bb9:
  %t105 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l48, !tbaa !27
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l49, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Body", ptr %t113, i32 0, i32 7
  %t116 = load i64, ptr %l3, !tbaa !24
  %t119 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t115, i64 %t116)
  store %"compiler/typed:Local" %t119, ptr %l53
  br label %bb10
bb10:
  %t120 = getelementptr %"compiler/typed:Local", ptr %l53, i32 0, i32 0
  %t121 = load i32, ptr %t120, !tbaa !23
  %t122 = load ptr, ptr %l49, !tbaa !29
  %t124 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t122, i32 %t121)
  store { i64, ptr } %t124, ptr %l55
  br label %bb11
bb11:
  %t125 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueAlias(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t125, { i64, ptr } %t126, { i64, ptr } %t127)
  store %"compiler/diagmsg:Msg" %t128, ptr %l56
  br label %bb12
bb12:
  %t129 = load ptr, ptr %l41, !tbaa !29
  %t130 = load { i64, [3 x i64] }, ptr %l42
  %t131 = load %"compiler/diagmsg:Msg", ptr %l56
  %t132 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t129, { i64, [3 x i64] } %t130, %"compiler/diagmsg:Msg" %t131)
  store i64 %t132, ptr %l57
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneCount(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l7 = alloca %"compiler/check:laneNode"
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l17 = alloca %"compiler/check:laneNode"
  %l19 = alloca ptr
  %l24 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 39
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t3, i64 %t4)
  store %"compiler/check:laneNode" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 9
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l10, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t14, ptr %l11
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t15)
  store i32 %t17, ptr %l13
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 39
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s1, ptr %t20, i64 %t21)
  store %"compiler/check:laneNode" %t24, ptr %l17
  br label %bb5
bb5:
  %t25 = getelementptr %"compiler/check:laneNode", ptr %l17, i32 0, i32 9
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l11
  %t29 = load i32, ptr %l13, !tbaa !23
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t27, %"compiler/source:Span" %t28, i32 %t29, i64 %t26)
  store ptr %t31, ptr %l19
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t32 = load ptr, ptr %l19, !tbaa !29
  store ptr %t32, ptr %rv
  br label %ret
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l1
  %t37 = getelementptr %"compiler/check:laneVals", ptr %a3, i32 0, i32 0
  %t38 = load i64, ptr %t37, !tbaa !24
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t33, %"compiler/source:Span" %t34, i64 %t38)
  store ptr %t42, ptr %l24
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load ptr, ptr %l24, !tbaa !29
  store ptr %t43, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHoldLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/check:laneNode"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l26 = alloca i1
  %l30 = alloca %"compiler/check:laneNode"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l42 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l67 = alloca i32
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca %"compiler/source:Span"
  %l73 = alloca i32
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t143 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %s0, ptr %t3, i64 %a1, ptr %l3)
  br label %bb2
bb2:
  store ptr %l3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l5, !tbaa !24
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t10)
  store i64 %t12, ptr %l17
  br label %bb4
bb4:
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = load i64, ptr %l17, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  br label %bb59
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l22
  br label %bb8
bb8:
  %t24 = load i64, ptr %l22, !tbaa !24
  store i64 %t24, ptr %l6, !tbaa !24
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr %"compiler/check:laneVals", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v1, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l26
  br label %bb9
bb9:
  %t32 = load i1, ptr %l26, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  br label %bb58
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 39
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store %"compiler/check:laneNode" %t39, ptr %l30
  br label %bb13
bb13:
  %t40 = load %"compiler/check:laneNode", ptr %l30
  store %"compiler/check:laneNode" %t40, ptr %l7
  %t41 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 0
  %t42 = load i64, ptr %t41, !tbaa !24
  %t43 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  %t46 = icmp eq i64 %t42, %t43
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/check:laneVals", ptr %t48, i32 0, i32 1
  store ptr %t50, ptr %l35, !tbaa !29
  %t51 = load i64, ptr %l6, !tbaa !24
  store i64 %t51, ptr %l36, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l37, !tbaa !29
  %t53 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 2
  %t54 = load %"compiler/source:Span", ptr %t53
  store %"compiler/source:Span" %t54, ptr %l38
  %t55 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb16, label %bb17
bb15:
  br label %bb21
bb16:
  call void @__olang_check_failed(ptr @olang_loc_d04702acd6c67beb_c6baeec7be1e7af7)
  unreachable
bb17:
  br label %bb18
bb18:
  %t60 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load ptr, ptr %l37, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l38
  %t65 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v0, ptr %t62, %"compiler/source:Span" %t63, ptr %t61)
  store i64 %t65, ptr %l42
  br label %bb19
bb19:
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = load i64, ptr %l36, !tbaa !24
  %t68 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v1, ptr %t66, i64 %t67, i64 %t68)
  br label %bb20
bb20:
  br label %bb58
bb21:
  %t69 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = icmp eq ptr %t70, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_57a7d7e6d1174c7c_73fda2027ad2ad8)
  unreachable
bb23:
  br label %bb24
bb24:
  %t74 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t75 = load ptr, ptr %t74, !tbaa !29
  store ptr %t75, ptr %l8, !tbaa !29
  %t77 = load ptr, ptr %l8, !tbaa !29
  store ptr %t77, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t78 = load ptr, ptr %l46, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb25, label %bb26
bb25:
  %t81 = load ptr, ptr %l46, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 0
  store i1 %t84, ptr %l47, !tbaa !21
  br label %bb26
bb26:
  %t85 = load i1, ptr %l47, !tbaa !21
  br i1 %t85, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  %t86 = load ptr, ptr %l8, !tbaa !29
  store ptr %t86, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t87 = load ptr, ptr %l50, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb29, label %bb30
bb29:
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 18}
  %t93 = icmp eq i64 %t91, 1
  store i1 %t93, ptr %l51, !tbaa !21
  br label %bb30
bb30:
  %t94 = load i1, ptr %l51, !tbaa !21
  br i1 %t94, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb57
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb56
bb37:
  store %olang.scope zeroinitializer, ptr %s6
  %t95 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = icmp eq ptr %t96, null
  br i1 %t98, label %bb38, label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_fd3b2969d106d871_acdc32576a39b9ed)
  unreachable
bb39:
  br label %bb40
bb40:
  %t100 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %s6, ptr %t101)
  store ptr %t103, ptr %l57
  br label %bb41
bb41:
  %t104 = load ptr, ptr %l57, !tbaa !29
  %t105 = call i64 @compiler_2fcheck_2elocalIdOf(ptr %s6, ptr %t104)
  store i64 %t105, ptr %l58
  br label %bb42
bb42:
  %t106 = load i64, ptr %l58, !tbaa !24
  store i64 %t106, ptr %l9, !tbaa !24
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = icmp slt i64 %t107, 0
  br i1 %t109, label %bb43, label %bb44
bb43:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l61, !tbaa !29
  %t112 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 2
  %t113 = load %"compiler/source:Span", ptr %t112
  store %"compiler/source:Span" %t113, ptr %l62
  %t114 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = icmp eq ptr %t115, null
  br i1 %t117, label %bb45, label %bb46
bb44:
  br label %bb54
bb45:
  call void @__olang_check_failed(ptr @olang_loc_9336e0175c2e9c6a_aabb9d2690ac9706)
  unreachable
bb46:
  br label %bb47
bb47:
  %t119 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t123 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t120)
  store i32 %t123, ptr %l67
  br label %bb48
bb48:
  %t124 = load ptr, ptr %l61, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l62
  %t126 = load i32, ptr %l67, !tbaa !23
  %t127 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t124, %"compiler/source:Span" %t125, i32 %t126)
  store i64 %t127, ptr %l68
  br label %bb49
bb49:
  %t128 = load i64, ptr %l68, !tbaa !24
  store i64 %t128, ptr %l9, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l69, !tbaa !29
  %t130 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 2
  %t131 = load %"compiler/source:Span", ptr %t130
  store %"compiler/source:Span" %t131, ptr %l70
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = trunc i64 %t132 to i32
  store i32 %t134, ptr %l73, !tbaa !23
  %t136 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = icmp eq ptr %t137, null
  br i1 %t139, label %bb50, label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_12a21cc2c4eb057_a597a544841c60b)
  unreachable
bb51:
  br label %bb52
bb52:
  %t141 = getelementptr %"compiler/check:laneNode", ptr %l7, i32 0, i32 7
  %t142 = load ptr, ptr %t141, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 0
  store i64 0, ptr %t144
  %t145 = load %"compiler/source:Span", ptr %l70
  %t146 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t145, 0
  %t147 = load i32, ptr %l73, !tbaa !23
  %t148 = insertvalue { %"compiler/source:Span", i32, ptr } %t146, i32 %t147, 1
  %t150 = insertvalue { %"compiler/source:Span", i32, ptr } %t148, ptr %t142, 2
  %t151 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t150, ptr %t151
  %t152 = load { i64, [3 x i64] }, ptr %t143
  %t154 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t152, ptr %t154
  %t155 = load ptr, ptr %l69, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t155, ptr %t154)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t157 = load ptr, ptr %l2, !tbaa !29
  %t159 = getelementptr %"compiler/check:laneVals", ptr %t157, i32 0, i32 1
  %t160 = load i64, ptr %l6, !tbaa !24
  %t161 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v1, ptr %t159, i64 %t160, i64 %t161)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s6)
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_286fe13485cd942f_1c0d0a1e63f5e7b3)
  unreachable
bb57:
  br label %bb58
bb58:
  %t165 = load i64, ptr %l5, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l5, !tbaa !24
  br label %bb3
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneStore(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, i64 %a5, i64 %a6, ptr %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca [2 x i64]
  %l12 = alloca i64
  %l13 = alloca { i64, i64, i64, i64, i64 }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l32 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca i64
  %l38 = alloca i32
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l49 = alloca %"compiler/check:laneNode"
  %l51 = alloca i32
  %l56 = alloca i64
  %l58 = alloca %"compiler/check:laneNode"
  %l59 = alloca i64
  %l63 = alloca %"compiler/check:laneNode"
  %l70 = alloca ptr
  %l73 = alloca i1
  %l74 = alloca i1
  %l79 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca %"compiler/diagmsg:Msg"
  %l83 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca %"compiler/source:Span"
  %l97 = alloca ptr
  %l98 = alloca { i64, i64, i64, i64, i64 }
  %l104 = alloca ptr
  %l105 = alloca %"compiler/source:Span"
  %l106 = alloca i64
  %l107 = alloca ptr
  %l111 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l116 = alloca i32
  %l120 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca %"compiler/source:Span"
  %l125 = alloca %"compiler/source:Span"
  %l126 = alloca i32
  %l127 = alloca ptr
  %l131 = alloca ptr
  %l133 = alloca %"compiler/typed:Elem"
  %l136 = alloca ptr
  %l141 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t202 = alloca { i64, [4 x i64] }, align 8
  %t233 = alloca { i64, [4 x i64] }, align 8
  %t254 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a5, ptr %l5
  store i64 %a6, ptr %l6
  store ptr %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l5, !tbaa !24
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load i32, ptr %l23, !tbaa !23
  store i32 %t6, ptr %l8, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l24, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load %"compiler/source:Span", ptr %l1
  %t10 = load i64, ptr %l5, !tbaa !24
  %t14 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t8, %"compiler/source:Span" %t9, i64 %t10)
  store ptr %t14, ptr %l28
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l24, !tbaa !29
  %t16 = load ptr, ptr %l28, !tbaa !29
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v0, ptr %t15, ptr %t16)
  store i64 %t17, ptr %l29
  br label %bb3
bb3:
  %t18 = load i64, ptr %l29, !tbaa !24
  store i64 %t18, ptr %l9, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t23 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t19, i32 %a4)
  store i32 %t23, ptr %l32
  br label %bb4
bb4:
  %t24 = load i32, ptr %l32, !tbaa !23
  store i32 %t24, ptr %l10, !tbaa !23
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = insertvalue [2 x i64] undef, i64 %t25, 0
  %t30 = insertvalue [2 x i64] %t28, i64 %t26, 1
  store [2 x i64] %t30, ptr %l11
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l36, !tbaa !29
  %t33 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneBin, !tbaa !24
  store i64 %t33, ptr %l37, !tbaa !24
  %t34 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t34, ptr %l38
  %t35 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t35, ptr %l39
  %t36 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t36, ptr %l40
  %t37 = load i64, ptr %l9, !tbaa !24
  store i64 %t37, ptr %l41, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  store i64 %t38, ptr %l42, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l43, !tbaa !29
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t40, ptr %l44
  %t41 = load i32, ptr %l10, !tbaa !23
  store i32 %t41, ptr %l45, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 39
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t44, i64 %t45)
  store %"compiler/check:laneNode" %t48, ptr %l49
  br label %bb5
bb5:
  %t49 = getelementptr %"compiler/check:laneNode", ptr %l49, i32 0, i32 8
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load ptr, ptr %l43, !tbaa !29
  %t52 = load i32, ptr %l44, !range !{i32 0, i32 114}
  %t53 = load i32, ptr %l45, !tbaa !23
  %t55 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinType(ptr %v0, ptr %t51, i32 %t52, i32 %t53, i32 %t50)
  store i32 %t55, ptr %l51
  br label %bb6
bb6:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = insertvalue { i64, ptr } undef, i64 2, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %l11, 1
  %t60 = load %"compiler/source:Span", ptr %l2
  %t64 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %s0, ptr %t56, { i64, ptr } %t59, %"compiler/source:Span" %t60)
  store i64 %t64, ptr %l56
  br label %bb7
bb7:
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t66 = load i64, ptr %l37, !tbaa !24
  %t67 = load i32, ptr %l38, !range !{i32 0, i32 114}
  %t68 = load %"compiler/source:Span", ptr %l39
  %t69 = load %"compiler/source:Span", ptr %l40
  %t70 = load i64, ptr %l41, !tbaa !24
  %t71 = load i64, ptr %l42, !tbaa !24
  %t72 = load i32, ptr %l51, !tbaa !23
  %t73 = load i64, ptr %l56, !tbaa !24
  %t75 = call %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v0, i64 %t66, i32 %t67, %"compiler/source:Span" %t68, %"compiler/source:Span" %t69, i64 %t70, i64 %t71, i64 -1, ptr null, i32 %t72, i64 %t73, i32 %t65)
  store %"compiler/check:laneNode" %t75, ptr %l58
  br label %bb8
bb8:
  %t76 = load ptr, ptr %l36, !tbaa !29
  %t77 = load %"compiler/check:laneNode", ptr %l58
  %t78 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v0, ptr %t76, %"compiler/check:laneNode" %t77)
  store i64 %t78, ptr %l59
  br label %bb9
bb9:
  %t79 = load i64, ptr %l59, !tbaa !24
  store i64 %t79, ptr %l12, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 39
  %t83 = load i64, ptr %l12, !tbaa !24
  %t86 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t82, i64 %t83)
  store %"compiler/check:laneNode" %t86, ptr %l63
  br label %bb10
bb10:
  %t87 = getelementptr %"compiler/check:laneNode", ptr %l63, i32 0, i32 8
  %t88 = load i32, ptr %t87, !tbaa !23
  %t89 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t92 = icmp eq i32 %t88, %t89
  br i1 %t92, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l1
  %t96 = load i64, ptr %l12, !tbaa !24
  %t100 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %s1, ptr %t94, %"compiler/source:Span" %t95, i64 %t96)
  store ptr %t100, ptr %l70
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i32, ptr %l10, !tbaa !23
  %t105 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t101, i32 %t102)
  store i1 %t105, ptr %l73
  br label %bb15
bb15:
  %t106 = load i1, ptr %l73, !tbaa !21
  br i1 %t106, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb19
bb17:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l10, !tbaa !23
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l79
  br label %bb18
bb18:
  %t117 = load i1, ptr %l79, !tbaa !21
  store i1 %t117, ptr %l74, !tbaa !21
  br label %bb19
bb19:
  %t118 = load i1, ptr %l74, !tbaa !21
  br i1 %t118, label %bb20, label %bb21
bb20:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l80, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t120, ptr %l81
  %t121 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneReferences(ptr %v0)
  store %"compiler/diagmsg:Msg" %t121, ptr %l82
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t122 = load ptr, ptr %l80, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l81
  %t124 = load %"compiler/diagmsg:Msg", ptr %l82
  %t125 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t122, %"compiler/source:Span" %t123, %"compiler/diagmsg:Msg" %t124)
  store i64 %t125, ptr %l83
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i64, ptr %l12, !tbaa !24
  %t128 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHoldLeaves(ptr %v0, ptr %v1, ptr %t126, i64 %t127, ptr %t128)
  br label %bb25
bb25:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l1
  %t134 = load i64, ptr %l12, !tbaa !24
  %t135 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLength(ptr %v0, ptr %v1, ptr %t132, %"compiler/source:Span" %t133, i64 %t134, ptr %t135)
  br label %bb26
bb26:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l91, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t141, ptr %l92
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l1
  %t144 = load i64, ptr %l12, !tbaa !24
  %t145 = load ptr, ptr %l7, !tbaa !29
  %t150 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneCount(ptr %v0, ptr %v1, ptr %v0, ptr %t142, %"compiler/source:Span" %t143, i64 %t144, ptr %t145)
  store ptr %t150, ptr %l97
  br label %bb27
bb27:
  %t151 = load ptr, ptr %l91, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l92
  %t153 = load ptr, ptr %l97, !tbaa !29
  %t154 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t151, %"compiler/source:Span" %t152, ptr %t153, i64 0)
  store { i64, i64, i64, i64, i64 } %t154, ptr %l98
  br label %bb28
bb28:
  %t155 = load { i64, i64, i64, i64, i64 }, ptr %l98
  store { i64, i64, i64, i64, i64 } %t155, ptr %l13
  %t156 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l13, i32 0, i32 0
  %t157 = load i64, ptr %t156, !tbaa !24
  store i64 %t157, ptr %l14, !tbaa !24
  %t159 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l13, i32 0, i32 1
  %t160 = load i64, ptr %t159, !tbaa !24
  store i64 %t160, ptr %l15, !tbaa !24
  %t162 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l13, i32 0, i32 2
  %t163 = load i64, ptr %t162, !tbaa !24
  store i64 %t163, ptr %l16, !tbaa !24
  %t165 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l13, i32 0, i32 3
  %t166 = load i64, ptr %t165, !tbaa !24
  store i64 %t166, ptr %l17, !tbaa !24
  %t168 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l13, i32 0, i32 4
  %t169 = load i64, ptr %t168, !tbaa !24
  store i64 %t169, ptr %l18, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l104, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t172, ptr %l105
  %t173 = load i64, ptr %l12, !tbaa !24
  store i64 %t173, ptr %l106, !tbaa !24
  %t174 = load ptr, ptr %l7, !tbaa !29
  store ptr %t174, ptr %l107, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l1
  %t177 = load i64, ptr %l14, !tbaa !24
  %t181 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t175, %"compiler/source:Span" %t176, i64 %t177)
  store ptr %t181, ptr %l111
  br label %bb29
bb29:
  %t182 = load ptr, ptr %l104, !tbaa !29
  %t183 = load %"compiler/source:Span", ptr %l105
  %t184 = load i64, ptr %l106, !tbaa !24
  %t185 = load ptr, ptr %l107, !tbaa !29
  %t186 = load ptr, ptr %l111, !tbaa !29
  %t187 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %t182, %"compiler/source:Span" %t183, i64 %t184, ptr %t185, ptr %t186)
  store ptr %t187, ptr %l112
  br label %bb30
bb30:
  %t188 = load ptr, ptr %l112, !tbaa !29
  store ptr %t188, ptr %l19, !tbaa !29
  %t189 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t189, ptr %l113
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l8, !tbaa !23
  %t194 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t190, i32 %t191)
  store i32 %t194, ptr %l116
  br label %bb31
bb31:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l1
  %t197 = load i64, ptr %l5, !tbaa !24
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t195, %"compiler/source:Span" %t196, i64 %t197)
  store ptr %t201, ptr %l120
  br label %bb32
bb32:
  store { i64, [4 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t202, i32 0, i32 0
  store i64 2, ptr %t203
  %t204 = load %"compiler/source:Span", ptr %l113
  %t205 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t204, 0
  %t206 = load i32, ptr %l116, !tbaa !23
  %t207 = insertvalue { %"compiler/source:Span", i32, ptr } %t205, i32 %t206, 1
  %t208 = load ptr, ptr %l120, !tbaa !29
  %t209 = insertvalue { %"compiler/source:Span", i32, ptr } %t207, ptr %t208, 2
  %t210 = getelementptr { i64, [4 x i64] }, ptr %t202, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t209, ptr %t210
  %t211 = load { i64, [4 x i64] }, ptr %t202
  %t213 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t211, ptr %t213
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l123, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t216, ptr %l124
  %t217 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t217, ptr %l125
  %t218 = load i32, ptr %l10, !tbaa !23
  store i32 %t218, ptr %l126, !tbaa !23
  store ptr %t213, ptr %l127, !tbaa !29
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load %"compiler/source:Span", ptr %l1
  %t222 = load i64, ptr %l14, !tbaa !24
  %t226 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t220, %"compiler/source:Span" %t221, i64 %t222)
  store ptr %t226, ptr %l131
  br label %bb33
bb33:
  %t227 = load ptr, ptr %l127, !tbaa !29
  %t228 = load ptr, ptr %l131, !tbaa !29
  %t230 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t227, ptr %t228, i32 0)
  store %"compiler/typed:Elem" %t230, ptr %l133
  br label %bb34
bb34:
  %t231 = load %"compiler/typed:Elem", ptr %l133
  %t232 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Elem" %t231, ptr %t232
  store { i64, [4 x i64] } zeroinitializer, ptr %t233
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 0
  store i64 4, ptr %t234
  %t235 = load %"compiler/source:Span", ptr %l125
  %t236 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t235, 0
  %t237 = load i32, ptr %l126, !tbaa !23
  %t238 = insertvalue { %"compiler/source:Span", i32, ptr } %t236, i32 %t237, 1
  %t240 = insertvalue { %"compiler/source:Span", i32, ptr } %t238, ptr %t232, 2
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t240, ptr %t241
  %t242 = load { i64, [4 x i64] }, ptr %t233
  %t244 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t242, ptr %t244
  store ptr %t244, ptr %l136, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load ptr, ptr %l19, !tbaa !29
  %t247 = load i32, ptr %l10, !tbaa !23
  %t248 = load %"compiler/source:Span", ptr %l2
  %t253 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t245, ptr %t246, i32 %t247, %"compiler/source:Span" %t248)
  store ptr %t253, ptr %l141
  br label %bb35
bb35:
  store { i64, [3 x i64] } zeroinitializer, ptr %t254
  %t255 = getelementptr { i64, [3 x i64] }, ptr %t254, i32 0, i32 0
  store i64 1, ptr %t255
  %t256 = load %"compiler/source:Span", ptr %l124
  %t257 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t256, 0
  %t258 = load ptr, ptr %l136, !tbaa !29
  %t259 = insertvalue { %"compiler/source:Span", ptr, ptr } %t257, ptr %t258, 1
  %t260 = load ptr, ptr %l141, !tbaa !29
  %t261 = insertvalue { %"compiler/source:Span", ptr, ptr } %t259, ptr %t260, 2
  %t262 = getelementptr { i64, [3 x i64] }, ptr %t254, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t261, ptr %t262
  %t263 = load { i64, [3 x i64] }, ptr %t254
  %t265 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t263, ptr %t265
  %t266 = load ptr, ptr %l123, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t266, ptr %t265)
  br label %bb36
bb36:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l1
  %t270 = load i64, ptr %l14, !tbaa !24
  %t271 = load i64, ptr %l15, !tbaa !24
  %t272 = load i64, ptr %l16, !tbaa !24
  %t273 = load i64, ptr %l17, !tbaa !24
  %t274 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t268, %"compiler/source:Span" %t269, i64 %t270, i64 %t271, i64 %t272, i64 %t273, i64 %t274)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneUnary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca [1 x i64]
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i32
  %l15 = alloca %"compiler/check:laneNode"
  %l17 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca i64
  %l28 = alloca i32
  %l32 = alloca %"compiler/check:laneNode"
  %l33 = alloca i64
  %l38 = alloca i32
  %l39 = alloca %"compiler/check:laneNode"
  %l40 = alloca i64
  %l41 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %t1, ptr %a3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l10, !tbaa !29
  %t8 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t8, ptr %l11
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 39
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t11, i64 %t12)
  store %"compiler/check:laneNode" %t15, ptr %l15
  br label %bb2
bb2:
  %t16 = getelementptr %"compiler/check:laneNode", ptr %l15, i32 0, i32 8
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = load ptr, ptr %l10, !tbaa !29
  %t19 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t21 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneUnType(ptr %v0, ptr %t18, i32 %t19, i32 %t17)
  store i32 %t21, ptr %l17
  br label %bb3
bb3:
  %t22 = load i32, ptr %l17, !tbaa !23
  store i32 %t22, ptr %l5, !tbaa !23
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = insertvalue [1 x i64] undef, i64 %t23, 0
  store [1 x i64] %t25, ptr %l6
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l20, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t28, ptr %l21
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneUn, !tbaa !24
  store i64 %t30, ptr %l23, !tbaa !24
  %t31 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t31, ptr %l24
  %t32 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t32, ptr %l25
  %t33 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t33, ptr %l26
  %t34 = load i64, ptr %l4, !tbaa !24
  store i64 %t34, ptr %l27, !tbaa !24
  %t35 = load i32, ptr %l5, !tbaa !23
  store i32 %t35, ptr %l28, !tbaa !23
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 39
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t38, i64 %t39)
  store %"compiler/check:laneNode" %t42, ptr %l32
  br label %bb4
bb4:
  %t43 = getelementptr %"compiler/check:laneNode", ptr %l32, i32 0, i32 9
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l33, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = insertvalue { i64, ptr } undef, i64 1, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %l6, 1
  %t49 = load i32, ptr %l5, !tbaa !23
  %t53 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %s0, ptr %t45, { i64, ptr } %t48, i32 %t49)
  store i32 %t53, ptr %l38
  br label %bb5
bb5:
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = load i32, ptr %l24, !range !{i32 0, i32 114}
  %t56 = load %"compiler/source:Span", ptr %l25
  %t57 = load %"compiler/source:Span", ptr %l26
  %t58 = load i64, ptr %l27, !tbaa !24
  %t59 = load i32, ptr %l28, !tbaa !23
  %t60 = load i64, ptr %l33, !tbaa !24
  %t61 = load i32, ptr %l38, !tbaa !23
  %t62 = call %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v0, i64 %t54, i32 %t55, %"compiler/source:Span" %t56, %"compiler/source:Span" %t57, i64 %t58, i64 -1, i64 -1, ptr null, i32 %t59, i64 %t60, i32 %t61)
  store %"compiler/check:laneNode" %t62, ptr %l39
  br label %bb6
bb6:
  %t63 = load ptr, ptr %l22, !tbaa !29
  %t64 = load %"compiler/check:laneNode", ptr %l39
  %t65 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v0, ptr %t63, %"compiler/check:laneNode" %t64)
  store i64 %t65, ptr %l40
  br label %bb7
bb7:
  %t66 = load ptr, ptr %l20, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l21
  %t68 = load i64, ptr %l40, !tbaa !24
  %t69 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v2, ptr %t66, %"compiler/source:Span" %t67, i64 %t68)
  store ptr %t69, ptr %l41
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t70 = load ptr, ptr %l41, !tbaa !29
  store ptr %t70, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
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
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t16, i32 %t17)
  store i64 %t20, ptr %l12
  br label %bb6
bb6:
  %t21 = load i64, ptr %l12, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowLocal(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store i64 %t41, ptr %l21
  br label %bb13
bb13:
  %t42 = load i64, ptr %l21, !tbaa !24
  store i64 %t42, ptr %rv
  br label %ret
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i64 -1, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_77892b47b9a99b47_46cd468a4d441f7b)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca i32
  %l20 = alloca i32
  %l22 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l39 = alloca i1
  %l45 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t24, i32 0, i32 3
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb23
bb5:
  %t28 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t28, ptr %l18
  store i32 %a2, ptr %l20
  %t32 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l18, ptr %l20)
  store i1 %t32, ptr %l22
  br label %bb6
bb6:
  %t33 = load i1, ptr %l22, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t37 = insertvalue { i64, i64 } %t36, i64 -1, 1
  store { i64, i64 } %t37, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l4, !tbaa !29
  store ptr %t39, ptr %l6, !tbaa !29
  %t41 = load ptr, ptr %l5, !tbaa !29
  store ptr %t41, ptr %l7, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t47 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  store i1 %t47, ptr %l29
  br label %bb10
bb10:
  %t48 = load i1, ptr %l29, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  store i1 %t53, ptr %l33
  br label %bb13
bb12:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  %t54 = load i1, ptr %l33, !tbaa !21
  %t55 = xor i1 %t54, true
  store i1 %t55, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l30, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load ptr, ptr %l5, !tbaa !29
  store ptr %t58, ptr %l6, !tbaa !29
  %t60 = load ptr, ptr %l4, !tbaa !29
  store ptr %t60, ptr %l7, !tbaa !29
  br label %bb21
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t66 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  store i1 %t66, ptr %l39
  br label %bb17
bb17:
  %t67 = load i1, ptr %l39, !tbaa !21
  %t68 = xor i1 %t67, true
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t70 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t71 = insertvalue { i64, i64 } %t70, i64 -1, 1
  store { i64, i64 } %t71, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l6, !tbaa !29
  %t75 = load ptr, ptr %l7, !tbaa !29
  %t79 = call { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalCase(ptr %v0, ptr %v1, ptr %v1, ptr %t73, ptr %t74, ptr %t75)
  store { i64, i64 } %t79, ptr %l45
  br label %bb22
bb22:
  %t80 = load { i64, i64 }, ptr %l45
  store { i64, i64 } %t80, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t81 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t82 = insertvalue { i64, i64 } %t81, i64 -1, 1
  store { i64, i64 } %t82, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_5f1ab9969ad5ed2d_61c4fa41275be331)
  unreachable
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca i64
  %l19 = alloca i64
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t16, i32 %t17)
  store i64 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i64, ptr %l13, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  %t32 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedField(ptr %v0, ptr %t26, i64 %t27, i32 %a2)
  store i64 %t32, ptr %l19
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
bb10:
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_bddcfdd9cfe1623c_a2c83caf107f9198)
  unreachable
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l13 = alloca i32
  %l20 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i1
  %l47 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t4, i32 %a1, i64 %a2)
  store i32 %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load i32, ptr %l13, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load i32, ptr %l3, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l20, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l25
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = load i32, ptr %l25, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t35, i32 %t36)
  store { i64, ptr } %t37, ptr %l26
  br label %bb6
bb6:
  %t38 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t38, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb9:
  br label %bb10
bb10:
  %t51 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 %t52
  %t57 = load i32, ptr %t56, !tbaa !33
  store i32 %t57, ptr %l7, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l7, !tbaa !23
  %t68 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l40
  br label %bb11
bb11:
  %t69 = load i1, ptr %l40, !tbaa !21
  br i1 %t69, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb13:
  br label %bb14
bb14:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l7, !tbaa !23
  %t74 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l43
  br label %bb15
bb15:
  %t75 = load i32, ptr %l43, !tbaa !23
  store i32 %t75, ptr %l8, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l8, !tbaa !23
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l46
  br label %bb16
bb16:
  %t81 = load i1, ptr %l46, !tbaa !21
  br i1 %t81, label %bb17, label %bb18
bb17:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  store ptr %t87, ptr %l50, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l8, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l55
  br label %bb19
bb18:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb21
bb19:
  %t98 = load ptr, ptr %l50, !tbaa !29
  %t99 = load i32, ptr %l55, !tbaa !23
  %t100 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t98, i32 %t99)
  store { i64, ptr } %t100, ptr %l56
  br label %bb20
bb20:
  %t101 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  %t104 = icmp eq i64 %t102, 0
  store i1 %t104, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t106 = load i1, ptr %l47, !tbaa !21
  br i1 %t106, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  %t108 = load i64, ptr %l5, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l5, !tbaa !24
  br label %bb7
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l14 = alloca ptr
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l52 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
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
  store ptr %t9, ptr %l9, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l11
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l11, !tbaa !29
  %t15 = getelementptr %"compiler/check:frame", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t17, i64 %t16)
  store ptr %t19, ptr %l14
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l3, !tbaa !29
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_cabdf486839d2fe5_195cd685fa5544d9)
  unreachable
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/source:Source", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t35 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  store i64 %t38, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t46 = icmp slt i64 %t40, %t43
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t48, ptr %l29, !tbaa !27
  %t49 = load i64, ptr %l5, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 %t49
  %t54 = load i8, ptr %t53, !tbaa !32
  %t56 = icmp eq i8 %t54, 32
  br i1 %t56, label %bb9, label %bb10
bb8:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb12
bb9:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb11
bb10:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t58, ptr %l34, !tbaa !27
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 %t59
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = icmp eq i8 %t64, 41
  store i1 %t66, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t68 = load i1, ptr %l33, !tbaa !21
  store i1 %t68, ptr %l28, !tbaa !21
  br label %bb12
bb12:
  %t69 = load i1, ptr %l28, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t72 = load i64, ptr %l5, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  br label %bb6
bb17:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t82 = icmp sge i64 %t76, %t79
  br i1 %t82, label %bb18, label %bb19
bb18:
  %t84 = load %"compiler/source:Span", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t84, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t88 = trunc i64 %t86 to i32
  %t89 = load i64, ptr %l5, !tbaa !24
  %t93 = add i64 %t89, %a2
  %t95 = trunc i64 %t93 to i32
  %t98 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t88, i32 %t95)
  store %"compiler/source:Span" %t98, ptr %l52
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load %"compiler/source:Span", ptr %l52
  store %"compiler/source:Span" %t99, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epower(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l22 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca ptr
  %l30 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i32
  %l38 = alloca i32
  %l40 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca ptr
  %l46 = alloca i32
  %l53 = alloca ptr
  %l56 = alloca ptr
  %l59 = alloca i64
  %l61 = alloca i1
  %l62 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l73 = alloca i32
  %l74 = alloca i32
  %l75 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca i32
  %l92 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca ptr
  %l101 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t2)
  store %"compiler/source:Span" %t4, ptr %l12
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t5)
  store %"compiler/source:Span" %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l10, !tbaa !29
  %t9 = load %"compiler/source:Span", ptr %l12
  %t10 = load %"compiler/source:Span", ptr %l14
  %t11 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t8, %"compiler/source:Span" %t9, %"compiler/source:Span" %t10, i64 2)
  store %"compiler/source:Span" %t11, ptr %l15
  br label %bb3
bb3:
  %t12 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t12, ptr %l5
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t17 = icmp ne i32 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l4, !tbaa !23
  %t23 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l22
  br label %bb6
bb5:
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t24, ptr %l19, !tbaa !23
  br label %bb7
bb6:
  %t26 = load i32, ptr %l22, !tbaa !23
  store i32 %t26, ptr %l19, !tbaa !23
  br label %bb7
bb7:
  %t27 = load i32, ptr %l19, !tbaa !23
  store i32 %t27, ptr %l6, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l24, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l25, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  store ptr %t30, ptr %l27, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t36 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  store i1 %t36, ptr %l30
  br label %bb8
bb8:
  %t37 = load i1, ptr %l30, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l6, !tbaa !23
  %t42 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t38, i32 %t39)
  store i1 %t42, ptr %l34
  br label %bb11
bb10:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb12
bb11:
  %t43 = load i1, ptr %l34, !tbaa !21
  store i1 %t43, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t44 = load i1, ptr %l31, !tbaa !21
  br i1 %t44, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l38
  br label %bb15
bb14:
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t50, ptr %l35, !tbaa !23
  br label %bb16
bb15:
  %t52 = load i32, ptr %l38, !tbaa !23
  store i32 %t52, ptr %l35, !tbaa !23
  br label %bb16
bb16:
  %t53 = load ptr, ptr %l25, !tbaa !29
  %t54 = load ptr, ptr %l27, !tbaa !29
  %t55 = load i32, ptr %l35, !tbaa !23
  %t56 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t53, ptr %t54, i32 %t55)
  store ptr %t56, ptr %l40
  br label %bb17
bb17:
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t57)
  store %"compiler/source:Span" %t59, ptr %l42
  br label %bb18
bb18:
  %t60 = load ptr, ptr %l24, !tbaa !29
  %t61 = load ptr, ptr %l40, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l42
  %t63 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t60, ptr %t61, %"compiler/source:Span" %t62)
  store ptr %t63, ptr %l43
  br label %bb19
bb19:
  %t64 = load ptr, ptr %l43, !tbaa !29
  store ptr %t64, ptr %l7, !tbaa !29
  %t65 = load ptr, ptr %l7, !tbaa !29
  %t68 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t65)
  store i32 %t68, ptr %l46
  br label %bb20
bb20:
  %t69 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t70 = load i32, ptr %l46, !tbaa !23
  %t72 = icmp eq i32 %t70, %t69
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t81 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t74, ptr %t75, i32 %t77)
  store ptr %t81, ptr %l53
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l1
  %t86 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t82, %"compiler/source:Span" %t83)
  store ptr %t86, ptr %l56
  br label %bb24
bb24:
  %t87 = load ptr, ptr %l56, !tbaa !29
  store ptr %t87, ptr %rv
  br label %ret
bb25:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v3, ptr %t88, ptr %t89)
  store i64 %t92, ptr %l59
  br label %bb26
bb26:
  %t93 = load i64, ptr %l59, !tbaa !24
  %t94 = icmp sge i64 %t93, 0
  br i1 %t94, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb31
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l62, !tbaa !29
  %t97 = load ptr, ptr %l7, !tbaa !29
  %t100 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t97)
  store i32 %t100, ptr %l65
  br label %bb29
bb29:
  %t101 = load ptr, ptr %l62, !tbaa !29
  %t102 = load i32, ptr %l65, !tbaa !23
  %t103 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t101, i32 %t102)
  store i1 %t103, ptr %l66
  br label %bb30
bb30:
  %t104 = load i1, ptr %l66, !tbaa !21
  store i1 %t104, ptr %l61, !tbaa !21
  br label %bb31
bb31:
  %t105 = load i1, ptr %l61, !tbaa !21
  br i1 %t105, label %bb32, label %bb33
bb32:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l67, !tbaa !29
  %t107 = load ptr, ptr %l3, !tbaa !29
  store ptr %t107, ptr %l68, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l69, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l7, !tbaa !29
  %t114 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemType(ptr %v0, ptr %v3, ptr %t109, ptr %t110)
  store i32 %t114, ptr %l73
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t115 = load ptr, ptr %l69, !tbaa !29
  %t116 = load i32, ptr %l73, !tbaa !23
  %t117 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowExponent(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t117, ptr %l74
  br label %bb35
bb35:
  %t118 = load ptr, ptr %l67, !tbaa !29
  %t119 = load ptr, ptr %l68, !tbaa !29
  %t120 = load i32, ptr %l74, !tbaa !23
  %t121 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v2, ptr %v3, ptr %t118, ptr %t119, i32 %t120)
  store ptr %t121, ptr %l75
  br label %bb36
bb36:
  %t122 = load ptr, ptr %l75, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l1
  %t125 = load %"compiler/source:Span", ptr %l5
  %t126 = load ptr, ptr %l7, !tbaa !29
  %t134 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinary(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t123, %"compiler/source:Span" %t124, %"compiler/source:Span" %t125, i32 71, ptr %t126, ptr %t122)
  store ptr %t134, ptr %l82
  br label %bb37
bb37:
  %t135 = load ptr, ptr %l82, !tbaa !29
  store ptr %t135, ptr %rv
  br label %ret
bb38:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l83, !tbaa !29
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l84, !tbaa !29
  %t138 = load ptr, ptr %l3, !tbaa !29
  store ptr %t138, ptr %l86, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l87, !tbaa !29
  %t141 = load ptr, ptr %l7, !tbaa !29
  %t144 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t141)
  store i32 %t144, ptr %l90
  br label %bb39
bb39:
  %t145 = load ptr, ptr %l87, !tbaa !29
  %t146 = load i32, ptr %l90, !tbaa !23
  %t147 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowExponent(ptr %v0, ptr %t145, i32 %t146)
  store i32 %t147, ptr %l91
  br label %bb40
bb40:
  %t148 = load ptr, ptr %l84, !tbaa !29
  %t149 = load ptr, ptr %l86, !tbaa !29
  %t150 = load i32, ptr %l91, !tbaa !23
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t148, ptr %t149, i32 %t150)
  store ptr %t151, ptr %l92
  br label %bb41
bb41:
  %t152 = load ptr, ptr %l3, !tbaa !29
  %t154 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t152)
  store %"compiler/source:Span" %t154, ptr %l94
  br label %bb42
bb42:
  %t155 = load ptr, ptr %l83, !tbaa !29
  %t156 = load ptr, ptr %l92, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l94
  %t158 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t155, ptr %t156, %"compiler/source:Span" %t157)
  store ptr %t158, ptr %l95
  br label %bb43
bb43:
  %t159 = load ptr, ptr %l95, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l1
  %t162 = load %"compiler/source:Span", ptr %l5
  %t163 = load ptr, ptr %l7, !tbaa !29
  %t170 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowValues(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t160, %"compiler/source:Span" %t161, %"compiler/source:Span" %t162, ptr %t163, ptr %t159)
  store ptr %t170, ptr %l101
  br label %bb44
bb44:
  %t171 = load ptr, ptr %l101, !tbaa !29
  store ptr %t171, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epuns(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l38 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i1
  %l59 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb31
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr ptr, ptr %t23, i64 %t20
  %t25 = load ptr, ptr %t24, !tbaa !39
  store ptr %t25, ptr %l6, !tbaa !29
  %t27 = load ptr, ptr %l6, !tbaa !29
  store ptr %t27, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t28 = load ptr, ptr %l25, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l25, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 22}
  %t34 = icmp eq i64 %t32, 1
  store i1 %t34, ptr %l26, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l26, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb8, label %bb9
bb8:
  br label %bb30
bb9:
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", ptr }, ptr %t40, i32 0, i32 0
  %t42 = load %"compiler/source:Span", ptr %t41
  store %"compiler/source:Span" %t42, ptr %l7
  %t44 = load ptr, ptr %l6, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l9, !tbaa !29
  %t52 = load ptr, ptr %l9, !tbaa !29
  %t54 = getelementptr %"compiler/ast:VarDecl", ptr %t52, i32 0, i32 5
  %t55 = load i1, ptr %t54, !tbaa !21
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb13
bb12:
  %t59 = load ptr, ptr %l9, !tbaa !29
  %t61 = getelementptr %"compiler/ast:VarDecl", ptr %t59, i32 0, i32 2
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  store i1 %t66, ptr %l38, !tbaa !21
  br label %bb13
bb13:
  %t68 = load i1, ptr %l38, !tbaa !21
  br i1 %t68, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb15:
  %t69 = load ptr, ptr %l9, !tbaa !29
  %t71 = getelementptr %"compiler/ast:VarDecl", ptr %t69, i32 0, i32 3
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t76 = icmp sgt i64 %t74, 0
  store i1 %t76, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t78 = load i1, ptr %l43, !tbaa !21
  br i1 %t78, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb19
bb18:
  %t79 = load ptr, ptr %l9, !tbaa !29
  %t81 = getelementptr %"compiler/ast:VarDecl", ptr %t79, i32 0, i32 4
  %t82 = load i1, ptr %t81, !tbaa !21
  store i1 %t82, ptr %l48, !tbaa !21
  br label %bb19
bb19:
  %t84 = load i1, ptr %l48, !tbaa !21
  br i1 %t84, label %bb20, label %bb21
bb20:
  br label %bb30
bb21:
  br label %bb22
bb22:
  %t85 = load ptr, ptr %l9, !tbaa !29
  %t87 = getelementptr %"compiler/ast:VarDecl", ptr %t85, i32 0, i32 0
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  store { i64, ptr } %t88, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  store i64 %t92, ptr %l12, !tbaa !24
  br label %bb23
bb23:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t95 = load i64, ptr %l12, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t102 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t102, ptr %l59, !tbaa !27
  %t103 = load i64, ptr %l11, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr i32, ptr %t106, i64 %t103
  %t108 = load i32, ptr %t107, !tbaa !33
  %t110 = load ptr, ptr %lp2
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v2, ptr %t110, i32 %t108, i1 true)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t114 = load i64, ptr %l11, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l11, !tbaa !24
  br label %bb23
bb29:
  br label %bb30
bb30:
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l4, !tbaa !24
  br label %bb2
bb31:
  %t122 = load ptr, ptr %lp2
  %t123 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t122
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t123, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epureAsked(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:factRead"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:effectPlace"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/check:factRead"
  %l18 = alloca i1
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca %"compiler/check:effectPlace"
  %l36 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 60
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eLen_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/check:factRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eAt_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/check:factRead" %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load %"compiler/check:factRead", ptr %l16
  store %"compiler/check:factRead" %t20, ptr %l3
  %t21 = getelementptr %"compiler/check:factRead", ptr %l3, i32 0, i32 2
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t22, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t24, ptr %l18
  br label %bb7
bb7:
  %t25 = load i1, ptr %l18, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
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
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb1
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 62
  store ptr %t33, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb13
bb13:
  %t35 = load i64, ptr %l5, !tbaa !24
  store i64 %t35, ptr %l24, !tbaa !24
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l26
  br label %bb14
bb14:
  %t39 = load i64, ptr %l24, !tbaa !24
  %t40 = load i64, ptr %l26, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb15, label %bb16
bb15:
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t45 = load ptr, ptr %l4, !tbaa !29
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = call %"compiler/check:effectPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eAt_H2c6933398e42ebe4f85d63d17b1157eb(ptr %v0, ptr %v0, ptr %t45, i64 %t46)
  store %"compiler/check:effectPlace" %t49, ptr %l31
  br label %bb18
bb18:
  %t50 = load %"compiler/check:effectPlace", ptr %l31
  store %"compiler/check:effectPlace" %t50, ptr %l6
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = getelementptr %"compiler/check:effectPlace", ptr %l6, i32 0, i32 5
  %t58 = load i32, ptr %t57, !tbaa !23
  %t61 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t56, i32 %t58)
  store i64 %t61, ptr %l36
  br label %bb19
bb19:
  %t62 = load i64, ptr @G_2ecompiler_2ftypes_2ePromPure, !tbaa !24
  %t63 = load i64, ptr %l36, !tbaa !24
  %t65 = and i64 %t63, %t62
  %t67 = icmp ne i64 %t65, 0
  br i1 %t67, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l5, !tbaa !24
  br label %bb13
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i32
  %l26 = alloca i64
  %l28 = alloca i64
  %l30 = alloca i64
  %l35 = alloca i32
  %l40 = alloca i32
  %l45 = alloca i32
  %l47 = alloca i64
  %l52 = alloca i64
  %l57 = alloca ptr
  %l62 = alloca i32
  %l64 = alloca i32
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l14, !tbaa !24
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l16
  br label %bb3
bb3:
  %t11 = load i64, ptr %l14, !tbaa !24
  %t12 = load i64, ptr %l16, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb30
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l21
  br label %bb7
bb7:
  %t22 = load i32, ptr %l21, !tbaa !23
  store i32 %t22, ptr %l6, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l6, !tbaa !23
  %t32 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t28, i32 %t29)
  store i64 %t32, ptr %l26
  br label %bb8
bb8:
  %t33 = load i64, ptr %l26, !tbaa !65
  store i64 %t33, ptr %l7, !tbaa !65
  store ptr %a2, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l9, !tbaa !24
  store i64 %t36, ptr %l28, !tbaa !24
  %t37 = load ptr, ptr %l8, !tbaa !29
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t37)
  store i64 %t39, ptr %l30
  br label %bb10
bb10:
  %t40 = load i64, ptr %l28, !tbaa !24
  %t41 = load i64, ptr %l30, !tbaa !24
  %t42 = icmp slt i64 %t40, %t41
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb11, label %bb12
bb11:
  br label %bb22
bb12:
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l8, !tbaa !29
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t46, i64 %t47)
  store i32 %t50, ptr %l35
  br label %bb14
bb14:
  %t51 = load i32, ptr %l35, !tbaa !23
  store i32 %t51, ptr %l10, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l6, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l40
  br label %bb15
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l10, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l45
  br label %bb16
bb16:
  %t72 = load i32, ptr %l40, !tbaa !23
  %t73 = load i32, ptr %l45, !tbaa !23
  %t74 = icmp eq i32 %t72, %t73
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t76 = load i64, ptr %l7, !tbaa !65
  store i64 %t76, ptr %l47, !tbaa !65
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l10, !tbaa !23
  %t86 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t82, i32 %t83)
  store i64 %t86, ptr %l52
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t87 = load i64, ptr %l52, !tbaa !65
  %t88 = xor i64 %t87, -1
  %t89 = load i64, ptr %l47, !tbaa !65
  %t91 = and i64 %t89, %t88
  store i64 %t91, ptr %l7, !tbaa !65
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l9, !tbaa !24
  br label %bb9
bb22:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l57, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 2
  %t104 = load i32, ptr %l6, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l62
  br label %bb23
bb23:
  %t108 = load i64, ptr %l7, !tbaa !65
  %t109 = load ptr, ptr %l57, !tbaa !29
  %t110 = load i32, ptr %l62, !tbaa !23
  %t112 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %t109, i32 %t110, i64 %t108)
  store i32 %t112, ptr %l64
  br label %bb24
bb24:
  %t113 = load i32, ptr %l64, !tbaa !23
  store i32 %t113, ptr %l11, !tbaa !23
  %t114 = load i32, ptr %l11, !tbaa !23
  %t115 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t118 = icmp ne i32 %t114, %t115
  br i1 %t118, label %bb25, label %bb26
bb25:
  %t120 = load ptr, ptr %lp3
  %t121 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %t120, i32 %t121)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t124 = load i64, ptr %l5, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l5, !tbaa !24
  br label %bb2
bb30:
  %t128 = load ptr, ptr %lp3
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t128
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i32
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i32
  %l34 = alloca i32
  %l39 = alloca i32
  %l41 = alloca ptr
  %l46 = alloca i32
  %l51 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i32
  %l68 = alloca ptr
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l13, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l15
  br label %bb3
bb3:
  %t9 = load i64, ptr %l13, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb30
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t15, i64 %t16)
  store i32 %t19, ptr %l20
  br label %bb7
bb7:
  %t20 = load i32, ptr %l20, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  store ptr %a2, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t23 = load i64, ptr %l8, !tbaa !24
  store i64 %t23, ptr %l22, !tbaa !24
  %t24 = load ptr, ptr %l7, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t24)
  store i64 %t26, ptr %l24
  br label %bb9
bb9:
  %t27 = load i64, ptr %l22, !tbaa !24
  %t28 = load i64, ptr %l24, !tbaa !24
  %t29 = icmp slt i64 %t27, %t28
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb10, label %bb11
bb10:
  br label %bb28
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t33, i64 %t34)
  store i32 %t37, ptr %l29
  br label %bb13
bb13:
  %t38 = load i32, ptr %l29, !tbaa !23
  store i32 %t38, ptr %l9, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l6, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l34
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l9, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l39
  br label %bb15
bb15:
  %t59 = load i32, ptr %l34, !tbaa !23
  %t60 = load i32, ptr %l39, !tbaa !23
  %t61 = icmp ne i32 %t59, %t60
  br i1 %t61, label %bb16, label %bb17
bb16:
  br label %bb27
bb17:
  br label %bb18
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l41, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l6, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l46
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l6, !tbaa !23
  %t83 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t79, i32 %t80)
  store i64 %t83, ptr %l51
  br label %bb20
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l9, !tbaa !23
  %t93 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t89, i32 %t90)
  store i64 %t93, ptr %l56
  br label %bb21
bb21:
  %t94 = load i64, ptr %l51, !tbaa !65
  %t95 = load i64, ptr %l56, !tbaa !65
  %t96 = and i64 %t94, %t95
  %t97 = load ptr, ptr %l41, !tbaa !29
  %t98 = load i32, ptr %l46, !tbaa !23
  %t100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %t97, i32 %t98, i64 %t96)
  store i32 %t100, ptr %l58
  br label %bb22
bb22:
  %t101 = load i32, ptr %l58, !tbaa !23
  store i32 %t101, ptr %l10, !tbaa !23
  %t102 = load i32, ptr %l10, !tbaa !23
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t106 = icmp ne i32 %t102, %t103
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t108)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l8, !tbaa !24
  br label %bb8
bb28:
  br label %bb29
bb29:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l5, !tbaa !24
  br label %bb2
bb30:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l68, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t123 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %v3, ptr %t120, ptr %l3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %l71
  br label %bb31
bb31:
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  %t125 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %t125
  %t126 = load ptr, ptr %l68, !tbaa !29
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v3, ptr %v3, ptr %t126, ptr %t125)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l73
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espreadCompr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"compiler/check:reflList"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca %"compiler/check:reflList"
  %l18 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca %"compiler/diagmsg:Msg"
  %l23 = alloca i64
  %l25 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i64
  %l61 = alloca i1
  %l68 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l83 = alloca %"compiler/ast:Compr"
  %s0 = alloca %olang.scope
  %t154 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Compr", ptr %t2, i32 0, i32 4
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store %"compiler/check:reflList" %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load %"compiler/check:reflList", ptr %l15
  store %"compiler/check:reflList" %t9, ptr %l4
  %t10 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 0
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l18, !tbaa !29
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Compr", ptr %t16, i32 0, i32 4
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t19)
  store %"compiler/source:Span" %t21, ptr %l21
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t22 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflArgCompr(ptr %v0)
  store %"compiler/diagmsg:Msg" %t22, ptr %l22
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l21
  %t25 = load %"compiler/diagmsg:Msg", ptr %l22
  %t26 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t23, %"compiler/source:Span" %t24, %"compiler/diagmsg:Msg" %t25)
  store i64 %t26, ptr %l23
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 151
  store i1 true, ptr %t29, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l25, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Compr", ptr %t31, i32 0, i32 4
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t34)
  store %"compiler/source:Span" %t36, ptr %l28
  br label %bb8
bb8:
  %t37 = load %"compiler/check:reflList", ptr %l4
  %t38 = load ptr, ptr %l25, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l28
  %t41 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %s0, ptr %t38, %"compiler/source:Span" %t39, %"compiler/check:reflList" %t37)
  store { i64, ptr } %t41, ptr %l30
  br label %bb9
bb9:
  %t42 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t42, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb15
bb12:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = sub i64 %t65, 1
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = sdiv i64 %t67, %t68
  store i64 %t71, ptr %l39, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb14
bb14:
  %t73 = load i64, ptr %l39, !tbaa !24
  store i64 %t73, ptr %l36, !tbaa !24
  br label %bb15
bb15:
  %t74 = load i64, ptr %l36, !tbaa !24
  store i64 %t74, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb17, label %bb18
bb17:
  br label %bb30
bb18:
  br label %bb19
bb19:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l11, !tbaa !24
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Compr", ptr %t93, i32 0, i32 5
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = icmp eq ptr %t96, null
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb20, label %bb21
bb20:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t104 = load %"compiler/check:reflList", ptr %l4
  %t105 = load i64, ptr %l11, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i64, ptr %t108, i64 %t105
  %t110 = load i64, ptr %t109, !tbaa !34
  %t111 = load i64, ptr %l11, !tbaa !24
  %t117 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflKeeps(ptr %v0, ptr %v1, ptr %t102, ptr %t103, %"compiler/check:reflList" %t104, i64 %t110, i64 %t111)
  store i1 %t117, ptr %l68
  br label %bb22
bb21:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb23
bb22:
  %t118 = load i1, ptr %l68, !tbaa !21
  %t119 = xor i1 %t118, true
  store i1 %t119, ptr %l61, !tbaa !21
  br label %bb23
bb23:
  %t121 = load i1, ptr %l61, !tbaa !21
  br i1 %t121, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  store ptr %a3, ptr %l70, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l71
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr %"compiler/ast:Compr", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load ptr, ptr %l2, !tbaa !29
  %t130 = getelementptr %"compiler/ast:Compr", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t134 = getelementptr %"compiler/ast:Compr", ptr %t132, i32 0, i32 2
  %t135 = load i32, ptr %t134, !tbaa !23
  %t136 = load ptr, ptr %l2, !tbaa !29
  %t138 = getelementptr %"compiler/ast:Compr", ptr %t136, i32 0, i32 3
  %t139 = load i32, ptr %t138, !tbaa !23
  %t140 = load ptr, ptr %l2, !tbaa !29
  %t142 = getelementptr %"compiler/ast:Compr", ptr %t140, i32 0, i32 4
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t144 = load i64, ptr %l11, !tbaa !24
  %t151 = call %"compiler/ast:Compr" @compiler_2fast_3aCompr_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v2, ptr %v2, ptr %t127, ptr %t131, i32 %t135, i32 %t139, ptr %t143, ptr null, i1 true, i64 %t144)
  store %"compiler/ast:Compr" %t151, ptr %l83
  br label %bb27
bb27:
  %t152 = load %"compiler/ast:Compr", ptr %l83
  %t153 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/ast:Compr" %t152, ptr %t153
  store { i64, [4 x i64] } zeroinitializer, ptr %t154
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t154, i32 0, i32 0
  store i64 19, ptr %t155
  %t156 = load %"compiler/source:Span", ptr %l71
  %t157 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t156, 0
  %t159 = insertvalue { %"compiler/source:Span", ptr } %t157, ptr %t153, 1
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t154, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t159, ptr %t160
  %t161 = load { i64, [4 x i64] }, ptr %t154
  %t163 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t161, ptr %t163
  %t164 = load ptr, ptr %l70, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v2, ptr %t164, ptr %t163)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t166 = load i64, ptr %l10, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l10, !tbaa !24
  br label %bb16
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estaticArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca ptr
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca ptr
  %l22 = alloca i64
  %l26 = alloca i1
  %l29 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i32
  %l42 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca i1
  %l63 = alloca i1
  %l66 = alloca ptr
  %l71 = alloca i32
  %l73 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l83 = alloca i1
  %l84 = alloca i32
  %l87 = alloca ptr
  %l89 = alloca i32
  %l91 = alloca i32
  %l97 = alloca i64
  %l99 = alloca ptr
  %l109 = alloca i64
  %l112 = alloca i64
  %l131 = alloca { i64, ptr }
  %l134 = alloca ptr
  %l135 = alloca i1
  %l144 = alloca ptr
  %l145 = alloca i1
  %l150 = alloca i64
  %l151 = alloca i64
  %l156 = alloca ptr
  %l157 = alloca i1
  %l167 = alloca %"compiler/source:Span"
  %l168 = alloca i32
  %l170 = alloca ptr
  %rv = alloca ptr
  %t171 = alloca { i64, [2 x i64] }, align 8
  %t188 = alloca i64
  %t309 = alloca { i64, [2 x i64] }, align 8
  %t364 = alloca { i64, [2 x i64] }, align 8
  %t372 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t6, i32 %t7)
  store i64 %t10, ptr %l22
  br label %bb1
bb1:
  %t11 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t12 = load i64, ptr %l22, !tbaa !24
  %t14 = and i64 %t12, %t11
  %t16 = icmp ne i64 %t14, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb6
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l29, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l34
  br label %bb4
bb4:
  %t34 = load ptr, ptr %l29, !tbaa !29
  %t35 = load i32, ptr %l34, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l35
  br label %bb5
bb5:
  %t37 = load i32, ptr %l35, !range !{i32 0, i32 33}
  %t39 = trunc i64 19 to i32
  %t40 = icmp eq i32 %t37, %t39
  %t42 = xor i1 %t40, true
  store i1 %t42, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t44 = load i1, ptr %l26, !tbaa !21
  br i1 %t44, label %bb7, label %bb8
bb7:
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  store ptr %t51, ptr %l42, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l47
  br label %bb10
bb10:
  %t62 = load ptr, ptr %l42, !tbaa !29
  %t63 = load i32, ptr %l47, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t64, ptr %l48
  br label %bb11
bb11:
  %t65 = load i32, ptr %l48, !tbaa !23
  store i32 %t65, ptr %l3, !tbaa !23
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t67 = load ptr, ptr %l49, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb12, label %bb13
bb12:
  %t70 = load ptr, ptr %l49, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 7
  store i1 %t73, ptr %l50, !tbaa !21
  br label %bb13
bb13:
  %t74 = load i1, ptr %l50, !tbaa !21
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 0
  %t79 = load %"compiler/source:Span", ptr %t78
  store %"compiler/source:Span" %t79, ptr %l4
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l5, !tbaa !23
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l6, !tbaa !29
  br label %bb16
bb15:
  br label %bb81
bb16:
  %t93 = load ptr, ptr %l6, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Make", ptr %t93, i32 0, i32 0
  %t96 = load i32, ptr %t95, !range !{i32 0, i32 5}
  %t98 = trunc i64 2 to i32
  %t99 = icmp eq i32 %t96, %t98
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb21
bb18:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  store ptr %t108, ptr %l66, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %l5, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l71
  br label %bb19
bb19:
  %t119 = load i32, ptr %l3, !tbaa !23
  %t120 = load ptr, ptr %l66, !tbaa !29
  %t121 = load i32, ptr %l71, !tbaa !23
  %t123 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t120, i32 %t121, i32 %t119)
  store i1 %t123, ptr %l73
  br label %bb20
bb20:
  %t124 = load i1, ptr %l73, !tbaa !21
  %t125 = xor i1 %t124, true
  store i1 %t125, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t127 = load i1, ptr %l63, !tbaa !21
  br i1 %t127, label %bb22, label %bb23
bb22:
  store ptr null, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l3, !tbaa !23
  %t133 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t129, i32 %t130)
  store i1 %t133, ptr %l78
  br label %bb25
bb25:
  %t134 = load i1, ptr %l78, !tbaa !21
  br i1 %t134, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb28
bb27:
  %t135 = load i32, ptr %l3, !tbaa !23
  %t136 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t139 = icmp eq i32 %t135, %t136
  store i1 %t139, ptr %l79, !tbaa !21
  br label %bb28
bb28:
  %t141 = load i1, ptr %l79, !tbaa !21
  br i1 %t141, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb33
bb30:
  %t142 = load i32, ptr %l3, !tbaa !23
  store i32 %t142, ptr %l84, !tbaa !23
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  store ptr %t148, ptr %l87, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t149)
  store i32 %t151, ptr %l89
  br label %bb31
bb31:
  %t152 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t153 = load ptr, ptr %l87, !tbaa !29
  %t154 = load i32, ptr %l89, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t153, i32 %t154, i64 %t152)
  store i32 %t156, ptr %l91
  br label %bb32
bb32:
  %t157 = load i32, ptr %l84, !tbaa !23
  %t158 = load i32, ptr %l91, !tbaa !23
  %t159 = icmp eq i32 %t157, %t158
  store i1 %t159, ptr %l83, !tbaa !21
  br label %bb33
bb33:
  %t161 = load i1, ptr %l83, !tbaa !21
  %t162 = xor i1 %t161, true
  br i1 %t162, label %bb34, label %bb35
bb34:
  store ptr null, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t165 = load ptr, ptr %l6, !tbaa !29
  %t167 = getelementptr %"compiler/typed:Make", ptr %t165, i32 0, i32 2
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  store i64 %t170, ptr %l97, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [2 x i64] }, ptr %t171, i32 0, i32 0
  store i64 0, ptr %t172
  %t173 = insertvalue { i64 } undef, i64 0, 0
  %t174 = getelementptr { i64, [2 x i64] }, ptr %t171, i32 0, i32 1
  store { i64 } %t173, ptr %t174
  %t175 = load { i64, [2 x i64] }, ptr %t171
  %t177 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t175, ptr %t177
  store ptr %t177, ptr %l99, !tbaa !29
  %t178 = load i64, ptr %l97, !tbaa !24
  %t179 = icmp sge i64 %t178, 0
  br i1 %t179, label %bb37, label %bb38
bb37:
  %t181 = load i64, ptr %l97, !tbaa !24
  %t182 = icmp sle i64 %t181, 1152921504606846975
  br i1 %t182, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_3727962a9e2e15db_7cf774666c9d4227)
  unreachable
bb39:
  %t184 = load i64, ptr %l97, !tbaa !24
  %t185 = mul i64 %t184, 8
  %t186 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t185)
  %t187 = load ptr, ptr %l99, !tbaa !29
  store i64 0, ptr %t188
  br label %fill.189
fill.189:
  %t192 = load i64, ptr %t188
  %t193 = icmp slt i64 %t192, %t184
  br i1 %t193, label %fillb.190, label %filld.191
fillb.190:
  %t194 = getelementptr ptr, ptr %t186, i64 %t192
  store ptr %t187, ptr %t194
  %t195 = add i64 %t192, 1
  store i64 %t195, ptr %t188
  br label %fill.189
filld.191:
  %t196 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t186, 1
  %t198 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t198, ptr %lp7
  %t200 = load ptr, ptr %lp7
  store { i64, ptr } %t197, ptr %t200, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t201 = load ptr, ptr %l6, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Make", ptr %t201, i32 0, i32 2
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t204, 0
  store i64 %t206, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t208 = load i64, ptr %l9, !tbaa !24
  %t209 = load i64, ptr %l8, !tbaa !24
  %t212 = icmp sgt i64 %t208, %t209
  br i1 %t212, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_3727962a9e2e15db_7cf774666c9d4227)
  unreachable
bb41:
  %t214 = load i64, ptr %l10, !tbaa !24
  %t216 = icmp sgt i64 %t214, 0
  br i1 %t216, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb46
bb43:
  %t218 = load i64, ptr %l9, !tbaa !24
  %t219 = load i64, ptr %l8, !tbaa !24
  %t222 = sub i64 %t218, %t219
  %t223 = load i64, ptr %l10, !tbaa !24
  %t226 = add i64 %t222, %t223
  %t228 = sub i64 %t226, 1
  %t229 = load i64, ptr %l10, !tbaa !24
  %t232 = sdiv i64 %t228, %t229
  store i64 %t232, ptr %l112, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb45
bb45:
  %t234 = load i64, ptr %l112, !tbaa !24
  store i64 %t234, ptr %l109, !tbaa !24
  br label %bb46
bb46:
  %t235 = load i64, ptr %l109, !tbaa !24
  store i64 %t235, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb47
bb47:
  %t236 = load i64, ptr %l12, !tbaa !24
  %t237 = load i64, ptr %l11, !tbaa !24
  %t240 = icmp slt i64 %t236, %t237
  %t242 = xor i1 %t240, true
  br i1 %t242, label %bb48, label %bb49
bb48:
  br label %bb79
bb49:
  br label %bb50
bb50:
  %t244 = load i64, ptr %l8, !tbaa !24
  %t245 = load i64, ptr %l12, !tbaa !24
  %t246 = load i64, ptr %l10, !tbaa !24
  %t249 = mul i64 %t245, %t246
  %t252 = add i64 %t244, %t249
  store i64 %t252, ptr %l13, !tbaa !24
  %t254 = load ptr, ptr %l6, !tbaa !29
  %t256 = getelementptr %"compiler/typed:Make", ptr %t254, i32 0, i32 2
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l131, !tbaa !27
  %t258 = load i64, ptr %l13, !tbaa !24
  %t260 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr ptr, ptr %t261, i64 %t258
  %t263 = load ptr, ptr %t262, !tbaa !39
  store ptr %t263, ptr %l14, !tbaa !29
  %t265 = load ptr, ptr %l14, !tbaa !29
  store ptr %t265, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t266 = load ptr, ptr %l134, !tbaa !29
  %t267 = icmp ne ptr %t266, null
  br i1 %t267, label %bb51, label %bb52
bb51:
  %t269 = load ptr, ptr %l134, !tbaa !29
  %t270 = load i64, ptr %t269, !range !{i64 0, i64 18}
  %t272 = icmp eq i64 %t270, 0
  store i1 %t272, ptr %l135, !tbaa !21
  br label %bb52
bb52:
  %t273 = load i1, ptr %l135, !tbaa !21
  br i1 %t273, label %bb53, label %bb54
bb53:
  %t274 = load ptr, ptr %l14, !tbaa !29
  %t276 = getelementptr { i64, [5 x i64] }, ptr %t274, i32 0, i32 1
  %t277 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t276, i32 0, i32 1
  %t278 = load i32, ptr %t277
  store i32 %t278, ptr %l15, !tbaa !23
  br label %bb55
bb54:
  br label %bb58
bb55:
  %t280 = load i32, ptr %l15, !tbaa !23
  %t281 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t284 = icmp eq i32 %t280, %t281
  br i1 %t284, label %bb56, label %bb57
bb56:
  store ptr null, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t287 = load ptr, ptr %l14, !tbaa !29
  store ptr %t287, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t288 = load ptr, ptr %l144, !tbaa !29
  %t289 = icmp ne ptr %t288, null
  br i1 %t289, label %bb59, label %bb60
bb59:
  %t291 = load ptr, ptr %l144, !tbaa !29
  %t292 = load i64, ptr %t291, !range !{i64 0, i64 18}
  %t294 = icmp eq i64 %t292, 0
  store i1 %t294, ptr %l145, !tbaa !21
  br label %bb60
bb60:
  %t295 = load i1, ptr %l145, !tbaa !21
  br i1 %t295, label %bb61, label %bb62
bb61:
  %t296 = load ptr, ptr %l14, !tbaa !29
  %t298 = getelementptr { i64, [5 x i64] }, ptr %t296, i32 0, i32 1
  %t299 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t298, i32 0, i32 2
  %t300 = load i64, ptr %t299
  store i64 %t300, ptr %l16, !tbaa !24
  br label %bb63
bb62:
  br label %bb66
bb63:
  %t302 = load i64, ptr %l13, !tbaa !24
  store i64 %t302, ptr %l150, !tbaa !24
  %t303 = ptrtoint ptr %v2 to i64
  store i64 %t303, ptr %l151, !tbaa !24
  %t304 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2ftyped_3aConst_26_3e_2e_2d1
  br i1 %t304, label %bb64, label %bb65
bb64:
  %t306 = call ptr @__olang_region_make(ptr %v2)
  %t307 = ptrtoint ptr %t306 to i64
  store i64 %t307, ptr %l151, !tbaa !24
  br label %bb65
bb65:
  %t308 = load i64, ptr %l16, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t309
  %t310 = getelementptr { i64, [2 x i64] }, ptr %t309, i32 0, i32 0
  store i64 0, ptr %t310
  %t312 = insertvalue { i64 } undef, i64 %t308, 0
  %t313 = getelementptr { i64, [2 x i64] }, ptr %t309, i32 0, i32 1
  store { i64 } %t312, ptr %t313
  %t314 = load { i64, [2 x i64] }, ptr %t309
  %t316 = load i64, ptr %l151
  %t317 = inttoptr i64 %t316 to ptr
  %t318 = call ptr @__olang_scope_alloc_a(ptr %t317, i64 24, i64 8)
  store { i64, [2 x i64] } %t314, ptr %t318
  %t320 = load ptr, ptr %lp7
  %t321 = load i64, ptr %l150, !tbaa !24
  %t322 = getelementptr { i64, ptr }, ptr %t320, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr ptr, ptr %t323, i64 %t321
  store ptr %t318, ptr %t324, !tbaa !39
  br label %bb77
bb66:
  %t325 = load ptr, ptr %l14, !tbaa !29
  store ptr %t325, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t326 = load ptr, ptr %l156, !tbaa !29
  %t327 = icmp ne ptr %t326, null
  br i1 %t327, label %bb67, label %bb68
bb67:
  %t329 = load ptr, ptr %l156, !tbaa !29
  %t330 = load i64, ptr %t329, !range !{i64 0, i64 18}
  %t332 = icmp eq i64 %t330, 1
  store i1 %t332, ptr %l157, !tbaa !21
  br label %bb68
bb68:
  %t333 = load i1, ptr %l157, !tbaa !21
  br i1 %t333, label %bb69, label %bb70
bb69:
  %t334 = load ptr, ptr %l14, !tbaa !29
  %t336 = getelementptr { i64, [5 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t336, i32 0, i32 3
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l17, !tbaa !29
  br label %bb71
bb70:
  br label %bb72
bb71:
  %t340 = load i64, ptr %l13, !tbaa !24
  %t341 = load ptr, ptr %l17, !tbaa !29
  %t343 = load ptr, ptr %lp7
  %t345 = getelementptr { i64, ptr }, ptr %t343, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = getelementptr ptr, ptr %t346, i64 %t340
  store ptr %t341, ptr %t347, !tbaa !39
  br label %bb77
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  store ptr null, ptr %rv
  br label %ret
bb76:
  call void @__olang_check_failed(ptr @olang_loc_81d441761e2a717d_f45e749fdf1e1e81)
  unreachable
bb77:
  br label %bb78
bb78:
  %t349 = load i64, ptr %l12, !tbaa !24
  %t351 = add i64 %t349, 1
  store i64 %t351, ptr %l12, !tbaa !24
  br label %bb47
bb79:
  %t353 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t353, ptr %l167
  %t354 = load i32, ptr %l2, !tbaa !23
  store i32 %t354, ptr %l168, !tbaa !23
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t355)
  store ptr %t357, ptr %l170
  br label %bb80
bb80:
  %t358 = load ptr, ptr %l170, !tbaa !29
  %t360 = getelementptr %"compiler/check:frame", ptr %t358, i32 0, i32 2
  %t361 = load i64, ptr %t360, !tbaa !24
  %t362 = load ptr, ptr %lp7
  %t363 = load { i64, ptr }, ptr %t362, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t364
  %t365 = getelementptr { i64, [2 x i64] }, ptr %t364, i32 0, i32 0
  store i64 2, ptr %t365
  %t367 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t363, 0
  %t368 = getelementptr { i64, [2 x i64] }, ptr %t364, i32 0, i32 1
  store { { i64, ptr } } %t367, ptr %t368
  %t369 = load { i64, [2 x i64] }, ptr %t364
  %t371 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t369, ptr %t371
  store { i64, [5 x i64] } zeroinitializer, ptr %t372
  %t373 = getelementptr { i64, [5 x i64] }, ptr %t372, i32 0, i32 0
  store i64 1, ptr %t373
  %t374 = load %"compiler/source:Span", ptr %l167
  %t375 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t374, 0
  %t376 = load i32, ptr %l168, !tbaa !23
  %t377 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t375, i32 %t376, 1
  %t379 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t377, i64 %t361, 2
  %t381 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t379, ptr %t371, 3
  %t382 = getelementptr { i64, [5 x i64] }, ptr %t372, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t381, ptr %t382
  %t383 = load { i64, [5 x i64] }, ptr %t372
  %t385 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t383, ptr %t385
  store ptr %t385, ptr %rv
  br label %ret
bb81:
  br i1 true, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  store ptr null, ptr %rv
  br label %ret
bb85:
  call void @__olang_check_failed(ptr @olang_loc_64cdadb0ead6eee6_ae7a9e6dd8bef26a)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunaryOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i32
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l38 = alloca %"compiler/source:Span"
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l51 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca %"compiler/source:Span"
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca i64
  %l62 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca { i64, ptr }
  %l78 = alloca %"compiler/source:Span"
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l83 = alloca i1
  %l86 = alloca ptr
  %l89 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca %"compiler/source:Span"
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l103 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i64
  %l107 = alloca ptr
  %l112 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l116 = alloca i32
  %l119 = alloca { i64, ptr }
  %l121 = alloca %"compiler/diagmsg:Msg"
  %l122 = alloca i64
  %l125 = alloca ptr
  %l128 = alloca i64
  %l132 = alloca %"compiler/source:Span"
  %l133 = alloca i32
  %l134 = alloca i32
  %l135 = alloca i32
  %l139 = alloca { i64, ptr }
  %l144 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l150 = alloca { i64, ptr }
  %l152 = alloca %"compiler/diagmsg:Msg"
  %l153 = alloca i64
  %l156 = alloca ptr
  %l162 = alloca ptr
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  %t309 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l10
  br label %bb1
bb1:
  %t5 = load i32, ptr %l10, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l3, !tbaa !29
  store ptr %t12, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l15, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l4, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l18
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i32, ptr %l18, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load i1, ptr %l19, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb14
bb9:
  %t29 = load i1, ptr %l23, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t34 = load i32, ptr %l4, !tbaa !23
  %t37 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l28
  br label %bb12
bb11:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb13
bb12:
  %t38 = load i1, ptr %l28, !tbaa !21
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l24, !tbaa !21
  %t40 = xor i1 %t39, true
  store i1 %t40, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l20, !tbaa !21
  br i1 %t42, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t45 = trunc i64 69 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb17, label %bb18
bb16:
  br label %bb62
bb17:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l32, !tbaa !27
  br label %bb19
bb18:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l32, !tbaa !27
  br label %bb19
bb19:
  %t48 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t48, ptr %l5, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l33, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l4, !tbaa !23
  %t54 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l36
  br label %bb20
bb20:
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t55, ptr %l37, !tbaa !27
  %t56 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t56, ptr %l38
  %t57 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t59 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s2, i32 %t57)
  store { i64, ptr } %t59, ptr %l40
  br label %bb21
bb21:
  %t60 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t61 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s2, ptr %s2, { i64, ptr } %t60)
  store { i64, ptr } %t61, ptr %l41
  br label %bb22
bb22:
  %t62 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load ptr, ptr @__olang_prog_scope
  %t70 = load ptr, ptr %l33, !tbaa !29
  %t71 = load i32, ptr %l36, !tbaa !23
  %t72 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t73 = load %"compiler/source:Span", ptr %l38
  %t75 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %t69, ptr %s2, ptr %t70, i32 %t71, { i64, ptr } %t72, i64 0, %"compiler/source:Span" %t73, { i64, ptr } %t68)
  store i64 %t75, ptr %l43
  br label %bb23
bb23:
  %t76 = load i64, ptr %l43, !tbaa !24
  store i64 %t76, ptr %l6, !tbaa !24
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = icmp sge i64 %t77, 0
  br i1 %t79, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l46, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l47, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s3, ptr %t86, i64 %t87)
  store ptr %t90, ptr %l51
  br label %bb26
bb25:
  br label %bb43
bb26:
  %t91 = load ptr, ptr %l51, !tbaa !29
  %t93 = getelementptr %"compiler/ast:Func", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %t93, !tbaa !23
  %t95 = load ptr, ptr %l47, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t95, i32 %t94)
  store { i64, ptr } %t97, ptr %l54
  br label %bb27
bb27:
  %t98 = load ptr, ptr %l46, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 50
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l55, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t102 = load ptr, ptr %l46, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 50
  store { i64, ptr } %t101, ptr %t103, !tbaa !27
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e50
  br i1 %t104, label %bb28, label %bb29
bb28:
  %t106 = load { i64, ptr }, ptr %l55
  %t107 = extractvalue { i64, ptr } %t106, 1
  call void @__olang_region_release(ptr %t107)
  store { i64, ptr } zeroinitializer, ptr %l55
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l57, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t109, ptr %l58
  %t110 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t110, ptr %l59
  %t111 = load i64, ptr %l6, !tbaa !24
  store i64 %t111, ptr %l60, !tbaa !24
  %t112 = load ptr, ptr %l3, !tbaa !29
  store ptr %t112, ptr %l62, !tbaa !29
  %t114 = icmp sge i64 0, 0
  br i1 %t114, label %bb30, label %bb31
bb30:
  %t116 = icmp sle i64 0, 1152921504606846975
  br i1 %t116, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_e153c6abdfe6ecb0_f26e63b1d3597a0c)
  unreachable
bb32:
  %t118 = mul i64 0, 8
  %t119 = insertvalue { i64, ptr } undef, i64 0, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t120, ptr %l65, !tbaa !27
  %t121 = icmp sge i64 0, 0
  br i1 %t121, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_e153c6abdfe6ecb0_f26e63b1d3597a0c)
  unreachable
bb34:
  %t123 = icmp sle i64 0, 1152921504606846975
  br i1 %t123, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_e153c6abdfe6ecb0_f26e63b1d3597a0c)
  unreachable
bb36:
  %t125 = mul i64 0, 8
  %t126 = insertvalue { i64, ptr } undef, i64 0, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t127, ptr %l68, !tbaa !27
  %t128 = icmp sge i64 0, 0
  br i1 %t128, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_e153c6abdfe6ecb0_f26e63b1d3597a0c)
  unreachable
bb38:
  %t130 = icmp sle i64 0, 2305843009213693951
  br i1 %t130, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_19db3dca8a9dc05d_2b95ab49e23e3919)
  unreachable
bb40:
  %t132 = mul i64 0, 4
  %t133 = insertvalue { i64, ptr } undef, i64 0, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t135 = load ptr, ptr %l57, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l58
  %t137 = load %"compiler/source:Span", ptr %l59
  %t138 = load i64, ptr %l60, !tbaa !24
  %t139 = load ptr, ptr %l62, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v2, ptr %v2, ptr %t135, %"compiler/source:Span" %t136, %"compiler/source:Span" %t137, i64 %t138, ptr %t139, { i64, ptr } %t140, { i64, ptr } %t141, { i64, ptr } %t134)
  store ptr %t143, ptr %l72
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_19db3dca8a9dc05d_2b95ab49e23e3919)
  unreachable
bb42:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t144 = load ptr, ptr %l72, !tbaa !29
  store ptr %t144, ptr %rv
  br label %ret
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l73, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l4, !tbaa !23
  %t150 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l76
  br label %bb44
bb44:
  %t151 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t151, ptr %l77, !tbaa !27
  %t152 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t152, ptr %l78
  %t153 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t155 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s2, i32 %t153)
  store { i64, ptr } %t155, ptr %l80
  br label %bb45
bb45:
  %t156 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t157 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s2, ptr %s2, { i64, ptr } %t156)
  store { i64, ptr } %t157, ptr %l81
  br label %bb46
bb46:
  %t158 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  %t160 = extractvalue { i64, ptr } %t158, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t165 = load ptr, ptr @__olang_prog_scope
  %t166 = load ptr, ptr %l73, !tbaa !29
  %t167 = load i32, ptr %l76, !tbaa !23
  %t168 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t169 = load %"compiler/source:Span", ptr %l78
  %t171 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %t165, ptr %s2, ptr %t166, i32 %t167, { i64, ptr } %t168, %"compiler/source:Span" %t169, { i64, ptr } %t164, i64 0, i1 false)
  store i1 %t171, ptr %l83
  br label %bb47
bb47:
  %t172 = load i1, ptr %l83, !tbaa !21
  br i1 %t172, label %bb48, label %bb49
bb48:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load %"compiler/source:Span", ptr %l1
  %t177 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t173, %"compiler/source:Span" %t174)
  store ptr %t177, ptr %l86
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s2)
  %t178 = load ptr, ptr %l86, !tbaa !29
  store ptr %t178, ptr %rv
  br label %ret
bb51:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i32, ptr %l4, !tbaa !23
  %t183 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t179, i32 %t180)
  store i1 %t183, ptr %l89
  br label %bb52
bb52:
  %t184 = load i1, ptr %l89, !tbaa !21
  br i1 %t184, label %bb53, label %bb54
bb53:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l90, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t186, ptr %l91
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i32, ptr %l4, !tbaa !23
  %t191 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t187, i32 %t188)
  store { i64, ptr } %t191, ptr %l94
  br label %bb55
bb54:
  br label %bb61
bb55:
  %t192 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  %t194 = extractvalue { i64, ptr } %t192, 1
  %t195 = mul i64 %t193, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t195)
  call void @llvm.memcpy.p0.p0.i64(ptr %t196, ptr %t194, i64 %t195, i1 false)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  store { i64, ptr } %t198, ptr %l95, !tbaa !27
  %t199 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t201 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t199)
  store { i64, ptr } %t201, ptr %l97
  br label %bb56
bb56:
  %t202 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t203 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t202)
  store { i64, ptr } %t203, ptr %l98
  br label %bb57
bb57:
  %t204 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 0
  %t206 = extractvalue { i64, ptr } %t204, 1
  %t207 = mul i64 %t205, 1
  %t208 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t207)
  call void @llvm.memcpy.p0.p0.i64(ptr %t208, ptr %t206, i64 %t207, i1 false)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  %t211 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t215 = extractvalue { i64, ptr } %t211, 1
  %t216 = extractvalue { i64, ptr } %t211, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t221 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t220)
  call void @olang_textcopy(ptr %t221, ptr %t212, i64 %t213)
  %t222 = getelementptr i8, ptr %t221, i64 %t213
  call void @olang_textcopy(ptr %t222, ptr %t215, i64 %t216)
  %t223 = getelementptr i8, ptr %t222, i64 %t216
  call void @olang_textcopy(ptr %t223, ptr %t218, i64 %t219)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t221, 1
  %t227 = extractvalue { i64, ptr } %t225, 0
  %t228 = extractvalue { i64, ptr } %t225, 1
  %t229 = mul i64 %t227, 1
  %t230 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t229)
  call void @llvm.memcpy.p0.p0.i64(ptr %t230, ptr %t228, i64 %t229, i1 false)
  %t231 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t230, 1
  %t233 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t236 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t233, { i64, ptr } %t210, { i64, ptr } %t232)
  store %"compiler/diagmsg:Msg" %t236, ptr %l103
  br label %bb58
bb58:
  %t237 = load ptr, ptr %l90, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l91
  %t239 = load %"compiler/diagmsg:Msg", ptr %l103
  %t240 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t237, %"compiler/source:Span" %t238, %"compiler/diagmsg:Msg" %t239)
  store i64 %t240, ptr %l104
  br label %bb59
bb59:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load %"compiler/source:Span", ptr %l1
  %t245 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t241, %"compiler/source:Span" %t242)
  store ptr %t245, ptr %l107
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s2)
  %t246 = load ptr, ptr %l107, !tbaa !29
  store ptr %t246, ptr %rv
  br label %ret
bb61:
  call void @__olang_scope_close(ptr %s2)
  br label %bb62
bb62:
  %t247 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t249 = trunc i64 69 to i32
  %t250 = icmp eq i32 %t247, %t249
  br i1 %t250, label %bb63, label %bb64
bb63:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load i32, ptr %l4, !tbaa !23
  %t256 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t252, i32 %t253)
  store i1 %t256, ptr %l112
  br label %bb65
bb64:
  br label %bb76
bb65:
  %t257 = load i1, ptr %l112, !tbaa !21
  %t258 = xor i1 %t257, true
  br i1 %t258, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s8
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l114, !tbaa !29
  %t261 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t261, ptr %l115
  %t262 = load i32, ptr %l4, !tbaa !23
  store i32 %t262, ptr %l116, !tbaa !23
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i32, ptr %l4, !tbaa !23
  %t267 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t263, i32 %t264)
  store { i64, ptr } %t267, ptr %l119
  br label %bb68
bb67:
  br label %bb72
bb68:
  %t268 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t268, 0
  %t270 = extractvalue { i64, ptr } %t268, 1
  %t271 = mul i64 %t269, 1
  %t272 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t271)
  call void @llvm.memcpy.p0.p0.i64(ptr %t272, ptr %t270, i64 %t271, i1 false)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  %t276 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotNumber(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, { i64, ptr } %t274)
  store %"compiler/diagmsg:Msg" %t276, ptr %l121
  br label %bb69
bb69:
  %t277 = load ptr, ptr %l114, !tbaa !29
  %t278 = load %"compiler/source:Span", ptr %l115
  %t279 = load i32, ptr %l116, !tbaa !23
  %t280 = load %"compiler/diagmsg:Msg", ptr %l121
  %t281 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s8, ptr %v0, ptr %t277, %"compiler/source:Span" %t278, i32 %t279, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) }, %"compiler/diagmsg:Msg" %t280)
  store i64 %t281, ptr %l122
  br label %bb70
bb70:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load %"compiler/source:Span", ptr %l1
  %t286 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t282, %"compiler/source:Span" %t283)
  store ptr %t286, ptr %l125
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s8)
  %t287 = load ptr, ptr %l125, !tbaa !29
  store ptr %t287, ptr %rv
  br label %ret
bb72:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/check:Checker", ptr %t288, i32 0, i32 36
  %t292 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t290)
  store i64 %t292, ptr %l128
  br label %bb73
bb73:
  %t293 = load i64, ptr %l128, !tbaa !24
  store i64 %t293, ptr %l7, !tbaa !24
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/check:Checker", ptr %t294, i32 0, i32 36
  %t297 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t296, ptr %t297)
  br label %bb74
bb74:
  %t300 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t300, ptr %l132
  %t301 = load i32, ptr %l4, !tbaa !23
  store i32 %t301, ptr %l133, !tbaa !23
  store i32 0, ptr %l134
  store i32 0, ptr %l135
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/check:Checker", ptr %t302, i32 0, i32 36
  %t305 = load i64, ptr %l7, !tbaa !24
  %t308 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t304, i64 %t305)
  store { i64, ptr } %t308, ptr %l139
  br label %bb75
bb75:
  store { i64, [5 x i64] } zeroinitializer, ptr %t309
  %t310 = getelementptr { i64, [5 x i64] }, ptr %t309, i32 0, i32 0
  store i64 9, ptr %t310
  %t311 = load %"compiler/source:Span", ptr %l132
  %t312 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t311, 0
  %t313 = load i32, ptr %l133, !tbaa !23
  %t314 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t312, i32 %t313, 1
  %t315 = load i32, ptr %l134, !range !{i32 0, i32 52}
  %t316 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t314, i32 %t315, 2
  %t317 = load i32, ptr %l135, !range !{i32 0, i32 3}
  %t318 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t316, i32 %t317, 3
  %t319 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t320 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t318, { i64, ptr } %t319, 4
  %t321 = getelementptr { i64, [5 x i64] }, ptr %t309, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t320, ptr %t321
  %t322 = load { i64, [5 x i64] }, ptr %t309
  %t324 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t322, ptr %t324
  store ptr %t324, ptr %rv
  br label %ret
bb76:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i32, ptr %l4, !tbaa !23
  %t330 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t326, i32 %t327)
  store i1 %t330, ptr %l144
  br label %bb77
bb77:
  %t331 = load i1, ptr %l144, !tbaa !21
  %t332 = xor i1 %t331, true
  br i1 %t332, label %bb78, label %bb79
bb78:
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l146, !tbaa !29
  %t335 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t335, ptr %l147
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load i32, ptr %l4, !tbaa !23
  %t340 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t336, i32 %t337)
  store { i64, ptr } %t340, ptr %l150
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t341 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t341, 0
  %t343 = extractvalue { i64, ptr } %t341, 1
  %t344 = mul i64 %t342, 1
  %t345 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t344)
  call void @llvm.memcpy.p0.p0.i64(ptr %t345, ptr %t343, i64 %t344, i1 false)
  %t346 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t345, 1
  %t349 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotInt(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) }, { i64, ptr } %t347)
  store %"compiler/diagmsg:Msg" %t349, ptr %l152
  br label %bb81
bb81:
  %t350 = load ptr, ptr %l146, !tbaa !29
  %t351 = load %"compiler/source:Span", ptr %l147
  %t352 = load %"compiler/diagmsg:Msg", ptr %l152
  %t353 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t350, %"compiler/source:Span" %t351, %"compiler/diagmsg:Msg" %t352)
  store i64 %t353, ptr %l153
  br label %bb82
bb82:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load %"compiler/source:Span", ptr %l1
  %t358 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t354, %"compiler/source:Span" %t355)
  store ptr %t358, ptr %l156
  br label %bb83
bb83:
  %t359 = load ptr, ptr %l156, !tbaa !29
  store ptr %t359, ptr %rv
  br label %ret
bb84:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load %"compiler/source:Span", ptr %l1
  %t362 = load i32, ptr %l4, !tbaa !23
  %t363 = load ptr, ptr %l3, !tbaa !29
  %t369 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t360, %"compiler/source:Span" %t361, i32 %t362, i32 1, ptr %t363, ptr null)
  store ptr %t369, ptr %l162
  br label %bb85
bb85:
  %t370 = load ptr, ptr %l162, !tbaa !29
  store ptr %t370, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrolled(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, %"compiler/check:reflList" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"compiler/check:reflList"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, i64, i64 }
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
  %l18 = alloca { i64, i64, i64 }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca { i64, i64, i64 }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l35 = alloca %"compiler/source:Span"
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca i64
  %l42 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l47 = alloca { i64, ptr }
  %l50 = alloca i64
  %l54 = alloca { i64, i64, i64 }
  %l59 = alloca ptr
  %l64 = alloca ptr
  %l75 = alloca i64
  %l78 = alloca i64
  %l98 = alloca i64
  %l102 = alloca { i64, i64, i64 }
  %l107 = alloca ptr
  %l112 = alloca ptr
  %l118 = alloca ptr
  %l120 = alloca i32
  %l125 = alloca i32
  %l126 = alloca i32
  %l127 = alloca ptr
  %l129 = alloca i32
  %l132 = alloca ptr
  %l134 = alloca i32
  %l136 = alloca i32
  %l137 = alloca i32
  %l161 = alloca i64
  %l163 = alloca ptr
  %l166 = alloca i64
  %l167 = alloca i32
  %l173 = alloca ptr
  %l176 = alloca i64
  %l180 = alloca { i64, i64, i64 }
  %l197 = alloca ptr
  %l215 = alloca i64
  %l217 = alloca ptr
  %l220 = alloca i64
  %l221 = alloca i32
  %l227 = alloca ptr
  %s0 = alloca %olang.scope
  %t258 = alloca { i64, [3 x i64] }, align 8
  %t325 = alloca { i64, [3 x i64] }, align 8
  %t356 = alloca { i64, [3 x i64] }, align 8
  %t380 = alloca { i64, [3 x i64] }, align 8
  %t422 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/check:reflList" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t3 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = add i32 %t4, 3
  %t9 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t2, i32 %t6)
  store %"compiler/source:Span" %t9, ptr %l35
  br label %bb1
bb1:
  %t10 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t10, ptr %l4
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:ForIn", ptr %t11, i32 0, i32 3
  %t14 = load i1, ptr %t13, !tbaa !21
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l38, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t17, ptr %l39
  %t18 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTryList(ptr %v0)
  store %"compiler/diagmsg:Msg" %t18, ptr %l40
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t19 = load ptr, ptr %l38, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l39
  %t21 = load %"compiler/diagmsg:Msg", ptr %l40
  %t22 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t19, %"compiler/source:Span" %t20, %"compiler/diagmsg:Msg" %t21)
  store i64 %t22, ptr %l41
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l42, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:ForIn", ptr %t24, i32 0, i32 2
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t27)
  store %"compiler/source:Span" %t29, ptr %l45
  br label %bb7
bb7:
  %t30 = load %"compiler/check:reflList", ptr %l3
  %t31 = load ptr, ptr %l42, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l45
  %t34 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %s0, ptr %t31, %"compiler/source:Span" %t32, %"compiler/check:reflList" %t30)
  store { i64, ptr } %t34, ptr %l47
  br label %bb8
bb8:
  %t35 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 37
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l50
  br label %bb9
bb9:
  %t41 = load i64, ptr %l50, !tbaa !24
  store i64 %t41, ptr %l6, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l1
  %t47 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t42, i32 2, %"compiler/source:Span" %t43)
  store { i64, i64, i64 } %t47, ptr %l54
  br label %bb10
bb10:
  %t48 = load { i64, i64, i64 }, ptr %l54
  store { i64, i64, i64 } %t48, ptr %l7
  %t49 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 0
  %t50 = load i64, ptr %t49, !tbaa !24
  store i64 %t50, ptr %l8, !tbaa !24
  %t52 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 1
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l9, !tbaa !24
  %t55 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 2
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l10, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t58)
  store ptr %t60, ptr %l59
  br label %bb11
bb11:
  %t61 = load ptr, ptr %l59, !tbaa !29
  %t63 = getelementptr %"compiler/check:frame", ptr %t61, i32 0, i32 11
  %t64 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t63, i64 %t64)
  br label %bb12
bb12:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t67)
  store ptr %t69, ptr %l64
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l64, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Body", ptr %t70, i32 0, i32 19
  %t73 = load i64, ptr %l8, !tbaa !24
  %t75 = trunc i64 %t73 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t72, i32 %t75)
  br label %bb14
bb14:
  store i64 0, ptr %l11, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t83 = load i64, ptr %l12, !tbaa !24
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  br i1 %t87, label %bb15, label %bb16
bb15:
  %t89 = load i64, ptr %l13, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb20
bb17:
  %t93 = load i64, ptr %l12, !tbaa !24
  %t94 = load i64, ptr %l11, !tbaa !24
  %t97 = sub i64 %t93, %t94
  %t98 = load i64, ptr %l13, !tbaa !24
  %t101 = add i64 %t97, %t98
  %t103 = sub i64 %t101, 1
  %t104 = load i64, ptr %l13, !tbaa !24
  %t107 = sdiv i64 %t103, %t104
  store i64 %t107, ptr %l78, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb19
bb19:
  %t109 = load i64, ptr %l78, !tbaa !24
  store i64 %t109, ptr %l75, !tbaa !24
  br label %bb20
bb20:
  %t110 = load i64, ptr %l75, !tbaa !24
  store i64 %t110, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb21
bb21:
  %t111 = load i64, ptr %l15, !tbaa !24
  %t112 = load i64, ptr %l14, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb22, label %bb23
bb22:
  br label %bb55
bb23:
  br label %bb24
bb24:
  %t119 = load i64, ptr %l11, !tbaa !24
  %t120 = load i64, ptr %l15, !tbaa !24
  %t121 = load i64, ptr %l13, !tbaa !24
  %t124 = mul i64 %t120, %t121
  %t127 = add i64 %t119, %t124
  store i64 %t127, ptr %l16, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 37
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t131)
  store i64 %t133, ptr %l98
  br label %bb25
bb25:
  %t134 = load i64, ptr %l98, !tbaa !24
  store i64 %t134, ptr %l17, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l1
  %t140 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t135, i32 2, %"compiler/source:Span" %t136)
  store { i64, i64, i64 } %t140, ptr %l102
  br label %bb26
bb26:
  %t141 = load { i64, i64, i64 }, ptr %l102
  store { i64, i64, i64 } %t141, ptr %l18
  %t142 = getelementptr { i64, i64, i64 }, ptr %l18, i32 0, i32 0
  %t143 = load i64, ptr %t142, !tbaa !24
  store i64 %t143, ptr %l19, !tbaa !24
  %t145 = getelementptr { i64, i64, i64 }, ptr %l18, i32 0, i32 1
  %t146 = load i64, ptr %t145, !tbaa !24
  store i64 %t146, ptr %l20, !tbaa !24
  %t148 = getelementptr { i64, i64, i64 }, ptr %l18, i32 0, i32 2
  %t149 = load i64, ptr %t148, !tbaa !24
  store i64 %t149, ptr %l21, !tbaa !24
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t151)
  store ptr %t153, ptr %l107
  br label %bb27
bb27:
  %t154 = load ptr, ptr %l107, !tbaa !29
  %t156 = getelementptr %"compiler/check:frame", ptr %t154, i32 0, i32 10
  %t157 = load i64, ptr %l19, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t156, i64 %t157)
  br label %bb28
bb28:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t160)
  store ptr %t162, ptr %l112
  br label %bb29
bb29:
  %t163 = load ptr, ptr %l112, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Body", ptr %t163, i32 0, i32 19
  %t166 = load i64, ptr %l19, !tbaa !24
  %t168 = trunc i64 %t166 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t165, i32 %t168)
  br label %bb30
bb30:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l118, !tbaa !29
  %t173 = load ptr, ptr %l2, !tbaa !29
  %t175 = getelementptr %"compiler/ast:ForIn", ptr %t173, i32 0, i32 1
  %t176 = load i32, ptr %t175, !tbaa !23
  store i32 %t176, ptr %l120, !tbaa !23
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load %"compiler/check:reflList", ptr %l3
  %t179 = load i64, ptr %l16, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr i64, ptr %t182, i64 %t179
  %t184 = load i64, ptr %t183, !tbaa !34
  %t188 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %t177, %"compiler/check:reflList" %t178, i64 %t184)
  store i32 %t188, ptr %l125
  br label %bb31
bb31:
  %t189 = load ptr, ptr %l118, !tbaa !29
  %t190 = load i32, ptr %l120, !tbaa !23
  %t191 = load i32, ptr %l125, !tbaa !23
  %t192 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %t189, i32 %t190, i32 %t191)
  store i32 %t192, ptr %l126
  br label %bb32
bb32:
  %t193 = load i32, ptr %l126, !tbaa !23
  store i32 %t193, ptr %l22, !tbaa !23
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l127, !tbaa !29
  %t195 = load ptr, ptr %l2, !tbaa !29
  %t197 = getelementptr %"compiler/ast:ForIn", ptr %t195, i32 0, i32 0
  %t198 = load i32, ptr %t197, !tbaa !23
  store i32 %t198, ptr %l129, !tbaa !23
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/generic:Program", ptr %t202, i32 0, i32 2
  store ptr %t204, ptr %l132, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t205)
  store i32 %t207, ptr %l134
  br label %bb33
bb33:
  %t208 = load i64, ptr %l16, !tbaa !24
  %t209 = load ptr, ptr %l132, !tbaa !29
  %t210 = load i32, ptr %l134, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t209, i32 %t210, i64 %t208)
  store i32 %t212, ptr %l136
  br label %bb34
bb34:
  %t213 = load ptr, ptr %l127, !tbaa !29
  %t214 = load i32, ptr %l129, !tbaa !23
  %t215 = load i32, ptr %l136, !tbaa !23
  %t216 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %t213, i32 %t214, i32 %t215)
  store i32 %t216, ptr %l137
  br label %bb35
bb35:
  %t217 = load i32, ptr %l137, !tbaa !23
  store i32 %t217, ptr %l23, !tbaa !23
  %t218 = load ptr, ptr %l2, !tbaa !29
  %t220 = getelementptr %"compiler/ast:ForIn", ptr %t218, i32 0, i32 4
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t221, 0
  %t225 = icmp sgt i64 %t223, 0
  br i1 %t225, label %bb36, label %bb37
bb36:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load ptr, ptr %l2, !tbaa !29
  %t230 = getelementptr %"compiler/ast:ForIn", ptr %t228, i32 0, i32 4
  %t231 = load { i64, ptr }, ptr %t230, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t227, { i64, ptr } %t231)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l2, !tbaa !29
  %t237 = getelementptr %"compiler/ast:ForIn", ptr %t235, i32 0, i32 0
  %t238 = load i32, ptr %t237, !tbaa !23
  %t239 = load i32, ptr %l23, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %t234, i32 %t238, i32 %t239)
  br label %bb40
bb40:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l2, !tbaa !29
  %t246 = getelementptr %"compiler/ast:ForIn", ptr %t244, i32 0, i32 1
  %t247 = load i32, ptr %t246, !tbaa !23
  %t248 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %t243, i32 %t247, i32 %t248)
  br label %bb41
bb41:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l1
  %t254 = load i64, ptr %l19, !tbaa !24
  %t256 = trunc i64 %t254 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t258
  %t259 = getelementptr { i64, [3 x i64] }, ptr %t258, i32 0, i32 0
  store i64 5, ptr %t259
  %t261 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t253, 0
  %t263 = insertvalue { %"compiler/source:Span", i32, i32 } %t261, i32 0, 1
  %t265 = insertvalue { %"compiler/source:Span", i32, i32 } %t263, i32 %t256, 2
  %t266 = getelementptr { i64, [3 x i64] }, ptr %t258, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t265, ptr %t266
  %t267 = load { i64, [3 x i64] }, ptr %t258
  %t269 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t267, ptr %t269
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t252, ptr %t269)
  br label %bb42
bb42:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t272)
  store ptr %t274, ptr %l163
  br label %bb43
bb43:
  %t275 = load ptr, ptr %l163, !tbaa !29
  %t277 = getelementptr %"compiler/check:frame", ptr %t275, i32 0, i32 10
  %t279 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t277)
  %t280 = extractvalue { i32, i64 } %t279, 1
  %t281 = extractvalue { i32, i64 } %t279, 0
  store i32 %t281, ptr %l167
  %t282 = icmp ne i32 %t281, 0
  br i1 %t282, label %bb45, label %ok.283, !prof !99
ok.283:
  store i64 %t280, ptr %l166
  br label %bb44
bb44:
  %t284 = load i64, ptr %l166, !tbaa !24
  store i64 %t284, ptr %l161, !tbaa !24
  br label %bb47
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load i64, ptr %l19, !tbaa !24
  %t287 = load i64, ptr %l20, !tbaa !24
  %t288 = load i64, ptr %l21, !tbaa !24
  %t289 = load i64, ptr %l17, !tbaa !24
  %t295 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t285, i64 %t286, i64 %t287, i64 %t288, i64 %t289)
  store ptr %t295, ptr %l173
  br label %bb48
bb48:
  %t296 = load ptr, ptr %l173, !tbaa !29
  store ptr %t296, ptr %l24, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/check:Checker", ptr %t297, i32 0, i32 37
  %t301 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t299)
  store i64 %t301, ptr %l176
  br label %bb49
bb49:
  %t302 = load i64, ptr %l176, !tbaa !24
  store i64 %t302, ptr %l25, !tbaa !24
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l1
  %t308 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t303, i32 3, %"compiler/source:Span" %t304)
  store { i64, i64, i64 } %t308, ptr %l180
  br label %bb50
bb50:
  %t309 = load { i64, i64, i64 }, ptr %l180
  store { i64, i64, i64 } %t309, ptr %l26
  %t310 = getelementptr { i64, i64, i64 }, ptr %l26, i32 0, i32 0
  %t311 = load i64, ptr %t310, !tbaa !24
  store i64 %t311, ptr %l27, !tbaa !24
  %t313 = getelementptr { i64, i64, i64 }, ptr %l26, i32 0, i32 1
  %t314 = load i64, ptr %t313, !tbaa !24
  store i64 %t314, ptr %l28, !tbaa !24
  %t316 = getelementptr { i64, i64, i64 }, ptr %l26, i32 0, i32 2
  %t317 = load i64, ptr %t316, !tbaa !24
  store i64 %t317, ptr %l29, !tbaa !24
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load %"compiler/source:Span", ptr %l1
  %t321 = load i64, ptr %l19, !tbaa !24
  %t323 = trunc i64 %t321 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t325
  %t326 = getelementptr { i64, [3 x i64] }, ptr %t325, i32 0, i32 0
  store i64 5, ptr %t326
  %t328 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t320, 0
  %t330 = insertvalue { %"compiler/source:Span", i32, i32 } %t328, i32 0, 1
  %t332 = insertvalue { %"compiler/source:Span", i32, i32 } %t330, i32 %t323, 2
  %t333 = getelementptr { i64, [3 x i64] }, ptr %t325, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t332, ptr %t333
  %t334 = load { i64, [3 x i64] }, ptr %t325
  %t336 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t334, ptr %t336
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t319, ptr %t336)
  br label %bb51
bb51:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i64, ptr %l27, !tbaa !24
  %t341 = load i64, ptr %l28, !tbaa !24
  %t342 = load i64, ptr %l29, !tbaa !24
  %t343 = load i64, ptr %l25, !tbaa !24
  %t349 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t339, i64 %t340, i64 %t341, i64 %t342, i64 %t343)
  store ptr %t349, ptr %l197
  br label %bb52
bb52:
  %t350 = load ptr, ptr %l197, !tbaa !29
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load %"compiler/source:Span", ptr %l1
  %t353 = load ptr, ptr %l24, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t356
  %t357 = getelementptr { i64, [3 x i64] }, ptr %t356, i32 0, i32 0
  store i64 4, ptr %t357
  %t359 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t352, 0
  %t361 = insertvalue { %"compiler/source:Span", ptr, ptr } %t359, ptr %t353, 1
  %t363 = insertvalue { %"compiler/source:Span", ptr, ptr } %t361, ptr %t350, 2
  %t364 = getelementptr { i64, [3 x i64] }, ptr %t356, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t363, ptr %t364
  %t365 = load { i64, [3 x i64] }, ptr %t356
  %t367 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t365, ptr %t367
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t351, ptr %t367)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t370 = load i64, ptr %l15, !tbaa !24
  %t372 = add i64 %t370, 1
  store i64 %t372, ptr %l15, !tbaa !24
  br label %bb21
bb55:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load %"compiler/source:Span", ptr %l1
  %t376 = load i64, ptr %l8, !tbaa !24
  %t378 = trunc i64 %t376 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t380
  %t381 = getelementptr { i64, [3 x i64] }, ptr %t380, i32 0, i32 0
  store i64 5, ptr %t381
  %t383 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t375, 0
  %t385 = insertvalue { %"compiler/source:Span", i32, i32 } %t383, i32 0, 1
  %t387 = insertvalue { %"compiler/source:Span", i32, i32 } %t385, i32 %t378, 2
  %t388 = getelementptr { i64, [3 x i64] }, ptr %t380, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t387, ptr %t388
  %t389 = load { i64, [3 x i64] }, ptr %t380
  %t391 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t389, ptr %t391
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t374, ptr %t391)
  br label %bb56
bb56:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t394)
  store ptr %t396, ptr %l217
  br label %bb57
bb57:
  %t397 = load ptr, ptr %l217, !tbaa !29
  %t399 = getelementptr %"compiler/check:frame", ptr %t397, i32 0, i32 11
  %t401 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t399)
  %t402 = extractvalue { i32, i64 } %t401, 1
  %t403 = extractvalue { i32, i64 } %t401, 0
  store i32 %t403, ptr %l221
  %t404 = icmp ne i32 %t403, 0
  br i1 %t404, label %bb59, label %ok.405, !prof !99
ok.405:
  store i64 %t402, ptr %l220
  br label %bb58
bb58:
  %t406 = load i64, ptr %l220, !tbaa !24
  store i64 %t406, ptr %l215, !tbaa !24
  br label %bb61
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load i64, ptr %l8, !tbaa !24
  %t409 = load i64, ptr %l9, !tbaa !24
  %t410 = load i64, ptr %l10, !tbaa !24
  %t411 = load i64, ptr %l6, !tbaa !24
  %t417 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t407, i64 %t408, i64 %t409, i64 %t410, i64 %t411)
  store ptr %t417, ptr %l227
  br label %bb62
bb62:
  %t418 = load ptr, ptr %l227, !tbaa !29
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t422
  %t423 = getelementptr { i64, [3 x i64] }, ptr %t422, i32 0, i32 0
  store i64 4, ptr %t423
  %t425 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t420, 0
  %t427 = insertvalue { %"compiler/source:Span", ptr, ptr } %t425, ptr %t418, 1
  %t428 = insertvalue { %"compiler/source:Span", ptr, ptr } %t427, ptr null, 2
  %t429 = getelementptr { i64, [3 x i64] }, ptr %t422, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t428, ptr %t429
  %t430 = load { i64, [3 x i64] }, ptr %t422
  %t432 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t430, ptr %t432
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t419, ptr %t432)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca i32
  %l15 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca %"compiler/diagmsg:Msg"
  %l43 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i32
  %l52 = alloca ptr
  %l56 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  store ptr %t2, ptr %l8, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l4, !tbaa !23
  %t8 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l4, !tbaa !23
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l15
  br label %bb4
bb3:
  %t15 = load i32, ptr %l4, !tbaa !23
  store i32 %t15, ptr %l12, !tbaa !23
  br label %bb5
bb4:
  %t17 = load i32, ptr %l15, !tbaa !23
  store i32 %t17, ptr %l12, !tbaa !23
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t19 = load ptr, ptr %l8, !tbaa !29
  %t20 = load i32, ptr %l12, !tbaa !23
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v3, ptr %t18, ptr %t19, i32 %t20)
  store ptr %t21, ptr %l17
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l17, !tbaa !29
  store ptr %t22, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l18, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l21
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t30)
  store i32 %t33, ptr %l25
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = load i32, ptr %l25, !tbaa !23
  %t36 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l26
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i32, ptr %l21, !tbaa !23
  %t39 = load i32, ptr %l26, !tbaa !23
  %t40 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emeets(ptr %v0, ptr %t37, i32 %t38, i32 %t39)
  store i1 %t40, ptr %l27
  br label %bb10
bb10:
  %t41 = load i1, ptr %l27, !tbaa !21
  %t42 = xor i1 %t41, true
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l29, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t45)
  store %"compiler/source:Span" %t47, ptr %l31
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l32, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l4, !tbaa !23
  %t53 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l35
  br label %bb14
bb14:
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = load i32, ptr %l35, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t54, i32 %t55)
  store { i64, ptr } %t56, ptr %l36
  br label %bb15
bb15:
  %t57 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  %t59 = extractvalue { i64, ptr } %t57, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l37, !tbaa !27
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t68 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v3, ptr %v0, ptr %t64, ptr %t65)
  store { i64, ptr } %t68, ptr %l40
  br label %bb16
bb16:
  %t69 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = extractvalue { i64, ptr } %t69, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t76 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t78 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t76, { i64, ptr } %t75)
  store %"compiler/diagmsg:Msg" %t78, ptr %l42
  br label %bb17
bb17:
  %t79 = load ptr, ptr %l29, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l31
  %t81 = load %"compiler/diagmsg:Msg", ptr %l42
  %t82 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t79, %"compiler/source:Span" %t80, %"compiler/diagmsg:Msg" %t81)
  store i64 %t82, ptr %l43
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l1
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t83, %"compiler/source:Span" %t84, i32 %t85, i64 0)
  store ptr %t89, ptr %l47
  br label %bb19
bb19:
  %t90 = load ptr, ptr %l47, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l48, !tbaa !29
  %t92 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t92, ptr %l49
  %t93 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t93, ptr %l50
  store i32 94, ptr %l51
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l52, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l1
  %t101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t95, %"compiler/source:Span" %t96, ptr %a2)
  store ptr %t101, ptr %l56
  br label %bb21
bb21:
  %t102 = load %"compiler/source:Span", ptr %l1
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t104 = load ptr, ptr %l56, !tbaa !29
  %t106 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v1, ptr %t103, ptr %t104, %"compiler/source:Span" %t102)
  store ptr %t106, ptr %l58
  br label %bb22
bb22:
  %t107 = load ptr, ptr %l5, !tbaa !29
  store ptr %t107, ptr %l59, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t108, ptr %l60
  %t109 = load ptr, ptr %l3, !tbaa !29
  %t111 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t109)
  store %"compiler/source:Span" %t111, ptr %l62
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l48, !tbaa !29
  %t113 = load %"compiler/source:Span", ptr %l49
  %t114 = load %"compiler/source:Span", ptr %l50
  %t115 = load i32, ptr %l51, !range !{i32 0, i32 114}
  %t116 = load ptr, ptr %l58, !tbaa !29
  %t117 = load ptr, ptr %l59, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l60
  %t119 = load %"compiler/source:Span", ptr %l62
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t112, %"compiler/source:Span" %t113, %"compiler/source:Span" %t114, i32 %t115, ptr %t116, ptr %t117, %"compiler/source:Span" %t118, %"compiler/source:Span" %t119)
  store ptr %t120, ptr %l63
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l63, !tbaa !29
  store ptr %t121, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaMemoryJump(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l32 = alloca i1
  %l39 = alloca i32
  %l43 = alloca i1
  %l50 = alloca i1
  %l55 = alloca i1
  %l61 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
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
  store ptr %t6, ptr %l13, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l18
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = load i32, ptr %l18, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l19
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t33, ptr %l26, !tbaa !27
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i32, ptr %t37, i64 %t34
  %t39 = load i32, ptr %t38, !tbaa !33
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t48 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t44, i32 %t39)
  store i1 %t48, ptr %l32
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l3, !tbaa !24
  br label %bb3
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l39
  br label %bb10
bb10:
  %t63 = load i32, ptr %l39, !tbaa !23
  store i32 %t63, ptr %l6, !tbaa !23
  %t64 = load i32, ptr %l6, !tbaa !23
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t68 = icmp ne i32 %t64, %t65
  br i1 %t68, label %bb11, label %bb12
bb11:
  %t70 = load i32, ptr %l6, !tbaa !23
  %t71 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t74 = icmp ne i32 %t70, %t71
  store i1 %t74, ptr %l43, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb13
bb13:
  %t76 = load i1, ptr %l43, !tbaa !21
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load i32, ptr %l6, !tbaa !23
  %t84 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t84, ptr %l50
  br label %bb16
bb15:
  br label %bb21
bb16:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l6, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l55
  br label %bb17
bb17:
  %t95 = load i1, ptr %l55, !tbaa !21
  br i1 %t95, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s6
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l1, !tbaa !23
  %t106 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s6, ptr %t102, i32 %t103)
  store { i64, ptr } %t106, ptr %l61
  br label %bb22
bb22:
  %t107 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  %t109 = extractvalue { i64, ptr } %t107, 1
  %t110 = mul i64 %t108, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t110)
  call void @llvm.memcpy.p0.p0.i64(ptr %t111, ptr %t109, i64 %t110, i1 false)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  store { i64, ptr } %t113, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t120 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb24, label %bb25
bb24:
  br label %bb31
bb25:
  br label %bb26
bb26:
  %t127 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t127, ptr %l69, !tbaa !27
  %t128 = load i64, ptr %l8, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i8, ptr %t131, i64 %t128
  %t133 = load i8, ptr %t132, !tbaa !32
  %t137 = icmp eq i8 %t133, 109
  br i1 %t137, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s6)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l8, !tbaa !24
  br label %bb23
bb31:
  call void @__olang_scope_close(ptr %s6)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewable(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l6 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i1
  %l18 = alloca i1
  %l22 = alloca ptr
  %l31 = alloca i32
  %l34 = alloca i1
  %l35 = alloca i1
  %l40 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i64, ptr %l6, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l13
  br label %bb5
bb5:
  %t18 = load i64, ptr %l13, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t22, i64 %t23)
  store i1 %t26, ptr %l17
  br label %bb6
bb6:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t31, i64 %t32)
  store ptr %t35, ptr %l22
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Func", ptr %t36, i32 0, i32 7
  %t39 = load i1, ptr %t38, !tbaa !21
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %t51, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t48, i32 %t52)
  store i32 %t55, ptr %l31
  br label %bb14
bb14:
  %t56 = load i32, ptr %l31, !tbaa !23
  store i32 %t56, ptr %l4, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l4, !tbaa !23
  %t61 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l34
  br label %bb15
bb15:
  %t62 = load i1, ptr %l34, !tbaa !21
  br i1 %t62, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb19
bb17:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l4, !tbaa !23
  %t72 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %t68, i32 %t69)
  store i1 %t72, ptr %l40
  br label %bb18
bb18:
  %t73 = load i1, ptr %l40, !tbaa !21
  %t74 = xor i1 %t73, true
  store i1 %t74, ptr %l35, !tbaa !21
  br label %bb19
bb19:
  %t76 = load i1, ptr %l35, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t78 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l17 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l47 = alloca i1
  %l50 = alloca i1
  %l51 = alloca { i64, ptr }
  %l55 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca i1
  %l63 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca { i64, ptr }
  %l81 = alloca i1
  %l82 = alloca i1
  %l83 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca i1
  %l88 = alloca { i64, ptr }
  %l94 = alloca i1
  %l100 = alloca %"compiler/source:Span"
  %l103 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
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
  store ptr %t9, ptr %l12, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l14
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l14, !tbaa !29
  %t15 = getelementptr %"compiler/check:frame", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t17, i64 %t16)
  store ptr %t19, ptr %l17
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l17, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l3, !tbaa !29
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_261e3060da575f7_c13e4a553a852783)
  unreachable
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/source:Source", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t35 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  store i64 %t38, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t46 = add i64 %t40, %t43
  %t47 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t48 = load i32, ptr %t47, !tbaa !23
  %t50 = sext i32 %t48 to i64
  %t53 = icmp sle i64 %t46, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb7, label %bb8
bb7:
  br label %bb50
bb8:
  br label %bb9
bb9:
  %t57 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t57, ptr %l35, !tbaa !27
  %t58 = load i64, ptr %l5, !tbaa !24
  store i64 %t58, ptr %l36, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = add i64 %t59, %t62
  store i64 %t65, ptr %l40, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l41, !tbaa !24
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sge i64 %t68, 0
  br i1 %t69, label %bb10, label %bb11
bb10:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l40, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1591269354839ba0_3246c27539059c2c)
  unreachable
bb12:
  %t75 = load i64, ptr %l40, !tbaa !24
  %t76 = load i64, ptr %l41, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_1591269354839ba0_3246c27539059c2c)
  unreachable
bb14:
  %t79 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l36, !tbaa !24
  %t82 = load i64, ptr %l40, !tbaa !24
  %t83 = getelementptr i8, ptr %t80, i64 %t81
  %t84 = sub i64 %t82, %t81
  %t85 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  %t87 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t86, { i64, ptr } %t87)
  store i1 %t90, ptr %l47
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_1591269354839ba0_3246c27539059c2c)
  unreachable
bb16:
  %t91 = load i1, ptr %l47, !tbaa !21
  br i1 %t91, label %bb17, label %bb18
bb17:
  %t92 = load i64, ptr %l5, !tbaa !24
  %t94 = icmp eq i64 %t92, 0
  br i1 %t94, label %bb19, label %bb20
bb18:
  br label %bb48
bb19:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb29
bb20:
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t96, ptr %l51, !tbaa !27
  %t97 = load i64, ptr %l5, !tbaa !24
  %t99 = sub i64 %t97, 1
  %t101 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i8, ptr %t102, i64 %t99
  %t104 = load i8, ptr %t103, !tbaa !32
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t104)
  store i1 %t106, ptr %l55
  br label %bb21
bb21:
  %t107 = load i1, ptr %l55, !tbaa !21
  br i1 %t107, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb25
bb23:
  %t108 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t108, ptr %l57, !tbaa !27
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = sub i64 %t109, 1
  %t113 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i8, ptr %t114, i64 %t111
  %t116 = load i8, ptr %t115, !tbaa !32
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t116)
  store i1 %t118, ptr %l61
  br label %bb24
bb24:
  %t119 = load i1, ptr %l61, !tbaa !21
  store i1 %t119, ptr %l56, !tbaa !21
  br label %bb25
bb25:
  %t120 = load i1, ptr %l56, !tbaa !21
  br i1 %t120, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb28
bb27:
  %t121 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t121, ptr %l63, !tbaa !27
  %t122 = load i64, ptr %l5, !tbaa !24
  %t124 = sub i64 %t122, 1
  %t126 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i8, ptr %t127, i64 %t124
  %t129 = load i8, ptr %t128, !tbaa !32
  %t131 = icmp eq i8 %t129, 95
  store i1 %t131, ptr %l62, !tbaa !21
  br label %bb28
bb28:
  %t133 = load i1, ptr %l62, !tbaa !21
  %t134 = xor i1 %t133, true
  store i1 %t134, ptr %l50, !tbaa !21
  br label %bb29
bb29:
  %t136 = load i1, ptr %l50, !tbaa !21
  store i1 %t136, ptr %l6, !tbaa !21
  %t137 = load i64, ptr %l5, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t143 = add i64 %t137, %t140
  store i64 %t143, ptr %l7, !tbaa !24
  %t145 = load i64, ptr %l7, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t146, 0
  %t151 = icmp sge i64 %t145, %t148
  br i1 %t151, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb40
bb31:
  %t153 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t153, ptr %l78, !tbaa !27
  %t154 = load i64, ptr %l7, !tbaa !24
  %t156 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr i8, ptr %t157, i64 %t154
  %t159 = load i8, ptr %t158, !tbaa !32
  %t161 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t159)
  store i1 %t161, ptr %l81
  br label %bb32
bb32:
  %t162 = load i1, ptr %l81, !tbaa !21
  br i1 %t162, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb36
bb34:
  %t163 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t163, ptr %l83, !tbaa !27
  %t164 = load i64, ptr %l7, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i8, ptr %t167, i64 %t164
  %t169 = load i8, ptr %t168, !tbaa !32
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t169)
  store i1 %t171, ptr %l86
  br label %bb35
bb35:
  %t172 = load i1, ptr %l86, !tbaa !21
  store i1 %t172, ptr %l82, !tbaa !21
  br label %bb36
bb36:
  %t173 = load i1, ptr %l82, !tbaa !21
  br i1 %t173, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb39
bb38:
  %t174 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t174, ptr %l88, !tbaa !27
  %t175 = load i64, ptr %l7, !tbaa !24
  %t177 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr i8, ptr %t178, i64 %t175
  %t180 = load i8, ptr %t179, !tbaa !32
  %t182 = icmp eq i8 %t180, 95
  store i1 %t182, ptr %l87, !tbaa !21
  br label %bb39
bb39:
  %t184 = load i1, ptr %l87, !tbaa !21
  %t185 = xor i1 %t184, true
  store i1 %t185, ptr %l77, !tbaa !21
  br label %bb40
bb40:
  %t187 = load i1, ptr %l77, !tbaa !21
  store i1 %t187, ptr %l8, !tbaa !21
  %t188 = load i1, ptr %l6, !tbaa !21
  br i1 %t188, label %bb41, label %bb42
bb41:
  %t190 = load i1, ptr %l8, !tbaa !21
  store i1 %t190, ptr %l94, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb43
bb43:
  %t192 = load i1, ptr %l94, !tbaa !21
  br i1 %t192, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s3
  %t193 = load i64, ptr %l5, !tbaa !24
  %t195 = trunc i64 %t193 to i32
  %t196 = load i64, ptr %l7, !tbaa !24
  %t198 = trunc i64 %t196 to i32
  %t201 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t195, i32 %t198)
  store %"compiler/source:Span" %t201, ptr %l100
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t202 = load %"compiler/source:Span", ptr %l100
  store %"compiler/source:Span" %t202, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t203 = load i64, ptr %l5, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l5, !tbaa !24
  br label %bb49
bb49:
  br label %bb6
bb50:
  %t207 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t207, ptr %l103
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t208 = load %"compiler/source:Span", ptr %l103
  store %"compiler/source:Span" %t208, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l39 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l65 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l76 = alloca i1
  %l82 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca i1
  %l90 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i1
  %l106 = alloca { i64, ptr }
  %l108 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t17 = load ptr, ptr %l16, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 6
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l17, !tbaa !21
  %t25 = xor i1 %t24, true
  store i1 %t25, ptr %l9, !tbaa !21
  br label %bb87
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t28 = load ptr, ptr %l21, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 10
  store i1 %t34, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t37 = load ptr, ptr %l25, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l25, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 1
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t44 = load i1, ptr %l26, !tbaa !21
  br i1 %t44, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb87
bb18:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb19, label %bb20
bb19:
  %t49 = load ptr, ptr %l29, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 11
  store i1 %t52, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb21, label %bb22
bb21:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l2, !tbaa !29
  br label %bb23
bb22:
  br label %bb35
bb23:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Cond", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Cond", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = icmp eq ptr %t72, null
  br i1 %t74, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb30
bb26:
  call void @__olang_check_failed(ptr @olang_loc_7bdd4e800dbf10f8_a5805e1380ae00f4)
  unreachable
bb27:
  br label %bb28
bb28:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Cond", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t79)
  store i1 %t81, ptr %l45
  br label %bb29
bb29:
  %t82 = load i1, ptr %l45, !tbaa !21
  store i1 %t82, ptr %l39, !tbaa !21
  br label %bb30
bb30:
  %t83 = load i1, ptr %l39, !tbaa !21
  br i1 %t83, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb34
bb32:
  %t84 = load ptr, ptr %l2, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Cond", ptr %t84, i32 0, i32 2
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t87)
  store i1 %t89, ptr %l49
  br label %bb33
bb33:
  %t90 = load i1, ptr %l49, !tbaa !21
  store i1 %t90, ptr %l46, !tbaa !21
  br label %bb34
bb34:
  %t91 = load i1, ptr %l46, !tbaa !21
  store i1 %t91, ptr %l9, !tbaa !21
  br label %bb87
bb35:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t93 = load ptr, ptr %l50, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb36, label %bb37
bb36:
  %t96 = load ptr, ptr %l50, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 18}
  %t99 = icmp eq i64 %t97, 13
  store i1 %t99, ptr %l51, !tbaa !21
  br label %bb37
bb37:
  %t100 = load i1, ptr %l51, !tbaa !21
  br i1 %t100, label %bb38, label %bb39
bb38:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr { i64, [5 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l3, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t107 = load ptr, ptr %l3, !tbaa !29
  %t109 = call i1 @compiler_2fcheck_2ematchExisting(ptr %v0, ptr %t107)
  store i1 %t109, ptr %l57
  br label %bb41
bb41:
  %t110 = load i1, ptr %l57, !tbaa !21
  store i1 %t110, ptr %l9, !tbaa !21
  br label %bb87
bb42:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t112 = load ptr, ptr %l58, !tbaa !29
  %t113 = icmp ne ptr %t112, null
  br i1 %t113, label %bb43, label %bb44
bb43:
  %t115 = load ptr, ptr %l58, !tbaa !29
  %t116 = load i64, ptr %t115, !range !{i64 0, i64 18}
  %t118 = icmp eq i64 %t116, 14
  store i1 %t118, ptr %l59, !tbaa !21
  br label %bb44
bb44:
  %t119 = load i1, ptr %l59, !tbaa !21
  br i1 %t119, label %bb45, label %bb46
bb45:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t122, i32 0, i32 2
  %t124 = load ptr, ptr %t123
  store ptr %t124, ptr %l4, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t128 = call i1 @compiler_2fcheck_2etryExisting(ptr %v0, ptr %t126)
  store i1 %t128, ptr %l65
  br label %bb48
bb48:
  %t129 = load i1, ptr %l65, !tbaa !21
  store i1 %t129, ptr %l9, !tbaa !21
  br label %bb87
bb49:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t131 = load ptr, ptr %l66, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb50, label %bb51
bb50:
  %t134 = load ptr, ptr %l66, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 18}
  %t137 = icmp eq i64 %t135, 12
  store i1 %t137, ptr %l67, !tbaa !21
  br label %bb51
bb51:
  %t138 = load i1, ptr %l67, !tbaa !21
  br i1 %t138, label %bb52, label %bb53
bb52:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr { i64, [5 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t141, i32 0, i32 2
  %t143 = load ptr, ptr %t142
  store ptr %t143, ptr %l5, !tbaa !29
  br label %bb54
bb53:
  br label %bb62
bb54:
  %t145 = load ptr, ptr %l5, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Seq", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = icmp eq ptr %t148, null
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb55, label %bb56
bb55:
  %t154 = load ptr, ptr %l5, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Seq", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = icmp eq ptr %t157, null
  br i1 %t159, label %bb57, label %bb58
bb56:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb61
bb57:
  call void @__olang_check_failed(ptr @olang_loc_4533f85d93cedd17_b546fe5da9c85083)
  unreachable
bb58:
  br label %bb59
bb59:
  %t161 = load ptr, ptr %l5, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Seq", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t164)
  store i1 %t166, ptr %l82
  br label %bb60
bb60:
  %t167 = load i1, ptr %l82, !tbaa !21
  store i1 %t167, ptr %l76, !tbaa !21
  br label %bb61
bb61:
  %t168 = load i1, ptr %l76, !tbaa !21
  store i1 %t168, ptr %l9, !tbaa !21
  br label %bb87
bb62:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l83, !tbaa !29
  store i1 false, ptr %l84, !tbaa !21
  %t170 = load ptr, ptr %l83, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb63, label %bb64
bb63:
  %t173 = load ptr, ptr %l83, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 18}
  %t176 = icmp eq i64 %t174, 17
  store i1 %t176, ptr %l84, !tbaa !21
  br label %bb64
bb64:
  %t177 = load i1, ptr %l84, !tbaa !21
  br i1 %t177, label %bb65, label %bb66
bb65:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr { i64, [5 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t180, i32 0, i32 2
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l6, !tbaa !29
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t184 = load ptr, ptr %l6, !tbaa !29
  %t186 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t184)
  store i1 %t186, ptr %l90
  br label %bb68
bb68:
  %t187 = load i1, ptr %l90, !tbaa !21
  store i1 %t187, ptr %l9, !tbaa !21
  br label %bb87
bb69:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t189 = load ptr, ptr %l91, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb70, label %bb71
bb70:
  %t192 = load ptr, ptr %l91, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 18}
  %t195 = icmp eq i64 %t193, 9
  store i1 %t195, ptr %l92, !tbaa !21
  br label %bb71
bb71:
  %t196 = load i1, ptr %l92, !tbaa !21
  br i1 %t196, label %bb72, label %bb73
bb72:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t199, i32 0, i32 2
  %t201 = load i32, ptr %t200, !range !{i32 0, i32 52}
  store i32 %t201, ptr %l7
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr { i64, [5 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t205, i32 0, i32 4
  %t207 = load { i64, ptr }, ptr %t206
  store { i64, ptr } %t207, ptr %l8, !tbaa !27
  br label %bb74
bb73:
  br label %bb82
bb74:
  %t209 = load i32, ptr %l7, !range !{i32 0, i32 52}
  %t211 = trunc i64 20 to i32
  %t212 = icmp eq i32 %t209, %t211
  br i1 %t212, label %bb75, label %bb76
bb75:
  %t214 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t214, 0
  %t218 = icmp eq i64 %t216, 1
  store i1 %t218, ptr %l101, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb77
bb77:
  %t220 = load i1, ptr %l101, !tbaa !21
  br i1 %t220, label %bb78, label %bb79
bb78:
  %t221 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t221, ptr %l106, !tbaa !27
  %t222 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr ptr, ptr %t223, i64 0
  %t225 = load ptr, ptr %t224, !tbaa !39
  %t227 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t225)
  store i1 %t227, ptr %l108
  br label %bb80
bb79:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb81
bb80:
  %t228 = load i1, ptr %l108, !tbaa !21
  store i1 %t228, ptr %l105, !tbaa !21
  br label %bb81
bb81:
  %t229 = load i1, ptr %l105, !tbaa !21
  store i1 %t229, ptr %l9, !tbaa !21
  br label %bb87
bb82:
  br i1 true, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_b94a36f209a3c5e5_113c4160723e4631)
  unreachable
bb87:
  %t230 = load i1, ptr %l9, !tbaa !21
  store i1 %t230, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2estoredCase(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %t3 = getelementptr %"compiler/ast:Case", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t4, ptr %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Case", ptr %t8, i32 0, i32 4
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t11, ptr %t12)
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Case", ptr %t15, i32 0, i32 5
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t18, ptr %t19)
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %v0, i32 %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:ownerAt"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:ownerAt" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/check:ownerAt" %t6, i1 %a1, 1
  store %"compiler/check:ownerAt" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:ownerAt", ptr %rv
  ret %"compiler/check:ownerAt" %rr
}

define dso_local %"compiler/check:payloadItem" @compiler_2fcheck_3apayloadItem_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1) #0 {
entry:
  %rv = alloca %"compiler/check:payloadItem"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:payloadItem" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/check:payloadItem" %t6, ptr %a1, 1
  store %"compiler/check:payloadItem" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:payloadItem", ptr %rv
  ret %"compiler/check:payloadItem" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@.d0 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"it introduces a type variable, which no zero binds" }>, align 8
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

@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22\22" }>, align 8
@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c">(0)" }>, align 8
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
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 114}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 114}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)
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

@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Pure" }>, align 8
@olang_2esole_2eArray_3ccompiler_2ftyped_3aConst_26_3e_2e_2d1 = weak hidden constant i1 false
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Neg" }>, align 8
@.d12 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitNot" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e50 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@__olang_empty_array = external constant [16 x i64]
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'-'" }>, align 8
@.d15 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Neg ('-')" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'~'" }>, align 8
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

declare i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_fa991e6198fa6a14_3129c18424918488 = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2eToArr_H1b89f7fcc263bba924ca04e7c3aa48c7(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Text" @compiler_2ftyped_3aText_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCaseType(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCase(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCopies(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitCtor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUseOf(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
declare %"compiler/check:ValueAsk" @compiler_2fcheck_3aValueAsk_2ector(ptr %v0, i32 %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, { i64, [3 x i64] } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2ePush_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %a0, %"compiler/check:ValueAsk" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsAny(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6d92d89bf6179935_a746df8e6ee4ce11 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStrBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_4235fda77c59946a_df60ad3f0caa2a66 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerKind(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerElsewhere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerWritten(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2ede4c4ba9909085_e989644cd371c6b1 = external constant [0 x i8]
@olang_loc_7d19fc126307206d_86c002714b5cfe09 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %a0)
@olang_loc_50a05787c39822f3_4820228f4f4dc477 = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a066d2ce16f881cb_b1c9ea2c2a0314f = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_48c434cc052a730a_3ea1b318a5aaa0d6 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_b9703f47e3d93663_9ebf3615d73f11ff = external constant [0 x i8]
@olang_loc_1d4c1b6caa485862_a69bc63913ecdbfe = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueLentHere(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueAlias(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fcheck_2eLaneArr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_d04702acd6c67beb_c6baeec7be1e7af7 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_57a7d7e6d1174c7c_73fda2027ad2ad8 = external constant [0 x i8]
@olang_loc_fd3b2969d106d871_acdc32576a39b9ed = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fcheck_2elocalIdOf(ptr %v0, ptr %a0)
@olang_loc_9336e0175c2e9c6a_aabb9d2690ac9706 = external constant [0 x i8]
@olang_loc_12a21cc2c4eb057_a597a544841c60b = external constant [0 x i8]
@olang_loc_286fe13485cd942f_1c0d0a1e63f5e7b3 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eLaneBin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinType(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneReferences(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLength(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneUnType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2fcheck_2eLaneUn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_77892b47b9a99b47_46cd468a4d441f7b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_5f1ab9969ad5ed2d_61c4fa41275be331 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedField(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_bddcfdd9cfe1623c_a2c83caf107f9198 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cabdf486839d2fe5_195cd685fa5544d9 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowExponent(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eLen_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %a0)
declare %"compiler/check:factRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eAt_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %a0)
declare %"compiler/check:effectPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eAt_H2c6933398e42ebe4f85d63d17b1157eb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2ePromPure = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflArgCompr(ptr %v0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflKeeps(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/check:reflList" %a2, i64 %a3, i64 %a4)
declare %"compiler/ast:Compr" @compiler_2fast_3aCompr_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5, i1 %a6, i64 %a7)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_3727962a9e2e15db_7cf774666c9d4227 = external constant [0 x i8]
@olang_loc_81d441761e2a717d_f45e749fdf1e1e81 = external constant [0 x i8]
@olang_loc_64cdadb0ead6eee6_ae7a9e6dd8bef26a = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
@olang_loc_e153c6abdfe6ecb0_f26e63b1d3597a0c = external constant [0 x i8]
@olang_loc_19db3dca8a9dc05d_2b95ab49e23e3919 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotNumber(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotInt(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTryList(ptr %v0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %a0, %"compiler/check:reflList" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emeets(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_261e3060da575f7_c13e4a553a852783 = external constant [0 x i8]
@olang_loc_1591269354839ba0_3246c27539059c2c = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_7bdd4e800dbf10f8_a5805e1380ae00f4 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ematchExisting(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2etryExisting(ptr %v0, ptr %a0)
@olang_loc_4533f85d93cedd17_b546fe5da9c85083 = external constant [0 x i8]
@olang_loc_b94a36f209a3c5e5_113c4160723e4631 = external constant [0 x i8]
declare void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)

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
