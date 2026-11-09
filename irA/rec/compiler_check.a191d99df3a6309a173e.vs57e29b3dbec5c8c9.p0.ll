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
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/check:roArg" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/pair:Pair.b139c4f75a6545712256427180a82a06" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" }
%"compiler/check:roDeepArg" = type { i64, ptr, i64, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:AssertAsk" = type { i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr } }
@G_2ecompiler_2fcheck_2eCtEns = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eCtEntry = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eCtReq = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneArr = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneBin = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneCmp = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneMagic = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneScalar = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneSel = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneUn = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eMaxUnroll = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\10\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes = constant <{ [8 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [16 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k1, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k2, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k3, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k4, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k5, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k6, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k7, [24 x i8] c"\00\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k8, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k9, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k10, [24 x i8] c"\02\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k11, [24 x i8] c"\02\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k12, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k13, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k14, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k15, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k16, [24 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k17, [24 x i8] c"\00\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k18, [24 x i8] c"\00\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k19, [24 x i8] c"\00\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k20, [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k21, [24 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k22, [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eOpShapes.k23, [16 x i8] c"\01\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2fcheck_2eOpShapes.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\50\6C\75\73" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k2 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\4D\69\6E\75\73" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k3 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\4D\75\6C" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k4 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\44\69\76" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\52\65\6D" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k6 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\4D\61\74\4D\75\6C" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k7 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\4E\65\67" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\4C\65\73\73" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k9 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\41\74" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k10 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\53\65\74\41\74" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k11 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\53\6C\69\63\65" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k12 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\42\69\74\41\6E\64" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k13 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\42\69\74\4F\72" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k14 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\42\69\74\58\6F\72" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k15 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\53\68\69\66\74\4C\65\66\74" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k16 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\53\68\69\66\74\52\69\67\68\74" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k17 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\42\69\74\4E\6F\74" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k18 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\6E\63" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k19 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\44\65\63" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k20 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\4C\65\6E" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k21 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\45\71" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k22 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\53\74\72" }>, align 8
@G_2ecompiler_2fcheck_2eOpShapes.k23 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\50\6F\77" }>, align 8
@G_2ecompiler_2fcheck_2eRoDecl = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRoGlobal = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRoReturned = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRoStored = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvBool = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvCase = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvInt = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvText = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k2, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k3, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k5, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k6, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k7, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k8, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k9, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k10, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k11, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fcheck_2eliteralOrder.k12 }>, align 64
@G_2ecompiler_2fcheck_2eliteralOrder.k1 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\36\34" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\36\34" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k3 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\36\34" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k4 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\33\32" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\33\32" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k6 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\33\32" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k7 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\31\36" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\42\46\31\36" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k9 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\31\36" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k10 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\31\36" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k11 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\49\38" }>, align 8
@G_2ecompiler_2fcheck_2eliteralOrder.k12 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\55\38" }>, align 8
define dso_local i1 @compiler_2fcheck_2eclosedCall(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 3
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Call", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 5}
  %t19 = icmp eq i64 %t17, 0
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l8, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l11, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 5}
  %t28 = icmp eq i64 %t26, 4
  store i1 %t28, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Call", ptr %t30, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t35 = call i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %t33)
  store i1 %t35, ptr %l17
  br label %bb13
bb13:
  %t36 = load i1, ptr %l17, !tbaa !21
  store i1 %t36, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_317fdf139725c543_9c9e0109f99156f7)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, { i64, ptr } }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l14 = alloca { i64, { i64, ptr } }
  %l27 = alloca { i64, ptr }
  %l34 = alloca i32
  %l40 = alloca i1
  %l41 = alloca i1
  %l44 = alloca ptr
  %l48 = alloca i32
  %l50 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, i32 }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i64, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAttrsOf(ptr %v0, ptr %s0, ptr %t4, i32 %a1)
  store { i64, { i64, ptr } } %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load { i64, { i64, ptr } }, ptr %l14
  store { i64, { i64, ptr } } %t9, ptr %l3
  %t10 = getelementptr { i64, { i64, ptr } }, ptr %l3, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l4, !tbaa !24
  %t13 = getelementptr { i64, { i64, ptr } }, ptr %l3, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l5, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t16, 0
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = insertvalue { i64, i32 } undef, i64 -1, 0
  %t21 = insertvalue { i64, i32 } %t20, i32 0, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t21, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t23, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  br label %bb20
bb7:
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t37, ptr %l27, !tbaa !27
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr ptr, ptr %t41, i64 %t38
  %t43 = load ptr, ptr %t42, !tbaa !39
  store ptr %t43, ptr %l9, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load ptr, ptr %l9, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Attr", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %t49, !tbaa !23
  %t54 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t45, i64 %t46, i32 %t50)
  store i32 %t54, ptr %l34
  br label %bb9
bb9:
  %t55 = load i32, ptr %l34, !tbaa !23
  store i32 %t55, ptr %l10, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l10, !tbaa !23
  %t63 = load i32, ptr %l2, !tbaa !23
  %t67 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t61, i32 %t62, i32 %t63)
  store i1 %t67, ptr %l40
  br label %bb10
bb10:
  %t68 = load i1, ptr %l40, !tbaa !21
  br i1 %t68, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb15
bb12:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  store ptr %t74, ptr %l44, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i32, ptr %l2, !tbaa !23
  %t82 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHeld(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t82, ptr %l48
  br label %bb13
bb13:
  %t83 = load i32, ptr %l10, !tbaa !23
  %t84 = load ptr, ptr %l44, !tbaa !29
  %t85 = load i32, ptr %l48, !tbaa !23
  %t87 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t84, i32 %t85, i32 %t83)
  store i1 %t87, ptr %l50
  br label %bb14
bb14:
  %t88 = load i1, ptr %l50, !tbaa !21
  store i1 %t88, ptr %l41, !tbaa !21
  br label %bb15
bb15:
  %t89 = load i1, ptr %l41, !tbaa !21
  br i1 %t89, label %bb16, label %bb17
bb16:
  %t90 = load i64, ptr %l4, !tbaa !24
  %t91 = load ptr, ptr %l9, !tbaa !29
  %t93 = getelementptr %"compiler/ast:Attr", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %t93, !tbaa !23
  %t96 = insertvalue { i64, i32 } undef, i64 %t90, 0
  %t98 = insertvalue { i64, i32 } %t96, i32 %t94, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t98, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l7, !tbaa !24
  br label %bb5
bb20:
  %t104 = insertvalue { i64, i32 } undef, i64 -1, 0
  %t105 = insertvalue { i64, i32 } %t104, i32 0, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t105, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i32 }, ptr %rv
  ret { i64, i32 } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinElem(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %rv = alloca i1
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
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  store i1 %t11, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l5, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb15
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l12
  br label %bb6
bb6:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l16
  br label %bb9
bb8:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb14
bb9:
  %t25 = load i1, ptr %l16, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb13
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l22
  br label %bb12
bb12:
  %t36 = load i1, ptr %l22, !tbaa !21
  store i1 %t36, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l18, !tbaa !21
  store i1 %t37, ptr %l13, !tbaa !21
  br label %bb14
bb14:
  %t38 = load i1, ptr %l13, !tbaa !21
  store i1 %t38, ptr %l9, !tbaa !21
  br label %bb15
bb15:
  %t39 = load i1, ptr %l9, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l12 = alloca i32
  %l13 = alloca %"compiler/typed:Call"
  %rv = alloca ptr
  %t17 = alloca { i64, [5 x i64] }, align 8
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l5
  store i32 %a2, ptr %l6, !tbaa !23
  store ptr %a3, ptr %l7, !tbaa !29
  store { i64, ptr } %a4, ptr %l8, !tbaa !27
  %t6 = load %"compiler/source:Span", ptr %l1
  %t10 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 0, %"compiler/source:Span" %t6)
  store i32 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t13 = load i32, ptr %l12, !tbaa !23
  %t14 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v1, ptr %v2, ptr %v3, ptr %t11, { i64, ptr } %t12, i32 %t13, i1 false, i1 false)
  store %"compiler/typed:Call" %t14, ptr %l13
  br label %bb2
bb2:
  %t15 = load %"compiler/typed:Call", ptr %l13
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Call" %t15, ptr %t16
  store { i64, [5 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 0
  store i64 6, ptr %t18
  %t19 = load %"compiler/source:Span", ptr %l5
  %t20 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t19, 0
  %t21 = load i32, ptr %l6, !tbaa !23
  %t22 = insertvalue { %"compiler/source:Span", i32, ptr } %t20, i32 %t21, 1
  %t24 = insertvalue { %"compiler/source:Span", i32, ptr } %t22, ptr %t16, 2
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t24, ptr %t25
  %t26 = load { i64, [5 x i64] }, ptr %t17
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t26, ptr %t28
  store ptr %t28, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l12 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %s0, ptr %a1)
  store { i64, ptr } %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t8 = ptrtoint ptr %t7 to i64
  %t9 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t8, i64 8)
  %t10 = getelementptr { ptr, ptr }, ptr %t9, i32 0, i32 0
  store ptr %t6, ptr %t10, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t12 = getelementptr { ptr, ptr }, ptr %t9, i32 0, i32 1
  store ptr %v0, ptr %t12, !tbaa !28
  %t13 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t14 = insertvalue { ptr, ptr } %t13, ptr %t9, 1
  %t17 = extractvalue { ptr, ptr } %t14, 0
  %t18 = extractvalue { ptr, ptr } %t14, 1
  call void @std_2fprelude_2farray_2eArray_3ccompiler_2ftypes_3aTypeId_3e_2eSort_3ccompiler_2ftypes_3aTypeId_2c_20_3f_3e(ptr %s0, ptr %v0, { i64, ptr } %t5, ptr %t17, ptr %t18)
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t24, { i64, ptr } %t25)
  store i32 %t28, ptr %l12
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load i32, ptr %l12, !tbaa !23
  store i32 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/check:litv"
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l15 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %l27 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l32 = alloca %"compiler/check:litv"
  %l35 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l45 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i1
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca ptr
  %l67 = alloca i32
  %l71 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l87 = alloca %"compiler/source:Span"
  %l90 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l97 = alloca i64
  %l100 = alloca ptr
  %l104 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l108 = alloca %"compiler/source:Span"
  %l109 = alloca { i64, ptr }
  %l111 = alloca %"compiler/source:Span"
  %l118 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s1, ptr %t7, %"compiler/source:Span" %t8, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  %t15 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t11, %"compiler/source:Span" %t12)
  store ptr %t15, ptr %l15
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t16 = load ptr, ptr %l15, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb5:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t21 = icmp ne i64 %t19, 1
  br i1 %t21, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t24, ptr %l20
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s2, ptr %s2, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, i64 %t27)
  store %"compiler/diagmsg:Msg" %t29, ptr %l23
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l20
  %t32 = load %"compiler/diagmsg:Msg", ptr %l23
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t30, %"compiler/source:Span" %t31, %"compiler/diagmsg:Msg" %t32)
  store i64 %t33, ptr %l24
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l1
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t34, %"compiler/source:Span" %t35)
  store ptr %t38, ptr %l27
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t39 = load ptr, ptr %l27, !tbaa !29
  store ptr %t39, ptr %rv
  br label %ret
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t41, ptr %l29, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr ptr, ptr %t43, i64 0
  %t45 = load ptr, ptr %t44, !tbaa !39
  %t49 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t40, ptr %t45)
  store %"compiler/check:litv" %t49, ptr %l32
  br label %bb12
bb12:
  %t50 = load %"compiler/check:litv", ptr %l32
  store %"compiler/check:litv" %t50, ptr %l4
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t51, ptr %l5, !tbaa !23
  %t53 = getelementptr %"compiler/check:litv", ptr %l4, i32 0, i32 0
  %t54 = load i1, ptr %t53, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/check:litv", ptr %l4
  %t58 = load i32, ptr %l2, !tbaa !23
  %t62 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t56, %"compiler/check:litv" %t57, i32 %t58)
  store i1 %t62, ptr %l39
  br label %bb15
bb14:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb16
bb15:
  %t63 = load i1, ptr %l39, !tbaa !21
  store i1 %t63, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t64 = load i1, ptr %l35, !tbaa !21
  br i1 %t64, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb27
bb18:
  %t65 = getelementptr %"compiler/check:litv", ptr %l4, i32 0, i32 0
  %t66 = load i1, ptr %t65, !tbaa !21
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb19, label %bb20
bb19:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t71, ptr %l45, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 0
  %t75 = load ptr, ptr %t74, !tbaa !39
  %t78 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t70, ptr %t75)
  store i1 %t78, ptr %l47
  br label %bb21
bb20:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb26
bb21:
  %t79 = load i1, ptr %l47, !tbaa !21
  br i1 %t79, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb25
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t81, ptr %l50, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr ptr, ptr %t83, i64 0
  %t85 = load ptr, ptr %t84, !tbaa !39
  %t88 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t80, ptr %t85)
  store i1 %t88, ptr %l52
  br label %bb24
bb24:
  %t89 = load i1, ptr %l52, !tbaa !21
  store i1 %t89, ptr %l48, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l48, !tbaa !21
  store i1 %t90, ptr %l43, !tbaa !21
  br label %bb26
bb26:
  %t91 = load i1, ptr %l43, !tbaa !21
  store i1 %t91, ptr %l40, !tbaa !21
  br label %bb27
bb27:
  %t92 = load i1, ptr %l40, !tbaa !21
  br i1 %t92, label %bb28, label %bb29
bb28:
  %t93 = load i32, ptr %l2, !tbaa !23
  store i32 %t93, ptr %l5, !tbaa !23
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l54, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t97, ptr %l56, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr ptr, ptr %t99, i64 0
  %t101 = load ptr, ptr %t100, !tbaa !39
  %t103 = load i32, ptr %l5, !tbaa !23
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t96, ptr %t101, i32 %t103)
  store ptr %t107, ptr %l60
  br label %bb31
bb31:
  %t108 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t108, ptr %l61, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr ptr, ptr %t110, i64 0
  %t112 = load ptr, ptr %t111, !tbaa !39
  %t114 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t112)
  store %"compiler/source:Span" %t114, ptr %l63
  br label %bb32
bb32:
  %t115 = load ptr, ptr %l54, !tbaa !29
  %t116 = load ptr, ptr %l60, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l63
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t115, ptr %t116, %"compiler/source:Span" %t117)
  store ptr %t118, ptr %l64
  br label %bb33
bb33:
  %t119 = load ptr, ptr %l64, !tbaa !29
  store ptr %t119, ptr %l6, !tbaa !29
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t123 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t120)
  store i32 %t123, ptr %l67
  br label %bb34
bb34:
  %t124 = load i32, ptr %l67, !tbaa !23
  store i32 %t124, ptr %l7, !tbaa !23
  %t125 = load i32, ptr %l7, !tbaa !23
  %t126 = load i32, ptr %l2, !tbaa !23
  %t129 = icmp eq i32 %t125, %t126
  br i1 %t129, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb37
bb36:
  %t131 = load i32, ptr %l7, !tbaa !23
  %t132 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t135 = icmp eq i32 %t131, %t132
  store i1 %t135, ptr %l71, !tbaa !21
  br label %bb37
bb37:
  %t137 = load i1, ptr %l71, !tbaa !21
  br i1 %t137, label %bb38, label %bb39
bb38:
  %t138 = load ptr, ptr %l6, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t138, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l7, !tbaa !23
  %t144 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t140, i32 %t141)
  store i1 %t144, ptr %l78
  br label %bb41
bb41:
  %t145 = load i1, ptr %l78, !tbaa !21
  br i1 %t145, label %bb42, label %bb43
bb42:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l2, !tbaa !23
  %t150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l82
  br label %bb44
bb43:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb45
bb44:
  %t151 = load i1, ptr %l82, !tbaa !21
  store i1 %t151, ptr %l79, !tbaa !21
  br label %bb45
bb45:
  %t152 = load i1, ptr %l79, !tbaa !21
  %t153 = xor i1 %t152, true
  br i1 %t153, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s5
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l84, !tbaa !29
  %t156 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t156, ptr %l85, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr ptr, ptr %t158, i64 0
  %t160 = load ptr, ptr %t159, !tbaa !39
  %t162 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t160)
  store %"compiler/source:Span" %t162, ptr %l87
  br label %bb48
bb47:
  br label %bb54
bb48:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l2, !tbaa !23
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t163, i32 %t164)
  store { i64, ptr } %t167, ptr %l90
  br label %bb49
bb49:
  %t168 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l91, !tbaa !27
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l7, !tbaa !23
  %t179 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t175, i32 %t176)
  store { i64, ptr } %t179, ptr %l94
  br label %bb50
bb50:
  %t180 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 0
  %t182 = extractvalue { i64, ptr } %t180, 1
  %t183 = mul i64 %t181, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t183)
  call void @llvm.memcpy.p0.p0.i64(ptr %t184, ptr %t182, i64 %t183, i1 false)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  %t187 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %s5, ptr %s5, ptr %s5, { i64, ptr } %t187, { i64, ptr } %t186)
  store %"compiler/diagmsg:Msg" %t189, ptr %l96
  br label %bb51
bb51:
  %t190 = load ptr, ptr %l84, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l87
  %t192 = load %"compiler/diagmsg:Msg", ptr %l96
  %t193 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t190, %"compiler/source:Span" %t191, %"compiler/diagmsg:Msg" %t192)
  store i64 %t193, ptr %l97
  br label %bb52
bb52:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load %"compiler/source:Span", ptr %l1
  %t198 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t194, %"compiler/source:Span" %t195)
  store ptr %t198, ptr %l100
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t199 = load ptr, ptr %l100, !tbaa !29
  store ptr %t199, ptr %rv
  br label %ret
bb54:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l7, !tbaa !23
  %t202 = load i32, ptr %l2, !tbaa !23
  %t206 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvWords(ptr %v0, ptr %s0, ptr %t200, i32 %t201, i32 %t202)
  store { i64, ptr } %t206, ptr %l104
  br label %bb55
bb55:
  %t207 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 0
  %t210 = icmp sgt i64 %t208, 0
  br i1 %t210, label %bb56, label %bb57
bb56:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l107, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t213, ptr %l108
  %t214 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t214, ptr %l109, !tbaa !27
  %t215 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr ptr, ptr %t216, i64 0
  %t218 = load ptr, ptr %t217, !tbaa !39
  %t220 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t218)
  store %"compiler/source:Span" %t220, ptr %l111
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t221 = load ptr, ptr %l6, !tbaa !29
  %t222 = load i32, ptr %l2, !tbaa !23
  %t223 = load ptr, ptr %l107, !tbaa !29
  %t224 = load %"compiler/source:Span", ptr %l108
  %t225 = load %"compiler/source:Span", ptr %l111
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversionAt(ptr %v0, ptr %v2, ptr %t223, %"compiler/source:Span" %t224, %"compiler/source:Span" %t225, ptr %t221, i32 %t222)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l1
  %t230 = load ptr, ptr %l6, !tbaa !29
  %t231 = load i32, ptr %l2, !tbaa !23
  %t236 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t228, %"compiler/source:Span" %t229, ptr %t230, i32 %t231)
  store ptr %t236, ptr %l118
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  %t237 = load ptr, ptr %l118, !tbaa !29
  store ptr %t237, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataLength(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t12, i32 0, i32 3
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { { i64, ptr } }, ptr %t27, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_2d02cd2fcfc2423_ae8e71dd60838827)
  unreachable
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 -1, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4f661f5562a00322_e7c24924d50c1246)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryChecks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca i1
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l1, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t13)
  store ptr %t15, ptr %l15
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l15, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 1
  %t19 = load { i64, [2 x i64] }, ptr %t18
  store { i64, [2 x i64] } %t19, ptr %l2
  %t21 = load { i64, [2 x i64] }, ptr %l2
  %t23 = extractvalue { i64, [2 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t27 = getelementptr { i64 }, ptr %t26, i32 0, i32 0
  %t28 = load i64, ptr %t27
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  store ptr %t33, ptr %l22, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i64, ptr %l3, !tbaa !24
  %t41 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l26
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = load i64, ptr %l26, !tbaa !24
  %t44 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t42, i64 %t43)
  store i1 %t44, ptr %l27
  br label %bb10
bb10:
  %t45 = load i1, ptr %l27, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb23
bb14:
  %t46 = load { i64, [2 x i64] }, ptr %l2
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 1
  br i1 %t49, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_c7b5cbd58e58cb02_20344cc1e983d9b6)
  unreachable
bb23:
  %t51 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l30
  br label %bb24
bb24:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l4
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t53)
  store ptr %t55, ptr %l32
  br label %bb25
bb25:
  %t56 = load ptr, ptr %l32, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 5
  store ptr %t58, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb26
bb26:
  %t60 = load i64, ptr %l6, !tbaa !24
  store i64 %t60, ptr %l35, !tbaa !24
  %t61 = load ptr, ptr %l5, !tbaa !29
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l37
  br label %bb27
bb27:
  %t64 = load i64, ptr %l35, !tbaa !24
  %t65 = load i64, ptr %l37, !tbaa !24
  %t66 = icmp slt i64 %t64, %t65
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb28, label %bb29
bb28:
  br label %bb34
bb29:
  br label %bb30
bb30:
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t70, i64 %t71)
  store i32 %t74, ptr %l42
  br label %bb31
bb31:
  %t75 = load i32, ptr %l42, !tbaa !23
  %t78 = sext i32 %t75 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l4, i64 %t78)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l6, !tbaa !24
  br label %bb26
bb34:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecks(ptr %v0, ptr %s0, ptr %t85, i64 %t86, ptr %l4, i1 false)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumsEqual(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %lp19 = alloca ptr
  %lp20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l66 = alloca i64
  %l69 = alloca i64
  %l94 = alloca ptr
  %l97 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca i32
  %l104 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l107 = alloca i32
  %l108 = alloca i32
  %l112 = alloca ptr
  %l113 = alloca ptr
  %l114 = alloca %"compiler/source:Span"
  %l116 = alloca i32
  %l118 = alloca ptr
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l122 = alloca { i64, ptr }
  %l124 = alloca i32
  %l128 = alloca %"compiler/typed:Payload"
  %l131 = alloca %"compiler/source:Span"
  %l132 = alloca { i64, ptr }
  %l134 = alloca i32
  %l138 = alloca %"compiler/typed:Payload"
  %l146 = alloca i64
  %l149 = alloca i64
  %l167 = alloca ptr
  %l168 = alloca %"compiler/source:Span"
  %l169 = alloca i32
  %l173 = alloca { i64, ptr }
  %l180 = alloca ptr
  %l184 = alloca { i64, ptr }
  %l191 = alloca ptr
  %l192 = alloca ptr
  %l197 = alloca ptr
  %l200 = alloca ptr
  %l201 = alloca %"compiler/source:Span"
  %l202 = alloca i32
  %l203 = alloca i32
  %l207 = alloca ptr
  %l208 = alloca ptr
  %l209 = alloca %"compiler/source:Span"
  %l211 = alloca i32
  %l213 = alloca ptr
  %l215 = alloca ptr
  %l216 = alloca %"compiler/source:Span"
  %l217 = alloca i32
  %l222 = alloca %"compiler/typed:Cond"
  %l230 = alloca i64
  %l233 = alloca %"compiler/source:Span"
  %l234 = alloca i32
  %l238 = alloca { i64, ptr }
  %l241 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t202 = alloca { i64, [4 x i64] }, align 8
  %t231 = alloca { i64, [4 x i64] }, align 8
  %t308 = alloca { i64, [4 x i64] }, align 8
  %t338 = alloca { i64, [4 x i64] }, align 8
  %t419 = alloca { i64, [5 x i64] }, align 8
  %t462 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l31
  br label %bb1
bb1:
  %t6 = load i64, ptr %l31, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l32, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t8, ptr %l33
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l4, !tbaa !23
  %t12 = load %"compiler/source:Span", ptr %l1
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v3, ptr %t9, ptr %a2, i32 %t11, %"compiler/source:Span" %t12)
  store ptr %t17, ptr %l38
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l32, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l33
  %t20 = load ptr, ptr %l38, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v3, ptr %v3, ptr %t18, %"compiler/source:Span" %t19, ptr %t20)
  store ptr %t21, ptr %l39
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l39, !tbaa !29
  store ptr %t22, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l40, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t24, ptr %l41
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l4, !tbaa !23
  %t28 = load %"compiler/source:Span", ptr %l1
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v3, ptr %t25, ptr %a3, i32 %t27, %"compiler/source:Span" %t28)
  store ptr %t33, ptr %l46
  br label %bb4
bb4:
  %t34 = load ptr, ptr %l40, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l41
  %t36 = load ptr, ptr %l46, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v3, ptr %v3, ptr %t34, %"compiler/source:Span" %t35, ptr %t36)
  store ptr %t37, ptr %l47
  br label %bb5
bb5:
  %t38 = load ptr, ptr %l47, !tbaa !29
  store ptr %t38, ptr %l7, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  store ptr %t44, ptr %l50, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l4, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l55
  br label %bb6
bb6:
  %t55 = load ptr, ptr %l50, !tbaa !29
  %t56 = load i32, ptr %l55, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t55, i32 %t56)
  store { i64, ptr } %t57, ptr %l56
  br label %bb7
bb7:
  %t58 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t58, ptr %l8, !tbaa !27
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l1
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t59, %"compiler/source:Span" %t60, i32 %t61, i64 0)
  store ptr %t65, ptr %l60
  br label %bb8
bb8:
  %t66 = load ptr, ptr %l60, !tbaa !29
  store ptr %t66, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t71 = load i64, ptr %l11, !tbaa !24
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = icmp sgt i64 %t71, %t72
  br i1 %t75, label %bb9, label %bb10
bb9:
  %t77 = load i64, ptr %l12, !tbaa !24
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb14
bb11:
  %t81 = load i64, ptr %l11, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = sub i64 %t81, %t82
  %t86 = load i64, ptr %l12, !tbaa !24
  %t89 = add i64 %t85, %t86
  %t91 = sub i64 %t89, 1
  %t92 = load i64, ptr %l12, !tbaa !24
  %t95 = sdiv i64 %t91, %t92
  store i64 %t95, ptr %l69, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb13
bb13:
  %t97 = load i64, ptr %l69, !tbaa !24
  store i64 %t97, ptr %l66, !tbaa !24
  br label %bb14
bb14:
  %t98 = load i64, ptr %l66, !tbaa !24
  store i64 %t98, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb15
bb15:
  %t99 = load i64, ptr %l14, !tbaa !24
  %t100 = load i64, ptr %l13, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb16, label %bb17
bb16:
  br label %bb50
bb17:
  br label %bb18
bb18:
  %t107 = load i64, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l14, !tbaa !24
  %t109 = load i64, ptr %l12, !tbaa !24
  %t112 = mul i64 %t108, %t109
  %t115 = add i64 %t107, %t112
  %t117 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = sub i64 %t119, 1
  %t125 = sub i64 %t121, %t115
  store i64 %t125, ptr %l16, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  store ptr %t132, ptr %l94, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  store ptr %t138, ptr %l97, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t143 = load i32, ptr %l4, !tbaa !23
  %t144 = load i64, ptr %l16, !tbaa !24
  %t148 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t142, i32 %t143, i64 %t144)
  store i32 %t148, ptr %l102
  br label %bb19
bb19:
  %t149 = load ptr, ptr %l97, !tbaa !29
  %t150 = load i32, ptr %l102, !tbaa !23
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t149, i32 %t150)
  store i32 %t151, ptr %l103
  br label %bb20
bb20:
  %t152 = load ptr, ptr %l94, !tbaa !29
  %t153 = load i32, ptr %l103, !tbaa !23
  %t154 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t152, i32 %t153)
  store { i64, ptr } %t154, ptr %l104
  br label %bb21
bb21:
  %t155 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t155, ptr %l17, !tbaa !27
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l105, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t157, ptr %l106
  %t158 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t158, ptr %l107, !tbaa !23
  store i32 23, ptr %l108
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  %t161 = load ptr, ptr %l7, !tbaa !29
  %t165 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t159, %"compiler/source:Span" %t160, ptr %t161)
  store ptr %t165, ptr %l112
  br label %bb22
bb22:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l113, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t167, ptr %l114
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t168)
  store i32 %t170, ptr %l116
  br label %bb23
bb23:
  %t171 = load i64, ptr %l16, !tbaa !24
  %t172 = load ptr, ptr %l113, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l114
  %t174 = load i32, ptr %l116, !tbaa !23
  %t176 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t172, %"compiler/source:Span" %t173, i32 %t174, i64 %t171)
  store ptr %t176, ptr %l118
  br label %bb24
bb24:
  %t177 = load ptr, ptr %l118, !tbaa !29
  %t178 = load ptr, ptr %l105, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l106
  %t180 = load i32, ptr %l107, !tbaa !23
  %t181 = load i32, ptr %l108, !range !{i32 0, i32 52}
  %t182 = load ptr, ptr %l112, !tbaa !29
  %t184 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t178, %"compiler/source:Span" %t179, i32 %t180, i32 %t181, ptr %t182, ptr %t177)
  store ptr %t184, ptr %l120
  br label %bb25
bb25:
  %t185 = load ptr, ptr %l120, !tbaa !29
  store ptr %t185, ptr %l18, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t186, ptr %l121
  %t187 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t187, ptr %l122, !tbaa !27
  %t188 = load i64, ptr %l16, !tbaa !24
  %t190 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i32, ptr %t191, i64 %t188
  %t193 = load i32, ptr %t192, !tbaa !33
  store i32 %t193, ptr %l124, !tbaa !23
  %t194 = load ptr, ptr %l6, !tbaa !29
  %t195 = load i64, ptr %l16, !tbaa !24
  %t199 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v3, ptr %v3, ptr %t194, i64 %t195, i32 0)
  store %"compiler/typed:Payload" %t199, ptr %l128
  br label %bb26
bb26:
  %t200 = load %"compiler/typed:Payload", ptr %l128
  %t201 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Payload" %t200, ptr %t201
  store { i64, [4 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t202, i32 0, i32 0
  store i64 5, ptr %t203
  %t204 = load %"compiler/source:Span", ptr %l121
  %t205 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t204, 0
  %t206 = load i32, ptr %l124, !tbaa !23
  %t207 = insertvalue { %"compiler/source:Span", i32, ptr } %t205, i32 %t206, 1
  %t209 = insertvalue { %"compiler/source:Span", i32, ptr } %t207, ptr %t201, 2
  %t210 = getelementptr { i64, [4 x i64] }, ptr %t202, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t209, ptr %t210
  %t211 = load { i64, [4 x i64] }, ptr %t202
  %t212 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store ptr %t212, ptr %lp19
  %t214 = load ptr, ptr %lp19
  store { i64, [4 x i64] } %t211, ptr %t214
  %t215 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t215, ptr %l131
  %t216 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t216, ptr %l132, !tbaa !27
  %t217 = load i64, ptr %l16, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr i32, ptr %t220, i64 %t217
  %t222 = load i32, ptr %t221, !tbaa !33
  store i32 %t222, ptr %l134, !tbaa !23
  %t223 = load ptr, ptr %l7, !tbaa !29
  %t224 = load i64, ptr %l16, !tbaa !24
  %t228 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v3, ptr %v3, ptr %t223, i64 %t224, i32 0)
  store %"compiler/typed:Payload" %t228, ptr %l138
  br label %bb27
bb27:
  %t229 = load %"compiler/typed:Payload", ptr %l138
  %t230 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Payload" %t229, ptr %t230
  store { i64, [4 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [4 x i64] }, ptr %t231, i32 0, i32 0
  store i64 5, ptr %t232
  %t233 = load %"compiler/source:Span", ptr %l131
  %t234 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t233, 0
  %t235 = load i32, ptr %l134, !tbaa !23
  %t236 = insertvalue { %"compiler/source:Span", i32, ptr } %t234, i32 %t235, 1
  %t238 = insertvalue { %"compiler/source:Span", i32, ptr } %t236, ptr %t230, 2
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t238, ptr %t239
  %t240 = load { i64, [4 x i64] }, ptr %t231
  %t241 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store ptr %t241, ptr %lp20
  %t243 = load ptr, ptr %lp20
  store { i64, [4 x i64] } %t240, ptr %t243
  store i64 0, ptr %l21, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t244, 0
  store i64 %t246, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t248 = load i64, ptr %l22, !tbaa !24
  %t249 = load i64, ptr %l21, !tbaa !24
  %t252 = icmp sgt i64 %t248, %t249
  br i1 %t252, label %bb28, label %bb29
bb28:
  %t254 = load i64, ptr %l23, !tbaa !24
  %t256 = icmp sgt i64 %t254, 0
  br i1 %t256, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l146, !tbaa !24
  br label %bb33
bb30:
  %t258 = load i64, ptr %l22, !tbaa !24
  %t259 = load i64, ptr %l21, !tbaa !24
  %t262 = sub i64 %t258, %t259
  %t263 = load i64, ptr %l23, !tbaa !24
  %t266 = add i64 %t262, %t263
  %t268 = sub i64 %t266, 1
  %t269 = load i64, ptr %l23, !tbaa !24
  %t272 = sdiv i64 %t268, %t269
  store i64 %t272, ptr %l149, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb32
bb32:
  %t274 = load i64, ptr %l149, !tbaa !24
  store i64 %t274, ptr %l146, !tbaa !24
  br label %bb33
bb33:
  %t275 = load i64, ptr %l146, !tbaa !24
  store i64 %t275, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb34
bb34:
  %t276 = load i64, ptr %l25, !tbaa !24
  %t277 = load i64, ptr %l24, !tbaa !24
  %t280 = icmp slt i64 %t276, %t277
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb35, label %bb36
bb35:
  br label %bb43
bb36:
  br label %bb37
bb37:
  %t284 = load i64, ptr %l21, !tbaa !24
  %t285 = load i64, ptr %l25, !tbaa !24
  %t286 = load i64, ptr %l23, !tbaa !24
  %t289 = mul i64 %t285, %t286
  %t292 = add i64 %t284, %t289
  store i64 %t292, ptr %l26, !tbaa !24
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l167, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t295, ptr %l168
  store i32 94, ptr %l169
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load %"compiler/source:Span", ptr %l1
  %t298 = load %"compiler/source:Span", ptr %l1
  %t299 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t299, ptr %l173, !tbaa !27
  %t300 = load i64, ptr %l26, !tbaa !24
  %t302 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr i32, ptr %t303, i64 %t300
  %t305 = load i32, ptr %t304, !tbaa !33
  %t306 = load ptr, ptr %lp19
  %t307 = load i64, ptr %l26, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t308
  %t309 = getelementptr { i64, [4 x i64] }, ptr %t308, i32 0, i32 0
  store i64 3, ptr %t309
  %t311 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t298, 0
  %t313 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t311, i32 %t305, 1
  %t315 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t313, ptr %t306, 2
  %t317 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t315, i64 %t307, 3
  %t318 = getelementptr { i64, [4 x i64] }, ptr %t308, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t317, ptr %t318
  %t319 = load { i64, [4 x i64] }, ptr %t308
  %t321 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t319, ptr %t321
  %t325 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t296, %"compiler/source:Span" %t297, ptr %t321)
  store ptr %t325, ptr %l180
  br label %bb38
bb38:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l1
  %t328 = load %"compiler/source:Span", ptr %l1
  %t329 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t329, ptr %l184, !tbaa !27
  %t330 = load i64, ptr %l26, !tbaa !24
  %t332 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t333 = load ptr, ptr %t332, !tbaa !27
  %t334 = getelementptr i32, ptr %t333, i64 %t330
  %t335 = load i32, ptr %t334, !tbaa !33
  %t336 = load ptr, ptr %lp20
  %t337 = load i64, ptr %l26, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t338
  %t339 = getelementptr { i64, [4 x i64] }, ptr %t338, i32 0, i32 0
  store i64 3, ptr %t339
  %t341 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t328, 0
  %t343 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t341, i32 %t335, 1
  %t345 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t343, ptr %t336, 2
  %t347 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t345, i64 %t337, 3
  %t348 = getelementptr { i64, [4 x i64] }, ptr %t338, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t347, ptr %t348
  %t349 = load { i64, [4 x i64] }, ptr %t338
  %t351 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t349, ptr %t351
  %t355 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t326, %"compiler/source:Span" %t327, ptr %t351)
  store ptr %t355, ptr %l191
  br label %bb39
bb39:
  %t356 = load ptr, ptr %l167, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l168
  %t358 = load i32, ptr %l169, !range !{i32 0, i32 114}
  %t359 = load ptr, ptr %l180, !tbaa !29
  %t360 = load ptr, ptr %l191, !tbaa !29
  %t361 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t356, %"compiler/source:Span" %t357, i32 %t358, ptr %t359, ptr %t360)
  store ptr %t361, ptr %l192
  br label %bb40
bb40:
  %t362 = load ptr, ptr %l192, !tbaa !29
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load %"compiler/source:Span", ptr %l1
  %t365 = load ptr, ptr %l18, !tbaa !29
  %t371 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t363, %"compiler/source:Span" %t364, ptr %t365, ptr %t362)
  store ptr %t371, ptr %l197
  br label %bb41
bb41:
  %t372 = load ptr, ptr %l197, !tbaa !29
  store ptr %t372, ptr %l18, !tbaa !29
  br label %bb42
bb42:
  %t373 = load i64, ptr %l25, !tbaa !24
  %t375 = add i64 %t373, 1
  store i64 %t375, ptr %l25, !tbaa !24
  br label %bb34
bb43:
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l200, !tbaa !29
  %t378 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t378, ptr %l201
  %t379 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t379, ptr %l202, !tbaa !23
  store i32 23, ptr %l203
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load %"compiler/source:Span", ptr %l1
  %t382 = load ptr, ptr %l6, !tbaa !29
  %t386 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t380, %"compiler/source:Span" %t381, ptr %t382)
  store ptr %t386, ptr %l207
  br label %bb44
bb44:
  %t387 = load ptr, ptr %l0, !tbaa !29
  store ptr %t387, ptr %l208, !tbaa !29
  %t388 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t388, ptr %l209
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t389)
  store i32 %t391, ptr %l211
  br label %bb45
bb45:
  %t392 = load i64, ptr %l16, !tbaa !24
  %t393 = load ptr, ptr %l208, !tbaa !29
  %t394 = load %"compiler/source:Span", ptr %l209
  %t395 = load i32, ptr %l211, !tbaa !23
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t393, %"compiler/source:Span" %t394, i32 %t395, i64 %t392)
  store ptr %t397, ptr %l213
  br label %bb46
bb46:
  %t398 = load ptr, ptr %l213, !tbaa !29
  %t399 = load ptr, ptr %l200, !tbaa !29
  %t400 = load %"compiler/source:Span", ptr %l201
  %t401 = load i32, ptr %l202, !tbaa !23
  %t402 = load i32, ptr %l203, !range !{i32 0, i32 52}
  %t403 = load ptr, ptr %l207, !tbaa !29
  %t405 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t399, %"compiler/source:Span" %t400, i32 %t401, i32 %t402, ptr %t403, ptr %t398)
  store ptr %t405, ptr %l215
  br label %bb47
bb47:
  %t406 = load ptr, ptr %l215, !tbaa !29
  %t407 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t407, ptr %l216
  %t408 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t408, ptr %l217, !tbaa !23
  %t410 = load ptr, ptr %l18, !tbaa !29
  %t412 = load ptr, ptr %l9, !tbaa !29
  %t416 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t406, ptr %t410, ptr %t412)
  store %"compiler/typed:Cond" %t416, ptr %l222
  br label %bb48
bb48:
  %t417 = load %"compiler/typed:Cond", ptr %l222
  %t418 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t417, ptr %t418
  store { i64, [5 x i64] } zeroinitializer, ptr %t419
  %t420 = getelementptr { i64, [5 x i64] }, ptr %t419, i32 0, i32 0
  store i64 11, ptr %t420
  %t421 = load %"compiler/source:Span", ptr %l216
  %t422 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t421, 0
  %t423 = load i32, ptr %l217, !tbaa !23
  %t424 = insertvalue { %"compiler/source:Span", i32, ptr } %t422, i32 %t423, 1
  %t426 = insertvalue { %"compiler/source:Span", i32, ptr } %t424, ptr %t418, 2
  %t427 = getelementptr { i64, [5 x i64] }, ptr %t419, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t426, ptr %t427
  %t428 = load { i64, [5 x i64] }, ptr %t419
  %t430 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t428, ptr %t430
  store ptr %t430, ptr %l9, !tbaa !29
  br label %bb49
bb49:
  %t432 = load i64, ptr %l14, !tbaa !24
  %t434 = add i64 %t432, 1
  store i64 %t434, ptr %l14, !tbaa !24
  br label %bb15
bb50:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr %"compiler/check:Checker", ptr %t436, i32 0, i32 37
  %t440 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t438)
  store i64 %t440, ptr %l230
  br label %bb51
bb51:
  %t441 = load i64, ptr %l5, !tbaa !24
  %t442 = load i64, ptr %l230, !tbaa !24
  %t444 = icmp sgt i64 %t442, %t441
  br i1 %t444, label %bb52, label %bb53
bb52:
  %t446 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t446, ptr %l233
  %t447 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t447, ptr %l234, !tbaa !23
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/check:Checker", ptr %t448, i32 0, i32 37
  %t451 = load i64, ptr %l5, !tbaa !24
  %t454 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t450, i64 %t451)
  store { i64, ptr } %t454, ptr %l238
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t455 = load ptr, ptr %l9, !tbaa !29
  %t457 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t459 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t457, ptr %t455, i1 false)
  store %"compiler/typed:Seq" %t459, ptr %l241
  br label %bb55
bb55:
  %t460 = load %"compiler/typed:Seq", ptr %l241
  %t461 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t460, ptr %t461
  store { i64, [5 x i64] } zeroinitializer, ptr %t462
  %t463 = getelementptr { i64, [5 x i64] }, ptr %t462, i32 0, i32 0
  store i64 12, ptr %t463
  %t464 = load %"compiler/source:Span", ptr %l233
  %t465 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t464, 0
  %t466 = load i32, ptr %l234, !tbaa !23
  %t467 = insertvalue { %"compiler/source:Span", i32, ptr } %t465, i32 %t466, 1
  %t469 = insertvalue { %"compiler/source:Span", i32, ptr } %t467, ptr %t461, 2
  %t470 = getelementptr { i64, [5 x i64] }, ptr %t462, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t469, ptr %t470
  %t471 = load { i64, [5 x i64] }, ptr %t462
  %t473 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t471, ptr %t473
  store ptr %t473, ptr %rv
  br label %ret
bb56:
  %t475 = load ptr, ptr %l9, !tbaa !29
  store ptr %t475, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqShaped(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l19 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l26 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l40 = alloca i32
  %l41 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i1
  %l48 = alloca i1
  %l51 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l55 = alloca i32
  %l56 = alloca i32
  %l61 = alloca i32
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
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l9, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t20 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t16, i64 %a2)
  store i32 %t20, ptr %l13
  br label %bb1
bb1:
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t22 = load i32, ptr %l13, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t23, ptr %l14
  br label %bb2
bb2:
  %t24 = load ptr, ptr %l6, !tbaa !29
  %t25 = load i32, ptr %l14, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store { i64, ptr } %t26, ptr %l15
  br label %bb3
bb3:
  %t27 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp eq i64 %t30, 2
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  store ptr %t39, ptr %l22, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t41, ptr %l24, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr i32, ptr %t43, i64 1
  %t45 = load i32, ptr %t44, !tbaa !33
  %t48 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t40, i32 %t45)
  store i32 %t48, ptr %l26
  br label %bb6
bb5:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb21
bb6:
  %t49 = load ptr, ptr %l22, !tbaa !29
  %t50 = load i32, ptr %l26, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t51, ptr %l27
  br label %bb7
bb7:
  %t52 = load i32, ptr %l27, !range !{i32 0, i32 33}
  %t54 = trunc i64 25 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb9:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  store ptr %t62, ptr %l33, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  store ptr %t68, ptr %l36, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t70, ptr %l38, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i32, ptr %t72, i64 1
  %t74 = load i32, ptr %t73, !tbaa !33
  %t77 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t69, i32 %t74)
  store i32 %t77, ptr %l40
  br label %bb10
bb10:
  %t78 = load ptr, ptr %l36, !tbaa !29
  %t79 = load i32, ptr %l40, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t80, ptr %l41
  br label %bb11
bb11:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 2
  %t87 = load i32, ptr %l1, !tbaa !23
  %t90 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t86, i32 %t87)
  store i32 %t90, ptr %l46
  br label %bb12
bb12:
  %t91 = load ptr, ptr %l33, !tbaa !29
  %t92 = load i32, ptr %l41, !tbaa !23
  %t93 = load i32, ptr %l46, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t91, i32 %t92, i32 %t93)
  store i1 %t94, ptr %l47
  br label %bb13
bb13:
  %t95 = load i1, ptr %l47, !tbaa !21
  store i1 %t95, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t96 = load i1, ptr %l30, !tbaa !21
  br i1 %t96, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb20
bb16:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  store ptr %t102, ptr %l51, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t104, ptr %l53, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr i32, ptr %t106, i64 1
  %t108 = load i32, ptr %t107, !tbaa !33
  %t111 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t103, i32 %t108)
  store i32 %t111, ptr %l55
  br label %bb17
bb17:
  %t112 = load ptr, ptr %l51, !tbaa !29
  %t113 = load i32, ptr %l55, !tbaa !23
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t114, ptr %l56
  br label %bb18
bb18:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l1, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l61
  br label %bb19
bb19:
  %t125 = load i32, ptr %l56, !tbaa !23
  %t126 = load i32, ptr %l61, !tbaa !23
  %t127 = icmp eq i32 %t125, %t126
  store i1 %t127, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t129 = load i1, ptr %l48, !tbaa !21
  store i1 %t129, ptr %l19, !tbaa !21
  br label %bb21
bb21:
  %t130 = load i1, ptr %l19, !tbaa !21
  store i1 %t130, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l8 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l19 = alloca i32
  %l21 = alloca i1
  %l27 = alloca i32
  %l30 = alloca i1
  %l35 = alloca i32
  %l42 = alloca i32
  %l44 = alloca i1
  %l48 = alloca i1
  %l53 = alloca ptr
  %l58 = alloca i32
  %l63 = alloca i32
  %l64 = alloca i1
  %l65 = alloca i1
  %l66 = alloca ptr
  %l71 = alloca i32
  %l76 = alloca i32
  %l77 = alloca i1
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
  store i1 %t12, ptr %l8
  br label %bb1
bb1:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load i1, ptr %l12, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l19
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb10
bb8:
  %t32 = load i32, ptr %l2, !tbaa !23
  %t33 = load ptr, ptr %l14, !tbaa !29
  %t34 = load i32, ptr %l19, !tbaa !23
  %t36 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t33, i32 %t34, i32 %t32)
  store i1 %t36, ptr %l21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l21, !tbaa !21
  store i1 %t37, ptr %l13, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l13, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l27
  br label %bb14
bb14:
  %t50 = load i32, ptr %l27, !range !{i32 0, i32 33}
  %t52 = trunc i64 19 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l2, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l35
  br label %bb17
bb16:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  %t65 = load i32, ptr %l35, !range !{i32 0, i32 33}
  %t67 = trunc i64 19 to i32
  %t68 = icmp eq i32 %t65, %t67
  store i1 %t68, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t70 = load i1, ptr %l30, !tbaa !21
  br i1 %t70, label %bb19, label %bb20
bb19:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l2, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l42
  br label %bb21
bb20:
  br label %bb38
bb21:
  %t81 = load i32, ptr %l42, !tbaa !23
  %t82 = icmp ne i32 %t81, 0
  br i1 %t82, label %bb22, label %bb23
bb22:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l1, !tbaa !23
  %t86 = load i32, ptr %l2, !tbaa !23
  %t90 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elengthsMeet(ptr %v0, ptr %t84, i32 %t85, i32 %t86)
  store i1 %t90, ptr %l48
  br label %bb24
bb23:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb25
bb24:
  %t91 = load i1, ptr %l48, !tbaa !21
  %t92 = xor i1 %t91, true
  store i1 %t92, ptr %l44, !tbaa !21
  br label %bb25
bb25:
  %t94 = load i1, ptr %l44, !tbaa !21
  br i1 %t94, label %bb26, label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l53, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l58
  br label %bb29
bb29:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/generic:Program", ptr %t115, i32 0, i32 2
  %t118 = load i32, ptr %l2, !tbaa !23
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t117, i32 %t118)
  store i32 %t121, ptr %l63
  br label %bb30
bb30:
  %t122 = load ptr, ptr %l53, !tbaa !29
  %t123 = load i32, ptr %l58, !tbaa !23
  %t124 = load i32, ptr %l63, !tbaa !23
  %t125 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t122, i32 %t123, i32 %t124)
  store i1 %t125, ptr %l64
  br label %bb31
bb31:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb37
bb33:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l66, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l1, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l71
  br label %bb34
bb34:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/check:Checker", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l2, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l76
  br label %bb35
bb35:
  %t148 = load ptr, ptr %l66, !tbaa !29
  %t149 = load i32, ptr %l71, !tbaa !23
  %t150 = load i32, ptr %l76, !tbaa !23
  %t151 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t148, i32 %t149, i32 %t150)
  store i1 %t151, ptr %l77
  br label %bb36
bb36:
  %t152 = load i1, ptr %l77, !tbaa !21
  store i1 %t152, ptr %l65, !tbaa !21
  br label %bb37
bb37:
  %t153 = load i1, ptr %l65, !tbaa !21
  store i1 %t153, ptr %rv
  br label %ret
bb38:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efuncFits(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l37 = alloca i1
  %l43 = alloca i1
  %l51 = alloca i64
  %l54 = alloca i64
  %l75 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l81 = alloca i1
  %l83 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca i1
  %l89 = alloca { i64, ptr }
  %l92 = alloca i1
  %l93 = alloca i1
  %l96 = alloca ptr
  %l98 = alloca { i64, ptr }
  %l101 = alloca i32
  %l103 = alloca { i64, ptr }
  %l106 = alloca i32
  %l107 = alloca i1
  %l113 = alloca { i64, ptr }
  %l116 = alloca i64
  %l120 = alloca i1
  %l124 = alloca { i64, ptr }
  %l127 = alloca i64
  %l138 = alloca i32
  %l143 = alloca i32
  %l147 = alloca i1
  %l151 = alloca i1
  %l154 = alloca ptr
  %l159 = alloca i32
  %l160 = alloca { i64, ptr }
  %l169 = alloca i1
  %l173 = alloca i1
  %l174 = alloca i1
  %l177 = alloca i1
  %l178 = alloca i1
  %l181 = alloca ptr
  %l184 = alloca i32
  %l187 = alloca i32
  %l188 = alloca i1
  %l195 = alloca i64
  %l199 = alloca i1
  %l204 = alloca i64
  %l213 = alloca i32
  %l218 = alloca i32
  %l222 = alloca i1
  %l223 = alloca ptr
  %l228 = alloca i32
  %l233 = alloca i32
  %l234 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l16, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l21
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l16, !tbaa !29
  %t18 = load i32, ptr %l21, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l22
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  store ptr %t26, ptr %l25, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l30
  br label %bb3
bb3:
  %t37 = load ptr, ptr %l25, !tbaa !29
  %t38 = load i32, ptr %l30, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t37, i32 %t38)
  store { i64, ptr } %t39, ptr %l31
  br label %bb4
bb4:
  %t40 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t49 = icmp ne i64 %t43, %t46
  br i1 %t49, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb8
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l1, !tbaa !23
  %t58 = load i32, ptr %l2, !tbaa !23
  %t62 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t56, i32 %t57, i32 %t58)
  store i1 %t62, ptr %l43
  br label %bb7
bb7:
  %t63 = load i1, ptr %l43, !tbaa !21
  %t64 = xor i1 %t63, true
  store i1 %t64, ptr %l37, !tbaa !21
  br label %bb8
bb8:
  %t66 = load i1, ptr %l37, !tbaa !21
  br i1 %t66, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  store i64 0, ptr %l6, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  store i64 %t70, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb12, label %bb13
bb12:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb17
bb14:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr %l6, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l8, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l54, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb16
bb16:
  %t98 = load i64, ptr %l54, !tbaa !24
  store i64 %t98, ptr %l51, !tbaa !24
  br label %bb17
bb17:
  %t99 = load i64, ptr %l51, !tbaa !24
  store i64 %t99, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb18
bb18:
  %t100 = load i64, ptr %l10, !tbaa !24
  %t101 = load i64, ptr %l9, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb19, label %bb20
bb19:
  br label %bb49
bb20:
  br label %bb21
bb21:
  %t108 = load i64, ptr %l6, !tbaa !24
  %t109 = load i64, ptr %l10, !tbaa !24
  %t110 = load i64, ptr %l8, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l11, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t124, ptr %l75, !tbaa !27
  %t125 = load i64, ptr %l11, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i32, ptr %t128, i64 %t125
  %t130 = load i32, ptr %t129, !tbaa !33
  %t131 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t131, ptr %l78, !tbaa !27
  %t132 = load i64, ptr %l11, !tbaa !24
  %t134 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr i32, ptr %t135, i64 %t132
  %t137 = load i32, ptr %t136, !tbaa !33
  %t141 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t123, i32 %t130, i32 %t137)
  store i1 %t141, ptr %l81
  br label %bb22
bb22:
  %t142 = load i1, ptr %l81, !tbaa !21
  br i1 %t142, label %bb23, label %bb24
bb23:
  br label %bb48
bb24:
  br label %bb25
bb25:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t144, ptr %l83, !tbaa !27
  %t145 = load i64, ptr %l11, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i32, ptr %t148, i64 %t145
  %t150 = load i32, ptr %t149, !tbaa !33
  %t153 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t143, i32 %t150)
  store i1 %t153, ptr %l86
  br label %bb26
bb26:
  %t154 = load i1, ptr %l86, !tbaa !21
  br i1 %t154, label %bb27, label %bb28
bb27:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t156, ptr %l89, !tbaa !27
  %t157 = load i64, ptr %l11, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i32, ptr %t160, i64 %t157
  %t162 = load i32, ptr %t161, !tbaa !33
  %t165 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t155, i32 %t162)
  store i1 %t165, ptr %l92
  br label %bb29
bb28:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb30
bb29:
  %t166 = load i1, ptr %l92, !tbaa !21
  store i1 %t166, ptr %l87, !tbaa !21
  br label %bb30
bb30:
  %t167 = load i1, ptr %l87, !tbaa !21
  br i1 %t167, label %bb31, label %bb32
bb31:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 2
  store ptr %t173, ptr %l96, !tbaa !29
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t175, ptr %l98, !tbaa !27
  %t176 = load i64, ptr %l11, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i32, ptr %t179, i64 %t176
  %t181 = load i32, ptr %t180, !tbaa !33
  %t184 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t174, i32 %t181)
  store i32 %t184, ptr %l101
  br label %bb33
bb32:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb36
bb33:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t186, ptr %l103, !tbaa !27
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i32, ptr %t190, i64 %t187
  %t192 = load i32, ptr %t191, !tbaa !33
  %t195 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t185, i32 %t192)
  store i32 %t195, ptr %l106
  br label %bb34
bb34:
  %t196 = load ptr, ptr %l96, !tbaa !29
  %t197 = load i32, ptr %l101, !tbaa !23
  %t198 = load i32, ptr %l106, !tbaa !23
  %t199 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t196, i32 %t197, i32 %t198)
  store i1 %t199, ptr %l107
  br label %bb35
bb35:
  %t200 = load i1, ptr %l107, !tbaa !21
  store i1 %t200, ptr %l93, !tbaa !21
  br label %bb36
bb36:
  %t201 = load i1, ptr %l93, !tbaa !21
  %t202 = xor i1 %t201, true
  br i1 %t202, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/check:Checker", ptr %t205, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t210 = getelementptr %"compiler/generic:Program", ptr %t208, i32 0, i32 2
  %t211 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t211, ptr %l113, !tbaa !27
  %t212 = load i64, ptr %l11, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i32, ptr %t215, i64 %t212
  %t217 = load i32, ptr %t216, !tbaa !33
  %t220 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t210, i32 %t217)
  store i64 %t220, ptr %l116
  br label %bb40
bb40:
  %t221 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t222 = load i64, ptr %l116, !tbaa !24
  %t224 = and i64 %t222, %t221
  %t226 = icmp ne i64 %t224, 0
  br i1 %t226, label %bb41, label %bb42
bb41:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t233 = getelementptr %"compiler/generic:Program", ptr %t231, i32 0, i32 2
  %t234 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t234, ptr %l124, !tbaa !27
  %t235 = load i64, ptr %l11, !tbaa !24
  %t237 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr i32, ptr %t238, i64 %t235
  %t240 = load i32, ptr %t239, !tbaa !33
  %t243 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t233, i32 %t240)
  store i64 %t243, ptr %l127
  br label %bb43
bb42:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb44
bb43:
  %t244 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t245 = load i64, ptr %l127, !tbaa !24
  %t247 = and i64 %t245, %t244
  %t249 = icmp eq i64 %t247, 0
  store i1 %t249, ptr %l120, !tbaa !21
  br label %bb44
bb44:
  %t251 = load i1, ptr %l120, !tbaa !21
  br i1 %t251, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t253 = load i64, ptr %l10, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l10, !tbaa !24
  br label %bb18
bb49:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/check:Checker", ptr %t257, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t262 = getelementptr %"compiler/generic:Program", ptr %t260, i32 0, i32 2
  %t263 = load i32, ptr %l1, !tbaa !23
  %t266 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t262, i32 %t263)
  store i32 %t266, ptr %l138
  br label %bb50
bb50:
  %t267 = load i32, ptr %l138, !tbaa !23
  store i32 %t267, ptr %l12, !tbaa !23
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/check:Checker", ptr %t268, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/generic:Program", ptr %t271, i32 0, i32 2
  %t274 = load i32, ptr %l2, !tbaa !23
  %t277 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t273, i32 %t274)
  store i32 %t277, ptr %l143
  br label %bb51
bb51:
  %t278 = load i32, ptr %l143, !tbaa !23
  store i32 %t278, ptr %l13, !tbaa !23
  %t279 = load i32, ptr %l12, !tbaa !23
  %t280 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t283 = icmp eq i32 %t279, %t280
  br i1 %t283, label %bb52, label %bb53
bb52:
  %t285 = load i32, ptr %l13, !tbaa !23
  %t286 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t289 = icmp eq i32 %t285, %t286
  store i1 %t289, ptr %l147, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb54
bb54:
  %t291 = load i1, ptr %l147, !tbaa !21
  br i1 %t291, label %bb55, label %bb56
bb55:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t297 = getelementptr %"compiler/generic:Program", ptr %t295, i32 0, i32 2
  store ptr %t297, ptr %l154, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/check:Checker", ptr %t298, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !29
  %t303 = getelementptr %"compiler/generic:Program", ptr %t301, i32 0, i32 2
  %t304 = load i32, ptr %l2, !tbaa !23
  %t307 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t303, i32 %t304)
  store i32 %t307, ptr %l159
  br label %bb57
bb56:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb59
bb57:
  %t308 = load ptr, ptr %l154, !tbaa !29
  %t309 = load i32, ptr %l159, !tbaa !23
  %t310 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t308, i32 %t309)
  store { i64, ptr } %t310, ptr %l160
  br label %bb58
bb58:
  %t311 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 0
  %t314 = icmp eq i64 %t312, 0
  store i1 %t314, ptr %l151, !tbaa !21
  br label %bb59
bb59:
  %t316 = load i1, ptr %l151, !tbaa !21
  br i1 %t316, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/check:Checker", ptr %t318, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !29
  %t323 = getelementptr %"compiler/generic:Program", ptr %t321, i32 0, i32 2
  %t324 = load i32, ptr %l12, !tbaa !23
  %t325 = load i32, ptr %l13, !tbaa !23
  %t329 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t323, i32 %t324, i32 %t325)
  store i1 %t329, ptr %l169
  br label %bb63
bb63:
  %t330 = load i1, ptr %l169, !tbaa !21
  %t331 = xor i1 %t330, true
  br i1 %t331, label %bb64, label %bb65
bb64:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load i32, ptr %l12, !tbaa !23
  %t337 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t333, i32 %t334)
  store i1 %t337, ptr %l173
  br label %bb66
bb65:
  br label %bb88
bb66:
  %t338 = load i1, ptr %l173, !tbaa !21
  br i1 %t338, label %bb67, label %bb68
bb67:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i32, ptr %l13, !tbaa !23
  %t343 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t339, i32 %t340)
  store i1 %t343, ptr %l177
  br label %bb69
bb68:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb70
bb69:
  %t344 = load i1, ptr %l177, !tbaa !21
  store i1 %t344, ptr %l174, !tbaa !21
  br label %bb70
bb70:
  %t345 = load i1, ptr %l174, !tbaa !21
  br i1 %t345, label %bb71, label %bb72
bb71:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/check:Checker", ptr %t346, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t351 = getelementptr %"compiler/generic:Program", ptr %t349, i32 0, i32 2
  store ptr %t351, ptr %l181, !tbaa !29
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load i32, ptr %l12, !tbaa !23
  %t356 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t352, i32 %t353)
  store i32 %t356, ptr %l184
  br label %bb73
bb72:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb76
bb73:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t358 = load i32, ptr %l13, !tbaa !23
  %t361 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t357, i32 %t358)
  store i32 %t361, ptr %l187
  br label %bb74
bb74:
  %t362 = load ptr, ptr %l181, !tbaa !29
  %t363 = load i32, ptr %l184, !tbaa !23
  %t364 = load i32, ptr %l187, !tbaa !23
  %t365 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t362, i32 %t363, i32 %t364)
  store i1 %t365, ptr %l188
  br label %bb75
bb75:
  %t366 = load i1, ptr %l188, !tbaa !21
  store i1 %t366, ptr %l178, !tbaa !21
  br label %bb76
bb76:
  %t367 = load i1, ptr %l178, !tbaa !21
  %t368 = xor i1 %t367, true
  br i1 %t368, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/check:Checker", ptr %t371, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !29
  %t376 = getelementptr %"compiler/generic:Program", ptr %t374, i32 0, i32 2
  %t377 = load i32, ptr %l13, !tbaa !23
  %t380 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t376, i32 %t377)
  store i64 %t380, ptr %l195
  br label %bb80
bb80:
  %t381 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t382 = load i64, ptr %l195, !tbaa !24
  %t384 = and i64 %t382, %t381
  %t386 = icmp ne i64 %t384, 0
  br i1 %t386, label %bb81, label %bb82
bb81:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/check:Checker", ptr %t388, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !29
  %t393 = getelementptr %"compiler/generic:Program", ptr %t391, i32 0, i32 2
  %t394 = load i32, ptr %l12, !tbaa !23
  %t397 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t393, i32 %t394)
  store i64 %t397, ptr %l204
  br label %bb83
bb82:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb84
bb83:
  %t398 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t399 = load i64, ptr %l204, !tbaa !24
  %t401 = and i64 %t399, %t398
  %t403 = icmp eq i64 %t401, 0
  store i1 %t403, ptr %l199, !tbaa !21
  br label %bb84
bb84:
  %t405 = load i1, ptr %l199, !tbaa !21
  br i1 %t405, label %bb85, label %bb86
bb85:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/check:Checker", ptr %t407, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !29
  %t412 = getelementptr %"compiler/generic:Program", ptr %t410, i32 0, i32 2
  %t413 = load i32, ptr %l1, !tbaa !23
  %t416 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t412, i32 %t413)
  store i32 %t416, ptr %l213
  br label %bb89
bb89:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/check:Checker", ptr %t417, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t422 = getelementptr %"compiler/generic:Program", ptr %t420, i32 0, i32 2
  %t423 = load i32, ptr %l2, !tbaa !23
  %t426 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t422, i32 %t423)
  store i32 %t426, ptr %l218
  br label %bb90
bb90:
  %t427 = load i32, ptr %l213, !tbaa !23
  %t428 = load i32, ptr %l218, !tbaa !23
  %t429 = icmp eq i32 %t427, %t428
  br i1 %t429, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  br i1 %a3, label %bb94, label %bb95
bb94:
  %t434 = load ptr, ptr %l0, !tbaa !29
  store ptr %t434, ptr %l223, !tbaa !29
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"compiler/check:Checker", ptr %t435, i32 0, i32 1
  %t438 = load ptr, ptr %t437, !tbaa !29
  %t440 = getelementptr %"compiler/generic:Program", ptr %t438, i32 0, i32 2
  %t441 = load i32, ptr %l2, !tbaa !23
  %t444 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t440, i32 %t441)
  store i32 %t444, ptr %l228
  br label %bb96
bb95:
  store i1 false, ptr %l222, !tbaa !21
  br label %bb99
bb96:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/check:Checker", ptr %t445, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !29
  %t450 = getelementptr %"compiler/generic:Program", ptr %t448, i32 0, i32 2
  %t451 = load i32, ptr %l1, !tbaa !23
  %t454 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t450, i32 %t451)
  store i32 %t454, ptr %l233
  br label %bb97
bb97:
  %t455 = load ptr, ptr %l223, !tbaa !29
  %t456 = load i32, ptr %l228, !tbaa !23
  %t457 = load i32, ptr %l233, !tbaa !23
  %t458 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsCover(ptr %v0, ptr %t455, i32 %t456, i32 %t457)
  store i1 %t458, ptr %l234
  br label %bb98
bb98:
  %t459 = load i1, ptr %l234, !tbaa !21
  store i1 %t459, ptr %l222, !tbaa !21
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s0)
  %t460 = load i1, ptr %l222, !tbaa !21
  store i1 %t460, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesIn(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i64 0)
  store i1 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i1, ptr %l6, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l64 = alloca { i64, ptr }
  %l70 = alloca i1
  %l71 = alloca ptr
  %l77 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 17
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t12 = load ptr, ptr %l16, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l16, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 30}
  %t18 = icmp eq i64 %t16, 15
  store i1 %t18, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l17, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  store i32 %t30, ptr %l24
  br label %bb12
bb12:
  %t31 = load i32, ptr %l24, !tbaa !23
  %t32 = icmp sge i32 %t31, 0
  store i1 %t32, ptr %rv
  br label %ret
bb13:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t35 = load ptr, ptr %l26, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t38 = load ptr, ptr %l26, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 30}
  %t41 = icmp eq i64 %t39, 2
  store i1 %t41, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t42 = load i1, ptr %l27, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb16:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", ptr }, ptr %t45, i32 0, i32 1
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitArray(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  store i1 %t53, ptr %l34
  br label %bb19
bb19:
  %t54 = load i1, ptr %l34, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
bb20:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t56 = load ptr, ptr %l35, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 30}
  %t62 = icmp eq i64 %t60, 8
  store i1 %t62, ptr %l36, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l36, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t66, i32 0, i32 1
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l4, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t72, i32 0, i32 3
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l5, !tbaa !29
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitArray(ptr %v0, ptr %v1, ptr %t76, ptr %t77)
  store i1 %t80, ptr %l45
  br label %bb26
bb26:
  %t81 = load i1, ptr %l45, !tbaa !21
  br i1 %t81, label %bb27, label %bb28
bb27:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t86 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitArray(ptr %v0, ptr %v1, ptr %t82, ptr %t83)
  store i1 %t86, ptr %l49
  br label %bb29
bb28:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb30
bb29:
  %t87 = load i1, ptr %l49, !tbaa !21
  store i1 %t87, ptr %l46, !tbaa !21
  br label %bb30
bb30:
  %t88 = load i1, ptr %l46, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb31:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb32, label %bb33
bb32:
  %t93 = load ptr, ptr %l50, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 30}
  %t96 = icmp eq i64 %t94, 23
  store i1 %t96, ptr %l51, !tbaa !21
  br label %bb33
bb33:
  %t97 = load i1, ptr %l51, !tbaa !21
  br i1 %t97, label %bb34, label %bb35
bb34:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", ptr }, ptr %t100, i32 0, i32 1
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l6, !tbaa !29
  br label %bb36
bb35:
  br label %bb53
bb36:
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = getelementptr %"compiler/ast:Match", ptr %t104, i32 0, i32 3
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  store i64 %t111, ptr %l9, !tbaa !24
  br label %bb37
bb37:
  %t113 = load i64, ptr %l8, !tbaa !24
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb38, label %bb39
bb38:
  br label %bb52
bb39:
  br label %bb40
bb40:
  %t121 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t121, ptr %l64, !tbaa !27
  %t122 = load i64, ptr %l8, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 %t122
  %t127 = load ptr, ptr %t126, !tbaa !39
  store ptr %t127, ptr %l10, !tbaa !29
  %t129 = load ptr, ptr %l10, !tbaa !29
  %t131 = getelementptr %"compiler/ast:Case", ptr %t129, i32 0, i32 5
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  br i1 %t134, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb47
bb42:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l71, !tbaa !29
  %t137 = load ptr, ptr %l10, !tbaa !29
  %t139 = getelementptr %"compiler/ast:Case", ptr %t137, i32 0, i32 5
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = icmp eq ptr %t140, null
  br i1 %t142, label %bb43, label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_ddeebe9155436d6a_19ee353760b572b6)
  unreachable
bb44:
  br label %bb45
bb45:
  %t144 = load ptr, ptr %l10, !tbaa !29
  %t146 = getelementptr %"compiler/ast:Case", ptr %t144, i32 0, i32 5
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t148 = load ptr, ptr %l71, !tbaa !29
  %t150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitArray(ptr %v0, ptr %v1, ptr %t148, ptr %t147)
  store i1 %t150, ptr %l77
  br label %bb46
bb46:
  %t151 = load i1, ptr %l77, !tbaa !21
  %t152 = xor i1 %t151, true
  store i1 %t152, ptr %l70, !tbaa !21
  br label %bb47
bb47:
  %t154 = load i1, ptr %l70, !tbaa !21
  br i1 %t154, label %bb48, label %bb49
bb48:
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t156 = load i64, ptr %l8, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l8, !tbaa !24
  br label %bb37
bb52:
  %t160 = load ptr, ptr %l6, !tbaa !29
  %t162 = getelementptr %"compiler/ast:Match", ptr %t160, i32 0, i32 3
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t167 = icmp sgt i64 %t165, 0
  store i1 %t167, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_7406e676cee1d8f8_b07044052169e244)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca i1
  %l22 = alloca i64
  %l26 = alloca { i64, ptr }
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l44 = alloca ptr
  %l47 = alloca ptr
  %l52 = alloca i64
  %l57 = alloca i64
  %l63 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l79 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l89 = alloca ptr
  %s2 = alloca %olang.scope
  %t77 = alloca { i64, [3 x i64] }, align 8
  %t157 = alloca { i64, [3 x i64] }, align 8
  %t183 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Match", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrMatch(ptr %v0, ptr %v1, ptr %t8, ptr %t9)
  store i1 %t12, ptr %l14
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i1, ptr %l14, !tbaa !21
  store i1 %t13, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l11, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t17 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtMatch(ptr %v0, ptr %v1, ptr %t15, %"compiler/source:Span" %t16, ptr %t17)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %ret
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Match", ptr %t21, i32 0, i32 2
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchOnType(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  store i64 %t30, ptr %l22
  br label %bb11
bb10:
  br label %bb23
bb11:
  %t31 = load i64, ptr %l22, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Match", ptr %t36, i32 0, i32 3
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %l26, !tbaa !27
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr ptr, ptr %t43, i64 %t40
  %t45 = load ptr, ptr %t44, !tbaa !39
  store ptr %t45, ptr %l4, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindCase(ptr %v0, ptr %s2, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l30
  br label %bb15
bb15:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l5
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Case", ptr %t51, i32 0, i32 4
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l35, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l36, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t62, ptr %l37
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Case", ptr %t64, i32 0, i32 4
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Case", ptr %t68, i32 0, i32 0
  %t71 = load %"compiler/source:Span", ptr %t70
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v0, ptr %t63, { i64, ptr } %t67, i32 1, %"compiler/source:Span" %t71)
  store ptr %t76, ptr %l44
  br label %bb18
bb17:
  br label %bb21
bb18:
  store { i64, [3 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [3 x i64] }, ptr %t77, i32 0, i32 0
  store i64 11, ptr %t78
  %t79 = load %"compiler/source:Span", ptr %l37
  %t80 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t79, 0
  %t81 = load ptr, ptr %l44, !tbaa !29
  %t82 = insertvalue { %"compiler/source:Span", ptr } %t80, ptr %t81, 1
  %t83 = getelementptr { i64, [3 x i64] }, ptr %t77, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t82, ptr %t83
  %t84 = load { i64, [3 x i64] }, ptr %t77
  %t86 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t84, ptr %t86
  %t87 = load ptr, ptr %l36, !tbaa !29
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecided(ptr %v0, ptr %v0, ptr %v0, ptr %t87, ptr %t86)
  store ptr %t89, ptr %l47
  br label %bb19
bb19:
  %t90 = load ptr, ptr %l35, !tbaa !29
  %t91 = load ptr, ptr %l47, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t90, ptr %t91)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunbindCase(ptr %v0, ptr %s2, ptr %t92, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t100 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMatch(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i64 %t100, ptr %l52
  br label %bb24
bb24:
  %t101 = load i64, ptr %l52, !tbaa !24
  store i64 %t101, ptr %l6, !tbaa !24
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = icmp eq i64 %t102, -2
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t110 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elenMatch(ptr %v0, ptr %v1, ptr %t106, ptr %t107)
  store i64 %t110, ptr %l57
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t111 = load i64, ptr %l57, !tbaa !24
  store i64 %t111, ptr %l6, !tbaa !24
  br label %bb28
bb28:
  %t112 = load i64, ptr %l6, !tbaa !24
  %t114 = icmp ne i64 %t112, -2
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  br i1 %t118, label %bb31, label %bb32
bb30:
  br label %bb40
bb31:
  br label %ret
bb32:
  br label %bb33
bb33:
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Match", ptr %t120, i32 0, i32 3
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l63, !tbaa !27
  %t124 = load i64, ptr %l6, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr ptr, ptr %t127, i64 %t124
  %t129 = load ptr, ptr %t128, !tbaa !39
  store ptr %t129, ptr %l7, !tbaa !29
  %t131 = load ptr, ptr %l7, !tbaa !29
  %t133 = getelementptr %"compiler/ast:Case", ptr %t131, i32 0, i32 4
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb34, label %bb35
bb34:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l70, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l71, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t142, ptr %l72
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l7, !tbaa !29
  %t146 = getelementptr %"compiler/ast:Case", ptr %t144, i32 0, i32 4
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t148 = load ptr, ptr %l7, !tbaa !29
  %t150 = getelementptr %"compiler/ast:Case", ptr %t148, i32 0, i32 0
  %t151 = load %"compiler/source:Span", ptr %t150
  %t156 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v0, ptr %t143, { i64, ptr } %t147, i32 1, %"compiler/source:Span" %t151)
  store ptr %t156, ptr %l79
  br label %bb36
bb35:
  br label %bb39
bb36:
  store { i64, [3 x i64] } zeroinitializer, ptr %t157
  %t158 = getelementptr { i64, [3 x i64] }, ptr %t157, i32 0, i32 0
  store i64 11, ptr %t158
  %t159 = load %"compiler/source:Span", ptr %l72
  %t160 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t159, 0
  %t161 = load ptr, ptr %l79, !tbaa !29
  %t162 = insertvalue { %"compiler/source:Span", ptr } %t160, ptr %t161, 1
  %t163 = getelementptr { i64, [3 x i64] }, ptr %t157, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t162, ptr %t163
  %t164 = load { i64, [3 x i64] }, ptr %t157
  %t166 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t164, ptr %t166
  %t167 = load ptr, ptr %l71, !tbaa !29
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecided(ptr %v0, ptr %v0, ptr %v0, ptr %t167, ptr %t166)
  store ptr %t169, ptr %l82
  br label %bb37
bb37:
  %t170 = load ptr, ptr %l70, !tbaa !29
  %t171 = load ptr, ptr %l82, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t170, ptr %t171)
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %ret
bb40:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l83, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t173, ptr %l84
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l1
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t177 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t182 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t174, %"compiler/source:Span" %t175, ptr %t176, i1 false, i32 %t177)
  store ptr %t182, ptr %l89
  br label %bb41
bb41:
  store { i64, [3 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 0
  store i64 2, ptr %t184
  %t185 = load %"compiler/source:Span", ptr %l84
  %t186 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t185, 0
  %t187 = load ptr, ptr %l89, !tbaa !29
  %t188 = insertvalue { %"compiler/source:Span", ptr } %t186, ptr %t187, 1
  %t189 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t188, ptr %t189
  %t190 = load { i64, [3 x i64] }, ptr %t183
  %t192 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t190, ptr %t192
  %t193 = load ptr, ptr %l83, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t193, ptr %t192)
  br label %bb42
bb42:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emodOfFile(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l42 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l12
  br label %bb1
bb1:
  %t12 = load i64, ptr %l12, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l19, !tbaa !24
  store i64 %t39, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l16, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/load:Loader", ptr %t65, i32 0, i32 10
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l42
  br label %bb12
bb12:
  %t72 = load ptr, ptr %l42, !tbaa !29
  %t74 = getelementptr %"compiler/load:Module", ptr %t72, i32 0, i32 4
  %t75 = load i64, ptr %t74, !tbaa !24
  %t79 = icmp eq i64 %t75, %a1
  br i1 %t79, label %bb13, label %bb14
bb13:
  %t81 = load i64, ptr %l7, !tbaa !24
  store i64 %t81, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesLocal(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca %"compiler/names:Ref"
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l5, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t8)
  store ptr %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 2
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t20 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t17, i64 %t14, i32 %t16)
  store %"compiler/names:Ref" %t20, ptr %l11
  br label %bb2
bb2:
  %t21 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 0
  %t22 = load i32, ptr %t21, !range !{i32 0, i32 9}
  store i32 %t22, ptr %l2
  %t24 = load i32, ptr %l2, !range !{i32 0, i32 9}
  %t26 = trunc i64 1 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  %t29 = load i32, ptr %l2, !range !{i32 0, i32 9}
  %t31 = trunc i64 8 to i32
  %t32 = icmp eq i32 %t29, %t31
  store i1 %t32, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l15, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca i64
  %l15 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l31 = alloca i64
  %l36 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l41 = alloca i32
  %l45 = alloca ptr
  %l48 = alloca i32
  %l52 = alloca i1
  %l58 = alloca ptr
  %l61 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l66 = alloca %"compiler/source:Span"
  %l69 = alloca { i64, ptr }
  %l71 = alloca %"compiler/diagmsg:Msg"
  %l72 = alloca i64
  %l75 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l84 = alloca i32
  %l85 = alloca { i64, ptr }
  %l89 = alloca i32
  %l92 = alloca i64
  %l96 = alloca %"compiler/source:Span"
  %l97 = alloca i32
  %l98 = alloca i32
  %l99 = alloca i32
  %l103 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca ptr
  %t187 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp ne i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp ne i64 %t9, 0
  store i1 %t11, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l15, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = icmp ne i64 %t16, 1
  br i1 %t18, label %bb6, label %bb7
bb5:
  br label %bb15
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l22, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t21, ptr %l23
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %s2, ptr %s2, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d3, i32 0, i32 1) }, i64 1, i64 %t24)
  store %"compiler/diagmsg:Msg" %t26, ptr %l26
  br label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l28, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t28, ptr %l29
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTakesNoArgs(ptr %s3, ptr %s3, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t29, ptr %l30
  br label %bb10
bb8:
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l23
  %t32 = load %"compiler/diagmsg:Msg", ptr %l26
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t30, %"compiler/source:Span" %t31, %"compiler/diagmsg:Msg" %t32)
  store i64 %t33, ptr %l27
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb10:
  %t34 = load ptr, ptr %l28, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l29
  %t36 = load %"compiler/diagmsg:Msg", ptr %l30
  %t37 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t34, %"compiler/source:Span" %t35, %"compiler/diagmsg:Msg" %t36)
  store i64 %t37, ptr %l31
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t38, { i64, ptr } %t39)
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l1
  %t46 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t42, %"compiler/source:Span" %t43)
  store ptr %t46, ptr %l36
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load ptr, ptr %l36, !tbaa !29
  store ptr %t47, ptr %rv
  br label %ret
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t49, ptr %l38, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 0
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t57 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v2, ptr %t48, ptr %t53)
  store i32 %t57, ptr %l41
  br label %bb16
bb16:
  %t58 = load i32, ptr %l41, !tbaa !23
  store i32 %t58, ptr %l6, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l1
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v4, ptr %t59, ptr %a3, %"compiler/source:Span" %t61)
  store ptr %t65, ptr %l45
  br label %bb17
bb17:
  %t66 = load ptr, ptr %l45, !tbaa !29
  store ptr %t66, ptr %l7, !tbaa !29
  %t67 = load ptr, ptr %l7, !tbaa !29
  %t70 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t67)
  store i32 %t70, ptr %l48
  br label %bb18
bb18:
  %t71 = load i32, ptr %l48, !tbaa !23
  store i32 %t71, ptr %l8, !tbaa !23
  %t72 = load i32, ptr %l6, !tbaa !23
  %t73 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t76 = icmp eq i32 %t72, %t73
  br i1 %t76, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb21
bb20:
  %t78 = load i32, ptr %l8, !tbaa !23
  %t79 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t82 = icmp eq i32 %t78, %t79
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb21
bb21:
  %t84 = load i1, ptr %l52, !tbaa !21
  br i1 %t84, label %bb22, label %bb23
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t85, %"compiler/source:Span" %t86)
  store ptr %t89, ptr %l58
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t90 = load ptr, ptr %l58, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
bb25:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l6, !tbaa !23
  %t95 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t91, i32 %t92)
  store i1 %t95, ptr %l61
  br label %bb26
bb26:
  %t96 = load i1, ptr %l61, !tbaa !21
  %t97 = xor i1 %t96, true
  br i1 %t97, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l63, !tbaa !29
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t100, ptr %l64, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr ptr, ptr %t102, i64 0
  %t104 = load ptr, ptr %t103, !tbaa !39
  %t106 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t104)
  store %"compiler/source:Span" %t106, ptr %l66
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l6, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t107, i32 %t108)
  store { i64, ptr } %t111, ptr %l69
  br label %bb30
bb30:
  %t112 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  %t114 = extractvalue { i64, ptr } %t112, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  %t120 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowNotNumber(ptr %s5, ptr %s5, { i64, ptr } %t118)
  store %"compiler/diagmsg:Msg" %t120, ptr %l71
  br label %bb31
bb31:
  %t121 = load ptr, ptr %l63, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l66
  %t123 = load %"compiler/diagmsg:Msg", ptr %l71
  %t124 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t121, %"compiler/source:Span" %t122, %"compiler/diagmsg:Msg" %t123)
  store i64 %t124, ptr %l72
  br label %bb32
bb32:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load %"compiler/source:Span", ptr %l1
  %t129 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t125, %"compiler/source:Span" %t126)
  store ptr %t129, ptr %l75
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t130 = load ptr, ptr %l75, !tbaa !29
  store ptr %t130, ptr %rv
  br label %ret
bb34:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l8, !tbaa !23
  %t133 = load i32, ptr %l6, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvWords(ptr %v0, ptr %s0, ptr %t131, i32 %t132, i32 %t133)
  store { i64, ptr } %t137, ptr %l79
  br label %bb35
bb35:
  %t138 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t138, ptr %l9, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t143 = icmp eq i64 %t141, 0
  br i1 %t143, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %s6, ptr %s6, ptr %s6, ptr %t145, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d5, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d6, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i32 %t147, ptr %l84
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t148 = mul i64 1, 4
  %t149 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t148)
  %t150 = insertvalue { i64, ptr } undef, i64 1, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l85, !tbaa !27
  %t152 = load i32, ptr %l84, !tbaa !23
  %t153 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i32, ptr %t154, i64 0
  store i32 %t152, ptr %t155, !tbaa !33
  %t156 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t156, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb39:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t159 = load %"compiler/source:Span", ptr %l2
  %t163 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %s0, ptr %t157, { i64, ptr } %t158, %"compiler/source:Span" %t159, i1 false)
  store i32 %t163, ptr %l89
  br label %bb40
bb40:
  %t164 = load i32, ptr %l89, !range !{i32 0, i32 3}
  store i32 %t164, ptr %l10
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 36
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t167)
  store i64 %t169, ptr %l92
  br label %bb41
bb41:
  %t170 = load i64, ptr %l92, !tbaa !24
  store i64 %t170, ptr %l11, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 36
  %t174 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t173, ptr %t174)
  br label %bb42
bb42:
  %t177 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t177, ptr %l96
  %t178 = load i32, ptr %l6, !tbaa !23
  store i32 %t178, ptr %l97, !tbaa !23
  store i32 20, ptr %l98
  %t179 = load i32, ptr %l10, !range !{i32 0, i32 3}
  store i32 %t179, ptr %l99
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 36
  %t183 = load i64, ptr %l11, !tbaa !24
  %t186 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t182, i64 %t183)
  store { i64, ptr } %t186, ptr %l103
  br label %bb43
bb43:
  store { i64, [5 x i64] } zeroinitializer, ptr %t187
  %t188 = getelementptr { i64, [5 x i64] }, ptr %t187, i32 0, i32 0
  store i64 9, ptr %t188
  %t189 = load %"compiler/source:Span", ptr %l96
  %t190 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t189, 0
  %t191 = load i32, ptr %l97, !tbaa !23
  %t192 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t190, i32 %t191, 1
  %t193 = load i32, ptr %l98, !range !{i32 0, i32 52}
  %t194 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t192, i32 %t193, 2
  %t195 = load i32, ptr %l99, !range !{i32 0, i32 3}
  %t196 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t194, i32 %t195, 3
  %t197 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t198 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t196, { i64, ptr } %t197, 4
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t187, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t198, ptr %t199
  %t200 = load { i64, [5 x i64] }, ptr %t187
  %t202 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t200, ptr %t202
  call void @__olang_scope_close(ptr %s0)
  store ptr %t202, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedWrite(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/check:narrowed"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/check:narrowed"
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca ptr
  %l42 = alloca ptr
  %l46 = alloca %"compiler/typed:Local"
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l8, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 46
  store ptr %t6, ptr %l10, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOwner(ptr %v0, ptr %t7, i64 %a2)
  store i64 %t11, ptr %l13
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = load i64, ptr %l13, !tbaa !24
  %t14 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t12, i64 %t13)
  store %"compiler/check:narrowed" %t14, ptr %l14
  br label %bb3
bb3:
  %t15 = load %"compiler/check:narrowed", ptr %l14
  store %"compiler/check:narrowed" %t15, ptr %l3
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = getelementptr %"compiler/check:narrowed", ptr %l3, i32 0, i32 2
  %t27 = load i32, ptr %t26, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t25, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb4
bb4:
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = load i32, ptr %l21, !tbaa !23
  %t33 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t31, i32 %t32)
  store ptr %t33, ptr %l22
  br label %bb5
bb5:
  %t34 = getelementptr %"compiler/check:narrowed", ptr %l3, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t38 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t36, i64 %t35)
  store ptr %t38, ptr %l24
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l24, !tbaa !29
  store ptr %t39, ptr %l4, !tbaa !29
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t49 = getelementptr %"compiler/ast:CaseDecl", ptr %t47, i32 0, i32 1
  %t50 = load i32, ptr %t49, !tbaa !23
  %t53 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t46, i32 %t50)
  store { i64, ptr } %t53, ptr %l32
  br label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l28, !tbaa !27
  br label %bb10
bb9:
  %t54 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t54, ptr %l28, !tbaa !27
  br label %bb10
bb10:
  %t55 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t55, ptr %l5, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:narrowed", ptr %l3, i32 0, i32 2
  %t58 = load i32, ptr %t57, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t56, i32 %t58)
  store { i64, ptr } %t61, ptr %l35
  br label %bb11
bb11:
  %t62 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t68 = add i64 %t65, %t67
  %t70 = extractvalue { i64, ptr } %t62, 1
  %t71 = extractvalue { i64, ptr } %t62, 0
  %t72 = add i64 %t68, %t71
  %t73 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t72)
  call void @olang_textcopy(ptr %t73, ptr %t64, i64 %t65)
  %t74 = getelementptr i8, ptr %t73, i64 %t65
  call void @olang_textcopy(ptr %t74, ptr %t66, i64 %t67)
  %t75 = getelementptr i8, ptr %t74, i64 %t67
  call void @olang_textcopy(ptr %t75, ptr %t70, i64 %t71)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t73, 1
  store { i64, ptr } %t77, ptr %l6, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l38, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l39
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l40, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t82)
  store ptr %t84, ptr %l42
  br label %bb12
bb12:
  %t85 = load ptr, ptr %l42, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Body", ptr %t85, i32 0, i32 7
  %t88 = getelementptr %"compiler/check:narrowed", ptr %l3, i32 0, i32 0
  %t89 = load i64, ptr %t88, !tbaa !24
  %t92 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t87, i64 %t89)
  store %"compiler/typed:Local" %t92, ptr %l46
  br label %bb13
bb13:
  %t93 = getelementptr %"compiler/typed:Local", ptr %l46, i32 0, i32 0
  %t94 = load i32, ptr %t93, !tbaa !23
  %t95 = load ptr, ptr %l40, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t95, i32 %t94)
  store { i64, ptr } %t97, ptr %l48
  br label %bb14
bb14:
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t101 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowedWrite(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t99, { i64, ptr } %t98)
  store %"compiler/diagmsg:Msg" %t101, ptr %l50
  br label %bb15
bb15:
  %t102 = load ptr, ptr %l38, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l39
  %t104 = load %"compiler/diagmsg:Msg", ptr %l50
  %t105 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t102, %"compiler/source:Span" %t103, %"compiler/diagmsg:Msg" %t104)
  store i64 %t105, ptr %l51
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotStmtSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i1
  %l17 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca { i64, ptr }
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca %"compiler/source:Span"
  %l37 = alloca { i64, ptr }
  %l39 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t24, i32 0, i32 3
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb10
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t29)
  store %"compiler/source:Span" %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t32)
  store %"compiler/source:Span" %t34, ptr %l21
  br label %bb7
bb7:
  %t35 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t37 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s1, i32 %t35)
  store { i64, ptr } %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  %t40 = load ptr, ptr %l17, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l19
  %t42 = load %"compiler/source:Span", ptr %l21
  %t44 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t40, %"compiler/source:Span" %t41, %"compiler/source:Span" %t42, i64 %t39)
  store %"compiler/source:Span" %t44, ptr %l25
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  %t45 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t45, ptr %rv
  br label %ret
bb10:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 30}
  %t53 = icmp eq i64 %t51, 14
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l27, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l5
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t63, i32 0, i32 2
  %t65 = load i32, ptr %t64
  store i32 %t65, ptr %l6, !tbaa !23
  br label %bb15
bb14:
  br label %bb18
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t67 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t67, ptr %l34
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t68, i32 %t69)
  store { i64, ptr } %t72, ptr %l37
  br label %bb16
bb16:
  %t73 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = load %"compiler/source:Span", ptr %l34
  %t77 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t75, i64 %t74)
  store %"compiler/source:Span" %t77, ptr %l39
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  %t78 = load %"compiler/source:Span", ptr %l39
  store %"compiler/source:Span" %t78, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t79)
  store %"compiler/source:Span" %t81, ptr %l41
  br label %bb22
bb22:
  %t82 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t82, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_4d0d10dbd8c28898_8d57e58513238834)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorderGlobals(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l54 = alloca ptr
  %l74 = alloca i64
  %l78 = alloca i64
  %l81 = alloca i64
  %l109 = alloca i64
  %l111 = alloca i64
  %l116 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l19
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Loader", ptr %t11, i32 0, i32 10
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l24
  br label %bb3
bb3:
  %t16 = load i64, ptr %l24, !tbaa !24
  store i64 %t16, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb9
bb6:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l31, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l31, !tbaa !24
  store i64 %t43, ptr %l28, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l28, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l8, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/load:Loader", ptr %t69, i32 0, i32 10
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l54
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l54, !tbaa !29
  %t78 = getelementptr %"compiler/load:Module", ptr %t76, i32 0, i32 3
  %t79 = load i1, ptr %t78, !tbaa !21
  br i1 %t79, label %bb15, label %bb16
bb15:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %s0, ptr %s0, ptr %t81, i64 %t82, ptr %l1, ptr %l2)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l7, !tbaa !24
  br label %bb10
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 12
  %t101 = load i64, ptr %t100, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %s0, ptr %s0, ptr %t91, i64 %t101, ptr %l1, ptr %l2)
  br label %bb21
bb21:
  store i64 0, ptr %l9, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/load:Loader", ptr %t112, i32 0, i32 10
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t114)
  store i64 %t116, ptr %l74
  br label %bb22
bb22:
  %t117 = load i64, ptr %l74, !tbaa !24
  store i64 %t117, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l10, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  br i1 %t122, label %bb23, label %bb24
bb23:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb28
bb25:
  %t128 = load i64, ptr %l10, !tbaa !24
  %t129 = load i64, ptr %l9, !tbaa !24
  %t132 = sub i64 %t128, %t129
  %t133 = load i64, ptr %l11, !tbaa !24
  %t136 = add i64 %t132, %t133
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = sdiv i64 %t138, %t139
  store i64 %t142, ptr %l81, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb27
bb27:
  %t144 = load i64, ptr %l81, !tbaa !24
  store i64 %t144, ptr %l78, !tbaa !24
  br label %bb28
bb28:
  %t145 = load i64, ptr %l78, !tbaa !24
  store i64 %t145, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb29
bb29:
  %t146 = load i64, ptr %l13, !tbaa !24
  %t147 = load i64, ptr %l12, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t155 = load i64, ptr %l13, !tbaa !24
  %t156 = load i64, ptr %l11, !tbaa !24
  %t159 = mul i64 %t155, %t156
  %t162 = add i64 %t154, %t159
  %t164 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %s0, ptr %s0, ptr %t164, i64 %t162, ptr %l1, ptr %l2)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t170 = load i64, ptr %l13, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l13, !tbaa !24
  br label %bb29
bb35:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/generic:Program", ptr %t177, i32 0, i32 60
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t179)
  br label %bb36
bb36:
  store ptr %l2, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb37
bb37:
  %t182 = load i64, ptr %l16, !tbaa !24
  store i64 %t182, ptr %l109, !tbaa !24
  %t183 = load ptr, ptr %l15, !tbaa !29
  %t185 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t183)
  store i64 %t185, ptr %l111
  br label %bb38
bb38:
  %t186 = load i64, ptr %l109, !tbaa !24
  %t187 = load i64, ptr %l111, !tbaa !24
  %t188 = icmp slt i64 %t186, %t187
  %t190 = xor i1 %t188, true
  br i1 %t190, label %bb39, label %bb40
bb39:
  br label %bb45
bb40:
  br label %bb41
bb41:
  %t192 = load ptr, ptr %l15, !tbaa !29
  %t193 = load i64, ptr %l16, !tbaa !24
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t192, i64 %t193)
  store i64 %t196, ptr %l116
  br label %bb42
bb42:
  %t197 = load i64, ptr %l116, !tbaa !24
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/check:Checker", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = getelementptr %"compiler/generic:Program", ptr %t203, i32 0, i32 60
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorderModule(ptr %v0, ptr %v0, ptr %t198, i64 %t197, ptr %t205)
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t209 = load i64, ptr %l16, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l16, !tbaa !24
  br label %bb37
bb45:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l8 = alloca i32
  %l14 = alloca i1
  %l19 = alloca i32
  %l22 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i1
  %l39 = alloca i1
  %l44 = alloca i1
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
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t14 = trunc i64 18 to i32
  %t15 = icmp eq i32 %t11, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l14
  br label %bb4
bb3:
  br label %bb14
bb4:
  %t25 = load i1, ptr %l14, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l19
  br label %bb8
bb8:
  %t34 = load i32, ptr %l19, !range !{i32 0, i32 6}
  %t37 = trunc i64 4 to i32
  %t38 = icmp eq i32 %t34, %t37
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l27
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t51 = load ptr, ptr %l22, !tbaa !29
  %t52 = load i32, ptr %l27, !tbaa !23
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t53, ptr %l28
  br label %bb12
bb12:
  %t54 = load i1, ptr %l28, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t61, i32 %t62)
  store i1 %t65, ptr %l34
  br label %bb15
bb15:
  %t66 = load i1, ptr %l34, !tbaa !21
  br i1 %t66, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb18
bb17:
  %t67 = load i32, ptr %l1, !tbaa !23
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t71 = icmp eq i32 %t67, %t68
  store i1 %t71, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l35, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb22
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l44
  br label %bb21
bb21:
  %t84 = load i1, ptr %l44, !tbaa !21
  store i1 %t84, ptr %l39, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l39, !tbaa !21
  %t86 = xor i1 %t85, true
  store i1 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflPiece(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
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
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 114}
  store i32 %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t24 = trunc i64 5 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l2
  %t31 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %s2, ptr %t27, %"compiler/source:Span" %t28)
  store { i64, ptr } %t31, ptr %l18
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t32 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t32, ptr %l19, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l20, !tbaa !24
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l21, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  %t48 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t46, 1
  store { i32, { i64, ptr } } %t48, ptr %rv
  br label %ret
bb9:
  br label %bb27
bb10:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t50 = load ptr, ptr %l23, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 30}
  %t56 = icmp eq i64 %t54, 3
  store i1 %t56, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l24, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t60, i32 0, i32 1
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 114}
  store i32 %t62, ptr %l4
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t70 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t72 = trunc i64 105 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l5, !tbaa !29
  %t79 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflRendered(ptr %v0, ptr %v1, ptr %v2, ptr %t75, ptr %t76)
  %t80 = extractvalue { i32, { i64, ptr } } %t79, 1
  %t81 = extractvalue { i32, { i64, ptr } } %t79, 0
  store i32 %t81, ptr %l37
  %t82 = icmp ne i32 %t81, 0
  br i1 %t82, label %bb19, label %ok.83, !prof !99
ok.83:
  store { i64, ptr } %t80, ptr %l36
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t84 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t84, ptr %l33, !tbaa !27
  br label %bb20
bb19:
  %t85 = load i32, ptr %l37, !tbaa !23
  %t86 = lshr i32 %t85, 16
  %t87 = and i32 %t85, 65535
  %t88 = icmp eq i32 %t86, 1
  %t89 = select i1 %t88, i32 1, i32 0
  %t90 = icmp eq i32 %t85, 0
  %t91 = shl i32 %t89, 16
  %t92 = or i32 %t91, %t87
  %t93 = select i1 %t90, i32 0, i32 %t92
  %t95 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t93, 0
  store { i32, { i64, ptr } } %t95, ptr %rv
  br label %ret
bb20:
  %t96 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t97 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t96, 1
  store { i32, { i64, ptr } } %t97, ptr %rv
  br label %ret
bb21:
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_2063aa53a395a078_c72ae34d29618694)
  unreachable
bb27:
  %t99 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t99, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflRendered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca %"compiler/check:reflVal"
  %l5 = alloca %"compiler/check:reflVal"
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
  store %"compiler/check:reflVal" %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load %"compiler/check:reflVal", ptr %l5
  store %"compiler/check:reflVal" %t6, ptr %l2
  %t7 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 0
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = load i64, ptr @G_2ecompiler_2fcheck_2eRvText, !tbaa !24
  %t19 = icmp eq i64 %t15, %t16
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 3
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l13, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l14, !tbaa !24
  %t26 = load i64, ptr %l14, !tbaa !24
  %t27 = mul i64 %t26, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l15, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = mul i64 %t35, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t37, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t38 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t39 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t38, 1
  store { i32, { i64, ptr } } %t39, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t40 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr @G_2ecompiler_2fcheck_2eRvInt, !tbaa !24
  %t45 = icmp eq i64 %t41, %t42
  br i1 %t45, label %bb8, label %bb9
bb8:
  %t47 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = call i64 @__olang_fmt_i64(ptr null, i64 %t48)
  %t51 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t50)
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t48)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  call void @__olang_scope_close(ptr %s0)
  %t56 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t54, 1
  store { i32, { i64, ptr } } %t56, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t57 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 1
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  %t62 = icmp eq i64 %t58, %t59
  br i1 %t62, label %bb11, label %bb12
bb11:
  %t64 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 2
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = icmp eq i64 %t65, 1
  br i1 %t67, label %bb13, label %bb14
bb12:
  br label %bb16
bb13:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t69, ptr %l26, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t71, ptr %l26, !tbaa !27
  br label %bb15
bb15:
  %t73 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  store i64 %t74, ptr %l31, !tbaa !24
  %t75 = load i64, ptr %l31, !tbaa !24
  %t76 = mul i64 %t75, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l32, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l31, !tbaa !24
  %t85 = mul i64 %t84, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t81, ptr %t83, i64 %t85, i1 false)
  %t86 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t86, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t87 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t88 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t87, 1
  store { i32, { i64, ptr } } %t88, ptr %rv
  br label %ret
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t90 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t90, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroArgFor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %l28 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca i32
  %l53 = alloca i1
  %l58 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca i64
  %l65 = alloca { i64, [3 x i64] }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/check:roArg"
  %l74 = alloca ptr
  %l75 = alloca i1
  %l83 = alloca i64
  %l87 = alloca ptr
  %l90 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l93 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l94 = alloca %"std/pair:Pair.b139c4f75a6545712256427180a82a06"
  %l97 = alloca i1
  %l99 = alloca ptr
  %l104 = alloca %"compiler/check:roDeepArg"
  %l105 = alloca ptr
  %l108 = alloca i32
  %l109 = alloca i1
  %l114 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i64
  %l118 = alloca i64
  %l121 = alloca { i64, [3 x i64] }
  %l122 = alloca { i64, ptr }
  %l123 = alloca i64
  %l125 = alloca ptr
  %l128 = alloca i32
  %l129 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l131 = alloca i64
  %l133 = alloca ptr
  %l136 = alloca i32
  %l139 = alloca i32
  %l140 = alloca { i64, ptr }
  %l142 = alloca %"compiler/check:roArg"
  %l143 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca i64
  %l150 = alloca ptr
  %l153 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l156 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l157 = alloca %"std/pair:Pair.b139c4f75a6545712256427180a82a06"
  %l160 = alloca i1
  %l162 = alloca ptr
  %l167 = alloca %"compiler/check:roDeepArg"
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  store i1 %t7, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l17
  br label %bb7
bb7:
  %t13 = load ptr, ptr %l17, !tbaa !29
  %t15 = getelementptr %"compiler/check:frame", ptr %t13, i32 0, i32 0
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l6, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l20, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t22 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t19)
  store i32 %t22, ptr %l23
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t24 = load i32, ptr %l23, !tbaa !23
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t25, ptr %l24
  br label %bb9
bb9:
  %t26 = load i1, ptr %l24, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %t27, i64 %t28, i64 %t29)
  store i1 %t33, ptr %l28
  br label %bb12
bb11:
  br label %bb59
bb12:
  %t34 = load i1, ptr %l28, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l32, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  store ptr %t48, ptr %l35, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l38, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 14
  %t58 = load i64, ptr %l1, !tbaa !24
  %t61 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store ptr %t61, ptr %l42
  br label %bb16
bb16:
  %t62 = load ptr, ptr %l42, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Body", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %t64, !tbaa !23
  %t66 = load ptr, ptr %l38, !tbaa !29
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t66, i32 %t65)
  store i32 %t68, ptr %l45
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l35, !tbaa !29
  %t70 = load i32, ptr %l45, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l46
  br label %bb18
bb18:
  %t72 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t72, ptr %l47, !tbaa !27
  %t73 = load i64, ptr %l2, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i32, ptr %t76, i64 %t73
  %t78 = load i32, ptr %t77, !tbaa !33
  %t79 = load ptr, ptr %l32, !tbaa !29
  %t81 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t79, i32 %t78)
  store i32 %t81, ptr %l50
  br label %bb19
bb19:
  %t82 = load i32, ptr %l50, !tbaa !23
  store i32 %t82, ptr %l7, !tbaa !23
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i32, ptr %l7, !tbaa !23
  %t87 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedHolds(ptr %v0, ptr %t83, i32 %t84)
  store i1 %t87, ptr %l53
  br label %bb20
bb20:
  %t88 = load i1, ptr %l53, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t96 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t91, ptr %t92)
  store i1 %t96, ptr %l58
  br label %bb24
bb24:
  %t97 = load i1, ptr %l58, !tbaa !21
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 92
  store ptr %t100, ptr %l60, !tbaa !29
  %t101 = load i64, ptr %l1, !tbaa !24
  store i64 %t101, ptr %l61, !tbaa !24
  %t102 = load i64, ptr %l2, !tbaa !24
  store i64 %t102, ptr %l62, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l4
  %t107 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t103, %"compiler/source:Span" %t104)
  store { i64, [3 x i64] } %t107, ptr %l65
  br label %bb27
bb26:
  br label %bb33
bb27:
  %t108 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = ptrtoint ptr %v0 to i64
  store i64 %t109, ptr %l67, !tbaa !24
  %t110 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aroArg_2e4
  br i1 %t110, label %bb28, label %bb29
bb28:
  %t112 = call ptr @__olang_region_make(ptr %v0)
  %t113 = ptrtoint ptr %t112 to i64
  store i64 %t113, ptr %l67, !tbaa !24
  br label %bb29
bb29:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l7, !tbaa !23
  %t116 = load i64, ptr %l67
  %t117 = inttoptr i64 %t116 to ptr
  %t120 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %t117, ptr %t114, i32 %t115)
  store { i64, ptr } %t120, ptr %l71
  br label %bb30
bb30:
  %t121 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t122 = load i64, ptr %l67
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = extractvalue { i64, ptr } %t121, 0
  %t125 = extractvalue { i64, ptr } %t121, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %t123, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load i64, ptr %l61, !tbaa !24
  %t131 = load i64, ptr %l62, !tbaa !24
  %t132 = load { i64, [3 x i64] }, ptr %l65
  %t133 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t135 = call %"compiler/check:roArg" @compiler_2fcheck_3aroArg_2ector(ptr %v2, ptr %v0, ptr %v0, ptr %v0, i64 %t130, i64 %t131, { i64, [3 x i64] } %t132, { i64, ptr } %t133, { i64, ptr } %t129, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store %"compiler/check:roArg" %t135, ptr %l73
  br label %bb31
bb31:
  %t136 = load ptr, ptr %l60, !tbaa !29
  %t137 = load %"compiler/check:roArg", ptr %l73
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2ePush_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v0, ptr %t136, %"compiler/check:roArg" %t137)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb33:
  %t138 = load ptr, ptr %l3, !tbaa !29
  store ptr %t138, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t139 = load ptr, ptr %l74, !tbaa !29
  %t140 = icmp ne ptr %t139, null
  br i1 %t140, label %bb34, label %bb35
bb34:
  %t142 = load ptr, ptr %l74, !tbaa !29
  %t143 = load i64, ptr %t142, !range !{i64 0, i64 18}
  %t145 = icmp eq i64 %t143, 3
  store i1 %t145, ptr %l75, !tbaa !21
  br label %bb35
bb35:
  %t146 = load i1, ptr %l75, !tbaa !21
  br i1 %t146, label %bb36, label %bb37
bb36:
  %t147 = load ptr, ptr %l3, !tbaa !29
  %t149 = getelementptr { i64, [5 x i64] }, ptr %t147, i32 0, i32 1
  %t150 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t149, i32 0, i32 2
  %t151 = load ptr, ptr %t150
  store ptr %t151, ptr %l8, !tbaa !29
  br label %bb38
bb37:
  br label %bb47
bb38:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l8, !tbaa !29
  %t158 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamOf(ptr %v0, ptr %v1, ptr %t153, ptr %t154)
  store i64 %t158, ptr %l83
  br label %bb39
bb39:
  %t159 = load i64, ptr %l83, !tbaa !24
  store i64 %t159, ptr %l9, !tbaa !24
  %t160 = load i64, ptr %l9, !tbaa !24
  %t162 = icmp sge i64 %t160, 0
  br i1 %t162, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 84
  store ptr %t166, ptr %l87, !tbaa !29
  %t167 = load i64, ptr %l6, !tbaa !24
  %t168 = load i64, ptr %l9, !tbaa !24
  %t171 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s7, i64 %t167, i64 %t168)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t171, ptr %l90
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t172 = load i64, ptr %l1, !tbaa !24
  %t173 = load i64, ptr %l2, !tbaa !24
  %t176 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s7, i64 %t172, i64 %t173)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t176, ptr %l93
  br label %bb43
bb43:
  %t177 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l90
  %t178 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l93
  %t179 = call %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fpair_3aPair_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %s7, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t177, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t178)
  store %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t179, ptr %l94
  br label %bb44
bb44:
  %t180 = load ptr, ptr %l87, !tbaa !29
  %t181 = load %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l94
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H9be680f663aa81558c844970355ca108(ptr %v0, ptr %t180, %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t181)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb46:
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
  call void @__olang_check_failed(ptr @olang_loc_3ba07a3e63e86523_b4e2f85113e27c0f)
  unreachable
bb52:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i64, ptr %l6, !tbaa !24
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t182, i64 %t183)
  store i1 %t186, ptr %l97
  br label %bb53
bb53:
  %t187 = load i1, ptr %l97, !tbaa !21
  br i1 %t187, label %bb54, label %bb55
bb54:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 91
  store ptr %t190, ptr %l99, !tbaa !29
  %t191 = load i64, ptr %l6, !tbaa !24
  %t192 = load ptr, ptr %l3, !tbaa !29
  %t193 = load i64, ptr %l1, !tbaa !24
  %t194 = load i64, ptr %l2, !tbaa !24
  %t199 = call %"compiler/check:roDeepArg" @compiler_2fcheck_3aroDeepArg_2ector(ptr %v1, ptr %v0, i64 %t191, ptr %t192, i64 %t193, i64 %t194)
  store %"compiler/check:roDeepArg" %t199, ptr %l104
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t200 = load ptr, ptr %l99, !tbaa !29
  %t201 = load %"compiler/check:roDeepArg", ptr %l104
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2ePush_H0e30e0389c54f9bfc05db61d637e277e(ptr %v0, ptr %v0, ptr %t200, %"compiler/check:roDeepArg" %t201)
  br label %bb57
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb59:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l105, !tbaa !29
  %t203 = load ptr, ptr %l3, !tbaa !29
  %t206 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t203)
  store i32 %t206, ptr %l108
  br label %bb60
bb60:
  %t207 = load ptr, ptr %l105, !tbaa !29
  %t208 = load i32, ptr %l108, !tbaa !23
  %t209 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t207, i32 %t208)
  store i1 %t209, ptr %l109
  br label %bb61
bb61:
  %t210 = load i1, ptr %l109, !tbaa !21
  %t211 = xor i1 %t210, true
  br i1 %t211, label %bb62, label %bb63
bb62:
  br label %ret
bb63:
  br label %bb64
bb64:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l3, !tbaa !29
  %t218 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %t213, ptr %t214)
  store i1 %t218, ptr %l114
  br label %bb65
bb65:
  %t219 = load i1, ptr %l114, !tbaa !21
  br i1 %t219, label %bb66, label %bb67
bb66:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 85
  store ptr %t222, ptr %l116, !tbaa !29
  %t223 = load i64, ptr %l1, !tbaa !24
  store i64 %t223, ptr %l117, !tbaa !24
  %t224 = load i64, ptr %l2, !tbaa !24
  store i64 %t224, ptr %l118, !tbaa !24
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l4
  %t229 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t225, %"compiler/source:Span" %t226)
  store { i64, [3 x i64] } %t229, ptr %l121
  br label %bb68
bb67:
  br label %bb80
bb68:
  %t230 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t230, ptr %l122, !tbaa !27
  %t231 = ptrtoint ptr %v0 to i64
  store i64 %t231, ptr %l123, !tbaa !24
  %t232 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aroArg_2e4
  br i1 %t232, label %bb69, label %bb70
bb69:
  %t234 = call ptr @__olang_region_make(ptr %v0)
  %t235 = ptrtoint ptr %t234 to i64
  store i64 %t235, ptr %l123, !tbaa !24
  br label %bb70
bb70:
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l125, !tbaa !29
  %t237 = load ptr, ptr %l3, !tbaa !29
  %t240 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t237)
  store i32 %t240, ptr %l128
  br label %bb71
bb71:
  %t241 = load i64, ptr %l123
  %t242 = inttoptr i64 %t241 to ptr
  %t243 = load ptr, ptr %l125, !tbaa !29
  %t244 = load i32, ptr %l128, !tbaa !23
  %t245 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %t242, ptr %t243, i32 %t244)
  store { i64, ptr } %t245, ptr %l129
  br label %bb72
bb72:
  %t246 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t247 = load i64, ptr %l123
  %t248 = inttoptr i64 %t247 to ptr
  %t249 = extractvalue { i64, ptr } %t246, 0
  %t250 = extractvalue { i64, ptr } %t246, 1
  %t251 = mul i64 %t249, 1
  %t252 = call ptr @__olang_scope_alloc(ptr %t248, i64 %t251)
  call void @llvm.memcpy.p0.p0.i64(ptr %t252, ptr %t250, i64 %t251, i1 false)
  %t253 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t252, 1
  store { i64, ptr } %t254, ptr %l130, !tbaa !27
  %t255 = ptrtoint ptr %v0 to i64
  store i64 %t255, ptr %l131, !tbaa !24
  %t256 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aroArg_2e5
  br i1 %t256, label %bb73, label %bb74
bb73:
  %t258 = call ptr @__olang_region_make(ptr %v0)
  %t259 = ptrtoint ptr %t258 to i64
  store i64 %t259, ptr %l131, !tbaa !24
  br label %bb74
bb74:
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l133, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l3, !tbaa !29
  %t265 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %t261, ptr %t262)
  store i32 %t265, ptr %l136
  br label %bb75
bb75:
  %t266 = load ptr, ptr %l3, !tbaa !29
  %t269 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t266)
  store i32 %t269, ptr %l139
  br label %bb76
bb76:
  %t270 = load i64, ptr %l131
  %t271 = inttoptr i64 %t270 to ptr
  %t272 = load ptr, ptr %l133, !tbaa !29
  %t273 = load i32, ptr %l136, !tbaa !23
  %t274 = load i32, ptr %l139, !tbaa !23
  %t275 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %t271, ptr %t272, i32 %t273, i32 %t274)
  store { i64, ptr } %t275, ptr %l140
  br label %bb77
bb77:
  %t276 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t277 = load i64, ptr %l131
  %t278 = inttoptr i64 %t277 to ptr
  %t279 = extractvalue { i64, ptr } %t276, 0
  %t280 = extractvalue { i64, ptr } %t276, 1
  %t281 = mul i64 %t279, 1
  %t282 = call ptr @__olang_scope_alloc(ptr %t278, i64 %t281)
  call void @llvm.memcpy.p0.p0.i64(ptr %t282, ptr %t280, i64 %t281, i1 false)
  %t283 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  %t285 = load i64, ptr %l117, !tbaa !24
  %t286 = load i64, ptr %l118, !tbaa !24
  %t287 = load { i64, [3 x i64] }, ptr %l121
  %t288 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t289 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t291 = call %"compiler/check:roArg" @compiler_2fcheck_3aroArg_2ector(ptr %v2, ptr %v0, ptr %v0, ptr %v0, i64 %t285, i64 %t286, { i64, [3 x i64] } %t287, { i64, ptr } %t288, { i64, ptr } %t289, { i64, ptr } %t284)
  store %"compiler/check:roArg" %t291, ptr %l142
  br label %bb78
bb78:
  %t292 = load ptr, ptr %l116, !tbaa !29
  %t293 = load %"compiler/check:roArg", ptr %l142
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2ePush_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v0, ptr %t292, %"compiler/check:roArg" %t293)
  br label %bb79
bb79:
  br label %ret
bb80:
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l143, !tbaa !29
  %t295 = load ptr, ptr %l3, !tbaa !29
  %t297 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t295)
  store ptr %t297, ptr %l145
  br label %bb81
bb81:
  %t298 = load ptr, ptr %l143, !tbaa !29
  %t299 = load ptr, ptr %l145, !tbaa !29
  %t300 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamOf(ptr %v0, ptr %v1, ptr %t298, ptr %t299)
  store i64 %t300, ptr %l146
  br label %bb82
bb82:
  %t301 = load i64, ptr %l146, !tbaa !24
  store i64 %t301, ptr %l10, !tbaa !24
  %t302 = load i64, ptr %l10, !tbaa !24
  %t304 = icmp sge i64 %t302, 0
  br i1 %t304, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s12
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/check:Checker", ptr %t306, i32 0, i32 84
  store ptr %t308, ptr %l150, !tbaa !29
  %t309 = load i64, ptr %l6, !tbaa !24
  %t310 = load i64, ptr %l10, !tbaa !24
  %t313 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s12, i64 %t309, i64 %t310)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t313, ptr %l153
  br label %bb85
bb84:
  br label %bb89
bb85:
  %t314 = load i64, ptr %l1, !tbaa !24
  %t315 = load i64, ptr %l2, !tbaa !24
  %t318 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s12, i64 %t314, i64 %t315)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t318, ptr %l156
  br label %bb86
bb86:
  %t319 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l153
  %t320 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l156
  %t321 = call %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fpair_3aPair_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %s12, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t319, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t320)
  store %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t321, ptr %l157
  br label %bb87
bb87:
  %t322 = load ptr, ptr %l150, !tbaa !29
  %t323 = load %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l157
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H9be680f663aa81558c844970355ca108(ptr %v0, ptr %t322, %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t323)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s12)
  br label %bb89
bb89:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i64, ptr %l6, !tbaa !24
  %t328 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t324, i64 %t325)
  store i1 %t328, ptr %l160
  br label %bb90
bb90:
  %t329 = load i1, ptr %l160, !tbaa !21
  br i1 %t329, label %bb91, label %bb92
bb91:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/check:Checker", ptr %t330, i32 0, i32 91
  store ptr %t332, ptr %l162, !tbaa !29
  %t333 = load i64, ptr %l6, !tbaa !24
  %t334 = load ptr, ptr %l3, !tbaa !29
  %t335 = load i64, ptr %l1, !tbaa !24
  %t336 = load i64, ptr %l2, !tbaa !24
  %t341 = call %"compiler/check:roDeepArg" @compiler_2fcheck_3aroDeepArg_2ector(ptr %v1, ptr %v0, i64 %t333, ptr %t334, i64 %t335, i64 %t336)
  store %"compiler/check:roDeepArg" %t341, ptr %l167
  br label %bb93
bb92:
  br label %bb95
bb93:
  %t342 = load ptr, ptr %l162, !tbaa !29
  %t343 = load %"compiler/check:roDeepArg", ptr %l167
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2ePush_H0e30e0389c54f9bfc05db61d637e277e(ptr %v0, ptr %v0, ptr %t342, %"compiler/check:roDeepArg" %t343)
  br label %bb94
bb94:
  br label %bb95
bb95:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i32
  %l12 = alloca i64
  %l14 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca i32
  %l49 = alloca ptr
  %l51 = alloca ptr
  %l53 = alloca %"compiler/typed:Local"
  %l55 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca i64
  %l61 = alloca ptr
  %l63 = alloca %"compiler/typed:Local"
  %l68 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l79 = alloca ptr
  %l82 = alloca i1
  %l84 = alloca ptr
  %l86 = alloca ptr
  %l89 = alloca i1
  %l90 = alloca ptr
  %l92 = alloca ptr
  %l96 = alloca ptr
  %l100 = alloca ptr
  %l103 = alloca i64
  %l105 = alloca i64
  %l110 = alloca i32
  %l111 = alloca ptr
  %l113 = alloca ptr
  %l115 = alloca %"compiler/typed:Local"
  %l124 = alloca { i64, ptr }
  %l125 = alloca %"compiler/typed:Block"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t7)
  store ptr %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l14, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 13
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  store ptr %t20, ptr %l20, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  store ptr %t26, ptr %l23, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t27)
  store ptr %t29, ptr %l25
  br label %bb5
bb4:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb5:
  %t30 = load ptr, ptr %l25, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %t32, !tbaa !23
  %t34 = load ptr, ptr %l23, !tbaa !29
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t34, i32 %t33)
  store i32 %t36, ptr %l28
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l20, !tbaa !29
  %t38 = load i32, ptr %l28, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t37, i32 %t38)
  store { i64, ptr } %t39, ptr %l29
  br label %bb7
bb7:
  %t40 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  %t43 = icmp eq i64 %t41, 0
  store i1 %t43, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t45 = load i1, ptr %l17, !tbaa !21
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t50 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epuns(ptr %v0, ptr %v1, ptr %s0, ptr %t46, { i64, ptr } %t47)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t50, ptr %l35
  br label %bb11
bb10:
  %t51 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t51, ptr %l36
  br label %bb12
bb11:
  %t52 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t52, ptr %l32
  br label %bb13
bb12:
  %t53 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t53, ptr %l32
  br label %bb13
bb13:
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %l3
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t55)
  store ptr %t57, ptr %l38
  br label %bb14
bb14:
  %t58 = load ptr, ptr %l38, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Body", ptr %t58, i32 0, i32 5
  store ptr %t60, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb15
bb15:
  %t62 = load i64, ptr %l5, !tbaa !24
  store i64 %t62, ptr %l41, !tbaa !24
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l43
  br label %bb16
bb16:
  %t66 = load i64, ptr %l41, !tbaa !24
  %t67 = load i64, ptr %l43, !tbaa !24
  %t68 = icmp slt i64 %t66, %t67
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb17, label %bb18
bb17:
  br label %bb31
bb18:
  br label %bb19
bb19:
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t73 = load i64, ptr %l5, !tbaa !24
  %t76 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t72, i64 %t73)
  store i32 %t76, ptr %l48
  br label %bb20
bb20:
  %t77 = load i32, ptr %l48, !tbaa !23
  store i32 %t77, ptr %l6, !tbaa !23
  store ptr %l3, ptr %l49, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t78)
  store ptr %t80, ptr %l51
  br label %bb21
bb21:
  %t81 = load i32, ptr %l6, !tbaa !23
  %t82 = load ptr, ptr %l51, !tbaa !29
  %t84 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t82, i32 %t81)
  store %"compiler/typed:Local" %t84, ptr %l53
  br label %bb22
bb22:
  %t85 = getelementptr %"compiler/typed:Local", ptr %l53, i32 0, i32 0
  %t86 = load i32, ptr %t85, !tbaa !23
  %t87 = load ptr, ptr %l49, !tbaa !29
  %t89 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %s0, ptr %t87, i32 %t86)
  store i1 %t89, ptr %l55
  br label %bb23
bb23:
  %t90 = load i1, ptr %l55, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l57, !tbaa !29
  %t94 = load i32, ptr %l6, !tbaa !23
  %t96 = sext i32 %t94 to i64
  store i64 %t96, ptr %l59, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t97)
  store ptr %t99, ptr %l61
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t100 = load i32, ptr %l6, !tbaa !23
  %t101 = load ptr, ptr %l61, !tbaa !29
  %t103 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t101, i32 %t100)
  store %"compiler/typed:Local" %t103, ptr %l63
  br label %bb27
bb27:
  %t104 = getelementptr %"compiler/typed:Local", ptr %l63, i32 0, i32 1
  %t105 = load %"compiler/source:Span", ptr %t104
  %t106 = load ptr, ptr %l57, !tbaa !29
  %t107 = load i64, ptr %l59, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %t106, i64 %t107, %"compiler/source:Span" %t105, i1 true)
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l5, !tbaa !24
  br label %bb15
bb31:
  %t113 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryChecks(ptr %v0, ptr %t113)
  br label %bb32
bb32:
  %t115 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t115, ptr %l68, !tbaa !27
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t116)
  store ptr %t118, ptr %l70
  br label %bb33
bb33:
  %t119 = load ptr, ptr %l70, !tbaa !29
  %t121 = getelementptr %"compiler/check:frame", ptr %t119, i32 0, i32 43
  %t122 = load { i64, ptr }, ptr %l68, !tbaa !27
  call void @compiler_2fcheck_2estoredIn(ptr %v1, ptr %v0, { i64, ptr } %t122, ptr %t121)
  br label %bb34
bb34:
  %t124 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t128 = icmp sgt i64 %t126, 0
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t130, { i64, ptr } %t131)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t134)
  store ptr %t136, ptr %l79
  br label %bb39
bb39:
  %t137 = load ptr, ptr %l79, !tbaa !29
  %t139 = getelementptr %"compiler/check:frame", ptr %t137, i32 0, i32 13
  %t140 = load i1, ptr %t139, !tbaa !21
  br i1 %t140, label %bb40, label %bb41
bb40:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  store ptr %t145, ptr %l84, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t146)
  store ptr %t148, ptr %l86
  br label %bb42
bb41:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb44
bb42:
  %t149 = load ptr, ptr %l86, !tbaa !29
  %t151 = getelementptr %"compiler/check:frame", ptr %t149, i32 0, i32 14
  %t152 = load i32, ptr %t151, !tbaa !23
  %t153 = load ptr, ptr %l84, !tbaa !29
  %t155 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t153, i32 %t152)
  store i1 %t155, ptr %l89
  br label %bb43
bb43:
  %t156 = load i1, ptr %l89, !tbaa !21
  store i1 %t156, ptr %l82, !tbaa !21
  br label %bb44
bb44:
  %t157 = load i1, ptr %l82, !tbaa !21
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l90, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t159)
  store ptr %t161, ptr %l92
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t162 = load ptr, ptr %l92, !tbaa !29
  %t164 = getelementptr %"compiler/check:frame", ptr %t162, i32 0, i32 14
  %t165 = load i32, ptr %t164, !tbaa !23
  %t166 = load ptr, ptr %l90, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnsFields(ptr %v0, ptr %t166, i32 %t165)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t168)
  store ptr %t170, ptr %l96
  br label %bb50
bb50:
  %t171 = load ptr, ptr %l96, !tbaa !29
  %t173 = getelementptr %"compiler/check:frame", ptr %t171, i32 0, i32 13
  %t174 = load i1, ptr %t173, !tbaa !21
  br i1 %t174, label %bb51, label %bb52
bb51:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t176)
  store ptr %t178, ptr %l100
  br label %bb53
bb52:
  br label %bb65
bb53:
  %t179 = load ptr, ptr %l100, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Body", ptr %t179, i32 0, i32 10
  store ptr %t181, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb54
bb54:
  %t183 = load i64, ptr %l8, !tbaa !24
  store i64 %t183, ptr %l103, !tbaa !24
  %t184 = load ptr, ptr %l7, !tbaa !29
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l105
  br label %bb55
bb55:
  %t187 = load i64, ptr %l103, !tbaa !24
  %t188 = load i64, ptr %l105, !tbaa !24
  %t189 = icmp slt i64 %t187, %t188
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb56, label %bb57
bb56:
  br label %bb64
bb57:
  br label %bb58
bb58:
  %t193 = load ptr, ptr %l7, !tbaa !29
  %t194 = load i64, ptr %l8, !tbaa !24
  %t197 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t193, i64 %t194)
  store i32 %t197, ptr %l110
  br label %bb59
bb59:
  %t198 = load i32, ptr %l110, !tbaa !23
  store i32 %t198, ptr %l9, !tbaa !23
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l111, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t200)
  store ptr %t202, ptr %l113
  br label %bb60
bb60:
  %t203 = load i32, ptr %l9, !tbaa !23
  %t204 = load ptr, ptr %l113, !tbaa !29
  %t206 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t204, i32 %t203)
  store %"compiler/typed:Local" %t206, ptr %l115
  br label %bb61
bb61:
  %t207 = getelementptr %"compiler/typed:Local", ptr %l115, i32 0, i32 1
  %t208 = load %"compiler/source:Span", ptr %t207
  %t209 = load i32, ptr %l9, !tbaa !23
  %t211 = sext i32 %t209 to i64
  %t212 = load ptr, ptr %l111, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropsGone(ptr %v0, ptr %t212, %"compiler/source:Span" %t208, i64 %t211)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t215 = load i64, ptr %l8, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l8, !tbaa !24
  br label %bb54
bb64:
  br label %bb65
bb65:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 37
  %t222 = load i64, ptr %l2, !tbaa !24
  %t225 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t221, i64 %t222)
  store { i64, ptr } %t225, ptr %l124
  br label %bb66
bb66:
  %t226 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t227 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 0, { i64, ptr } %t226)
  store %"compiler/typed:Block" %t227, ptr %l125
  br label %bb67
bb67:
  %t228 = load %"compiler/typed:Block", ptr %l125
  %t229 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t228, ptr %t229
  call void @__olang_scope_close(ptr %s0)
  store ptr %t229, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l15 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l15, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i64, ptr %t23, i64 %t20
  %t25 = load i64, ptr %t24, !tbaa !34
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t29, i64 %t25)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb2
bb8:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca i1
  %l40 = alloca i1
  %l44 = alloca i1
  %l46 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca %"compiler/source:Span"
  %l64 = alloca ptr
  %l65 = alloca i64
  %l71 = alloca %"compiler/source:Span"
  %l73 = alloca i64
  %l74 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t8, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l7, !tbaa !24
  %t15 = load i64, ptr %l8, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb45
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t22, ptr %l26, !tbaa !27
  %t23 = load i64, ptr %l7, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l9, !tbaa !29
  %t30 = load ptr, ptr %l9, !tbaa !29
  store ptr %t30, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t31 = load ptr, ptr %l29, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l29, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 11}
  %t37 = icmp eq i64 %t35, 8
  store i1 %t37, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l30, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l9, !tbaa !29
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t41, i32 0, i32 0
  %t43 = load %"compiler/source:Span", ptr %t42
  store %"compiler/source:Span" %t43, ptr %l10
  %t45 = load ptr, ptr %l9, !tbaa !29
  %t47 = getelementptr { i64, [8 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l11, !tbaa !29
  %t51 = load ptr, ptr %l9, !tbaa !29
  %t53 = getelementptr { i64, [8 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l12, !tbaa !29
  br label %bb12
bb11:
  br label %bb23
bb12:
  br i1 %a5, label %bb13, label %bb14
bb13:
  %t59 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t60 = load i32, ptr %t59, !tbaa !23
  %t61 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t65 = icmp sgt i32 %t60, %t62
  store i1 %t65, ptr %l40, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb15
bb15:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb16, label %bb17
bb16:
  %t68 = load ptr, ptr %l11, !tbaa !29
  %t70 = call i32 @compiler_2fcheck_2esetName(ptr %v1, ptr %t68)
  store i32 %t70, ptr %l46
  br label %bb18
bb17:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb19
bb18:
  %t71 = load i32, ptr %l3, !tbaa !23
  %t72 = load i32, ptr %l46, !tbaa !23
  %t74 = icmp eq i32 %t72, %t71
  store i1 %t74, ptr %l44, !tbaa !21
  br label %bb19
bb19:
  %t76 = load i1, ptr %l44, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l12, !tbaa !29
  store ptr %t77, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb43
bb23:
  %t80 = load ptr, ptr %l9, !tbaa !29
  store ptr %t80, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t81 = load ptr, ptr %l51, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l51, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 11}
  %t87 = icmp eq i64 %t85, 7
  store i1 %t87, ptr %l52, !tbaa !21
  br label %bb25
bb25:
  %t88 = load i1, ptr %l52, !tbaa !21
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t89 = load ptr, ptr %l9, !tbaa !29
  %t91 = getelementptr { i64, [8 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l13, !tbaa !29
  br label %bb28
bb27:
  br label %bb38
bb28:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l57, !tbaa !29
  %t96 = load i64, ptr %l1, !tbaa !24
  store i64 %t96, ptr %l58, !tbaa !24
  %t97 = load ptr, ptr %l13, !tbaa !29
  store ptr %t97, ptr %l59, !tbaa !29
  %t98 = load i32, ptr %l3, !tbaa !23
  store i32 %t98, ptr %l60, !tbaa !23
  %t99 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t99, ptr %l61
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  store ptr %t106, ptr %l64, !tbaa !29
  %t107 = load i64, ptr %l1, !tbaa !24
  store i64 %t107, ptr %l65, !tbaa !24
  %t108 = load ptr, ptr %l13, !tbaa !29
  %t110 = getelementptr %"compiler/ast:TopIf", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb29, label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_ac983f970f94ac3e_5c81cf941b3f1e2)
  unreachable
bb30:
  br label %bb31
bb31:
  %t115 = load ptr, ptr %l13, !tbaa !29
  %t117 = getelementptr %"compiler/ast:TopIf", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t118)
  store %"compiler/source:Span" %t120, ptr %l71
  br label %bb32
bb32:
  %t121 = getelementptr %"compiler/source:Span", ptr %l71, i32 0, i32 0
  %t122 = load i32, ptr %t121, !tbaa !23
  %t123 = load ptr, ptr %l64, !tbaa !29
  %t124 = load i64, ptr %l65, !tbaa !24
  %t126 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t123, i64 %t124, i32 %t122)
  store i64 %t126, ptr %l73
  br label %bb33
bb33:
  %t127 = load ptr, ptr %l57, !tbaa !29
  %t128 = load i64, ptr %l58, !tbaa !24
  %t129 = load ptr, ptr %l59, !tbaa !29
  %t130 = load i32, ptr %l60, !tbaa !23
  %t131 = load %"compiler/source:Span", ptr %l61
  %t132 = load i64, ptr %l73, !tbaa !24
  %t133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetChain(ptr %v0, ptr %v1, ptr %v2, ptr %t127, i64 %t128, ptr %t129, i32 %t130, %"compiler/source:Span" %t131, i64 %t132, i64 0)
  store ptr %t133, ptr %l74
  br label %bb34
bb34:
  %t134 = load ptr, ptr %l74, !tbaa !29
  store ptr %t134, ptr %l14, !tbaa !29
  %t135 = load ptr, ptr %l14, !tbaa !29
  %t137 = icmp eq ptr %t135, null
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb35, label %bb36
bb35:
  %t141 = load ptr, ptr %l14, !tbaa !29
  store ptr %t141, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  br label %bb43
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_5e7ac483298c689c_15fc6611344e0300)
  unreachable
bb43:
  br label %bb44
bb44:
  %t144 = load i64, ptr %l7, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l7, !tbaa !24
  br label %bb4
bb45:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBody(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l13 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l14 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l15 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l16 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l17 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l18 = alloca i64
  %l19 = alloca ptr
  %l21 = alloca ptr
  %l29 = alloca i64
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca i32
  %l39 = alloca i1
  %l41 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca ptr
  %l48 = alloca { i64, [2 x i64] }
  %l53 = alloca i32
  %l56 = alloca i64
  %l66 = alloca ptr
  %l67 = alloca ptr
  %l68 = alloca i64
  %l73 = alloca %"compiler/generic:Context"
  %l75 = alloca %"compiler/generic:Context"
  %l79 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l80 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l82 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l83 = alloca i32
  %l85 = alloca i1
  %l92 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l93 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l95 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l96 = alloca i32
  %l98 = alloca i1
  %l104 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l105 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l107 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l108 = alloca i32
  %l110 = alloca i1
  %l118 = alloca ptr
  %l121 = alloca i32
  %l124 = alloca i64
  %l125 = alloca ptr
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l141 = alloca ptr
  %l142 = alloca ptr
  %l145 = alloca ptr
  %l148 = alloca i32
  %l149 = alloca i32
  %l158 = alloca ptr
  %l159 = alloca ptr
  %l163 = alloca { i64, ptr }
  %l164 = alloca %"compiler/typed:Block"
  %l171 = alloca i64
  %l174 = alloca i1
  %l177 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t57 = alloca { i64, [2 x i64] }, align 8
  %t117 = alloca %"compiler/generic:Context", align 8
  %t383 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l21
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l21, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 4
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l5, !tbaa !29
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t23 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l29
  br label %bb2
bb2:
  %t24 = load i64, ptr %l29, !tbaa !24
  store i64 %t24, ptr %l6, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 143
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t27)
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t34 = call { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonlyFixed(ptr %v0, ptr %v1, ptr %s0, ptr %t29, ptr %t30)
  %t35 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t34, 1
  %t36 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t34, 0
  store i32 %t36, ptr %l37
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %bb5, label %ok.38, !prof !99
ok.38:
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %l36
  br label %bb4
bb4:
  %t40 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %s0, ptr %l36)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l41
  br label %bb7
bb5:
  %t41 = load i32, ptr %l37, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  store i1 %t44, ptr %l39, !tbaa !21
  br label %bb6
bb6:
  %t45 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t45, ptr %l42
  br label %bb8
bb7:
  %t46 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t46, ptr %l32
  br label %bb9
bb8:
  %t47 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t47, ptr %l32
  br label %bb9
bb9:
  %t48 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t48, ptr %l7
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t49)
  store %"compiler/source:Span" %t51, ptr %l44
  br label %bb10
bb10:
  %t52 = load %"compiler/source:Span", ptr %l44
  store %"compiler/source:Span" %t52, ptr %l8
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l45, !tbaa !29
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t56 = load i32, ptr %t55, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 0
  store i64 7, ptr %t58
  %t60 = insertvalue { i64, i32 } undef, i64 %t54, 0
  %t62 = insertvalue { i64, i32 } %t60, i32 %t56, 1
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 1
  store { i64, i32 } %t62, ptr %t63
  %t64 = load { i64, [2 x i64] }, ptr %t57
  store { i64, [2 x i64] } %t64, ptr %l48
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l2, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t70, i32 0, i32 %t71, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t74, ptr %l53
  br label %bb11
bb11:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t76 = load %"compiler/source:Span", ptr %l8
  %t77 = load ptr, ptr %l45, !tbaa !29
  %t78 = load { i64, [2 x i64] }, ptr %l48
  %t79 = load i32, ptr %l53, !tbaa !23
  %t82 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t77, { i64, [2 x i64] } %t78, i32 %t79, i64 %t75, %"compiler/source:Span" %t76)
  store i64 %t82, ptr %l56
  br label %bb12
bb12:
  %t83 = load i64, ptr %l56, !tbaa !24
  store i64 %t83, ptr %l9, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 19
  %t87 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t86, i64 %t87, i64 1)
  br label %bb13
bb13:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"compiler/check:frame", ptr %t90, i32 0, i32 0
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l10, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l4, !tbaa !24
  %t98 = load i32, ptr %l2, !tbaa !23
  %t103 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t95, i64 %t96, i64 %t97, i32 %t98, i32 0)
  store ptr %t103, ptr %l66
  br label %bb14
bb14:
  %t104 = load ptr, ptr %l66, !tbaa !29
  store ptr %t104, ptr %l11, !tbaa !29
  %t105 = load ptr, ptr %l11, !tbaa !29
  store ptr %t105, ptr %l67, !tbaa !29
  %t106 = ptrtoint ptr %v0 to i64
  store i64 %t106, ptr %l68, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t107, label %bb15, label %bb16
bb15:
  %t109 = call ptr @__olang_region_make(ptr %v0)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l68, !tbaa !24
  br label %bb16
bb16:
  %t111 = load i64, ptr %l4, !tbaa !24
  %t112 = load ptr, ptr %l3, !tbaa !29
  %t114 = getelementptr %"compiler/check:frame", ptr %t112, i32 0, i32 4
  %t115 = getelementptr %"compiler/generic:Context", ptr %t114, i32 0, i32 1
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = load i64, ptr %l68
  %t119 = inttoptr i64 %t118 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t117, ptr %t119, i64 %t111, i64 %t116)
  call void @llvm.memmove.p0.p0.i64(ptr %l73, ptr %t117, i64 160, i1 false)
  br label %bb17
bb17:
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t122, label %bb18, label %bb19
bb18:
  %t124 = load i64, ptr %l68
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = getelementptr %"compiler/generic:Context", ptr %l73, i32 0, i32 3
  %t127 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t126, i32 0, i32 2
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr null
  %t133 = getelementptr %"compiler/generic:Context", ptr %l73, i32 0, i32 3
  %t134 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t133, i32 0, i32 1
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = icmp ne ptr %t137, null
  %t139 = select i1 %t138, ptr %t137, ptr %t132
  %t140 = getelementptr %"compiler/generic:Context", ptr %l73, i32 0, i32 3
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t140, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr %t139
  %t147 = getelementptr %"compiler/generic:Context", ptr %l73, i32 0, i32 2
  %t148 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t147, i32 0, i32 2
  %t149 = load { i64, ptr }, ptr %t148
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = call ptr @__olang_region_or(ptr %t150, ptr null)
  %t152 = icmp ne ptr %t151, null
  %t153 = select i1 %t152, ptr %t151, ptr %t146
  %t154 = getelementptr %"compiler/generic:Context", ptr %l73, i32 0, i32 2
  %t155 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t154, i32 0, i32 1
  %t156 = load { i64, ptr }, ptr %t155
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = call ptr @__olang_region_or(ptr %t157, ptr null)
  %t159 = icmp ne ptr %t158, null
  %t160 = select i1 %t159, ptr %t158, ptr %t153
  %t161 = getelementptr %"compiler/generic:Context", ptr %l73, i32 0, i32 2
  %t162 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t161, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = call ptr @__olang_region_or(ptr %t164, ptr null)
  %t166 = icmp ne ptr %t165, null
  %t167 = select i1 %t166, ptr %t165, ptr %t160
  %t168 = icmp eq ptr %t167, %t125
  call void @__olang_region_settle(ptr %t125, i1 %t168)
  br label %bb19
bb19:
  %t169 = load ptr, ptr %l67, !tbaa !29
  %t170 = getelementptr %"compiler/check:frame", ptr %t169, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t170, i64 160, i1 false)
  %t171 = load ptr, ptr %l67, !tbaa !29
  %t172 = getelementptr %"compiler/check:frame", ptr %t171, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t172, ptr %l73, i64 160, i1 false)
  %t173 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t173, label %bb20, label %bb21
bb20:
  %t175 = getelementptr %"compiler/generic:Context", ptr %l75, i32 0, i32 3
  %t176 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t175, i32 0, i32 2
  %t177 = load { i64, ptr }, ptr %t176
  %t178 = extractvalue { i64, ptr } %t177, 1
  %t179 = call ptr @__olang_region_or(ptr %t178, ptr null)
  %t180 = icmp ne ptr %t179, null
  %t181 = select i1 %t180, ptr %t179, ptr null
  %t182 = getelementptr %"compiler/generic:Context", ptr %l75, i32 0, i32 3
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t182, i32 0, i32 1
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr %t181
  %t189 = getelementptr %"compiler/generic:Context", ptr %l75, i32 0, i32 3
  %t190 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t189, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = icmp ne ptr %t193, null
  %t195 = select i1 %t194, ptr %t193, ptr %t188
  %t196 = getelementptr %"compiler/generic:Context", ptr %l75, i32 0, i32 2
  %t197 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t196, i32 0, i32 2
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = icmp ne ptr %t200, null
  %t202 = select i1 %t201, ptr %t200, ptr %t195
  %t203 = getelementptr %"compiler/generic:Context", ptr %l75, i32 0, i32 2
  %t204 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t203, i32 0, i32 1
  %t205 = load { i64, ptr }, ptr %t204
  %t206 = extractvalue { i64, ptr } %t205, 1
  %t207 = call ptr @__olang_region_or(ptr %t206, ptr null)
  %t208 = icmp ne ptr %t207, null
  %t209 = select i1 %t208, ptr %t207, ptr %t202
  %t210 = getelementptr %"compiler/generic:Context", ptr %l75, i32 0, i32 2
  %t211 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t210, i32 0, i32 0
  %t212 = load { i64, ptr }, ptr %t211
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = call ptr @__olang_region_or(ptr %t213, ptr null)
  %t215 = icmp ne ptr %t214, null
  %t216 = select i1 %t215, ptr %t214, ptr %t209
  call void @__olang_region_drop(ptr %t216)
  store %"compiler/generic:Context" zeroinitializer, ptr %l75
  br label %bb21
bb21:
  %t217 = load ptr, ptr %l3, !tbaa !29
  %t219 = getelementptr %"compiler/check:frame", ptr %t217, i32 0, i32 4
  %t220 = getelementptr %"compiler/generic:Context", ptr %t219, i32 0, i32 2
  %t222 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t220)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t222, ptr %l79
  br label %bb22
bb22:
  %t223 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l79
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t223, ptr %l12
  br label %bb23
bb23:
  %t225 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l12)
  %t226 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t225, 1
  %t227 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t225, 0
  store i32 %t227, ptr %l83
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb25, label %ok.229, !prof !99
ok.229:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t226, ptr %l82
  br label %bb24
bb24:
  %t230 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l82
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t230, ptr %l80
  br label %bb27
bb25:
  %t231 = load i32, ptr %l83, !tbaa !23
  %t232 = ashr i32 %t231, 16
  %t234 = icmp eq i32 %t232, 1
  store i1 %t234, ptr %l85, !tbaa !21
  br label %bb26
bb26:
  br label %bb30
bb27:
  %t235 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l80
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t235, ptr %l13
  %t236 = load ptr, ptr %l11, !tbaa !29
  %t238 = getelementptr %"compiler/check:frame", ptr %t236, i32 0, i32 4
  %t239 = getelementptr %"compiler/generic:Context", ptr %t238, i32 0, i32 2
  %t240 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l13, i32 0, i32 0
  %t241 = load i32, ptr %t240, !tbaa !23
  %t242 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l13, i32 0, i32 1
  %t243 = load i32, ptr %t242, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t239, i32 %t241, i32 %t243)
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb23
bb30:
  %t247 = load ptr, ptr %l3, !tbaa !29
  %t249 = getelementptr %"compiler/check:frame", ptr %t247, i32 0, i32 4
  %t250 = getelementptr %"compiler/generic:Context", ptr %t249, i32 0, i32 3
  %t252 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t250)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t252, ptr %l92
  br label %bb31
bb31:
  %t253 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l92
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t253, ptr %l14
  br label %bb32
bb32:
  %t255 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l14)
  %t256 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t255, 1
  %t257 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t255, 0
  store i32 %t257, ptr %l96
  %t258 = icmp ne i32 %t257, 0
  br i1 %t258, label %bb34, label %ok.259, !prof !99
ok.259:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t256, ptr %l95
  br label %bb33
bb33:
  %t260 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l95
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t260, ptr %l93
  br label %bb36
bb34:
  %t261 = load i32, ptr %l96, !tbaa !23
  %t262 = ashr i32 %t261, 16
  %t264 = icmp eq i32 %t262, 1
  store i1 %t264, ptr %l98, !tbaa !21
  br label %bb35
bb35:
  br label %bb39
bb36:
  %t265 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l93
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t265, ptr %l15
  %t266 = load ptr, ptr %l11, !tbaa !29
  %t268 = getelementptr %"compiler/check:frame", ptr %t266, i32 0, i32 4
  %t269 = getelementptr %"compiler/generic:Context", ptr %t268, i32 0, i32 3
  %t270 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l15, i32 0, i32 0
  %t271 = load i32, ptr %t270, !tbaa !23
  %t272 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l15, i32 0, i32 1
  %t273 = load i32, ptr %t272, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t269, i32 %t271, i32 %t273)
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb32
bb39:
  %t278 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %s0, ptr %s0, ptr %l7)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t278, ptr %l104
  br label %bb40
bb40:
  %t279 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l104
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t279, ptr %l16
  br label %bb41
bb41:
  %t281 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %s0, ptr %l16)
  %t282 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t281, 1
  %t283 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t281, 0
  store i32 %t283, ptr %l108
  %t284 = icmp ne i32 %t283, 0
  br i1 %t284, label %bb43, label %ok.285, !prof !99
ok.285:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t282, ptr %l107
  br label %bb42
bb42:
  %t286 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l107
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t286, ptr %l105
  br label %bb45
bb43:
  %t287 = load i32, ptr %l108, !tbaa !23
  %t288 = ashr i32 %t287, 16
  %t290 = icmp eq i32 %t288, 1
  store i1 %t290, ptr %l110, !tbaa !21
  br label %bb44
bb44:
  br label %bb48
bb45:
  %t291 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l105
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t291, ptr %l17
  %t292 = load ptr, ptr %l11, !tbaa !29
  %t294 = getelementptr %"compiler/check:frame", ptr %t292, i32 0, i32 44
  %t295 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l17, i32 0, i32 0
  %t296 = load i32, ptr %t295, !tbaa !23
  %t297 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l17, i32 0, i32 1
  %t298 = load i64, ptr %t297, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t294, i32 %t296, i64 %t298)
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb41
bb48:
  %t302 = load ptr, ptr %l11, !tbaa !29
  %t303 = load i64, ptr %l10, !tbaa !24
  %t306 = getelementptr %"compiler/check:frame", ptr %t302, i32 0, i32 45
  store i64 %t303, ptr %t306, !tbaa !24
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t307)
  store ptr %t309, ptr %l118
  br label %bb49
bb49:
  %t310 = load %"compiler/source:Span", ptr %l8
  %t311 = load ptr, ptr %l118, !tbaa !29
  %t314 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t311, i32 -1, i32 0, %"compiler/source:Span" %t310)
  store i32 %t314, ptr %l121
  br label %bb50
bb50:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/check:Checker", ptr %t315, i32 0, i32 37
  %t319 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t317)
  store i64 %t319, ptr %l124
  br label %bb51
bb51:
  %t320 = load i64, ptr %l124, !tbaa !24
  store i64 %t320, ptr %l18, !tbaa !24
  %t321 = load ptr, ptr %l0, !tbaa !29
  store ptr %t321, ptr %l125, !tbaa !29
  %t322 = load ptr, ptr %l125, !tbaa !29
  %t323 = getelementptr %"compiler/check:Checker", ptr %t322, i32 0, i32 135
  %t324 = load i64, ptr %t323, !tbaa !24
  %t326 = add i64 %t324, 1
  %t328 = load ptr, ptr %l125, !tbaa !29
  %t329 = getelementptr %"compiler/check:Checker", ptr %t328, i32 0, i32 135
  store i64 %t326, ptr %t329, !tbaa !24
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load ptr, ptr %l1, !tbaa !29
  %t332 = load i32, ptr %l2, !tbaa !23
  %t336 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t330, ptr %t331, i32 %t332)
  store ptr %t336, ptr %l131
  br label %bb52
bb52:
  %t337 = load ptr, ptr %l131, !tbaa !29
  store ptr %t337, ptr %l19, !tbaa !29
  %t338 = load ptr, ptr %l0, !tbaa !29
  store ptr %t338, ptr %l132, !tbaa !29
  %t339 = load ptr, ptr %l132, !tbaa !29
  %t340 = getelementptr %"compiler/check:Checker", ptr %t339, i32 0, i32 135
  %t341 = load i64, ptr %t340, !tbaa !24
  %t343 = sub i64 %t341, 1
  %t345 = load ptr, ptr %l132, !tbaa !29
  %t346 = getelementptr %"compiler/check:Checker", ptr %t345, i32 0, i32 135
  store i64 %t343, ptr %t346, !tbaa !24
  %t347 = load i32, ptr %l2, !tbaa !23
  %t348 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t351 = icmp eq i32 %t347, %t348
  br i1 %t351, label %bb53, label %bb54
bb53:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = getelementptr %"compiler/check:Checker", ptr %t353, i32 0, i32 14
  %t356 = load i64, ptr %l9, !tbaa !24
  %t359 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t355, i64 %t356)
  store ptr %t359, ptr %l141
  br label %bb55
bb54:
  br label %bb58
bb55:
  %t360 = load ptr, ptr %l141, !tbaa !29
  store ptr %t360, ptr %l142, !tbaa !29
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/check:Checker", ptr %t361, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !29
  %t366 = getelementptr %"compiler/generic:Program", ptr %t364, i32 0, i32 2
  store ptr %t366, ptr %l145, !tbaa !29
  %t367 = load ptr, ptr %l19, !tbaa !29
  %t370 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t367)
  store i32 %t370, ptr %l148
  br label %bb56
bb56:
  %t371 = load ptr, ptr %l145, !tbaa !29
  %t372 = load i32, ptr %l148, !tbaa !23
  %t373 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t371, i32 0, i32 %t372, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t373, ptr %l149
  br label %bb57
bb57:
  %t374 = load i32, ptr %l149, !tbaa !23
  %t375 = load ptr, ptr %l142, !tbaa !29
  %t376 = getelementptr %"compiler/typed:Body", ptr %t375, i32 0, i32 2
  store i32 %t374, ptr %t376, !tbaa !23
  br label %bb58
bb58:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t377, i32 0, i32 37
  %t380 = load %"compiler/source:Span", ptr %l8
  %t381 = load ptr, ptr %l19, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t383
  %t384 = getelementptr { i64, [3 x i64] }, ptr %t383, i32 0, i32 0
  store i64 6, ptr %t384
  %t386 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t380, 0
  %t388 = insertvalue { %"compiler/source:Span", ptr } %t386, ptr %t381, 1
  %t389 = getelementptr { i64, [3 x i64] }, ptr %t383, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t388, ptr %t389
  %t390 = load { i64, [3 x i64] }, ptr %t383
  %t392 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t390, ptr %t392
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t379, ptr %t392)
  br label %bb59
bb59:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t395)
  store ptr %t397, ptr %l158
  br label %bb60
bb60:
  %t398 = load ptr, ptr %l158, !tbaa !29
  store ptr %t398, ptr %l159, !tbaa !29
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/check:Checker", ptr %t399, i32 0, i32 37
  %t402 = load i64, ptr %l18, !tbaa !24
  %t405 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t401, i64 %t402)
  store { i64, ptr } %t405, ptr %l163
  br label %bb61
bb61:
  %t406 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t407 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t406)
  store %"compiler/typed:Block" %t407, ptr %l164
  br label %bb62
bb62:
  %t408 = load %"compiler/typed:Block", ptr %l164
  %t409 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t408, ptr %t409
  %t411 = load ptr, ptr %l159, !tbaa !29
  %t412 = getelementptr %"compiler/typed:Body", ptr %t411, i32 0, i32 11
  store ptr %t409, ptr %t412, !tbaa !29
  %t413 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t413)
  br label %bb63
bb63:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/check:Checker", ptr %t415, i32 0, i32 19
  %t418 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t417, i64 %t418, i64 2)
  br label %bb64
bb64:
  %t421 = load ptr, ptr %l5, !tbaa !29
  %t423 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t421)
  store i64 %t423, ptr %l171
  br label %bb65
bb65:
  %t424 = load i64, ptr %l6, !tbaa !24
  %t425 = load i64, ptr %l171, !tbaa !24
  %t427 = icmp sgt i64 %t425, %t424
  br i1 %t427, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb69
bb67:
  %t429 = load ptr, ptr %l19, !tbaa !29
  %t432 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t429)
  store i32 %t432, ptr %l177
  br label %bb68
bb68:
  %t433 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t434 = load i32, ptr %l177, !tbaa !23
  %t436 = icmp eq i32 %t434, %t433
  store i1 %t436, ptr %l174, !tbaa !21
  br label %bb69
bb69:
  %t438 = load i1, ptr %l174, !tbaa !21
  br i1 %t438, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t440 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t440, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwrapNull(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %lp15 = alloca ptr
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca ptr
  %l43 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca i64
  %l56 = alloca ptr
  %l60 = alloca i32
  %l64 = alloca { i64, ptr }
  %l65 = alloca %"compiler/typed:Block"
  %l67 = alloca ptr
  %l68 = alloca %"compiler/source:Span"
  %l71 = alloca %"compiler/typed:If"
  %l75 = alloca %"compiler/source:Span"
  %l80 = alloca i32
  %l84 = alloca { i64, ptr }
  %l85 = alloca %"compiler/source:Span"
  %l90 = alloca i32
  %l95 = alloca %"compiler/typed:Seq"
  %l101 = alloca i64
  %l107 = alloca i64
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l122 = alloca i32
  %l123 = alloca i32
  %l127 = alloca ptr
  %l131 = alloca ptr
  %l133 = alloca ptr
  %l136 = alloca i64
  %l144 = alloca ptr
  %l148 = alloca i32
  %l152 = alloca { i64, ptr }
  %l153 = alloca %"compiler/typed:Block"
  %l155 = alloca ptr
  %l156 = alloca %"compiler/source:Span"
  %l159 = alloca %"compiler/typed:If"
  %l163 = alloca ptr
  %l164 = alloca %"compiler/source:Span"
  %l165 = alloca %"compiler/source:Span"
  %l170 = alloca i32
  %l176 = alloca ptr
  %l177 = alloca %"compiler/source:Span"
  %l182 = alloca i32
  %l186 = alloca { i64, ptr }
  %l189 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t73 = alloca { i64, [3 x i64] }, align 8
  %t120 = alloca { i64, [3 x i64] }, align 8
  %t163 = alloca { i64, [5 x i64] }, align 8
  %t182 = alloca { i64, [5 x i64] }, align 8
  %t204 = alloca { i64, [1 x i64] }, align 8
  %t229 = alloca { i64, [3 x i64] }, align 8
  %t279 = alloca { i64, [3 x i64] }, align 8
  %t326 = alloca { i64, [3 x i64] }, align 8
  %t355 = alloca { i64, [4 x i64] }, align 8
  %t397 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l19
  br label %bb1
bb1:
  %t5 = load i32, ptr %l19, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l4
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l5, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t29, i32 0, i32 3
  %t31 = load i32, ptr %t30
  store i32 %t31, ptr %l6, !tbaa !23
  br label %bb6
bb5:
  br label %bb25
bb6:
  %t33 = load ptr, ptr %l5, !tbaa !29
  %t35 = call i1 @compiler_2fcheck_2epurePlace(ptr %v1, ptr %t33)
  store i1 %t35, ptr %l31
  br label %bb7
bb7:
  %t36 = load i1, ptr %l31, !tbaa !21
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 37
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l34
  br label %bb10
bb9:
  br label %bb24
bb10:
  %t42 = load i64, ptr %l34, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l35, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t44, ptr %l36
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t45, ptr %l37, !tbaa !23
  store i32 19, ptr %l38
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l39, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l1
  %t49 = load i32, ptr %l3, !tbaa !23
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t47, %"compiler/source:Span" %t48, i32 %t49)
  store ptr %t53, ptr %l43
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l43, !tbaa !29
  %t55 = load ptr, ptr %l35, !tbaa !29
  %t56 = load %"compiler/source:Span", ptr %l36
  %t57 = load i32, ptr %l37, !tbaa !23
  %t58 = load i32, ptr %l38, !range !{i32 0, i32 52}
  %t59 = load ptr, ptr %l39, !tbaa !29
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t55, %"compiler/source:Span" %t56, i32 %t57, i32 %t58, ptr %t59, ptr %t54)
  store ptr %t61, ptr %l45
  br label %bb12
bb12:
  %t62 = load ptr, ptr %l45, !tbaa !29
  store ptr %t62, ptr %l8, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 37
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l48
  br label %bb13
bb13:
  %t68 = load i64, ptr %l48, !tbaa !24
  store i64 %t68, ptr %l9, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 37
  %t72 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [3 x i64] }, ptr %t73, i32 0, i32 0
  store i64 9, ptr %t74
  %t76 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t72, 0
  %t78 = insertvalue { %"compiler/source:Span", i32, ptr } %t76, i32 1, 1
  %t79 = insertvalue { %"compiler/source:Span", i32, ptr } %t78, ptr null, 2
  %t80 = getelementptr { i64, [3 x i64] }, ptr %t73, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t79, ptr %t80
  %t81 = load { i64, [3 x i64] }, ptr %t73
  %t83 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t81, ptr %t83
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t71, ptr %t83)
  br label %bb14
bb14:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t86)
  store ptr %t88, ptr %l56
  br label %bb15
bb15:
  %t89 = load ptr, ptr %l56, !tbaa !29
  %t91 = getelementptr %"compiler/check:frame", ptr %t89, i32 0, i32 7
  %t92 = load i64, ptr %t91, !tbaa !24
  %t94 = trunc i64 %t92 to i32
  store i32 %t94, ptr %l60, !tbaa !23
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 37
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t98, i64 %t99)
  store { i64, ptr } %t102, ptr %l64
  br label %bb16
bb16:
  %t103 = load i32, ptr %l60, !tbaa !23
  %t104 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t105 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 %t103, { i64, ptr } %t104)
  store %"compiler/typed:Block" %t105, ptr %l65
  br label %bb17
bb17:
  %t106 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t106, ptr %lp10
  %t107 = load %"compiler/typed:Block", ptr %l65
  %t108 = load ptr, ptr %lp10
  store %"compiler/typed:Block" %t107, ptr %t108
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 37
  store ptr %t111, ptr %l67, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t112, ptr %l68
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t114 = load ptr, ptr %lp10
  %t117 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v0, ptr %t113, ptr %t114, ptr null)
  store %"compiler/typed:If" %t117, ptr %l71
  br label %bb18
bb18:
  %t118 = load %"compiler/typed:If", ptr %l71
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t118, ptr %t119
  store { i64, [3 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 0
  store i64 3, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l68
  %t123 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t122, 0
  %t125 = insertvalue { %"compiler/source:Span", ptr } %t123, ptr %t119, 1
  %t126 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t125, ptr %t126
  %t127 = load { i64, [3 x i64] }, ptr %t120
  %t129 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t127, ptr %t129
  %t130 = load ptr, ptr %l67, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t130, ptr %t129)
  br label %bb19
bb19:
  %t132 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t132, ptr %l75
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %l3, !tbaa !23
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l80
  br label %bb20
bb20:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 37
  %t146 = load i64, ptr %l7, !tbaa !24
  %t149 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t145, i64 %t146)
  store { i64, ptr } %t149, ptr %l84
  br label %bb21
bb21:
  %t150 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t150, ptr %l85
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  %t157 = load i32, ptr %l3, !tbaa !23
  %t160 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t156, i32 %t157)
  store i32 %t160, ptr %l90
  br label %bb22
bb22:
  %t161 = load ptr, ptr %l5, !tbaa !29
  %t162 = load i32, ptr %l6, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t163
  %t164 = getelementptr { i64, [5 x i64] }, ptr %t163, i32 0, i32 0
  store i64 2, ptr %t164
  %t165 = load %"compiler/source:Span", ptr %l85
  %t166 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t165, 0
  %t167 = load i32, ptr %l90, !tbaa !23
  %t168 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t166, i32 %t167, 1
  %t170 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t168, ptr %t161, 2
  %t172 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t170, i32 %t162, 3
  %t173 = getelementptr { i64, [5 x i64] }, ptr %t163, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t172, ptr %t173
  %t174 = load { i64, [5 x i64] }, ptr %t163
  %t176 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t174, ptr %t176
  %t177 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t179 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t177, ptr %t176, i1 false)
  store %"compiler/typed:Seq" %t179, ptr %l95
  br label %bb23
bb23:
  %t180 = load %"compiler/typed:Seq", ptr %l95
  %t181 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t180, ptr %t181
  store { i64, [5 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 0
  store i64 12, ptr %t183
  %t184 = load %"compiler/source:Span", ptr %l75
  %t185 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t184, 0
  %t186 = load i32, ptr %l80, !tbaa !23
  %t187 = insertvalue { %"compiler/source:Span", i32, ptr } %t185, i32 %t186, 1
  %t189 = insertvalue { %"compiler/source:Span", i32, ptr } %t187, ptr %t181, 2
  %t190 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t189, ptr %t190
  %t191 = load { i64, [5 x i64] }, ptr %t182
  %t193 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t191, ptr %t193
  store ptr %t193, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_8302d182975d1c39_f0b10209f7a6052d)
  unreachable
bb30:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 37
  %t199 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t197)
  store i64 %t199, ptr %l101
  br label %bb31
bb31:
  %t200 = load i64, ptr %l101, !tbaa !24
  store i64 %t200, ptr %l11, !tbaa !24
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load %"compiler/source:Span", ptr %l1
  %t203 = load i32, ptr %l3, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t204
  %t205 = getelementptr { i64, [1 x i64] }, ptr %t204, i32 0, i32 0
  store i64 4, ptr %t205
  %t206 = load { i64, [1 x i64] }, ptr %t204
  %t212 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t201, i32 0, %"compiler/source:Span" %t202, i32 %t203, i32 1, { i64, [1 x i64] } %t206)
  store i64 %t212, ptr %l107
  br label %bb32
bb32:
  %t213 = load i64, ptr %l107, !tbaa !24
  store i64 %t213, ptr %l12, !tbaa !24
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i64, ptr %l12, !tbaa !24
  %t216 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %t214, i64 %t215, ptr %t216)
  br label %bb33
bb33:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 37
  %t223 = load %"compiler/source:Span", ptr %l1
  %t224 = load i64, ptr %l12, !tbaa !24
  %t226 = trunc i64 %t224 to i32
  %t228 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [3 x i64] }, ptr %t229, i32 0, i32 0
  store i64 0, ptr %t230
  %t232 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t223, 0
  %t234 = insertvalue { %"compiler/source:Span", i32, ptr } %t232, i32 %t226, 1
  %t236 = insertvalue { %"compiler/source:Span", i32, ptr } %t234, ptr %t228, 2
  %t237 = getelementptr { i64, [3 x i64] }, ptr %t229, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t236, ptr %t237
  %t238 = load { i64, [3 x i64] }, ptr %t229
  %t240 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t238, ptr %t240
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t222, ptr %t240)
  br label %bb34
bb34:
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l120, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t244, ptr %l121
  %t245 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t245, ptr %l122, !tbaa !23
  store i32 19, ptr %l123
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load %"compiler/source:Span", ptr %l1
  %t248 = load i64, ptr %l12, !tbaa !24
  %t252 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t246, %"compiler/source:Span" %t247, i64 %t248)
  store ptr %t252, ptr %l127
  br label %bb35
bb35:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load %"compiler/source:Span", ptr %l1
  %t255 = load i32, ptr %l3, !tbaa !23
  %t259 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t253, %"compiler/source:Span" %t254, i32 %t255)
  store ptr %t259, ptr %l131
  br label %bb36
bb36:
  %t260 = load ptr, ptr %l131, !tbaa !29
  %t261 = load ptr, ptr %l120, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l121
  %t263 = load i32, ptr %l122, !tbaa !23
  %t264 = load i32, ptr %l123, !range !{i32 0, i32 52}
  %t265 = load ptr, ptr %l127, !tbaa !29
  %t267 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t261, %"compiler/source:Span" %t262, i32 %t263, i32 %t264, ptr %t265, ptr %t260)
  store ptr %t267, ptr %l133
  br label %bb37
bb37:
  %t268 = load ptr, ptr %l133, !tbaa !29
  store ptr %t268, ptr %l13, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 37
  %t273 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t271)
  store i64 %t273, ptr %l136
  br label %bb38
bb38:
  %t274 = load i64, ptr %l136, !tbaa !24
  store i64 %t274, ptr %l14, !tbaa !24
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/check:Checker", ptr %t275, i32 0, i32 37
  %t278 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t279
  %t280 = getelementptr { i64, [3 x i64] }, ptr %t279, i32 0, i32 0
  store i64 9, ptr %t280
  %t282 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t278, 0
  %t284 = insertvalue { %"compiler/source:Span", i32, ptr } %t282, i32 1, 1
  %t285 = insertvalue { %"compiler/source:Span", i32, ptr } %t284, ptr null, 2
  %t286 = getelementptr { i64, [3 x i64] }, ptr %t279, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t285, ptr %t286
  %t287 = load { i64, [3 x i64] }, ptr %t279
  %t289 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t287, ptr %t289
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t277, ptr %t289)
  br label %bb39
bb39:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t292)
  store ptr %t294, ptr %l144
  br label %bb40
bb40:
  %t295 = load ptr, ptr %l144, !tbaa !29
  %t297 = getelementptr %"compiler/check:frame", ptr %t295, i32 0, i32 7
  %t298 = load i64, ptr %t297, !tbaa !24
  %t300 = trunc i64 %t298 to i32
  store i32 %t300, ptr %l148, !tbaa !23
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/check:Checker", ptr %t302, i32 0, i32 37
  %t305 = load i64, ptr %l14, !tbaa !24
  %t308 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t304, i64 %t305)
  store { i64, ptr } %t308, ptr %l152
  br label %bb41
bb41:
  %t309 = load i32, ptr %l148, !tbaa !23
  %t310 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t311 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 %t309, { i64, ptr } %t310)
  store %"compiler/typed:Block" %t311, ptr %l153
  br label %bb42
bb42:
  %t312 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t312, ptr %lp15
  %t313 = load %"compiler/typed:Block", ptr %l153
  %t314 = load ptr, ptr %lp15
  store %"compiler/typed:Block" %t313, ptr %t314
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/check:Checker", ptr %t315, i32 0, i32 37
  store ptr %t317, ptr %l155, !tbaa !29
  %t318 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t318, ptr %l156
  %t319 = load ptr, ptr %l13, !tbaa !29
  %t320 = load ptr, ptr %lp15
  %t323 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v0, ptr %t319, ptr %t320, ptr null)
  store %"compiler/typed:If" %t323, ptr %l159
  br label %bb43
bb43:
  %t324 = load %"compiler/typed:If", ptr %l159
  %t325 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t324, ptr %t325
  store { i64, [3 x i64] } zeroinitializer, ptr %t326
  %t327 = getelementptr { i64, [3 x i64] }, ptr %t326, i32 0, i32 0
  store i64 3, ptr %t327
  %t328 = load %"compiler/source:Span", ptr %l156
  %t329 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t328, 0
  %t331 = insertvalue { %"compiler/source:Span", ptr } %t329, ptr %t325, 1
  %t332 = getelementptr { i64, [3 x i64] }, ptr %t326, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t331, ptr %t332
  %t333 = load { i64, [3 x i64] }, ptr %t326
  %t335 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t333, ptr %t335
  %t336 = load ptr, ptr %l155, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t336, ptr %t335)
  br label %bb44
bb44:
  %t338 = load ptr, ptr %l0, !tbaa !29
  store ptr %t338, ptr %l163, !tbaa !29
  %t339 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t339, ptr %l164
  %t340 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t340, ptr %l165
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/check:Checker", ptr %t341, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !29
  %t346 = getelementptr %"compiler/generic:Program", ptr %t344, i32 0, i32 2
  %t347 = load i32, ptr %l3, !tbaa !23
  %t350 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t346, i32 %t347)
  store i32 %t350, ptr %l170
  br label %bb45
bb45:
  %t351 = load i64, ptr %l12, !tbaa !24
  %t353 = trunc i64 %t351 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t355
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 0
  store i64 0, ptr %t356
  %t357 = load %"compiler/source:Span", ptr %l165
  %t358 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t357, 0
  %t359 = load i32, ptr %l170, !tbaa !23
  %t360 = insertvalue { %"compiler/source:Span", i32, i32 } %t358, i32 %t359, 1
  %t362 = insertvalue { %"compiler/source:Span", i32, i32 } %t360, i32 %t353, 2
  %t363 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t362, ptr %t363
  %t364 = load { i64, [4 x i64] }, ptr %t355
  %t366 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t364, ptr %t366
  %t367 = load ptr, ptr %l163, !tbaa !29
  %t368 = load %"compiler/source:Span", ptr %l164
  %t370 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t367, %"compiler/source:Span" %t368, ptr %t366)
  store ptr %t370, ptr %l176
  br label %bb46
bb46:
  %t371 = load ptr, ptr %l176, !tbaa !29
  store ptr %t371, ptr %l16, !tbaa !29
  %t372 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t372, ptr %l177
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/check:Checker", ptr %t373, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !29
  %t378 = getelementptr %"compiler/generic:Program", ptr %t376, i32 0, i32 2
  %t379 = load i32, ptr %l3, !tbaa !23
  %t382 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t378, i32 %t379)
  store i32 %t382, ptr %l182
  br label %bb47
bb47:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/check:Checker", ptr %t383, i32 0, i32 37
  %t386 = load i64, ptr %l11, !tbaa !24
  %t389 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t385, i64 %t386)
  store { i64, ptr } %t389, ptr %l186
  br label %bb48
bb48:
  %t390 = load ptr, ptr %l16, !tbaa !29
  %t392 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t394 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t392, ptr %t390, i1 false)
  store %"compiler/typed:Seq" %t394, ptr %l189
  br label %bb49
bb49:
  %t395 = load %"compiler/typed:Seq", ptr %l189
  %t396 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t395, ptr %t396
  store { i64, [5 x i64] } zeroinitializer, ptr %t397
  %t398 = getelementptr { i64, [5 x i64] }, ptr %t397, i32 0, i32 0
  store i64 12, ptr %t398
  %t399 = load %"compiler/source:Span", ptr %l177
  %t400 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t399, 0
  %t401 = load i32, ptr %l182, !tbaa !23
  %t402 = insertvalue { %"compiler/source:Span", i32, ptr } %t400, i32 %t401, 1
  %t404 = insertvalue { %"compiler/source:Span", i32, ptr } %t402, ptr %t396, 2
  %t405 = getelementptr { i64, [5 x i64] }, ptr %t397, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t404, ptr %t405
  %t406 = load { i64, [5 x i64] }, ptr %t397
  %t408 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t406, ptr %t408
  store ptr %t408, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i1
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l12
  br label %bb2
bb2:
  %t20 = load i1, ptr %l12, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %t21, i32 %t22)
  store { i64, ptr } %t25, ptr %l15
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t27, i32 %t28)
  store { i64, ptr } %t31, ptr %l18
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l19, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t36, i32 %t37)
  store { i64, ptr } %t40, ptr %l23
  br label %bb8
bb8:
  %t41 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t41, ptr %l24, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i32, ptr %t45, i64 %a2
  %t47 = load i32, ptr %t46, !tbaa !33
  %t48 = load ptr, ptr %l19, !tbaa !29
  %t50 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t48, i32 %t47)
  store { i64, ptr } %t50, ptr %l27
  br label %bb9
bb9:
  %t51 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t57 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = add i64 %t56, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t52, i64 %t53)
  %t62 = getelementptr i8, ptr %t61, i64 %t53
  call void @olang_textcopy(ptr %t62, ptr %t54, i64 %t55)
  %t63 = getelementptr i8, ptr %t62, i64 %t55
  call void @olang_textcopy(ptr %t63, ptr %t58, i64 %t59)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t61, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t65, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesImmut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = load i32, ptr %l6, !tbaa !23
  %t11 = icmp ne i32 %t9, %t8
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2eopNeed(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s0, i32 %t1)
  store { i64, ptr } %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t11 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t9)
  store { i64, ptr } %t11, ptr %l8
  br label %bb5
bb4:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l11, !tbaa !27
  %t13 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t15 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t13)
  store { i64, ptr } %t15, ptr %l13
  br label %bb7
bb5:
  %t16 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t17 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %s0, { i64, ptr } %t16)
  store { i64, ptr } %t17, ptr %l9
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t19, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l6, !tbaa !27
  br label %bb9
bb7:
  %t25 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t26 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %s0, { i64, ptr } %t25)
  store { i64, ptr } %t26, ptr %l14
  br label %bb8
bb8:
  %t27 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t33 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t28, i64 %t29)
  %t41 = getelementptr i8, ptr %t40, i64 %t29
  call void @olang_textcopy(ptr %t41, ptr %t30, i64 %t31)
  %t42 = getelementptr i8, ptr %t41, i64 %t31
  call void @olang_textcopy(ptr %t42, ptr %t34, i64 %t35)
  %t43 = getelementptr i8, ptr %t42, i64 %t35
  call void @olang_textcopy(ptr %t43, ptr %t37, i64 %t38)
  %t44 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t40, 1
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2eregisteredBefore(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:DropHolding", ptr %a0, i32 0, i32 0
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load i64, ptr %l15, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp eq i64 %t21, %a1
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp eq i64 %t28, %a2
  br i1 %t32, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2esetsName(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
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
  %l29 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca i1
  %rv = alloca i1
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
  %t37 = icmp eq i64 %t35, 8
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t47 = call i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %t45)
  store i32 %t47, ptr %l29
  br label %bb13
bb13:
  %t48 = load i32, ptr %l1, !tbaa !23
  %t49 = load i32, ptr %l29, !tbaa !23
  %t51 = icmp eq i32 %t49, %t48
  br i1 %t51, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb32
bb17:
  %t54 = load ptr, ptr %l5, !tbaa !29
  store ptr %t54, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t55 = load ptr, ptr %l33, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = load ptr, ptr %l33, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 11}
  %t61 = icmp eq i64 %t59, 7
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t62 = load i1, ptr %l34, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = getelementptr { i64, [8 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", ptr }, ptr %t65, i32 0, i32 1
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb27
bb22:
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t73, ptr %l41
  br label %bb23
bb23:
  %t74 = load i1, ptr %l41, !tbaa !21
  br i1 %t74, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_e2dfd8ce79efa5b1_a05c5e2f73a80d5d)
  unreachable
bb32:
  br label %bb33
bb33:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l3, !tbaa !24
  br label %bb4
bb34:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_3aAssertAsk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, { i64, ptr } %a6, { i64, [3 x i64] } %a7, { i64, ptr } %a8, i1 %a9, { i64, ptr } %a10, { i64, ptr } %a11, { i64, [3 x i64] } %a12) #0 {
entry:
  %l39 = alloca %"compiler/check:AssertAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t27 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 0
  store i64 %a0, ptr %t27, !tbaa !24
  %t29 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 1
  store i64 %a1, ptr %t29, !tbaa !24
  %t31 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 2
  store %"compiler/source:Span" %a2, ptr %t31
  %t33 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 3
  store %"compiler/source:Span" %a3, ptr %t33
  %t35 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 4
  store i64 %a4, ptr %t35, !tbaa !24
  %t37 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 5
  store i64 %a5, ptr %t37, !tbaa !24
  %t39 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 6
  store i1 %a9, ptr %t39, !tbaa !21
  %t41 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 7
  store { i64, ptr } %a10, ptr %t41, !tbaa !27
  %t43 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 8
  store { i64, ptr } %a11, ptr %t43, !tbaa !27
  %t45 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 9
  store { i64, [3 x i64] } %a12, ptr %t45
  %t47 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 10
  store { i64, ptr } %a6, ptr %t47, !tbaa !27
  %t49 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 11
  store { i64, [3 x i64] } %a7, ptr %t49
  %t51 = getelementptr %"compiler/check:AssertAsk", ptr %l39, i32 0, i32 12
  store { i64, ptr } %a8, ptr %t51, !tbaa !27
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l39, i64 184, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:narrowed" @compiler_2fcheck_3anarrowed_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5) #0 {
entry:
  %rv = alloca %"compiler/check:narrowed"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/check:narrowed" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/check:narrowed" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/check:narrowed" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/check:narrowed" %t18, i64 %a3, 3
  %t22 = insertvalue %"compiler/check:narrowed" %t20, i64 %a4, 4
  %t24 = insertvalue %"compiler/check:narrowed" %t22, i1 %a5, 5
  store %"compiler/check:narrowed" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:narrowed", ptr %rv
  ret %"compiler/check:narrowed" %rr
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
define internal i1 @olang_lambda_0(ptr %env, i32 %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i1
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
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrBefore(ptr %vc0, ptr %cv0, i32 %a0, i32 %a1)
  store i1 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i1, ptr %l6, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d1 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"a conversion of this kind" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d3 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'Narrow'" }>, align 8
@.d4 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'Narrow'" }>, align 8
@.d5 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"std/prelude/number" }>, align 8
@.d6 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"NumberError" }>, align 8
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Overflow" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare i64 @__olang_fmt_i64(ptr, i64)
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d11 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aroArg_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aroArg_2e5 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %a0)
@olang_loc_317fdf139725c543_9c9e0109f99156f7 = external constant [0 x i8]
declare { i64, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAttrsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHeld(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2farray_2eArray_3ccompiler_2ftypes_3aTypeId_3e_2eSort_3ccompiler_2ftypes_3aTypeId_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversionAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
@olang_loc_2d02cd2fcfc2423_ae8e71dd60838827 = external constant [0 x i8]
@olang_loc_4f661f5562a00322_e7c24924d50c1246 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c7b5cbd58e58cb02_20344cc1e983d9b6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecks(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elengthsMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsCover(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesIn(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ddeebe9155436d6a_19ee353760b572b6 = external constant [0 x i8]
@olang_loc_7406e676cee1d8f8_b07044052169e244 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtMatch(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchOnType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindCase(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecided(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunbindCase(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elenMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3, i32 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTakesNoArgs(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowNotNumber(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOwner(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowedWrite(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
@olang_loc_4d0d10dbd8c28898_8d57e58513238834 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorderModule(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_2063aa53a395a078_c72ae34d29618694 = external constant [0 x i8]
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedHolds(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:roArg" @compiler_2fcheck_3aroArg_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i64 %a0, i64 %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2ePush_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:roArg" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fpair_3aPair_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H9be680f663aa81558c844970355ca108(ptr %v0, ptr %a0, %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %a1)
@olang_loc_3ba07a3e63e86523_b4e2f85113e27c0f = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:roDeepArg" @compiler_2fcheck_3aroDeepArg_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1, i64 %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2ePush_H0e30e0389c54f9bfc05db61d637e277e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:roDeepArg" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epuns(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnsFields(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropsGone(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0)
@olang_loc_ac983f970f94ac3e_5c81cf941b3f1e2 = external constant [0 x i8]
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetChain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, i64 %a5, i64 %a6)
@olang_loc_5e7ac483298c689c_15fc6611344e0300 = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonlyFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2epurePlace(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8302d182975d1c39_f0b10209f7a6052d = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e2dfd8ce79efa5b1_a05c5e2f73a80d5d = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrBefore(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
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
