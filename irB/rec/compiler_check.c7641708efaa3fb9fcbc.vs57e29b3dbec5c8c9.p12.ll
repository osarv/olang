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
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/check:litBuilder" = type { i64, i32 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/typed:ContractInfo" = type { { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:ctSource" = type { ptr, ptr, { i64, ptr }, i64, { i64, ptr } }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:factsCopy" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/check:typeCase" = type { i1, i1, i32, i64, i64, i1 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/check:factRead" = type { i64, i64, { i64, ptr }, i1, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/check:signMag" = type { i1, i128 }
%"compiler/check:errBind" = type { i32, i64, i32, %"compiler/source:Span" }
%"compiler/check:setAt" = type { ptr, i64, { i64, ptr }, { i64, ptr }, %"compiler/source:Span", i32 }
define dso_local i32 @compiler_2fcheck_2ebitOp(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i32 31, ptr %l1
  br label %bb35
bb5:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t8, ptr %l6
  br label %bb6
bb6:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 32, ptr %l1
  br label %bb35
bb10:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t13, ptr %l9
  br label %bb11
bb11:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i32 33, ptr %l1
  br label %bb35
bb15:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t18, ptr %l12
  br label %bb16
bb16:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i32 34, ptr %l1
  br label %bb35
bb20:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t23, ptr %l15
  br label %bb21
bb21:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i32 35, ptr %l1
  br label %bb35
bb25:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t28, ptr %l18
  br label %bb26
bb26:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i32 36, ptr %l1
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i32 29, ptr %l1
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_a3fc486149a2dc5d_17491af4361141b9)
  unreachable
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecallLike(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l23 = alloca i1
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
  %t8 = icmp eq i64 %t6, 12
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
  store i1 true, ptr %rv
  br label %ret
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 30}
  %t18 = icmp eq i64 %t16, 2
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l1, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = call i1 @compiler_2fcheck_2ecallLike(ptr %v0, ptr %t26)
  store i1 %t28, ptr %l15
  br label %bb12
bb12:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb13:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb14, label %bb15
bb14:
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 30}
  %t37 = icmp eq i64 %t35, 21
  store i1 %t37, ptr %l17, !tbaa !21
  br label %bb15
bb15:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb16, label %bb17
bb16:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l2, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = call i1 @compiler_2fcheck_2ecallLike(ptr %v0, ptr %t45)
  store i1 %t47, ptr %l23
  br label %bb19
bb19:
  %t48 = load i1, ptr %l23, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_6e7767865267b99e_88e6ff5d2bea5fe2)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %lp24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l42 = alloca i32
  %l45 = alloca i32
  %l50 = alloca i32
  %l58 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i1
  %l68 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l80 = alloca i1
  %l81 = alloca i1
  %l85 = alloca i1
  %l93 = alloca { i64, ptr }
  %l99 = alloca i64
  %l102 = alloca i64
  %l120 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l139 = alloca ptr
  %l142 = alloca i1
  %l144 = alloca ptr
  %l145 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l149 = alloca %"compiler/source:Span"
  %l150 = alloca %"compiler/source:Span"
  %l153 = alloca { i64, ptr }
  %l155 = alloca %"compiler/diagmsg:Msg"
  %l156 = alloca i64
  %l157 = alloca ptr
  %l159 = alloca %"compiler/source:Span"
  %l162 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l166 = alloca %"compiler/source:Span"
  %l167 = alloca { i64, ptr }
  %l170 = alloca %"compiler/diagmsg:Msg"
  %l171 = alloca i64
  %l174 = alloca ptr
  %l176 = alloca ptr
  %l179 = alloca i1
  %l187 = alloca %"compiler/source:Span"
  %l188 = alloca i32
  %l189 = alloca ptr
  %l193 = alloca i32
  %l196 = alloca ptr
  %l198 = alloca i32
  %l199 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l202 = alloca %"compiler/source:Span"
  %l204 = alloca %"compiler/source:Span"
  %l205 = alloca %"compiler/source:Span"
  %l206 = alloca i32
  %l209 = alloca ptr
  %l214 = alloca i32
  %l215 = alloca { i64, ptr }
  %l216 = alloca { i64, ptr }
  %l221 = alloca ptr
  %l224 = alloca ptr
  %l229 = alloca i32
  %l230 = alloca i32
  %l231 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l240 = alloca ptr
  %l241 = alloca ptr
  %l243 = alloca %"compiler/source:Span"
  %l245 = alloca %"compiler/source:Span"
  %l246 = alloca %"compiler/source:Span"
  %l248 = alloca { i64, ptr }
  %l251 = alloca { i64, ptr }
  %l252 = alloca %"compiler/diagmsg:Msg"
  %l253 = alloca i64
  %l256 = alloca ptr
  %l257 = alloca %"compiler/source:Span"
  %l258 = alloca i32
  %l264 = alloca %"compiler/typed:Payload"
  %l273 = alloca { i64, ptr }
  %l278 = alloca ptr
  %l281 = alloca i64
  %l287 = alloca i64
  %l290 = alloca i64
  %l309 = alloca ptr
  %l313 = alloca { i64, ptr }
  %l320 = alloca ptr
  %l326 = alloca { i64, ptr }
  %l329 = alloca ptr
  %l334 = alloca i32
  %l335 = alloca i32
  %l336 = alloca %"compiler/source:Span"
  %l337 = alloca i32
  %l341 = alloca %"compiler/typed:Make"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca ptr
  %t330 = alloca { i64, [4 x i64] }, align 8
  %t356 = alloca { i64, [4 x i64] }, align 8
  %t522 = alloca { i64, [4 x i64] }, align 8
  %t550 = alloca { i64, [4 x i64] }, align 8
  %t639 = alloca { i64, [4 x i64] }, align 8
  %t700 = alloca { i64, [5 x i64] }, align 8
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 12
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %t4, ptr %t5, i32 %t7)
  store ptr %t11, ptr %l39
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l39, !tbaa !29
  store ptr %t12, ptr %l4, !tbaa !29
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t13)
  store i32 %t16, ptr %l42
  br label %bb2
bb2:
  %t17 = load i32, ptr %l42, !tbaa !23
  store i32 %t17, ptr %l5, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l5, !tbaa !23
  %t22 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l45
  br label %bb3
bb3:
  %t23 = load i32, ptr %l45, !tbaa !23
  store i32 %t23, ptr %l6, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l6, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l50
  br label %bb4
bb4:
  %t34 = load i32, ptr %l50, !range !{i32 0, i32 33}
  %t36 = trunc i64 29 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load ptr, ptr %l4, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyAs(ptr %v0, ptr %v3, ptr %v1, ptr %v2, ptr %v3, ptr %t39, %"compiler/source:Span" %t40, ptr %t41, ptr %t42, ptr %t43)
  store ptr %t49, ptr %l58
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load ptr, ptr %l58, !tbaa !29
  store ptr %t50, ptr %rv
  br label %ret
bb8:
  store i64 -1, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l3, !tbaa !29
  store ptr %t51, ptr %l8, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  store ptr %t53, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t54 = load ptr, ptr %l60, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb9, label %bb10
bb9:
  %t57 = load ptr, ptr %l60, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 3
  store i1 %t60, ptr %l61, !tbaa !21
  br label %bb10
bb10:
  %t61 = load i1, ptr %l61, !tbaa !21
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l9, !tbaa !29
  br label %bb13
bb12:
  br label %bb18
bb13:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t68, i32 %t69)
  store i1 %t72, ptr %l68
  br label %bb14
bb14:
  %t73 = load i1, ptr %l68, !tbaa !21
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t74 = load ptr, ptr %l9, !tbaa !29
  store ptr %t74, ptr %l8, !tbaa !29
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_30630aa0385ef6ff_761547ceb2a660b3)
  unreachable
bb23:
  %t76 = load ptr, ptr %l8, !tbaa !29
  store ptr %t76, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t77 = load ptr, ptr %l70, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l70, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 0
  store i1 %t83, ptr %l71, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l71, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l8, !tbaa !29
  %t87 = getelementptr { i64, [5 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t87, i32 0, i32 1
  %t89 = load { i64, ptr }, ptr %t88
  store { i64, ptr } %t89, ptr %l10, !tbaa !27
  %t91 = load ptr, ptr %l8, !tbaa !29
  %t93 = getelementptr { i64, [5 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t93, i32 0, i32 2
  %t95 = load { i64, ptr }, ptr %t94
  store { i64, ptr } %t95, ptr %l11, !tbaa !27
  br label %bb28
bb27:
  br label %bb55
bb28:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l6, !tbaa !23
  %t101 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l80
  br label %bb29
bb29:
  %t102 = load i1, ptr %l80, !tbaa !21
  br i1 %t102, label %bb30, label %bb31
bb30:
  %t103 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t107 = icmp sge i64 %t105, 2
  store i1 %t107, ptr %l81, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb32
bb32:
  %t109 = load i1, ptr %l81, !tbaa !21
  br i1 %t109, label %bb33, label %bb34
bb33:
  %t110 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  %t114 = icmp eq i64 %t112, 0
  store i1 %t114, ptr %l85, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb35
bb35:
  %t116 = load i1, ptr %l85, !tbaa !21
  br i1 %t116, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l6, !tbaa !23
  %t126 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s6, ptr %t122, i32 %t123)
  store { i64, ptr } %t126, ptr %l93
  br label %bb38
bb37:
  br label %bb54
bb38:
  %t127 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t127, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t128 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  store i64 %t130, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t132 = load i64, ptr %l14, !tbaa !24
  %t133 = load i64, ptr %l13, !tbaa !24
  %t136 = icmp sgt i64 %t132, %t133
  br i1 %t136, label %bb39, label %bb40
bb39:
  %t138 = load i64, ptr %l15, !tbaa !24
  %t140 = icmp sgt i64 %t138, 0
  br i1 %t140, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb44
bb41:
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = sub i64 %t142, %t143
  %t147 = load i64, ptr %l15, !tbaa !24
  %t150 = add i64 %t146, %t147
  %t152 = sub i64 %t150, 1
  %t153 = load i64, ptr %l15, !tbaa !24
  %t156 = sdiv i64 %t152, %t153
  store i64 %t156, ptr %l102, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb43
bb43:
  %t158 = load i64, ptr %l102, !tbaa !24
  store i64 %t158, ptr %l99, !tbaa !24
  br label %bb44
bb44:
  %t159 = load i64, ptr %l99, !tbaa !24
  store i64 %t159, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb45
bb45:
  %t160 = load i64, ptr %l17, !tbaa !24
  %t161 = load i64, ptr %l16, !tbaa !24
  %t164 = icmp slt i64 %t160, %t161
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb46, label %bb47
bb46:
  br label %bb53
bb47:
  br label %bb48
bb48:
  %t168 = load i64, ptr %l13, !tbaa !24
  %t169 = load i64, ptr %l17, !tbaa !24
  %t170 = load i64, ptr %l15, !tbaa !24
  %t173 = mul i64 %t169, %t170
  %t176 = add i64 %t168, %t173
  store i64 %t176, ptr %l18, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t178, ptr %l120, !tbaa !27
  %t179 = load i64, ptr %l18, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr i32, ptr %t182, i64 %t179
  %t184 = load i32, ptr %t183, !tbaa !33
  %t185 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t185, ptr %l123, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t190 = sub i64 %t188, 1
  %t192 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i32, ptr %t193, i64 %t190
  %t195 = load i32, ptr %t194, !tbaa !33
  %t198 = icmp eq i32 %t184, %t195
  br i1 %t198, label %bb49, label %bb50
bb49:
  %t200 = load i64, ptr %l18, !tbaa !24
  store i64 %t200, ptr %l7, !tbaa !24
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t202 = load i64, ptr %l17, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l17, !tbaa !24
  br label %bb45
bb53:
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb54:
  br label %bb60
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_383f9ac3750cc0fe_a676b835dd8ab732)
  unreachable
bb60:
  %t206 = load i64, ptr %l7, !tbaa !24
  %t208 = icmp slt i64 %t206, 0
  br i1 %t208, label %bb61, label %bb62
bb61:
  %t210 = load i32, ptr %l5, !tbaa !23
  %t211 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t214 = icmp eq i32 %t210, %t211
  br i1 %t214, label %bb63, label %bb64
bb62:
  br label %bb84
bb63:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load %"compiler/source:Span", ptr %l1
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t216, %"compiler/source:Span" %t217)
  store ptr %t220, ptr %l139
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t221 = load ptr, ptr %l139, !tbaa !29
  store ptr %t221, ptr %rv
  br label %ret
bb66:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i32, ptr %l6, !tbaa !23
  %t226 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t222, i32 %t223)
  store i1 %t226, ptr %l142
  br label %bb67
bb67:
  %t227 = load i1, ptr %l142, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s14
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l144, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l145, !tbaa !29
  %t232 = load ptr, ptr %l2, !tbaa !29
  %t234 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t232)
  store %"compiler/source:Span" %t234, ptr %l147
  br label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s15
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l157, !tbaa !29
  %t236 = load ptr, ptr %l3, !tbaa !29
  %t238 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t236)
  store %"compiler/source:Span" %t238, ptr %l159
  br label %bb76
bb70:
  %t239 = load ptr, ptr %l3, !tbaa !29
  %t241 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t239)
  store %"compiler/source:Span" %t241, ptr %l149
  br label %bb71
bb71:
  %t242 = load ptr, ptr %l145, !tbaa !29
  %t243 = load %"compiler/source:Span", ptr %l147
  %t244 = load %"compiler/source:Span", ptr %l149
  %t245 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t242, %"compiler/source:Span" %t243, %"compiler/source:Span" %t244, i64 2)
  store %"compiler/source:Span" %t245, ptr %l150
  br label %bb72
bb72:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i32, ptr %l5, !tbaa !23
  %t250 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s14, ptr %t246, i32 %t247)
  store { i64, ptr } %t250, ptr %l153
  br label %bb73
bb73:
  %t251 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  %t253 = extractvalue { i64, ptr } %t251, 1
  %t254 = mul i64 %t252, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t255, ptr %t253, i64 %t254, i1 false)
  %t256 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  %t259 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsAsNotEnum(ptr %s14, ptr %s14, { i64, ptr } %t257)
  store %"compiler/diagmsg:Msg" %t259, ptr %l155
  br label %bb74
bb74:
  %t260 = load ptr, ptr %l144, !tbaa !29
  %t261 = load %"compiler/source:Span", ptr %l150
  %t262 = load %"compiler/diagmsg:Msg", ptr %l155
  %t263 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s14, ptr %t260, %"compiler/source:Span" %t261, %"compiler/diagmsg:Msg" %t262)
  store i64 %t263, ptr %l156
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s14)
  br label %bb82
bb76:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i32, ptr %l6, !tbaa !23
  %t268 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s15, ptr %t264, i32 %t265)
  store { i64, ptr } %t268, ptr %l162
  br label %bb77
bb77:
  %t269 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 0
  %t271 = extractvalue { i64, ptr } %t269, 1
  %t272 = mul i64 %t270, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t273, ptr %t271, i64 %t272, i1 false)
  %t274 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  store { i64, ptr } %t275, ptr %l163, !tbaa !27
  %t276 = load ptr, ptr %l0, !tbaa !29
  store ptr %t276, ptr %l164, !tbaa !29
  %t277 = load ptr, ptr %l3, !tbaa !29
  %t279 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t277)
  store %"compiler/source:Span" %t279, ptr %l166
  br label %bb78
bb78:
  %t280 = load ptr, ptr %l164, !tbaa !29
  %t281 = load %"compiler/source:Span", ptr %l166
  %t282 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s15, ptr %t280, %"compiler/source:Span" %t281)
  store { i64, ptr } %t282, ptr %l167
  br label %bb79
bb79:
  %t283 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t285 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t285, 1
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t288 = add i64 %t284, %t287
  %t289 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t290 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t291 = add i64 %t288, %t290
  %t292 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t291)
  call void @olang_textcopy(ptr %t292, ptr %t283, i64 %t284)
  %t293 = getelementptr i8, ptr %t292, i64 %t284
  call void @olang_textcopy(ptr %t293, ptr %t286, i64 %t287)
  %t294 = getelementptr i8, ptr %t293, i64 %t287
  call void @olang_textcopy(ptr %t294, ptr %t289, i64 %t290)
  %t295 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t292, 1
  %t298 = extractvalue { i64, ptr } %t296, 0
  %t299 = extractvalue { i64, ptr } %t296, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  %t304 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t306 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsNeedsCase(ptr %s15, ptr %s15, ptr %s15, { i64, ptr } %t304, { i64, ptr } %t303)
  store %"compiler/diagmsg:Msg" %t306, ptr %l170
  br label %bb80
bb80:
  %t307 = load ptr, ptr %l157, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l159
  %t309 = load %"compiler/diagmsg:Msg", ptr %l170
  %t310 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t307, %"compiler/source:Span" %t308, %"compiler/diagmsg:Msg" %t309)
  store i64 %t310, ptr %l171
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s15)
  br label %bb82
bb82:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load %"compiler/source:Span", ptr %l1
  %t315 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t311, %"compiler/source:Span" %t312)
  store ptr %t315, ptr %l174
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s0)
  %t316 = load ptr, ptr %l174, !tbaa !29
  store ptr %t316, ptr %rv
  br label %ret
bb84:
  %t317 = load ptr, ptr %l4, !tbaa !29
  %t319 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v3, ptr %v3, ptr %t317)
  store ptr %t319, ptr %l176
  br label %bb85
bb85:
  %t320 = load ptr, ptr %l176, !tbaa !29
  store ptr %t320, ptr %l19, !tbaa !29
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load i32, ptr %l5, !tbaa !23
  %t325 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t321, i32 %t322)
  store i1 %t325, ptr %l179
  br label %bb86
bb86:
  %t326 = load i1, ptr %l179, !tbaa !21
  br i1 %t326, label %bb87, label %bb88
bb87:
  %t327 = load %"compiler/source:Span", ptr %l1
  %t328 = load i32, ptr %l6, !tbaa !23
  %t329 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t330
  %t331 = getelementptr { i64, [4 x i64] }, ptr %t330, i32 0, i32 0
  store i64 2, ptr %t331
  %t333 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t327, 0
  %t335 = insertvalue { %"compiler/source:Span", i32, ptr } %t333, i32 %t328, 1
  %t337 = insertvalue { %"compiler/source:Span", i32, ptr } %t335, ptr %t329, 2
  %t338 = getelementptr { i64, [4 x i64] }, ptr %t330, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t337, ptr %t338
  %t339 = load { i64, [4 x i64] }, ptr %t330
  %t341 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t339, ptr %t341
  store ptr %t341, ptr %l19, !tbaa !29
  br label %bb93
bb88:
  %t343 = load ptr, ptr %l19, !tbaa !29
  %t345 = icmp eq ptr %t343, null
  br i1 %t345, label %bb89, label %bb90
bb89:
  %t347 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t347, ptr %l187
  %t348 = load i32, ptr %l5, !tbaa !23
  store i32 %t348, ptr %l188, !tbaa !23
  %t349 = load ptr, ptr %l4, !tbaa !29
  store ptr %t349, ptr %l189, !tbaa !29
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load %"compiler/source:Span", ptr %l1
  %t355 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t350, i32 8, %"compiler/source:Span" %t351)
  store i32 %t355, ptr %l193
  br label %bb91
bb90:
  br label %bb92
bb91:
  store { i64, [4 x i64] } zeroinitializer, ptr %t356
  %t357 = getelementptr { i64, [4 x i64] }, ptr %t356, i32 0, i32 0
  store i64 6, ptr %t357
  %t358 = load %"compiler/source:Span", ptr %l187
  %t359 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t358, 0
  %t360 = load i32, ptr %l188, !tbaa !23
  %t361 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t359, i32 %t360, 1
  %t362 = load ptr, ptr %l189, !tbaa !29
  %t363 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t361, ptr %t362, 2
  %t364 = load i32, ptr %l193, !tbaa !23
  %t365 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t363, i32 %t364, 3
  %t366 = getelementptr { i64, [4 x i64] }, ptr %t356, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t365, ptr %t366
  %t367 = load { i64, [4 x i64] }, ptr %t356
  %t369 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t367, ptr %t369
  store ptr %t369, ptr %l19, !tbaa !29
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t371 = load ptr, ptr %l0, !tbaa !29
  store ptr %t371, ptr %l196, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCase(ptr %v0, ptr %t372)
  store i32 %t374, ptr %l198
  br label %bb94
bb94:
  %t375 = mul i64 1, 4
  %t376 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t375)
  %t377 = insertvalue { i64, ptr } undef, i64 1, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  store { i64, ptr } %t378, ptr %l199, !tbaa !27
  %t379 = load i32, ptr %l198, !tbaa !23
  %t380 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t381 = load ptr, ptr %t380, !tbaa !27
  %t382 = getelementptr i32, ptr %t381, i64 0
  store i32 %t379, ptr %t382, !tbaa !33
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l200, !tbaa !29
  %t384 = load ptr, ptr %l2, !tbaa !29
  %t386 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t384)
  store %"compiler/source:Span" %t386, ptr %l202
  br label %bb95
bb95:
  %t387 = load ptr, ptr %l3, !tbaa !29
  %t389 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t387)
  store %"compiler/source:Span" %t389, ptr %l204
  br label %bb96
bb96:
  %t390 = load ptr, ptr %l200, !tbaa !29
  %t391 = load %"compiler/source:Span", ptr %l202
  %t392 = load %"compiler/source:Span", ptr %l204
  %t393 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t390, %"compiler/source:Span" %t391, %"compiler/source:Span" %t392, i64 2)
  store %"compiler/source:Span" %t393, ptr %l205
  br label %bb97
bb97:
  %t394 = load ptr, ptr %l196, !tbaa !29
  %t395 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t396 = load %"compiler/source:Span", ptr %l205
  %t397 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %s0, ptr %t394, { i64, ptr } %t395, %"compiler/source:Span" %t396, i1 true)
  store i32 %t397, ptr %l206
  br label %bb98
bb98:
  %t398 = load i32, ptr %l206, !range !{i32 0, i32 3}
  store i32 %t398, ptr %l20
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/check:Checker", ptr %t399, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !29
  %t404 = getelementptr %"compiler/generic:Program", ptr %t402, i32 0, i32 2
  store ptr %t404, ptr %l209, !tbaa !29
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = getelementptr %"compiler/generic:Program", ptr %t408, i32 0, i32 2
  %t411 = load i32, ptr %l6, !tbaa !23
  %t414 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t410, i32 %t411)
  store i32 %t414, ptr %l214
  br label %bb99
bb99:
  %t415 = load ptr, ptr %l209, !tbaa !29
  %t416 = load i32, ptr %l214, !tbaa !23
  %t417 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t415, i32 %t416)
  store { i64, ptr } %t417, ptr %l215
  br label %bb100
bb100:
  %t418 = load { i64, ptr }, ptr %l215, !tbaa !27
  store { i64, ptr } %t418, ptr %l216, !tbaa !27
  %t419 = load i64, ptr %l7, !tbaa !24
  %t421 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !27
  %t423 = getelementptr i32, ptr %t422, i64 %t419
  %t424 = load i32, ptr %t423, !tbaa !33
  store i32 %t424, ptr %l21, !tbaa !23
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/check:Checker", ptr %t426, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !29
  %t431 = getelementptr %"compiler/generic:Program", ptr %t429, i32 0, i32 2
  store ptr %t431, ptr %l221, !tbaa !29
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/check:Checker", ptr %t432, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !29
  %t437 = getelementptr %"compiler/generic:Program", ptr %t435, i32 0, i32 2
  store ptr %t437, ptr %l224, !tbaa !29
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/check:Checker", ptr %t438, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t442 = load i32, ptr %l6, !tbaa !23
  %t443 = load i64, ptr %l7, !tbaa !24
  %t447 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t441, i32 %t442, i64 %t443)
  store i32 %t447, ptr %l229
  br label %bb101
bb101:
  %t448 = load ptr, ptr %l224, !tbaa !29
  %t449 = load i32, ptr %l229, !tbaa !23
  %t450 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t448, i32 %t449)
  store i32 %t450, ptr %l230
  br label %bb102
bb102:
  %t451 = load ptr, ptr %l221, !tbaa !29
  %t452 = load i32, ptr %l230, !tbaa !23
  %t453 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t451, i32 %t452)
  store { i64, ptr } %t453, ptr %l231
  br label %bb103
bb103:
  %t454 = load { i64, ptr }, ptr %l231, !tbaa !27
  store { i64, ptr } %t454, ptr %l22, !tbaa !27
  %t455 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t457 = extractvalue { i64, ptr } %t455, 0
  %t459 = icmp eq i64 %t457, 0
  br i1 %t459, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s20
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/check:Checker", ptr %t461, i32 0, i32 1
  %t464 = load ptr, ptr %t463, !tbaa !29
  %t466 = getelementptr %"compiler/generic:Program", ptr %t464, i32 0, i32 2
  %t467 = load i32, ptr %l6, !tbaa !23
  %t470 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s20, ptr %t466, i32 %t467)
  store { i64, ptr } %t470, ptr %l239
  br label %bb106
bb105:
  br label %bb114
bb106:
  %t471 = load { i64, ptr }, ptr %l239, !tbaa !27
  store { i64, ptr } %t471, ptr %l23, !tbaa !27
  %t472 = load ptr, ptr %l0, !tbaa !29
  store ptr %t472, ptr %l240, !tbaa !29
  %t473 = load ptr, ptr %l0, !tbaa !29
  store ptr %t473, ptr %l241, !tbaa !29
  %t474 = load ptr, ptr %l2, !tbaa !29
  %t476 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t474)
  store %"compiler/source:Span" %t476, ptr %l243
  br label %bb107
bb107:
  %t477 = load ptr, ptr %l3, !tbaa !29
  %t479 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t477)
  store %"compiler/source:Span" %t479, ptr %l245
  br label %bb108
bb108:
  %t480 = load ptr, ptr %l241, !tbaa !29
  %t481 = load %"compiler/source:Span", ptr %l243
  %t482 = load %"compiler/source:Span", ptr %l245
  %t483 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t480, %"compiler/source:Span" %t481, %"compiler/source:Span" %t482, i64 2)
  store %"compiler/source:Span" %t483, ptr %l246
  br label %bb109
bb109:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t485, ptr %l248, !tbaa !27
  %t486 = load i64, ptr %l7, !tbaa !24
  %t488 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = getelementptr i32, ptr %t489, i64 %t486
  %t491 = load i32, ptr %t490, !tbaa !33
  %t494 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t484, i32 %t491)
  store { i64, ptr } %t494, ptr %l251
  br label %bb110
bb110:
  %t495 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t496 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsNothing(ptr %v0, ptr %s20, { i64, ptr } %t495)
  store %"compiler/diagmsg:Msg" %t496, ptr %l252
  br label %bb111
bb111:
  %t497 = load ptr, ptr %l240, !tbaa !29
  %t498 = load %"compiler/source:Span", ptr %l246
  %t499 = load %"compiler/diagmsg:Msg", ptr %l252
  %t500 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s20, ptr %t497, %"compiler/source:Span" %t498, %"compiler/diagmsg:Msg" %t499)
  store i64 %t500, ptr %l253
  br label %bb112
bb112:
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t502 = load %"compiler/source:Span", ptr %l1
  %t505 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t501, %"compiler/source:Span" %t502)
  store ptr %t505, ptr %l256
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  %t506 = load ptr, ptr %l256, !tbaa !29
  store ptr %t506, ptr %rv
  br label %ret
bb114:
  %t507 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t507, ptr %l257
  %t508 = load i32, ptr %l21, !tbaa !23
  store i32 %t508, ptr %l258, !tbaa !23
  %t509 = load ptr, ptr %l19, !tbaa !29
  %t511 = icmp eq ptr %t509, null
  br i1 %t511, label %bb115, label %bb116
bb115:
  call void @__olang_check_failed(ptr @olang_loc_d7812add9a78f336_89874a21e94d300a)
  unreachable
bb116:
  br label %bb117
bb117:
  %t513 = load ptr, ptr %l19, !tbaa !29
  %t514 = load i64, ptr %l7, !tbaa !24
  %t515 = load i32, ptr %l20, !range !{i32 0, i32 3}
  %t519 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v3, ptr %v3, ptr %t513, i64 %t514, i32 %t515)
  store %"compiler/typed:Payload" %t519, ptr %l264
  br label %bb118
bb118:
  %t520 = load %"compiler/typed:Payload", ptr %l264
  %t521 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Payload" %t520, ptr %t521
  store { i64, [4 x i64] } zeroinitializer, ptr %t522
  %t523 = getelementptr { i64, [4 x i64] }, ptr %t522, i32 0, i32 0
  store i64 5, ptr %t523
  %t524 = load %"compiler/source:Span", ptr %l257
  %t525 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t524, 0
  %t526 = load i32, ptr %l258, !tbaa !23
  %t527 = insertvalue { %"compiler/source:Span", i32, ptr } %t525, i32 %t526, 1
  %t529 = insertvalue { %"compiler/source:Span", i32, ptr } %t527, ptr %t521, 2
  %t530 = getelementptr { i64, [4 x i64] }, ptr %t522, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t529, ptr %t530
  %t531 = load { i64, [4 x i64] }, ptr %t522
  %t532 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store ptr %t532, ptr %lp24
  %t534 = load ptr, ptr %lp24
  store { i64, [4 x i64] } %t531, ptr %t534
  %t535 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t535, 0
  %t539 = icmp eq i64 %t537, 1
  br i1 %t539, label %bb119, label %bb120
bb119:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load %"compiler/source:Span", ptr %l1
  %t543 = load %"compiler/source:Span", ptr %l1
  %t544 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t544, ptr %l273, !tbaa !27
  %t545 = getelementptr { i64, ptr }, ptr %l273, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !27
  %t547 = getelementptr i32, ptr %t546, i64 0
  %t548 = load i32, ptr %t547, !tbaa !33
  %t549 = load ptr, ptr %lp24
  store { i64, [4 x i64] } zeroinitializer, ptr %t550
  %t551 = getelementptr { i64, [4 x i64] }, ptr %t550, i32 0, i32 0
  store i64 3, ptr %t551
  %t553 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t543, 0
  %t555 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t553, i32 %t548, 1
  %t557 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t555, ptr %t549, 2
  %t558 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t557, i64 0, 3
  %t559 = getelementptr { i64, [4 x i64] }, ptr %t550, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t558, ptr %t559
  %t560 = load { i64, [4 x i64] }, ptr %t550
  %t562 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t560, ptr %t562
  %t566 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t541, %"compiler/source:Span" %t542, ptr %t562)
  store ptr %t566, ptr %l278
  br label %bb121
bb120:
  br label %bb122
bb121:
  call void @__olang_scope_close(ptr %s0)
  %t567 = load ptr, ptr %l278, !tbaa !29
  store ptr %t567, ptr %rv
  br label %ret
bb122:
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t570 = getelementptr %"compiler/check:Checker", ptr %t568, i32 0, i32 36
  %t572 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t570)
  store i64 %t572, ptr %l281
  br label %bb123
bb123:
  %t573 = load i64, ptr %l281, !tbaa !24
  store i64 %t573, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  %t574 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t576 = extractvalue { i64, ptr } %t574, 0
  store i64 %t576, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t578 = load i64, ptr %l27, !tbaa !24
  %t579 = load i64, ptr %l26, !tbaa !24
  %t582 = icmp sgt i64 %t578, %t579
  br i1 %t582, label %bb124, label %bb125
bb124:
  %t584 = load i64, ptr %l28, !tbaa !24
  %t586 = icmp sgt i64 %t584, 0
  br i1 %t586, label %bb126, label %bb127
bb125:
  store i64 0, ptr %l287, !tbaa !24
  br label %bb129
bb126:
  %t588 = load i64, ptr %l27, !tbaa !24
  %t589 = load i64, ptr %l26, !tbaa !24
  %t592 = sub i64 %t588, %t589
  %t593 = load i64, ptr %l28, !tbaa !24
  %t596 = add i64 %t592, %t593
  %t598 = sub i64 %t596, 1
  %t599 = load i64, ptr %l28, !tbaa !24
  %t602 = sdiv i64 %t598, %t599
  store i64 %t602, ptr %l290, !tbaa !24
  br label %bb128
bb127:
  store i64 0, ptr %l290, !tbaa !24
  br label %bb128
bb128:
  %t604 = load i64, ptr %l290, !tbaa !24
  store i64 %t604, ptr %l287, !tbaa !24
  br label %bb129
bb129:
  %t605 = load i64, ptr %l287, !tbaa !24
  store i64 %t605, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb130
bb130:
  %t606 = load i64, ptr %l30, !tbaa !24
  %t607 = load i64, ptr %l29, !tbaa !24
  %t610 = icmp slt i64 %t606, %t607
  %t612 = xor i1 %t610, true
  br i1 %t612, label %bb131, label %bb132
bb131:
  br label %bb137
bb132:
  br label %bb133
bb133:
  %t614 = load i64, ptr %l26, !tbaa !24
  %t615 = load i64, ptr %l30, !tbaa !24
  %t616 = load i64, ptr %l28, !tbaa !24
  %t619 = mul i64 %t615, %t616
  %t622 = add i64 %t614, %t619
  store i64 %t622, ptr %l31, !tbaa !24
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t626 = getelementptr %"compiler/check:Checker", ptr %t624, i32 0, i32 36
  store ptr %t626, ptr %l309, !tbaa !29
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t628 = load %"compiler/source:Span", ptr %l1
  %t629 = load %"compiler/source:Span", ptr %l1
  %t630 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t630, ptr %l313, !tbaa !27
  %t631 = load i64, ptr %l31, !tbaa !24
  %t633 = getelementptr { i64, ptr }, ptr %l313, i32 0, i32 1
  %t634 = load ptr, ptr %t633, !tbaa !27
  %t635 = getelementptr i32, ptr %t634, i64 %t631
  %t636 = load i32, ptr %t635, !tbaa !33
  %t637 = load ptr, ptr %lp24
  %t638 = load i64, ptr %l31, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t639
  %t640 = getelementptr { i64, [4 x i64] }, ptr %t639, i32 0, i32 0
  store i64 3, ptr %t640
  %t642 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t629, 0
  %t644 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t642, i32 %t636, 1
  %t646 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t644, ptr %t637, 2
  %t648 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t646, i64 %t638, 3
  %t649 = getelementptr { i64, [4 x i64] }, ptr %t639, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t648, ptr %t649
  %t650 = load { i64, [4 x i64] }, ptr %t639
  %t652 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t650, ptr %t652
  %t656 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t627, %"compiler/source:Span" %t628, ptr %t652)
  store ptr %t656, ptr %l320
  br label %bb134
bb134:
  %t657 = load ptr, ptr %l309, !tbaa !29
  %t658 = load ptr, ptr %l320, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t657, ptr %t658)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t659 = load i64, ptr %l30, !tbaa !24
  %t661 = add i64 %t659, 1
  store i64 %t661, ptr %l30, !tbaa !24
  br label %bb130
bb137:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t665 = getelementptr %"compiler/check:Checker", ptr %t663, i32 0, i32 36
  %t666 = load i64, ptr %l25, !tbaa !24
  %t669 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t665, i64 %t666)
  store { i64, ptr } %t669, ptr %l326
  br label %bb138
bb138:
  %t670 = load { i64, ptr }, ptr %l326, !tbaa !27
  store { i64, ptr } %t670, ptr %l32, !tbaa !27
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t673 = getelementptr %"compiler/check:Checker", ptr %t671, i32 0, i32 1
  %t674 = load ptr, ptr %t673, !tbaa !29
  %t676 = getelementptr %"compiler/generic:Program", ptr %t674, i32 0, i32 2
  store ptr %t676, ptr %l329, !tbaa !29
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t679 = getelementptr %"compiler/check:Checker", ptr %t677, i32 0, i32 1
  %t680 = load ptr, ptr %t679, !tbaa !29
  %t682 = getelementptr %"compiler/generic:Program", ptr %t680, i32 0, i32 2
  %t683 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t686 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v0, ptr %t682, { i64, ptr } %t683)
  store i32 %t686, ptr %l334
  br label %bb139
bb139:
  %t687 = load ptr, ptr %l329, !tbaa !29
  %t688 = load i32, ptr %l334, !tbaa !23
  %t689 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t687, i32 %t688)
  store i32 %t689, ptr %l335
  br label %bb140
bb140:
  %t690 = load i32, ptr %l335, !tbaa !23
  %t691 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t691, ptr %l336
  store i32 %t690, ptr %l337, !tbaa !23
  %t693 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t697 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v3, ptr %v3, ptr %v3, i32 0, i64 0, { i64, ptr } %t693, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t697, ptr %l341
  br label %bb141
bb141:
  %t698 = load %"compiler/typed:Make", ptr %l341
  %t699 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 56, i64 8)
  store %"compiler/typed:Make" %t698, ptr %t699
  store { i64, [5 x i64] } zeroinitializer, ptr %t700
  %t701 = getelementptr { i64, [5 x i64] }, ptr %t700, i32 0, i32 0
  store i64 7, ptr %t701
  %t702 = load %"compiler/source:Span", ptr %l336
  %t703 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t702, 0
  %t704 = load i32, ptr %l337, !tbaa !23
  %t705 = insertvalue { %"compiler/source:Span", i32, ptr } %t703, i32 %t704, 1
  %t707 = insertvalue { %"compiler/source:Span", i32, ptr } %t705, ptr %t699, 2
  %t708 = getelementptr { i64, [5 x i64] }, ptr %t700, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t707, ptr %t708
  %t709 = load { i64, [5 x i64] }, ptr %t700
  %t711 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t709, ptr %t711
  call void @__olang_scope_close(ptr %s0)
  store ptr %t711, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l41 = alloca i32
  %l43 = alloca ptr
  %l47 = alloca %"compiler/typed:Try"
  %rv = alloca ptr
  %t90 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 28
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l11
  br label %bb2
bb2:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 16
  %t14 = load i64, ptr %t13, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  %t17 = load ptr, ptr %l14, !tbaa !29
  %t18 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 15
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t23, i32 0, i32 15
  store i64 %t21, ptr %t24, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t25, ptr %t26, i32 %t28)
  store ptr %t32, ptr %l21
  br label %bb3
bb3:
  %t33 = load ptr, ptr %l21, !tbaa !29
  store ptr %t33, ptr %l5, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %l22, !tbaa !29
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 15
  %t37 = load i64, ptr %t36, !tbaa !24
  %t39 = sub i64 %t37, 1
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = getelementptr %"compiler/check:frame", ptr %t41, i32 0, i32 15
  store i64 %t39, ptr %t42, !tbaa !24
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/check:frame", ptr %t43, i32 0, i32 16
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = icmp ne i64 %t46, %t47
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = getelementptr %"compiler/check:frame", ptr %t52, i32 0, i32 16
  store i64 %t53, ptr %t56, !tbaa !24
  %t59 = xor i1 %t50, true
  br i1 %t59, label %bb4, label %bb5
bb4:
  %t61 = load ptr, ptr %l5, !tbaa !29
  store ptr %t61, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/check:frame", ptr %t63, i32 0, i32 28
  %t66 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t65, i64 %t66)
  br label %bb7
bb7:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t69)
  store %"compiler/source:Span" %t71, ptr %l38
  br label %bb8
bb8:
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t75 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t72)
  store i32 %t75, ptr %l41
  br label %bb9
bb9:
  %t76 = load ptr, ptr %l5, !tbaa !29
  store ptr %t76, ptr %l43, !tbaa !29
  %t78 = icmp sge i64 0, 0
  br i1 %t78, label %bb10, label %bb11
bb10:
  %t80 = icmp sle i64 0, 1152921504606846975
  br i1 %t80, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_ca088269e212954c_d643913a2551dac8)
  unreachable
bb12:
  %t82 = mul i64 0, 8
  %t83 = insertvalue { i64, ptr } undef, i64 0, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t85 = load ptr, ptr %l43, !tbaa !29
  %t87 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %t85, { i64, ptr } %t84, i1 true, i1 false, i1 true)
  store %"compiler/typed:Try" %t87, ptr %l47
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_ca088269e212954c_d643913a2551dac8)
  unreachable
bb14:
  %t88 = load %"compiler/typed:Try", ptr %l47
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Try" %t88, ptr %t89
  store { i64, [5 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 0
  store i64 14, ptr %t91
  %t92 = load %"compiler/source:Span", ptr %l38
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t92, 0
  %t94 = load i32, ptr %l41, !tbaa !23
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr } %t93, i32 %t94, 1
  %t97 = insertvalue { %"compiler/source:Span", i32, ptr } %t95, ptr %t89, 2
  %t98 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t97, ptr %t98
  %t99 = load { i64, [5 x i64] }, ptr %t90
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t99, ptr %t101
  store ptr %t101, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i1
  %l16 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 14
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb8
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/check:b5aWalk", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %t18, i64 %t19)
  store i1 %t22, ptr %l16
  br label %bb7
bb7:
  %t23 = load i1, ptr %l16, !tbaa !21
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/check:b5aWalk", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t27, i64 %t28, i1 true)
  br label %bb12
bb12:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/check:b5aWalk", ptr %t31, i32 0, i32 6
  %t34 = load i1, ptr %t33, !tbaa !21
  store i1 %t34, ptr %l3, !tbaa !21
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/check:b5aWalk", ptr %t36, i32 0, i32 6
  store i1 false, ptr %t38, !tbaa !21
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l23, !tbaa !29
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l24, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 14
  %t44 = load i64, ptr %l2, !tbaa !24
  %t47 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store ptr %t47, ptr %l28
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l28, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Body", ptr %t48, i32 0, i32 11
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load ptr, ptr %l23, !tbaa !29
  %t53 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v0, ptr %t52, ptr %t53, ptr %t51)
  br label %bb14
bb14:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load i1, ptr %l3, !tbaa !21
  %t59 = getelementptr %"compiler/check:b5aWalk", ptr %t55, i32 0, i32 6
  store i1 %t56, ptr %t59, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsAny(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca { i64, ptr }
  %l21 = alloca i1
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
  br label %bb10
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
  %t27 = add i64 %a2, 1
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsFn(ptr %v0, ptr %a0, i32 %t21, i64 %t27)
  store i1 %t31, ptr %l21
  br label %bb5
bb5:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPiece(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l20 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 2}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17, ptr %t18)
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/check:b5aWalk", ptr %t23, i32 0, i32 6
  %t26 = load i1, ptr %t25, !tbaa !21
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l18, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t32)
  store i32 %t34, ptr %l20
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = load i32, ptr %l20, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t35, ptr %t36, i32 %t37, i64 0)
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_fd984862ae15b7b5_96e74f0ca55af519)
  unreachable
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
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
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i1
  %l143 = alloca ptr
  %l144 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i1
  %l182 = alloca { i64, ptr }
  %l191 = alloca ptr
  %l192 = alloca i1
  %l205 = alloca { i64, ptr }
  %l226 = alloca { i64, ptr }
  %l235 = alloca ptr
  %l236 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t6 = load ptr, ptr %l33, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l33, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l34, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l34, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t20, ptr %t21, ptr %t22)
  br label %bb9
bb9:
  br label %bb129
bb10:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t28 = load ptr, ptr %l43, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l43, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 17}
  %t34 = icmp eq i64 %t32, 1
  store i1 %t34, ptr %l44, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l44, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t38, i32 0, i32 1
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l4, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = getelementptr { i64, [3 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t48, ptr %t49, ptr %t50)
  br label %bb16
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t57 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t55, ptr %t56, ptr %t57)
  br label %bb17
bb17:
  br label %bb129
bb18:
  %t62 = load ptr, ptr %l2, !tbaa !29
  store ptr %t62, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t63 = load ptr, ptr %l59, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t66 = load ptr, ptr %l59, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 17}
  %t69 = icmp eq i64 %t67, 2
  store i1 %t69, ptr %l60, !tbaa !21
  br label %bb20
bb20:
  %t70 = load i1, ptr %l60, !tbaa !21
  br i1 %t70, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr }, ptr %t73, i32 0, i32 1
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l6, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t77, ptr %t78, ptr %t79)
  br label %bb24
bb24:
  br label %bb129
bb25:
  %t84 = load ptr, ptr %l2, !tbaa !29
  store ptr %t84, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t85 = load ptr, ptr %l69, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t88 = load ptr, ptr %l69, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 17}
  %t91 = icmp eq i64 %t89, 3
  store i1 %t91, ptr %l70, !tbaa !21
  br label %bb27
bb27:
  %t92 = load i1, ptr %l70, !tbaa !21
  br i1 %t92, label %bb28, label %bb29
bb28:
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr { i64, [3 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", ptr }, ptr %t95, i32 0, i32 1
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l7, !tbaa !29
  br label %bb30
bb29:
  br label %bb34
bb30:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t101 = load ptr, ptr %l7, !tbaa !29
  %t103 = getelementptr %"compiler/typed:If", ptr %t101, i32 0, i32 0
  %t104 = load ptr, ptr %t103, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t99, ptr %t100, ptr %t104)
  br label %bb31
bb31:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t111 = load ptr, ptr %l7, !tbaa !29
  %t113 = getelementptr %"compiler/typed:If", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t109, ptr %t110, ptr %t114)
  br label %bb32
bb32:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t121 = load ptr, ptr %l7, !tbaa !29
  %t123 = getelementptr %"compiler/typed:If", ptr %t121, i32 0, i32 2
  %t124 = load ptr, ptr %t123, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t119, ptr %t120, ptr %t124)
  br label %bb33
bb33:
  br label %bb129
bb34:
  %t128 = load ptr, ptr %l2, !tbaa !29
  store ptr %t128, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t129 = load ptr, ptr %l89, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb35, label %bb36
bb35:
  %t132 = load ptr, ptr %l89, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 17}
  %t135 = icmp eq i64 %t133, 4
  store i1 %t135, ptr %l90, !tbaa !21
  br label %bb36
bb36:
  %t136 = load i1, ptr %l90, !tbaa !21
  br i1 %t136, label %bb37, label %bb38
bb37:
  %t137 = load ptr, ptr %l2, !tbaa !29
  %t139 = getelementptr { i64, [3 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t139, i32 0, i32 1
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l8, !tbaa !29
  %t143 = load ptr, ptr %l2, !tbaa !29
  %t145 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t145, i32 0, i32 2
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l9, !tbaa !29
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t151 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t149, ptr %t150, ptr %t151)
  br label %bb40
bb40:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t158 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t156, ptr %t157, ptr %t158)
  br label %bb41
bb41:
  br label %bb129
bb42:
  %t162 = load ptr, ptr %l2, !tbaa !29
  store ptr %t162, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t163 = load ptr, ptr %l104, !tbaa !29
  %t164 = icmp ne ptr %t163, null
  br i1 %t164, label %bb43, label %bb44
bb43:
  %t166 = load ptr, ptr %l104, !tbaa !29
  %t167 = load i64, ptr %t166, !range !{i64 0, i64 17}
  %t169 = icmp eq i64 %t167, 6
  store i1 %t169, ptr %l105, !tbaa !21
  br label %bb44
bb44:
  %t170 = load i1, ptr %l105, !tbaa !21
  br i1 %t170, label %bb45, label %bb46
bb45:
  %t171 = load ptr, ptr %l2, !tbaa !29
  %t173 = getelementptr { i64, [3 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", ptr }, ptr %t173, i32 0, i32 1
  %t175 = load ptr, ptr %t174
  store ptr %t175, ptr %l10, !tbaa !29
  br label %bb51
bb46:
  %t177 = load ptr, ptr %l2, !tbaa !29
  store ptr %t177, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t178 = load ptr, ptr %l110, !tbaa !29
  %t179 = icmp ne ptr %t178, null
  br i1 %t179, label %bb47, label %bb48
bb47:
  %t181 = load ptr, ptr %l110, !tbaa !29
  %t182 = load i64, ptr %t181, !range !{i64 0, i64 17}
  %t184 = icmp eq i64 %t182, 16
  store i1 %t184, ptr %l111, !tbaa !21
  br label %bb48
bb48:
  %t185 = load i1, ptr %l111, !tbaa !21
  br i1 %t185, label %bb49, label %bb50
bb49:
  %t186 = load ptr, ptr %l2, !tbaa !29
  %t188 = getelementptr { i64, [3 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", ptr }, ptr %t188, i32 0, i32 1
  %t190 = load ptr, ptr %t189
  store ptr %t190, ptr %l10, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load ptr, ptr %l1, !tbaa !29
  %t194 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t192, ptr %t193, ptr %t194)
  br label %bb52
bb52:
  br label %bb129
bb53:
  %t198 = load ptr, ptr %l2, !tbaa !29
  store ptr %t198, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t199 = load ptr, ptr %l119, !tbaa !29
  %t200 = icmp ne ptr %t199, null
  br i1 %t200, label %bb54, label %bb55
bb54:
  %t202 = load ptr, ptr %l119, !tbaa !29
  %t203 = load i64, ptr %t202, !range !{i64 0, i64 17}
  %t205 = icmp eq i64 %t203, 10
  store i1 %t205, ptr %l120, !tbaa !21
  br label %bb55
bb55:
  %t206 = load i1, ptr %l120, !tbaa !21
  br i1 %t206, label %bb56, label %bb57
bb56:
  %t207 = load ptr, ptr %l2, !tbaa !29
  %t209 = getelementptr { i64, [3 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t209, i32 0, i32 1
  %t211 = load ptr, ptr %t210
  store ptr %t211, ptr %l11, !tbaa !29
  %t213 = load ptr, ptr %l2, !tbaa !29
  %t215 = getelementptr { i64, [3 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t215, i32 0, i32 2
  %t217 = load ptr, ptr %t216
  store ptr %t217, ptr %l12, !tbaa !29
  br label %bb58
bb57:
  br label %bb61
bb58:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t221 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t219, ptr %t220, ptr %t221)
  br label %bb59
bb59:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t228 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t226, ptr %t227, ptr %t228)
  br label %bb60
bb60:
  br label %bb129
bb61:
  %t232 = load ptr, ptr %l2, !tbaa !29
  store ptr %t232, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t233 = load ptr, ptr %l134, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb62, label %bb63
bb62:
  %t236 = load ptr, ptr %l134, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 17}
  %t239 = icmp eq i64 %t237, 9
  store i1 %t239, ptr %l135, !tbaa !21
  br label %bb63
bb63:
  %t240 = load i1, ptr %l135, !tbaa !21
  br i1 %t240, label %bb64, label %bb65
bb64:
  %t241 = load ptr, ptr %l2, !tbaa !29
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t243, i32 0, i32 2
  %t245 = load ptr, ptr %t244
  store ptr %t245, ptr %l13, !tbaa !29
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t249 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t247, ptr %t248, ptr %t249)
  br label %bb67
bb67:
  br label %bb129
bb68:
  %t253 = load ptr, ptr %l2, !tbaa !29
  store ptr %t253, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t254 = load ptr, ptr %l143, !tbaa !29
  %t255 = icmp ne ptr %t254, null
  br i1 %t255, label %bb69, label %bb70
bb69:
  %t257 = load ptr, ptr %l143, !tbaa !29
  %t258 = load i64, ptr %t257, !range !{i64 0, i64 17}
  %t260 = icmp eq i64 %t258, 11
  store i1 %t260, ptr %l144, !tbaa !21
  br label %bb70
bb70:
  %t261 = load i1, ptr %l144, !tbaa !21
  br i1 %t261, label %bb71, label %bb72
bb71:
  %t262 = load ptr, ptr %l2, !tbaa !29
  %t264 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", ptr }, ptr %t264, i32 0, i32 1
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l14, !tbaa !29
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t270 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t268, ptr %t269, ptr %t270)
  br label %bb74
bb74:
  br label %bb129
bb75:
  %t275 = load ptr, ptr %l2, !tbaa !29
  store ptr %t275, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t276 = load ptr, ptr %l153, !tbaa !29
  %t277 = icmp ne ptr %t276, null
  br i1 %t277, label %bb76, label %bb77
bb76:
  %t279 = load ptr, ptr %l153, !tbaa !29
  %t280 = load i64, ptr %t279, !range !{i64 0, i64 17}
  %t282 = icmp eq i64 %t280, 12
  store i1 %t282, ptr %l154, !tbaa !21
  br label %bb77
bb77:
  %t283 = load i1, ptr %l154, !tbaa !21
  br i1 %t283, label %bb78, label %bb79
bb78:
  %t284 = load ptr, ptr %l2, !tbaa !29
  %t286 = getelementptr { i64, [3 x i64] }, ptr %t284, i32 0, i32 1
  %t287 = getelementptr { %"compiler/source:Span", ptr }, ptr %t286, i32 0, i32 1
  %t288 = load ptr, ptr %t287
  store ptr %t288, ptr %l15, !tbaa !29
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load ptr, ptr %l1, !tbaa !29
  %t292 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t290, ptr %t291, ptr %t292)
  br label %bb81
bb81:
  br label %bb129
bb82:
  %t297 = load ptr, ptr %l2, !tbaa !29
  store ptr %t297, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t298 = load ptr, ptr %l163, !tbaa !29
  %t299 = icmp ne ptr %t298, null
  br i1 %t299, label %bb83, label %bb84
bb83:
  %t301 = load ptr, ptr %l163, !tbaa !29
  %t302 = load i64, ptr %t301, !range !{i64 0, i64 17}
  %t304 = icmp eq i64 %t302, 13
  store i1 %t304, ptr %l164, !tbaa !21
  br label %bb84
bb84:
  %t305 = load i1, ptr %l164, !tbaa !21
  br i1 %t305, label %bb85, label %bb86
bb85:
  %t306 = load ptr, ptr %l2, !tbaa !29
  %t308 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", ptr }, ptr %t308, i32 0, i32 1
  %t310 = load ptr, ptr %t309
  store ptr %t310, ptr %l16, !tbaa !29
  br label %bb87
bb86:
  br label %bb96
bb87:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t314 = load ptr, ptr %l16, !tbaa !29
  %t316 = getelementptr %"compiler/typed:Join", ptr %t314, i32 0, i32 0
  %t317 = load ptr, ptr %t316, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t312, ptr %t313, ptr %t317)
  br label %bb88
bb88:
  %t322 = load ptr, ptr %l16, !tbaa !29
  %t324 = getelementptr %"compiler/typed:Join", ptr %t322, i32 0, i32 2
  %t325 = load { i64, ptr }, ptr %t324, !tbaa !27
  store { i64, ptr } %t325, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t327 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t327, 0
  store i64 %t329, ptr %l19, !tbaa !24
  br label %bb89
bb89:
  %t331 = load i64, ptr %l18, !tbaa !24
  %t332 = load i64, ptr %l19, !tbaa !24
  %t335 = icmp slt i64 %t331, %t332
  %t337 = xor i1 %t335, true
  br i1 %t337, label %bb90, label %bb91
bb90:
  br label %bb95
bb91:
  br label %bb92
bb92:
  %t339 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t339, ptr %l182, !tbaa !27
  %t340 = load i64, ptr %l18, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr ptr, ptr %t343, i64 %t340
  %t345 = load ptr, ptr %t344, !tbaa !39
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load ptr, ptr %l1, !tbaa !29
  %t351 = getelementptr %"compiler/typed:Clause", ptr %t345, i32 0, i32 3
  %t352 = load ptr, ptr %t351, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t347, ptr %t348, ptr %t352)
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t356 = load i64, ptr %l18, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l18, !tbaa !24
  br label %bb89
bb95:
  br label %bb129
bb96:
  %t360 = load ptr, ptr %l2, !tbaa !29
  store ptr %t360, ptr %l191, !tbaa !29
  store i1 false, ptr %l192, !tbaa !21
  %t361 = load ptr, ptr %l191, !tbaa !29
  %t362 = icmp ne ptr %t361, null
  br i1 %t362, label %bb97, label %bb98
bb97:
  %t364 = load ptr, ptr %l191, !tbaa !29
  %t365 = load i64, ptr %t364, !range !{i64 0, i64 17}
  %t367 = icmp eq i64 %t365, 14
  store i1 %t367, ptr %l192, !tbaa !21
  br label %bb98
bb98:
  %t368 = load i1, ptr %l192, !tbaa !21
  br i1 %t368, label %bb99, label %bb100
bb99:
  %t369 = load ptr, ptr %l2, !tbaa !29
  %t371 = getelementptr { i64, [3 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", ptr }, ptr %t371, i32 0, i32 1
  %t373 = load ptr, ptr %t372
  store ptr %t373, ptr %l21, !tbaa !29
  br label %bb101
bb100:
  br label %bb117
bb101:
  %t375 = load ptr, ptr %l21, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Spawn", ptr %t375, i32 0, i32 0
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  store { i64, ptr } %t378, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t380 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t380, 0
  store i64 %t382, ptr %l24, !tbaa !24
  br label %bb102
bb102:
  %t384 = load i64, ptr %l23, !tbaa !24
  %t385 = load i64, ptr %l24, !tbaa !24
  %t388 = icmp slt i64 %t384, %t385
  %t390 = xor i1 %t388, true
  br i1 %t390, label %bb103, label %bb104
bb103:
  br label %bb108
bb104:
  br label %bb105
bb105:
  %t392 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t392, ptr %l205, !tbaa !27
  %t393 = load i64, ptr %l23, !tbaa !24
  %t395 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !27
  %t397 = getelementptr ptr, ptr %t396, i64 %t393
  %t398 = load ptr, ptr %t397, !tbaa !39
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t400, ptr %t401, ptr %t398)
  br label %bb106
bb106:
  br label %bb107
bb107:
  %t406 = load i64, ptr %l23, !tbaa !24
  %t408 = add i64 %t406, 1
  store i64 %t408, ptr %l23, !tbaa !24
  br label %bb102
bb108:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l1, !tbaa !29
  %t412 = load ptr, ptr %l21, !tbaa !29
  %t414 = getelementptr %"compiler/typed:Spawn", ptr %t412, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t410, ptr %t411, ptr %t415)
  br label %bb109
bb109:
  %t420 = load ptr, ptr %l21, !tbaa !29
  %t422 = getelementptr %"compiler/typed:Spawn", ptr %t420, i32 0, i32 2
  %t423 = load { i64, ptr }, ptr %t422, !tbaa !27
  store { i64, ptr } %t423, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t425 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t425, 0
  store i64 %t427, ptr %l28, !tbaa !24
  br label %bb110
bb110:
  %t429 = load i64, ptr %l27, !tbaa !24
  %t430 = load i64, ptr %l28, !tbaa !24
  %t433 = icmp slt i64 %t429, %t430
  %t435 = xor i1 %t433, true
  br i1 %t435, label %bb111, label %bb112
bb111:
  br label %bb116
bb112:
  br label %bb113
bb113:
  %t437 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t437, ptr %l226, !tbaa !27
  %t438 = load i64, ptr %l27, !tbaa !24
  %t440 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !27
  %t442 = getelementptr ptr, ptr %t441, i64 %t438
  %t443 = load ptr, ptr %t442, !tbaa !39
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load ptr, ptr %l1, !tbaa !29
  %t449 = getelementptr %"compiler/typed:TaskClause", ptr %t443, i32 0, i32 3
  %t450 = load ptr, ptr %t449, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t445, ptr %t446, ptr %t450)
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t454 = load i64, ptr %l27, !tbaa !24
  %t456 = add i64 %t454, 1
  store i64 %t456, ptr %l27, !tbaa !24
  br label %bb110
bb116:
  br label %bb129
bb117:
  %t458 = load ptr, ptr %l2, !tbaa !29
  store ptr %t458, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t459 = load ptr, ptr %l235, !tbaa !29
  %t460 = icmp ne ptr %t459, null
  br i1 %t460, label %bb118, label %bb119
bb118:
  %t462 = load ptr, ptr %l235, !tbaa !29
  %t463 = load i64, ptr %t462, !range !{i64 0, i64 17}
  %t465 = icmp eq i64 %t463, 15
  store i1 %t465, ptr %l236, !tbaa !21
  br label %bb119
bb119:
  %t466 = load i1, ptr %l236, !tbaa !21
  br i1 %t466, label %bb120, label %bb121
bb120:
  %t467 = load ptr, ptr %l2, !tbaa !29
  %t469 = getelementptr { i64, [3 x i64] }, ptr %t467, i32 0, i32 1
  %t470 = getelementptr { %"compiler/source:Span", ptr }, ptr %t469, i32 0, i32 1
  %t471 = load ptr, ptr %t470
  store ptr %t471, ptr %l30, !tbaa !29
  br label %bb122
bb121:
  br label %bb124
bb122:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load ptr, ptr %l1, !tbaa !29
  %t475 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t473, ptr %t474, ptr %t475)
  br label %bb123
bb123:
  br label %bb129
bb124:
  br i1 true, label %bb125, label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  call void @__olang_check_failed(ptr @olang_loc_a0ac7fb68fc18e63_e7992ce8b2dc82a7)
  unreachable
bb129:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca i1
  %l10 = alloca i1
  %l16 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t11, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t15, ptr %l10
  br label %bb6
bb6:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t17, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t24, { i64, ptr } %t25)
  store i32 %t28, ptr %l16
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load i32, ptr %l16, !tbaa !23
  store i32 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 52
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp slt i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i32 %t14, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 52
  store i32 %t15, ptr %t17, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 52
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnsMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l12 = alloca i32
  %l16 = alloca i1
  %l21 = alloca i1
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l41 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca %"compiler/source:Span"
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l75 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
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
  store i32 %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load i32, ptr %l12, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load i32, ptr %l3, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l21
  br label %bb4
bb4:
  %t26 = load i1, ptr %l21, !tbaa !21
  %t27 = xor i1 %t26, true
  store i1 %t27, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l16, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotRecord(ptr %v0, ptr %s0, ptr %t31, i32 %t32)
  store { i64, ptr } %t35, ptr %l26
  br label %bb9
bb9:
  %t36 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t36, ptr %l4, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t39, ptr %l28
  br label %bb10
bb10:
  %t40 = load i1, ptr %l28, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNullIn(ptr %v0, ptr %t41, i32 %t42, i64 0)
  store i1 %t45, ptr %l32
  br label %bb13
bb12:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb13:
  %t46 = load i1, ptr %l32, !tbaa !21
  store i1 %t46, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l29, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t48, ptr %l34, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  store i64 %t52, ptr %l36, !tbaa !24
  %t54 = load i64, ptr %l36, !tbaa !24
  %t55 = icmp eq i64 %t50, %t54
  br i1 %t55, label %bb17, label %bb18
bb16:
  br label %bb20
bb17:
  %t57 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l36, !tbaa !24
  %t62 = mul i64 %t61, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t58, ptr %t60, i64 %t62, i1 false)
  br label %bb19
bb18:
  %t63 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l38, !tbaa !24
  %t65 = load i64, ptr %l38, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l39, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l38, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t76, ptr %l4, !tbaa !27
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t77, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t79, ptr %l41
  br label %bb21
bb21:
  %t80 = load i1, ptr %l41, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l43, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t84, ptr %l44
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l1, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t85, i32 %t86)
  store { i64, ptr } %t89, ptr %l47
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t90 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l48, !tbaa !27
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t97, i32 %t98)
  store { i64, ptr } %t101, ptr %l51
  br label %bb25
bb25:
  %t102 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  %t104 = extractvalue { i64, ptr } %t102, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t113 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnsNotRecord(ptr %s3, ptr %s3, ptr %s0, ptr %s3, { i64, ptr } %t110, { i64, ptr } %t108, { i64, ptr } %t109)
  store %"compiler/diagmsg:Msg" %t113, ptr %l54
  br label %bb26
bb26:
  %t114 = load ptr, ptr %l43, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l44
  %t116 = load %"compiler/diagmsg:Msg", ptr %l54
  %t117 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t114, %"compiler/source:Span" %t115, %"compiler/diagmsg:Msg" %t116)
  store i64 %t117, ptr %l55
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = load i32, ptr %l3, !tbaa !23
  %t126 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s4, ptr %t122, i32 %t123)
  store { i64, ptr } %t126, ptr %l60
  br label %bb29
bb29:
  %t127 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  %t129 = extractvalue { i64, ptr } %t127, 1
  %t130 = mul i64 %t128, 4
  %t131 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  store i64 %t137, ptr %l7, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t139 = load i64, ptr %l6, !tbaa !24
  %t140 = load i64, ptr %l7, !tbaa !24
  %t143 = icmp slt i64 %t139, %t140
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb44
bb32:
  br label %bb33
bb33:
  %t147 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t147, ptr %l68, !tbaa !27
  %t148 = load i64, ptr %l6, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 %t148
  %t153 = load i32, ptr %t152, !tbaa !33
  store i32 %t153, ptr %l8, !tbaa !23
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load i32, ptr %l1, !tbaa !23
  %t160 = load i32, ptr %l8, !tbaa !23
  %t164 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t158, i32 %t159, i32 %t160)
  store i64 %t164, ptr %l75
  br label %bb34
bb34:
  %t165 = load i64, ptr %l75, !tbaa !24
  %t166 = icmp slt i64 %t165, 0
  br i1 %t166, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb36:
  br label %bb37
bb37:
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l77, !tbaa !29
  %t169 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t169, ptr %l78
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l1, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t170, i32 %t171)
  store { i64, ptr } %t174, ptr %l81
  br label %bb38
bb38:
  %t175 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  %t177 = extractvalue { i64, ptr } %t175, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  store { i64, ptr } %t181, ptr %l82, !tbaa !27
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i32, ptr %l3, !tbaa !23
  %t186 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t182, i32 %t183)
  store { i64, ptr } %t186, ptr %l85
  br label %bb39
bb39:
  %t187 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l86, !tbaa !27
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l8, !tbaa !23
  %t198 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t194, i32 %t195)
  store { i64, ptr } %t198, ptr %l89
  br label %bb40
bb40:
  %t199 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t202 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnNamedLikeMethod(ptr %s5, ptr %s5, ptr %v0, ptr %s5, { i64, ptr } %t199, { i64, ptr } %t200, { i64, ptr } %t201)
  store %"compiler/diagmsg:Msg" %t202, ptr %l90
  br label %bb41
bb41:
  %t203 = load ptr, ptr %l77, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l78
  %t205 = load %"compiler/diagmsg:Msg", ptr %l90
  %t206 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t203, %"compiler/source:Span" %t204, %"compiler/diagmsg:Msg" %t205)
  store i64 %t206, ptr %l91
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb43:
  %t208 = load i64, ptr %l6, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l6, !tbaa !24
  br label %bb30
bb44:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprehension(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/check:litBuilder"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i32
  %l15 = alloca i1
  %l20 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %l29 = alloca i32
  %l34 = alloca i32
  %l36 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l46 = alloca %"compiler/check:litBuilder"
  %l53 = alloca ptr
  %l56 = alloca i1
  %l58 = alloca i1
  %l62 = alloca %"compiler/check:reflList"
  %l64 = alloca i1
  %l68 = alloca i1
  %l73 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l97 = alloca ptr
  %l102 = alloca ptr
  %l105 = alloca i32
  %l110 = alloca ptr
  %l117 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Compr", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i32 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i32, ptr %l11, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load i32, ptr %l3, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l20
  br label %bb4
bb4:
  %t26 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t28 = trunc i64 19 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l23, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t33, ptr %l24
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %l25, !tbaa !29
  %t35 = load i32, ptr %l3, !tbaa !23
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t39 = icmp ne i32 %t35, %t36
  br i1 %t39, label %bb8, label %bb9
bb7:
  br label %bb13
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l34
  br label %bb10
bb9:
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t51, ptr %l29, !tbaa !23
  br label %bb11
bb10:
  %t53 = load i32, ptr %l34, !tbaa !23
  store i32 %t53, ptr %l29, !tbaa !23
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l23, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l24
  %t56 = load ptr, ptr %l25, !tbaa !29
  %t57 = load i32, ptr %l29, !tbaa !23
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprArray(ptr %v0, ptr %v1, ptr %v2, ptr %t54, %"compiler/source:Span" %t55, ptr %t56, i32 %t57)
  store ptr %t58, ptr %l36
  br label %bb12
bb12:
  %t59 = load ptr, ptr %l36, !tbaa !29
  store ptr %t59, ptr %rv
  br label %ret
bb13:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Compr", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4c9c833eaa4b60d2_fcb8574bf2eb70de)
  unreachable
bb15:
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Compr", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t70)
  store %"compiler/source:Span" %t72, ptr %l42
  br label %bb17
bb17:
  %t73 = load %"compiler/source:Span", ptr %l42
  store %"compiler/source:Span" %t73, ptr %l4
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l4
  %t76 = load i32, ptr %l3, !tbaa !23
  %t80 = call %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %t74, %"compiler/source:Span" %t75, i32 %t76)
  store %"compiler/check:litBuilder" %t80, ptr %l46
  br label %bb18
bb18:
  %t81 = load %"compiler/check:litBuilder", ptr %l46
  store %"compiler/check:litBuilder" %t81, ptr %l5
  %t82 = getelementptr %"compiler/check:litBuilder", ptr %l5, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t85 = icmp slt i64 %t83, 0
  br i1 %t85, label %bb19, label %bb20
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCompr(ptr %v0, ptr %v1, ptr %t87, ptr %t88)
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load %"compiler/source:Span", ptr %l1
  %t95 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t91, %"compiler/source:Span" %t92)
  store ptr %t95, ptr %l53
  br label %bb22
bb22:
  %t96 = load ptr, ptr %l53, !tbaa !29
  store ptr %t96, ptr %rv
  br label %ret
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisVec(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l56
  br label %bb24
bb24:
  %t102 = load i1, ptr %l56, !tbaa !21
  %t103 = xor i1 %t102, true
  br i1 %t103, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb28
bb26:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Compr", ptr %t106, i32 0, i32 4
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t112 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t105, ptr %t109)
  store %"compiler/check:reflList" %t112, ptr %l62
  br label %bb27
bb27:
  %t113 = getelementptr %"compiler/check:reflList", ptr %l62, i32 0, i32 0
  %t114 = load i1, ptr %t113, !tbaa !21
  store i1 %t114, ptr %l58, !tbaa !21
  br label %bb28
bb28:
  %t116 = load i1, ptr %l58, !tbaa !21
  br i1 %t116, label %bb29, label %bb30
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:litBuilder", ptr %l5, i32 0, i32 0
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = load i32, ptr %l3, !tbaa !23
  %t124 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalksAny(ptr %v0, ptr %t117, i64 %t119, i32 %t120)
  store i1 %t124, ptr %l68
  br label %bb31
bb30:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb32
bb31:
  %t125 = load i1, ptr %l68, !tbaa !21
  store i1 %t125, ptr %l64, !tbaa !21
  br label %bb32
bb32:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb33, label %bb34
bb33:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l1
  %t129 = load ptr, ptr %l2, !tbaa !29
  %t130 = getelementptr %"compiler/check:litBuilder", ptr %l5, i32 0, i32 1
  %t131 = load i32, ptr %t130, !tbaa !23
  %t136 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprWalk(ptr %v0, ptr %v1, ptr %v2, ptr %t127, %"compiler/source:Span" %t128, ptr %t129, i32 %t131)
  store ptr %t136, ptr %l73
  br label %bb35
bb34:
  br label %bb49
bb35:
  %t137 = load ptr, ptr %l73, !tbaa !29
  store ptr %t137, ptr %l6, !tbaa !29
  %t138 = load ptr, ptr %l6, !tbaa !29
  %t140 = icmp eq ptr %t138, null
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb36, label %bb37
bb36:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l77, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t145, ptr %l78
  %t146 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t146, ptr %l79
  %t147 = getelementptr %"compiler/check:litBuilder", ptr %l5, i32 0, i32 0
  %t148 = load i64, ptr %t147, !tbaa !24
  store i64 %t148, ptr %l80, !tbaa !24
  %t149 = icmp sge i64 0, 0
  br i1 %t149, label %bb38, label %bb39
bb37:
  br label %bb44
bb38:
  %t151 = icmp sle i64 0, 1152921504606846975
  br i1 %t151, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_c88c63bc20ded7e7_43b7d4bfded0708b)
  unreachable
bb40:
  %t153 = mul i64 0, 8
  %t154 = insertvalue { i64, ptr } undef, i64 0, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t155, ptr %l83, !tbaa !27
  %t156 = load ptr, ptr %l6, !tbaa !29
  %t157 = mul i64 1, 8
  %t158 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t157)
  %t159 = insertvalue { i64, ptr } undef, i64 1, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l85, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr ptr, ptr %t163, i64 0
  store ptr %t156, ptr %t164, !tbaa !39
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t169 = getelementptr %"compiler/check:litBuilder", ptr %l5, i32 0, i32 0
  %t170 = load i64, ptr %t169, !tbaa !24
  %t171 = load i32, ptr %l3, !tbaa !23
  %t175 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v2, ptr %t168, i64 %t170, i32 %t171)
  store { i64, ptr } %t175, ptr %l90
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_c88c63bc20ded7e7_43b7d4bfded0708b)
  unreachable
bb42:
  %t176 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 0
  %t178 = extractvalue { i64, ptr } %t176, 1
  %t179 = mul i64 %t177, 4
  %t180 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  %t183 = load ptr, ptr %l77, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l78
  %t185 = load %"compiler/source:Span", ptr %l79
  %t186 = load i64, ptr %l80, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t190 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %v2, ptr %t183, %"compiler/source:Span" %t184, %"compiler/source:Span" %t185, i64 %t186, ptr null, { i64, ptr } %t187, { i64, ptr } %t188, { i64, ptr } %t182)
  store ptr %t190, ptr %l92
  br label %bb43
bb43:
  %t191 = load ptr, ptr %l92, !tbaa !29
  store ptr %t191, ptr %rv
  br label %ret
bb44:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/check:Checker", ptr %t192, i32 0, i32 126
  %t195 = load i1, ptr %t194, !tbaa !21
  br i1 %t195, label %bb45, label %bb46
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l1
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t197, %"compiler/source:Span" %t198)
  store ptr %t201, ptr %l97
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t202 = load ptr, ptr %l97, !tbaa !29
  store ptr %t202, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l1
  %t205 = load ptr, ptr %l2, !tbaa !29
  %t206 = getelementptr %"compiler/check:litBuilder", ptr %l5, i32 0, i32 1
  %t207 = load i32, ptr %t206, !tbaa !23
  %t212 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprArray(ptr %v0, ptr %v1, ptr %v2, ptr %t203, %"compiler/source:Span" %t204, ptr %t205, i32 %t207)
  store ptr %t212, ptr %l102
  br label %bb50
bb50:
  %t213 = load ptr, ptr %l102, !tbaa !29
  store ptr %t213, ptr %l7, !tbaa !29
  %t214 = load ptr, ptr %l7, !tbaa !29
  %t217 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t214)
  store i32 %t217, ptr %l105
  br label %bb51
bb51:
  %t218 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t219 = load i32, ptr %l105, !tbaa !23
  %t221 = icmp eq i32 %t219, %t218
  br i1 %t221, label %bb52, label %bb53
bb52:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load %"compiler/source:Span", ptr %l1
  %t227 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t223, %"compiler/source:Span" %t224)
  store ptr %t227, ptr %l110
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t228 = load ptr, ptr %l110, !tbaa !29
  store ptr %t228, ptr %rv
  br label %ret
bb55:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l1
  %t231 = load %"compiler/source:Span", ptr %l4
  %t232 = load %"compiler/check:litBuilder", ptr %l5
  %t233 = load i32, ptr %l3, !tbaa !23
  %t234 = load ptr, ptr %l7, !tbaa !29
  %t241 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v2, ptr %v2, ptr %t229, %"compiler/source:Span" %t230, %"compiler/source:Span" %t231, %"compiler/check:litBuilder" %t232, i32 %t233, ptr %t234)
  store ptr %t241, ptr %l117
  br label %bb56
bb56:
  %t242 = load ptr, ptr %l117, !tbaa !29
  store ptr %t242, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecked(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l12 = alloca i1
  %l16 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i32
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i1
  %l38 = alloca i1
  %l45 = alloca ptr
  %l61 = alloca i1
  %l65 = alloca i1
  %l69 = alloca i1
  %l72 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 129
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i1, ptr %l12, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %t11, i64 %t12)
  store i1 %t15, ptr %l16
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 128
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H383d843b0981793a095b02d794e40659(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  %t23 = extractvalue { i32, ptr } %t22, 1
  %t24 = extractvalue { i32, ptr } %t22, 0
  store i32 %t24, ptr %l22
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb7, label %ok.26, !prof !99
ok.26:
  store ptr %t23, ptr %l21
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l21, !tbaa !29
  store ptr %t27, ptr %l17, !tbaa !29
  br label %bb9
bb7:
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t28 = load ptr, ptr %l17, !tbaa !29
  store ptr %t28, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/typed:ContractInfo", ptr %t29, i32 0, i32 2
  store ptr %t31, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  %t33 = load i64, ptr %l5, !tbaa !24
  store i64 %t33, ptr %l25, !tbaa !24
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l27
  br label %bb11
bb11:
  %t37 = load i64, ptr %l25, !tbaa !24
  %t38 = load i64, ptr %l27, !tbaa !24
  %t39 = icmp slt i64 %t37, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t43, i64 %t44)
  store i64 %t47, ptr %l32
  br label %bb15
bb15:
  %t48 = load i64, ptr %l32, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  %t49 = load i1, ptr %l3, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb19
bb17:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 140
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t53, i64 %t54)
  store i1 %t57, ptr %l38
  br label %bb18
bb18:
  %t58 = load i1, ptr %l38, !tbaa !21
  store i1 %t58, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t59 = load i1, ptr %l34, !tbaa !21
  store i1 %t59, ptr %l3, !tbaa !21
  br label %bb20
bb20:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l5, !tbaa !24
  br label %bb10
bb21:
  %t64 = load i1, ptr %l3, !tbaa !21
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  br label %bb24
bb24:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %s0, ptr %t68, i64 %t69)
  store ptr %t72, ptr %l45
  br label %bb25
bb25:
  %t73 = load ptr, ptr %l45, !tbaa !29
  store ptr %t73, ptr %l7, !tbaa !29
  %t74 = load ptr, ptr %l7, !tbaa !29
  %t76 = icmp eq ptr %t74, null
  br i1 %t76, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  br label %bb28
bb28:
  %t78 = load ptr, ptr %l7, !tbaa !29
  %t80 = getelementptr %"compiler/check:ctSource", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/ast:ContractBlock", ptr %t81, i32 0, i32 0
  %t84 = load %"compiler/source:Span", ptr %t83
  store %"compiler/source:Span" %t84, ptr %l8
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/load:Loader", ptr %t92, i32 0, i32 4
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t98 = getelementptr %"compiler/typed:ContractInfo", ptr %t96, i32 0, i32 1
  %t99 = load i64, ptr %t98, !tbaa !24
  %t100 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t101 = load i32, ptr %t100, !tbaa !23
  %t103 = sext i32 %t101 to i64
  %t104 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = sext i32 %t105 to i64
  %t112 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %t95, i64 %t99, i64 %t103, i64 %t107, i64 0)
  store i1 %t112, ptr %l61
  br label %bb29
bb29:
  %t113 = load i1, ptr %l61, !tbaa !21
  br i1 %t113, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 129
  %t117 = load i64, ptr %l1, !tbaa !24
  %t120 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eRemove_3cI64_2c_20Bool_3e(ptr %v0, ptr %t116, i64 %t117)
  store i1 %t120, ptr %l65
  br label %bb33
bb33:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 128
  %t124 = load i64, ptr %l1, !tbaa !24
  %t127 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H044304b59760c17b661e6227d2ca1ac9(ptr %v0, ptr %t123, i64 %t124)
  store i1 %t127, ptr %l69
  br label %bb34
bb34:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l1, !tbaa !24
  %t132 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %t128, i64 %t129)
  store i1 %t132, ptr %l72
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:Desc"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca %"compiler/generic:Desc"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l13 = alloca i32
  %l19 = alloca i1
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i32
  %l60 = alloca { i64, ptr }
  %l66 = alloca i32
  %l72 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l106 = alloca i64
  %l107 = alloca { i64, ptr }
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l117 = alloca i1
  %l118 = alloca i32
  %l123 = alloca { i64, ptr }
  %l132 = alloca i32
  %l135 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l137 = alloca i64
  %l138 = alloca { i64, ptr }
  %l142 = alloca %"compiler/generic:Desc"
  %l149 = alloca ptr
  %l157 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l167 = alloca i64
  %l168 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l187 = alloca i64
  %l188 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l191 = alloca i64
  %l192 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/generic:Desc" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t4, i32 %t6)
  store i32 %t9, ptr %l13
  br label %bb1
bb1:
  %t10 = load i32, ptr %l13, !tbaa !23
  store i32 %t10, ptr %l2, !tbaa !23
  %t11 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t16 = icmp eq i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l19
  br label %bb4
bb3:
  br label %bb14
bb4:
  %t23 = load i1, ptr %l19, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s1, ptr %t27, i32 %t28)
  store { i64, ptr } %t31, ptr %l24
  br label %bb7
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l2, !tbaa !23
  %t37 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t38 = load i64, ptr %t37, !tbaa !24
  %t42 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseFieldNames(ptr %v0, ptr %s1, ptr %t35, i32 %t36, i64 %t38)
  store { i64, ptr } %t42, ptr %l29
  br label %bb8
bb7:
  %t43 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t43, ptr %l20, !tbaa !27
  br label %bb9
bb8:
  %t44 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t44, ptr %l20, !tbaa !27
  br label %bb9
bb9:
  %t45 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t45, ptr %l3, !tbaa !27
  %t46 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t53 = icmp slt i64 %t47, %t50
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 %t57
  %t62 = load i32, ptr %t61, !tbaa !33
  %t65 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t55, i32 %t62)
  store { i64, ptr } %t65, ptr %l38
  br label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t66, ptr %l34, !tbaa !27
  br label %bb13
bb12:
  %t68 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t70)
  call void @olang_textcopy(ptr %t71, ptr %t69, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l34, !tbaa !27
  br label %bb13
bb13:
  %t75 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l42, !tbaa !24
  %t77 = load i64, ptr %l42, !tbaa !24
  %t78 = mul i64 %t77, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l43, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l42, !tbaa !24
  %t87 = mul i64 %t86, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t83, ptr %t85, i64 %t87, i1 false)
  %t88 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t88, ptr %l34, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t89 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
bb14:
  %t90 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t95 = icmp eq i64 %t91, %t92
  br i1 %t95, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l2, !tbaa !23
  %t101 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l49
  br label %bb17
bb16:
  br label %bb38
bb17:
  %t102 = load i1, ptr %l49, !tbaa !21
  br i1 %t102, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l50, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  store ptr %t109, ptr %l53, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l2, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l58
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t120 = load ptr, ptr %l53, !tbaa !29
  %t121 = load i32, ptr %l58, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t122, ptr %l59
  br label %bb21
bb21:
  %t123 = load ptr, ptr %l50, !tbaa !29
  %t124 = load i32, ptr %l59, !tbaa !23
  %t125 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t123, i32 %t124)
  store { i64, ptr } %t125, ptr %l60
  br label %bb22
bb22:
  %t126 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t127, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t131, ptr %rv
  br label %ret
bb23:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %l2, !tbaa !23
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l66
  br label %bb24
bb24:
  %t143 = load i32, ptr %l66, !range !{i32 0, i32 33}
  %t145 = trunc i64 32 to i32
  %t146 = icmp eq i32 %t143, %t145
  br i1 %t146, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t152 = load i32, ptr %l2, !tbaa !23
  %t155 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %s6, ptr %t151, i32 %t152)
  store { i64, ptr } %t155, ptr %l72
  br label %bb27
bb26:
  br label %bb32
bb27:
  %t156 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t156, ptr %l4, !tbaa !27
  %t157 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t158 = load i64, ptr %t157, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t164 = icmp slt i64 %t158, %t161
  br i1 %t164, label %bb28, label %bb29
bb28:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t170 = load i32, ptr %l2, !tbaa !23
  %t171 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t172 = load i64, ptr %t171, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr i64, ptr %t175, i64 %t172
  %t177 = load i64, ptr %t176, !tbaa !34
  %t181 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValWordText(ptr %v0, ptr %v1, ptr %t169, i32 %t170, i64 %t177)
  store { i64, ptr } %t181, ptr %l83
  br label %bb30
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t182, ptr %l77, !tbaa !27
  br label %bb31
bb30:
  %t184 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t184, ptr %l77, !tbaa !27
  br label %bb31
bb31:
  %t185 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  store i64 %t186, ptr %l86, !tbaa !24
  %t187 = load i64, ptr %l86, !tbaa !24
  %t188 = mul i64 %t187, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t188)
  %t190 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  store { i64, ptr } %t191, ptr %l87, !tbaa !27
  %t192 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = load i64, ptr %l86, !tbaa !24
  %t197 = mul i64 %t196, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t193, ptr %t195, i64 %t197, i1 false)
  %t198 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t198, ptr %l77, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  %t199 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t199, ptr %rv
  br label %ret
bb32:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/check:Checker", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = getelementptr %"compiler/generic:Program", ptr %t203, i32 0, i32 2
  %t206 = load i32, ptr %l2, !tbaa !23
  %t209 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s3, ptr %t205, i32 %t206)
  store { i64, ptr } %t209, ptr %l92
  br label %bb33
bb33:
  %t210 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t210, ptr %l5, !tbaa !27
  %t211 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t212 = load i64, ptr %t211, !tbaa !24
  %t213 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t218 = icmp slt i64 %t212, %t215
  br i1 %t218, label %bb34, label %bb35
bb34:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t221, ptr %l99, !tbaa !27
  %t222 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t223 = load i64, ptr %t222, !tbaa !24
  %t225 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr i32, ptr %t226, i64 %t223
  %t228 = load i32, ptr %t227, !tbaa !33
  %t231 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s3, ptr %t220, i32 %t228)
  store { i64, ptr } %t231, ptr %l102
  br label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l104, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t232, ptr %l97, !tbaa !27
  br label %bb37
bb36:
  %t234 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t237 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t236)
  call void @olang_textcopy(ptr %t237, ptr %t235, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l97, !tbaa !27
  br label %bb37
bb37:
  %t241 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 0
  store i64 %t242, ptr %l106, !tbaa !24
  %t243 = load i64, ptr %l106, !tbaa !24
  %t244 = mul i64 %t243, 1
  %t245 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t244)
  %t246 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  store { i64, ptr } %t247, ptr %l107, !tbaa !27
  %t248 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = load i64, ptr %l106, !tbaa !24
  %t253 = mul i64 %t252, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t249, ptr %t251, i64 %t253, i1 false)
  %t254 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t254, ptr %l97, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  %t255 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t255, ptr %rv
  br label %ret
bb38:
  %t256 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t257 = load i64, ptr %t256, !tbaa !24
  %t258 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t261 = icmp eq i64 %t257, %t258
  br i1 %t261, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s8
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/check:Checker", ptr %t263, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t267 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t268 = load i64, ptr %t267, !tbaa !24
  %t271 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t266, i64 %t268)
  store ptr %t271, ptr %l114
  br label %bb41
bb40:
  br label %bb47
bb41:
  %t272 = load ptr, ptr %l114, !tbaa !29
  store ptr %t272, ptr %l6, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l115, !tbaa !29
  %t274 = load ptr, ptr %l6, !tbaa !29
  %t276 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t274)
  store i1 %t276, ptr %l117
  br label %bb42
bb42:
  %t277 = load i1, ptr %l117, !tbaa !21
  br i1 %t277, label %bb43, label %bb44
bb43:
  %t278 = load ptr, ptr %l6, !tbaa !29
  %t280 = getelementptr %"compiler/ast:Func", ptr %t278, i32 0, i32 10
  %t281 = load i32, ptr %t280, !tbaa !23
  store i32 %t281, ptr %l118, !tbaa !23
  br label %bb45
bb44:
  %t283 = load ptr, ptr %l6, !tbaa !29
  %t285 = getelementptr %"compiler/ast:Func", ptr %t283, i32 0, i32 2
  %t286 = load i32, ptr %t285, !tbaa !23
  store i32 %t286, ptr %l118, !tbaa !23
  br label %bb45
bb45:
  %t288 = load ptr, ptr %l115, !tbaa !29
  %t289 = load i32, ptr %l118, !tbaa !23
  %t290 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s8, ptr %t288, i32 %t289)
  store { i64, ptr } %t290, ptr %l123
  br label %bb46
bb46:
  %t291 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 1
  %t293 = extractvalue { i64, ptr } %t291, 0
  %t294 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t293)
  call void @olang_textcopy(ptr %t294, ptr %t292, i64 %t293)
  %t295 = insertvalue { i64, ptr } undef, i64 %t293, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t294, 1
  call void @__olang_scope_close(ptr %s8)
  store { i64, ptr } %t296, ptr %rv
  br label %ret
bb47:
  %t298 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t299 = load i64, ptr %t298, !tbaa !24
  %t300 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t303 = icmp eq i64 %t299, %t300
  br i1 %t303, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s10
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/check:Checker", ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t308, i32 0, i32 2
  %t311 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t312 = load i32, ptr %t311, !tbaa !23
  %t315 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t310, i32 %t312)
  store i32 %t315, ptr %l132
  br label %bb50
bb49:
  br label %bb68
bb50:
  %t316 = load i32, ptr %l132, !range !{i32 0, i32 33}
  %t318 = trunc i64 21 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb51, label %bb52
bb51:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l135, !tbaa !27
  %t321 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t321, ptr %l136, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t322, 0
  store i64 %t323, ptr %l137, !tbaa !24
  %t324 = load i64, ptr %l137, !tbaa !24
  %t325 = mul i64 %t324, 1
  %t326 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t325)
  %t327 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t328 = insertvalue { i64, ptr } %t327, ptr %t326, 1
  store { i64, ptr } %t328, ptr %l138, !tbaa !27
  %t329 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !27
  %t331 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = load i64, ptr %l137, !tbaa !24
  %t334 = mul i64 %t333, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t330, ptr %t332, i64 %t334, i1 false)
  %t335 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t335, ptr %l136, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  %t336 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t336, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/check:Checker", ptr %t337, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t341 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t342 = load i32, ptr %t341, !tbaa !23
  %t345 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t340, i32 %t342)
  store %"compiler/generic:Desc" %t345, ptr %l142
  br label %bb54
bb54:
  %t346 = load %"compiler/generic:Desc", ptr %l142
  store %"compiler/generic:Desc" %t346, ptr %l7
  %t347 = getelementptr %"compiler/generic:Desc", ptr %l7, i32 0, i32 0
  %t348 = load i64, ptr %t347, !tbaa !24
  %t349 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t352 = icmp eq i64 %t348, %t349
  br i1 %t352, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s12
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t356 = getelementptr %"compiler/check:Checker", ptr %t354, i32 0, i32 1
  %t357 = load ptr, ptr %t356, !tbaa !29
  %t358 = getelementptr %"compiler/generic:Desc", ptr %l7, i32 0, i32 2
  %t359 = load i64, ptr %t358, !tbaa !24
  %t362 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t357, i64 %t359)
  store ptr %t362, ptr %l149
  br label %bb57
bb56:
  br label %bb62
bb57:
  %t363 = load ptr, ptr %l149, !tbaa !29
  %t365 = getelementptr %"compiler/ast:Func", ptr %t363, i32 0, i32 3
  %t366 = load ptr, ptr %t365, !tbaa !29
  %t368 = getelementptr %"compiler/ast:Sig", ptr %t366, i32 0, i32 0
  %t369 = load { i64, ptr }, ptr %t368, !tbaa !27
  store { i64, ptr } %t369, ptr %l8, !tbaa !27
  %t371 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t372 = load i64, ptr %t371, !tbaa !24
  %t373 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t378 = icmp slt i64 %t372, %t375
  br i1 %t378, label %bb58, label %bb59
bb58:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t381, ptr %l159, !tbaa !27
  %t382 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t383 = load i64, ptr %t382, !tbaa !24
  %t385 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr ptr, ptr %t386, i64 %t383
  %t388 = load ptr, ptr %t387, !tbaa !39
  %t390 = getelementptr %"compiler/ast:Param", ptr %t388, i32 0, i32 1
  %t391 = load i32, ptr %t390, !tbaa !23
  %t394 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s12, ptr %t380, i32 %t391)
  store { i64, ptr } %t394, ptr %l163
  br label %bb60
bb59:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l165, !tbaa !27
  %t395 = load { i64, ptr }, ptr %l165, !tbaa !27
  store { i64, ptr } %t395, ptr %l157, !tbaa !27
  br label %bb61
bb60:
  %t397 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t398 = extractvalue { i64, ptr } %t397, 1
  %t399 = extractvalue { i64, ptr } %t397, 0
  %t400 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t399)
  call void @olang_textcopy(ptr %t400, ptr %t398, i64 %t399)
  %t401 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  store { i64, ptr } %t402, ptr %l157, !tbaa !27
  br label %bb61
bb61:
  %t404 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t404, 0
  store i64 %t405, ptr %l167, !tbaa !24
  %t406 = load i64, ptr %l167, !tbaa !24
  %t407 = mul i64 %t406, 1
  %t408 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t407)
  %t409 = insertvalue { i64, ptr } undef, i64 %t406, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t408, 1
  store { i64, ptr } %t410, ptr %l168, !tbaa !27
  %t411 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !27
  %t413 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !27
  %t415 = load i64, ptr %l167, !tbaa !24
  %t416 = mul i64 %t415, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t412, ptr %t414, i64 %t416, i1 false)
  %t417 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t417, ptr %l157, !tbaa !27
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s10)
  %t418 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t418, ptr %rv
  br label %ret
bb62:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr %"compiler/check:Checker", ptr %t419, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !29
  %t423 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t424 = load i32, ptr %t423, !tbaa !23
  %t427 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %s10, ptr %t422, i32 %t424)
  store { i64, ptr } %t427, ptr %l172
  br label %bb63
bb63:
  %t428 = load { i64, ptr }, ptr %l172, !tbaa !27
  store { i64, ptr } %t428, ptr %l9, !tbaa !27
  %t429 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t430 = load i64, ptr %t429, !tbaa !24
  %t431 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t436 = icmp slt i64 %t430, %t433
  br i1 %t436, label %bb64, label %bb65
bb64:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t439, ptr %l179, !tbaa !27
  %t440 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t441 = load i64, ptr %t440, !tbaa !24
  %t443 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !27
  %t445 = getelementptr ptr, ptr %t444, i64 %t441
  %t446 = load ptr, ptr %t445, !tbaa !39
  %t448 = getelementptr %"compiler/ast:Param", ptr %t446, i32 0, i32 1
  %t449 = load i32, ptr %t448, !tbaa !23
  %t452 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s10, ptr %t438, i32 %t449)
  store { i64, ptr } %t452, ptr %l183
  br label %bb66
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l185, !tbaa !27
  %t453 = load { i64, ptr }, ptr %l185, !tbaa !27
  store { i64, ptr } %t453, ptr %l177, !tbaa !27
  br label %bb67
bb66:
  %t455 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t456 = extractvalue { i64, ptr } %t455, 1
  %t457 = extractvalue { i64, ptr } %t455, 0
  %t458 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t457)
  call void @olang_textcopy(ptr %t458, ptr %t456, i64 %t457)
  %t459 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t460 = insertvalue { i64, ptr } %t459, ptr %t458, 1
  store { i64, ptr } %t460, ptr %l177, !tbaa !27
  br label %bb67
bb67:
  %t462 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t463 = extractvalue { i64, ptr } %t462, 0
  store i64 %t463, ptr %l187, !tbaa !24
  %t464 = load i64, ptr %l187, !tbaa !24
  %t465 = mul i64 %t464, 1
  %t466 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t465)
  %t467 = insertvalue { i64, ptr } undef, i64 %t464, 0
  %t468 = insertvalue { i64, ptr } %t467, ptr %t466, 1
  store { i64, ptr } %t468, ptr %l188, !tbaa !27
  %t469 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !27
  %t471 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !27
  %t473 = load i64, ptr %l187, !tbaa !24
  %t474 = mul i64 %t473, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t470, ptr %t472, i64 %t474, i1 false)
  %t475 = load { i64, ptr }, ptr %l188, !tbaa !27
  store { i64, ptr } %t475, ptr %l177, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  %t476 = load { i64, ptr }, ptr %l177, !tbaa !27
  store { i64, ptr } %t476, ptr %rv
  br label %ret
bb68:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l189, !tbaa !27
  %t477 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t477, ptr %l190, !tbaa !27
  %t478 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t478, 0
  store i64 %t479, ptr %l191, !tbaa !24
  %t480 = load i64, ptr %l191, !tbaa !24
  %t481 = mul i64 %t480, 1
  %t482 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t481)
  %t483 = insertvalue { i64, ptr } undef, i64 %t480, 0
  %t484 = insertvalue { i64, ptr } %t483, ptr %t482, 1
  store { i64, ptr } %t484, ptr %l192, !tbaa !27
  %t485 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t486 = load ptr, ptr %t485, !tbaa !27
  %t487 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t488 = load ptr, ptr %t487, !tbaa !27
  %t489 = load i64, ptr %l191, !tbaa !24
  %t490 = mul i64 %t489, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t486, ptr %t488, i64 %t490, i1 false)
  %t491 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t491, ptr %l190, !tbaa !27
  %t492 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t492, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edtorBody(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i32
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca ptr
  %l56 = alloca ptr
  %l59 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca i32
  %l67 = alloca i32
  %l70 = alloca ptr
  %l71 = alloca i64
  %l73 = alloca { i64, ptr }
  %l77 = alloca i32
  %l78 = alloca i32
  %l79 = alloca ptr
  %l81 = alloca { i64, [2 x i64] }
  %l82 = alloca i32
  %l83 = alloca i64
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t150 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i64, ptr %l14, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l21, !tbaa !24
  store i64 %t33, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l18, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 14
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l42
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l42, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 1
  %t63 = load { i64, [2 x i64] }, ptr %t62
  store { i64, [2 x i64] } %t63, ptr %l9
  %t65 = load { i64, [2 x i64] }, ptr %l9
  %t67 = extractvalue { i64, [2 x i64] } %t65, 0
  %t68 = icmp eq i64 %t67, 3
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t71 = getelementptr { i32 }, ptr %t70, i32 0, i32 0
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l10, !tbaa !23
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t74 = load i32, ptr %l10, !tbaa !23
  %t75 = load i32, ptr %l1, !tbaa !23
  %t78 = icmp eq i32 %t74, %t75
  br i1 %t78, label %bb16, label %bb17
bb16:
  %t80 = load i64, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t80, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_ef1b55de5ffdb81c_e69d95fc2038dfd0)
  unreachable
bb24:
  br label %bb25
bb25:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb8
bb26:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  store ptr %t91, ptr %l56, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  store ptr %t97, ptr %l59, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 2
  %t104 = load i32, ptr %l1, !tbaa !23
  %t105 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t103, i32 %t104, i64 %t105)
  store i32 %t109, ptr %l65
  br label %bb27
bb27:
  %t110 = load ptr, ptr %l59, !tbaa !29
  %t111 = load i32, ptr %l65, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t110, i32 %t111)
  store i32 %t112, ptr %l66
  br label %bb28
bb28:
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t113, ptr %l67, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  store ptr %t119, ptr %l70, !tbaa !29
  %t120 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleDtor, !tbaa !24
  store i64 %t120, ptr %l71, !tbaa !24
  %t121 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t122 = mul i64 1, 8
  %t123 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t122)
  %t124 = insertvalue { i64, ptr } undef, i64 1, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  store { i64, ptr } %t125, ptr %l73, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i64, ptr %t128, i64 0
  store i64 %t121, ptr %t129, !tbaa !34
  %t130 = icmp sge i64 0, 0
  br i1 %t130, label %bb29, label %bb30
bb29:
  %t132 = icmp sle i64 0, 1152921504606846975
  br i1 %t132, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_faa783041b9a956_eb67b4cbf5431592)
  unreachable
bb31:
  %t134 = mul i64 0, 8
  %t135 = insertvalue { i64, ptr } undef, i64 0, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t137 = load ptr, ptr %l70, !tbaa !29
  %t138 = load i64, ptr %l71, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t141 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s0, ptr %s0, ptr %t137, i64 %t138, { i64, ptr } %t139, { i64, ptr } %t136)
  store i32 %t141, ptr %l77
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_faa783041b9a956_eb67b4cbf5431592)
  unreachable
bb33:
  %t142 = load ptr, ptr %l56, !tbaa !29
  %t143 = load i32, ptr %l66, !tbaa !23
  %t144 = load i32, ptr %l67, !tbaa !23
  %t145 = load i32, ptr %l77, !tbaa !23
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t142, i32 %t143, i32 %t144, i32 0, i32 %t145, i64 0, i1 false, i32 0, i64 0)
  store i32 %t146, ptr %l78
  br label %bb34
bb34:
  %t147 = load i32, ptr %l78, !tbaa !23
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l79, !tbaa !29
  %t149 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t150
  %t151 = getelementptr { i64, [2 x i64] }, ptr %t150, i32 0, i32 0
  store i64 3, ptr %t151
  %t153 = insertvalue { i32 } undef, i32 %t149, 0
  %t154 = getelementptr { i64, [2 x i64] }, ptr %t150, i32 0, i32 1
  store { i32 } %t153, ptr %t154
  %t155 = load { i64, [2 x i64] }, ptr %t150
  store { i64, [2 x i64] } %t155, ptr %l81
  store i32 %t147, ptr %l82, !tbaa !23
  store i64 %a2, ptr %l83, !tbaa !24
  %t158 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t158, ptr %l84
  br label %bb35
bb35:
  %t159 = load ptr, ptr %l79, !tbaa !29
  %t160 = load { i64, [2 x i64] }, ptr %l81
  %t161 = load i32, ptr %l82, !tbaa !23
  %t162 = load i64, ptr %l83, !tbaa !24
  %t163 = load %"compiler/source:Span", ptr %l84
  %t164 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t159, { i64, [2 x i64] } %t160, i32 %t161, i64 %t162, %"compiler/source:Span" %t163)
  store i64 %t164, ptr %l85
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t165 = load i64, ptr %l85, !tbaa !24
  store i64 %t165, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i32
  %l17 = alloca ptr
  %l19 = alloca %"compiler/typed:Item"
  %l24 = alloca i32
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l58 = alloca i64
  %l62 = alloca ptr
  %l67 = alloca i32
  %l69 = alloca %"compiler/typed:Item"
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  store i32 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l17, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t19 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s1, i32 %t17, i64 -1)
  store %"compiler/typed:Item" %t19, ptr %l19
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t20 = load ptr, ptr %l17, !tbaa !29
  %t21 = load %"compiler/typed:Item", ptr %l19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v1, ptr %t20, %"compiler/typed:Item" %t21)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l24
  br label %bb7
bb7:
  %t32 = load i32, ptr %l24, !range !{i32 0, i32 33}
  %t34 = trunc i64 28 to i32
  %t35 = icmp eq i32 %t32, %t34
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l1, !tbaa !23
  %t48 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t44, i32 %t45)
  store i64 %t48, ptr %l32
  br label %bb11
bb11:
  %t49 = load i64, ptr %l32, !tbaa !65
  store i64 %t49, ptr %l3, !tbaa !65
  store i64 0, ptr %l4, !tbaa !24
  store i64 64, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb17
bb14:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l39, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb16
bb16:
  %t76 = load i64, ptr %l39, !tbaa !24
  store i64 %t76, ptr %l36, !tbaa !24
  br label %bb17
bb17:
  %t77 = load i64, ptr %l36, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb19, label %bb20
bb19:
  br label %bb29
bb20:
  br label %bb21
bb21:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l6, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l3, !tbaa !65
  %t97 = load i64, ptr %l9, !tbaa !24
  store i64 %t97, ptr %l58, !tbaa !24
  %t98 = load i64, ptr %l58, !tbaa !24
  %t99 = load i64, ptr %l58, !tbaa !24
  %t100 = shl i64 1, %t99
  %t103 = and i64 %t96, %t100
  %t105 = icmp ne i64 %t103, 0
  br i1 %t105, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t107 = load ptr, ptr %l2, !tbaa !29
  store ptr %t107, ptr %l62, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l1, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l67
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t118 = load i64, ptr %l9, !tbaa !24
  %t119 = load i32, ptr %l67, !tbaa !23
  %t121 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s5, i32 %t119, i64 %t118)
  store %"compiler/typed:Item" %t121, ptr %l69
  br label %bb25
bb25:
  %t122 = load ptr, ptr %l62, !tbaa !29
  %t123 = load %"compiler/typed:Item", ptr %l69
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v1, ptr %t122, %"compiler/typed:Item" %t123)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l8, !tbaa !24
  br label %bb18
bb29:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNarrowed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i32
  %l8 = alloca i32
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i32
  %l29 = alloca i32
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l40 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l46 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load i32, ptr %l8, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l13
  br label %bb2
bb2:
  %t16 = load i1, ptr %l13, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l17
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l17, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 59
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l20
  br label %bb6
bb6:
  %t27 = load i64, ptr %l20, !tbaa !24
  %t28 = icmp eq i64 %t27, 0
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t31, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l23, !tbaa !29
  store i32 %a2, ptr %l24, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l3, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l29
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l23, !tbaa !29
  %t46 = load i32, ptr %l24, !tbaa !23
  %t47 = load i32, ptr %l29, !tbaa !23
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %s0, ptr %t45, i32 %t46, i32 %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l30
  br label %bb12
bb12:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l4
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l32, !tbaa !29
  %t55 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t55, ptr %l34
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l32, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t58 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %s0, ptr %t56, { i64, ptr } %t57)
  store i32 %t58, ptr %l35
  br label %bb14
bb14:
  %t59 = load i32, ptr %l35, !tbaa !23
  store i32 %t59, ptr %l5, !tbaa !23
  %t60 = load i32, ptr %l5, !tbaa !23
  %t61 = load i32, ptr %l3, !tbaa !23
  %t64 = icmp eq i32 %t60, %t61
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t66, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l40, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t69)
  store %"compiler/source:Span" %t71, ptr %l42
  br label %bb18
bb18:
  %t72 = load i32, ptr %l5, !tbaa !23
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t74 = load ptr, ptr %l40, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l42
  %t79 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t74, %"compiler/source:Span" %t75, i32 %t72, i32 20, ptr %t73, ptr null)
  store ptr %t79, ptr %l46
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t80 = load ptr, ptr %l46, !tbaa !29
  store ptr %t80, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/ast:Path"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l15 = alloca i32
  %l19 = alloca i1
  %l21 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i1
  %l38 = alloca %"compiler/source:Span"
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/ast:Path"
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca i32
  %l60 = alloca i1
  %l62 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i1
  %l72 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l81 = alloca i32
  %l83 = alloca i64
  %l86 = alloca i1
  %l89 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l92 = alloca i1
  %l94 = alloca i1
  %l97 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca i64
  %l105 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca ptr
  %l115 = alloca i32
  %l118 = alloca { i64, ptr }
  %l124 = alloca %"compiler/source:Span"
  %l125 = alloca { i64, [3 x i64] }
  %l128 = alloca { i64, ptr }
  %l130 = alloca %"compiler/diagmsg:Msg"
  %l131 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, i32 }
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
  store ptr %t4, ptr %l9, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t5)
  store ptr %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l11, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 4
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t15 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %v1, ptr %t12, ptr %t10, ptr %t11)
  store i32 %t15, ptr %l15
  br label %bb2
bb2:
  %t16 = load i32, ptr %l15, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  %t17 = load i32, ptr %l2, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t21 = icmp ne i32 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l21, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l26
  br label %bb5
bb4:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb7
bb5:
  %t37 = load ptr, ptr %l21, !tbaa !29
  %t38 = load i32, ptr %l26, !tbaa !23
  %t39 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t39, ptr %l27
  br label %bb6
bb6:
  %t40 = load i1, ptr %l27, !tbaa !21
  store i1 %t40, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l19, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t42 = load i32, ptr %l2, !tbaa !23
  %t43 = insertvalue { i64, i32 } undef, i64 0, 0
  %t45 = insertvalue { i64, i32 } %t43, i32 %t42, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t45, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Path", ptr %t47, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = icmp slt i64 %t54, 2
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t59 = insertvalue { i64, i32 } undef, i64 -1, 0
  %t61 = insertvalue { i64, i32 } %t59, i32 %t58, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t61, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Path", ptr %t63, i32 0, i32 0
  %t66 = load %"compiler/source:Span", ptr %t65
  store %"compiler/source:Span" %t66, ptr %l38
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Path", ptr %t67, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l40, !tbaa !27
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = sub i64 %t71, 1
  store i64 %t73, ptr %l42, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l43, !tbaa !24
  %t76 = icmp sge i64 0, 0
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = icmp sle i64 0, %t78
  br i1 %t79, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4)
  unreachable
bb16:
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = load i64, ptr %l43, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4)
  unreachable
bb18:
  %t85 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l42, !tbaa !24
  %t88 = getelementptr i32, ptr %t86, i64 0
  %t89 = sub i64 %t87, 0
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  %t92 = load %"compiler/source:Span", ptr %l38
  %t94 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v1, ptr %s0, %"compiler/source:Span" %t92, { i64, ptr } %t91)
  store %"compiler/ast:Path" %t94, ptr %l48
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4)
  unreachable
bb20:
  %t95 = load %"compiler/ast:Path", ptr %l48
  store %"compiler/ast:Path" %t95, ptr %l4
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  store ptr %t99, ptr %l50, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t100)
  store ptr %t102, ptr %l52
  br label %bb21
bb21:
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t105 = getelementptr %"compiler/check:frame", ptr %t103, i32 0, i32 4
  %t106 = load ptr, ptr %l50, !tbaa !29
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %s0, ptr %t106, ptr %t105, ptr %l4)
  store i32 %t109, ptr %l56
  br label %bb22
bb22:
  %t110 = load i32, ptr %l56, !tbaa !23
  store i32 %t110, ptr %l5, !tbaa !23
  %t111 = load i32, ptr %l5, !tbaa !23
  %t112 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t115 = icmp eq i32 %t111, %t112
  br i1 %t115, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb27
bb24:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  store ptr %t120, ptr %l62, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l5, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l67
  br label %bb25
bb25:
  %t131 = load ptr, ptr %l62, !tbaa !29
  %t132 = load i32, ptr %l67, !tbaa !23
  %t133 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t131, i32 %t132)
  store i1 %t133, ptr %l68
  br label %bb26
bb26:
  %t134 = load i1, ptr %l68, !tbaa !21
  store i1 %t134, ptr %l60, !tbaa !21
  br label %bb27
bb27:
  %t135 = load i1, ptr %l60, !tbaa !21
  br i1 %t135, label %bb28, label %bb29
bb28:
  %t136 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t137 = insertvalue { i64, i32 } undef, i64 -1, 0
  %t139 = insertvalue { i64, i32 } %t137, i32 %t136, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t139, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/ast:Path", ptr %t141, i32 0, i32 1
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l72, !tbaa !27
  %t145 = load i64, ptr %l3, !tbaa !24
  %t147 = sub i64 %t145, 1
  %t149 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i32, ptr %t150, i64 %t147
  %t152 = load i32, ptr %t151, !tbaa !33
  store i32 %t152, ptr %l6, !tbaa !23
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l76, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 2
  %t161 = load i32, ptr %l5, !tbaa !23
  %t164 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l81
  br label %bb31
bb31:
  %t165 = load i32, ptr %l6, !tbaa !23
  %t166 = load ptr, ptr %l76, !tbaa !29
  %t167 = load i32, ptr %l81, !tbaa !23
  %t169 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %t166, i32 %t167, i32 %t165)
  store i64 %t169, ptr %l83
  br label %bb32
bb32:
  %t170 = load i64, ptr %l83, !tbaa !24
  store i64 %t170, ptr %l7, !tbaa !24
  %t171 = load i64, ptr %l7, !tbaa !24
  %t173 = icmp sge i64 %t171, 0
  br i1 %t173, label %bb33, label %bb34
bb33:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l6, !tbaa !23
  %t179 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t175, i32 %t176)
  store { i64, ptr } %t179, ptr %l89
  br label %bb35
bb34:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb37
bb35:
  %t180 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t180, ptr %l90, !tbaa !27
  %t181 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr i8, ptr %t182, i64 0
  %t184 = load i8, ptr %t183, !tbaa !32
  %t186 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t184)
  store i1 %t186, ptr %l92
  br label %bb36
bb36:
  %t187 = load i1, ptr %l92, !tbaa !21
  %t188 = xor i1 %t187, true
  store i1 %t188, ptr %l86, !tbaa !21
  br label %bb37
bb37:
  %t190 = load i1, ptr %l86, !tbaa !21
  br i1 %t190, label %bb38, label %bb39
bb38:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/check:Checker", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  store ptr %t196, ptr %l97, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l5, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l102
  br label %bb40
bb39:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb43
bb40:
  %t207 = load ptr, ptr %l97, !tbaa !29
  %t208 = load i32, ptr %l102, !tbaa !23
  %t209 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t207, i32 %t208)
  store i64 %t209, ptr %l103
  br label %bb41
bb41:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t210)
  store ptr %t212, ptr %l105
  br label %bb42
bb42:
  %t213 = load ptr, ptr %l105, !tbaa !29
  %t215 = getelementptr %"compiler/check:frame", ptr %t213, i32 0, i32 1
  %t216 = load i64, ptr %t215, !tbaa !24
  %t217 = load i64, ptr %l103, !tbaa !24
  %t219 = icmp ne i64 %t217, %t216
  store i1 %t219, ptr %l94, !tbaa !21
  br label %bb43
bb43:
  %t221 = load i1, ptr %l94, !tbaa !21
  br i1 %t221, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s4
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/load:Loader", ptr %t228, i32 0, i32 4
  %t231 = load ptr, ptr %t230, !tbaa !29
  store ptr %t231, ptr %l112, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l113, !tbaa !29
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr %"compiler/ast:Path", ptr %t233, i32 0, i32 0
  %t236 = getelementptr %"compiler/source:Span", ptr %t235, i32 0, i32 1
  %t237 = load i32, ptr %t236, !tbaa !23
  store i32 %t237, ptr %l115, !tbaa !23
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load i32, ptr %l6, !tbaa !23
  %t242 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t238, i32 %t239)
  store { i64, ptr } %t242, ptr %l118
  br label %bb46
bb45:
  br label %bb52
bb46:
  %t243 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  %t246 = trunc i64 %t244 to i32
  %t247 = load i32, ptr %l115, !tbaa !23
  %t249 = sub i32 %t247, %t246
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr %"compiler/ast:Path", ptr %t250, i32 0, i32 0
  %t253 = getelementptr %"compiler/source:Span", ptr %t252, i32 0, i32 1
  %t254 = load i32, ptr %t253, !tbaa !23
  %t257 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t249, i32 %t254)
  store %"compiler/source:Span" %t257, ptr %l124
  br label %bb47
bb47:
  %t258 = load ptr, ptr %l113, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l124
  %t260 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t258, %"compiler/source:Span" %t259)
  store { i64, [3 x i64] } %t260, ptr %l125
  br label %bb48
bb48:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i32, ptr %l6, !tbaa !23
  %t265 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s4, ptr %t261, i32 %t262)
  store { i64, ptr } %t265, ptr %l128
  br label %bb49
bb49:
  %t266 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 0
  %t268 = extractvalue { i64, ptr } %t266, 1
  %t269 = mul i64 %t267, 1
  %t270 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t269)
  call void @llvm.memcpy.p0.p0.i64(ptr %t270, ptr %t268, i64 %t269, i1 false)
  %t271 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  %t274 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordIsPrivate(ptr %s4, ptr %s4, { i64, ptr } %t272)
  store %"compiler/diagmsg:Msg" %t274, ptr %l130
  br label %bb50
bb50:
  %t275 = load ptr, ptr %l112, !tbaa !29
  %t276 = load { i64, [3 x i64] }, ptr %l125
  %t277 = load %"compiler/diagmsg:Msg", ptr %l130
  %t278 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %s4, ptr %t275, { i64, [3 x i64] } %t276, %"compiler/diagmsg:Msg" %t277)
  store i64 %t278, ptr %l131
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb52:
  %t279 = load i64, ptr %l7, !tbaa !24
  %t280 = load i32, ptr %l5, !tbaa !23
  %t282 = insertvalue { i64, i32 } undef, i64 %t279, 0
  %t284 = insertvalue { i64, i32 } %t282, i32 %t280, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t284, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i32 }, ptr %rv
  ret { i64, i32 } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternRules(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca %"compiler/diagmsg:Msg"
  %l17 = alloca i32
  %l18 = alloca %"compiler/diagmsg:Msg"
  %l22 = alloca ptr
  %l26 = alloca i64
  %l30 = alloca i32
  %l33 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i1
  %l50 = alloca ptr
  %l60 = alloca i64
  %l63 = alloca i64
  %l85 = alloca { i64, ptr }
  %l91 = alloca i1
  %l94 = alloca i1
  %l97 = alloca i1
  %l100 = alloca i1
  %l102 = alloca i1
  %l107 = alloca i32
  %l110 = alloca i1
  %l113 = alloca ptr
  %l118 = alloca i32
  %l119 = alloca { i64, ptr }
  %l122 = alloca i1
  %l127 = alloca i32
  %l130 = alloca i1
  %l133 = alloca ptr
  %l138 = alloca i32
  %l139 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l153 = alloca i32
  %l154 = alloca i1
  %l155 = alloca %"compiler/diagmsg:Msg"
  %l158 = alloca { i64, ptr }
  %l160 = alloca %"compiler/diagmsg:Msg"
  %l163 = alloca { i64, ptr }
  %l165 = alloca %"compiler/diagmsg:Msg"
  %l169 = alloca ptr
  %l170 = alloca i64
  %l172 = alloca i64
  %l174 = alloca i64
  %l178 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l187 = alloca i64
  %l194 = alloca i32
  %l198 = alloca i1
  %l202 = alloca i1
  %l206 = alloca i1
  %l217 = alloca i1
  %l220 = alloca i1
  %l224 = alloca ptr
  %l227 = alloca i32
  %l228 = alloca i1
  %l229 = alloca i1
  %l235 = alloca %"compiler/diagmsg:Msg"
  %l238 = alloca { i64, ptr }
  %l240 = alloca %"compiler/diagmsg:Msg"
  %l243 = alloca { i64, ptr }
  %l245 = alloca %"compiler/diagmsg:Msg"
  %l249 = alloca ptr
  %l250 = alloca i64
  %l253 = alloca { i64, ptr }
  %l255 = alloca %"compiler/source:Span"
  %l257 = alloca i64
  %l260 = alloca { i64, ptr }
  %l267 = alloca %"compiler/source:Span"
  %l272 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %t364 = alloca { i64, [3 x i64] }, align 8
  %t564 = alloca { i64, [3 x i64] }, align 8
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
  store ptr %t8, ptr %l22
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l22, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l26
  br label %bb2
bb2:
  %t18 = load i64, ptr %l26, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t22, i64 %t23)
  store i32 %t26, ptr %l30
  br label %bb3
bb3:
  %t27 = load i32, ptr %l30, !tbaa !23
  store i32 %t27, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l33, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l4, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l38
  br label %bb4
bb4:
  %t44 = load ptr, ptr %l33, !tbaa !29
  %t45 = load i32, ptr %l38, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t44, i32 %t45)
  store { i64, ptr } %t46, ptr %l39
  br label %bb5
bb5:
  %t47 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t47, ptr %l5, !tbaa !27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/ast:Func", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %t51, !tbaa !23
  %t55 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t48, i32 %t52)
  store { i64, ptr } %t55, ptr %l43
  br label %bb6
bb6:
  %t56 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t56, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t57, ptr %l44
  br label %bb7
bb7:
  %t58 = load i1, ptr %l44, !tbaa !21
  store i1 %t58, ptr %l6, !tbaa !21
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/load:Loader", ptr %t65, i32 0, i32 10
  %t68 = load i64, ptr %l3, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l50
  br label %bb8
bb8:
  %t72 = load ptr, ptr %l50, !tbaa !29
  %t74 = getelementptr %"compiler/load:Module", ptr %t72, i32 0, i32 4
  %t75 = load i64, ptr %t74, !tbaa !24
  store i64 %t75, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Func", ptr %t77, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Sig", ptr %t80, i32 0, i32 0
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  store i64 %t85, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb9, label %bb10
bb9:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb14
bb11:
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l63, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb13
bb13:
  %t113 = load i64, ptr %l63, !tbaa !24
  store i64 %t113, ptr %l60, !tbaa !24
  br label %bb14
bb14:
  %t114 = load i64, ptr %l60, !tbaa !24
  store i64 %t114, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t115 = load i64, ptr %l12, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb69
bb17:
  br label %bb18
bb18:
  %t123 = load i64, ptr %l8, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l13, !tbaa !24
  %t133 = load i64, ptr %l13, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t139 = icmp sge i64 %t133, %t136
  br i1 %t139, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb69
bb20:
  br label %bb21
bb21:
  %t141 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t141, ptr %l85, !tbaa !27
  %t142 = load i64, ptr %l13, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i32, ptr %t145, i64 %t142
  %t147 = load i32, ptr %t146, !tbaa !33
  store i32 %t147, ptr %l14, !tbaa !23
  %t149 = load i32, ptr %l14, !tbaa !23
  %t150 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t153 = icmp eq i32 %t149, %t150
  br i1 %t153, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb25
bb23:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i32, ptr %l14, !tbaa !23
  %t159 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternParam(ptr %v0, ptr %t155, i32 %t156)
  store i1 %t159, ptr %l94
  br label %bb24
bb24:
  %t160 = load i1, ptr %l94, !tbaa !21
  store i1 %t160, ptr %l91, !tbaa !21
  br label %bb25
bb25:
  %t161 = load i1, ptr %l91, !tbaa !21
  br i1 %t161, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb68
bb27:
  br label %bb28
bb28:
  %t162 = load i1, ptr %l6, !tbaa !21
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb29, label %bb30
bb29:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i32, ptr %l14, !tbaa !23
  %t170 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallbackType(ptr %v0, ptr %t166, i32 %t167)
  store i1 %t170, ptr %l100
  br label %bb31
bb30:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb32
bb31:
  %t171 = load i1, ptr %l100, !tbaa !21
  store i1 %t171, ptr %l97, !tbaa !21
  br label %bb32
bb32:
  %t172 = load i1, ptr %l97, !tbaa !21
  br i1 %t172, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb68
bb34:
  br label %bb35
bb35:
  %t173 = load i1, ptr %l6, !tbaa !21
  br i1 %t173, label %bb36, label %bb37
bb36:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 2
  %t181 = load i32, ptr %l14, !tbaa !23
  %t184 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t180, i32 %t181)
  store i32 %t184, ptr %l107
  br label %bb38
bb37:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb39
bb38:
  %t185 = load i32, ptr %l107, !range !{i32 0, i32 33}
  %t187 = trunc i64 21 to i32
  %t188 = icmp eq i32 %t185, %t187
  store i1 %t188, ptr %l102, !tbaa !21
  br label %bb39
bb39:
  %t190 = load i1, ptr %l102, !tbaa !21
  br i1 %t190, label %bb40, label %bb41
bb40:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/check:Checker", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  store ptr %t196, ptr %l113, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l14, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l118
  br label %bb42
bb41:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb44
bb42:
  %t207 = load ptr, ptr %l113, !tbaa !29
  %t208 = load i32, ptr %l118, !tbaa !23
  %t209 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t207, i32 %t208)
  store { i64, ptr } %t209, ptr %l119
  br label %bb43
bb43:
  %t210 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 0
  %t213 = icmp eq i64 %t211, 0
  store i1 %t213, ptr %l110, !tbaa !21
  br label %bb44
bb44:
  %t215 = load i1, ptr %l110, !tbaa !21
  br i1 %t215, label %bb45, label %bb46
bb45:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/check:Checker", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = getelementptr %"compiler/generic:Program", ptr %t219, i32 0, i32 2
  %t222 = load i32, ptr %l14, !tbaa !23
  %t225 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t221, i32 %t222)
  store i32 %t225, ptr %l127
  br label %bb47
bb46:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb48
bb47:
  %t226 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t227 = load i32, ptr %l127, !tbaa !23
  %t229 = icmp eq i32 %t227, %t226
  store i1 %t229, ptr %l122, !tbaa !21
  br label %bb48
bb48:
  %t231 = load i1, ptr %l122, !tbaa !21
  br i1 %t231, label %bb49, label %bb50
bb49:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/check:Checker", ptr %t232, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !29
  %t237 = getelementptr %"compiler/generic:Program", ptr %t235, i32 0, i32 2
  store ptr %t237, ptr %l133, !tbaa !29
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/check:Checker", ptr %t238, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = getelementptr %"compiler/generic:Program", ptr %t241, i32 0, i32 2
  %t244 = load i32, ptr %l14, !tbaa !23
  %t247 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t243, i32 %t244)
  store i32 %t247, ptr %l138
  br label %bb51
bb50:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb53
bb51:
  %t248 = load ptr, ptr %l133, !tbaa !29
  %t249 = load i32, ptr %l138, !tbaa !23
  %t250 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t248, i32 %t249)
  store { i64, ptr } %t250, ptr %l139
  br label %bb52
bb52:
  %t251 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  %t254 = icmp eq i64 %t252, 0
  store i1 %t254, ptr %l130, !tbaa !21
  br label %bb53
bb53:
  %t256 = load i1, ptr %l130, !tbaa !21
  br i1 %t256, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s2)
  br label %bb68
bb55:
  br label %bb56
bb56:
  %t257 = load ptr, ptr %l2, !tbaa !29
  %t259 = getelementptr %"compiler/ast:Func", ptr %t257, i32 0, i32 3
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t262 = getelementptr %"compiler/ast:Sig", ptr %t260, i32 0, i32 0
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l144, !tbaa !27
  %t264 = load i64, ptr %l13, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr ptr, ptr %t267, i64 %t264
  %t269 = load ptr, ptr %t268, !tbaa !39
  %t271 = getelementptr %"compiler/ast:Param", ptr %t269, i32 0, i32 0
  %t272 = load %"compiler/source:Span", ptr %t271
  store %"compiler/source:Span" %t272, ptr %l15
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/check:Checker", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 2
  store ptr %t279, ptr %l150, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load i32, ptr %l14, !tbaa !23
  %t284 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t280, i32 %t281)
  store i32 %t284, ptr %l153
  br label %bb57
bb57:
  %t285 = load ptr, ptr %l150, !tbaa !29
  %t286 = load i32, ptr %l153, !tbaa !23
  %t287 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t285, i32 %t286)
  store i1 %t287, ptr %l154
  br label %bb58
bb58:
  %t288 = load i1, ptr %l154, !tbaa !21
  br i1 %t288, label %bb59, label %bb60
bb59:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load i32, ptr %l14, !tbaa !23
  %t293 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t289, i32 %t290)
  store { i64, ptr } %t293, ptr %l158
  br label %bb61
bb60:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i32, ptr %l14, !tbaa !23
  %t298 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t294, i32 %t295)
  store { i64, ptr } %t298, ptr %l163
  br label %bb63
bb61:
  %t299 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t299, 0
  %t301 = extractvalue { i64, ptr } %t299, 1
  %t302 = mul i64 %t300, 1
  %t303 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t302)
  call void @llvm.memcpy.p0.p0.i64(ptr %t303, ptr %t301, i64 %t302, i1 false)
  %t304 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr %t303, 1
  %t307 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedByValueC(ptr %s2, ptr %s2, { i64, ptr } %t305)
  store %"compiler/diagmsg:Msg" %t307, ptr %l160
  br label %bb62
bb62:
  %t308 = load %"compiler/diagmsg:Msg", ptr %l160
  store %"compiler/diagmsg:Msg" %t308, ptr %l155
  br label %bb65
bb63:
  %t309 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  %t311 = extractvalue { i64, ptr } %t309, 1
  %t312 = mul i64 %t310, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t312)
  call void @llvm.memcpy.p0.p0.i64(ptr %t313, ptr %t311, i64 %t312, i1 false)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  %t317 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExternType(ptr %s2, ptr %s2, { i64, ptr } %t315)
  store %"compiler/diagmsg:Msg" %t317, ptr %l165
  br label %bb64
bb64:
  %t318 = load %"compiler/diagmsg:Msg", ptr %l165
  store %"compiler/diagmsg:Msg" %t318, ptr %l155
  br label %bb65
bb65:
  %t319 = load %"compiler/diagmsg:Msg", ptr %l155
  store %"compiler/diagmsg:Msg" %t319, ptr %l16
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/check:Checker", ptr %t320, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t325 = getelementptr %"compiler/generic:Program", ptr %t323, i32 0, i32 0
  %t326 = load ptr, ptr %t325, !tbaa !29
  %t328 = getelementptr %"compiler/load:Loader", ptr %t326, i32 0, i32 4
  %t329 = load ptr, ptr %t328, !tbaa !29
  store ptr %t329, ptr %l169, !tbaa !29
  %t330 = load i64, ptr %l7, !tbaa !24
  store i64 %t330, ptr %l170, !tbaa !24
  %t331 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 0
  %t332 = load i32, ptr %t331, !tbaa !23
  %t334 = sext i32 %t332 to i64
  store i64 %t334, ptr %l172, !tbaa !24
  %t335 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 0
  %t336 = load i32, ptr %t335, !tbaa !23
  %t338 = sext i32 %t336 to i64
  store i64 %t338, ptr %l174, !tbaa !24
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load ptr, ptr %l2, !tbaa !29
  %t342 = getelementptr %"compiler/ast:Func", ptr %t340, i32 0, i32 3
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t345 = getelementptr %"compiler/ast:Sig", ptr %t343, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  store { i64, ptr } %t346, ptr %l178, !tbaa !27
  %t347 = load i64, ptr %l13, !tbaa !24
  %t349 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr ptr, ptr %t350, i64 %t347
  %t352 = load ptr, ptr %t351, !tbaa !39
  %t354 = getelementptr %"compiler/ast:Param", ptr %t352, i32 0, i32 1
  %t355 = load i32, ptr %t354, !tbaa !23
  %t358 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t339, i32 %t355)
  store { i64, ptr } %t358, ptr %l182
  br label %bb66
bb66:
  %t359 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t360 = extractvalue { i64, ptr } %t359, 0
  %t361 = load i64, ptr %l174, !tbaa !24
  %t363 = add i64 %t361, %t360
  store { i64, [3 x i64] } zeroinitializer, ptr %t364
  %t365 = getelementptr { i64, [3 x i64] }, ptr %t364, i32 0, i32 0
  store i64 3, ptr %t365
  %t366 = load i64, ptr %l170, !tbaa !24
  %t367 = insertvalue { i64, i64, i64 } undef, i64 %t366, 0
  %t368 = load i64, ptr %l172, !tbaa !24
  %t369 = insertvalue { i64, i64, i64 } %t367, i64 %t368, 1
  %t371 = insertvalue { i64, i64, i64 } %t369, i64 %t363, 2
  %t372 = getelementptr { i64, [3 x i64] }, ptr %t364, i32 0, i32 1
  store { i64, i64, i64 } %t371, ptr %t372
  %t373 = load { i64, [3 x i64] }, ptr %t364
  %t374 = load %"compiler/diagmsg:Msg", ptr %l16
  %t375 = load ptr, ptr %l169, !tbaa !29
  %t378 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s2, ptr %t375, { i64, [3 x i64] } %t373, %"compiler/diagmsg:Msg" %t374)
  store i64 %t378, ptr %l187
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s2)
  br label %bb68
bb68:
  %t379 = load i64, ptr %l12, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l12, !tbaa !24
  br label %bb15
bb69:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/check:Checker", ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/generic:Program", ptr %t386, i32 0, i32 2
  %t389 = load i32, ptr %l4, !tbaa !23
  %t392 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t388, i32 %t389)
  store i32 %t392, ptr %l194
  br label %bb70
bb70:
  %t393 = load i32, ptr %l194, !tbaa !23
  store i32 %t393, ptr %l17, !tbaa !23
  %t394 = load i32, ptr %l17, !tbaa !23
  %t395 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t398 = icmp eq i32 %t394, %t395
  br i1 %t398, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l198, !tbaa !21
  br label %bb73
bb72:
  %t400 = load i32, ptr %l17, !tbaa !23
  %t401 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t404 = icmp eq i32 %t400, %t401
  store i1 %t404, ptr %l198, !tbaa !21
  br label %bb73
bb73:
  %t406 = load i1, ptr %l198, !tbaa !21
  br i1 %t406, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l202, !tbaa !21
  br label %bb76
bb75:
  %t407 = load i32, ptr %l17, !tbaa !23
  %t408 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t411 = icmp eq i32 %t407, %t408
  store i1 %t411, ptr %l202, !tbaa !21
  br label %bb76
bb76:
  %t413 = load i1, ptr %l202, !tbaa !21
  br i1 %t413, label %bb77, label %bb78
bb77:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb79
bb78:
  %t414 = load ptr, ptr %l2, !tbaa !29
  %t416 = getelementptr %"compiler/ast:Func", ptr %t414, i32 0, i32 3
  %t417 = load ptr, ptr %t416, !tbaa !29
  %t419 = getelementptr %"compiler/ast:Sig", ptr %t417, i32 0, i32 1
  %t420 = load { i64, ptr }, ptr %t419, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t420, 0
  %t424 = icmp eq i64 %t422, 0
  store i1 %t424, ptr %l206, !tbaa !21
  br label %bb79
bb79:
  %t426 = load i1, ptr %l206, !tbaa !21
  br i1 %t426, label %bb80, label %bb81
bb80:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb81:
  br label %bb82
bb82:
  %t427 = load ptr, ptr %l2, !tbaa !29
  %t429 = getelementptr %"compiler/ast:Func", ptr %t427, i32 0, i32 3
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = getelementptr %"compiler/ast:Sig", ptr %t430, i32 0, i32 1
  %t433 = load { i64, ptr }, ptr %t432, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t433, 0
  %t437 = icmp sgt i64 %t435, 1
  br i1 %t437, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l217, !tbaa !21
  br label %bb86
bb84:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load i32, ptr %l17, !tbaa !23
  %t443 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t439, i32 %t440)
  store i1 %t443, ptr %l220
  br label %bb85
bb85:
  %t444 = load i1, ptr %l220, !tbaa !21
  %t445 = xor i1 %t444, true
  store i1 %t445, ptr %l217, !tbaa !21
  br label %bb86
bb86:
  %t447 = load i1, ptr %l217, !tbaa !21
  br i1 %t447, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s9
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/check:Checker", ptr %t448, i32 0, i32 1
  %t451 = load ptr, ptr %t450, !tbaa !29
  %t453 = getelementptr %"compiler/generic:Program", ptr %t451, i32 0, i32 2
  store ptr %t453, ptr %l224, !tbaa !29
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load i32, ptr %l17, !tbaa !23
  %t458 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t454, i32 %t455)
  store i32 %t458, ptr %l227
  br label %bb89
bb88:
  br label %bb104
bb89:
  %t459 = load ptr, ptr %l224, !tbaa !29
  %t460 = load i32, ptr %l227, !tbaa !23
  %t461 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t459, i32 %t460)
  store i1 %t461, ptr %l228
  br label %bb90
bb90:
  %t462 = load i1, ptr %l228, !tbaa !21
  br i1 %t462, label %bb91, label %bb92
bb91:
  %t463 = load ptr, ptr %l2, !tbaa !29
  %t465 = getelementptr %"compiler/ast:Func", ptr %t463, i32 0, i32 3
  %t466 = load ptr, ptr %t465, !tbaa !29
  %t468 = getelementptr %"compiler/ast:Sig", ptr %t466, i32 0, i32 1
  %t469 = load { i64, ptr }, ptr %t468, !tbaa !27
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t473 = icmp eq i64 %t471, 1
  store i1 %t473, ptr %l229, !tbaa !21
  br label %bb93
bb92:
  store i1 false, ptr %l229, !tbaa !21
  br label %bb93
bb93:
  %t475 = load i1, ptr %l229, !tbaa !21
  br i1 %t475, label %bb94, label %bb95
bb94:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = load i32, ptr %l17, !tbaa !23
  %t480 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t476, i32 %t477)
  store { i64, ptr } %t480, ptr %l238
  br label %bb96
bb95:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load i32, ptr %l17, !tbaa !23
  %t485 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t481, i32 %t482)
  store { i64, ptr } %t485, ptr %l243
  br label %bb98
bb96:
  %t486 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t487 = extractvalue { i64, ptr } %t486, 0
  %t488 = extractvalue { i64, ptr } %t486, 1
  %t489 = mul i64 %t487, 1
  %t490 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t489)
  call void @llvm.memcpy.p0.p0.i64(ptr %t490, ptr %t488, i64 %t489, i1 false)
  %t491 = insertvalue { i64, ptr } undef, i64 %t487, 0
  %t492 = insertvalue { i64, ptr } %t491, ptr %t490, 1
  %t494 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedByValueC(ptr %s9, ptr %s9, { i64, ptr } %t492)
  store %"compiler/diagmsg:Msg" %t494, ptr %l240
  br label %bb97
bb97:
  %t495 = load %"compiler/diagmsg:Msg", ptr %l240
  store %"compiler/diagmsg:Msg" %t495, ptr %l235
  br label %bb100
bb98:
  %t496 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t496, 0
  %t498 = extractvalue { i64, ptr } %t496, 1
  %t499 = mul i64 %t497, 1
  %t500 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t499)
  call void @llvm.memcpy.p0.p0.i64(ptr %t500, ptr %t498, i64 %t499, i1 false)
  %t501 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t502 = insertvalue { i64, ptr } %t501, ptr %t500, 1
  %t504 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExternResult(ptr %s9, ptr %s9, { i64, ptr } %t502)
  store %"compiler/diagmsg:Msg" %t504, ptr %l245
  br label %bb99
bb99:
  %t505 = load %"compiler/diagmsg:Msg", ptr %l245
  store %"compiler/diagmsg:Msg" %t505, ptr %l235
  br label %bb100
bb100:
  %t506 = load %"compiler/diagmsg:Msg", ptr %l235
  store %"compiler/diagmsg:Msg" %t506, ptr %l18
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/check:Checker", ptr %t507, i32 0, i32 1
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t512 = getelementptr %"compiler/generic:Program", ptr %t510, i32 0, i32 0
  %t513 = load ptr, ptr %t512, !tbaa !29
  %t515 = getelementptr %"compiler/load:Loader", ptr %t513, i32 0, i32 4
  %t516 = load ptr, ptr %t515, !tbaa !29
  store ptr %t516, ptr %l249, !tbaa !29
  %t517 = load i64, ptr %l7, !tbaa !24
  store i64 %t517, ptr %l250, !tbaa !24
  %t518 = load ptr, ptr %l2, !tbaa !29
  %t520 = getelementptr %"compiler/ast:Func", ptr %t518, i32 0, i32 3
  %t521 = load ptr, ptr %t520, !tbaa !29
  %t523 = getelementptr %"compiler/ast:Sig", ptr %t521, i32 0, i32 1
  %t524 = load { i64, ptr }, ptr %t523, !tbaa !27
  store { i64, ptr } %t524, ptr %l253, !tbaa !27
  %t525 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !27
  %t527 = getelementptr ptr, ptr %t526, i64 0
  %t528 = load ptr, ptr %t527, !tbaa !39
  %t530 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t528)
  store %"compiler/source:Span" %t530, ptr %l255
  br label %bb101
bb101:
  %t531 = getelementptr %"compiler/source:Span", ptr %l255, i32 0, i32 0
  %t532 = load i32, ptr %t531, !tbaa !23
  %t534 = sext i32 %t532 to i64
  store i64 %t534, ptr %l257, !tbaa !24
  %t535 = load ptr, ptr %l2, !tbaa !29
  %t537 = getelementptr %"compiler/ast:Func", ptr %t535, i32 0, i32 3
  %t538 = load ptr, ptr %t537, !tbaa !29
  %t540 = getelementptr %"compiler/ast:Sig", ptr %t538, i32 0, i32 1
  %t541 = load { i64, ptr }, ptr %t540, !tbaa !27
  store { i64, ptr } %t541, ptr %l260, !tbaa !27
  %t542 = load ptr, ptr %l2, !tbaa !29
  %t544 = getelementptr %"compiler/ast:Func", ptr %t542, i32 0, i32 3
  %t545 = load ptr, ptr %t544, !tbaa !29
  %t547 = getelementptr %"compiler/ast:Sig", ptr %t545, i32 0, i32 1
  %t548 = load { i64, ptr }, ptr %t547, !tbaa !27
  %t550 = extractvalue { i64, ptr } %t548, 0
  %t552 = sub i64 %t550, 1
  %t554 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t555 = load ptr, ptr %t554, !tbaa !27
  %t556 = getelementptr ptr, ptr %t555, i64 %t552
  %t557 = load ptr, ptr %t556, !tbaa !39
  %t559 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t557)
  store %"compiler/source:Span" %t559, ptr %l267
  br label %bb102
bb102:
  %t560 = getelementptr %"compiler/source:Span", ptr %l267, i32 0, i32 1
  %t561 = load i32, ptr %t560, !tbaa !23
  %t563 = sext i32 %t561 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t564
  %t565 = getelementptr { i64, [3 x i64] }, ptr %t564, i32 0, i32 0
  store i64 3, ptr %t565
  %t566 = load i64, ptr %l250, !tbaa !24
  %t567 = insertvalue { i64, i64, i64 } undef, i64 %t566, 0
  %t568 = load i64, ptr %l257, !tbaa !24
  %t569 = insertvalue { i64, i64, i64 } %t567, i64 %t568, 1
  %t571 = insertvalue { i64, i64, i64 } %t569, i64 %t563, 2
  %t572 = getelementptr { i64, [3 x i64] }, ptr %t564, i32 0, i32 1
  store { i64, i64, i64 } %t571, ptr %t572
  %t573 = load { i64, [3 x i64] }, ptr %t564
  %t574 = load %"compiler/diagmsg:Msg", ptr %l18
  %t575 = load ptr, ptr %l249, !tbaa !29
  %t578 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s9, ptr %t575, { i64, [3 x i64] } %t573, %"compiler/diagmsg:Msg" %t574)
  store i64 %t578, ptr %l272
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s9)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsRestored(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factsCopy" %a1) #0 {
entry:
  %l1 = alloca %"compiler/check:factsCopy"
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store %"compiler/check:factsCopy" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l5, !tbaa !29
  %t6 = ptrtoint ptr %v0 to i64
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e50
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = call ptr @__olang_region_make(ptr %v0)
  %t10 = ptrtoint ptr %t9 to i64
  store i64 %t10, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t11 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 0
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l8
  %t13 = load i64, ptr %l6
  %t14 = inttoptr i64 %t13 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e(ptr %t14, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e50
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load i64, ptr %l6
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t29 = getelementptr %"compiler/check:frame", ptr %t28, i32 0, i32 50
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l12
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t33 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %t33
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e50
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr null
  call void @__olang_region_drop(ptr %t41)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l12
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l2, !tbaa !29
  store ptr %t42, ptr %l14, !tbaa !29
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l15, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e46
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l15, !tbaa !24
  br label %bb10
bb10:
  %t48 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 1
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l17
  %t50 = load i64, ptr %l15
  %t51 = inttoptr i64 %t50 to ptr
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e(ptr %t51, ptr %l17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l19
  br label %bb11
bb11:
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e46
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = load i64, ptr %l15
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_region_or(ptr %t60, ptr null)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr null
  %t64 = icmp eq ptr %t63, %t57
  call void @__olang_region_settle(ptr %t57, i1 %t64)
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l14, !tbaa !29
  %t66 = getelementptr %"compiler/check:frame", ptr %t65, i32 0, i32 46
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l21
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t69 = load ptr, ptr %l14, !tbaa !29
  %t70 = getelementptr %"compiler/check:frame", ptr %t69, i32 0, i32 46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %t70
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e46
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr null
  call void @__olang_region_drop(ptr %t78)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l21
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l2, !tbaa !29
  store ptr %t79, ptr %l23, !tbaa !29
  %t80 = ptrtoint ptr %v0 to i64
  store i64 %t80, ptr %l24, !tbaa !24
  %t81 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e59
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = call ptr @__olang_region_make(ptr %v0)
  %t84 = ptrtoint ptr %t83 to i64
  store i64 %t84, ptr %l24, !tbaa !24
  br label %bb17
bb17:
  %t85 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 2
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l26
  %t87 = load i64, ptr %l24
  %t88 = inttoptr i64 %t87 to ptr
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %t88, ptr %l26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l28
  br label %bb18
bb18:
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e59
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = load i64, ptr %l24
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = icmp eq ptr %t100, %t94
  call void @__olang_region_settle(ptr %t94, i1 %t101)
  br label %bb20
bb20:
  %t102 = load ptr, ptr %l23, !tbaa !29
  %t103 = getelementptr %"compiler/check:frame", ptr %t102, i32 0, i32 59
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t103
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l30
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  %t106 = load ptr, ptr %l23, !tbaa !29
  %t107 = getelementptr %"compiler/check:frame", ptr %t106, i32 0, i32 59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %t107
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e59
  br i1 %t108, label %bb21, label %bb22
bb21:
  %t110 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30, i32 0, i32 0
  %t111 = load { i64, ptr }, ptr %t110
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = call ptr @__olang_region_or(ptr %t112, ptr null)
  %t114 = icmp ne ptr %t113, null
  %t115 = select i1 %t114, ptr %t113, ptr null
  call void @__olang_region_drop(ptr %t115)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l30
  br label %bb22
bb22:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efilledNext(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca i1
  %l56 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca i1
  %l69 = alloca i1
  %l72 = alloca i1
  %l77 = alloca i1
  %l87 = alloca i1
  %l98 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l102 = alloca i1
  %l111 = alloca i1
  %l117 = alloca i1
  %l124 = alloca i1
  %l126 = alloca { i64, ptr }
  %l128 = alloca i32
  %l132 = alloca i1
  %l135 = alloca { i64, ptr }
  %l137 = alloca %"compiler/source:Span"
  %l140 = alloca { i64, ptr }
  %l146 = alloca %"compiler/source:Span"
  %l148 = alloca ptr
  %l151 = alloca %"compiler/source:Span"
  %l152 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l157 = alloca i64
  %l159 = alloca i1
  %l161 = alloca i64
  %l163 = alloca i1
  %l165 = alloca i64
  %l167 = alloca i1
  %l169 = alloca i64
  %s5 = alloca %olang.scope
  %rv = alloca i1
  %t244 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l20
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l20, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 52
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 51
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = icmp sge i64 %t8, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t21 = load ptr, ptr %l29, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l29, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 30}
  %t27 = icmp eq i64 %t25, 12
  store i1 %t27, ptr %l30, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l30, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l4, !tbaa !29
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t37, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38
  store { i64, ptr } %t39, ptr %l5, !tbaa !27
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 1
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisArrayCtor(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store i1 %t51, ptr %l43
  br label %bb12
bb11:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb13
bb12:
  %t52 = load i1, ptr %l43, !tbaa !21
  store i1 %t52, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l40, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l45, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 0
  %t58 = load ptr, ptr %t57, !tbaa !39
  store ptr %t58, ptr %l44, !tbaa !29
  br label %bb16
bb15:
  store ptr null, ptr %l44, !tbaa !29
  br label %bb16
bb16:
  %t61 = load ptr, ptr %l44, !tbaa !29
  store ptr %t61, ptr %l28, !tbaa !29
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store ptr null, ptr %l28, !tbaa !29
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_7d50ab2c5aa12498_8b4c363ee458c734)
  unreachable
bb22:
  %t62 = load ptr, ptr %l28, !tbaa !29
  store ptr %t62, ptr %l6, !tbaa !29
  %t63 = load ptr, ptr %l6, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb26
bb24:
  %t67 = load ptr, ptr %l6, !tbaa !29
  %t69 = call i1 @compiler_2fcheck_2eplainLen(ptr %v1, ptr %t67)
  store i1 %t69, ptr %l52
  br label %bb25
bb25:
  %t70 = load i1, ptr %l52, !tbaa !21
  %t71 = xor i1 %t70, true
  store i1 %t71, ptr %l50, !tbaa !21
  br label %bb26
bb26:
  %t73 = load i1, ptr %l50, !tbaa !21
  br i1 %t73, label %bb27, label %bb28
bb27:
  store i1 false, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/check:frame", ptr %t75, i32 0, i32 51
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l56, !tbaa !27
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 52
  %t82 = load i64, ptr %t81, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr ptr, ptr %t85, i64 %t82
  %t87 = load ptr, ptr %t86, !tbaa !39
  store ptr %t87, ptr %l7, !tbaa !29
  %t89 = load ptr, ptr %l7, !tbaa !29
  store ptr %t89, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t90 = load ptr, ptr %l60, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb30, label %bb31
bb30:
  %t93 = load ptr, ptr %l60, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 22}
  %t96 = icmp eq i64 %t94, 9
  store i1 %t96, ptr %l61, !tbaa !21
  br label %bb31
bb31:
  %t97 = load i1, ptr %l61, !tbaa !21
  br i1 %t97, label %bb32, label %bb33
bb32:
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", ptr }, ptr %t100, i32 0, i32 1
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l8, !tbaa !29
  br label %bb34
bb33:
  br label %bb103
bb34:
  store %olang.scope zeroinitializer, ptr %s5
  %t104 = load ptr, ptr %l8, !tbaa !29
  %t106 = getelementptr %"compiler/ast:ForIn", ptr %t104, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = icmp ne i32 %t107, 0
  br i1 %t109, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb37
bb36:
  %t111 = load ptr, ptr %l8, !tbaa !29
  %t113 = getelementptr %"compiler/ast:ForIn", ptr %t111, i32 0, i32 3
  %t114 = load i1, ptr %t113, !tbaa !21
  store i1 %t114, ptr %l69, !tbaa !21
  br label %bb37
bb37:
  %t116 = load i1, ptr %l69, !tbaa !21
  br i1 %t116, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb40
bb39:
  %t117 = load ptr, ptr %l8, !tbaa !29
  %t119 = getelementptr %"compiler/ast:ForIn", ptr %t117, i32 0, i32 5
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t124 = icmp sgt i64 %t122, 0
  store i1 %t124, ptr %l72, !tbaa !21
  br label %bb40
bb40:
  %t126 = load i1, ptr %l72, !tbaa !21
  br i1 %t126, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb43
bb42:
  %t127 = load ptr, ptr %l8, !tbaa !29
  %t129 = getelementptr %"compiler/ast:ForIn", ptr %t127, i32 0, i32 4
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t134 = icmp eq i64 %t132, 0
  store i1 %t134, ptr %l77, !tbaa !21
  br label %bb43
bb43:
  %t136 = load i1, ptr %l77, !tbaa !21
  br i1 %t136, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s5)
  store i1 false, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l8, !tbaa !29
  %t141 = getelementptr %"compiler/ast:ForIn", ptr %t139, i32 0, i32 2
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t143 = load ptr, ptr %l6, !tbaa !29
  %t147 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountsTo(ptr %v0, ptr %v0, ptr %v1, ptr %t138, ptr %t142, ptr %t143)
  store i1 %t147, ptr %l87
  br label %bb47
bb47:
  %t148 = load i1, ptr %l87, !tbaa !21
  %t149 = xor i1 %t148, true
  br i1 %t149, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s5)
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  store i64 0, ptr %l9, !tbaa !24
  %t152 = load ptr, ptr %l8, !tbaa !29
  %t154 = getelementptr %"compiler/ast:ForIn", ptr %t152, i32 0, i32 4
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t157 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l12, !tbaa !24
  br label %bb51
bb51:
  %t161 = load i64, ptr %l11, !tbaa !24
  %t162 = load i64, ptr %l12, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb52, label %bb53
bb52:
  br label %bb73
bb53:
  br label %bb54
bb54:
  %t169 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t169, ptr %l98, !tbaa !27
  %t170 = load i64, ptr %l11, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr ptr, ptr %t173, i64 %t170
  %t175 = load ptr, ptr %t174, !tbaa !39
  store ptr %t175, ptr %l13, !tbaa !29
  %t177 = load ptr, ptr %l13, !tbaa !29
  store ptr %t177, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t178 = load ptr, ptr %l101, !tbaa !29
  %t179 = icmp ne ptr %t178, null
  br i1 %t179, label %bb55, label %bb56
bb55:
  %t181 = load ptr, ptr %l101, !tbaa !29
  %t182 = load i64, ptr %t181, !range !{i64 0, i64 22}
  %t184 = icmp eq i64 %t182, 3
  store i1 %t184, ptr %l102, !tbaa !21
  br label %bb56
bb56:
  %t185 = load i1, ptr %l102, !tbaa !21
  br i1 %t185, label %bb57, label %bb58
bb57:
  %t186 = load ptr, ptr %l13, !tbaa !29
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t188, i32 0, i32 1
  %t190 = load i32, ptr %t189, !range !{i32 0, i32 114}
  store i32 %t190, ptr %l14
  %t192 = load ptr, ptr %l13, !tbaa !29
  %t194 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t194, i32 0, i32 2
  %t196 = load ptr, ptr %t195
  store ptr %t196, ptr %l15, !tbaa !29
  br label %bb59
bb58:
  br label %bb66
bb59:
  %t198 = load i32, ptr %l14, !range !{i32 0, i32 114}
  %t200 = trunc i64 78 to i32
  %t201 = icmp eq i32 %t198, %t200
  br i1 %t201, label %bb60, label %bb61
bb60:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l15, !tbaa !29
  %t205 = load i32, ptr %l1, !tbaa !23
  %t206 = load ptr, ptr %l8, !tbaa !29
  %t208 = getelementptr %"compiler/ast:ForIn", ptr %t206, i32 0, i32 1
  %t209 = load i32, ptr %t208, !tbaa !23
  %t214 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexOf(ptr %v0, ptr %v0, ptr %t203, ptr %t204, i32 %t205, i32 %t209)
  store i1 %t214, ptr %l117
  br label %bb62
bb61:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb63
bb62:
  %t215 = load i1, ptr %l117, !tbaa !21
  store i1 %t215, ptr %l111, !tbaa !21
  br label %bb63
bb63:
  %t216 = load i1, ptr %l111, !tbaa !21
  br i1 %t216, label %bb64, label %bb65
bb64:
  %t217 = load i64, ptr %l9, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l9, !tbaa !24
  br label %bb71
bb65:
  br label %bb66
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_f2a7fa70aeee1b69_e04ea7b1678bce65)
  unreachable
bb71:
  br label %bb72
bb72:
  %t221 = load i64, ptr %l11, !tbaa !24
  %t223 = add i64 %t221, 1
  store i64 %t223, ptr %l11, !tbaa !24
  br label %bb51
bb73:
  %t225 = load i64, ptr %l9, !tbaa !24
  %t227 = icmp ne i64 %t225, 1
  br i1 %t227, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb81
bb75:
  %t229 = load ptr, ptr %l8, !tbaa !29
  %t231 = getelementptr %"compiler/ast:ForIn", ptr %t229, i32 0, i32 4
  %t232 = load { i64, ptr }, ptr %t231, !tbaa !27
  store { i64, ptr } %t232, ptr %l126, !tbaa !27
  %t233 = load ptr, ptr %l8, !tbaa !29
  %t235 = getelementptr %"compiler/ast:ForIn", ptr %t233, i32 0, i32 1
  %t236 = load i32, ptr %t235, !tbaa !23
  store i32 %t236, ptr %l128, !tbaa !23
  %t237 = icmp sge i64 1, 0
  br i1 %t237, label %bb76, label %bb77
bb76:
  %t239 = icmp sle i64 1, 2305843009213693951
  br i1 %t239, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_59e28be1bec28929_cee55857b56fdddd)
  unreachable
bb78:
  %t241 = mul i64 1, 4
  %t242 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t241)
  %t243 = load i32, ptr %l128, !tbaa !23
  store i64 0, ptr %t244
  br label %fill.245
fill.245:
  %t248 = load i64, ptr %t244
  %t249 = icmp slt i64 %t248, 1
  br i1 %t249, label %fillb.246, label %filld.247
fillb.246:
  %t250 = getelementptr i32, ptr %t242, i64 %t248
  store i32 %t243, ptr %t250
  %t251 = add i64 %t248, 1
  store i64 %t251, ptr %t244
  br label %fill.245
filld.247:
  %t252 = insertvalue { i64, ptr } undef, i64 1, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t242, 1
  %t254 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t256 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %s5, { i64, ptr } %t254, { i64, ptr } %t253)
  store i1 %t256, ptr %l132
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_59e28be1bec28929_cee55857b56fdddd)
  unreachable
bb80:
  %t257 = load i1, ptr %l132, !tbaa !21
  store i1 %t257, ptr %l124, !tbaa !21
  br label %bb81
bb81:
  %t258 = load i1, ptr %l124, !tbaa !21
  br i1 %t258, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s5)
  store i1 false, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t260 = load ptr, ptr %l8, !tbaa !29
  %t262 = getelementptr %"compiler/ast:ForIn", ptr %t260, i32 0, i32 4
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l135, !tbaa !27
  %t264 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr ptr, ptr %t265, i64 0
  %t267 = load ptr, ptr %t266, !tbaa !39
  %t269 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t267)
  store %"compiler/source:Span" %t269, ptr %l137
  br label %bb85
bb85:
  %t270 = getelementptr %"compiler/source:Span", ptr %l137, i32 0, i32 0
  %t271 = load i32, ptr %t270, !tbaa !23
  store i32 %t271, ptr %l16, !tbaa !23
  %t273 = load ptr, ptr %l8, !tbaa !29
  %t275 = getelementptr %"compiler/ast:ForIn", ptr %t273, i32 0, i32 4
  %t276 = load { i64, ptr }, ptr %t275, !tbaa !27
  store { i64, ptr } %t276, ptr %l140, !tbaa !27
  %t277 = load ptr, ptr %l8, !tbaa !29
  %t279 = getelementptr %"compiler/ast:ForIn", ptr %t277, i32 0, i32 4
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t284 = sub i64 %t282, 1
  %t286 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr ptr, ptr %t287, i64 %t284
  %t289 = load ptr, ptr %t288, !tbaa !39
  %t291 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t289)
  store %"compiler/source:Span" %t291, ptr %l146
  br label %bb86
bb86:
  %t292 = getelementptr %"compiler/source:Span", ptr %l146, i32 0, i32 1
  %t293 = load i32, ptr %t292, !tbaa !23
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l148, !tbaa !29
  %t296 = load i32, ptr %l16, !tbaa !23
  %t300 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s5, i32 %t296, i32 %t293)
  store %"compiler/source:Span" %t300, ptr %l151
  br label %bb87
bb87:
  %t301 = load ptr, ptr %l148, !tbaa !29
  %t302 = load %"compiler/source:Span", ptr %l151
  %t303 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t301, %"compiler/source:Span" %t302)
  store { i64, ptr } %t303, ptr %l152
  br label %bb88
bb88:
  %t304 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t304, ptr %l18, !tbaa !27
  %t305 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t305, ptr %l153, !tbaa !27
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load i32, ptr %l1, !tbaa !23
  %t310 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t306, i32 %t307)
  store { i64, ptr } %t310, ptr %l156
  br label %bb89
bb89:
  %t311 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t312 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t313 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %v0, { i64, ptr } %t311, { i64, ptr } %t312)
  store i64 %t313, ptr %l157
  br label %bb90
bb90:
  %t314 = load i64, ptr %l157, !tbaa !24
  %t315 = icmp eq i64 %t314, 1
  br i1 %t315, label %bb91, label %bb92
bb91:
  %t317 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t319 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %s5, { i64, ptr } %t317, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i64 %t319, ptr %l161
  br label %bb93
bb92:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb94
bb93:
  %t320 = load i64, ptr %l161, !tbaa !24
  %t321 = icmp eq i64 %t320, 0
  store i1 %t321, ptr %l159, !tbaa !21
  br label %bb94
bb94:
  %t323 = load i1, ptr %l159, !tbaa !21
  br i1 %t323, label %bb95, label %bb96
bb95:
  %t324 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t326 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %s5, { i64, ptr } %t324, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i64 %t326, ptr %l165
  br label %bb97
bb96:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb98
bb97:
  %t327 = load i64, ptr %l165, !tbaa !24
  %t328 = icmp eq i64 %t327, 0
  store i1 %t328, ptr %l163, !tbaa !21
  br label %bb98
bb98:
  %t330 = load i1, ptr %l163, !tbaa !21
  br i1 %t330, label %bb99, label %bb100
bb99:
  %t331 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t333 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %s5, { i64, ptr } %t331, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i64 %t333, ptr %l169
  br label %bb101
bb100:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb102
bb101:
  %t334 = load i64, ptr %l169, !tbaa !24
  %t335 = icmp eq i64 %t334, 0
  store i1 %t335, ptr %l167, !tbaa !21
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s5)
  %t337 = load i1, ptr %l167, !tbaa !21
  store i1 %t337, ptr %rv
  br label %ret
bb103:
  br i1 true, label %bb104, label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb107
bb106:
  store i1 false, ptr %rv
  br label %ret
bb107:
  call void @__olang_check_failed(ptr @olang_loc_e018255d83e94bb3_dcb9197bd54aa96f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleReport(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/typed:LocalUses"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca ptr
  %l28 = alloca i64
  %l31 = alloca i1
  %l37 = alloca ptr
  %l44 = alloca %"compiler/typed:LocalUses"
  %l47 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %s2 = alloca %olang.scope
  %t67 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l14, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l16
  br label %bb2
bb2:
  %t9 = load i64, ptr %l14, !tbaa !24
  %t10 = load i64, ptr %l16, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l21
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l21, !tbaa !29
  store ptr %t20, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 11
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 3
  %t32 = load i64, ptr %t31, !tbaa !24
  %t35 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emodOfFile(ptr %v0, ptr %t28, i64 %t32)
  store i64 %t35, ptr %l28
  br label %bb10
bb10:
  %t36 = load i64, ptr %l28, !tbaa !24
  store i64 %t36, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t37, 0
  br i1 %t39, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb14
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/load:Loader", ptr %t47, i32 0, i32 10
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l37
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l37, !tbaa !29
  %t56 = getelementptr %"compiler/load:Module", ptr %t54, i32 0, i32 3
  %t57 = load i1, ptr %t56, !tbaa !21
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t59 = load i1, ptr %l31, !tbaa !21
  br i1 %t59, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb16:
  br label %bb17
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t67, ptr %v0, ptr %v0, ptr %s2, ptr %t65, ptr %t66)
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %t67, i64 704, i1 false)
  br label %bb18
bb18:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l44, i64 704, i1 false)
  store i64 0, ptr %l6, !tbaa !24
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Body", ptr %t70, i32 0, i32 7
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l47
  br label %bb19
bb19:
  %t75 = load i64, ptr %l47, !tbaa !24
  store i64 %t75, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l6, !tbaa !24
  %t80 = icmp sgt i64 %t76, %t77
  br i1 %t80, label %bb20, label %bb21
bb20:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = icmp sgt i64 %t82, 0
  br i1 %t84, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb25
bb22:
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = sub i64 %t86, %t87
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t90, %t91
  %t96 = sub i64 %t94, 1
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = sdiv i64 %t96, %t97
  store i64 %t100, ptr %l54, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb24
bb24:
  %t102 = load i64, ptr %l54, !tbaa !24
  store i64 %t102, ptr %l51, !tbaa !24
  br label %bb25
bb25:
  %t103 = load i64, ptr %l51, !tbaa !24
  store i64 %t103, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb26
bb26:
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t112 = load i64, ptr %l6, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l8, !tbaa !24
  %t117 = mul i64 %t113, %t114
  %t120 = add i64 %t112, %t117
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l3, !tbaa !29
  %t124 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLocal(ptr %v0, ptr %v0, ptr %s2, ptr %t122, ptr %t123, ptr %l5, i64 %t124, i64 %t120)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t131 = load i64, ptr %l10, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l10, !tbaa !24
  br label %bb26
bb32:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb33:
  %t135 = load i64, ptr %l2, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l2, !tbaa !24
  br label %bb1
bb34:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca i1
  %l29 = alloca ptr
  %l34 = alloca ptr
  %l36 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v0, ptr %t1, %"compiler/source:Span" %a1, ptr %t3)
  store ptr %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l8, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t9, ptr %t10)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:If", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/ast:If", ptr %t20, i32 0, i32 2
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l14, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l19, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 17}
  %t37 = icmp eq i64 %t35, 3
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l20, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb23
bb13:
  %t45 = load ptr, ptr %l4, !tbaa !29
  %t47 = getelementptr %"compiler/typed:If", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2eskipsRest(ptr %v0, ptr %t48)
  store i1 %t51, ptr %l28
  br label %bb14
bb14:
  %t52 = load i1, ptr %l28, !tbaa !21
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l29, !tbaa !29
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/ast:If", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb17, label %bb18
bb16:
  br label %bb22
bb17:
  call void @__olang_check_failed(ptr @olang_loc_bb0c9585cb5cd0e5_782fa8d07097a5f1)
  unreachable
bb18:
  br label %bb19
bb19:
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/ast:If", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  store ptr %t64, ptr %l34, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t65)
  store ptr %t67, ptr %l36
  br label %bb20
bb20:
  %t68 = load ptr, ptr %l36, !tbaa !29
  %t70 = getelementptr %"compiler/check:frame", ptr %t68, i32 0, i32 7
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = load ptr, ptr %l29, !tbaa !29
  %t73 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t72, ptr %t73, i1 false, i64 %t71)
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_78bdf75b8d9b61cd_a447015cda228549)
  unreachable
bb28:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l10 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l52 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i32
  %l59 = alloca i1
  %l60 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = xor i1 %a2, true
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l12, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l13, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t10)
  store i32 %t12, ptr %l15
  br label %bb3
bb2:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb3:
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t14 = load i32, ptr %l15, !tbaa !23
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t15, ptr %l16
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l12, !tbaa !29
  %t17 = load i32, ptr %l16, !tbaa !23
  %t18 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t16, i32 %t17)
  store i1 %t18, ptr %l17
  br label %bb5
bb5:
  %t19 = load i1, ptr %l17, !tbaa !21
  store i1 %t19, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l10, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l18, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t22)
  store i32 %t24, ptr %l20
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t25 = load ptr, ptr %l18, !tbaa !29
  %t26 = load i32, ptr %l20, !tbaa !23
  %t27 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t27, ptr %l21
  br label %bb10
bb10:
  %t28 = load i32, ptr %l21, !tbaa !23
  store i32 %t28, ptr %rv
  br label %ret
bb11:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t30 = load ptr, ptr %l23, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t33 = load ptr, ptr %l23, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 8}
  %t36 = icmp eq i64 %t34, 3
  store i1 %t36, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l24, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l22, !tbaa !29
  br label %bb34
bb17:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t48 = load ptr, ptr %l31, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb18, label %bb19
bb18:
  %t51 = load ptr, ptr %l31, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 8}
  %t54 = icmp eq i64 %t52, 4
  store i1 %t54, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t55 = load i1, ptr %l32, !tbaa !21
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Elem", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  store ptr %t65, ptr %l22, !tbaa !29
  br label %bb34
bb23:
  %t68 = load ptr, ptr %l1, !tbaa !29
  store ptr %t68, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t69 = load ptr, ptr %l40, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb24, label %bb25
bb24:
  %t72 = load ptr, ptr %l40, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 8}
  %t75 = icmp eq i64 %t73, 5
  store i1 %t75, ptr %l41, !tbaa !21
  br label %bb25
bb25:
  %t76 = load i1, ptr %l41, !tbaa !21
  br i1 %t76, label %bb26, label %bb27
bb26:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l5, !tbaa !29
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Payload", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  store ptr %t86, ptr %l22, !tbaa !29
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store ptr null, ptr %l22, !tbaa !29
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_a3ad144bf6dfe67e_aaa74880c72315a2)
  unreachable
bb34:
  %t89 = load ptr, ptr %l22, !tbaa !29
  store ptr %t89, ptr %l6, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  br i1 %t92, label %bb35, label %bb36
bb35:
  %t94 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t94, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l52, !tbaa !29
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t97)
  store i32 %t99, ptr %l54
  br label %bb38
bb38:
  %t100 = load ptr, ptr %l52, !tbaa !29
  %t101 = load i32, ptr %l54, !tbaa !23
  %t102 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t102, ptr %l55
  br label %bb39
bb39:
  %t103 = load i32, ptr %l55, !tbaa !23
  store i32 %t103, ptr %l7, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t108 = load i32, ptr %l7, !tbaa !23
  %t111 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l59
  br label %bb40
bb40:
  %t112 = load i1, ptr %l59, !tbaa !21
  br i1 %t112, label %bb41, label %bb42
bb41:
  %t113 = load i32, ptr %l7, !tbaa !23
  store i32 %t113, ptr %l60, !tbaa !23
  br label %bb43
bb42:
  %t115 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t115, ptr %l60, !tbaa !23
  br label %bb43
bb43:
  %t117 = load i32, ptr %l60, !tbaa !23
  store i32 %t117, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportedTypeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/load:Import"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/names:Entry"
  %l8 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l22 = alloca ptr
  %l25 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca i64
  %l35 = alloca %"compiler/load:Import"
  %l43 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca i64
  %l53 = alloca %"compiler/names:Entry"
  %l57 = alloca i1
  %l60 = alloca { i64, ptr }
  %l62 = alloca i1
  %l68 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i32
  %l72 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %l90 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l93 = alloca { i64, ptr }
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @compiler_2fload_2ePublic(ptr %v1, { i64, ptr } %t1)
  store i1 %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i1, ptr %l11, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t7, ptr %l14, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l16, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t21, ptr %l14, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 10
  store ptr %t31, ptr %l20, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l22
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 1
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = load ptr, ptr %l20, !tbaa !29
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t39, i64 %t38)
  store ptr %t41, ptr %l25
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t44 = getelementptr %"compiler/load:Module", ptr %t42, i32 0, i32 11
  store ptr %t44, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l3, !tbaa !24
  store i64 %t46, ptr %l28, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l30
  br label %bb8
bb8:
  %t50 = load i64, ptr %l28, !tbaa !24
  %t51 = load i64, ptr %l30, !tbaa !24
  %t52 = icmp slt i64 %t50, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb9, label %bb10
bb9:
  br label %bb47
bb10:
  br label %bb11
bb11:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t57 = load i64, ptr %l3, !tbaa !24
  %t60 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store %"compiler/load:Import" %t60, ptr %l35
  br label %bb12
bb12:
  %t61 = load %"compiler/load:Import", ptr %l35
  store %"compiler/load:Import" %t61, ptr %l4
  %t62 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 5
  %t63 = load i64, ptr %t62, !tbaa !24
  %t65 = icmp slt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb13:
  br label %bb46
bb14:
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/names:Resolver", ptr %t73, i32 0, i32 1
  %t76 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 5
  %t77 = load i64, ptr %t76, !tbaa !24
  %t80 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t75, i64 %t77)
  store ptr %t80, ptr %l43
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l43, !tbaa !29
  %t83 = getelementptr %"compiler/names:Table", ptr %t81, i32 0, i32 0
  store ptr %t83, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t85 = load i64, ptr %l6, !tbaa !24
  store i64 %t85, ptr %l46, !tbaa !24
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l48
  br label %bb18
bb18:
  %t89 = load i64, ptr %l46, !tbaa !24
  %t90 = load i64, ptr %l48, !tbaa !24
  %t91 = icmp slt i64 %t89, %t90
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb19, label %bb20
bb19:
  br label %bb45
bb20:
  br label %bb21
bb21:
  %t95 = load ptr, ptr %l5, !tbaa !29
  %t96 = load i64, ptr %l6, !tbaa !24
  %t99 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t95, i64 %t96)
  store %"compiler/names:Entry" %t99, ptr %l53
  br label %bb22
bb22:
  %t100 = load %"compiler/names:Entry", ptr %l53
  store %"compiler/names:Entry" %t100, ptr %l7
  %t101 = getelementptr %"compiler/names:Entry", ptr %l7, i32 0, i32 2
  %t102 = load i32, ptr %t101, !range !{i32 0, i32 9}
  %t104 = trunc i64 4 to i32
  %t105 = icmp eq i32 %t102, %t104
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb27
bb24:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/names:Entry", ptr %l7, i32 0, i32 0
  %t111 = load i32, ptr %t110, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t109, i32 %t111)
  store { i64, ptr } %t114, ptr %l60
  br label %bb25
bb25:
  %t115 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t116, { i64, ptr } %t115)
  store i1 %t118, ptr %l62
  br label %bb26
bb26:
  %t119 = load i1, ptr %l62, !tbaa !21
  %t120 = xor i1 %t119, true
  store i1 %t120, ptr %l57, !tbaa !21
  br label %bb27
bb27:
  %t122 = load i1, ptr %l57, !tbaa !21
  br i1 %t122, label %bb28, label %bb29
bb28:
  br label %bb44
bb29:
  br label %bb30
bb30:
  %t123 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l8, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t130 = icmp eq i64 %t128, 0
  br i1 %t130, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s8
  %t132 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 3
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  %t135 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s8, { i64, ptr } %t133, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) })
  %t136 = extractvalue { i32, i64 } %t135, 1
  %t137 = extractvalue { i32, i64 } %t135, 0
  store i32 %t137, ptr %l71
  %t138 = icmp ne i32 %t137, 0
  br i1 %t138, label %bb34, label %ok.139, !prof !99
ok.139:
  store i64 %t136, ptr %l70
  br label %bb33
bb32:
  br label %bb43
bb33:
  %t140 = load i64, ptr %l70, !tbaa !24
  store i64 %t140, ptr %l68, !tbaa !24
  br label %bb36
bb34:
  br label %bb35
bb35:
  store i64 -1, ptr %l68, !tbaa !24
  br label %bb36
bb36:
  %t141 = load i64, ptr %l68, !tbaa !24
  %t142 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 3
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l72, !tbaa !27
  %t146 = add i64 %t141, 1
  store i64 %t146, ptr %l74, !tbaa !24
  %t147 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 3
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t148, 0
  store i64 %t151, ptr %l77, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  store i64 %t153, ptr %l78, !tbaa !24
  %t154 = load i64, ptr %l74, !tbaa !24
  %t155 = icmp sge i64 %t154, 0
  br i1 %t155, label %bb37, label %bb38
bb37:
  %t157 = load i64, ptr %l74, !tbaa !24
  %t158 = load i64, ptr %l77, !tbaa !24
  %t159 = icmp sle i64 %t157, %t158
  br i1 %t159, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_8fffa2dcb89c09a5_7d27f2eeb87e61a1)
  unreachable
bb39:
  %t161 = load i64, ptr %l77, !tbaa !24
  %t162 = load i64, ptr %l78, !tbaa !24
  %t163 = icmp sle i64 %t161, %t162
  br i1 %t163, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_8fffa2dcb89c09a5_7d27f2eeb87e61a1)
  unreachable
bb41:
  %t165 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = load i64, ptr %l74, !tbaa !24
  %t168 = load i64, ptr %l77, !tbaa !24
  %t169 = getelementptr i8, ptr %t166, i64 %t167
  %t170 = sub i64 %t168, %t167
  %t171 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t169, 1
  store { i64, ptr } %t172, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s8)
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8fffa2dcb89c09a5_7d27f2eeb87e61a1)
  unreachable
bb43:
  %t174 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t175 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t174, 1
  %t178 = extractvalue { i64, ptr } %t174, 0
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t183 = extractvalue { i64, ptr } %t175, 1
  %t184 = extractvalue { i64, ptr } %t175, 0
  %t185 = add i64 %t181, %t184
  %t186 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t185)
  call void @olang_textcopy(ptr %t186, ptr %t177, i64 %t178)
  %t187 = getelementptr i8, ptr %t186, i64 %t178
  call void @olang_textcopy(ptr %t187, ptr %t179, i64 %t180)
  %t188 = getelementptr i8, ptr %t187, i64 %t180
  call void @olang_textcopy(ptr %t188, ptr %t183, i64 %t184)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t186, 1
  store { i64, ptr } %t190, ptr %rv
  br label %ret
bb44:
  %t192 = load i64, ptr %l6, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l6, !tbaa !24
  br label %bb17
bb45:
  br label %bb46
bb46:
  %t196 = load i64, ptr %l3, !tbaa !24
  %t198 = add i64 %t196, 1
  store i64 %t198, ptr %l3, !tbaa !24
  br label %bb7
bb47:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l90, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t200, ptr %l91, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t201, 0
  store i64 %t202, ptr %l92, !tbaa !24
  %t203 = load i64, ptr %l92, !tbaa !24
  %t204 = mul i64 %t203, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t204)
  %t206 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  store { i64, ptr } %t207, ptr %l93, !tbaa !27
  %t208 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = load i64, ptr %l92, !tbaa !24
  %t213 = mul i64 %t212, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t209, ptr %t211, i64 %t213, i1 false)
  %t214 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t214, ptr %l91, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t215, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca %"compiler/check:reflList"
  %l6 = alloca %"compiler/check:reflVal"
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l28 = alloca ptr
  %l31 = alloca %"compiler/check:reflList"
  %l38 = alloca ptr
  %l42 = alloca %"compiler/check:reflVal"
  %l44 = alloca { i64, ptr }
  %l46 = alloca %"compiler/check:reflVal"
  %l47 = alloca %"compiler/check:reflVal"
  %l50 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l55 = alloca { i64, ptr }
  %l57 = alloca %"compiler/source:Span"
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %l63 = alloca ptr
  %l68 = alloca i32
  %l74 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca ptr
  %l91 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l103 = alloca ptr
  %l104 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca i32
  %l110 = alloca i32
  %l113 = alloca i1
  %l122 = alloca ptr
  %l129 = alloca ptr
  %l130 = alloca ptr
  %l131 = alloca i32
  %l133 = alloca i64
  %l136 = alloca %"compiler/source:Span"
  %l137 = alloca i64
  %l140 = alloca ptr
  %l141 = alloca %"compiler/source:Span"
  %l142 = alloca %"compiler/source:Span"
  %l143 = alloca i64
  %l147 = alloca ptr
  %l148 = alloca ptr
  %l149 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l157 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca i32
  %l161 = alloca i32
  %l166 = alloca ptr
  %l172 = alloca ptr
  %l177 = alloca ptr
  %l181 = alloca ptr
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i32, ptr %l19, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t9 = icmp sge i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l22, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l23
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t13)
  store %"compiler/source:Span" %t15, ptr %l25
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t16 = load i32, ptr %l4, !tbaa !23
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = load ptr, ptr %l22, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l23
  %t20 = load %"compiler/source:Span", ptr %l25
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v2, ptr %v3, ptr %t18, %"compiler/source:Span" %t19, %"compiler/source:Span" %t20, i32 %t16, { i64, ptr } %t17)
  store ptr %t23, ptr %l28
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l28, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t29 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t25, ptr %t26)
  store %"compiler/check:reflList" %t29, ptr %l31
  br label %bb7
bb7:
  %t30 = load %"compiler/check:reflList", ptr %l31
  store %"compiler/check:reflList" %t30, ptr %l5
  %t31 = getelementptr %"compiler/check:reflList", ptr %l5, i32 0, i32 0
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = getelementptr %"compiler/check:reflList", ptr %l5, i32 0, i32 1
  %t35 = load i32, ptr %t34, !tbaa !23
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t39 = icmp eq i32 %t35, %t36
  br i1 %t39, label %bb10, label %bb11
bb9:
  br label %bb35
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l1
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t41, %"compiler/source:Span" %t42)
  store ptr %t45, ptr %l38
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  %t46 = load ptr, ptr %l38, !tbaa !29
  store ptr %t46, ptr %rv
  br label %ret
bb13:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp eq i64 %t49, 1
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t54, ptr %l44, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 0
  %t58 = load ptr, ptr %t57, !tbaa !39
  %t61 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflInt(ptr %v0, ptr %v2, ptr %s2, ptr %t53, ptr %t58)
  store %"compiler/check:reflVal" %t61, ptr %l46
  br label %bb16
bb15:
  %t62 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %s2)
  store %"compiler/check:reflVal" %t62, ptr %l47
  br label %bb17
bb16:
  %t63 = load %"compiler/check:reflVal", ptr %l46
  store %"compiler/check:reflVal" %t63, ptr %l42
  br label %bb18
bb17:
  %t64 = load %"compiler/check:reflVal", ptr %l47
  store %"compiler/check:reflVal" %t64, ptr %l42
  br label %bb18
bb18:
  %t65 = load %"compiler/check:reflVal", ptr %l42
  store %"compiler/check:reflVal" %t65, ptr %l6
  %t66 = getelementptr %"compiler/check:reflVal", ptr %l6, i32 0, i32 0
  %t67 = load i1, ptr %t66, !tbaa !21
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l50, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb21, label %bb22
bb20:
  br label %bb28
bb21:
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t78, ptr %l55, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr ptr, ptr %t80, i64 0
  %t82 = load ptr, ptr %t81, !tbaa !39
  %t84 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t82)
  store %"compiler/source:Span" %t84, ptr %l57
  br label %bb23
bb22:
  %t85 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t85, ptr %l54
  br label %bb24
bb23:
  %t87 = load %"compiler/source:Span", ptr %l57
  store %"compiler/source:Span" %t87, ptr %l54
  br label %bb24
bb24:
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexNotConst(ptr %s4)
  store %"compiler/diagmsg:Msg" %t88, ptr %l59
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l50, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l54
  %t91 = load %"compiler/diagmsg:Msg", ptr %l59
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t89, %"compiler/source:Span" %t90, %"compiler/diagmsg:Msg" %t91)
  store i64 %t92, ptr %l60
  br label %bb26
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l1
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t93, %"compiler/source:Span" %t94)
  store ptr %t97, ptr %l63
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  %t98 = load ptr, ptr %l63, !tbaa !29
  store ptr %t98, ptr %rv
  br label %ret
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l1
  %t101 = load %"compiler/check:reflList", ptr %l5
  %t102 = getelementptr %"compiler/check:reflVal", ptr %l6, i32 0, i32 2
  %t103 = load i64, ptr %t102, !tbaa !24
  %t108 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %t99, %"compiler/source:Span" %t100, %"compiler/check:reflList" %t101, i64 %t103)
  store i32 %t108, ptr %l68
  br label %bb29
bb29:
  %t109 = load i32, ptr %l68, !tbaa !23
  store i32 %t109, ptr %l7, !tbaa !23
  %t110 = load i32, ptr %l7, !tbaa !23
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t114 = icmp eq i32 %t110, %t111
  br i1 %t114, label %bb30, label %bb31
bb30:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l1
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t116, %"compiler/source:Span" %t117)
  store ptr %t120, ptr %l74
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s2)
  %t121 = load ptr, ptr %l74, !tbaa !29
  store ptr %t121, ptr %rv
  br label %ret
bb33:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l1
  %t124 = load i32, ptr %l7, !tbaa !23
  %t128 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v3, ptr %t122, %"compiler/source:Span" %t123, i32 %t124)
  store ptr %t128, ptr %l78
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  %t129 = load ptr, ptr %l78, !tbaa !29
  store ptr %t129, ptr %rv
  br label %ret
bb35:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t134 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v3, ptr %t130, ptr %t131)
  store ptr %t134, ptr %l81
  br label %bb36
bb36:
  %t135 = load ptr, ptr %l81, !tbaa !29
  store ptr %t135, ptr %l8, !tbaa !29
  %t136 = load ptr, ptr %l8, !tbaa !29
  %t138 = icmp eq ptr %t136, null
  br i1 %t138, label %bb37, label %bb38
bb37:
  %t140 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t140, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 0
  store i64 %t144, ptr %l11, !tbaa !24
  br label %bb39
bb38:
  br label %bb47
bb39:
  %t146 = load i64, ptr %l10, !tbaa !24
  %t147 = load i64, ptr %l11, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb40, label %bb41
bb40:
  br label %bb45
bb41:
  br label %bb42
bb42:
  %t154 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t154, ptr %l91, !tbaa !27
  %t155 = load i64, ptr %l10, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr ptr, ptr %t158, i64 %t155
  %t160 = load ptr, ptr %t159, !tbaa !39
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t162, ptr %t160, i32 %t165)
  store ptr %t169, ptr %l98
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t170 = load i64, ptr %l10, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l10, !tbaa !24
  br label %bb39
bb45:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l1
  %t178 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t174, %"compiler/source:Span" %t175)
  store ptr %t178, ptr %l103
  br label %bb46
bb46:
  %t179 = load ptr, ptr %l103, !tbaa !29
  store ptr %t179, ptr %rv
  br label %ret
bb47:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l104, !tbaa !29
  %t181 = load ptr, ptr %l8, !tbaa !29
  %t183 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v3, ptr %t181)
  store i32 %t183, ptr %l106
  br label %bb48
bb48:
  %t184 = load ptr, ptr %l104, !tbaa !29
  %t185 = load i32, ptr %l106, !tbaa !23
  %t186 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t184, i32 %t185)
  store i32 %t186, ptr %l107
  br label %bb49
bb49:
  %t187 = load i32, ptr %l107, !tbaa !23
  store i32 %t187, ptr %l13, !tbaa !23
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l13, !tbaa !23
  %t192 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l110
  br label %bb50
bb50:
  %t193 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t194 = load i32, ptr %l110, !tbaa !23
  %t196 = icmp eq i32 %t194, %t193
  br i1 %t196, label %bb51, label %bb52
bb51:
  %t198 = load i32, ptr %l13, !tbaa !23
  %t199 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t202 = icmp ne i32 %t198, %t199
  store i1 %t202, ptr %l113, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb53
bb53:
  %t204 = load i1, ptr %l113, !tbaa !21
  br i1 %t204, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s10
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l1
  %t207 = load ptr, ptr %l8, !tbaa !29
  %t208 = load i32, ptr %l13, !tbaa !23
  %t209 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t215 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueElem(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t205, %"compiler/source:Span" %t206, ptr %t207, i32 %t208, { i64, ptr } %t209)
  store ptr %t215, ptr %l122
  br label %bb56
bb55:
  br label %bb79
bb56:
  %t216 = load ptr, ptr %l122, !tbaa !29
  store ptr %t216, ptr %l14, !tbaa !29
  %t217 = load ptr, ptr %l14, !tbaa !29
  %t219 = icmp eq ptr %t217, null
  %t221 = xor i1 %t219, true
  br i1 %t221, label %bb57, label %bb58
bb57:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load %"compiler/source:Span", ptr %l1
  %t225 = load ptr, ptr %l14, !tbaa !29
  %t229 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t223, %"compiler/source:Span" %t224, ptr %t225)
  store ptr %t229, ptr %l129
  br label %bb59
bb58:
  br label %bb60
bb59:
  call void @__olang_scope_close(ptr %s10)
  %t230 = load ptr, ptr %l129, !tbaa !29
  store ptr %t230, ptr %rv
  br label %ret
bb60:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l130, !tbaa !29
  %t232 = load i32, ptr %l13, !tbaa !23
  store i32 %t232, ptr %l131, !tbaa !23
  %t233 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  store i64 %t235, ptr %l133, !tbaa !24
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load %"compiler/source:Span", ptr %l1
  %t240 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %t236, %"compiler/source:Span" %t237)
  store %"compiler/source:Span" %t240, ptr %l136
  br label %bb61
bb61:
  %t241 = load ptr, ptr %l130, !tbaa !29
  %t242 = load i32, ptr %l131, !tbaa !23
  %t243 = load i64, ptr %l133, !tbaa !24
  %t244 = load %"compiler/source:Span", ptr %l136
  %t245 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s10, ptr %s10, ptr %t241, i32 %t242, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, i64 %t243, %"compiler/source:Span" %t244, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i64 %t245, ptr %l137
  br label %bb62
bb62:
  %t246 = load i64, ptr %l137, !tbaa !24
  store i64 %t246, ptr %l15, !tbaa !24
  %t247 = load i64, ptr %l15, !tbaa !24
  %t249 = icmp sge i64 %t247, 0
  br i1 %t249, label %bb63, label %bb64
bb63:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l140, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t252, ptr %l141
  %t253 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t253, ptr %l142
  %t254 = load i64, ptr %l15, !tbaa !24
  store i64 %t254, ptr %l143, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load %"compiler/source:Span", ptr %l1
  %t257 = load ptr, ptr %l8, !tbaa !29
  %t261 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v0, ptr %t255, %"compiler/source:Span" %t256, ptr %t257)
  store ptr %t261, ptr %l147
  br label %bb65
bb64:
  br label %bb75
bb65:
  %t262 = load ptr, ptr %l147, !tbaa !29
  store ptr %t262, ptr %l148, !tbaa !29
  %t263 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t263, ptr %l149, !tbaa !27
  %t264 = icmp sge i64 0, 0
  br i1 %t264, label %bb66, label %bb67
bb66:
  %t266 = icmp sle i64 0, 1152921504606846975
  br i1 %t266, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_23e55da1d35c3b26_9d147ecacbf30ffa)
  unreachable
bb68:
  %t268 = mul i64 0, 8
  %t269 = insertvalue { i64, ptr } undef, i64 0, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t270, ptr %l152, !tbaa !27
  %t271 = icmp sge i64 0, 0
  br i1 %t271, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_23e55da1d35c3b26_9d147ecacbf30ffa)
  unreachable
bb70:
  %t273 = icmp sle i64 0, 2305843009213693951
  br i1 %t273, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_2136f99ca1795ebb_470e73d5134ce74f)
  unreachable
bb72:
  %t275 = mul i64 0, 4
  %t276 = insertvalue { i64, ptr } undef, i64 0, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t278 = load ptr, ptr %l140, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l141
  %t280 = load %"compiler/source:Span", ptr %l142
  %t281 = load i64, ptr %l143, !tbaa !24
  %t282 = load ptr, ptr %l148, !tbaa !29
  %t283 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t284 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t286 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %v3, ptr %t278, %"compiler/source:Span" %t279, %"compiler/source:Span" %t280, i64 %t281, ptr %t282, { i64, ptr } %t283, { i64, ptr } %t284, { i64, ptr } %t277)
  store ptr %t286, ptr %l156
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_2136f99ca1795ebb_470e73d5134ce74f)
  unreachable
bb74:
  call void @__olang_scope_close(ptr %s10)
  %t287 = load ptr, ptr %l156, !tbaa !29
  store ptr %t287, ptr %rv
  br label %ret
bb75:
  %t288 = load ptr, ptr %l0, !tbaa !29
  store ptr %t288, ptr %l157, !tbaa !29
  %t289 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t289, ptr %l158
  %t290 = load i32, ptr %l13, !tbaa !23
  store i32 %t290, ptr %l159, !tbaa !23
  %t291 = load ptr, ptr %l8, !tbaa !29
  %t293 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v3, ptr %t291)
  store i32 %t293, ptr %l161
  br label %bb76
bb76:
  %t294 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t297 = load ptr, ptr %l157, !tbaa !29
  %t298 = load %"compiler/source:Span", ptr %l158
  %t299 = load i32, ptr %l159, !tbaa !23
  %t300 = load i32, ptr %l161, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoIndex(ptr %v0, ptr %t297, %"compiler/source:Span" %t298, i32 %t299, i32 %t300, i64 %t296)
  br label %bb77
bb77:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load %"compiler/source:Span", ptr %l1
  %t306 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t302, %"compiler/source:Span" %t303)
  store ptr %t306, ptr %l166
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s10)
  %t307 = load ptr, ptr %l166, !tbaa !29
  store ptr %t307, ptr %rv
  br label %ret
bb79:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load %"compiler/source:Span", ptr %l1
  %t310 = load ptr, ptr %l8, !tbaa !29
  %t311 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t317 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t308, %"compiler/source:Span" %t309, ptr %t310, { i64, ptr } %t311, i32 0)
  store ptr %t317, ptr %l172
  br label %bb80
bb80:
  %t318 = load ptr, ptr %l172, !tbaa !29
  store ptr %t318, ptr %l16, !tbaa !29
  %t319 = load ptr, ptr %l16, !tbaa !29
  %t321 = icmp eq ptr %t319, null
  br i1 %t321, label %bb81, label %bb82
bb81:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load %"compiler/source:Span", ptr %l1
  %t327 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t323, %"compiler/source:Span" %t324)
  store ptr %t327, ptr %l177
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t328 = load ptr, ptr %l177, !tbaa !29
  store ptr %t328, ptr %rv
  br label %ret
bb84:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l1
  %t331 = load ptr, ptr %l16, !tbaa !29
  %t335 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t329, %"compiler/source:Span" %t330, ptr %t331)
  store ptr %t335, ptr %l181
  br label %bb85
bb85:
  %t336 = load ptr, ptr %l181, !tbaa !29
  store ptr %t336, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferredCtor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"compiler/generic:Binding"
  %lp14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca %"compiler/check:litv"
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i64
  %l36 = alloca i32
  %l41 = alloca i32
  %l44 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca i32
  %l53 = alloca i1
  %l58 = alloca i32
  %l61 = alloca i1
  %l66 = alloca i32
  %l69 = alloca i1
  %l74 = alloca i32
  %l81 = alloca ptr
  %l85 = alloca i32
  %l88 = alloca i32
  %l96 = alloca ptr
  %l100 = alloca i32
  %l106 = alloca ptr
  %l110 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l125 = alloca i64
  %l130 = alloca i64
  %l133 = alloca ptr
  %l138 = alloca i32
  %l139 = alloca { i64, ptr }
  %l142 = alloca %"compiler/generic:Binding"
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l149 = alloca i64
  %l152 = alloca i64
  %l171 = alloca { i64, ptr }
  %l175 = alloca %"compiler/check:litv"
  %l177 = alloca i1
  %l179 = alloca { i64, ptr }
  %l182 = alloca i1
  %l184 = alloca i1
  %l187 = alloca { i64, ptr }
  %l190 = alloca i1
  %l195 = alloca ptr
  %l196 = alloca { i64, ptr }
  %l198 = alloca i32
  %l200 = alloca i32
  %l204 = alloca i32
  %l206 = alloca i32
  %l208 = alloca { i64, ptr }
  %l211 = alloca ptr
  %l212 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca i1
  %l220 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l230 = alloca i1
  %l235 = alloca i1
  %l238 = alloca i32
  %l241 = alloca i1
  %l244 = alloca i32
  %l247 = alloca ptr
  %l248 = alloca { i64, ptr }
  %l250 = alloca i32
  %l253 = alloca i32
  %l271 = alloca i64
  %l274 = alloca i64
  %l292 = alloca { i64, ptr }
  %l298 = alloca i1
  %l303 = alloca i1
  %l304 = alloca { i64, ptr }
  %l305 = alloca i64
  %l308 = alloca i32
  %l312 = alloca ptr
  %l317 = alloca i32
  %l318 = alloca { i64, ptr }
  %l319 = alloca ptr
  %l320 = alloca %"compiler/source:Span"
  %l323 = alloca %"compiler/diagmsg:Msg"
  %l324 = alloca i64
  %l327 = alloca ptr
  %l330 = alloca i1
  %l331 = alloca { i64, ptr }
  %l332 = alloca i64
  %l335 = alloca ptr
  %l340 = alloca i32
  %l342 = alloca i32
  %l345 = alloca ptr
  %l348 = alloca i32
  %l349 = alloca i32
  %l352 = alloca { i64, ptr }
  %l353 = alloca i64
  %l359 = alloca i32
  %l363 = alloca ptr
  %l364 = alloca i32
  %l369 = alloca i32
  %l370 = alloca i32
  %l374 = alloca i1
  %l376 = alloca i1
  %l380 = alloca i1
  %l384 = alloca ptr
  %l388 = alloca i32
  %l394 = alloca ptr
  %l397 = alloca i64
  %l404 = alloca ptr
  %l405 = alloca %"compiler/source:Span"
  %l406 = alloca %"compiler/source:Span"
  %l407 = alloca i32
  %l412 = alloca ptr
  %l413 = alloca { i64, ptr }
  %l415 = alloca { i64, ptr }
  %l416 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %rv = alloca ptr
  %t777 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l5, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp ne i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l44, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l5, !tbaa !23
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l47
  br label %bb3
bb2:
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t18, ptr %l41, !tbaa !23
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l44, !tbaa !29
  %t21 = load i32, ptr %l47, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l48
  br label %bb4
bb4:
  %t23 = load i32, ptr %l48, !tbaa !23
  store i32 %t23, ptr %l41, !tbaa !23
  br label %bb5
bb5:
  %t24 = load i32, ptr %l41, !tbaa !23
  store i32 %t24, ptr %l6, !tbaa !23
  %t25 = load i32, ptr %l6, !tbaa !23
  %t26 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t29 = icmp ne i32 %t25, %t26
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l6, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l58
  br label %bb8
bb7:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb9
bb8:
  %t41 = load i32, ptr %l58, !range !{i32 0, i32 33}
  %t43 = trunc i64 18 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %l53, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l53, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l6, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l66
  br label %bb12
bb11:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb13
bb12:
  %t57 = load i32, ptr %l3, !tbaa !23
  %t58 = load i32, ptr %l66, !tbaa !23
  %t60 = icmp eq i32 %t58, %t57
  store i1 %t60, ptr %l61, !tbaa !21
  br label %bb13
bb13:
  %t62 = load i1, ptr %l61, !tbaa !21
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l74
  br label %bb16
bb15:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb17
bb16:
  %t73 = load i32, ptr %l74, !tbaa !23
  %t74 = icmp ne i32 %t73, 0
  store i1 %t74, ptr %l69, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l69, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l1
  %t79 = load %"compiler/source:Span", ptr %l2
  %t80 = load i32, ptr %l6, !tbaa !23
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v1, ptr %v2, ptr %t77, %"compiler/source:Span" %t78, %"compiler/source:Span" %t79, i32 %t80, { i64, ptr } %t81)
  store ptr %t87, ptr %l81
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t88 = load ptr, ptr %l81, !tbaa !29
  store ptr %t88, ptr %rv
  br label %ret
bb21:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l85
  br label %bb22
bb22:
  %t97 = load i32, ptr %l85, !tbaa !23
  store i32 %t97, ptr %l7, !tbaa !23
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l7, !tbaa !23
  %t102 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l88
  br label %bb23
bb23:
  %t103 = load i32, ptr %l88, !range !{i32 0, i32 6}
  %t105 = trunc i64 0 to i32
  %t106 = icmp eq i32 %t103, %t105
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s2
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s2, ptr %t110, %"compiler/source:Span" %t111, { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l1
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t114, %"compiler/source:Span" %t115)
  store ptr %t118, ptr %l96
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t119 = load ptr, ptr %l96, !tbaa !29
  store ptr %t119, ptr %rv
  br label %ret
bb28:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t124 = load i32, ptr %l7, !tbaa !23
  %t127 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t123, i32 %t124)
  store i32 %t127, ptr %l100
  br label %bb29
bb29:
  %t128 = load i32, ptr %l100, !tbaa !23
  store i32 %t128, ptr %l8, !tbaa !23
  %t129 = load i32, ptr %l8, !tbaa !23
  %t130 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t133 = icmp eq i32 %t129, %t130
  br i1 %t133, label %bb30, label %bb31
bb30:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l1
  %t139 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t135, %"compiler/source:Span" %t136)
  store ptr %t139, ptr %l106
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t140 = load ptr, ptr %l106, !tbaa !29
  store ptr %t140, ptr %rv
  br label %ret
bb33:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l3, !tbaa !23
  %t143 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t147 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorNamed(ptr %v0, ptr %v1, ptr %v0, ptr %t141, i32 %t142, { i64, ptr } %t143)
  store { i64, ptr } %t147, ptr %l110
  br label %bb34
bb34:
  %t148 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t148, ptr %l4, !tbaa !27
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 153
  %t152 = load i1, ptr %t151, !tbaa !21
  br i1 %t152, label %bb35, label %bb36
bb35:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 153
  store i1 false, ptr %t156, !tbaa !21
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t157, { i64, ptr } %t158)
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l1
  %t165 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t161, %"compiler/source:Span" %t162)
  store ptr %t165, ptr %l118
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t166 = load ptr, ptr %l118, !tbaa !29
  store ptr %t166, ptr %rv
  br label %ret
bb39:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 154
  %t171 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %s0, ptr %t169)
  store { i64, ptr } %t171, ptr %l121
  br label %bb40
bb40:
  %t172 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t172, ptr %l9, !tbaa !27
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/check:Checker", ptr %t173, i32 0, i32 154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t175)
  br label %bb41
bb41:
  %t177 = load i32, ptr %l3, !tbaa !23
  %t179 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t177)
  store i64 %t179, ptr %l125
  br label %bb42
bb42:
  %t180 = load i64, ptr %l125, !tbaa !24
  store i64 %t180, ptr %l10, !tbaa !24
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = getelementptr %"compiler/generic:Program", ptr %t184, i32 0, i32 2
  %t187 = load i32, ptr %l3, !tbaa !23
  %t190 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t186, i32 %t187)
  store i64 %t190, ptr %l130
  br label %bb43
bb43:
  %t191 = load i64, ptr %l130, !tbaa !24
  store i64 %t191, ptr %l11, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/check:Checker", ptr %t192, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = getelementptr %"compiler/generic:Program", ptr %t195, i32 0, i32 2
  store ptr %t197, ptr %l133, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/check:Checker", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t203 = getelementptr %"compiler/generic:Program", ptr %t201, i32 0, i32 2
  %t204 = load i32, ptr %l8, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l138
  br label %bb44
bb44:
  %t208 = load ptr, ptr %l133, !tbaa !29
  %t209 = load i32, ptr %l138, !tbaa !23
  %t210 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t208, i32 %t209)
  store { i64, ptr } %t210, ptr %l139
  br label %bb45
bb45:
  %t211 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t211, ptr %l12, !tbaa !27
  %t212 = load i64, ptr %l10, !tbaa !24
  %t213 = load i64, ptr %l11, !tbaa !24
  %t216 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t212, i64 %t213)
  store %"compiler/generic:Binding" %t216, ptr %l142
  br label %bb46
bb46:
  %t217 = load %"compiler/generic:Binding", ptr %l142
  store %"compiler/generic:Binding" %t217, ptr %l13
  %t218 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l143
  br label %bb47
bb47:
  %t219 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t219, ptr %lp14
  %t220 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143
  %t221 = load ptr, ptr %lp14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %t221
  store i64 0, ptr %l15, !tbaa !24
  %t222 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t222, 0
  store i64 %t224, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t226 = load i64, ptr %l16, !tbaa !24
  %t227 = load i64, ptr %l15, !tbaa !24
  %t230 = icmp sgt i64 %t226, %t227
  br i1 %t230, label %bb48, label %bb49
bb48:
  %t232 = load i64, ptr %l17, !tbaa !24
  %t234 = icmp sgt i64 %t232, 0
  br i1 %t234, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb53
bb50:
  %t236 = load i64, ptr %l16, !tbaa !24
  %t237 = load i64, ptr %l15, !tbaa !24
  %t240 = sub i64 %t236, %t237
  %t241 = load i64, ptr %l17, !tbaa !24
  %t244 = add i64 %t240, %t241
  %t246 = sub i64 %t244, 1
  %t247 = load i64, ptr %l17, !tbaa !24
  %t250 = sdiv i64 %t246, %t247
  store i64 %t250, ptr %l152, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb52
bb52:
  %t252 = load i64, ptr %l152, !tbaa !24
  store i64 %t252, ptr %l149, !tbaa !24
  br label %bb53
bb53:
  %t253 = load i64, ptr %l149, !tbaa !24
  store i64 %t253, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb54
bb54:
  %t254 = load i64, ptr %l19, !tbaa !24
  %t255 = load i64, ptr %l18, !tbaa !24
  %t258 = icmp slt i64 %t254, %t255
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb55, label %bb56
bb55:
  br label %bb117
bb56:
  br label %bb57
bb57:
  %t262 = load i64, ptr %l15, !tbaa !24
  %t263 = load i64, ptr %l19, !tbaa !24
  %t264 = load i64, ptr %l17, !tbaa !24
  %t267 = mul i64 %t263, %t264
  %t270 = add i64 %t262, %t267
  store i64 %t270, ptr %l20, !tbaa !24
  store ptr null, ptr %l21, !tbaa !29
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t273, ptr %l171, !tbaa !27
  %t274 = load i64, ptr %l20, !tbaa !24
  %t276 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr ptr, ptr %t277, i64 %t274
  %t279 = load ptr, ptr %t278, !tbaa !39
  %t283 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v0, ptr %t272, ptr %t279)
  store %"compiler/check:litv" %t283, ptr %l175
  br label %bb58
bb58:
  %t284 = load %"compiler/check:litv", ptr %l175
  store %"compiler/check:litv" %t284, ptr %l22
  %t285 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 0
  %t286 = load i1, ptr %t285, !tbaa !21
  br i1 %t286, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l177, !tbaa !21
  br label %bb62
bb60:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t289, ptr %l179, !tbaa !27
  %t290 = load i64, ptr %l20, !tbaa !24
  %t292 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr ptr, ptr %t293, i64 %t290
  %t295 = load ptr, ptr %t294, !tbaa !39
  %t298 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v0, ptr %t288, ptr %t295)
  store i1 %t298, ptr %l182
  br label %bb61
bb61:
  %t299 = load i1, ptr %l182, !tbaa !21
  store i1 %t299, ptr %l177, !tbaa !21
  br label %bb62
bb62:
  %t300 = load i1, ptr %l177, !tbaa !21
  br i1 %t300, label %bb63, label %bb64
bb63:
  %t301 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 0
  %t302 = load i1, ptr %t301, !tbaa !21
  br i1 %t302, label %bb65, label %bb66
bb64:
  %t304 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t304, ptr %l208, !tbaa !27
  %t305 = load i64, ptr %l20, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l208, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr ptr, ptr %t308, i64 %t305
  %t310 = load ptr, ptr %t309, !tbaa !39
  store ptr %t310, ptr %l24, !tbaa !29
  %t312 = load ptr, ptr %l24, !tbaa !29
  store ptr %t312, ptr %l211, !tbaa !29
  store i1 false, ptr %l212, !tbaa !21
  %t313 = load ptr, ptr %l211, !tbaa !29
  %t314 = icmp ne ptr %t313, null
  br i1 %t314, label %bb78, label %bb79
bb65:
  %t316 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 1
  %t317 = load i1, ptr %t316, !tbaa !21
  store i1 %t317, ptr %l184, !tbaa !21
  br label %bb68
bb66:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t320, ptr %l187, !tbaa !27
  %t321 = load i64, ptr %l20, !tbaa !24
  %t323 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr ptr, ptr %t324, i64 %t321
  %t326 = load ptr, ptr %t325, !tbaa !39
  %t329 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v0, ptr %t319, ptr %t326)
  store i1 %t329, ptr %l190
  br label %bb67
bb67:
  %t330 = load i1, ptr %l190, !tbaa !21
  store i1 %t330, ptr %l184, !tbaa !21
  br label %bb68
bb68:
  %t331 = load i1, ptr %l184, !tbaa !21
  store i1 %t331, ptr %l23, !tbaa !21
  %t332 = load i64, ptr %l20, !tbaa !24
  %t333 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t333, 0
  %t338 = icmp slt i64 %t332, %t335
  br i1 %t338, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s8
  %t340 = load ptr, ptr %l0, !tbaa !29
  store ptr %t340, ptr %l195, !tbaa !29
  %t341 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t341, ptr %l196, !tbaa !27
  %t342 = load i64, ptr %l20, !tbaa !24
  %t344 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr i32, ptr %t345, i64 %t342
  %t347 = load i32, ptr %t346, !tbaa !33
  store i32 %t347, ptr %l198, !tbaa !23
  %t348 = load i1, ptr %l23, !tbaa !21
  br i1 %t348, label %bb71, label %bb72
bb70:
  br label %bb77
bb71:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/check:Checker", ptr %t350, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !29
  %t355 = getelementptr %"compiler/generic:Program", ptr %t353, i32 0, i32 2
  %t357 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s8, ptr %t355, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i32 %t357, ptr %l204
  br label %bb73
bb72:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t358)
  store i32 %t360, ptr %l206
  br label %bb74
bb73:
  %t361 = load i32, ptr %l204, !tbaa !23
  store i32 %t361, ptr %l200, !tbaa !23
  br label %bb75
bb74:
  %t362 = load i32, ptr %l206, !tbaa !23
  store i32 %t362, ptr %l200, !tbaa !23
  br label %bb75
bb75:
  %t363 = load ptr, ptr %l195, !tbaa !29
  %t364 = load i32, ptr %l198, !tbaa !23
  %t365 = load i32, ptr %l200, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t363, i32 %t364, i32 %t365, ptr %l13, i1 true, i1 false)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s8)
  br label %bb77
bb77:
  br label %bb94
bb78:
  %t367 = load ptr, ptr %l211, !tbaa !29
  %t368 = load i64, ptr %t367, !range !{i64 0, i64 30}
  %t370 = icmp eq i64 %t368, 22
  store i1 %t370, ptr %l212, !tbaa !21
  br label %bb79
bb79:
  %t371 = load i1, ptr %l212, !tbaa !21
  br i1 %t371, label %bb80, label %bb81
bb80:
  br label %bb86
bb81:
  %t372 = load ptr, ptr %l24, !tbaa !29
  store ptr %t372, ptr %l215, !tbaa !29
  store i1 false, ptr %l216, !tbaa !21
  %t373 = load ptr, ptr %l215, !tbaa !29
  %t374 = icmp ne ptr %t373, null
  br i1 %t374, label %bb82, label %bb83
bb82:
  %t376 = load ptr, ptr %l215, !tbaa !29
  %t377 = load i64, ptr %t376, !range !{i64 0, i64 30}
  %t379 = icmp eq i64 %t377, 25
  store i1 %t379, ptr %l216, !tbaa !21
  br label %bb83
bb83:
  %t380 = load i1, ptr %l216, !tbaa !21
  br i1 %t380, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb93
bb87:
  br i1 true, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t382, ptr %l220, !tbaa !27
  %t383 = load i64, ptr %l20, !tbaa !24
  %t385 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr ptr, ptr %t386, i64 %t383
  %t388 = load ptr, ptr %t387, !tbaa !39
  %t390 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t394 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v0, ptr %v2, ptr %t381, ptr %t388, i32 %t390)
  store ptr %t394, ptr %l225
  br label %bb91
bb91:
  %t395 = load ptr, ptr %l225, !tbaa !29
  store ptr %t395, ptr %l21, !tbaa !29
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_da5fb2c1be530ed4_472d2caf6c74c4d8)
  unreachable
bb93:
  br label %bb94
bb94:
  %t397 = load ptr, ptr %l21, !tbaa !29
  %t399 = icmp eq ptr %t397, null
  %t401 = xor i1 %t399, true
  br i1 %t401, label %bb95, label %bb96
bb95:
  %t403 = load i64, ptr %l20, !tbaa !24
  %t404 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t404, 0
  %t409 = icmp slt i64 %t403, %t406
  store i1 %t409, ptr %l230, !tbaa !21
  br label %bb97
bb96:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb97
bb97:
  %t411 = load i1, ptr %l230, !tbaa !21
  br i1 %t411, label %bb98, label %bb99
bb98:
  %t412 = load ptr, ptr %l21, !tbaa !29
  %t415 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t412)
  store i32 %t415, ptr %l238
  br label %bb100
bb99:
  store i1 false, ptr %l235, !tbaa !21
  br label %bb101
bb100:
  %t416 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t417 = load i32, ptr %l238, !tbaa !23
  %t419 = icmp ne i32 %t417, %t416
  store i1 %t419, ptr %l235, !tbaa !21
  br label %bb101
bb101:
  %t421 = load i1, ptr %l235, !tbaa !21
  br i1 %t421, label %bb102, label %bb103
bb102:
  %t422 = load ptr, ptr %l21, !tbaa !29
  %t425 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t422)
  store i32 %t425, ptr %l244
  br label %bb104
bb103:
  store i1 false, ptr %l241, !tbaa !21
  br label %bb105
bb104:
  %t426 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t427 = load i32, ptr %l244, !tbaa !23
  %t429 = icmp ne i32 %t427, %t426
  store i1 %t429, ptr %l241, !tbaa !21
  br label %bb105
bb105:
  %t431 = load i1, ptr %l241, !tbaa !21
  br i1 %t431, label %bb106, label %bb107
bb106:
  %t432 = load ptr, ptr %l0, !tbaa !29
  store ptr %t432, ptr %l247, !tbaa !29
  %t433 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t433, ptr %l248, !tbaa !27
  %t434 = load i64, ptr %l20, !tbaa !24
  %t436 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = getelementptr i32, ptr %t437, i64 %t434
  %t439 = load i32, ptr %t438, !tbaa !33
  store i32 %t439, ptr %l250, !tbaa !23
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load ptr, ptr %l21, !tbaa !29
  %t444 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v2, ptr %t440, ptr %t441)
  store i32 %t444, ptr %l253
  br label %bb108
bb107:
  br label %bb110
bb108:
  %t445 = load ptr, ptr %l247, !tbaa !29
  %t446 = load i32, ptr %l250, !tbaa !23
  %t447 = load i32, ptr %l253, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t445, i32 %t446, i32 %t447, ptr %l13, i1 false, i1 false)
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t449 = load ptr, ptr %l21, !tbaa !29
  %t451 = icmp eq ptr %t449, null
  br i1 %t451, label %bb111, label %bb112
bb111:
  %t453 = load ptr, ptr %lp14
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/check:Checker", ptr %t454, i32 0, i32 0
  %t457 = load ptr, ptr %t456, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v2, ptr %v0, ptr %t453, ptr %t457)
  br label %bb113
bb112:
  %t460 = load ptr, ptr %lp14
  %t461 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v2, ptr %v2, ptr %t460, ptr %t461)
  br label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t464 = load i64, ptr %l19, !tbaa !24
  %t466 = add i64 %t464, 1
  store i64 %t466, ptr %l19, !tbaa !24
  br label %bb54
bb117:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/check:Checker", ptr %t468, i32 0, i32 1
  %t471 = load ptr, ptr %t470, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %s0, ptr %t471, ptr %l13)
  br label %bb118
bb118:
  store i64 0, ptr %l25, !tbaa !24
  %t474 = load i64, ptr %l11, !tbaa !24
  store i64 %t474, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t476 = load i64, ptr %l26, !tbaa !24
  %t477 = load i64, ptr %l25, !tbaa !24
  %t480 = icmp sgt i64 %t476, %t477
  br i1 %t480, label %bb119, label %bb120
bb119:
  %t482 = load i64, ptr %l27, !tbaa !24
  %t484 = icmp sgt i64 %t482, 0
  br i1 %t484, label %bb121, label %bb122
bb120:
  store i64 0, ptr %l271, !tbaa !24
  br label %bb124
bb121:
  %t486 = load i64, ptr %l26, !tbaa !24
  %t487 = load i64, ptr %l25, !tbaa !24
  %t490 = sub i64 %t486, %t487
  %t491 = load i64, ptr %l27, !tbaa !24
  %t494 = add i64 %t490, %t491
  %t496 = sub i64 %t494, 1
  %t497 = load i64, ptr %l27, !tbaa !24
  %t500 = sdiv i64 %t496, %t497
  store i64 %t500, ptr %l274, !tbaa !24
  br label %bb123
bb122:
  store i64 0, ptr %l274, !tbaa !24
  br label %bb123
bb123:
  %t502 = load i64, ptr %l274, !tbaa !24
  store i64 %t502, ptr %l271, !tbaa !24
  br label %bb124
bb124:
  %t503 = load i64, ptr %l271, !tbaa !24
  store i64 %t503, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb125
bb125:
  %t504 = load i64, ptr %l29, !tbaa !24
  %t505 = load i64, ptr %l28, !tbaa !24
  %t508 = icmp slt i64 %t504, %t505
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb126, label %bb127
bb126:
  br label %bb158
bb127:
  br label %bb128
bb128:
  %t512 = load i64, ptr %l25, !tbaa !24
  %t513 = load i64, ptr %l29, !tbaa !24
  %t514 = load i64, ptr %l27, !tbaa !24
  %t517 = mul i64 %t513, %t514
  %t520 = add i64 %t512, %t517
  store i64 %t520, ptr %l30, !tbaa !24
  %t522 = getelementptr %"compiler/generic:Binding", ptr %l13, i32 0, i32 2
  %t523 = load { i64, ptr }, ptr %t522, !tbaa !27
  store { i64, ptr } %t523, ptr %l292, !tbaa !27
  %t524 = load i64, ptr %l30, !tbaa !24
  %t526 = getelementptr { i64, ptr }, ptr %l292, i32 0, i32 1
  %t527 = load ptr, ptr %t526, !tbaa !27
  %t528 = getelementptr i32, ptr %t527, i64 %t524
  %t529 = load i32, ptr %t528, !tbaa !33
  store i32 %t529, ptr %l31, !tbaa !23
  %t531 = load i32, ptr %l31, !tbaa !23
  %t532 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t535 = icmp eq i32 %t531, %t532
  br i1 %t535, label %bb129, label %bb130
bb129:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t539 = getelementptr %"compiler/check:Checker", ptr %t537, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !29
  %t541 = load i64, ptr %l10, !tbaa !24
  %t542 = load i64, ptr %l30, !tbaa !24
  %t546 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t540, i64 %t541, i64 %t542)
  store i1 %t546, ptr %l303
  br label %bb131
bb130:
  store i1 false, ptr %l298, !tbaa !21
  br label %bb132
bb131:
  %t547 = load i1, ptr %l303, !tbaa !21
  store i1 %t547, ptr %l298, !tbaa !21
  br label %bb132
bb132:
  %t548 = load i1, ptr %l298, !tbaa !21
  br i1 %t548, label %bb133, label %bb134
bb133:
  %t549 = getelementptr %"compiler/generic:Binding", ptr %l13, i32 0, i32 2
  %t550 = load { i64, ptr }, ptr %t549, !tbaa !27
  store { i64, ptr } %t550, ptr %l304, !tbaa !27
  %t551 = load i64, ptr %l30, !tbaa !24
  store i64 %t551, ptr %l305, !tbaa !24
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t554 = getelementptr %"compiler/check:Checker", ptr %t552, i32 0, i32 1
  %t555 = load ptr, ptr %t554, !tbaa !29
  %t557 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t555, i32 0)
  store i32 %t557, ptr %l308
  br label %bb135
bb134:
  br label %bb136
bb135:
  %t558 = load i32, ptr %l308, !tbaa !23
  %t559 = load i64, ptr %l305, !tbaa !24
  %t560 = getelementptr { i64, ptr }, ptr %l304, i32 0, i32 1
  %t561 = load ptr, ptr %t560, !tbaa !27
  %t562 = getelementptr i32, ptr %t561, i64 %t559
  store i32 %t558, ptr %t562, !tbaa !33
  br label %bb157
bb136:
  %t563 = load i32, ptr %l31, !tbaa !23
  %t564 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t567 = icmp eq i32 %t563, %t564
  br i1 %t567, label %bb137, label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s19
  %t569 = load ptr, ptr %l0, !tbaa !29
  store ptr %t569, ptr %l312, !tbaa !29
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/check:Checker", ptr %t570, i32 0, i32 1
  %t573 = load ptr, ptr %t572, !tbaa !29
  %t575 = getelementptr %"compiler/generic:Program", ptr %t573, i32 0, i32 2
  %t576 = load i32, ptr %l3, !tbaa !23
  %t579 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t575, i32 %t576)
  store i32 %t579, ptr %l317
  br label %bb139
bb138:
  br label %bb144
bb139:
  %t580 = load ptr, ptr %l312, !tbaa !29
  %t581 = load i32, ptr %l317, !tbaa !23
  %t582 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t580, i32 %t581)
  store { i64, ptr } %t582, ptr %l318
  br label %bb140
bb140:
  %t583 = load { i64, ptr }, ptr %l318, !tbaa !27
  store { i64, ptr } %t583, ptr %l32, !tbaa !27
  %t584 = load ptr, ptr %l0, !tbaa !29
  store ptr %t584, ptr %l319, !tbaa !29
  %t585 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t585, ptr %l320
  %t586 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t587 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t590 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorTypeArgsNotInferable(ptr %v0, ptr %v0, ptr %s19, { i64, ptr } %t586, { i64, ptr } %t587)
  store %"compiler/diagmsg:Msg" %t590, ptr %l323
  br label %bb141
bb141:
  %t591 = load ptr, ptr %l319, !tbaa !29
  %t592 = load %"compiler/source:Span", ptr %l320
  %t593 = load %"compiler/diagmsg:Msg", ptr %l323
  %t594 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s19, ptr %t591, %"compiler/source:Span" %t592, %"compiler/diagmsg:Msg" %t593)
  store i64 %t594, ptr %l324
  br label %bb142
bb142:
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t596 = load %"compiler/source:Span", ptr %l1
  %t599 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t595, %"compiler/source:Span" %t596)
  store ptr %t599, ptr %l327
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  %t600 = load ptr, ptr %l327, !tbaa !29
  store ptr %t600, ptr %rv
  br label %ret
bb144:
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load i32, ptr %l31, !tbaa !23
  %t605 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t601, i32 %t602)
  store i1 %t605, ptr %l330
  br label %bb145
bb145:
  %t606 = load i1, ptr %l330, !tbaa !21
  br i1 %t606, label %bb146, label %bb147
bb146:
  %t607 = getelementptr %"compiler/generic:Binding", ptr %l13, i32 0, i32 2
  %t608 = load { i64, ptr }, ptr %t607, !tbaa !27
  store { i64, ptr } %t608, ptr %l331, !tbaa !27
  %t609 = load i64, ptr %l30, !tbaa !24
  store i64 %t609, ptr %l332, !tbaa !24
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = getelementptr %"compiler/check:Checker", ptr %t610, i32 0, i32 1
  %t613 = load ptr, ptr %t612, !tbaa !29
  %t615 = getelementptr %"compiler/generic:Program", ptr %t613, i32 0, i32 2
  store ptr %t615, ptr %l335, !tbaa !29
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/check:Checker", ptr %t616, i32 0, i32 1
  %t619 = load ptr, ptr %t618, !tbaa !29
  %t621 = getelementptr %"compiler/generic:Program", ptr %t619, i32 0, i32 2
  %t622 = load i32, ptr %l31, !tbaa !23
  %t625 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t621, i32 %t622)
  store i32 %t625, ptr %l340
  br label %bb148
bb147:
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t628 = getelementptr %"compiler/check:Checker", ptr %t626, i32 0, i32 1
  %t629 = load ptr, ptr %t628, !tbaa !29
  %t631 = getelementptr %"compiler/generic:Program", ptr %t629, i32 0, i32 2
  store ptr %t631, ptr %l345, !tbaa !29
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load i32, ptr %l31, !tbaa !23
  %t636 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t632, i32 %t633)
  store i32 %t636, ptr %l348
  br label %bb150
bb148:
  %t637 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t638 = load ptr, ptr %l335, !tbaa !29
  %t639 = load i32, ptr %l340, !tbaa !23
  %t641 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t638, i32 %t639, i64 %t637)
  store i32 %t641, ptr %l342
  br label %bb149
bb149:
  %t642 = load i32, ptr %l342, !tbaa !23
  %t643 = load i64, ptr %l332, !tbaa !24
  %t644 = getelementptr { i64, ptr }, ptr %l331, i32 0, i32 1
  %t645 = load ptr, ptr %t644, !tbaa !27
  %t646 = getelementptr i32, ptr %t645, i64 %t643
  store i32 %t642, ptr %t646, !tbaa !33
  br label %bb156
bb150:
  %t647 = load ptr, ptr %l345, !tbaa !29
  %t648 = load i32, ptr %l348, !tbaa !23
  %t649 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t647, i32 %t648)
  store i32 %t649, ptr %l349
  br label %bb151
bb151:
  %t650 = load i32, ptr %l349, !range !{i32 0, i32 33}
  %t652 = trunc i64 19 to i32
  %t653 = icmp eq i32 %t650, %t652
  br i1 %t653, label %bb152, label %bb153
bb152:
  %t655 = getelementptr %"compiler/generic:Binding", ptr %l13, i32 0, i32 2
  %t656 = load { i64, ptr }, ptr %t655, !tbaa !27
  store { i64, ptr } %t656, ptr %l352, !tbaa !27
  %t657 = load i64, ptr %l30, !tbaa !24
  store i64 %t657, ptr %l353, !tbaa !24
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t660 = getelementptr %"compiler/check:Checker", ptr %t658, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !29
  %t663 = getelementptr %"compiler/generic:Program", ptr %t661, i32 0, i32 2
  %t664 = load i32, ptr %l31, !tbaa !23
  %t665 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t669 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t663, i32 %t664, i64 %t665)
  store i32 %t669, ptr %l359
  br label %bb154
bb153:
  br label %bb155
bb154:
  %t670 = load i32, ptr %l359, !tbaa !23
  %t671 = load i64, ptr %l353, !tbaa !24
  %t672 = getelementptr { i64, ptr }, ptr %l352, i32 0, i32 1
  %t673 = load ptr, ptr %t672, !tbaa !27
  %t674 = getelementptr i32, ptr %t673, i64 %t671
  store i32 %t670, ptr %t674, !tbaa !33
  br label %bb155
bb155:
  br label %bb156
bb156:
  br label %bb157
bb157:
  %t675 = load i64, ptr %l29, !tbaa !24
  %t677 = add i64 %t675, 1
  store i64 %t677, ptr %l29, !tbaa !24
  br label %bb125
bb158:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t681 = getelementptr %"compiler/check:Checker", ptr %t679, i32 0, i32 1
  %t682 = load ptr, ptr %t681, !tbaa !29
  store ptr %t682, ptr %l363, !tbaa !29
  %t683 = load i32, ptr %l3, !tbaa !23
  store i32 %t683, ptr %l364, !tbaa !23
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t686 = getelementptr %"compiler/check:Checker", ptr %t684, i32 0, i32 1
  %t687 = load ptr, ptr %t686, !tbaa !29
  %t689 = getelementptr %"compiler/generic:Program", ptr %t687, i32 0, i32 2
  %t690 = getelementptr %"compiler/generic:Binding", ptr %l13, i32 0, i32 2
  %t691 = load { i64, ptr }, ptr %t690, !tbaa !27
  %t694 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t689, { i64, ptr } %t691)
  store i32 %t694, ptr %l369
  br label %bb159
bb159:
  %t695 = load ptr, ptr %l363, !tbaa !29
  %t696 = load i32, ptr %l364, !tbaa !23
  %t697 = load i32, ptr %l369, !tbaa !23
  %t698 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t695, i32 %t696, i32 %t697)
  store i32 %t698, ptr %l370
  br label %bb160
bb160:
  %t699 = load i32, ptr %l370, !tbaa !23
  store i32 %t699, ptr %l33, !tbaa !23
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t701 = load i32, ptr %l33, !tbaa !23
  %t702 = load %"compiler/source:Span", ptr %l2
  %t706 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t700, i32 %t701, %"compiler/source:Span" %t702)
  store i1 %t706, ptr %l374
  br label %bb161
bb161:
  %t707 = load i1, ptr %l374, !tbaa !21
  %t708 = xor i1 %t707, true
  br i1 %t708, label %bb162, label %bb163
bb162:
  store i1 true, ptr %l376, !tbaa !21
  br label %bb165
bb163:
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t712 = getelementptr %"compiler/check:Checker", ptr %t710, i32 0, i32 1
  %t713 = load ptr, ptr %t712, !tbaa !29
  %t714 = load i32, ptr %l33, !tbaa !23
  %t717 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t713, i32 %t714)
  store i1 %t717, ptr %l380
  br label %bb164
bb164:
  %t718 = load i1, ptr %l380, !tbaa !21
  %t719 = xor i1 %t718, true
  store i1 %t719, ptr %l376, !tbaa !21
  br label %bb165
bb165:
  %t721 = load i1, ptr %l376, !tbaa !21
  br i1 %t721, label %bb166, label %bb167
bb166:
  %t722 = load ptr, ptr %l0, !tbaa !29
  %t723 = load %"compiler/source:Span", ptr %l1
  %t726 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t722, %"compiler/source:Span" %t723)
  store ptr %t726, ptr %l384
  br label %bb168
bb167:
  br label %bb169
bb168:
  call void @__olang_scope_close(ptr %s0)
  %t727 = load ptr, ptr %l384, !tbaa !29
  store ptr %t727, ptr %rv
  br label %ret
bb169:
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t730 = getelementptr %"compiler/check:Checker", ptr %t728, i32 0, i32 1
  %t731 = load ptr, ptr %t730, !tbaa !29
  %t732 = load i32, ptr %l33, !tbaa !23
  %t735 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t731, i32 %t732)
  store i32 %t735, ptr %l388
  br label %bb170
bb170:
  %t736 = load i32, ptr %l388, !tbaa !23
  store i32 %t736, ptr %l34, !tbaa !23
  %t737 = load i32, ptr %l34, !tbaa !23
  %t738 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t741 = icmp eq i32 %t737, %t738
  br i1 %t741, label %bb171, label %bb172
bb171:
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t744 = load %"compiler/source:Span", ptr %l1
  %t747 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t743, %"compiler/source:Span" %t744)
  store ptr %t747, ptr %l394
  br label %bb173
bb172:
  br label %bb174
bb173:
  call void @__olang_scope_close(ptr %s0)
  %t748 = load ptr, ptr %l394, !tbaa !29
  store ptr %t748, ptr %rv
  br label %ret
bb174:
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t750 = load i32, ptr %l33, !tbaa !23
  %t753 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t749, i32 %t750)
  store i64 %t753, ptr %l397
  br label %bb175
bb175:
  %t754 = load i64, ptr %l397, !tbaa !24
  store i64 %t754, ptr %l35, !tbaa !24
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t757 = getelementptr %"compiler/check:Checker", ptr %t755, i32 0, i32 23
  %t758 = load i32, ptr %t757, !tbaa !23
  store i32 %t758, ptr %l36, !tbaa !23
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t761 = load i32, ptr %l33, !tbaa !23
  %t764 = getelementptr %"compiler/check:Checker", ptr %t760, i32 0, i32 23
  store i32 %t761, ptr %t764, !tbaa !23
  %t765 = load ptr, ptr %l0, !tbaa !29
  %t766 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %s0, ptr %t765, { i64, ptr } %t766)
  br label %bb176
bb176:
  %t769 = load ptr, ptr %l0, !tbaa !29
  store ptr %t769, ptr %l404, !tbaa !29
  %t770 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t770, ptr %l405
  %t771 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t771, ptr %l406
  %t772 = load i32, ptr %l34, !tbaa !23
  store i32 %t772, ptr %l407, !tbaa !23
  %t773 = load i64, ptr %l35, !tbaa !24
  %t775 = trunc i64 %t773 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t777
  %t778 = getelementptr { i64, [3 x i64] }, ptr %t777, i32 0, i32 0
  store i64 0, ptr %t778
  %t780 = insertvalue { i32 } undef, i32 %t775, 0
  %t781 = getelementptr { i64, [3 x i64] }, ptr %t777, i32 0, i32 1
  store { i32 } %t780, ptr %t781
  %t782 = load { i64, [3 x i64] }, ptr %t777
  %t784 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t782, ptr %t784
  store ptr %t784, ptr %l412, !tbaa !29
  %t785 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t785, ptr %l413, !tbaa !27
  %t786 = load ptr, ptr %lp14
  %t788 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v2, ptr %v2, ptr %t786)
  store { i64, ptr } %t788, ptr %l415
  br label %bb177
bb177:
  %t789 = load ptr, ptr %l404, !tbaa !29
  %t790 = load %"compiler/source:Span", ptr %l405
  %t791 = load %"compiler/source:Span", ptr %l406
  %t792 = load i32, ptr %l407, !tbaa !23
  %t793 = load ptr, ptr %l412, !tbaa !29
  %t794 = load { i64, ptr }, ptr %l413, !tbaa !27
  %t795 = load { i64, ptr }, ptr %l415, !tbaa !27
  %t796 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %v2, ptr %v2, ptr %t789, %"compiler/source:Span" %t790, %"compiler/source:Span" %t791, i32 %t792, ptr %t793, i64 -1, ptr null, { i64, ptr } %t794, { i64, ptr } %t795)
  store ptr %t796, ptr %l416
  br label %bb178
bb178:
  %t797 = load ptr, ptr %l416, !tbaa !29
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t799 = load i32, ptr %l36, !tbaa !23
  %t802 = getelementptr %"compiler/check:Checker", ptr %t798, i32 0, i32 23
  store i32 %t799, ptr %t802, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store ptr %t797, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesIn(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i1
  %l9 = alloca i1
  %l18 = alloca i32
  %l25 = alloca i32
  %l32 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i32
  %l43 = alloca i1
  %l45 = alloca i1
  %l50 = alloca i1
  %l51 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca i64
  %l60 = alloca i1
  %l62 = alloca i1
  %l67 = alloca i1
  %l68 = alloca i1
  %l72 = alloca i1
  %l73 = alloca i1
  %l77 = alloca i1
  %l81 = alloca i1
  %l89 = alloca ptr
  %l94 = alloca i32
  %l98 = alloca i1
  %l101 = alloca ptr
  %l106 = alloca i32
  %l110 = alloca i1
  %l113 = alloca ptr
  %l118 = alloca i32
  %l121 = alloca i1
  %l124 = alloca ptr
  %l129 = alloca i32
  %l133 = alloca i1
  %l138 = alloca ptr
  %l143 = alloca i32
  %l146 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l9, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %rv
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
  store i32 %t22, ptr %l18
  br label %bb7
bb7:
  %t23 = load i32, ptr %l18, !range !{i32 0, i32 33}
  store i32 %t23, ptr %l4
  %t24 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t26 = trunc i64 18 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb51
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l25
  br label %bb11
bb11:
  %t39 = load i32, ptr %l25, !tbaa !23
  store i32 %t39, ptr %l5, !tbaa !23
  %t40 = load i32, ptr %l5, !tbaa !23
  %t42 = icmp eq i32 %t40, 0
  br i1 %t42, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 79
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l32
  br label %bb15
bb15:
  %t52 = load i1, ptr %l32, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 79
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %t55, i32 %t56)
  %t60 = extractvalue { i32, i1 } %t59, 1
  %t61 = extractvalue { i32, i1 } %t59, 0
  store i32 %t61, ptr %l38
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb19, label %ok.63, !prof !99
ok.63:
  store i1 %t60, ptr %l37
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %l33, !tbaa !21
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb21
bb21:
  %t65 = load i1, ptr %l33, !tbaa !21
  store i1 %t65, ptr %rv
  br label %ret
bb22:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l5, !tbaa !23
  %t68 = load %"compiler/source:Span", ptr %l2
  %t69 = load i64, ptr %l3, !tbaa !24
  %t74 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMet(ptr %v0, ptr %t66, i32 %t67, %"compiler/source:Span" %t68, i64 %t69)
  store i1 %t74, ptr %l43
  br label %bb23
bb23:
  %t75 = load i1, ptr %l43, !tbaa !21
  store i1 %t75, ptr %l6, !tbaa !21
  %t76 = load i1, ptr %l6, !tbaa !21
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l1, !tbaa !23
  %t87 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t83, i32 %t84)
  store i1 %t87, ptr %l50
  br label %bb26
bb25:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb27
bb26:
  %t88 = load i1, ptr %l50, !tbaa !21
  store i1 %t88, ptr %l45, !tbaa !21
  br label %bb27
bb27:
  %t89 = load i1, ptr %l45, !tbaa !21
  br i1 %t89, label %bb28, label %bb29
bb28:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l51, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t100, ptr %l56
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t101 = load i32, ptr %l56, !tbaa !23
  %t102 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t101)
  store i64 %t102, ptr %l57
  br label %bb31
bb31:
  %t103 = load i32, ptr %l5, !tbaa !23
  %t104 = load %"compiler/source:Span", ptr %l2
  %t105 = load ptr, ptr %l51, !tbaa !29
  %t106 = load i64, ptr %l57, !tbaa !24
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %t105, i64 %t106, i32 %t103, %"compiler/source:Span" %t104)
  store i1 %t109, ptr %l60
  br label %bb32
bb32:
  %t110 = load i1, ptr %l60, !tbaa !21
  store i1 %t110, ptr %l6, !tbaa !21
  br label %bb33
bb33:
  %t111 = load i1, ptr %l6, !tbaa !21
  br i1 %t111, label %bb34, label %bb35
bb34:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l1, !tbaa !23
  %t122 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t118, i32 %t119)
  store i1 %t122, ptr %l67
  br label %bb36
bb35:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb37
bb36:
  %t123 = load i1, ptr %l67, !tbaa !21
  store i1 %t123, ptr %l62, !tbaa !21
  br label %bb37
bb37:
  %t124 = load i1, ptr %l62, !tbaa !21
  br i1 %t124, label %bb38, label %bb39
bb38:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t129 = load i32, ptr %l1, !tbaa !23
  %t132 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t128, i32 %t129)
  store i1 %t132, ptr %l72
  br label %bb40
bb39:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb45
bb40:
  %t133 = load i1, ptr %l72, !tbaa !21
  br i1 %t133, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb44
bb42:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t138 = load i32, ptr %l1, !tbaa !23
  %t141 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %t137, i32 %t138)
  store i1 %t141, ptr %l77
  br label %bb43
bb43:
  %t142 = load i1, ptr %l77, !tbaa !21
  store i1 %t142, ptr %l73, !tbaa !21
  br label %bb44
bb44:
  %t143 = load i1, ptr %l73, !tbaa !21
  store i1 %t143, ptr %l68, !tbaa !21
  br label %bb45
bb45:
  %t144 = load i1, ptr %l68, !tbaa !21
  br i1 %t144, label %bb46, label %bb47
bb46:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l1, !tbaa !23
  %t147 = load %"compiler/source:Span", ptr %l2
  %t151 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnsMet(ptr %v0, ptr %t145, i32 %t146, %"compiler/source:Span" %t147)
  store i1 %t151, ptr %l81
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t152 = load i1, ptr %l81, !tbaa !21
  store i1 %t152, ptr %l6, !tbaa !21
  br label %bb49
bb49:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 79
  %t156 = load i32, ptr %l1, !tbaa !23
  %t157 = load i1, ptr %l6, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t155, i32 %t156, i1 %t157)
  br label %bb50
bb50:
  %t161 = load i1, ptr %l6, !tbaa !21
  store i1 %t161, ptr %rv
  br label %ret
bb51:
  %t163 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t165 = trunc i64 20 to i32
  %t166 = icmp eq i32 %t163, %t165
  br i1 %t166, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l89, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 2
  %t175 = load i32, ptr %l1, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l94
  br label %bb55
bb55:
  %t179 = load %"compiler/source:Span", ptr %l2
  %t180 = load i64, ptr %l3, !tbaa !24
  %t182 = add i64 %t180, 1
  %t183 = load ptr, ptr %l89, !tbaa !29
  %t184 = load i32, ptr %l94, !tbaa !23
  %t187 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesIn(ptr %v0, ptr %t183, i32 %t184, %"compiler/source:Span" %t179, i64 %t182)
  store i1 %t187, ptr %l98
  br label %bb56
bb56:
  %t188 = load i1, ptr %l98, !tbaa !21
  store i1 %t188, ptr %rv
  br label %ret
bb57:
  %t189 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t191 = trunc i64 19 to i32
  %t192 = icmp eq i32 %t189, %t191
  br i1 %t192, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l101, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t201 = load i32, ptr %l1, !tbaa !23
  %t204 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t200, i32 %t201)
  store i32 %t204, ptr %l106
  br label %bb61
bb61:
  %t205 = load %"compiler/source:Span", ptr %l2
  %t206 = load i64, ptr %l3, !tbaa !24
  %t208 = add i64 %t206, 1
  %t209 = load ptr, ptr %l101, !tbaa !29
  %t210 = load i32, ptr %l106, !tbaa !23
  %t213 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesIn(ptr %v0, ptr %t209, i32 %t210, %"compiler/source:Span" %t205, i64 %t208)
  store i1 %t213, ptr %l110
  br label %bb62
bb62:
  %t214 = load i1, ptr %l110, !tbaa !21
  store i1 %t214, ptr %rv
  br label %ret
bb63:
  %t215 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t217 = trunc i64 21 to i32
  %t218 = icmp eq i32 %t215, %t217
  br i1 %t218, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb74
bb66:
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l113, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/check:Checker", ptr %t221, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %l1, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l118
  br label %bb67
bb67:
  %t231 = load %"compiler/source:Span", ptr %l2
  %t232 = load i64, ptr %l3, !tbaa !24
  %t233 = load ptr, ptr %l113, !tbaa !29
  %t234 = load i32, ptr %l118, !tbaa !23
  %t237 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMet(ptr %v0, ptr %t233, i32 %t234, %"compiler/source:Span" %t231, i64 %t232)
  store i1 %t237, ptr %l121
  br label %bb68
bb68:
  %t238 = load i1, ptr %l121, !tbaa !21
  %t239 = xor i1 %t238, true
  br i1 %t239, label %bb69, label %bb70
bb69:
  store i1 false, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l124, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/check:Checker", ptr %t243, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !29
  %t248 = getelementptr %"compiler/generic:Program", ptr %t246, i32 0, i32 2
  %t249 = load i32, ptr %l1, !tbaa !23
  %t252 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t248, i32 %t249)
  store i32 %t252, ptr %l129
  br label %bb72
bb72:
  %t253 = load %"compiler/source:Span", ptr %l2
  %t254 = load i64, ptr %l3, !tbaa !24
  %t256 = add i64 %t254, 1
  %t257 = load ptr, ptr %l124, !tbaa !29
  %t258 = load i32, ptr %l129, !tbaa !23
  %t261 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesIn(ptr %v0, ptr %t257, i32 %t258, %"compiler/source:Span" %t253, i64 %t256)
  store i1 %t261, ptr %l133
  br label %bb73
bb73:
  %t262 = load i1, ptr %l133, !tbaa !21
  store i1 %t262, ptr %rv
  br label %ret
bb74:
  %t263 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t265 = trunc i64 22 to i32
  %t266 = icmp eq i32 %t263, %t265
  br i1 %t266, label %bb75, label %bb76
bb75:
  br label %bb79
bb76:
  %t268 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t270 = trunc i64 23 to i32
  %t271 = icmp eq i32 %t268, %t270
  br i1 %t271, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb82
bb79:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l138, !tbaa !29
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/check:Checker", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 2
  %t280 = load i32, ptr %l1, !tbaa !23
  %t283 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t279, i32 %t280)
  store i32 %t283, ptr %l143
  br label %bb80
bb80:
  %t284 = load %"compiler/source:Span", ptr %l2
  %t285 = load i64, ptr %l3, !tbaa !24
  %t286 = load ptr, ptr %l138, !tbaa !29
  %t287 = load i32, ptr %l143, !tbaa !23
  %t290 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMet(ptr %v0, ptr %t286, i32 %t287, %"compiler/source:Span" %t284, i64 %t285)
  store i1 %t290, ptr %l146
  br label %bb81
bb81:
  %t291 = load i1, ptr %l146, !tbaa !21
  store i1 %t291, ptr %rv
  br label %ret
bb82:
  br i1 true, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  store i1 true, ptr %rv
  br label %ret
bb86:
  call void @__olang_check_failed(ptr @olang_loc_2480f58a13db02ac_810628fb6d336178)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/typed:Item"
  %l18 = alloca i32
  %l21 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l33 = alloca i64
  %l37 = alloca i64
  %l39 = alloca i64
  %l44 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l68 = alloca i64
  %l82 = alloca i32
  %l89 = alloca i32
  %rv = alloca i32
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
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l18
  br label %bb1
bb1:
  %t11 = load i32, ptr %l18, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %t12, i32 %t13)
  store i64 %t16, ptr %l21
  br label %bb2
bb2:
  %t17 = load i64, ptr %l21, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sge i64 %t18, 64
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = sub i64 0, 1
  store i64 %t22, ptr %l24, !tbaa !65
  br label %bb5
bb4:
  %t24 = load i64, ptr %l4, !tbaa !24
  store i64 %t24, ptr %l26, !tbaa !24
  %t25 = load i64, ptr %l26, !tbaa !24
  %t26 = load i64, ptr %l26, !tbaa !24
  %t27 = shl i64 1, %t26
  %t29 = sub i64 %t27, 1
  store i64 %t29, ptr %l24, !tbaa !65
  br label %bb5
bb5:
  %t31 = load i64, ptr %l24, !tbaa !65
  store i64 %t31, ptr %l5, !tbaa !65
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t37, i32 %t38)
  store i64 %t41, ptr %l33
  br label %bb6
bb6:
  %t42 = load i64, ptr %l5, !tbaa !65
  %t43 = load i64, ptr %l33, !tbaa !65
  %t45 = and i64 %t43, %t42
  store i64 %t45, ptr %l6, !tbaa !65
  store ptr %a2, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t49 = load i64, ptr %l8, !tbaa !24
  store i64 %t49, ptr %l37, !tbaa !24
  %t50 = load ptr, ptr %l7, !tbaa !29
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eLen__H4e51b5ca7b68af485b8486164a690a5f(ptr %v1, ptr %t50)
  store i64 %t52, ptr %l39
  br label %bb8
bb8:
  %t53 = load i64, ptr %l37, !tbaa !24
  %t54 = load i64, ptr %l39, !tbaa !24
  %t55 = icmp slt i64 %t53, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb9, label %bb10
bb9:
  br label %bb32
bb10:
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v1, ptr %v1, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l44
  br label %bb12
bb12:
  %t64 = load ptr, ptr %l44, !tbaa !29
  store ptr %t64, ptr %l9, !tbaa !29
  %t65 = load ptr, ptr %l9, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Clause", ptr %t65, i32 0, i32 2
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t70, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t72 = load ptr, ptr %l9, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Clause", ptr %t72, i32 0, i32 1
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  store i64 %t79, ptr %l12, !tbaa !24
  br label %bb16
bb16:
  %t81 = load i64, ptr %l11, !tbaa !24
  %t82 = load i64, ptr %l12, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb17, label %bb18
bb17:
  br label %bb30
bb18:
  br label %bb19
bb19:
  %t89 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t89, ptr %l56, !tbaa !27
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr %"compiler/typed:Item", ptr %t93, i64 %t90
  %t95 = load %"compiler/typed:Item", ptr %t94
  store %"compiler/typed:Item" %t95, ptr %l13
  %t97 = getelementptr %"compiler/typed:Item", ptr %l13, i32 0, i32 0
  %t98 = load i32, ptr %t97, !tbaa !23
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = icmp eq i32 %t98, %t99
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = getelementptr %"compiler/typed:Item", ptr %l13, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t107 = icmp slt i64 %t105, 0
  br i1 %t107, label %bb22, label %bb23
bb21:
  br label %bb28
bb22:
  %t109 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t109, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t111 = getelementptr %"compiler/typed:Item", ptr %l13, i32 0, i32 1
  %t112 = load i64, ptr %t111, !tbaa !24
  %t114 = icmp slt i64 %t112, 64
  br i1 %t114, label %bb25, label %bb26
bb25:
  %t116 = load i64, ptr %l6, !tbaa !65
  %t117 = getelementptr %"compiler/typed:Item", ptr %l13, i32 0, i32 1
  %t118 = load i64, ptr %t117, !tbaa !24
  store i64 %t118, ptr %l68, !tbaa !24
  %t119 = load i64, ptr %l68, !tbaa !24
  %t120 = load i64, ptr %l68, !tbaa !24
  %t121 = shl i64 1, %t120
  %t123 = xor i64 %t121, -1
  %t126 = and i64 %t116, %t123
  store i64 %t126, ptr %l6, !tbaa !65
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t128 = load i64, ptr %l11, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l11, !tbaa !24
  br label %bb16
bb30:
  br label %bb31
bb31:
  %t132 = load i64, ptr %l8, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l8, !tbaa !24
  br label %bb7
bb32:
  %t136 = load i64, ptr %l6, !tbaa !65
  %t138 = icmp eq i64 %t136, 0
  br i1 %t138, label %bb33, label %bb34
bb33:
  %t140 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t140, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t142 = load i64, ptr %l6, !tbaa !65
  %t143 = load i64, ptr %l5, !tbaa !65
  %t146 = icmp eq i64 %t142, %t143
  br i1 %t146, label %bb36, label %bb37
bb36:
  %t148 = load i32, ptr %l3, !tbaa !23
  store i32 %t148, ptr %l82, !tbaa !23
  br label %bb39
bb37:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l3, !tbaa !23
  %t157 = load i64, ptr %l6, !tbaa !65
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t155, i32 %t156, i64 %t157)
  store i32 %t161, ptr %l89
  br label %bb38
bb38:
  %t162 = load i32, ptr %l89, !tbaa !23
  store i32 %t162, ptr %l82, !tbaa !23
  br label %bb39
bb39:
  %t163 = load i32, ptr %l82, !tbaa !23
  store i32 %t163, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elentAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %a1, i32 0, i32 12
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load i64, ptr %l15, !tbaa !24
  %t25 = icmp eq i64 %t20, %a2
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsBy(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l30 = alloca i1
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
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t24, ptr %l19, !tbaa !27
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i32, ptr %t28, i64 %t25
  %t30 = load i32, ptr %t29, !tbaa !33
  store i32 %t30, ptr %l7, !tbaa !23
  %t32 = load i32, ptr %l7, !tbaa !23
  %t34 = icmp ne i32 %t32, 0
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l7, !tbaa !23
  %t41 = add i64 %a3, 1
  %t46 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsBy(ptr %v0, ptr %t36, i32 %t37, i32 %a2, i64 %t41)
  store i1 %t46, ptr %l30
  br label %bb8
bb7:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  %t47 = load i1, ptr %l30, !tbaa !21
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l24, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t50 = load i64, ptr %l5, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l5, !tbaa !24
  br label %bb2
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchOnType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca %"compiler/check:typeCase"
  %l22 = alloca %"compiler/check:typeCase"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i32
  %l43 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l58 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca i64
  %l89 = alloca i64
  %l108 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l123 = alloca i1
  %l125 = alloca i64
  %l127 = alloca i64
  %l132 = alloca %"compiler/check:typeCase"
  %l137 = alloca ptr
  %l138 = alloca ptr
  %l140 = alloca %"compiler/source:Span"
  %l141 = alloca { i64, [3 x i64] }
  %l142 = alloca %"compiler/diagmsg:Msg"
  %l143 = alloca i64
  %l146 = alloca ptr
  %l148 = alloca %"compiler/check:typeCase"
  %l154 = alloca %"compiler/check:typeCase"
  %l159 = alloca i64
  %l161 = alloca i64
  %l166 = alloca %"compiler/check:typeCase"
  %l170 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca ptr
  %l177 = alloca %"compiler/source:Span"
  %l178 = alloca { i64, [3 x i64] }
  %l179 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i64
  %l191 = alloca i1
  %l200 = alloca ptr
  %l203 = alloca %"compiler/source:Span"
  %l206 = alloca { i64, ptr }
  %l208 = alloca %"compiler/diagmsg:Msg"
  %l209 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l26, !tbaa !29
  %t2 = ptrtoint ptr %v0 to i64
  store i64 %t2, ptr %l27, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e155
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v0)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l27, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l27
  %t8 = inttoptr i64 %t7 to ptr
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %t8, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l29
  br label %bb3
bb3:
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e155
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = load i64, ptr %l27
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = call ptr @__olang_region_or(ptr %t16, ptr null)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t13
  call void @__olang_region_settle(ptr %t13, i1 %t20)
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l26, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 155
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l31
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t25 = load ptr, ptr %l26, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 155
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %t26
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e155
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr null
  call void @__olang_region_drop(ptr %t34)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l31
  br label %bb7
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Match", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t42 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t35, ptr %t39)
  store i32 %t42, ptr %l36
  br label %bb8
bb8:
  %t43 = load i32, ptr %l36, !tbaa !23
  store i32 %t43, ptr %l2, !tbaa !23
  %t44 = load i32, ptr %l2, !tbaa !23
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t48 = icmp eq i32 %t44, %t45
  br i1 %t48, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t51 = load i32, ptr %l2, !tbaa !23
  %t53 = icmp slt i32 %t51, 0
  br i1 %t53, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l43, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Match", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t59)
  store %"compiler/source:Span" %t61, ptr %l46
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflMatchSubject(ptr %s2)
  store %"compiler/diagmsg:Msg" %t62, ptr %l47
  br label %bb15
bb15:
  %t63 = load ptr, ptr %l43, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l46
  %t65 = load %"compiler/diagmsg:Msg", ptr %l47
  %t66 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t63, %"compiler/source:Span" %t64, %"compiler/diagmsg:Msg" %t65)
  store i64 %t66, ptr %l48
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb17:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Match", ptr %t68, i32 0, i32 3
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l5, !tbaa !24
  br label %bb18
bb18:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t78 = load i64, ptr %l5, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb19, label %bb20
bb19:
  br label %bb33
bb20:
  br label %bb21
bb21:
  %t85 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t85, ptr %l58, !tbaa !27
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr ptr, ptr %t89, i64 %t86
  %t91 = load ptr, ptr %t90, !tbaa !39
  store ptr %t91, ptr %l6, !tbaa !29
  %t93 = load ptr, ptr %l6, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Case", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = icmp eq ptr %t96, null
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l65, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l66, !tbaa !29
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = getelementptr %"compiler/ast:Case", ptr %t104, i32 0, i32 3
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = icmp eq ptr %t107, null
  br i1 %t109, label %bb24, label %bb25
bb23:
  br label %bb31
bb24:
  call void @__olang_check_failed(ptr @olang_loc_775dfd67c7206a52_c2d8bc16e2444876)
  unreachable
bb25:
  br label %bb26
bb26:
  %t111 = load ptr, ptr %l6, !tbaa !29
  %t113 = getelementptr %"compiler/ast:Case", ptr %t111, i32 0, i32 3
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t114)
  store %"compiler/source:Span" %t116, ptr %l72
  br label %bb27
bb27:
  %t117 = getelementptr %"compiler/source:Span", ptr %l72, i32 0, i32 0
  %t118 = load i32, ptr %t117, !tbaa !23
  %t119 = load ptr, ptr %l66, !tbaa !29
  %t121 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordBefore(ptr %v0, ptr %s5, ptr %t119, i32 %t118, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store %"compiler/source:Span" %t121, ptr %l74
  br label %bb28
bb28:
  %t122 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMatchGuard(ptr %s5)
  store %"compiler/diagmsg:Msg" %t122, ptr %l75
  br label %bb29
bb29:
  %t123 = load ptr, ptr %l65, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l74
  %t125 = load %"compiler/diagmsg:Msg", ptr %l75
  %t126 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t123, %"compiler/source:Span" %t124, %"compiler/diagmsg:Msg" %t125)
  store i64 %t126, ptr %l76
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t127 = load i64, ptr %l4, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l4, !tbaa !24
  br label %bb18
bb33:
  store i64 -1, ptr %l7, !tbaa !24
  %t131 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l79
  br label %bb34
bb34:
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/ast:Match", ptr %t133, i32 0, i32 3
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t140 = load i64, ptr %l10, !tbaa !24
  %t141 = load i64, ptr %l9, !tbaa !24
  %t144 = icmp sgt i64 %t140, %t141
  br i1 %t144, label %bb35, label %bb36
bb35:
  %t146 = load i64, ptr %l11, !tbaa !24
  %t148 = icmp sgt i64 %t146, 0
  br i1 %t148, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb40
bb37:
  %t150 = load i64, ptr %l10, !tbaa !24
  %t151 = load i64, ptr %l9, !tbaa !24
  %t154 = sub i64 %t150, %t151
  %t155 = load i64, ptr %l11, !tbaa !24
  %t158 = add i64 %t154, %t155
  %t160 = sub i64 %t158, 1
  %t161 = load i64, ptr %l11, !tbaa !24
  %t164 = sdiv i64 %t160, %t161
  store i64 %t164, ptr %l89, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb39
bb39:
  %t166 = load i64, ptr %l89, !tbaa !24
  store i64 %t166, ptr %l86, !tbaa !24
  br label %bb40
bb40:
  %t167 = load i64, ptr %l86, !tbaa !24
  store i64 %t167, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb41
bb41:
  %t168 = load i64, ptr %l13, !tbaa !24
  %t169 = load i64, ptr %l12, !tbaa !24
  %t172 = icmp slt i64 %t168, %t169
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb42, label %bb43
bb42:
  br label %bb104
bb43:
  br label %bb44
bb44:
  %t176 = load i64, ptr %l9, !tbaa !24
  %t177 = load i64, ptr %l13, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t181 = mul i64 %t177, %t178
  %t184 = add i64 %t176, %t181
  store i64 %t184, ptr %l14, !tbaa !24
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr %"compiler/ast:Match", ptr %t186, i32 0, i32 3
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l108, !tbaa !27
  %t190 = load i64, ptr %l14, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr ptr, ptr %t193, i64 %t190
  %t195 = load ptr, ptr %t194, !tbaa !39
  %t197 = getelementptr %"compiler/ast:Case", ptr %t195, i32 0, i32 2
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  store { i64, ptr } %t198, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t200, 0
  store i64 %t202, ptr %l17, !tbaa !24
  br label %bb45
bb45:
  %t204 = load i64, ptr %l16, !tbaa !24
  %t205 = load i64, ptr %l17, !tbaa !24
  %t208 = icmp slt i64 %t204, %t205
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb46, label %bb47
bb46:
  br label %bb102
bb47:
  br label %bb48
bb48:
  %t212 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t212, ptr %l118, !tbaa !27
  %t213 = load i64, ptr %l16, !tbaa !24
  %t215 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr ptr, ptr %t216, i64 %t213
  %t218 = load ptr, ptr %t217, !tbaa !39
  store ptr %t218, ptr %l18, !tbaa !29
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load ptr, ptr %l18, !tbaa !29
  %t224 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisWildType(ptr %v0, ptr %v1, ptr %t220, ptr %t221)
  store i1 %t224, ptr %l123
  br label %bb49
bb49:
  %t225 = load i1, ptr %l123, !tbaa !21
  br i1 %t225, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s11
  store ptr %l8, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb52
bb51:
  br label %bb72
bb52:
  %t227 = load i64, ptr %l20, !tbaa !24
  store i64 %t227, ptr %l125, !tbaa !24
  %t228 = load ptr, ptr %l19, !tbaa !29
  %t230 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2eLen_3ccompiler_2fcheck_3atypeCase_3e(ptr %s0, ptr %t228)
  store i64 %t230, ptr %l127
  br label %bb53
bb53:
  %t231 = load i64, ptr %l125, !tbaa !24
  %t232 = load i64, ptr %l127, !tbaa !24
  %t233 = icmp slt i64 %t231, %t232
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb54, label %bb55
bb54:
  br label %bb66
bb55:
  br label %bb56
bb56:
  %t237 = load ptr, ptr %l19, !tbaa !29
  %t238 = load i64, ptr %l20, !tbaa !24
  %t241 = call %"compiler/check:typeCase" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2eAt_3ccompiler_2fcheck_3atypeCase_3e(ptr %s0, ptr %t237, i64 %t238)
  store %"compiler/check:typeCase" %t241, ptr %l132
  br label %bb57
bb57:
  %t242 = load %"compiler/check:typeCase", ptr %l132
  store %"compiler/check:typeCase" %t242, ptr %l21
  %t243 = getelementptr %"compiler/check:typeCase", ptr %l21, i32 0, i32 0
  %t244 = load i1, ptr %t243, !tbaa !21
  br i1 %t244, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s14
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/check:Checker", ptr %t246, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = getelementptr %"compiler/generic:Program", ptr %t249, i32 0, i32 0
  %t252 = load ptr, ptr %t251, !tbaa !29
  %t254 = getelementptr %"compiler/load:Loader", ptr %t252, i32 0, i32 4
  %t255 = load ptr, ptr %t254, !tbaa !29
  store ptr %t255, ptr %l137, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  store ptr %t256, ptr %l138, !tbaa !29
  %t257 = load ptr, ptr %l18, !tbaa !29
  %t259 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t257)
  store %"compiler/source:Span" %t259, ptr %l140
  br label %bb60
bb59:
  br label %bb64
bb60:
  %t260 = load ptr, ptr %l138, !tbaa !29
  %t261 = load %"compiler/source:Span", ptr %l140
  %t262 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t260, %"compiler/source:Span" %t261)
  store { i64, [3 x i64] } %t262, ptr %l141
  br label %bb61
bb61:
  %t263 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflCaseUnreachable(ptr %s14)
  store %"compiler/diagmsg:Msg" %t263, ptr %l142
  br label %bb62
bb62:
  %t264 = load ptr, ptr %l137, !tbaa !29
  %t265 = load { i64, [3 x i64] }, ptr %l141
  %t266 = load %"compiler/diagmsg:Msg", ptr %l142
  %t267 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %s14, ptr %t264, { i64, [3 x i64] } %t265, %"compiler/diagmsg:Msg" %t266)
  store i64 %t267, ptr %l143
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s14)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t268 = load i64, ptr %l20, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l20, !tbaa !24
  br label %bb52
bb66:
  store ptr %l8, ptr %l146, !tbaa !29
  %t272 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t274 = call %"compiler/check:typeCase" @compiler_2fcheck_3atypeCase_2ector(ptr %s11, i1 true, i1 false, i32 %t272, i64 0)
  store %"compiler/check:typeCase" %t274, ptr %l148
  br label %bb67
bb67:
  %t275 = load ptr, ptr %l146, !tbaa !29
  %t276 = load %"compiler/check:typeCase", ptr %l148
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2ePush_3ccompiler_2fcheck_3atypeCase_3e(ptr %s0, ptr %t275, %"compiler/check:typeCase" %t276)
  br label %bb68
bb68:
  %t277 = load i64, ptr %l7, !tbaa !24
  %t279 = icmp slt i64 %t277, 0
  br i1 %t279, label %bb69, label %bb70
bb69:
  %t281 = load i64, ptr %l14, !tbaa !24
  store i64 %t281, ptr %l7, !tbaa !24
  br label %bb71
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s11)
  br label %bb101
bb72:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load ptr, ptr %l18, !tbaa !29
  %t287 = call %"compiler/check:typeCase" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseOf(ptr %v0, ptr %v1, ptr %t283, ptr %t284)
  store %"compiler/check:typeCase" %t287, ptr %l154
  br label %bb73
bb73:
  %t288 = load %"compiler/check:typeCase", ptr %l154
  store %"compiler/check:typeCase" %t288, ptr %l22
  %t289 = getelementptr %"compiler/check:typeCase", ptr %l22, i32 0, i32 2
  %t290 = load i32, ptr %t289, !tbaa !23
  %t291 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t294 = icmp eq i32 %t290, %t291
  br i1 %t294, label %bb74, label %bb75
bb74:
  br label %bb101
bb75:
  br label %bb76
bb76:
  store ptr %l8, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb77
bb77:
  %t297 = load i64, ptr %l24, !tbaa !24
  store i64 %t297, ptr %l159, !tbaa !24
  %t298 = load ptr, ptr %l23, !tbaa !29
  %t300 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2eLen_3ccompiler_2fcheck_3atypeCase_3e(ptr %s0, ptr %t298)
  store i64 %t300, ptr %l161
  br label %bb78
bb78:
  %t301 = load i64, ptr %l159, !tbaa !24
  %t302 = load i64, ptr %l161, !tbaa !24
  %t303 = icmp slt i64 %t301, %t302
  %t305 = xor i1 %t303, true
  br i1 %t305, label %bb79, label %bb80
bb79:
  br label %bb92
bb80:
  br label %bb81
bb81:
  %t307 = load ptr, ptr %l23, !tbaa !29
  %t308 = load i64, ptr %l24, !tbaa !24
  %t311 = call %"compiler/check:typeCase" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2eAt_3ccompiler_2fcheck_3atypeCase_3e(ptr %s0, ptr %t307, i64 %t308)
  store %"compiler/check:typeCase" %t311, ptr %l166
  br label %bb82
bb82:
  %t312 = load %"compiler/check:typeCase", ptr %l166
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = load %"compiler/check:typeCase", ptr %l22
  %t319 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseCovers(ptr %v0, ptr %t313, %"compiler/check:typeCase" %t312, %"compiler/check:typeCase" %t315)
  store i1 %t319, ptr %l170
  br label %bb83
bb83:
  %t320 = load i1, ptr %l170, !tbaa !21
  br i1 %t320, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s20
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr %"compiler/check:Checker", ptr %t321, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t326 = getelementptr %"compiler/generic:Program", ptr %t324, i32 0, i32 0
  %t327 = load ptr, ptr %t326, !tbaa !29
  %t329 = getelementptr %"compiler/load:Loader", ptr %t327, i32 0, i32 4
  %t330 = load ptr, ptr %t329, !tbaa !29
  store ptr %t330, ptr %l174, !tbaa !29
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l175, !tbaa !29
  %t332 = load ptr, ptr %l18, !tbaa !29
  %t334 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t332)
  store %"compiler/source:Span" %t334, ptr %l177
  br label %bb86
bb85:
  br label %bb90
bb86:
  %t335 = load ptr, ptr %l175, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l177
  %t337 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t335, %"compiler/source:Span" %t336)
  store { i64, [3 x i64] } %t337, ptr %l178
  br label %bb87
bb87:
  %t338 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflCaseUnreachable(ptr %s20)
  store %"compiler/diagmsg:Msg" %t338, ptr %l179
  br label %bb88
bb88:
  %t339 = load ptr, ptr %l174, !tbaa !29
  %t340 = load { i64, [3 x i64] }, ptr %l178
  %t341 = load %"compiler/diagmsg:Msg", ptr %l179
  %t342 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %s20, ptr %t339, { i64, [3 x i64] } %t340, %"compiler/diagmsg:Msg" %t341)
  store i64 %t342, ptr %l180
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s20)
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t343 = load i64, ptr %l24, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l24, !tbaa !24
  br label %bb77
bb92:
  %t347 = load %"compiler/check:typeCase", ptr %l22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2ePush_3ccompiler_2fcheck_3atypeCase_3e(ptr %s0, ptr %l8, %"compiler/check:typeCase" %t347)
  br label %bb93
bb93:
  %t350 = load i64, ptr %l7, !tbaa !24
  %t352 = icmp sge i64 %t350, 0
  br i1 %t352, label %bb94, label %bb95
bb94:
  br label %bb101
bb95:
  br label %bb96
bb96:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load %"compiler/check:typeCase", ptr %l22
  %t356 = load i32, ptr %l2, !tbaa !23
  %t357 = load ptr, ptr %l18, !tbaa !29
  %t362 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseHolds(ptr %v0, ptr %v1, ptr %t354, %"compiler/check:typeCase" %t355, i32 %t356, ptr %t357)
  store i1 %t362, ptr %l191
  br label %bb97
bb97:
  %t363 = load i1, ptr %l191, !tbaa !21
  br i1 %t363, label %bb98, label %bb99
bb98:
  %t364 = load i64, ptr %l14, !tbaa !24
  store i64 %t364, ptr %l7, !tbaa !24
  br label %bb100
bb99:
  br label %bb100
bb100:
  br label %bb101
bb101:
  %t366 = load i64, ptr %l16, !tbaa !24
  %t368 = add i64 %t366, 1
  store i64 %t368, ptr %l16, !tbaa !24
  br label %bb45
bb102:
  br label %bb103
bb103:
  %t370 = load i64, ptr %l13, !tbaa !24
  %t372 = add i64 %t370, 1
  store i64 %t372, ptr %l13, !tbaa !24
  br label %bb41
bb104:
  %t374 = load i64, ptr %l7, !tbaa !24
  %t376 = icmp sge i64 %t374, 0
  br i1 %t376, label %bb105, label %bb106
bb105:
  %t378 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t378, ptr %rv
  br label %ret
bb106:
  br label %bb107
bb107:
  %t380 = load ptr, ptr %l0, !tbaa !29
  store ptr %t380, ptr %l200, !tbaa !29
  %t381 = load ptr, ptr %l1, !tbaa !29
  %t383 = getelementptr %"compiler/ast:Match", ptr %t381, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !29
  %t386 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t384)
  store %"compiler/source:Span" %t386, ptr %l203
  br label %bb108
bb108:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load i32, ptr %l2, !tbaa !23
  %t391 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t387, i32 %t388)
  store { i64, ptr } %t391, ptr %l206
  br label %bb109
bb109:
  %t392 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 0
  %t394 = extractvalue { i64, ptr } %t392, 1
  %t395 = mul i64 %t393, 1
  %t396 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t395)
  call void @llvm.memcpy.p0.p0.i64(ptr %t396, ptr %t394, i64 %t395, i1 false)
  %t397 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  %t400 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMatchUncovered(ptr %s0, ptr %s0, { i64, ptr } %t398)
  store %"compiler/diagmsg:Msg" %t400, ptr %l208
  br label %bb110
bb110:
  %t401 = load ptr, ptr %l200, !tbaa !29
  %t402 = load %"compiler/source:Span", ptr %l203
  %t403 = load %"compiler/diagmsg:Msg", ptr %l208
  %t404 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t401, %"compiler/source:Span" %t402, %"compiler/diagmsg:Msg" %t403)
  store i64 %t404, ptr %l209
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootLocal(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamIndex(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l11
  br label %bb4
bb3:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb5
bb4:
  %t16 = load i64, ptr %l11, !tbaa !24
  store i64 %t16, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l8, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca i1
  %l19 = alloca i64
  %l27 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 27
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettle(ptr %v0, ptr %v0, ptr %t10, ptr %t11)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/check:frame", ptr %t14, i32 0, i32 0
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 18
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb7:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb12
bb8:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb11
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/load:Loader", ptr %t32, i32 0, i32 4
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l19
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/check:frame", ptr %t38, i32 0, i32 42
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr %l19, !tbaa !24
  %t44 = icmp sgt i64 %t42, %t41
  store i1 %t44, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  %t46 = load i1, ptr %l14, !tbaa !21
  store i1 %t46, ptr %l11, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l11, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 140
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/check:frame", ptr %t51, i32 0, i32 0
  %t54 = load i64, ptr %t53, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t50, i64 %t54, i1 true)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 16
  %t61 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc78234e963d75e4843d79dfd3cff7b8f(ptr %v0, ptr %v0, ptr %t59)
  %t62 = extractvalue { i32, ptr } %t61, 1
  %t63 = extractvalue { i32, ptr } %t61, 0
  store i32 %t63, ptr %l31
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb18, label %ok.65, !prof !99
ok.65:
  store ptr %t62, ptr %l30
  br label %bb17
bb17:
  %t66 = load ptr, ptr %l30, !tbaa !29
  store ptr %t66, ptr %l27, !tbaa !29
  br label %bb20
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadFact(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l54 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:factRead", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/check:factRead", ptr %t12, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t18 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %s0, ptr %t11, i64 %t15)
  store { i64, ptr } %t18, ptr %l12
  br label %bb3
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/check:factRead", ptr %t24, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  %t30 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t23, i64 %t27)
  store ptr %t30, ptr %l18
  br label %bb4
bb3:
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  br label %bb6
bb4:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Func", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %t34, !tbaa !23
  %t36 = load ptr, ptr %l13, !tbaa !29
  %t38 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t36, i32 %t35)
  store { i64, ptr } %t38, ptr %l21
  br label %bb5
bb5:
  %t39 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t41 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = add i64 %t40, %t43
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  call void @olang_textcopy(ptr %t45, ptr %t39, i64 %t40)
  %t46 = getelementptr i8, ptr %t45, i64 %t40
  call void @olang_textcopy(ptr %t46, ptr %t42, i64 %t43)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = extractvalue { i64, ptr } %t48, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l7, !tbaa !27
  br label %bb6
bb6:
  %t57 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t57, ptr %l2, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/check:factRead", ptr %t59, i32 0, i32 4
  %t62 = load i64, ptr %t61, !tbaa !24
  %t65 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efileIdentity(ptr %v0, ptr %s0, ptr %t58, i64 %t62)
  store { i64, ptr } %t65, ptr %l27
  br label %bb7
bb7:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/check:factRead", ptr %t66, i32 0, i32 5
  %t69 = getelementptr %"compiler/source:Span", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/check:factRead", ptr %t71, i32 0, i32 2
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t76 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t78 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t86 = sext i32 %t70 to i64
  %t87 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t88 = add i64 %t84, %t87
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t93 = extractvalue { i64, ptr } %t74, 1
  %t94 = extractvalue { i64, ptr } %t74, 0
  %t95 = add i64 %t91, %t94
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t100 = extractvalue { i64, ptr } %t75, 1
  %t101 = extractvalue { i64, ptr } %t75, 0
  %t102 = add i64 %t98, %t101
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  call void @olang_textcopy(ptr %t103, ptr %t76, i64 %t77)
  %t104 = getelementptr i8, ptr %t103, i64 %t77
  call void @olang_textcopy(ptr %t104, ptr %t79, i64 %t80)
  %t105 = getelementptr i8, ptr %t104, i64 %t80
  call void @olang_textcopy(ptr %t105, ptr %t82, i64 %t83)
  %t106 = getelementptr i8, ptr %t105, i64 %t83
  %t107 = call i64 @__olang_fmt_i64(ptr %t106, i64 %t86)
  %t108 = getelementptr i8, ptr %t106, i64 %t87
  call void @olang_textcopy(ptr %t108, ptr %t89, i64 %t90)
  %t109 = getelementptr i8, ptr %t108, i64 %t90
  call void @olang_textcopy(ptr %t109, ptr %t93, i64 %t94)
  %t110 = getelementptr i8, ptr %t109, i64 %t94
  call void @olang_textcopy(ptr %t110, ptr %t96, i64 %t97)
  %t111 = getelementptr i8, ptr %t110, i64 %t97
  call void @olang_textcopy(ptr %t111, ptr %t100, i64 %t101)
  %t112 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t103, 1
  store { i64, ptr } %t113, ptr %l3, !tbaa !27
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 3
  %t121 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/check:factRead", ptr %t122, i32 0, i32 3
  %t125 = load i1, ptr %t124, !tbaa !21
  %t127 = select i1 %t125, ptr @.c38, ptr @.c39
  %t128 = select i1 %t125, i64 4, i64 5
  %t129 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t127, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = extractvalue { i64, ptr } %t131, 1
  %t135 = mul i64 %t133, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t135)
  call void @llvm.memcpy.p0.p0.i64(ptr %t136, ptr %t134, i64 %t135, i1 false)
  %t137 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  call void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %s0, ptr %s0, ptr %t120, { i64, ptr } %t121, { i64, ptr } %t138, i1 true)
  br label %bb8
bb8:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 3
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr %"compiler/check:factRead", ptr %t148, i32 0, i32 4
  %t151 = load i64, ptr %t150, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t156 = call { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %s0, ptr %s0, ptr %t147, i64 %t151, { i64, ptr } %t152)
  %t157 = extractvalue { i32, { i64, ptr } } %t156, 1
  %t158 = extractvalue { i32, { i64, ptr } } %t156, 0
  store i32 %t158, ptr %l50
  %t159 = icmp ne i32 %t158, 0
  br i1 %t159, label %bb10, label %ok.160, !prof !99
ok.160:
  store { i64, ptr } %t157, ptr %l49
  br label %bb9
bb9:
  %t161 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t161, ptr %l42, !tbaa !27
  br label %bb12
bb10:
  br label %bb11
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l51, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t162, ptr %l42, !tbaa !27
  br label %bb12
bb12:
  %t164 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  %t172 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t170, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t172, ptr %l54
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t173 = load i1, ptr %l54, !tbaa !21
  store i1 %t173, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca i32
  %rv = alloca i32
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceName(ptr %v0, ptr %v1, ptr %a0, ptr %t17)
  store i32 %t20, ptr %l12
  br label %bb6
bb6:
  %t21 = load i32, ptr %l12, !tbaa !23
  store i32 %t21, ptr %l3, !tbaa !23
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i32 0, ptr %l3, !tbaa !23
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b4fa9ecc50f06b0b_d6ee486f71837477)
  unreachable
bb12:
  %t22 = load i32, ptr %l3, !tbaa !23
  store i32 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i1
  %l20 = alloca i1
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
  store i1 true, ptr %l4, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t6)
  store i32 %t9, ptr %l8
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t12, ptr %l9
  br label %bb4
bb4:
  %t13 = load i1, ptr %l9, !tbaa !21
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l4, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb10
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t16)
  store i32 %t19, ptr %l14
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i32, ptr %l14, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t22, ptr %l15
  br label %bb9
bb9:
  %t23 = load i1, ptr %l15, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb10
bb10:
  %t26 = load i1, ptr %l10, !tbaa !21
  br i1 %t26, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i1 %t32, ptr %l20
  br label %bb14
bb14:
  %t33 = load i1, ptr %l20, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleBy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l17 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i32
  %l35 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca i32
  %l53 = alloca i1
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l63 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l67 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l77 = alloca %"compiler/diagmsg:Msg"
  %l78 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t18 = alloca i64
  %t45 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l15, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l17, !tbaa !29
  %t8 = load i64, ptr %l15, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l15, !tbaa !24
  %t12 = icmp sle i64 %t11, 1152921504606846975
  br i1 %t12, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_efc3d234eb1501de_4d27d8d6a326f0a)
  unreachable
bb3:
  %t14 = load i64, ptr %l15, !tbaa !24
  %t15 = mul i64 %t14, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t15)
  %t17 = load ptr, ptr %l17, !tbaa !29
  store i64 0, ptr %t18
  br label %fill.19
fill.19:
  %t22 = load i64, ptr %t18
  %t23 = icmp slt i64 %t22, %t14
  br i1 %t23, label %fillb.20, label %filld.21
fillb.20:
  %t24 = getelementptr ptr, ptr %t16, i64 %t22
  store ptr %t17, ptr %t24
  %t25 = add i64 %t22, 1
  store i64 %t25, ptr %t18
  br label %fill.19
filld.21:
  %t26 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t16, 1
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t28, ptr %lp4
  %t30 = load ptr, ptr %lp4
  store { i64, ptr } %t27, ptr %t30, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l22, !tbaa !24
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t34, ptr %l23, !tbaa !23
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  br i1 %t36, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_efc3d234eb1501de_4d27d8d6a326f0a)
  unreachable
bb5:
  %t38 = load i64, ptr %l22, !tbaa !24
  %t39 = icmp sle i64 %t38, 2305843009213693951
  br i1 %t39, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_7655d192ba63d713_67a9153eaa817cdf)
  unreachable
bb7:
  %t41 = load i64, ptr %l22, !tbaa !24
  %t42 = mul i64 %t41, 4
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  %t44 = load i32, ptr %l23, !tbaa !23
  store i64 0, ptr %t45
  br label %fill.46
fill.46:
  %t49 = load i64, ptr %t45
  %t50 = icmp slt i64 %t49, %t41
  br i1 %t50, label %fillb.47, label %filld.48
fillb.47:
  %t51 = getelementptr i32, ptr %t43, i64 %t49
  store i32 %t44, ptr %t51
  %t52 = add i64 %t49, 1
  store i64 %t52, ptr %t45
  br label %fill.46
filld.48:
  %t53 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t43, 1
  store { i64, ptr } %t54, ptr %l5, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l8, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_7655d192ba63d713_67a9153eaa817cdf)
  unreachable
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb11:
  br label %bb12
bb12:
  %t70 = load i64, ptr %l7, !tbaa !24
  store i64 %t70, ptr %l9, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t72, ptr %l35, !tbaa !27
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr ptr, ptr %t76, i64 %t73
  %t78 = load ptr, ptr %t77, !tbaa !39
  store ptr %t78, ptr %l10, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l10, !tbaa !29
  %t83 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %t80, ptr %t81, i32 %t83)
  store ptr %t87, ptr %l42
  br label %bb13
bb13:
  %t88 = load ptr, ptr %l42, !tbaa !29
  store ptr %t88, ptr %l11, !tbaa !29
  %t89 = load i64, ptr %l9, !tbaa !24
  %t90 = load ptr, ptr %l11, !tbaa !29
  %t92 = load ptr, ptr %lp4
  %t94 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t89
  store ptr %t90, ptr %t96, !tbaa !39
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l45, !tbaa !29
  %t98 = load ptr, ptr %l11, !tbaa !29
  %t101 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t98)
  store i32 %t101, ptr %l48
  br label %bb14
bb14:
  %t102 = load ptr, ptr %l45, !tbaa !29
  %t103 = load i32, ptr %l48, !tbaa !23
  %t104 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t104, ptr %l49
  br label %bb15
bb15:
  %t105 = load i32, ptr %l49, !tbaa !23
  store i32 %t105, ptr %l12, !tbaa !23
  %t106 = load i32, ptr %l12, !tbaa !23
  %t107 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t110 = icmp eq i32 %t106, %t107
  br i1 %t110, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb18
bb17:
  %t112 = load i32, ptr %l12, !tbaa !23
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t116 = icmp eq i32 %t112, %t113
  store i1 %t116, ptr %l53, !tbaa !21
  br label %bb18
bb18:
  %t118 = load i1, ptr %l53, !tbaa !21
  br i1 %t118, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb20:
  br label %bb21
bb21:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l12, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBad(ptr %v0, ptr %s2, ptr %t119, i32 %t120)
  store { i64, ptr } %t123, ptr %l59
  br label %bb22
bb22:
  %t124 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t124, ptr %l13, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t125, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t127, ptr %l61
  br label %bb23
bb23:
  %t128 = load i1, ptr %l61, !tbaa !21
  %t129 = xor i1 %t128, true
  br i1 %t129, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l63, !tbaa !29
  %t132 = load ptr, ptr %l10, !tbaa !29
  %t134 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t132)
  store %"compiler/source:Span" %t134, ptr %l65
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t135 = load ptr, ptr %l0, !tbaa !29
  store { i64, ptr } %a3, ptr %l67, !tbaa !27
  %t137 = load i64, ptr %l9, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr ptr, ptr %t140, i64 %t137
  %t142 = load ptr, ptr %t141, !tbaa !39
  %t144 = getelementptr %"compiler/ast:Param", ptr %t142, i32 0, i32 1
  %t145 = load i32, ptr %t144, !tbaa !23
  %t148 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t135, i32 %t145)
  store { i64, ptr } %t148, ptr %l71
  br label %bb27
bb27:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l12, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t149, i32 %t150)
  store { i64, ptr } %t153, ptr %l74
  br label %bb28
bb28:
  %t154 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t161 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t165 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadHoldsRef(ptr %v0, ptr %s4, ptr %s2, ptr %s4, { i64, ptr } %t162, { i64, ptr } %t160, { i64, ptr } %t161)
  store %"compiler/diagmsg:Msg" %t165, ptr %l77
  br label %bb29
bb29:
  %t166 = load ptr, ptr %l63, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l65
  %t168 = load %"compiler/diagmsg:Msg", ptr %l77
  %t169 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t166, %"compiler/source:Span" %t167, %"compiler/diagmsg:Msg" %t168)
  store i64 %t169, ptr %l78
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb31:
  %t170 = load i64, ptr %l9, !tbaa !24
  %t171 = load i32, ptr %l12, !tbaa !23
  %t174 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr i32, ptr %t175, i64 %t170
  store i32 %t171, ptr %t176, !tbaa !33
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb32:
  %t177 = load i64, ptr %l7, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l7, !tbaa !24
  br label %bb9
bb33:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSettleRaised(ptr %v0, ptr %s0, ptr %t184, i32 %a1, { i64, ptr } %t186)
  br label %bb34
bb34:
  %t190 = load ptr, ptr %lp4
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t191, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %a1)
  store { i64, ptr } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %t6)
  store { i64, ptr } %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l24 = alloca i32
  %l26 = alloca i32
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
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
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t18, i32 0, i32 3
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb26
bb5:
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 3}
  %t29 = icmp eq i64 %t27, 1
  store i1 %t29, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l13, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l18
  br label %bb11
bb11:
  %t36 = load i1, ptr %l18, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l24
  br label %bb14
bb13:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb16
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t47)
  store i32 %t49, ptr %l26
  br label %bb15
bb15:
  %t50 = load i32, ptr %l24, !tbaa !23
  %t51 = load i32, ptr %l26, !tbaa !23
  %t52 = icmp eq i32 %t50, %t51
  store i1 %t52, ptr %l19, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l19, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t55, ptr %l29, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  store i64 %t57, ptr %l30, !tbaa !24
  %t58 = load i64, ptr %l30, !tbaa !24
  %t59 = mul i64 %t58, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l31, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l30, !tbaa !24
  %t68 = mul i64 %t67, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %t66, i64 %t68, i1 false)
  %t69 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t69, ptr %l29, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t70, ptr %rv
  br label %ret
bb18:
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
  call void @__olang_check_failed(ptr @olang_loc_e722c21055ee6b49_58bcebf0b772fb7d)
  unreachable
bb25:
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_eca48244095fc078_aacf4c954a6e214c)
  unreachable
bb31:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l32, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t75 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t72)
  store i32 %t75, ptr %l35
  br label %bb32
bb32:
  %t76 = load ptr, ptr %l32, !tbaa !29
  %t77 = load i32, ptr %l35, !tbaa !23
  %t78 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v2, ptr %t76, i32 %t77)
  store { i64, ptr } %t78, ptr %l36
  br label %bb33
bb33:
  %t79 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseCovers(ptr %v0, ptr %a0, %"compiler/check:typeCase" %a1, %"compiler/check:typeCase" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:typeCase"
  %l2 = alloca %"compiler/check:typeCase"
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l17 = alloca i1
  %l20 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l37 = alloca i1
  %l50 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i32
  %l62 = alloca ptr
  %l67 = alloca i32
  %l72 = alloca i64
  %l76 = alloca i32
  %l77 = alloca i1
  %l82 = alloca i32
  %l86 = alloca i1
  %l91 = alloca i32
  %l100 = alloca i32
  %l105 = alloca i32
  %l110 = alloca ptr
  %l115 = alloca i32
  %l116 = alloca { i64, ptr }
  %l117 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l125 = alloca { i64, ptr }
  %l132 = alloca i32
  %l136 = alloca i1
  %l141 = alloca i64
  %l144 = alloca i1
  %l145 = alloca ptr
  %l150 = alloca i64
  %l151 = alloca i1
  %l153 = alloca ptr
  %l158 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/check:typeCase" %a1, ptr %l1
  store %"compiler/check:typeCase" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 0
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 0
  %t6 = load i1, ptr %t5, !tbaa !21
  br i1 %t6, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t9 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 1
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb7, label %bb8
bb7:
  %t12 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 1
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb9, label %bb10
bb8:
  br label %bb26
bb9:
  %t15 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t16 = load i64, ptr %t15, !tbaa !24
  %t18 = icmp eq i64 %t16, 0
  br i1 %t18, label %bb11, label %bb12
bb10:
  br label %bb18
bb11:
  %t20 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 3
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb13
bb13:
  %t25 = load i1, ptr %l17, !tbaa !21
  br i1 %t25, label %bb14, label %bb15
bb14:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t33 = load i32, ptr %t32, !tbaa !23
  %t34 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t35 = load i32, ptr %t34, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t31, i32 %t33, i32 %t35)
  store i1 %t39, ptr %l26
  br label %bb16
bb15:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb17
bb16:
  %t40 = load i1, ptr %l26, !tbaa !21
  store i1 %t40, ptr %l20, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load i1, ptr %l20, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
bb18:
  %t42 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = icmp eq i64 %t43, 0
  br i1 %t45, label %bb19, label %bb20
bb19:
  %t47 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 3
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = icmp eq i64 %t48, 0
  store i1 %t50, ptr %l29, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb21
bb21:
  %t52 = load i1, ptr %l29, !tbaa !21
  br i1 %t52, label %bb22, label %bb23
bb22:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t58 = load i32, ptr %t57, !tbaa !23
  %t59 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t60 = load i32, ptr %t59, !tbaa !23
  %t64 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %t56, i32 %t58, i32 %t60)
  store i1 %t64, ptr %l37
  br label %bb24
bb23:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb25
bb24:
  %t65 = load i1, ptr %l37, !tbaa !21
  store i1 %t65, ptr %l32, !tbaa !21
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t66 = load i1, ptr %l32, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
bb26:
  %t67 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 1
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t71 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = icmp eq i64 %t72, 0
  br i1 %t74, label %bb30, label %bb31
bb30:
  %t76 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 3
  %t77 = load i64, ptr %t76, !tbaa !24
  %t79 = icmp ne i64 %t77, 0
  br i1 %t79, label %bb32, label %bb33
bb31:
  br label %bb47
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t89 = load i32, ptr %t88, !tbaa !23
  %t90 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t91 = load i32, ptr %t90, !tbaa !23
  %t95 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t87, i32 %t89, i32 %t91)
  store i1 %t95, ptr %l50
  br label %bb35
bb35:
  %t96 = load i1, ptr %l50, !tbaa !21
  br i1 %t96, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t100 = load i32, ptr %t99, !tbaa !23
  %t103 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t98, i32 %t100)
  store i1 %t103, ptr %l54
  br label %bb39
bb39:
  %t104 = load i1, ptr %l54, !tbaa !21
  br i1 %t104, label %bb40, label %bb41
bb40:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  store ptr %t110, ptr %l58, !tbaa !29
  %t111 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t112 = load i32, ptr %t111, !tbaa !23
  store i32 %t112, ptr %l59, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  store ptr %t118, ptr %l62, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t126 = load i32, ptr %t125, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t124, i32 %t126)
  store i32 %t129, ptr %l67
  br label %bb42
bb41:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb46
bb42:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t137 = load i32, ptr %t136, !tbaa !23
  %t140 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t135, i32 %t137)
  store i64 %t140, ptr %l72
  br label %bb43
bb43:
  %t141 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t143 = xor i64 %t141, -1
  %t144 = load i64, ptr %l72, !tbaa !24
  %t146 = and i64 %t144, %t143
  %t147 = load ptr, ptr %l62, !tbaa !29
  %t148 = load i32, ptr %l67, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t147, i32 %t148, i64 %t146)
  store i32 %t150, ptr %l76
  br label %bb44
bb44:
  %t151 = load ptr, ptr %l58, !tbaa !29
  %t152 = load i32, ptr %l59, !tbaa !23
  %t153 = load i32, ptr %l76, !tbaa !23
  %t154 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t151, i32 %t152, i32 %t153)
  store i1 %t154, ptr %l77
  br label %bb45
bb45:
  %t155 = load i1, ptr %l77, !tbaa !21
  store i1 %t155, ptr %l55, !tbaa !21
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s0)
  %t156 = load i1, ptr %l55, !tbaa !21
  store i1 %t156, ptr %rv
  br label %ret
bb47:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 2
  %t163 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t164 = load i32, ptr %t163, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t162, i32 %t164)
  store i32 %t167, ptr %l82
  br label %bb48
bb48:
  %t168 = load i32, ptr %l82, !range !{i32 0, i32 33}
  %t170 = trunc i64 18 to i32
  %t171 = icmp eq i32 %t168, %t170
  %t173 = xor i1 %t171, true
  br i1 %t173, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb52
bb50:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 2
  %t181 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t182 = load i32, ptr %t181, !tbaa !23
  %t185 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t180, i32 %t182)
  store i32 %t185, ptr %l91
  br label %bb51
bb51:
  %t186 = load i32, ptr %l91, !range !{i32 0, i32 33}
  %t188 = trunc i64 18 to i32
  %t189 = icmp eq i32 %t186, %t188
  %t191 = xor i1 %t189, true
  store i1 %t191, ptr %l86, !tbaa !21
  br label %bb52
bb52:
  %t193 = load i1, ptr %l86, !tbaa !21
  br i1 %t193, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t201 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t202 = load i32, ptr %t201, !tbaa !23
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t200, i32 %t202)
  store i32 %t205, ptr %l100
  br label %bb56
bb56:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/check:Checker", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Program", ptr %t209, i32 0, i32 2
  %t212 = getelementptr %"compiler/check:typeCase", ptr %l2, i32 0, i32 2
  %t213 = load i32, ptr %t212, !tbaa !23
  %t216 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t211, i32 %t213)
  store i32 %t216, ptr %l105
  br label %bb57
bb57:
  %t217 = load i32, ptr %l100, !tbaa !23
  %t218 = load i32, ptr %l105, !tbaa !23
  %t219 = icmp ne i32 %t217, %t218
  br i1 %t219, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  store ptr %t227, ptr %l110, !tbaa !29
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t233 = getelementptr %"compiler/generic:Program", ptr %t231, i32 0, i32 2
  %t234 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t235 = load i32, ptr %t234, !tbaa !23
  %t238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t233, i32 %t235)
  store i32 %t238, ptr %l115
  br label %bb61
bb61:
  %t239 = load ptr, ptr %l110, !tbaa !29
  %t240 = load i32, ptr %l115, !tbaa !23
  %t241 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t239, i32 %t240)
  store { i64, ptr } %t241, ptr %l116
  br label %bb62
bb62:
  %t242 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t242, ptr %l3, !tbaa !27
  %t243 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243, ptr %l117
  br label %bb63
bb63:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l4
  %t245 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t245, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t247 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t249 = extractvalue { i64, ptr } %t247, 0
  store i64 %t249, ptr %l7, !tbaa !24
  br label %bb64
bb64:
  %t251 = load i64, ptr %l6, !tbaa !24
  %t252 = load i64, ptr %l7, !tbaa !24
  %t255 = icmp slt i64 %t251, %t252
  %t257 = xor i1 %t255, true
  br i1 %t257, label %bb65, label %bb66
bb65:
  br label %bb84
bb66:
  br label %bb67
bb67:
  %t259 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t259, ptr %l125, !tbaa !27
  %t260 = load i64, ptr %l6, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr i32, ptr %t263, i64 %t260
  %t265 = load i32, ptr %t264, !tbaa !33
  store i32 %t265, ptr %l8, !tbaa !23
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  %t273 = load i32, ptr %l8, !tbaa !23
  %t276 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t272, i32 %t273)
  store i32 %t276, ptr %l132
  br label %bb68
bb68:
  %t277 = load i32, ptr %l132, !range !{i32 0, i32 33}
  %t279 = trunc i64 25 to i32
  %t280 = icmp eq i32 %t277, %t279
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb72
bb70:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = getelementptr %"compiler/generic:Program", ptr %t287, i32 0, i32 2
  %t290 = load i32, ptr %l8, !tbaa !23
  %t293 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t289, i32 %t290)
  store i64 %t293, ptr %l141
  br label %bb71
bb71:
  %t294 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 4
  %t295 = load i64, ptr %t294, !tbaa !24
  %t296 = load i64, ptr %l141, !tbaa !24
  %t298 = icmp ne i64 %t296, %t295
  store i1 %t298, ptr %l136, !tbaa !21
  br label %bb72
bb72:
  %t300 = load i1, ptr %l136, !tbaa !21
  br i1 %t300, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l144, !tbaa !21
  br label %bb77
bb74:
  store ptr %l4, ptr %l145, !tbaa !29
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/check:Checker", ptr %t301, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !29
  %t306 = getelementptr %"compiler/generic:Program", ptr %t304, i32 0, i32 2
  %t307 = load i32, ptr %l8, !tbaa !23
  %t310 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t306, i32 %t307)
  store i64 %t310, ptr %l150
  br label %bb75
bb75:
  %t311 = load ptr, ptr %l145, !tbaa !29
  %t312 = load i64, ptr %l150, !tbaa !24
  %t313 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %t311, i64 %t312)
  store i1 %t313, ptr %l151
  br label %bb76
bb76:
  %t314 = load i1, ptr %l151, !tbaa !21
  store i1 %t314, ptr %l144, !tbaa !21
  br label %bb77
bb77:
  %t315 = load i1, ptr %l144, !tbaa !21
  br i1 %t315, label %bb78, label %bb79
bb78:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  store ptr %l4, ptr %l153, !tbaa !29
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/check:Checker", ptr %t317, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = getelementptr %"compiler/generic:Program", ptr %t320, i32 0, i32 2
  %t323 = load i32, ptr %l8, !tbaa !23
  %t326 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t322, i32 %t323)
  store i64 %t326, ptr %l158
  br label %bb81
bb81:
  %t327 = load ptr, ptr %l153, !tbaa !29
  %t328 = load i64, ptr %l158, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t327, i64 %t328)
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t329 = load i64, ptr %l6, !tbaa !24
  %t331 = add i64 %t329, 1
  store i64 %t331, ptr %l6, !tbaa !24
  br label %bb64
bb84:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeRules(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i32
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i32
  %l57 = alloca i1
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca ptr
  %l66 = alloca i64
  %l69 = alloca i1
  %l78 = alloca i64
  %l85 = alloca i32
  %l89 = alloca ptr
  %l90 = alloca ptr
  %l91 = alloca i64
  %l96 = alloca %"compiler/generic:Context"
  %l98 = alloca %"compiler/generic:Context"
  %l112 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca ptr
  %l122 = alloca i32
  %l124 = alloca i32
  %l128 = alloca { i64, ptr }
  %l132 = alloca %"compiler/source:Span"
  %l136 = alloca { i64, ptr }
  %l138 = alloca %"compiler/diagmsg:Msg"
  %l139 = alloca i64
  %l154 = alloca { i64, ptr }
  %l161 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i64
  %l169 = alloca i1
  %l171 = alloca ptr
  %l177 = alloca %"compiler/source:Span"
  %l178 = alloca ptr
  %l184 = alloca %"compiler/source:Span"
  %l185 = alloca { i64, ptr }
  %l186 = alloca %"compiler/diagmsg:Msg"
  %l187 = alloca i64
  %l196 = alloca { i64, ptr }
  %l202 = alloca i1
  %l204 = alloca ptr
  %l206 = alloca %"compiler/source:Span"
  %l207 = alloca ptr
  %l209 = alloca %"compiler/source:Span"
  %l210 = alloca { i64, ptr }
  %l211 = alloca %"compiler/diagmsg:Msg"
  %l212 = alloca i64
  %l223 = alloca ptr
  %l224 = alloca i1
  %l227 = alloca ptr
  %l229 = alloca { i64, ptr }
  %l231 = alloca %"compiler/source:Span"
  %l232 = alloca %"compiler/diagmsg:Msg"
  %l233 = alloca i64
  %l236 = alloca ptr
  %l237 = alloca i1
  %l253 = alloca { i64, ptr }
  %l261 = alloca ptr
  %l262 = alloca i1
  %l274 = alloca { i64, ptr }
  %l289 = alloca { i64, ptr }
  %l296 = alloca i1
  %l302 = alloca ptr
  %l304 = alloca i64
  %l307 = alloca ptr
  %l310 = alloca { i64, ptr }
  %l314 = alloca { i64, ptr }
  %l315 = alloca i64
  %l318 = alloca i64
  %l319 = alloca i32
  %l331 = alloca %"compiler/source:Span"
  %l334 = alloca ptr
  %l335 = alloca i1
  %l346 = alloca i32
  %l349 = alloca i1
  %l352 = alloca i32
  %l356 = alloca i1
  %l361 = alloca i32
  %l363 = alloca ptr
  %l365 = alloca %"compiler/source:Span"
  %l368 = alloca { i64, ptr }
  %l370 = alloca %"compiler/diagmsg:Msg"
  %l371 = alloca i64
  %l376 = alloca i32
  %l379 = alloca i1
  %l383 = alloca i1
  %l384 = alloca ptr
  %l385 = alloca %"compiler/source:Span"
  %l386 = alloca { i64, ptr }
  %l387 = alloca { i64, ptr }
  %l390 = alloca { i64, ptr }
  %l392 = alloca %"compiler/diagmsg:Msg"
  %l393 = alloca i64
  %l398 = alloca i32
  %l404 = alloca i1
  %l407 = alloca ptr
  %l408 = alloca i1
  %l416 = alloca i32
  %l419 = alloca ptr
  %l424 = alloca i32
  %l425 = alloca { i64, ptr }
  %l428 = alloca i1
  %l432 = alloca i1
  %l435 = alloca ptr
  %l440 = alloca i32
  %l441 = alloca { i64, ptr }
  %l443 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l449 = alloca i64
  %l452 = alloca i64
  %l470 = alloca i64
  %l472 = alloca i64
  %l474 = alloca i1
  %l476 = alloca { i64, ptr }
  %l480 = alloca i1
  %l482 = alloca ptr
  %l485 = alloca %"compiler/source:Span"
  %l488 = alloca { i64, ptr }
  %l490 = alloca %"compiler/diagmsg:Msg"
  %l491 = alloca i64
  %l494 = alloca ptr
  %l495 = alloca i1
  %l503 = alloca i32
  %l511 = alloca { i64, ptr }
  %l515 = alloca i1
  %l528 = alloca { i64, ptr }
  %l531 = alloca ptr
  %l538 = alloca i32
  %l540 = alloca i1
  %l542 = alloca ptr
  %l544 = alloca i32
  %l546 = alloca i32
  %l550 = alloca { i64, ptr }
  %l554 = alloca %"compiler/source:Span"
  %l557 = alloca { i64, ptr }
  %l559 = alloca %"compiler/diagmsg:Msg"
  %l560 = alloca i64
  %l567 = alloca i1
  %l570 = alloca i64
  %l572 = alloca i64
  %l573 = alloca i32
  %l575 = alloca ptr
  %l585 = alloca %"compiler/source:Span"
  %l586 = alloca %"compiler/diagmsg:Msg"
  %l587 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s57 = alloca %olang.scope
  %t61 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l69, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l69, !tbaa !21
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
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TypeDecl", ptr %t18, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  %t25 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t16, i64 %t17, i32 %t21)
  store i64 %t25, ptr %l78
  br label %bb7
bb7:
  %t26 = load i64, ptr %l78, !tbaa !24
  store i64 %t26, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
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
  %t36 = load i64, ptr %l4, !tbaa !24
  %t40 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t34, i64 %t35, i64 %t36)
  store i32 %t40, ptr %l85
  br label %bb11
bb11:
  %t41 = load i32, ptr %l85, !tbaa !23
  store i32 %t41, ptr %l5, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t42, i64 -1, i64 %t43, i32 %t44, i32 0)
  store ptr %t48, ptr %l89
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l89, !tbaa !29
  store ptr %t49, ptr %l6, !tbaa !29
  %t50 = load ptr, ptr %l6, !tbaa !29
  store ptr %t50, ptr %l90, !tbaa !29
  %t51 = ptrtoint ptr %v0 to i64
  store i64 %t51, ptr %l91, !tbaa !24
  %t52 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = call ptr @__olang_region_make(ptr %v0)
  %t55 = ptrtoint ptr %t54 to i64
  store i64 %t55, ptr %l91, !tbaa !24
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load i32, ptr %l5, !tbaa !23
  %t62 = load i64, ptr %l91
  %t63 = inttoptr i64 %t62 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %t61, ptr %v0, ptr %t63, ptr %t59, i32 %t60)
  call void @llvm.memmove.p0.p0.i64(ptr %l96, ptr %t61, i64 160, i1 false)
  br label %bb15
bb15:
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t66, label %bb16, label %bb17
bb16:
  %t68 = load i64, ptr %l91
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = getelementptr %"compiler/generic:Context", ptr %l96, i32 0, i32 3
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t70, i32 0, i32 2
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr null
  %t77 = getelementptr %"compiler/generic:Context", ptr %l96, i32 0, i32 3
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t77, i32 0, i32 1
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = icmp ne ptr %t81, null
  %t83 = select i1 %t82, ptr %t81, ptr %t76
  %t84 = getelementptr %"compiler/generic:Context", ptr %l96, i32 0, i32 3
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t84, i32 0, i32 0
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr %t83
  %t91 = getelementptr %"compiler/generic:Context", ptr %l96, i32 0, i32 2
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = call ptr @__olang_region_or(ptr %t94, ptr null)
  %t96 = icmp ne ptr %t95, null
  %t97 = select i1 %t96, ptr %t95, ptr %t90
  %t98 = getelementptr %"compiler/generic:Context", ptr %l96, i32 0, i32 2
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = icmp ne ptr %t102, null
  %t104 = select i1 %t103, ptr %t102, ptr %t97
  %t105 = getelementptr %"compiler/generic:Context", ptr %l96, i32 0, i32 2
  %t106 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t105, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = call ptr @__olang_region_or(ptr %t108, ptr null)
  %t110 = icmp ne ptr %t109, null
  %t111 = select i1 %t110, ptr %t109, ptr %t104
  %t112 = icmp eq ptr %t111, %t69
  call void @__olang_region_settle(ptr %t69, i1 %t112)
  br label %bb17
bb17:
  %t113 = load ptr, ptr %l90, !tbaa !29
  %t114 = getelementptr %"compiler/check:frame", ptr %t113, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l98, ptr %t114, i64 160, i1 false)
  %t115 = load ptr, ptr %l90, !tbaa !29
  %t116 = getelementptr %"compiler/check:frame", ptr %t115, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %l96, i64 160, i1 false)
  %t117 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t117, label %bb18, label %bb19
bb18:
  %t119 = getelementptr %"compiler/generic:Context", ptr %l98, i32 0, i32 3
  %t120 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t119, i32 0, i32 2
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr null
  %t126 = getelementptr %"compiler/generic:Context", ptr %l98, i32 0, i32 3
  %t127 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t126, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr %t125
  %t133 = getelementptr %"compiler/generic:Context", ptr %l98, i32 0, i32 3
  %t134 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t133, i32 0, i32 0
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = icmp ne ptr %t137, null
  %t139 = select i1 %t138, ptr %t137, ptr %t132
  %t140 = getelementptr %"compiler/generic:Context", ptr %l98, i32 0, i32 2
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t140, i32 0, i32 2
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr %t139
  %t147 = getelementptr %"compiler/generic:Context", ptr %l98, i32 0, i32 2
  %t148 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t147, i32 0, i32 1
  %t149 = load { i64, ptr }, ptr %t148
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = call ptr @__olang_region_or(ptr %t150, ptr null)
  %t152 = icmp ne ptr %t151, null
  %t153 = select i1 %t152, ptr %t151, ptr %t146
  %t154 = getelementptr %"compiler/generic:Context", ptr %l98, i32 0, i32 2
  %t155 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t154, i32 0, i32 0
  %t156 = load { i64, ptr }, ptr %t155
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = call ptr @__olang_region_or(ptr %t157, ptr null)
  %t159 = icmp ne ptr %t158, null
  %t160 = select i1 %t159, ptr %t158, ptr %t153
  call void @__olang_region_drop(ptr %t160)
  store %"compiler/generic:Context" zeroinitializer, ptr %l98
  br label %bb19
bb19:
  %t161 = load ptr, ptr %l3, !tbaa !29
  %t163 = getelementptr %"compiler/ast:TypeDecl", ptr %t161, i32 0, i32 1
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t168 = icmp sgt i64 %t166, 0
  br i1 %t168, label %bb20, label %bb21
bb20:
  %t170 = load ptr, ptr %l3, !tbaa !29
  %t172 = getelementptr %"compiler/ast:TypeDecl", ptr %t170, i32 0, i32 1
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  store { i64, ptr } %t173, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  store i64 %t177, ptr %l9, !tbaa !24
  br label %bb22
bb21:
  br label %bb37
bb22:
  %t179 = load i64, ptr %l8, !tbaa !24
  %t180 = load i64, ptr %l9, !tbaa !24
  %t183 = icmp slt i64 %t179, %t180
  %t185 = xor i1 %t183, true
  br i1 %t185, label %bb23, label %bb24
bb23:
  br label %bb36
bb24:
  br label %bb25
bb25:
  %t187 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t187, ptr %l112, !tbaa !27
  %t188 = load i64, ptr %l8, !tbaa !24
  %t190 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr ptr, ptr %t191, i64 %t188
  %t193 = load ptr, ptr %t192, !tbaa !39
  store ptr %t193, ptr %l10, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l1, !tbaa !24
  %t197 = load ptr, ptr %l10, !tbaa !29
  %t199 = getelementptr %"compiler/ast:TypeParam", ptr %t197, i32 0, i32 1
  %t200 = load i32, ptr %t199, !tbaa !23
  %t204 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesType(ptr %v0, ptr %t195, i64 %t196, i32 %t200)
  store i1 %t204, ptr %l119
  br label %bb26
bb26:
  %t205 = load i1, ptr %l119, !tbaa !21
  br i1 %t205, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l120, !tbaa !29
  %t207 = load ptr, ptr %l10, !tbaa !29
  %t209 = getelementptr %"compiler/ast:TypeParam", ptr %t207, i32 0, i32 0
  %t210 = getelementptr %"compiler/source:Span", ptr %t209, i32 0, i32 0
  %t211 = load i32, ptr %t210, !tbaa !23
  store i32 %t211, ptr %l122, !tbaa !23
  %t212 = load ptr, ptr %l10, !tbaa !29
  %t214 = getelementptr %"compiler/ast:TypeParam", ptr %t212, i32 0, i32 0
  %t215 = getelementptr %"compiler/source:Span", ptr %t214, i32 0, i32 0
  %t216 = load i32, ptr %t215, !tbaa !23
  store i32 %t216, ptr %l124, !tbaa !23
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l10, !tbaa !29
  %t220 = getelementptr %"compiler/ast:TypeParam", ptr %t218, i32 0, i32 1
  %t221 = load i32, ptr %t220, !tbaa !23
  %t224 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t217, i32 %t221)
  store { i64, ptr } %t224, ptr %l128
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t225 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  %t228 = trunc i64 %t226 to i32
  %t229 = load i32, ptr %l124, !tbaa !23
  %t231 = add i32 %t229, %t228
  %t232 = load i32, ptr %l122, !tbaa !23
  %t234 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t232, i32 %t231)
  store %"compiler/source:Span" %t234, ptr %l132
  br label %bb30
bb30:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load ptr, ptr %l10, !tbaa !29
  %t238 = getelementptr %"compiler/ast:TypeParam", ptr %t236, i32 0, i32 1
  %t239 = load i32, ptr %t238, !tbaa !23
  %t242 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s6, ptr %t235, i32 %t239)
  store { i64, ptr } %t242, ptr %l136
  br label %bb31
bb31:
  %t243 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  %t245 = extractvalue { i64, ptr } %t243, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNamesType(ptr %s6, ptr %s6, { i64, ptr } %t249)
  store %"compiler/diagmsg:Msg" %t251, ptr %l138
  br label %bb32
bb32:
  %t252 = load ptr, ptr %l120, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l132
  %t254 = load %"compiler/diagmsg:Msg", ptr %l138
  %t255 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t252, %"compiler/source:Span" %t253, %"compiler/diagmsg:Msg" %t254)
  store i64 %t255, ptr %l139
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t256 = load i64, ptr %l8, !tbaa !24
  %t258 = add i64 %t256, 1
  store i64 %t258, ptr %l8, !tbaa !24
  br label %bb22
bb36:
  br label %bb37
bb37:
  %t260 = load ptr, ptr %l3, !tbaa !29
  %t262 = getelementptr %"compiler/ast:TypeDecl", ptr %t260, i32 0, i32 1
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t267 = icmp sgt i64 %t265, 0
  br i1 %t267, label %bb38, label %bb39
bb38:
  %t269 = load ptr, ptr %l3, !tbaa !29
  %t271 = getelementptr %"compiler/ast:TypeDecl", ptr %t269, i32 0, i32 1
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  store { i64, ptr } %t272, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t274 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t274, 0
  store i64 %t276, ptr %l13, !tbaa !24
  br label %bb40
bb39:
  br label %bb82
bb40:
  %t278 = load i64, ptr %l12, !tbaa !24
  %t279 = load i64, ptr %l13, !tbaa !24
  %t282 = icmp slt i64 %t278, %t279
  %t284 = xor i1 %t282, true
  br i1 %t284, label %bb41, label %bb42
bb41:
  br label %bb81
bb42:
  br label %bb43
bb43:
  %t286 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t286, ptr %l154, !tbaa !27
  %t287 = load i64, ptr %l12, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr ptr, ptr %t290, i64 %t287
  %t292 = load ptr, ptr %t291, !tbaa !39
  store ptr %t292, ptr %l14, !tbaa !29
  %t294 = load ptr, ptr %l14, !tbaa !29
  %t296 = getelementptr %"compiler/ast:TypeParam", ptr %t294, i32 0, i32 2
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = icmp eq ptr %t297, null
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb44, label %bb45
bb44:
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l162, !tbaa !29
  %t304 = load i64, ptr %l1, !tbaa !24
  store i64 %t304, ptr %l163, !tbaa !24
  %t305 = load ptr, ptr %l14, !tbaa !29
  %t307 = getelementptr %"compiler/ast:TypeParam", ptr %t305, i32 0, i32 2
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = icmp eq ptr %t308, null
  br i1 %t310, label %bb46, label %bb47
bb45:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb50
bb46:
  call void @__olang_check_failed(ptr @olang_loc_42d76eb8aa19d24d_a6d8d644d4fa1309)
  unreachable
bb47:
  br label %bb48
bb48:
  %t312 = load ptr, ptr %l14, !tbaa !29
  %t314 = getelementptr %"compiler/ast:TypeParam", ptr %t312, i32 0, i32 2
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t316 = load ptr, ptr %l162, !tbaa !29
  %t317 = load i64, ptr %l163, !tbaa !24
  %t319 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %t316, i64 %t317, ptr %t315)
  store i1 %t319, ptr %l169
  br label %bb49
bb49:
  %t320 = load i1, ptr %l169, !tbaa !21
  %t321 = xor i1 %t320, true
  store i1 %t321, ptr %l161, !tbaa !21
  br label %bb50
bb50:
  %t323 = load i1, ptr %l161, !tbaa !21
  br i1 %t323, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l171, !tbaa !29
  %t325 = load ptr, ptr %l14, !tbaa !29
  %t327 = getelementptr %"compiler/ast:TypeParam", ptr %t325, i32 0, i32 2
  %t328 = load ptr, ptr %t327, !tbaa !29
  %t330 = icmp eq ptr %t328, null
  br i1 %t330, label %bb53, label %bb54
bb52:
  br label %bb64
bb53:
  call void @__olang_check_failed(ptr @olang_loc_42d76eb8aa19d24d_a6d8d644d4fa1309)
  unreachable
bb54:
  br label %bb55
bb55:
  %t332 = load ptr, ptr %l14, !tbaa !29
  %t334 = getelementptr %"compiler/ast:TypeParam", ptr %t332, i32 0, i32 2
  %t335 = load ptr, ptr %t334, !tbaa !29
  %t337 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t335)
  store %"compiler/source:Span" %t337, ptr %l177
  br label %bb56
bb56:
  %t338 = load ptr, ptr %l0, !tbaa !29
  store ptr %t338, ptr %l178, !tbaa !29
  %t339 = load ptr, ptr %l14, !tbaa !29
  %t341 = getelementptr %"compiler/ast:TypeParam", ptr %t339, i32 0, i32 2
  %t342 = load ptr, ptr %t341, !tbaa !29
  %t344 = icmp eq ptr %t342, null
  br i1 %t344, label %bb57, label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_42d76eb8aa19d24d_a6d8d644d4fa1309)
  unreachable
bb58:
  br label %bb59
bb59:
  %t346 = load ptr, ptr %l14, !tbaa !29
  %t348 = getelementptr %"compiler/ast:TypeParam", ptr %t346, i32 0, i32 2
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t351 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t349)
  store %"compiler/source:Span" %t351, ptr %l184
  br label %bb60
bb60:
  %t352 = load ptr, ptr %l178, !tbaa !29
  %t353 = load %"compiler/source:Span", ptr %l184
  %t354 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t352, %"compiler/source:Span" %t353)
  store { i64, ptr } %t354, ptr %l185
  br label %bb61
bb61:
  %t355 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t356 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %s11, { i64, ptr } %t355)
  store %"compiler/diagmsg:Msg" %t356, ptr %l186
  br label %bb62
bb62:
  %t357 = load ptr, ptr %l171, !tbaa !29
  %t358 = load %"compiler/source:Span", ptr %l177
  %t359 = load %"compiler/diagmsg:Msg", ptr %l186
  %t360 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s11, ptr %t357, %"compiler/source:Span" %t358, %"compiler/diagmsg:Msg" %t359)
  store i64 %t360, ptr %l187
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb64
bb64:
  %t361 = load ptr, ptr %l14, !tbaa !29
  %t363 = getelementptr %"compiler/ast:TypeParam", ptr %t361, i32 0, i32 3
  %t364 = load { i64, ptr }, ptr %t363, !tbaa !27
  store { i64, ptr } %t364, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t366 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t368 = extractvalue { i64, ptr } %t366, 0
  store i64 %t368, ptr %l17, !tbaa !24
  br label %bb65
bb65:
  %t370 = load i64, ptr %l16, !tbaa !24
  %t371 = load i64, ptr %l17, !tbaa !24
  %t374 = icmp slt i64 %t370, %t371
  %t376 = xor i1 %t374, true
  br i1 %t376, label %bb66, label %bb67
bb66:
  br label %bb79
bb67:
  br label %bb68
bb68:
  %t378 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t378, ptr %l196, !tbaa !27
  %t379 = load i64, ptr %l16, !tbaa !24
  %t381 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr ptr, ptr %t382, i64 %t379
  %t384 = load ptr, ptr %t383, !tbaa !39
  store ptr %t384, ptr %l18, !tbaa !29
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load i64, ptr %l1, !tbaa !24
  %t388 = load ptr, ptr %l18, !tbaa !29
  %t392 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %t386, i64 %t387, ptr %t388)
  store i1 %t392, ptr %l202
  br label %bb69
bb69:
  %t393 = load i1, ptr %l202, !tbaa !21
  %t394 = xor i1 %t393, true
  br i1 %t394, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s14
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l204, !tbaa !29
  %t397 = load ptr, ptr %l18, !tbaa !29
  %t399 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t397)
  store %"compiler/source:Span" %t399, ptr %l206
  br label %bb72
bb71:
  br label %bb77
bb72:
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l207, !tbaa !29
  %t401 = load ptr, ptr %l18, !tbaa !29
  %t403 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t401)
  store %"compiler/source:Span" %t403, ptr %l209
  br label %bb73
bb73:
  %t404 = load ptr, ptr %l207, !tbaa !29
  %t405 = load %"compiler/source:Span", ptr %l209
  %t406 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t404, %"compiler/source:Span" %t405)
  store { i64, ptr } %t406, ptr %l210
  br label %bb74
bb74:
  %t407 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t408 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %s14, { i64, ptr } %t407)
  store %"compiler/diagmsg:Msg" %t408, ptr %l211
  br label %bb75
bb75:
  %t409 = load ptr, ptr %l204, !tbaa !29
  %t410 = load %"compiler/source:Span", ptr %l206
  %t411 = load %"compiler/diagmsg:Msg", ptr %l211
  %t412 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s14, ptr %t409, %"compiler/source:Span" %t410, %"compiler/diagmsg:Msg" %t411)
  store i64 %t412, ptr %l212
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s14)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t413 = load i64, ptr %l16, !tbaa !24
  %t415 = add i64 %t413, 1
  store i64 %t415, ptr %l16, !tbaa !24
  br label %bb65
bb79:
  br label %bb80
bb80:
  %t417 = load i64, ptr %l12, !tbaa !24
  %t419 = add i64 %t417, 1
  store i64 %t419, ptr %l12, !tbaa !24
  br label %bb40
bb81:
  br label %bb82
bb82:
  %t421 = load ptr, ptr %l3, !tbaa !29
  %t423 = getelementptr %"compiler/ast:TypeDecl", ptr %t421, i32 0, i32 1
  %t424 = load { i64, ptr }, ptr %t423, !tbaa !27
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t428 = icmp sgt i64 %t426, 0
  br i1 %t428, label %bb83, label %bb84
bb83:
  %t430 = load ptr, ptr %l3, !tbaa !29
  %t432 = getelementptr %"compiler/ast:TypeDecl", ptr %t430, i32 0, i32 3
  %t433 = load ptr, ptr %t432, !tbaa !29
  store ptr %t433, ptr %l223, !tbaa !29
  store i1 false, ptr %l224, !tbaa !21
  %t436 = load ptr, ptr %l223, !tbaa !29
  %t437 = icmp ne ptr %t436, null
  br i1 %t437, label %bb85, label %bb86
bb84:
  br label %bb98
bb85:
  %t439 = load ptr, ptr %l223, !tbaa !29
  %t440 = load i64, ptr %t439, !range !{i64 0, i64 5}
  %t442 = icmp eq i64 %t440, 3
  store i1 %t442, ptr %l224, !tbaa !21
  br label %bb86
bb86:
  %t443 = load i1, ptr %l224, !tbaa !21
  br i1 %t443, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb92
bb89:
  store %olang.scope zeroinitializer, ptr %s18
  %t444 = load ptr, ptr %l0, !tbaa !29
  store ptr %t444, ptr %l227, !tbaa !29
  %t445 = load ptr, ptr %l3, !tbaa !29
  %t447 = getelementptr %"compiler/ast:TypeDecl", ptr %t445, i32 0, i32 1
  %t448 = load { i64, ptr }, ptr %t447, !tbaa !27
  store { i64, ptr } %t448, ptr %l229, !tbaa !27
  %t449 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !27
  %t451 = getelementptr ptr, ptr %t450, i64 0
  %t452 = load ptr, ptr %t451, !tbaa !39
  %t454 = getelementptr %"compiler/ast:TypeParam", ptr %t452, i32 0, i32 0
  %t455 = load %"compiler/source:Span", ptr %t454
  store %"compiler/source:Span" %t455, ptr %l231
  %t456 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotStruct(ptr %s18)
  store %"compiler/diagmsg:Msg" %t456, ptr %l232
  br label %bb90
bb90:
  %t457 = load ptr, ptr %l227, !tbaa !29
  %t458 = load %"compiler/source:Span", ptr %l231
  %t459 = load %"compiler/diagmsg:Msg", ptr %l232
  %t460 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s18, ptr %t457, %"compiler/source:Span" %t458, %"compiler/diagmsg:Msg" %t459)
  store i64 %t460, ptr %l233
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s18)
  br label %bb97
bb92:
  br i1 true, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_e4a3554ab68c2525_45e0e0bdd3564951)
  unreachable
bb97:
  br label %bb98
bb98:
  %t461 = load ptr, ptr %l3, !tbaa !29
  %t463 = getelementptr %"compiler/ast:TypeDecl", ptr %t461, i32 0, i32 3
  %t464 = load ptr, ptr %t463, !tbaa !29
  store ptr %t464, ptr %l20, !tbaa !29
  %t466 = load ptr, ptr %l20, !tbaa !29
  store ptr %t466, ptr %l236, !tbaa !29
  store i1 false, ptr %l237, !tbaa !21
  %t467 = load ptr, ptr %l236, !tbaa !29
  %t468 = icmp ne ptr %t467, null
  br i1 %t468, label %bb99, label %bb100
bb99:
  %t470 = load ptr, ptr %l236, !tbaa !29
  %t471 = load i64, ptr %t470, !range !{i64 0, i64 5}
  %t473 = icmp eq i64 %t471, 0
  store i1 %t473, ptr %l237, !tbaa !21
  br label %bb100
bb100:
  %t474 = load i1, ptr %l237, !tbaa !21
  br i1 %t474, label %bb101, label %bb102
bb101:
  %t475 = load ptr, ptr %l20, !tbaa !29
  %t477 = getelementptr { i64, [6 x i64] }, ptr %t475, i32 0, i32 1
  %t478 = getelementptr { ptr }, ptr %t477, i32 0, i32 0
  %t479 = load ptr, ptr %t478
  store ptr %t479, ptr %l21, !tbaa !29
  br label %bb103
bb102:
  br label %bb112
bb103:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load ptr, ptr %l3, !tbaa !29
  %t483 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorVarRules(ptr %v0, ptr %v1, ptr %v1, ptr %t481, ptr %t482, ptr %t483)
  br label %bb104
bb104:
  %t487 = load ptr, ptr %l21, !tbaa !29
  %t489 = getelementptr %"compiler/ast:StructBody", ptr %t487, i32 0, i32 0
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  store { i64, ptr } %t490, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t492 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t494 = extractvalue { i64, ptr } %t492, 0
  store i64 %t494, ptr %l24, !tbaa !24
  br label %bb105
bb105:
  %t496 = load i64, ptr %l23, !tbaa !24
  %t497 = load i64, ptr %l24, !tbaa !24
  %t500 = icmp slt i64 %t496, %t497
  %t502 = xor i1 %t500, true
  br i1 %t502, label %bb106, label %bb107
bb106:
  br label %bb111
bb107:
  br label %bb108
bb108:
  %t504 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t504, ptr %l253, !tbaa !27
  %t505 = load i64, ptr %l23, !tbaa !24
  %t507 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t508 = load ptr, ptr %t507, !tbaa !27
  %t509 = getelementptr ptr, ptr %t508, i64 %t505
  %t510 = load ptr, ptr %t509, !tbaa !39
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t515 = getelementptr %"compiler/ast:Param", ptr %t510, i32 0, i32 2
  %t516 = load ptr, ptr %t515, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edtorWritten(ptr %v0, ptr %v1, ptr %t512, ptr %t516)
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t519 = load i64, ptr %l23, !tbaa !24
  %t521 = add i64 %t519, 1
  store i64 %t521, ptr %l23, !tbaa !24
  br label %bb105
bb111:
  br label %bb141
bb112:
  %t523 = load ptr, ptr %l20, !tbaa !29
  store ptr %t523, ptr %l261, !tbaa !29
  store i1 false, ptr %l262, !tbaa !21
  %t524 = load ptr, ptr %l261, !tbaa !29
  %t525 = icmp ne ptr %t524, null
  br i1 %t525, label %bb113, label %bb114
bb113:
  %t527 = load ptr, ptr %l261, !tbaa !29
  %t528 = load i64, ptr %t527, !range !{i64 0, i64 5}
  %t530 = icmp eq i64 %t528, 1
  store i1 %t530, ptr %l262, !tbaa !21
  br label %bb114
bb114:
  %t531 = load i1, ptr %l262, !tbaa !21
  br i1 %t531, label %bb115, label %bb116
bb115:
  %t532 = load ptr, ptr %l20, !tbaa !29
  %t534 = getelementptr { i64, [6 x i64] }, ptr %t532, i32 0, i32 1
  %t535 = getelementptr { { i64, ptr }, ptr }, ptr %t534, i32 0, i32 0
  %t536 = load { i64, ptr }, ptr %t535
  store { i64, ptr } %t536, ptr %l26, !tbaa !27
  br label %bb117
bb116:
  br label %bb136
bb117:
  %t538 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t538, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t540 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t540, 0
  store i64 %t542, ptr %l29, !tbaa !24
  br label %bb118
bb118:
  %t544 = load i64, ptr %l28, !tbaa !24
  %t545 = load i64, ptr %l29, !tbaa !24
  %t548 = icmp slt i64 %t544, %t545
  %t550 = xor i1 %t548, true
  br i1 %t550, label %bb119, label %bb120
bb119:
  br label %bb133
bb120:
  br label %bb121
bb121:
  %t552 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t552, ptr %l274, !tbaa !27
  %t553 = load i64, ptr %l28, !tbaa !24
  %t555 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !27
  %t557 = getelementptr ptr, ptr %t556, i64 %t553
  %t558 = load ptr, ptr %t557, !tbaa !39
  store ptr %t558, ptr %l30, !tbaa !29
  %t560 = load ptr, ptr %l30, !tbaa !29
  %t562 = getelementptr %"compiler/ast:CaseDecl", ptr %t560, i32 0, i32 2
  %t563 = load { i64, ptr }, ptr %t562, !tbaa !27
  %t565 = extractvalue { i64, ptr } %t563, 0
  %t567 = icmp eq i64 %t565, 0
  br i1 %t567, label %bb122, label %bb123
bb122:
  br label %bb132
bb123:
  br label %bb124
bb124:
  %t569 = load ptr, ptr %l30, !tbaa !29
  %t571 = getelementptr %"compiler/ast:CaseDecl", ptr %t569, i32 0, i32 2
  %t572 = load { i64, ptr }, ptr %t571, !tbaa !27
  store { i64, ptr } %t572, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t574 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t576 = extractvalue { i64, ptr } %t574, 0
  store i64 %t576, ptr %l33, !tbaa !24
  br label %bb125
bb125:
  %t578 = load i64, ptr %l32, !tbaa !24
  %t579 = load i64, ptr %l33, !tbaa !24
  %t582 = icmp slt i64 %t578, %t579
  %t584 = xor i1 %t582, true
  br i1 %t584, label %bb126, label %bb127
bb126:
  br label %bb131
bb127:
  br label %bb128
bb128:
  %t586 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t586, ptr %l289, !tbaa !27
  %t587 = load i64, ptr %l32, !tbaa !24
  %t589 = getelementptr { i64, ptr }, ptr %l289, i32 0, i32 1
  %t590 = load ptr, ptr %t589, !tbaa !27
  %t591 = getelementptr ptr, ptr %t590, i64 %t587
  %t592 = load ptr, ptr %t591, !tbaa !39
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t596 = getelementptr %"compiler/check:Checker", ptr %t594, i32 0, i32 97
  store i1 true, ptr %t596, !tbaa !21
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t600 = getelementptr %"compiler/ast:Param", ptr %t592, i32 0, i32 2
  %t601 = load ptr, ptr %t600, !tbaa !29
  %t604 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t597, ptr %t601)
  store i1 %t604, ptr %l296
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t605 = load i64, ptr %l32, !tbaa !24
  %t607 = add i64 %t605, 1
  store i64 %t607, ptr %l32, !tbaa !24
  br label %bb125
bb131:
  br label %bb132
bb132:
  %t609 = load i64, ptr %l28, !tbaa !24
  %t611 = add i64 %t609, 1
  store i64 %t611, ptr %l28, !tbaa !24
  br label %bb118
bb133:
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t615 = getelementptr %"compiler/check:Checker", ptr %t613, i32 0, i32 53
  store ptr %t615, ptr %l302, !tbaa !29
  %t616 = load i32, ptr %l5, !tbaa !23
  %t618 = sext i32 %t616 to i64
  store i64 %t618, ptr %l304, !tbaa !24
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t620 = load i32, ptr %l5, !tbaa !23
  %t623 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawTable(ptr %v0, ptr %v0, ptr %t619, i32 %t620, i1 true)
  store ptr %t623, ptr %l307
  br label %bb134
bb134:
  %t624 = load ptr, ptr %l302, !tbaa !29
  %t625 = load i64, ptr %l304, !tbaa !24
  %t626 = load ptr, ptr %l307, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_Hfe32448d245bb62a962210add151a121(ptr %v0, ptr %v0, ptr %t624, i64 %t625, ptr %t626)
  br label %bb135
bb135:
  br label %bb141
bb136:
  br i1 true, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb141
bb140:
  call void @__olang_check_failed(ptr @olang_loc_ae3b040bf00e496e_c2dc96e6bf91aeba)
  unreachable
bb141:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t628 = load %"compiler/source:Span", ptr %l2
  %t631 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t627, %"compiler/source:Span" %t628)
  store { i64, ptr } %t631, ptr %l310
  br label %bb142
bb142:
  %t632 = load { i64, ptr }, ptr %l310, !tbaa !27
  store { i64, ptr } %t632, ptr %l35, !tbaa !27
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load ptr, ptr %l3, !tbaa !29
  %t636 = getelementptr %"compiler/ast:TypeDecl", ptr %t634, i32 0, i32 0
  %t637 = load i32, ptr %t636, !tbaa !23
  %t640 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t633, i32 %t637)
  store { i64, ptr } %t640, ptr %l314
  br label %bb143
bb143:
  %t641 = load { i64, ptr }, ptr %l314, !tbaa !27
  store { i64, ptr } %t641, ptr %l36, !tbaa !27
  %t642 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t643 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t646 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v0, { i64, ptr } %t642, { i64, ptr } %t643)
  %t647 = extractvalue { i32, i64 } %t646, 1
  %t648 = extractvalue { i32, i64 } %t646, 0
  store i32 %t648, ptr %l319
  %t649 = icmp ne i32 %t648, 0
  br i1 %t649, label %bb145, label %ok.650, !prof !99
ok.650:
  store i64 %t647, ptr %l318
  br label %bb144
bb144:
  %t651 = load i64, ptr %l318, !tbaa !24
  store i64 %t651, ptr %l315, !tbaa !24
  br label %bb147
bb145:
  br label %bb146
bb146:
  store i64 0, ptr %l315, !tbaa !24
  br label %bb147
bb147:
  %t652 = load i64, ptr %l315, !tbaa !24
  store i64 %t652, ptr %l37, !tbaa !24
  %t653 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t654 = load i32, ptr %t653, !tbaa !23
  %t655 = load i64, ptr %l37, !tbaa !24
  %t657 = trunc i64 %t655 to i32
  %t660 = add i32 %t654, %t657
  %t661 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t662 = load i32, ptr %t661, !tbaa !23
  %t663 = load i64, ptr %l37, !tbaa !24
  %t664 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t666 = extractvalue { i64, ptr } %t664, 0
  %t669 = add i64 %t663, %t666
  %t671 = trunc i64 %t669 to i32
  %t674 = add i32 %t662, %t671
  %t677 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t660, i32 %t674)
  store %"compiler/source:Span" %t677, ptr %l331
  br label %bb148
bb148:
  %t678 = load %"compiler/source:Span", ptr %l331
  store %"compiler/source:Span" %t678, ptr %l38
  store i1 false, ptr %l39, !tbaa !21
  %t679 = load ptr, ptr %l3, !tbaa !29
  %t681 = getelementptr %"compiler/ast:TypeDecl", ptr %t679, i32 0, i32 3
  %t682 = load ptr, ptr %t681, !tbaa !29
  store ptr %t682, ptr %l40, !tbaa !29
  %t684 = load ptr, ptr %l40, !tbaa !29
  store ptr %t684, ptr %l334, !tbaa !29
  store i1 false, ptr %l335, !tbaa !21
  %t685 = load ptr, ptr %l334, !tbaa !29
  %t686 = icmp ne ptr %t685, null
  br i1 %t686, label %bb149, label %bb150
bb149:
  %t688 = load ptr, ptr %l334, !tbaa !29
  %t689 = load i64, ptr %t688, !range !{i64 0, i64 5}
  %t691 = icmp eq i64 %t689, 3
  store i1 %t691, ptr %l335, !tbaa !21
  br label %bb150
bb150:
  %t692 = load i1, ptr %l335, !tbaa !21
  br i1 %t692, label %bb151, label %bb152
bb151:
  %t693 = load ptr, ptr %l40, !tbaa !29
  %t695 = getelementptr { i64, [6 x i64] }, ptr %t693, i32 0, i32 1
  %t696 = getelementptr { ptr, ptr }, ptr %t695, i32 0, i32 0
  %t697 = load ptr, ptr %t696
  store ptr %t697, ptr %l41, !tbaa !29
  br label %bb153
bb152:
  br label %bb187
bb153:
  store i1 true, ptr %l39, !tbaa !21
  %t699 = load ptr, ptr %l0, !tbaa !29
  %t701 = getelementptr %"compiler/check:Checker", ptr %t699, i32 0, i32 1
  %t702 = load ptr, ptr %t701, !tbaa !29
  %t703 = load ptr, ptr %l6, !tbaa !29
  %t705 = getelementptr %"compiler/check:frame", ptr %t703, i32 0, i32 4
  %t706 = load ptr, ptr %l41, !tbaa !29
  %t711 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t702, ptr %t705, ptr %t706)
  store i32 %t711, ptr %l346
  br label %bb154
bb154:
  %t712 = load i32, ptr %l346, !tbaa !23
  store i32 %t712, ptr %l42, !tbaa !23
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t714 = load i32, ptr %l42, !tbaa !23
  %t717 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t713, i32 %t714)
  store i1 %t717, ptr %l349
  br label %bb155
bb155:
  %t718 = load i1, ptr %l349, !tbaa !21
  br i1 %t718, label %bb156, label %bb157
bb156:
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t720 = load i32, ptr %l42, !tbaa !23
  %t723 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t719, i32 %t720)
  store i32 %t723, ptr %l352
  br label %bb158
bb157:
  %t724 = load ptr, ptr %l0, !tbaa !29
  %t726 = getelementptr %"compiler/check:Checker", ptr %t724, i32 0, i32 1
  %t727 = load ptr, ptr %t726, !tbaa !29
  %t729 = getelementptr %"compiler/generic:Program", ptr %t727, i32 0, i32 2
  %t730 = load i32, ptr %l42, !tbaa !23
  %t733 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t729, i32 %t730)
  store i32 %t733, ptr %l376
  br label %bb170
bb158:
  %t734 = load i32, ptr %l352, !range !{i32 0, i32 6}
  %t737 = trunc i64 4 to i32
  %t738 = icmp eq i32 %t734, %t737
  %t740 = xor i1 %t738, true
  br i1 %t740, label %bb159, label %bb160
bb159:
  store i1 true, ptr %l356, !tbaa !21
  br label %bb162
bb160:
  %t742 = load ptr, ptr %l0, !tbaa !29
  %t744 = getelementptr %"compiler/check:Checker", ptr %t742, i32 0, i32 1
  %t745 = load ptr, ptr %t744, !tbaa !29
  %t747 = getelementptr %"compiler/generic:Program", ptr %t745, i32 0, i32 2
  %t748 = load i32, ptr %l42, !tbaa !23
  %t751 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t747, i32 %t748)
  store i32 %t751, ptr %l361
  br label %bb161
bb161:
  %t752 = load i32, ptr %l361, !tbaa !23
  %t753 = icmp ne i32 %t752, 0
  store i1 %t753, ptr %l356, !tbaa !21
  br label %bb162
bb162:
  %t755 = load i1, ptr %l356, !tbaa !21
  br i1 %t755, label %bb163, label %bb164
bb163:
  store %olang.scope zeroinitializer, ptr %s35
  %t756 = load ptr, ptr %l0, !tbaa !29
  store ptr %t756, ptr %l363, !tbaa !29
  %t757 = load ptr, ptr %l41, !tbaa !29
  %t759 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t757)
  store %"compiler/source:Span" %t759, ptr %l365
  br label %bb165
bb164:
  br label %bb169
bb165:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t761 = load i32, ptr %l42, !tbaa !23
  %t764 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s35, ptr %t760, i32 %t761)
  store { i64, ptr } %t764, ptr %l368
  br label %bb166
bb166:
  %t765 = load { i64, ptr }, ptr %l368, !tbaa !27
  %t766 = extractvalue { i64, ptr } %t765, 0
  %t767 = extractvalue { i64, ptr } %t765, 1
  %t768 = mul i64 %t766, 1
  %t769 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t768)
  call void @llvm.memcpy.p0.p0.i64(ptr %t769, ptr %t767, i64 %t768, i1 false)
  %t770 = insertvalue { i64, ptr } undef, i64 %t766, 0
  %t771 = insertvalue { i64, ptr } %t770, ptr %t769, 1
  %t773 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclaredOverAggregate(ptr %s35, ptr %s35, { i64, ptr } %t771)
  store %"compiler/diagmsg:Msg" %t773, ptr %l370
  br label %bb167
bb167:
  %t774 = load ptr, ptr %l363, !tbaa !29
  %t775 = load %"compiler/source:Span", ptr %l365
  %t776 = load %"compiler/diagmsg:Msg", ptr %l370
  %t777 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s35, ptr %t774, %"compiler/source:Span" %t775, %"compiler/diagmsg:Msg" %t776)
  store i64 %t777, ptr %l371
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s35)
  br label %bb169
bb169:
  br label %bb186
bb170:
  %t778 = load i32, ptr %l376, !range !{i32 0, i32 33}
  %t780 = trunc i64 19 to i32
  %t781 = icmp eq i32 %t778, %t780
  br i1 %t781, label %bb171, label %bb172
bb171:
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t784 = load i32, ptr %l5, !tbaa !23
  %t785 = load i32, ptr %l42, !tbaa !23
  %t789 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsSelf(ptr %v0, ptr %t783, i32 %t784, i32 %t785)
  store i1 %t789, ptr %l383
  br label %bb173
bb172:
  store i1 false, ptr %l379, !tbaa !21
  br label %bb174
bb173:
  %t790 = load i1, ptr %l383, !tbaa !21
  store i1 %t790, ptr %l379, !tbaa !21
  br label %bb174
bb174:
  %t791 = load i1, ptr %l379, !tbaa !21
  br i1 %t791, label %bb175, label %bb176
bb175:
  store %olang.scope zeroinitializer, ptr %s37
  %t792 = load ptr, ptr %l0, !tbaa !29
  store ptr %t792, ptr %l384, !tbaa !29
  %t793 = load %"compiler/source:Span", ptr %l38
  store %"compiler/source:Span" %t793, ptr %l385
  %t794 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t794, ptr %l386, !tbaa !27
  %t795 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t795, ptr %l387, !tbaa !27
  %t796 = load ptr, ptr %l0, !tbaa !29
  %t797 = load i32, ptr %l42, !tbaa !23
  %t800 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s37, ptr %t796, i32 %t797)
  store { i64, ptr } %t800, ptr %l390
  br label %bb177
bb176:
  %t801 = load ptr, ptr %l0, !tbaa !29
  %t803 = getelementptr %"compiler/check:Checker", ptr %t801, i32 0, i32 1
  %t804 = load ptr, ptr %t803, !tbaa !29
  %t806 = getelementptr %"compiler/generic:Program", ptr %t804, i32 0, i32 2
  %t807 = load i32, ptr %l42, !tbaa !23
  %t810 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t806, i32 %t807)
  store i32 %t810, ptr %l398
  br label %bb180
bb177:
  %t811 = load { i64, ptr }, ptr %l390, !tbaa !27
  %t812 = extractvalue { i64, ptr } %t811, 0
  %t813 = extractvalue { i64, ptr } %t811, 1
  %t814 = mul i64 %t812, 1
  %t815 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t814)
  call void @llvm.memcpy.p0.p0.i64(ptr %t815, ptr %t813, i64 %t814, i1 false)
  %t816 = insertvalue { i64, ptr } undef, i64 %t812, 0
  %t817 = insertvalue { i64, ptr } %t816, ptr %t815, 1
  %t818 = load { i64, ptr }, ptr %l386, !tbaa !27
  %t819 = load { i64, ptr }, ptr %l387, !tbaa !27
  %t821 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayTypeHoldsItself(ptr %v0, ptr %v0, ptr %s37, ptr %s37, { i64, ptr } %t818, { i64, ptr } %t819, { i64, ptr } %t817)
  store %"compiler/diagmsg:Msg" %t821, ptr %l392
  br label %bb178
bb178:
  %t822 = load ptr, ptr %l384, !tbaa !29
  %t823 = load %"compiler/source:Span", ptr %l385
  %t824 = load %"compiler/diagmsg:Msg", ptr %l392
  %t825 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s37, ptr %t822, %"compiler/source:Span" %t823, %"compiler/diagmsg:Msg" %t824)
  store i64 %t825, ptr %l393
  br label %bb179
bb179:
  call void @__olang_scope_close(ptr %s37)
  br label %bb185
bb180:
  %t826 = load i32, ptr %l398, !range !{i32 0, i32 33}
  %t828 = trunc i64 21 to i32
  %t829 = icmp eq i32 %t826, %t828
  br i1 %t829, label %bb181, label %bb182
bb181:
  %t831 = load ptr, ptr %l0, !tbaa !29
  %t832 = load ptr, ptr %l41, !tbaa !29
  %t836 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t831, ptr %t832)
  store i1 %t836, ptr %l404
  br label %bb183
bb182:
  br label %bb184
bb183:
  br label %bb184
bb184:
  br label %bb185
bb185:
  br label %bb186
bb186:
  br label %bb192
bb187:
  br i1 true, label %bb188, label %bb189
bb188:
  br label %bb190
bb189:
  br label %bb191
bb190:
  br label %bb192
bb191:
  call void @__olang_check_failed(ptr @olang_loc_23ed2e0ac54fea2f_24addeed96b3b3b)
  unreachable
bb192:
  %t837 = load ptr, ptr %l3, !tbaa !29
  %t839 = getelementptr %"compiler/ast:TypeDecl", ptr %t837, i32 0, i32 3
  %t840 = load ptr, ptr %t839, !tbaa !29
  store ptr %t840, ptr %l44, !tbaa !29
  %t842 = load ptr, ptr %l44, !tbaa !29
  store ptr %t842, ptr %l407, !tbaa !29
  store i1 false, ptr %l408, !tbaa !21
  %t843 = load ptr, ptr %l407, !tbaa !29
  %t844 = icmp ne ptr %t843, null
  br i1 %t844, label %bb193, label %bb194
bb193:
  %t846 = load ptr, ptr %l407, !tbaa !29
  %t847 = load i64, ptr %t846, !range !{i64 0, i64 5}
  %t849 = icmp eq i64 %t847, 0
  store i1 %t849, ptr %l408, !tbaa !21
  br label %bb194
bb194:
  %t850 = load i1, ptr %l408, !tbaa !21
  br i1 %t850, label %bb195, label %bb196
bb195:
  %t851 = load ptr, ptr %l44, !tbaa !29
  %t853 = getelementptr { i64, [6 x i64] }, ptr %t851, i32 0, i32 1
  %t854 = getelementptr { ptr }, ptr %t853, i32 0, i32 0
  %t855 = load ptr, ptr %t854
  store ptr %t855, ptr %l45, !tbaa !29
  br label %bb197
bb196:
  br label %bb235
bb197:
  store %olang.scope zeroinitializer, ptr %s41
  %t857 = load ptr, ptr %l0, !tbaa !29
  %t859 = getelementptr %"compiler/check:Checker", ptr %t857, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !29
  %t861 = load i32, ptr %l5, !tbaa !23
  %t864 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t860, i32 %t861)
  store i32 %t864, ptr %l416
  br label %bb198
bb198:
  %t865 = load i32, ptr %l416, !tbaa !23
  store i32 %t865, ptr %l46, !tbaa !23
  %t866 = load ptr, ptr %l0, !tbaa !29
  %t868 = getelementptr %"compiler/check:Checker", ptr %t866, i32 0, i32 1
  %t869 = load ptr, ptr %t868, !tbaa !29
  %t871 = getelementptr %"compiler/generic:Program", ptr %t869, i32 0, i32 2
  store ptr %t871, ptr %l419, !tbaa !29
  %t872 = load ptr, ptr %l0, !tbaa !29
  %t874 = getelementptr %"compiler/check:Checker", ptr %t872, i32 0, i32 1
  %t875 = load ptr, ptr %t874, !tbaa !29
  %t877 = getelementptr %"compiler/generic:Program", ptr %t875, i32 0, i32 2
  %t878 = load i32, ptr %l46, !tbaa !23
  %t881 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t877, i32 %t878)
  store i32 %t881, ptr %l424
  br label %bb199
bb199:
  %t882 = load ptr, ptr %l419, !tbaa !29
  %t883 = load i32, ptr %l424, !tbaa !23
  %t884 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s41, ptr %t882, i32 %t883)
  store { i64, ptr } %t884, ptr %l425
  br label %bb200
bb200:
  %t885 = load { i64, ptr }, ptr %l425, !tbaa !27
  %t886 = extractvalue { i64, ptr } %t885, 0
  %t888 = icmp eq i64 %t886, 0
  br i1 %t888, label %bb201, label %bb202
bb201:
  %t890 = load ptr, ptr %l0, !tbaa !29
  %t892 = getelementptr %"compiler/check:Checker", ptr %t890, i32 0, i32 1
  %t893 = load ptr, ptr %t892, !tbaa !29
  %t894 = load i32, ptr %l46, !tbaa !23
  %t897 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t893, i32 %t894)
  store i1 %t897, ptr %l432
  br label %bb203
bb202:
  store i1 false, ptr %l428, !tbaa !21
  br label %bb204
bb203:
  %t898 = load i1, ptr %l432, !tbaa !21
  store i1 %t898, ptr %l428, !tbaa !21
  br label %bb204
bb204:
  %t899 = load i1, ptr %l428, !tbaa !21
  br i1 %t899, label %bb205, label %bb206
bb205:
  store %olang.scope zeroinitializer, ptr %s42
  %t900 = load ptr, ptr %l0, !tbaa !29
  %t902 = getelementptr %"compiler/check:Checker", ptr %t900, i32 0, i32 1
  %t903 = load ptr, ptr %t902, !tbaa !29
  %t905 = getelementptr %"compiler/generic:Program", ptr %t903, i32 0, i32 2
  store ptr %t905, ptr %l435, !tbaa !29
  %t906 = load ptr, ptr %l0, !tbaa !29
  %t908 = getelementptr %"compiler/check:Checker", ptr %t906, i32 0, i32 1
  %t909 = load ptr, ptr %t908, !tbaa !29
  %t911 = getelementptr %"compiler/generic:Program", ptr %t909, i32 0, i32 2
  %t912 = load i32, ptr %l46, !tbaa !23
  %t915 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t911, i32 %t912)
  store i32 %t915, ptr %l440
  br label %bb207
bb206:
  br label %bb234
bb207:
  %t916 = load ptr, ptr %l435, !tbaa !29
  %t917 = load i32, ptr %l440, !tbaa !23
  %t918 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t916, i32 %t917)
  store { i64, ptr } %t918, ptr %l441
  br label %bb208
bb208:
  %t919 = load { i64, ptr }, ptr %l441, !tbaa !27
  store { i64, ptr } %t919, ptr %l47, !tbaa !27
  %t920 = load ptr, ptr %l45, !tbaa !29
  %t922 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v1, ptr %s42, ptr %t920)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t922, ptr %l443
  br label %bb209
bb209:
  %t923 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l443
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t923, ptr %l48
  store i64 0, ptr %l49, !tbaa !24
  %t924 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t926 = extractvalue { i64, ptr } %t924, 0
  store i64 %t926, ptr %l50, !tbaa !24
  store i64 1, ptr %l51, !tbaa !24
  %t928 = load i64, ptr %l50, !tbaa !24
  %t929 = load i64, ptr %l49, !tbaa !24
  %t932 = icmp sgt i64 %t928, %t929
  br i1 %t932, label %bb210, label %bb211
bb210:
  %t934 = load i64, ptr %l51, !tbaa !24
  %t936 = icmp sgt i64 %t934, 0
  br i1 %t936, label %bb212, label %bb213
bb211:
  store i64 0, ptr %l449, !tbaa !24
  br label %bb215
bb212:
  %t938 = load i64, ptr %l50, !tbaa !24
  %t939 = load i64, ptr %l49, !tbaa !24
  %t942 = sub i64 %t938, %t939
  %t943 = load i64, ptr %l51, !tbaa !24
  %t946 = add i64 %t942, %t943
  %t948 = sub i64 %t946, 1
  %t949 = load i64, ptr %l51, !tbaa !24
  %t952 = sdiv i64 %t948, %t949
  store i64 %t952, ptr %l452, !tbaa !24
  br label %bb214
bb213:
  store i64 0, ptr %l452, !tbaa !24
  br label %bb214
bb214:
  %t954 = load i64, ptr %l452, !tbaa !24
  store i64 %t954, ptr %l449, !tbaa !24
  br label %bb215
bb215:
  %t955 = load i64, ptr %l449, !tbaa !24
  store i64 %t955, ptr %l52, !tbaa !24
  store i64 0, ptr %l53, !tbaa !24
  br label %bb216
bb216:
  store %olang.scope zeroinitializer, ptr %s44
  %t956 = load i64, ptr %l53, !tbaa !24
  %t957 = load i64, ptr %l52, !tbaa !24
  %t960 = icmp slt i64 %t956, %t957
  %t962 = xor i1 %t960, true
  br i1 %t962, label %bb217, label %bb218
bb217:
  call void @__olang_scope_close(ptr %s44)
  br label %bb233
bb218:
  br label %bb219
bb219:
  %t964 = load i64, ptr %l49, !tbaa !24
  %t965 = load i64, ptr %l53, !tbaa !24
  %t966 = load i64, ptr %l51, !tbaa !24
  %t969 = mul i64 %t965, %t966
  %t972 = add i64 %t964, %t969
  store i64 %t972, ptr %l54, !tbaa !24
  %t974 = load i64, ptr %l54, !tbaa !24
  store i64 %t974, ptr %l470, !tbaa !24
  %t976 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %s42, ptr %l48)
  store i64 %t976, ptr %l472
  br label %bb220
bb220:
  %t977 = load i64, ptr %l470, !tbaa !24
  %t978 = load i64, ptr %l472, !tbaa !24
  %t979 = icmp sge i64 %t977, %t978
  br i1 %t979, label %bb221, label %bb222
bb221:
  store i1 true, ptr %l474, !tbaa !21
  br label %bb224
bb222:
  %t981 = load ptr, ptr %l0, !tbaa !29
  %t982 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t982, ptr %l476, !tbaa !27
  %t983 = load i64, ptr %l54, !tbaa !24
  %t985 = getelementptr { i64, ptr }, ptr %l476, i32 0, i32 1
  %t986 = load ptr, ptr %t985, !tbaa !27
  %t987 = getelementptr i32, ptr %t986, i64 %t983
  %t988 = load i32, ptr %t987, !tbaa !33
  %t989 = load i32, ptr %l5, !tbaa !23
  %t993 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsBy(ptr %v0, ptr %t981, i32 %t988, i32 %t989, i64 0)
  store i1 %t993, ptr %l480
  br label %bb223
bb223:
  %t994 = load i1, ptr %l480, !tbaa !21
  %t995 = xor i1 %t994, true
  store i1 %t995, ptr %l474, !tbaa !21
  br label %bb224
bb224:
  %t997 = load i1, ptr %l474, !tbaa !21
  br i1 %t997, label %bb225, label %bb226
bb225:
  call void @__olang_scope_close(ptr %s44)
  br label %bb232
bb226:
  br label %bb227
bb227:
  %t998 = load ptr, ptr %l0, !tbaa !29
  store ptr %t998, ptr %l482, !tbaa !29
  %t999 = load i64, ptr %l54, !tbaa !24
  %t1002 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s42, ptr %l48, i64 %t999)
  store %"compiler/source:Span" %t1002, ptr %l485
  br label %bb228
bb228:
  %t1003 = load ptr, ptr %l0, !tbaa !29
  %t1004 = load i32, ptr %l46, !tbaa !23
  %t1007 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s44, ptr %t1003, i32 %t1004)
  store { i64, ptr } %t1007, ptr %l488
  br label %bb229
bb229:
  %t1008 = load { i64, ptr }, ptr %l488, !tbaa !27
  %t1009 = extractvalue { i64, ptr } %t1008, 0
  %t1010 = extractvalue { i64, ptr } %t1008, 1
  %t1011 = mul i64 %t1009, 1
  %t1012 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1011)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1012, ptr %t1010, i64 %t1011, i1 false)
  %t1013 = insertvalue { i64, ptr } undef, i64 %t1009, 0
  %t1014 = insertvalue { i64, ptr } %t1013, ptr %t1012, 1
  %t1016 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %s44, ptr %s44, { i64, ptr } %t1014)
  store %"compiler/diagmsg:Msg" %t1016, ptr %l490
  br label %bb230
bb230:
  %t1017 = load ptr, ptr %l482, !tbaa !29
  %t1018 = load %"compiler/source:Span", ptr %l485
  %t1019 = load %"compiler/diagmsg:Msg", ptr %l490
  %t1020 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s44, ptr %t1017, %"compiler/source:Span" %t1018, %"compiler/diagmsg:Msg" %t1019)
  store i64 %t1020, ptr %l491
  br label %bb231
bb231:
  call void @__olang_scope_close(ptr %s44)
  br label %bb233
bb232:
  %t1021 = load i64, ptr %l53, !tbaa !24
  %t1023 = add i64 %t1021, 1
  store i64 %t1023, ptr %l53, !tbaa !24
  br label %bb216
bb233:
  call void @__olang_scope_close(ptr %s42)
  br label %bb234
bb234:
  call void @__olang_scope_close(ptr %s41)
  br label %bb275
bb235:
  %t1025 = load ptr, ptr %l44, !tbaa !29
  store ptr %t1025, ptr %l494, !tbaa !29
  store i1 false, ptr %l495, !tbaa !21
  %t1026 = load ptr, ptr %l494, !tbaa !29
  %t1027 = icmp ne ptr %t1026, null
  br i1 %t1027, label %bb236, label %bb237
bb236:
  %t1029 = load ptr, ptr %l494, !tbaa !29
  %t1030 = load i64, ptr %t1029, !range !{i64 0, i64 5}
  %t1032 = icmp eq i64 %t1030, 1
  store i1 %t1032, ptr %l495, !tbaa !21
  br label %bb237
bb237:
  %t1033 = load i1, ptr %l495, !tbaa !21
  br i1 %t1033, label %bb238, label %bb239
bb238:
  %t1034 = load ptr, ptr %l44, !tbaa !29
  %t1036 = getelementptr { i64, [6 x i64] }, ptr %t1034, i32 0, i32 1
  %t1037 = getelementptr { { i64, ptr }, ptr }, ptr %t1036, i32 0, i32 0
  %t1038 = load { i64, ptr }, ptr %t1037
  store { i64, ptr } %t1038, ptr %l55, !tbaa !27
  br label %bb240
bb239:
  br label %bb270
bb240:
  %t1040 = load ptr, ptr %l0, !tbaa !29
  %t1042 = getelementptr %"compiler/check:Checker", ptr %t1040, i32 0, i32 1
  %t1043 = load ptr, ptr %t1042, !tbaa !29
  %t1044 = load i32, ptr %l5, !tbaa !23
  %t1047 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t1043, i32 %t1044)
  store i32 %t1047, ptr %l503
  br label %bb241
bb241:
  %t1048 = load i32, ptr %l503, !tbaa !23
  store i32 %t1048, ptr %l56, !tbaa !23
  store i1 false, ptr %l57, !tbaa !21
  %t1049 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t1049, ptr %l58, !tbaa !27
  store i64 0, ptr %l59, !tbaa !24
  %t1051 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t1053 = extractvalue { i64, ptr } %t1051, 0
  store i64 %t1053, ptr %l60, !tbaa !24
  br label %bb242
bb242:
  %t1055 = load i64, ptr %l59, !tbaa !24
  %t1056 = load i64, ptr %l60, !tbaa !24
  %t1059 = icmp slt i64 %t1055, %t1056
  %t1061 = xor i1 %t1059, true
  br i1 %t1061, label %bb243, label %bb244
bb243:
  br label %bb269
bb244:
  br label %bb245
bb245:
  %t1063 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t1063, ptr %l511, !tbaa !27
  %t1064 = load i64, ptr %l59, !tbaa !24
  %t1066 = getelementptr { i64, ptr }, ptr %l511, i32 0, i32 1
  %t1067 = load ptr, ptr %t1066, !tbaa !27
  %t1068 = getelementptr ptr, ptr %t1067, i64 %t1064
  %t1069 = load ptr, ptr %t1068, !tbaa !39
  store ptr %t1069, ptr %l61, !tbaa !29
  %t1071 = load i1, ptr %l57, !tbaa !21
  br i1 %t1071, label %bb246, label %bb247
bb246:
  store i1 true, ptr %l515, !tbaa !21
  br label %bb248
bb247:
  %t1073 = load ptr, ptr %l61, !tbaa !29
  %t1075 = getelementptr %"compiler/ast:CaseDecl", ptr %t1073, i32 0, i32 2
  %t1076 = load { i64, ptr }, ptr %t1075, !tbaa !27
  %t1078 = extractvalue { i64, ptr } %t1076, 0
  %t1080 = icmp eq i64 %t1078, 0
  store i1 %t1080, ptr %l515, !tbaa !21
  br label %bb248
bb248:
  %t1082 = load i1, ptr %l515, !tbaa !21
  br i1 %t1082, label %bb249, label %bb250
bb249:
  br label %bb268
bb250:
  br label %bb251
bb251:
  %t1083 = load ptr, ptr %l61, !tbaa !29
  %t1085 = getelementptr %"compiler/ast:CaseDecl", ptr %t1083, i32 0, i32 2
  %t1086 = load { i64, ptr }, ptr %t1085, !tbaa !27
  store { i64, ptr } %t1086, ptr %l62, !tbaa !27
  store i64 0, ptr %l63, !tbaa !24
  %t1088 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t1090 = extractvalue { i64, ptr } %t1088, 0
  store i64 %t1090, ptr %l64, !tbaa !24
  br label %bb252
bb252:
  store %olang.scope zeroinitializer, ptr %s52
  %t1092 = load i64, ptr %l63, !tbaa !24
  %t1093 = load i64, ptr %l64, !tbaa !24
  %t1096 = icmp slt i64 %t1092, %t1093
  %t1098 = xor i1 %t1096, true
  br i1 %t1098, label %bb253, label %bb254
bb253:
  call void @__olang_scope_close(ptr %s52)
  br label %bb267
bb254:
  br label %bb255
bb255:
  %t1100 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t1100, ptr %l528, !tbaa !27
  %t1101 = load i64, ptr %l63, !tbaa !24
  %t1103 = getelementptr { i64, ptr }, ptr %l528, i32 0, i32 1
  %t1104 = load ptr, ptr %t1103, !tbaa !27
  %t1105 = getelementptr ptr, ptr %t1104, i64 %t1101
  %t1106 = load ptr, ptr %t1105, !tbaa !39
  store ptr %t1106, ptr %l65, !tbaa !29
  %t1108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1108, ptr %l531, !tbaa !29
  %t1109 = load ptr, ptr %l0, !tbaa !29
  %t1111 = getelementptr %"compiler/check:Checker", ptr %t1109, i32 0, i32 1
  %t1112 = load ptr, ptr %t1111, !tbaa !29
  %t1113 = load ptr, ptr %l6, !tbaa !29
  %t1115 = getelementptr %"compiler/check:frame", ptr %t1113, i32 0, i32 4
  %t1116 = load ptr, ptr %l65, !tbaa !29
  %t1118 = getelementptr %"compiler/ast:Param", ptr %t1116, i32 0, i32 2
  %t1119 = load ptr, ptr %t1118, !tbaa !29
  %t1123 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t1112, ptr %t1115, ptr %t1119)
  store i32 %t1123, ptr %l538
  br label %bb256
bb256:
  %t1124 = load i32, ptr %l5, !tbaa !23
  %t1125 = load ptr, ptr %l531, !tbaa !29
  %t1126 = load i32, ptr %l538, !tbaa !23
  %t1128 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsBy(ptr %v0, ptr %t1125, i32 %t1126, i32 %t1124, i64 0)
  store i1 %t1128, ptr %l540
  br label %bb257
bb257:
  %t1129 = load i1, ptr %l540, !tbaa !21
  %t1130 = xor i1 %t1129, true
  br i1 %t1130, label %bb258, label %bb259
bb258:
  call void @__olang_scope_close(ptr %s52)
  br label %bb266
bb259:
  br label %bb260
bb260:
  %t1132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1132, ptr %l542, !tbaa !29
  %t1133 = load ptr, ptr %l65, !tbaa !29
  %t1135 = getelementptr %"compiler/ast:Param", ptr %t1133, i32 0, i32 0
  %t1136 = getelementptr %"compiler/source:Span", ptr %t1135, i32 0, i32 0
  %t1137 = load i32, ptr %t1136, !tbaa !23
  store i32 %t1137, ptr %l544, !tbaa !23
  %t1138 = load ptr, ptr %l65, !tbaa !29
  %t1140 = getelementptr %"compiler/ast:Param", ptr %t1138, i32 0, i32 0
  %t1141 = getelementptr %"compiler/source:Span", ptr %t1140, i32 0, i32 0
  %t1142 = load i32, ptr %t1141, !tbaa !23
  store i32 %t1142, ptr %l546, !tbaa !23
  %t1143 = load ptr, ptr %l0, !tbaa !29
  %t1144 = load ptr, ptr %l65, !tbaa !29
  %t1146 = getelementptr %"compiler/ast:Param", ptr %t1144, i32 0, i32 1
  %t1147 = load i32, ptr %t1146, !tbaa !23
  %t1150 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s52, ptr %t1143, i32 %t1147)
  store { i64, ptr } %t1150, ptr %l550
  br label %bb261
bb261:
  %t1151 = load { i64, ptr }, ptr %l550, !tbaa !27
  %t1152 = extractvalue { i64, ptr } %t1151, 0
  %t1154 = trunc i64 %t1152 to i32
  %t1155 = load i32, ptr %l546, !tbaa !23
  %t1157 = add i32 %t1155, %t1154
  %t1158 = load i32, ptr %l544, !tbaa !23
  %t1160 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s52, i32 %t1158, i32 %t1157)
  store %"compiler/source:Span" %t1160, ptr %l554
  br label %bb262
bb262:
  %t1161 = load ptr, ptr %l0, !tbaa !29
  %t1162 = load i32, ptr %l56, !tbaa !23
  %t1165 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s52, ptr %t1161, i32 %t1162)
  store { i64, ptr } %t1165, ptr %l557
  br label %bb263
bb263:
  %t1166 = load { i64, ptr }, ptr %l557, !tbaa !27
  %t1167 = extractvalue { i64, ptr } %t1166, 0
  %t1168 = extractvalue { i64, ptr } %t1166, 1
  %t1169 = mul i64 %t1167, 1
  %t1170 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1170, ptr %t1168, i64 %t1169, i1 false)
  %t1171 = insertvalue { i64, ptr } undef, i64 %t1167, 0
  %t1172 = insertvalue { i64, ptr } %t1171, ptr %t1170, 1
  %t1174 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %s52, ptr %s52, { i64, ptr } %t1172)
  store %"compiler/diagmsg:Msg" %t1174, ptr %l559
  br label %bb264
bb264:
  %t1175 = load ptr, ptr %l542, !tbaa !29
  %t1176 = load %"compiler/source:Span", ptr %l554
  %t1177 = load %"compiler/diagmsg:Msg", ptr %l559
  %t1178 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s52, ptr %t1175, %"compiler/source:Span" %t1176, %"compiler/diagmsg:Msg" %t1177)
  store i64 %t1178, ptr %l560
  br label %bb265
bb265:
  store i1 true, ptr %l57, !tbaa !21
  call void @__olang_scope_close(ptr %s52)
  br label %bb267
bb266:
  %t1179 = load i64, ptr %l63, !tbaa !24
  %t1181 = add i64 %t1179, 1
  store i64 %t1181, ptr %l63, !tbaa !24
  br label %bb252
bb267:
  br label %bb268
bb268:
  %t1183 = load i64, ptr %l59, !tbaa !24
  %t1185 = add i64 %t1183, 1
  store i64 %t1185, ptr %l59, !tbaa !24
  br label %bb242
bb269:
  br label %bb275
bb270:
  br i1 true, label %bb271, label %bb272
bb271:
  br label %bb273
bb272:
  br label %bb274
bb273:
  br label %bb275
bb274:
  call void @__olang_check_failed(ptr @olang_loc_81bd4658a32363f8_61d6b01a3b44059c)
  unreachable
bb275:
  %t1187 = load ptr, ptr %l3, !tbaa !29
  %t1189 = getelementptr %"compiler/ast:TypeDecl", ptr %t1187, i32 0, i32 2
  %t1190 = load i1, ptr %t1189, !tbaa !21
  br i1 %t1190, label %bb276, label %bb277
bb276:
  %t1192 = load i1, ptr %l39, !tbaa !21
  %t1194 = xor i1 %t1192, true
  store i1 %t1194, ptr %l567, !tbaa !21
  br label %bb278
bb277:
  store i1 false, ptr %l567, !tbaa !21
  br label %bb278
bb278:
  %t1196 = load i1, ptr %l567, !tbaa !21
  br i1 %t1196, label %bb279, label %bb280
bb279:
  store %olang.scope zeroinitializer, ptr %s57
  %t1197 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1199 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s57, { i64, ptr } %t1197, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) })
  %t1200 = extractvalue { i32, i64 } %t1199, 1
  %t1201 = extractvalue { i32, i64 } %t1199, 0
  store i32 %t1201, ptr %l573
  %t1202 = icmp ne i32 %t1201, 0
  br i1 %t1202, label %bb282, label %ok.1203, !prof !99
ok.1203:
  store i64 %t1200, ptr %l572
  br label %bb281
bb280:
  br label %bb288
bb281:
  %t1204 = load i64, ptr %l572, !tbaa !24
  store i64 %t1204, ptr %l570, !tbaa !24
  br label %bb284
bb282:
  br label %bb283
bb283:
  %t1205 = load i64, ptr %l37, !tbaa !24
  store i64 %t1205, ptr %l570, !tbaa !24
  br label %bb284
bb284:
  %t1207 = load i64, ptr %l570, !tbaa !24
  store i64 %t1207, ptr %l66, !tbaa !24
  %t1208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1208, ptr %l575, !tbaa !29
  %t1209 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t1210 = load i32, ptr %t1209, !tbaa !23
  %t1211 = load i64, ptr %l66, !tbaa !24
  %t1213 = trunc i64 %t1211 to i32
  %t1216 = add i32 %t1210, %t1213
  %t1217 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t1218 = load i32, ptr %t1217, !tbaa !23
  %t1219 = load i64, ptr %l66, !tbaa !24
  %t1221 = add i64 %t1219, 7
  %t1223 = trunc i64 %t1221 to i32
  %t1226 = add i32 %t1218, %t1223
  %t1229 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s57, i32 %t1216, i32 %t1226)
  store %"compiler/source:Span" %t1229, ptr %l585
  br label %bb285
bb285:
  %t1230 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExtendsNotBase(ptr %s57)
  store %"compiler/diagmsg:Msg" %t1230, ptr %l586
  br label %bb286
bb286:
  %t1231 = load ptr, ptr %l575, !tbaa !29
  %t1232 = load %"compiler/source:Span", ptr %l585
  %t1233 = load %"compiler/diagmsg:Msg", ptr %l586
  %t1234 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s57, ptr %t1231, %"compiler/source:Span" %t1232, %"compiler/diagmsg:Msg" %t1233)
  store i64 %t1234, ptr %l587
  br label %bb287
bb287:
  call void @__olang_scope_close(ptr %s57)
  br label %bb288
bb288:
  %t1235 = load ptr, ptr %l0, !tbaa !29
  %t1236 = load %"compiler/source:Span", ptr %l2
  %t1237 = load ptr, ptr %l3, !tbaa !29
  %t1238 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRules(ptr %v0, ptr %v1, ptr %t1235, %"compiler/source:Span" %t1236, ptr %t1237, i32 %t1238)
  br label %bb289
bb289:
  %t1243 = load ptr, ptr %l0, !tbaa !29
  %t1244 = load %"compiler/source:Span", ptr %l2
  %t1245 = load %"compiler/source:Span", ptr %l38
  %t1246 = load ptr, ptr %l3, !tbaa !29
  %t1247 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedRules(ptr %v0, ptr %v1, ptr %t1243, %"compiler/source:Span" %t1244, %"compiler/source:Span" %t1245, ptr %t1246, i32 %t1247)
  br label %bb290
bb290:
  %t1253 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t1253)
  br label %bb291
bb291:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunsettle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l36 = alloca ptr
  %l39 = alloca i64
  %l43 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 16
  store ptr %t55, ptr %l36, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 16
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t58)
  store i64 %t60, ptr %l39
  br label %bb12
bb12:
  %t61 = load i64, ptr %l39, !tbaa !24
  %t62 = sub i64 %t61, 1
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t67 = load ptr, ptr %l36, !tbaa !29
  %t69 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t67, i64 %t66)
  store ptr %t69, ptr %l43
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l43, !tbaa !29
  store ptr %t70, ptr %l7, !tbaa !29
  %t71 = load ptr, ptr %l7, !tbaa !29
  %t73 = getelementptr %"compiler/check:frame", ptr %t71, i32 0, i32 27
  %t74 = load i1, ptr %t73, !tbaa !21
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 57
  %t79 = load ptr, ptr %l7, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t78, i64 %t82, i1 true)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t85 = load i64, ptr %l5, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l5, !tbaa !24
  br label %bb8
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeNarrowed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/check:narrowed"
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l41 = alloca ptr
  %l44 = alloca i64
  %l48 = alloca %"compiler/check:narrowed"
  %l52 = alloca i1
  %l55 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca ptr
  %l63 = alloca ptr
  %l66 = alloca i1
  %l74 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l12, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 46
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l22, !tbaa !24
  store i64 %t37, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb32
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = getelementptr %"compiler/check:frame", ptr %t57, i32 0, i32 46
  store ptr %t59, ptr %l41, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/check:frame", ptr %t60, i32 0, i32 46
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l44
  br label %bb13
bb13:
  %t65 = load i64, ptr %l44, !tbaa !24
  %t66 = sub i64 %t65, 1
  %t67 = load i64, ptr %l8, !tbaa !24
  %t70 = sub i64 %t66, %t67
  %t71 = load ptr, ptr %l41, !tbaa !29
  %t73 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t71, i64 %t70)
  store %"compiler/check:narrowed" %t73, ptr %l48
  br label %bb14
bb14:
  %t74 = load %"compiler/check:narrowed", ptr %l48
  store %"compiler/check:narrowed" %t74, ptr %l9
  %t75 = getelementptr %"compiler/check:narrowed", ptr %l9, i32 0, i32 0
  %t76 = load i64, ptr %t75, !tbaa !24
  %t80 = icmp ne i64 %t76, %a1
  br i1 %t80, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb17
bb16:
  %t82 = getelementptr %"compiler/check:narrowed", ptr %l9, i32 0, i32 5
  %t83 = load i1, ptr %t82, !tbaa !21
  store i1 %t83, ptr %l52, !tbaa !21
  br label %bb17
bb17:
  %t85 = load i1, ptr %l52, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  br label %bb31
bb19:
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  store ptr %t89, ptr %l55, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  %t96 = getelementptr %"compiler/check:narrowed", ptr %l9, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t95, i32 %t97)
  store i32 %t100, ptr %l60
  br label %bb21
bb21:
  %t101 = load ptr, ptr %l55, !tbaa !29
  %t102 = load i32, ptr %l60, !tbaa !23
  %t103 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t101, i32 %t102)
  store ptr %t103, ptr %l61
  br label %bb22
bb22:
  %t104 = getelementptr %"compiler/check:narrowed", ptr %l9, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load ptr, ptr %l61, !tbaa !29
  %t108 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t106, i64 %t105)
  store ptr %t108, ptr %l63
  br label %bb23
bb23:
  %t109 = load ptr, ptr %l63, !tbaa !29
  store ptr %t109, ptr %l10, !tbaa !29
  %t110 = load ptr, ptr %l10, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb26
bb25:
  %t114 = load ptr, ptr %l10, !tbaa !29
  %t116 = getelementptr %"compiler/ast:CaseDecl", ptr %t114, i32 0, i32 3
  %t117 = load i1, ptr %t116, !tbaa !21
  %t119 = xor i1 %t117, true
  store i1 %t119, ptr %l66, !tbaa !21
  br label %bb26
bb26:
  %t121 = load i1, ptr %l66, !tbaa !21
  br i1 %t121, label %bb27, label %bb28
bb27:
  store i64 -1, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t125 = getelementptr %"compiler/check:frame", ptr %t123, i32 0, i32 47
  %t126 = getelementptr %"compiler/check:narrowed", ptr %l9, i32 0, i32 3
  %t127 = load i64, ptr %t126, !tbaa !24
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t125, i64 %t127)
  store i64 %t130, ptr %l74
  br label %bb30
bb30:
  %t131 = load i64, ptr %l74, !tbaa !24
  store i64 %t131, ptr %rv
  br label %ret
bb31:
  %t132 = load i64, ptr %l7, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l7, !tbaa !24
  br label %bb9
bb32:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  store ptr %t10, ptr %l6, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t16, i32 %a1)
  store i32 %t20, ptr %l11
  br label %bb1
bb1:
  %t21 = load ptr, ptr %l6, !tbaa !29
  %t22 = load i32, ptr %l11, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t23, ptr %l12
  br label %bb2
bb2:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t25 = load i32, ptr %l12, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t24, i32 %t25)
  store { i64, ptr } %t26, ptr %l13
  br label %bb3
bb3:
  %t27 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  call void @__olang_scope_close(ptr %s0)
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCase(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d45, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d46, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d47, i32 0, i32 1) })
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

define dso_local i64 @compiler_2fcheck_2ectKey(%"compiler/source:Span" %a0) #0 {
entry:
  %l0 = alloca %"compiler/source:Span"
  %rv = alloca i64
  store %"compiler/source:Span" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l0, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t6 = shl i64 %t4, 32
  %t7 = getelementptr %"compiler/source:Span", ptr %l0, i32 0, i32 1
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t13 = or i64 %t6, %t10
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2efloatBits(i32 %a0, double %a1) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca double
  %rv = alloca i64
  store i32 %a0, ptr %l0
  store double %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp eq i32 %t1, 13
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load double, ptr %l1, !tbaa !26
  %t7 = fptrunc double %t5 to float
  %t9 = bitcast float %t7 to i32
  %t11 = zext i32 %t9 to i64
  store i64 %t11, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = load i32, ptr %l0, !tbaa !23
  %t15 = icmp eq i32 %t13, 11
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load double, ptr %l1, !tbaa !26
  %t19 = fptrunc double %t17 to half
  %t21 = bitcast half %t19 to i16
  %t22 = call i16 asm "", "=r,0"(i16 %t21)
  %t24 = zext i16 %t22 to i64
  store i64 %t24, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t26 = load i32, ptr %l0, !tbaa !23
  %t28 = icmp eq i32 %t26, 12
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load double, ptr %l1, !tbaa !26
  %t32 = fptrunc double %t30 to bfloat
  %t34 = bitcast bfloat %t32 to i16
  %t35 = call i16 asm "", "=r,0"(i16 %t34)
  %t37 = zext i16 %t35 to i64
  store i64 %t37, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load double, ptr %l1, !tbaa !26
  %t41 = bitcast double %t39 to i64
  store i64 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2eheldTry(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca { i64, ptr }
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l60 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l64 = alloca { i64, ptr }
  %l66 = alloca i1
  %l68 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l75 = alloca %"compiler/typed:Clause"
  %l79 = alloca %"compiler/source:Span"
  %l82 = alloca i32
  %l84 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l93 = alloca %"compiler/typed:Try"
  %rv = alloca ptr
  %t177 = alloca { i64, [5 x i64] }, align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Try", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Try", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_fbb347671bce929e_e992a88db50b1b5a)
  unreachable
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Try", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v1, ptr %t19)
  store ptr %t21, ptr %l23
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l23, !tbaa !29
  store ptr %t22, ptr %l2, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb8, label %bb9
bb8:
  store ptr null, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l27
  br label %bb11
bb11:
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t29, ptr %lp3
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t31 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Try", ptr %t32, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb13, label %bb14
bb13:
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t49, ptr %l36, !tbaa !27
  %t50 = load i64, ptr %l5, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr ptr, ptr %t53, i64 %t50
  %t55 = load ptr, ptr %t54, !tbaa !39
  store ptr %t55, ptr %l7, !tbaa !29
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l39
  br label %bb16
bb16:
  %t58 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t58, ptr %lp8
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t60 = load ptr, ptr %lp8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %t60
  %t61 = load ptr, ptr %l7, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Clause", ptr %t61, i32 0, i32 4
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l11, !tbaa !24
  br label %bb17
bb17:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l11, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb18, label %bb19
bb18:
  br label %bb27
bb19:
  br label %bb20
bb20:
  %t78 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t78, ptr %l48, !tbaa !27
  %t79 = load i64, ptr %l10, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr ptr, ptr %t82, i64 %t79
  %t84 = load ptr, ptr %t83, !tbaa !39
  %t88 = call ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v1, ptr %t84)
  store ptr %t88, ptr %l52
  br label %bb21
bb21:
  %t89 = load ptr, ptr %l52, !tbaa !29
  store ptr %t89, ptr %l13, !tbaa !29
  %t90 = load ptr, ptr %l13, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  br i1 %t92, label %bb22, label %bb23
bb22:
  store ptr null, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t95 = load ptr, ptr %lp8
  %t96 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v1, ptr %t95, ptr %t96)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l10, !tbaa !24
  br label %bb17
bb27:
  %t103 = load ptr, ptr %lp3
  store ptr %t103, ptr %l60, !tbaa !29
  %t104 = load ptr, ptr %l7, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Clause", ptr %t104, i32 0, i32 0
  %t107 = load %"compiler/source:Span", ptr %t106
  store %"compiler/source:Span" %t107, ptr %l62
  %t108 = load ptr, ptr %l7, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Clause", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l64, !tbaa !27
  %t112 = load ptr, ptr %l7, !tbaa !29
  %t114 = getelementptr %"compiler/typed:Clause", ptr %t112, i32 0, i32 2
  %t115 = load i1, ptr %t114, !tbaa !21
  store i1 %t115, ptr %l66, !tbaa !21
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Clause", ptr %t116, i32 0, i32 3
  %t119 = load ptr, ptr %t118, !tbaa !29
  store ptr %t119, ptr %l68, !tbaa !29
  %t120 = load ptr, ptr %lp8
  %t122 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v1, ptr %v1, ptr %t120)
  store { i64, ptr } %t122, ptr %l70
  br label %bb28
bb28:
  %t123 = load ptr, ptr %l7, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Clause", ptr %t123, i32 0, i32 5
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = load ptr, ptr %l7, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Clause", ptr %t127, i32 0, i32 6
  %t130 = load i32, ptr %t129, !tbaa !23
  %t131 = load %"compiler/source:Span", ptr %l62
  %t132 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t133 = load i1, ptr %l66, !tbaa !21
  %t134 = load ptr, ptr %l68, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t138 = call %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v0, ptr %v1, ptr %v1, %"compiler/source:Span" %t131, { i64, ptr } %t132, i1 %t133, ptr %t134, { i64, ptr } %t135, i64 %t126, i32 %t130)
  store %"compiler/typed:Clause" %t138, ptr %l75
  br label %bb29
bb29:
  %t139 = load %"compiler/typed:Clause", ptr %l75
  %t140 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store %"compiler/typed:Clause" %t139, ptr %t140
  %t141 = load ptr, ptr %l60, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v1, ptr %v1, ptr %t141, ptr %t140)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t143 = load i64, ptr %l5, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l5, !tbaa !24
  br label %bb12
bb32:
  store %"compiler/source:Span" %a0, ptr %l79
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t151 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t148)
  store i32 %t151, ptr %l82
  br label %bb33
bb33:
  %t152 = load ptr, ptr %l2, !tbaa !29
  store ptr %t152, ptr %l84, !tbaa !29
  %t154 = load ptr, ptr %lp3
  %t156 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v1, ptr %v1, ptr %t154)
  store { i64, ptr } %t156, ptr %l86
  br label %bb34
bb34:
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Try", ptr %t157, i32 0, i32 2
  %t160 = load i1, ptr %t159, !tbaa !21
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Try", ptr %t161, i32 0, i32 3
  %t164 = load i1, ptr %t163, !tbaa !21
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr %"compiler/typed:Try", ptr %t165, i32 0, i32 4
  %t168 = load i1, ptr %t167, !tbaa !21
  %t169 = load ptr, ptr %l84, !tbaa !29
  %t170 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t174 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %t169, { i64, ptr } %t170, i1 %t160, i1 %t164, i1 %t168)
  store %"compiler/typed:Try" %t174, ptr %l93
  br label %bb35
bb35:
  %t175 = load %"compiler/typed:Try", ptr %l93
  %t176 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/typed:Try" %t175, ptr %t176
  store { i64, [5 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [5 x i64] }, ptr %t177, i32 0, i32 0
  store i64 14, ptr %t178
  %t179 = load %"compiler/source:Span", ptr %l79
  %t180 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t179, 0
  %t181 = load i32, ptr %l82, !tbaa !23
  %t182 = insertvalue { %"compiler/source:Span", i32, ptr } %t180, i32 %t181, 1
  %t184 = insertvalue { %"compiler/source:Span", i32, ptr } %t182, ptr %t176, 2
  %t185 = getelementptr { i64, [5 x i64] }, ptr %t177, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t184, ptr %t185
  %t186 = load { i64, [5 x i64] }, ptr %t177
  %t188 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t186, ptr %t188
  store ptr %t188, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2ewideBits(i32 %a0, %"compiler/check:litv" %a1, %"compiler/check:litv" %a2) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca %"compiler/check:signMag"
  %l4 = alloca i1
  %l5 = alloca i128
  %l6 = alloca %"compiler/check:signMag"
  %l7 = alloca i1
  %l8 = alloca i128
  %l9 = alloca i1
  %l10 = alloca i128
  %l12 = alloca %"compiler/check:signMag"
  %l16 = alloca %"compiler/check:signMag"
  %l21 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l36 = alloca i128
  %l42 = alloca i128
  %l52 = alloca %"compiler/check:litv"
  %l55 = alloca %"compiler/check:litv"
  %l58 = alloca %"compiler/check:litv"
  %rv = alloca %"compiler/check:litv"
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2etwos(%"compiler/check:litv" %a1)
  store %"compiler/check:signMag" %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load %"compiler/check:signMag", ptr %l12
  store %"compiler/check:signMag" %t4, ptr %l3
  %t5 = getelementptr %"compiler/check:signMag", ptr %l3, i32 0, i32 0
  %t6 = load i1, ptr %t5, !tbaa !21
  store i1 %t6, ptr %l4, !tbaa !21
  %t8 = getelementptr %"compiler/check:signMag", ptr %l3, i32 0, i32 1
  %t9 = load i128, ptr %t8
  store i128 %t9, ptr %l5
  %t13 = call %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2etwos(%"compiler/check:litv" %a2)
  store %"compiler/check:signMag" %t13, ptr %l16
  br label %bb2
bb2:
  %t14 = load %"compiler/check:signMag", ptr %l16
  store %"compiler/check:signMag" %t14, ptr %l6
  %t15 = getelementptr %"compiler/check:signMag", ptr %l6, i32 0, i32 0
  %t16 = load i1, ptr %t15, !tbaa !21
  store i1 %t16, ptr %l7, !tbaa !21
  %t18 = getelementptr %"compiler/check:signMag", ptr %l6, i32 0, i32 1
  %t19 = load i128, ptr %t18
  store i128 %t19, ptr %l8
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 101 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i1, ptr %l4, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb4:
  %t28 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t30 = trunc i64 102 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb8, label %bb9
bb5:
  %t33 = load i1, ptr %l7, !tbaa !21
  store i1 %t33, ptr %l23, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l23, !tbaa !21
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb14
bb8:
  %t36 = load i1, ptr %l4, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb9:
  %t38 = load i1, ptr %l4, !tbaa !21
  %t39 = load i1, ptr %l7, !tbaa !21
  %t42 = icmp ne i1 %t38, %t39
  store i1 %t42, ptr %l27, !tbaa !21
  br label %bb13
bb10:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb12
bb11:
  %t44 = load i1, ptr %l7, !tbaa !21
  store i1 %t44, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l29, !tbaa !21
  store i1 %t46, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l27, !tbaa !21
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l21, !tbaa !21
  store i1 %t48, ptr %l9, !tbaa !21
  %t49 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t51 = trunc i64 101 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load i128, ptr %l5
  %t55 = load i128, ptr %l8
  %t58 = and i128 %t54, %t55
  store i128 %t58, ptr %l36
  br label %bb20
bb16:
  %t60 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t62 = trunc i64 102 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t65 = load i128, ptr %l5
  %t66 = load i128, ptr %l8
  %t69 = or i128 %t65, %t66
  store i128 %t69, ptr %l42
  br label %bb19
bb18:
  %t71 = load i128, ptr %l5
  %t72 = load i128, ptr %l8
  %t75 = xor i128 %t71, %t72
  store i128 %t75, ptr %l42
  br label %bb19
bb19:
  %t77 = load i128, ptr %l42
  store i128 %t77, ptr %l36
  br label %bb20
bb20:
  %t78 = load i128, ptr %l36
  store i128 %t78, ptr %l10
  %t79 = load i1, ptr %l9, !tbaa !21
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb21, label %bb22
bb21:
  %t83 = load i128, ptr %l10
  %t85 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 false, i128 %t83)
  store %"compiler/check:litv" %t85, ptr %l52
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t86 = load %"compiler/check:litv", ptr %l52
  store %"compiler/check:litv" %t86, ptr %rv
  br label %ret
bb24:
  %t87 = load i128, ptr %l10
  %t89 = icmp eq i128 %t87, 0
  br i1 %t89, label %bb25, label %bb26
bb25:
  %t91 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t91, ptr %l55
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t92 = load %"compiler/check:litv", ptr %l55
  store %"compiler/check:litv" %t92, ptr %rv
  br label %ret
bb28:
  %t93 = load i128, ptr %l10
  %t95 = sub i128 0, %t93
  %t97 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 true, i128 %t95)
  store %"compiler/check:litv" %t97, ptr %l58
  br label %bb29
bb29:
  %t98 = load %"compiler/check:litv", ptr %l58
  store %"compiler/check:litv" %t98, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i1
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l35 = alloca i1
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l57 = alloca i1
  %l58 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca i1
  %l63 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca i1
  %l68 = alloca { i64, ptr }
  %l74 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = add i64 %t1, %t4
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp sle i64 %t7, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb44
bb3:
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  store i64 %t18, ptr %l16, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = add i64 %t19, %t22
  store i64 %t25, ptr %l20, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l21, !tbaa !24
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load i64, ptr %l16, !tbaa !24
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = icmp sle i64 %t31, %t32
  br i1 %t33, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_a18b02733ea53beb_f9e22fb852fb348f)
  unreachable
bb7:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = load i64, ptr %l21, !tbaa !24
  %t37 = icmp sle i64 %t35, %t36
  br i1 %t37, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_a18b02733ea53beb_f9e22fb852fb348f)
  unreachable
bb9:
  %t39 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = load i64, ptr %l20, !tbaa !24
  %t43 = getelementptr i8, ptr %t40, i64 %t41
  %t44 = sub i64 %t42, %t41
  %t45 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t46, { i64, ptr } %t47)
  store i1 %t50, ptr %l27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_a18b02733ea53beb_f9e22fb852fb348f)
  unreachable
bb11:
  %t51 = load i1, ptr %l27, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = icmp eq i64 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb13:
  br label %bb42
bb14:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb24
bb15:
  %t56 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t56, ptr %l31, !tbaa !27
  %t57 = load i64, ptr %l3, !tbaa !24
  %t59 = sub i64 %t57, 1
  %t61 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 %t59
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t64)
  store i1 %t66, ptr %l35
  br label %bb16
bb16:
  %t67 = load i1, ptr %l35, !tbaa !21
  br i1 %t67, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb20
bb18:
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t68, ptr %l37, !tbaa !27
  %t69 = load i64, ptr %l3, !tbaa !24
  %t71 = sub i64 %t69, 1
  %t73 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i8, ptr %t74, i64 %t71
  %t76 = load i8, ptr %t75, !tbaa !32
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t76)
  store i1 %t78, ptr %l41
  br label %bb19
bb19:
  %t79 = load i1, ptr %l41, !tbaa !21
  store i1 %t79, ptr %l36, !tbaa !21
  br label %bb20
bb20:
  %t80 = load i1, ptr %l36, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb23
bb22:
  %t81 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t81, ptr %l43, !tbaa !27
  %t82 = load i64, ptr %l3, !tbaa !24
  %t84 = sub i64 %t82, 1
  %t86 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i8, ptr %t87, i64 %t84
  %t89 = load i8, ptr %t88, !tbaa !32
  %t91 = icmp eq i8 %t89, 95
  store i1 %t91, ptr %l42, !tbaa !21
  br label %bb23
bb23:
  %t93 = load i1, ptr %l42, !tbaa !21
  %t94 = xor i1 %t93, true
  store i1 %t94, ptr %l30, !tbaa !21
  br label %bb24
bb24:
  %t96 = load i1, ptr %l30, !tbaa !21
  store i1 %t96, ptr %l4, !tbaa !21
  %t97 = load i64, ptr %l3, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t103 = add i64 %t97, %t100
  store i64 %t103, ptr %l5, !tbaa !24
  %t105 = load i64, ptr %l5, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t111 = icmp sge i64 %t105, %t108
  br i1 %t111, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb35
bb26:
  %t113 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t113, ptr %l58, !tbaa !27
  %t114 = load i64, ptr %l5, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i8, ptr %t117, i64 %t114
  %t119 = load i8, ptr %t118, !tbaa !32
  %t121 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t119)
  store i1 %t121, ptr %l61
  br label %bb27
bb27:
  %t122 = load i1, ptr %l61, !tbaa !21
  br i1 %t122, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb31
bb29:
  %t123 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t123, ptr %l63, !tbaa !27
  %t124 = load i64, ptr %l5, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i8, ptr %t127, i64 %t124
  %t129 = load i8, ptr %t128, !tbaa !32
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t129)
  store i1 %t131, ptr %l66
  br label %bb30
bb30:
  %t132 = load i1, ptr %l66, !tbaa !21
  store i1 %t132, ptr %l62, !tbaa !21
  br label %bb31
bb31:
  %t133 = load i1, ptr %l62, !tbaa !21
  br i1 %t133, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb34
bb33:
  %t134 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t134, ptr %l68, !tbaa !27
  %t135 = load i64, ptr %l5, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t135
  %t140 = load i8, ptr %t139, !tbaa !32
  %t142 = icmp eq i8 %t140, 95
  store i1 %t142, ptr %l67, !tbaa !21
  br label %bb34
bb34:
  %t144 = load i1, ptr %l67, !tbaa !21
  %t145 = xor i1 %t144, true
  store i1 %t145, ptr %l57, !tbaa !21
  br label %bb35
bb35:
  %t147 = load i1, ptr %l57, !tbaa !21
  store i1 %t147, ptr %l6, !tbaa !21
  %t148 = load i1, ptr %l4, !tbaa !21
  br i1 %t148, label %bb36, label %bb37
bb36:
  %t150 = load i1, ptr %l6, !tbaa !21
  store i1 %t150, ptr %l74, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb38
bb38:
  %t152 = load i1, ptr %l74, !tbaa !21
  br i1 %t152, label %bb39, label %bb40
bb39:
  %t153 = load i64, ptr %l2, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l2, !tbaa !24
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t157 = load i64, ptr %l3, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l3, !tbaa !24
  br label %bb43
bb43:
  br label %bb1
bb44:
  %t161 = load i64, ptr %l2, !tbaa !24
  store i64 %t161, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/check:errBind" @compiler_2fcheck_3aerrBind_2ector(ptr %v0, i32 %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %rv = alloca %"compiler/check:errBind"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:errBind" undef, i32 %a0, 0
  %t12 = insertvalue %"compiler/check:errBind" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/check:errBind" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/check:errBind" %t14, %"compiler/source:Span" %a3, 3
  store %"compiler/check:errBind" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:errBind", ptr %rv
  ret %"compiler/check:errBind" %rr
}

define dso_local void @compiler_2fcheck_3aframe_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"compiler/generic:Context"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i1
  %l24 = alloca i64
  %l25 = alloca i1
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l37 = alloca i1
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i1
  %l42 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l50 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca { i64, ptr }
  %l54 = alloca i1
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca i64
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l72 = alloca i64
  %l74 = alloca %"compiler/generic:Context"
  %l78 = alloca i64
  %l80 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l82 = alloca i64
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca i64
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca i64
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca i64
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca i64
  %l101 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l103 = alloca i64
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca i64
  %l109 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l111 = alloca i64
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca i64
  %l118 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l120 = alloca i64
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca i64
  %l126 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l128 = alloca i64
  %l130 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l132 = alloca i64
  %l134 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l136 = alloca i64
  %l138 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca i64
  %l142 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l144 = alloca i64
  %l149 = alloca i64
  %l151 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l156 = alloca i64
  %l158 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l160 = alloca i64
  %l162 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l164 = alloca i64
  %l166 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l168 = alloca i64
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l172 = alloca i64
  %l174 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l176 = alloca %"compiler/source:Span"
  %l177 = alloca %"compiler/check:frame"
  %t14 = alloca %"compiler/generic:Context", align 8
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l5, !tbaa !24
  store i64 %a1, ptr %l6, !tbaa !24
  store i64 %a2, ptr %l7, !tbaa !24
  %t7 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t7, ptr %l71
  br label %bb1
bb1:
  %t8 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l8
  %t9 = ptrtoint ptr %v0 to i64
  store i64 %t9, ptr %l72, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = call ptr @__olang_region_make(ptr %v0)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l72, !tbaa !24
  br label %bb3
bb3:
  %t15 = load i64, ptr %l72
  %t16 = inttoptr i64 %t15 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t14, ptr %t16, i64 0, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l74, ptr %t14, i64 160, i1 false)
  br label %bb4
bb4:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load i64, ptr %l72
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t22 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t21, i32 0, i32 2
  %t23 = load { i64, ptr }, ptr %t22
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = call ptr @__olang_region_or(ptr %t24, ptr null)
  %t26 = icmp ne ptr %t25, null
  %t27 = select i1 %t26, ptr %t25, ptr null
  %t28 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t28, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr %t27
  %t35 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t35, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr %t34
  %t42 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t42, i32 0, i32 2
  %t44 = load { i64, ptr }, ptr %t43
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = call ptr @__olang_region_or(ptr %t45, ptr null)
  %t47 = icmp ne ptr %t46, null
  %t48 = select i1 %t47, ptr %t46, ptr %t41
  %t49 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t50 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t49, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = call ptr @__olang_region_or(ptr %t52, ptr null)
  %t54 = icmp ne ptr %t53, null
  %t55 = select i1 %t54, ptr %t53, ptr %t48
  %t56 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t56, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr %t55
  %t63 = icmp eq ptr %t62, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t63)
  br label %bb6
bb6:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l74, i64 160, i1 false)
  store i32 %a3, ptr %l10, !tbaa !23
  store i32 %a4, ptr %l11, !tbaa !23
  store i64 0, ptr %l12, !tbaa !24
  %t68 = ptrtoint ptr %v0 to i64
  store i64 %t68, ptr %l78, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e8
  br i1 %t69, label %bb7, label %bb8
bb7:
  %t71 = call ptr @__olang_region_make(ptr %v0)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l78, !tbaa !24
  br label %bb8
bb8:
  %t73 = load i64, ptr %l78
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t74)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t75, ptr %l80
  br label %bb9
bb9:
  %t76 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e8
  br i1 %t76, label %bb10, label %bb11
bb10:
  %t78 = load i64, ptr %l78
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 2
  %t81 = load { i64, ptr }, ptr %t80
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = call ptr @__olang_region_or(ptr %t82, ptr null)
  %t84 = icmp ne ptr %t83, null
  %t85 = select i1 %t84, ptr %t83, ptr null
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 1
  %t87 = load { i64, ptr }, ptr %t86
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr null)
  %t90 = icmp ne ptr %t89, null
  %t91 = select i1 %t90, ptr %t89, ptr %t85
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = call ptr @__olang_region_or(ptr %t94, ptr null)
  %t96 = icmp ne ptr %t95, null
  %t97 = select i1 %t96, ptr %t95, ptr %t91
  %t98 = icmp eq ptr %t97, %t79
  call void @__olang_region_settle(ptr %t79, i1 %t98)
  br label %bb11
bb11:
  %t99 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t99, ptr %l13
  %t100 = ptrtoint ptr %v0 to i64
  store i64 %t100, ptr %l82, !tbaa !24
  %t101 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e9
  br i1 %t101, label %bb12, label %bb13
bb12:
  %t103 = call ptr @__olang_region_make(ptr %v0)
  %t104 = ptrtoint ptr %t103 to i64
  store i64 %t104, ptr %l82, !tbaa !24
  br label %bb13
bb13:
  %t105 = load i64, ptr %l82
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_3e_2ector(ptr %t106, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l84
  br label %bb14
bb14:
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e9
  br i1 %t108, label %bb15, label %bb16
bb15:
  %t110 = load i64, ptr %l82
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84, i32 0, i32 0
  %t113 = load { i64, ptr }, ptr %t112
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = call ptr @__olang_region_or(ptr %t114, ptr null)
  %t116 = icmp ne ptr %t115, null
  %t117 = select i1 %t116, ptr %t115, ptr null
  %t118 = icmp eq ptr %t117, %t111
  call void @__olang_region_settle(ptr %t111, i1 %t118)
  br label %bb16
bb16:
  %t119 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t119, ptr %l14
  %t120 = ptrtoint ptr %v0 to i64
  store i64 %t120, ptr %l86, !tbaa !24
  %t121 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e10
  br i1 %t121, label %bb17, label %bb18
bb17:
  %t123 = call ptr @__olang_region_make(ptr %v0)
  %t124 = ptrtoint ptr %t123 to i64
  store i64 %t124, ptr %l86, !tbaa !24
  br label %bb18
bb18:
  %t125 = load i64, ptr %l86
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t126, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %l88
  br label %bb19
bb19:
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e10
  br i1 %t128, label %bb20, label %bb21
bb20:
  %t130 = load i64, ptr %l86
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr null)
  %t136 = icmp ne ptr %t135, null
  %t137 = select i1 %t136, ptr %t135, ptr null
  %t138 = icmp eq ptr %t137, %t131
  call void @__olang_region_settle(ptr %t131, i1 %t138)
  br label %bb21
bb21:
  %t139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %l15
  %t140 = ptrtoint ptr %v0 to i64
  store i64 %t140, ptr %l90, !tbaa !24
  %t141 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e11
  br i1 %t141, label %bb22, label %bb23
bb22:
  %t143 = call ptr @__olang_region_make(ptr %v0)
  %t144 = ptrtoint ptr %t143 to i64
  store i64 %t144, ptr %l90, !tbaa !24
  br label %bb23
bb23:
  %t145 = load i64, ptr %l90
  %t146 = inttoptr i64 %t145 to ptr
  %t147 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t146, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t147, ptr %l92
  br label %bb24
bb24:
  %t148 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e11
  br i1 %t148, label %bb25, label %bb26
bb25:
  %t150 = load i64, ptr %l90
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92, i32 0, i32 0
  %t153 = load { i64, ptr }, ptr %t152
  %t154 = extractvalue { i64, ptr } %t153, 1
  %t155 = call ptr @__olang_region_or(ptr %t154, ptr null)
  %t156 = icmp ne ptr %t155, null
  %t157 = select i1 %t156, ptr %t155, ptr null
  %t158 = icmp eq ptr %t157, %t151
  call void @__olang_region_settle(ptr %t151, i1 %t158)
  br label %bb26
bb26:
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l16
  store i1 false, ptr %l17, !tbaa !21
  store i1 false, ptr %l18, !tbaa !21
  %t160 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t160, ptr %l19, !tbaa !23
  store i64 0, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  store i1 false, ptr %l23, !tbaa !21
  store i64 -1, ptr %l24, !tbaa !24
  store i1 false, ptr %l25, !tbaa !21
  store i64 -1, ptr %l26, !tbaa !24
  %t162 = ptrtoint ptr %v0 to i64
  store i64 %t162, ptr %l95, !tbaa !24
  %t163 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e22
  br i1 %t163, label %bb27, label %bb28
bb27:
  %t165 = call ptr @__olang_region_make(ptr %v0)
  %t166 = ptrtoint ptr %t165 to i64
  store i64 %t166, ptr %l95, !tbaa !24
  br label %bb28
bb28:
  %t167 = load i64, ptr %l95
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t168, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t169, ptr %l97
  br label %bb29
bb29:
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e22
  br i1 %t170, label %bb30, label %bb31
bb30:
  %t172 = load i64, ptr %l95
  %t173 = inttoptr i64 %t172 to ptr
  %t174 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97, i32 0, i32 0
  %t175 = load { i64, ptr }, ptr %t174
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = call ptr @__olang_region_or(ptr %t176, ptr null)
  %t178 = icmp ne ptr %t177, null
  %t179 = select i1 %t178, ptr %t177, ptr null
  %t180 = icmp eq ptr %t179, %t173
  call void @__olang_region_settle(ptr %t173, i1 %t180)
  br label %bb31
bb31:
  %t181 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l27
  %t182 = ptrtoint ptr %v0 to i64
  store i64 %t182, ptr %l99, !tbaa !24
  %t183 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e23
  br i1 %t183, label %bb32, label %bb33
bb32:
  %t185 = call ptr @__olang_region_make(ptr %v0)
  %t186 = ptrtoint ptr %t185 to i64
  store i64 %t186, ptr %l99, !tbaa !24
  br label %bb33
bb33:
  %t187 = load i64, ptr %l99
  %t188 = inttoptr i64 %t187 to ptr
  %t189 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t188)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t189, ptr %l101
  br label %bb34
bb34:
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e23
  br i1 %t190, label %bb35, label %bb36
bb35:
  %t192 = load i64, ptr %l99
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l101, i32 0, i32 2
  %t195 = load { i64, ptr }, ptr %t194
  %t196 = extractvalue { i64, ptr } %t195, 1
  %t197 = call ptr @__olang_region_or(ptr %t196, ptr null)
  %t198 = icmp ne ptr %t197, null
  %t199 = select i1 %t198, ptr %t197, ptr null
  %t200 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l101, i32 0, i32 1
  %t201 = load { i64, ptr }, ptr %t200
  %t202 = extractvalue { i64, ptr } %t201, 1
  %t203 = call ptr @__olang_region_or(ptr %t202, ptr null)
  %t204 = icmp ne ptr %t203, null
  %t205 = select i1 %t204, ptr %t203, ptr %t199
  %t206 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l101, i32 0, i32 0
  %t207 = load { i64, ptr }, ptr %t206
  %t208 = extractvalue { i64, ptr } %t207, 1
  %t209 = call ptr @__olang_region_or(ptr %t208, ptr null)
  %t210 = icmp ne ptr %t209, null
  %t211 = select i1 %t210, ptr %t209, ptr %t205
  %t212 = icmp eq ptr %t211, %t193
  call void @__olang_region_settle(ptr %t193, i1 %t212)
  br label %bb36
bb36:
  %t213 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l101
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t213, ptr %l28
  %t214 = ptrtoint ptr %v0 to i64
  store i64 %t214, ptr %l103, !tbaa !24
  %t215 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e24
  br i1 %t215, label %bb37, label %bb38
bb37:
  %t217 = call ptr @__olang_region_make(ptr %v0)
  %t218 = ptrtoint ptr %t217 to i64
  store i64 %t218, ptr %l103, !tbaa !24
  br label %bb38
bb38:
  %t219 = load i64, ptr %l103
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t220, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l105
  br label %bb39
bb39:
  %t222 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e24
  br i1 %t222, label %bb40, label %bb41
bb40:
  %t224 = load i64, ptr %l103
  %t225 = inttoptr i64 %t224 to ptr
  %t226 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105, i32 0, i32 0
  %t227 = load { i64, ptr }, ptr %t226
  %t228 = extractvalue { i64, ptr } %t227, 1
  %t229 = call ptr @__olang_region_or(ptr %t228, ptr null)
  %t230 = icmp ne ptr %t229, null
  %t231 = select i1 %t230, ptr %t229, ptr null
  %t232 = icmp eq ptr %t231, %t225
  call void @__olang_region_settle(ptr %t225, i1 %t232)
  br label %bb41
bb41:
  %t233 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %l29
  store i1 false, ptr %l30, !tbaa !21
  store i1 false, ptr %l31, !tbaa !21
  store i1 false, ptr %l32, !tbaa !21
  %t234 = ptrtoint ptr %v0 to i64
  store i64 %t234, ptr %l107, !tbaa !24
  %t235 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e28
  br i1 %t235, label %bb42, label %bb43
bb42:
  %t237 = call ptr @__olang_region_make(ptr %v0)
  %t238 = ptrtoint ptr %t237 to i64
  store i64 %t238, ptr %l107, !tbaa !24
  br label %bb43
bb43:
  %t239 = load i64, ptr %l107
  %t240 = inttoptr i64 %t239 to ptr
  %t241 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t240, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t241, ptr %l109
  br label %bb44
bb44:
  %t242 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e28
  br i1 %t242, label %bb45, label %bb46
bb45:
  %t244 = load i64, ptr %l107
  %t245 = inttoptr i64 %t244 to ptr
  %t246 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109, i32 0, i32 0
  %t247 = load { i64, ptr }, ptr %t246
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = call ptr @__olang_region_or(ptr %t248, ptr null)
  %t250 = icmp ne ptr %t249, null
  %t251 = select i1 %t250, ptr %t249, ptr null
  %t252 = icmp eq ptr %t251, %t245
  call void @__olang_region_settle(ptr %t245, i1 %t252)
  br label %bb46
bb46:
  %t253 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l33
  %t254 = ptrtoint ptr %v0 to i64
  store i64 %t254, ptr %l111, !tbaa !24
  %t255 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e29
  br i1 %t255, label %bb47, label %bb48
bb47:
  %t257 = call ptr @__olang_region_make(ptr %v0)
  %t258 = ptrtoint ptr %t257 to i64
  store i64 %t258, ptr %l111, !tbaa !24
  br label %bb48
bb48:
  %t259 = load i64, ptr %l111
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t260, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t261, ptr %l113
  br label %bb49
bb49:
  %t262 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e29
  br i1 %t262, label %bb50, label %bb51
bb50:
  %t264 = load i64, ptr %l111
  %t265 = inttoptr i64 %t264 to ptr
  %t266 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113, i32 0, i32 0
  %t267 = load { i64, ptr }, ptr %t266
  %t268 = extractvalue { i64, ptr } %t267, 1
  %t269 = call ptr @__olang_region_or(ptr %t268, ptr null)
  %t270 = icmp ne ptr %t269, null
  %t271 = select i1 %t270, ptr %t269, ptr null
  %t272 = icmp eq ptr %t271, %t265
  call void @__olang_region_settle(ptr %t265, i1 %t272)
  br label %bb51
bb51:
  %t273 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %l34
  %t274 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %l115
  br label %bb52
bb52:
  %t275 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t275, ptr %l35
  store i64 -1, ptr %l36, !tbaa !24
  store i1 false, ptr %l37, !tbaa !21
  store i64 0, ptr %l38, !tbaa !24
  store i64 -1, ptr %l39, !tbaa !24
  store i64 -1, ptr %l40, !tbaa !24
  store i1 false, ptr %l41, !tbaa !21
  store i64 -1, ptr %l42, !tbaa !24
  %t276 = ptrtoint ptr %v0 to i64
  store i64 %t276, ptr %l116, !tbaa !24
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e38
  br i1 %t277, label %bb53, label %bb54
bb53:
  %t279 = call ptr @__olang_region_make(ptr %v0)
  %t280 = ptrtoint ptr %t279 to i64
  store i64 %t280, ptr %l116, !tbaa !24
  br label %bb54
bb54:
  %t281 = load i64, ptr %l116
  %t282 = inttoptr i64 %t281 to ptr
  %t283 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t282, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t283, ptr %l118
  br label %bb55
bb55:
  %t284 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e38
  br i1 %t284, label %bb56, label %bb57
bb56:
  %t286 = load i64, ptr %l116
  %t287 = inttoptr i64 %t286 to ptr
  %t288 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118, i32 0, i32 0
  %t289 = load { i64, ptr }, ptr %t288
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = call ptr @__olang_region_or(ptr %t290, ptr null)
  %t292 = icmp ne ptr %t291, null
  %t293 = select i1 %t292, ptr %t291, ptr null
  %t294 = icmp eq ptr %t293, %t287
  call void @__olang_region_settle(ptr %t287, i1 %t294)
  br label %bb57
bb57:
  %t295 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t295, ptr %l43
  %t296 = ptrtoint ptr %v0 to i64
  store i64 %t296, ptr %l120, !tbaa !24
  %t297 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e39
  br i1 %t297, label %bb58, label %bb59
bb58:
  %t299 = call ptr @__olang_region_make(ptr %v0)
  %t300 = ptrtoint ptr %t299 to i64
  store i64 %t300, ptr %l120, !tbaa !24
  br label %bb59
bb59:
  %t301 = load i64, ptr %l120
  %t302 = inttoptr i64 %t301 to ptr
  %t303 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t302, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l122
  br label %bb60
bb60:
  %t304 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e39
  br i1 %t304, label %bb61, label %bb62
bb61:
  %t306 = load i64, ptr %l120
  %t307 = inttoptr i64 %t306 to ptr
  %t308 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122, i32 0, i32 0
  %t309 = load { i64, ptr }, ptr %t308
  %t310 = extractvalue { i64, ptr } %t309, 1
  %t311 = call ptr @__olang_region_or(ptr %t310, ptr null)
  %t312 = icmp ne ptr %t311, null
  %t313 = select i1 %t312, ptr %t311, ptr null
  %t314 = icmp eq ptr %t313, %t307
  call void @__olang_region_settle(ptr %t307, i1 %t314)
  br label %bb62
bb62:
  %t315 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t315, ptr %l44
  %t316 = ptrtoint ptr %v0 to i64
  store i64 %t316, ptr %l124, !tbaa !24
  %t317 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e40
  br i1 %t317, label %bb63, label %bb64
bb63:
  %t319 = call ptr @__olang_region_make(ptr %v0)
  %t320 = ptrtoint ptr %t319 to i64
  store i64 %t320, ptr %l124, !tbaa !24
  br label %bb64
bb64:
  %t321 = load i64, ptr %l124
  %t322 = inttoptr i64 %t321 to ptr
  %t323 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t322, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l126
  br label %bb65
bb65:
  %t324 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e40
  br i1 %t324, label %bb66, label %bb67
bb66:
  %t326 = load i64, ptr %l124
  %t327 = inttoptr i64 %t326 to ptr
  %t328 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l126, i32 0, i32 0
  %t329 = load { i64, ptr }, ptr %t328
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = call ptr @__olang_region_or(ptr %t330, ptr null)
  %t332 = icmp ne ptr %t331, null
  %t333 = select i1 %t332, ptr %t331, ptr null
  %t334 = icmp eq ptr %t333, %t327
  call void @__olang_region_settle(ptr %t327, i1 %t334)
  br label %bb67
bb67:
  %t335 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l126
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t335, ptr %l45
  store i64 0, ptr %l46, !tbaa !24
  store i64 0, ptr %l47, !tbaa !24
  %t336 = ptrtoint ptr %v0 to i64
  store i64 %t336, ptr %l128, !tbaa !24
  %t337 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e43
  br i1 %t337, label %bb68, label %bb69
bb68:
  %t339 = call ptr @__olang_region_make(ptr %v0)
  %t340 = ptrtoint ptr %t339 to i64
  store i64 %t340, ptr %l128, !tbaa !24
  br label %bb69
bb69:
  %t341 = load i64, ptr %l128
  %t342 = inttoptr i64 %t341 to ptr
  %t343 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %t342)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t343, ptr %l130
  br label %bb70
bb70:
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e43
  br i1 %t344, label %bb71, label %bb72
bb71:
  %t346 = load i64, ptr %l128
  %t347 = inttoptr i64 %t346 to ptr
  %t348 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l130, i32 0, i32 2
  %t349 = load { i64, ptr }, ptr %t348
  %t350 = extractvalue { i64, ptr } %t349, 1
  %t351 = call ptr @__olang_region_or(ptr %t350, ptr null)
  %t352 = icmp ne ptr %t351, null
  %t353 = select i1 %t352, ptr %t351, ptr null
  %t354 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l130, i32 0, i32 1
  %t355 = load { i64, ptr }, ptr %t354
  %t356 = extractvalue { i64, ptr } %t355, 1
  %t357 = call ptr @__olang_region_or(ptr %t356, ptr null)
  %t358 = icmp ne ptr %t357, null
  %t359 = select i1 %t358, ptr %t357, ptr %t353
  %t360 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l130, i32 0, i32 0
  %t361 = load { i64, ptr }, ptr %t360
  %t362 = extractvalue { i64, ptr } %t361, 1
  %t363 = call ptr @__olang_region_or(ptr %t362, ptr null)
  %t364 = icmp ne ptr %t363, null
  %t365 = select i1 %t364, ptr %t363, ptr %t359
  %t366 = icmp eq ptr %t365, %t347
  call void @__olang_region_settle(ptr %t347, i1 %t366)
  br label %bb72
bb72:
  %t367 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l130
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t367, ptr %l48
  %t368 = ptrtoint ptr %v0 to i64
  store i64 %t368, ptr %l132, !tbaa !24
  %t369 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e44
  br i1 %t369, label %bb73, label %bb74
bb73:
  %t371 = call ptr @__olang_region_make(ptr %v0)
  %t372 = ptrtoint ptr %t371 to i64
  store i64 %t372, ptr %l132, !tbaa !24
  br label %bb74
bb74:
  %t373 = load i64, ptr %l132
  %t374 = inttoptr i64 %t373 to ptr
  %t375 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t374)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t375, ptr %l134
  br label %bb75
bb75:
  %t376 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e44
  br i1 %t376, label %bb76, label %bb77
bb76:
  %t378 = load i64, ptr %l132
  %t379 = inttoptr i64 %t378 to ptr
  %t380 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l134, i32 0, i32 2
  %t381 = load { i64, ptr }, ptr %t380
  %t382 = extractvalue { i64, ptr } %t381, 1
  %t383 = call ptr @__olang_region_or(ptr %t382, ptr null)
  %t384 = icmp ne ptr %t383, null
  %t385 = select i1 %t384, ptr %t383, ptr null
  %t386 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l134, i32 0, i32 1
  %t387 = load { i64, ptr }, ptr %t386
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = call ptr @__olang_region_or(ptr %t388, ptr null)
  %t390 = icmp ne ptr %t389, null
  %t391 = select i1 %t390, ptr %t389, ptr %t385
  %t392 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l134, i32 0, i32 0
  %t393 = load { i64, ptr }, ptr %t392
  %t394 = extractvalue { i64, ptr } %t393, 1
  %t395 = call ptr @__olang_region_or(ptr %t394, ptr null)
  %t396 = icmp ne ptr %t395, null
  %t397 = select i1 %t396, ptr %t395, ptr %t391
  %t398 = icmp eq ptr %t397, %t379
  call void @__olang_region_settle(ptr %t379, i1 %t398)
  br label %bb77
bb77:
  %t399 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l134
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t399, ptr %l49
  store i64 -1, ptr %l50, !tbaa !24
  %t400 = ptrtoint ptr %v0 to i64
  store i64 %t400, ptr %l136, !tbaa !24
  %t401 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e46
  br i1 %t401, label %bb78, label %bb79
bb78:
  %t403 = call ptr @__olang_region_make(ptr %v0)
  %t404 = ptrtoint ptr %t403 to i64
  store i64 %t404, ptr %l136, !tbaa !24
  br label %bb79
bb79:
  %t405 = load i64, ptr %l136
  %t406 = inttoptr i64 %t405 to ptr
  %t407 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2ector(ptr %t406, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t407, ptr %l138
  br label %bb80
bb80:
  %t408 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e46
  br i1 %t408, label %bb81, label %bb82
bb81:
  %t410 = load i64, ptr %l136
  %t411 = inttoptr i64 %t410 to ptr
  %t412 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138, i32 0, i32 0
  %t413 = load { i64, ptr }, ptr %t412
  %t414 = extractvalue { i64, ptr } %t413, 1
  %t415 = call ptr @__olang_region_or(ptr %t414, ptr null)
  %t416 = icmp ne ptr %t415, null
  %t417 = select i1 %t416, ptr %t415, ptr null
  %t418 = icmp eq ptr %t417, %t411
  call void @__olang_region_settle(ptr %t411, i1 %t418)
  br label %bb82
bb82:
  %t419 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t419, ptr %l51
  %t420 = ptrtoint ptr %v0 to i64
  store i64 %t420, ptr %l140, !tbaa !24
  %t421 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e47
  br i1 %t421, label %bb83, label %bb84
bb83:
  %t423 = call ptr @__olang_region_make(ptr %v0)
  %t424 = ptrtoint ptr %t423 to i64
  store i64 %t424, ptr %l140, !tbaa !24
  br label %bb84
bb84:
  %t425 = load i64, ptr %l140
  %t426 = inttoptr i64 %t425 to ptr
  %t427 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t426, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t427, ptr %l142
  br label %bb85
bb85:
  %t428 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e47
  br i1 %t428, label %bb86, label %bb87
bb86:
  %t430 = load i64, ptr %l140
  %t431 = inttoptr i64 %t430 to ptr
  %t432 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l142, i32 0, i32 0
  %t433 = load { i64, ptr }, ptr %t432
  %t434 = extractvalue { i64, ptr } %t433, 1
  %t435 = call ptr @__olang_region_or(ptr %t434, ptr null)
  %t436 = icmp ne ptr %t435, null
  %t437 = select i1 %t436, ptr %t435, ptr null
  %t438 = icmp eq ptr %t437, %t431
  call void @__olang_region_settle(ptr %t431, i1 %t438)
  br label %bb87
bb87:
  %t439 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l142
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t439, ptr %l52
  %t440 = ptrtoint ptr %v0 to i64
  store i64 %t440, ptr %l144, !tbaa !24
  %t441 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e48
  br i1 %t441, label %bb88, label %bb89
bb88:
  %t443 = call ptr @__olang_region_make(ptr %v0)
  %t444 = ptrtoint ptr %t443 to i64
  store i64 %t444, ptr %l144, !tbaa !24
  br label %bb89
bb89:
  %t445 = icmp sge i64 0, 0
  br i1 %t445, label %bb90, label %bb91
bb90:
  %t447 = icmp sle i64 0, 2305843009213693951
  br i1 %t447, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_8df4ab6431d52630_31943992274c649c)
  unreachable
bb92:
  %t449 = mul i64 0, 4
  %t450 = load i64, ptr %l144
  %t451 = inttoptr i64 %t450 to ptr
  %t452 = insertvalue { i64, ptr } undef, i64 0, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t453, ptr %l53, !tbaa !27
  store i1 false, ptr %l54, !tbaa !21
  %t455 = ptrtoint ptr %v0 to i64
  store i64 %t455, ptr %l149, !tbaa !24
  %t456 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e50
  br i1 %t456, label %bb94, label %bb95
bb93:
  call void @__olang_check_failed(ptr @olang_loc_8df4ab6431d52630_31943992274c649c)
  unreachable
bb94:
  %t458 = call ptr @__olang_region_make(ptr %v0)
  %t459 = ptrtoint ptr %t458 to i64
  store i64 %t459, ptr %l149, !tbaa !24
  br label %bb95
bb95:
  %t460 = load i64, ptr %l149
  %t461 = inttoptr i64 %t460 to ptr
  %t462 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ector(ptr %t461, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t462, ptr %l151
  br label %bb96
bb96:
  %t463 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e50
  br i1 %t463, label %bb97, label %bb98
bb97:
  %t465 = load i64, ptr %l149
  %t466 = inttoptr i64 %t465 to ptr
  %t467 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151, i32 0, i32 0
  %t468 = load { i64, ptr }, ptr %t467
  %t469 = extractvalue { i64, ptr } %t468, 1
  %t470 = call ptr @__olang_region_or(ptr %t469, ptr null)
  %t471 = icmp ne ptr %t470, null
  %t472 = select i1 %t471, ptr %t470, ptr null
  %t473 = icmp eq ptr %t472, %t466
  call void @__olang_region_settle(ptr %t466, i1 %t473)
  br label %bb98
bb98:
  %t474 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t474, ptr %l55
  %t475 = icmp sge i64 0, 0
  br i1 %t475, label %bb99, label %bb100
bb99:
  %t477 = icmp sle i64 0, 1152921504606846975
  br i1 %t477, label %bb101, label %bb102
bb100:
  call void @__olang_check_failed(ptr @olang_loc_c67c2282dc8bf9dd_b54d55782b869669)
  unreachable
bb101:
  %t479 = mul i64 0, 8
  %t480 = insertvalue { i64, ptr } undef, i64 0, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t481, ptr %l56, !tbaa !27
  store i64 0, ptr %l57, !tbaa !24
  store i64 0, ptr %l58, !tbaa !24
  %t483 = ptrtoint ptr %v0 to i64
  store i64 %t483, ptr %l156, !tbaa !24
  %t484 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e54
  br i1 %t484, label %bb103, label %bb104
bb102:
  call void @__olang_check_failed(ptr @olang_loc_c67c2282dc8bf9dd_b54d55782b869669)
  unreachable
bb103:
  %t486 = call ptr @__olang_region_make(ptr %v0)
  %t487 = ptrtoint ptr %t486 to i64
  store i64 %t487, ptr %l156, !tbaa !24
  br label %bb104
bb104:
  %t488 = load i64, ptr %l156
  %t489 = inttoptr i64 %t488 to ptr
  %t490 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %t489)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t490, ptr %l158
  br label %bb105
bb105:
  %t491 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e54
  br i1 %t491, label %bb106, label %bb107
bb106:
  %t493 = load i64, ptr %l156
  %t494 = inttoptr i64 %t493 to ptr
  %t495 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158, i32 0, i32 2
  %t496 = load { i64, ptr }, ptr %t495
  %t497 = extractvalue { i64, ptr } %t496, 1
  %t498 = call ptr @__olang_region_or(ptr %t497, ptr null)
  %t499 = icmp ne ptr %t498, null
  %t500 = select i1 %t499, ptr %t498, ptr null
  %t501 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158, i32 0, i32 1
  %t502 = load { i64, ptr }, ptr %t501
  %t503 = extractvalue { i64, ptr } %t502, 1
  %t504 = call ptr @__olang_region_or(ptr %t503, ptr null)
  %t505 = icmp ne ptr %t504, null
  %t506 = select i1 %t505, ptr %t504, ptr %t500
  %t507 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158, i32 0, i32 0
  %t508 = load { i64, ptr }, ptr %t507
  %t509 = extractvalue { i64, ptr } %t508, 1
  %t510 = call ptr @__olang_region_or(ptr %t509, ptr null)
  %t511 = icmp ne ptr %t510, null
  %t512 = select i1 %t511, ptr %t510, ptr %t506
  %t513 = icmp eq ptr %t512, %t494
  call void @__olang_region_settle(ptr %t494, i1 %t513)
  br label %bb107
bb107:
  %t514 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t514, ptr %l59
  %t515 = ptrtoint ptr %v0 to i64
  store i64 %t515, ptr %l160, !tbaa !24
  %t516 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e55
  br i1 %t516, label %bb108, label %bb109
bb108:
  %t518 = call ptr @__olang_region_make(ptr %v0)
  %t519 = ptrtoint ptr %t518 to i64
  store i64 %t519, ptr %l160, !tbaa !24
  br label %bb109
bb109:
  %t520 = load i64, ptr %l160
  %t521 = inttoptr i64 %t520 to ptr
  %t522 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t521)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t522, ptr %l162
  br label %bb110
bb110:
  %t523 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e55
  br i1 %t523, label %bb111, label %bb112
bb111:
  %t525 = load i64, ptr %l160
  %t526 = inttoptr i64 %t525 to ptr
  %t527 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162, i32 0, i32 2
  %t528 = load { i64, ptr }, ptr %t527
  %t529 = extractvalue { i64, ptr } %t528, 1
  %t530 = call ptr @__olang_region_or(ptr %t529, ptr null)
  %t531 = icmp ne ptr %t530, null
  %t532 = select i1 %t531, ptr %t530, ptr null
  %t533 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162, i32 0, i32 1
  %t534 = load { i64, ptr }, ptr %t533
  %t535 = extractvalue { i64, ptr } %t534, 1
  %t536 = call ptr @__olang_region_or(ptr %t535, ptr null)
  %t537 = icmp ne ptr %t536, null
  %t538 = select i1 %t537, ptr %t536, ptr %t532
  %t539 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162, i32 0, i32 0
  %t540 = load { i64, ptr }, ptr %t539
  %t541 = extractvalue { i64, ptr } %t540, 1
  %t542 = call ptr @__olang_region_or(ptr %t541, ptr null)
  %t543 = icmp ne ptr %t542, null
  %t544 = select i1 %t543, ptr %t542, ptr %t538
  %t545 = icmp eq ptr %t544, %t526
  call void @__olang_region_settle(ptr %t526, i1 %t545)
  br label %bb112
bb112:
  %t546 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t546, ptr %l60
  store i64 0, ptr %l61, !tbaa !24
  %t547 = ptrtoint ptr %v0 to i64
  store i64 %t547, ptr %l164, !tbaa !24
  %t548 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e57
  br i1 %t548, label %bb113, label %bb114
bb113:
  %t550 = call ptr @__olang_region_make(ptr %v0)
  %t551 = ptrtoint ptr %t550 to i64
  store i64 %t551, ptr %l164, !tbaa !24
  br label %bb114
bb114:
  %t552 = load i64, ptr %l164
  %t553 = inttoptr i64 %t552 to ptr
  %t554 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2ector(ptr %t553, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t554, ptr %l166
  br label %bb115
bb115:
  %t555 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e57
  br i1 %t555, label %bb116, label %bb117
bb116:
  %t557 = load i64, ptr %l164
  %t558 = inttoptr i64 %t557 to ptr
  %t559 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166, i32 0, i32 0
  %t560 = load { i64, ptr }, ptr %t559
  %t561 = extractvalue { i64, ptr } %t560, 1
  %t562 = call ptr @__olang_region_or(ptr %t561, ptr null)
  %t563 = icmp ne ptr %t562, null
  %t564 = select i1 %t563, ptr %t562, ptr null
  %t565 = icmp eq ptr %t564, %t558
  call void @__olang_region_settle(ptr %t558, i1 %t565)
  br label %bb117
bb117:
  %t566 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t566, ptr %l62
  %t567 = ptrtoint ptr %v0 to i64
  store i64 %t567, ptr %l168, !tbaa !24
  %t568 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e58
  br i1 %t568, label %bb118, label %bb119
bb118:
  %t570 = call ptr @__olang_region_make(ptr %v0)
  %t571 = ptrtoint ptr %t570 to i64
  store i64 %t571, ptr %l168, !tbaa !24
  br label %bb119
bb119:
  %t572 = load i64, ptr %l168
  %t573 = inttoptr i64 %t572 to ptr
  %t574 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t573, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t574, ptr %l170
  br label %bb120
bb120:
  %t575 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e58
  br i1 %t575, label %bb121, label %bb122
bb121:
  %t577 = load i64, ptr %l168
  %t578 = inttoptr i64 %t577 to ptr
  %t579 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170, i32 0, i32 0
  %t580 = load { i64, ptr }, ptr %t579
  %t581 = extractvalue { i64, ptr } %t580, 1
  %t582 = call ptr @__olang_region_or(ptr %t581, ptr null)
  %t583 = icmp ne ptr %t582, null
  %t584 = select i1 %t583, ptr %t582, ptr null
  %t585 = icmp eq ptr %t584, %t578
  call void @__olang_region_settle(ptr %t578, i1 %t585)
  br label %bb122
bb122:
  %t586 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t586, ptr %l63
  %t587 = ptrtoint ptr %v0 to i64
  store i64 %t587, ptr %l172, !tbaa !24
  %t588 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e59
  br i1 %t588, label %bb123, label %bb124
bb123:
  %t590 = call ptr @__olang_region_make(ptr %v0)
  %t591 = ptrtoint ptr %t590 to i64
  store i64 %t591, ptr %l172, !tbaa !24
  br label %bb124
bb124:
  %t592 = load i64, ptr %l172
  %t593 = inttoptr i64 %t592 to ptr
  %t594 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2ector(ptr %t593, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t594, ptr %l174
  br label %bb125
bb125:
  %t595 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e59
  br i1 %t595, label %bb126, label %bb127
bb126:
  %t597 = load i64, ptr %l172
  %t598 = inttoptr i64 %t597 to ptr
  %t599 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l174, i32 0, i32 0
  %t600 = load { i64, ptr }, ptr %t599
  %t601 = extractvalue { i64, ptr } %t600, 1
  %t602 = call ptr @__olang_region_or(ptr %t601, ptr null)
  %t603 = icmp ne ptr %t602, null
  %t604 = select i1 %t603, ptr %t602, ptr null
  %t605 = icmp eq ptr %t604, %t598
  call void @__olang_region_settle(ptr %t598, i1 %t605)
  br label %bb127
bb127:
  %t606 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l174
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t606, ptr %l64
  %t607 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t607, ptr %l176
  br label %bb128
bb128:
  %t608 = load %"compiler/source:Span", ptr %l176
  %t609 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 0
  %t610 = load i64, ptr %l5, !tbaa !24
  store i64 %t610, ptr %t609, !tbaa !24
  %t611 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 1
  %t612 = load i64, ptr %l6, !tbaa !24
  store i64 %t612, ptr %t611, !tbaa !24
  %t613 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 2
  %t614 = load i64, ptr %l7, !tbaa !24
  store i64 %t614, ptr %t613, !tbaa !24
  %t615 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 3
  %t616 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t616, ptr %t615
  %t617 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t617, ptr %l9, i64 160, i1 false)
  %t618 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 5
  %t619 = load i32, ptr %l10, !tbaa !23
  store i32 %t619, ptr %t618, !tbaa !23
  %t620 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 6
  %t621 = load i32, ptr %l11, !tbaa !23
  store i32 %t621, ptr %t620, !tbaa !23
  %t622 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 7
  %t623 = load i64, ptr %l12, !tbaa !24
  store i64 %t623, ptr %t622, !tbaa !24
  %t624 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 8
  %t625 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t625, ptr %t624
  %t626 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 9
  %t627 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t627, ptr %t626
  %t628 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 10
  %t629 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t629, ptr %t628
  %t630 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 11
  %t631 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t631, ptr %t630
  %t632 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 12
  %t633 = load i1, ptr %l17, !tbaa !21
  store i1 %t633, ptr %t632, !tbaa !21
  %t634 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 13
  %t635 = load i1, ptr %l18, !tbaa !21
  store i1 %t635, ptr %t634, !tbaa !21
  %t636 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 14
  %t637 = load i32, ptr %l19, !tbaa !23
  store i32 %t637, ptr %t636, !tbaa !23
  %t638 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 15
  %t639 = load i64, ptr %l20, !tbaa !24
  store i64 %t639, ptr %t638, !tbaa !24
  %t640 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 16
  %t641 = load i64, ptr %l21, !tbaa !24
  store i64 %t641, ptr %t640, !tbaa !24
  %t642 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 17
  %t643 = load i64, ptr %l22, !tbaa !24
  store i64 %t643, ptr %t642, !tbaa !24
  %t644 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 18
  %t645 = load i1, ptr %l23, !tbaa !21
  store i1 %t645, ptr %t644, !tbaa !21
  %t646 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 19
  %t647 = load i64, ptr %l24, !tbaa !24
  store i64 %t647, ptr %t646, !tbaa !24
  %t648 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 20
  %t649 = load i1, ptr %l25, !tbaa !21
  store i1 %t649, ptr %t648, !tbaa !21
  %t650 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 21
  %t651 = load i64, ptr %l26, !tbaa !24
  store i64 %t651, ptr %t650, !tbaa !24
  %t652 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 22
  %t653 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t653, ptr %t652
  %t654 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 23
  %t655 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t655, ptr %t654
  %t656 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 24
  %t657 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t657, ptr %t656
  %t658 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 25
  %t659 = load i1, ptr %l30, !tbaa !21
  store i1 %t659, ptr %t658, !tbaa !21
  %t660 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 26
  %t661 = load i1, ptr %l31, !tbaa !21
  store i1 %t661, ptr %t660, !tbaa !21
  %t662 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 27
  %t663 = load i1, ptr %l32, !tbaa !21
  store i1 %t663, ptr %t662, !tbaa !21
  %t664 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 28
  %t665 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t665, ptr %t664
  %t666 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 29
  %t667 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t667, ptr %t666
  %t668 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 30
  %t669 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t669, ptr %t668
  %t670 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 31
  %t671 = load i64, ptr %l36, !tbaa !24
  store i64 %t671, ptr %t670, !tbaa !24
  %t672 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 32
  %t673 = load i1, ptr %l37, !tbaa !21
  store i1 %t673, ptr %t672, !tbaa !21
  %t674 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 33
  %t675 = load i64, ptr %l38, !tbaa !24
  store i64 %t675, ptr %t674, !tbaa !24
  %t676 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 34
  %t677 = load i64, ptr %l39, !tbaa !24
  store i64 %t677, ptr %t676, !tbaa !24
  %t678 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 35
  %t679 = load i64, ptr %l40, !tbaa !24
  store i64 %t679, ptr %t678, !tbaa !24
  %t680 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 36
  %t681 = load i1, ptr %l41, !tbaa !21
  store i1 %t681, ptr %t680, !tbaa !21
  %t682 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 37
  %t683 = load i64, ptr %l42, !tbaa !24
  store i64 %t683, ptr %t682, !tbaa !24
  %t684 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 38
  %t685 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t685, ptr %t684
  %t686 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 39
  %t687 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t687, ptr %t686
  %t688 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 40
  %t689 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t689, ptr %t688
  %t690 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 41
  %t691 = load i64, ptr %l46, !tbaa !24
  store i64 %t691, ptr %t690, !tbaa !24
  %t692 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 42
  %t693 = load i64, ptr %l47, !tbaa !24
  store i64 %t693, ptr %t692, !tbaa !24
  %t694 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 43
  %t695 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t695, ptr %t694
  %t696 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 44
  %t697 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t697, ptr %t696
  %t698 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 45
  %t699 = load i64, ptr %l50, !tbaa !24
  store i64 %t699, ptr %t698, !tbaa !24
  %t700 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 46
  %t701 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t701, ptr %t700
  %t702 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 47
  %t703 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t703, ptr %t702
  %t704 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 48
  %t705 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t705, ptr %t704, !tbaa !27
  %t706 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 49
  %t707 = load i1, ptr %l54, !tbaa !21
  store i1 %t707, ptr %t706, !tbaa !21
  %t708 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 50
  %t709 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t709, ptr %t708
  %t710 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 51
  %t711 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t711, ptr %t710, !tbaa !27
  %t712 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 52
  %t713 = load i64, ptr %l57, !tbaa !24
  store i64 %t713, ptr %t712, !tbaa !24
  %t714 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 53
  %t715 = load i64, ptr %l58, !tbaa !24
  store i64 %t715, ptr %t714, !tbaa !24
  %t716 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 54
  %t717 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t717, ptr %t716
  %t718 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 55
  %t719 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t719, ptr %t718
  %t720 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 56
  %t721 = load i64, ptr %l61, !tbaa !24
  store i64 %t721, ptr %t720, !tbaa !24
  %t722 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 57
  %t723 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t723, ptr %t722
  %t724 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 58
  %t725 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t725, ptr %t724
  %t726 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 59
  %t727 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t727, ptr %t726
  %t728 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 60
  store %"compiler/source:Span" %t608, ptr %t728
  %t730 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 61
  store i64 -1, ptr %t730, !tbaa !24
  %t732 = getelementptr %"compiler/check:frame", ptr %l177, i32 0, i32 62
  store i1 false, ptr %t732, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l177, i64 1488, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:setAt" @compiler_2fcheck_3asetAt_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, i32 %a5) #0 {
entry:
  %rv = alloca %"compiler/check:setAt"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/check:setAt" undef, ptr %a0, 0
  %t16 = insertvalue %"compiler/check:setAt" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/check:setAt" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/check:setAt" %t18, { i64, ptr } %a3, 3
  %t22 = insertvalue %"compiler/check:setAt" %t20, %"compiler/source:Span" %a4, 4
  %t24 = insertvalue %"compiler/check:setAt" %t22, i32 %a5, 5
  store %"compiler/check:setAt" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:setAt", ptr %rv
  ret %"compiler/check:setAt" %rr
}

@.d0 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"LeadingZeros" }>, align 8
@.d1 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"TrailingZeros" }>, align 8
@.d2 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"PopCount" }>, align 8
@.d3 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"RotateLeft" }>, align 8
@.d4 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"RotateRight" }>, align 8
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ByteSwap" }>, align 8
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
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@__olang_empty_array = external constant [16 x i64]
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d9 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Char" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"has no zero value (a never-null reference field - hold it as ?&)" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e50 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e(ptr %v0, ptr %a0) #0 {
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
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fcheck_3aframe_2e46 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 48
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 48
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e59 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %a0) #0 {
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
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

@.d22 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"break" }>, align 8
@.d23 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"continue" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'['" }>, align 8
@.d31 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"a generic type's constructor with its arguments inferred (G10c)" }>, align 8
@.d32 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e155 = weak hidden constant i1 false
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"if" }>, align 8
@.d34 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extern " }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G42 " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.c38 = private unnamed_addr constant [5 x i8] c"true\00"
@.c39 = private unnamed_addr constant [6 x i8] c"false\00"
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
@.d44 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extends" }>, align 8
@.d45 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"std/prelude/enums" }>, align 8
@.d46 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"CaseError" }>, align 8
@.d47 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"WrongCase" }>, align 8
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e8 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e23 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e29 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e38 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e39 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e40 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e43 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e44 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e47 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e48 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e54 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e55 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e57 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e58 = weak hidden constant i1 false
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
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_a3fc486149a2dc5d_17491af4361141b9 = external constant [0 x i8]
@olang_loc_6e7767865267b99e_88e6ff5d2bea5fe2 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyAs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_30630aa0385ef6ff_761547ceb2a660b3 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_383f9ac3750cc0fe_a676b835dd8ab732 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsAsNotEnum(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsNeedsCase(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsNothing(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d7812add9a78f336_89874a21e94d300a = external constant [0 x i8]
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ca088269e212954c_d643913a2551dac8 = external constant [0 x i8]
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
@olang_loc_fd984862ae15b7b5_96e74f0ca55af519 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_a0ac7fb68fc18e63_e7992ce8b2dc82a7 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotRecord(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNullIn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnsNotRecord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnNamedLikeMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
@olang_loc_4c9c833eaa4b60d2_fcb8574bf2eb70de = external constant [0 x i8]
declare %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCompr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisVec(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalksAny(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprWalk(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
@olang_loc_c88c63bc20ded7e7_43b7d4bfded0708b = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, %"compiler/check:litBuilder" %a3, i32 %a4, ptr %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H383d843b0981793a095b02d794e40659(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eRemove_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H044304b59760c17b661e6227d2ca1ac9(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValWordText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ef1b55de5ffdb81c_e69d95fc2038dfd0 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eRoleDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_faa783041b9a956_eb67b4cbf5431592 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %v0, i32 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, %"compiler/typed:Item" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4 = external constant [0 x i8]
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternParam(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallbackType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedByValueC(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExternType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExternResult(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisArrayCtor(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7d50ab2c5aa12498_8b4c363ee458c734 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eplainLen(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountsTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
@olang_loc_f2a7fa70aeee1b69_e04ea7b1678bce65 = external constant [0 x i8]
@olang_loc_59e28be1bec28929_cee55857b56fdddd = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
@olang_loc_e018255d83e94bb3_dcb9197bd54aa96f = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emodOfFile(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2eskipsRest(ptr %v0, ptr %a0)
@olang_loc_bb0c9585cb5cd0e5_782fa8d07097a5f1 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
@olang_loc_78bdf75b8d9b61cd_a447015cda228549 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a3ad144bf6dfe67e_aaa74880c72315a2 = external constant [0 x i8]
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8fffa2dcb89c09a5_7d27f2eeb87e61a1 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflInt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexNotConst(ptr %v0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, { i64, ptr } %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
@olang_loc_23e55da1d35c3b26_9d147ecacbf30ffa = external constant [0 x i8]
@olang_loc_2136f99ca1795ebb_470e73d5134ce74f = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoIndex(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
@olang_loc_da5fb2c1be530ed4_472d2caf6c74c4d8 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorTypeArgsNotInferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_2480f58a13db02ac_810628fb6d336178 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eLen__H4e51b5ca7b68af485b8486164a690a5f(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsBy(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflMatchSubject(ptr %v0)
@olang_loc_775dfd67c7206a52_c2d8bc16e2444876 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordBefore(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMatchGuard(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisWildType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2eLen_3ccompiler_2fcheck_3atypeCase_3e(ptr %v0, ptr %a0)
declare %"compiler/check:typeCase" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2eAt_3ccompiler_2fcheck_3atypeCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflCaseUnreachable(ptr %v0)
declare %"compiler/check:typeCase" @compiler_2fcheck_3atypeCase_2ector(ptr %v0, i1 %a0, i1 %a1, i32 %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atypeCase_3e_2ePush_3ccompiler_2fcheck_3atypeCase_3e(ptr %v0, ptr %a0, %"compiler/check:typeCase" %a1)
declare %"compiler/check:typeCase" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseHolds(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:typeCase" %a1, i32 %a2, ptr %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMatchUncovered(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamIndex(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettle(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc78234e963d75e4843d79dfd3cff7b8f(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efileIdentity(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b4fa9ecc50f06b0b_d6ee486f71837477 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_efc3d234eb1501de_4d27d8d6a326f0a = external constant [0 x i8]
@olang_loc_7655d192ba63d713_67a9153eaa817cdf = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBad(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadHoldsRef(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSettleRaised(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@olang_loc_e722c21055ee6b49_58bcebf0b772fb7d = external constant [0 x i8]
@olang_loc_eca48244095fc078_aacf4c954a6e214c = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNamesType(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_42d76eb8aa19d24d_a6d8d644d4fa1309 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotStruct(ptr %v0)
@olang_loc_e4a3554ab68c2525_45e0e0bdd3564951 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorVarRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edtorWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawTable(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_Hfe32448d245bb62a962210add151a121(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_ae3b040bf00e496e_c2dc96e6bf91aeba = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclaredOverAggregate(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsSelf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayTypeHoldsItself(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_23ed2e0ac54fea2f_24addeed96b3b3b = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_81bd4658a32363f8_61d6b01a3b44059c = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExtendsNotBase(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRules(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedRules(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@olang_loc_fbb347671bce929e_e992a88db50b1b5a = external constant [0 x i8]
declare ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2etwos(%"compiler/check:litv" %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %a0, i128 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
@olang_loc_a18b02733ea53beb_f9e22fb852fb348f = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_8df4ab6431d52630_31943992274c649c = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_c67c2282dc8bf9dd_b54d55782b869669 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
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
