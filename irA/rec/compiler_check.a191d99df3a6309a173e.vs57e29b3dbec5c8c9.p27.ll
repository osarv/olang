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
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/typed:ContractInfo" = type { { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/check:ctSource" = type { ptr, ptr, { i64, ptr }, i64, { i64, ptr } }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:weakPlace" = type { { i64, [3 x i64] }, { i64, ptr }, i64 }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:effectPlace" = type { i64, i64, %"compiler/source:Span", ptr, i32, i32 }
%"compiler/effects:Verdict" = type { { i64, ptr }, { i64, ptr }, i1, i32, { i64, ptr }, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
define dso_local i1 @compiler_2fcheck_2ecommutative(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 68 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 70 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t14 = trunc i64 101 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t20 = trunc i64 102 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t26 = trunc i64 103 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 64
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = sub i64 0, 1
  store i64 %t11, ptr %l8, !tbaa !65
  br label %bb4
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = load i64, ptr %l10, !tbaa !24
  %t16 = shl i64 1, %t15
  %t18 = sub i64 %t16, 1
  store i64 %t18, ptr %l8, !tbaa !65
  br label %bb4
bb4:
  %t20 = load i64, ptr %l8, !tbaa !65
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebang(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca i1
  %lp10 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i32
  %l35 = alloca i32
  %l40 = alloca i32
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i1
  %l61 = alloca i1
  %l64 = alloca i32
  %l67 = alloca i1
  %l69 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca %"compiler/diagmsg:Msg"
  %l82 = alloca i64
  %l85 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l92 = alloca i32
  %l94 = alloca ptr
  %l98 = alloca %"compiler/typed:Try"
  %l102 = alloca ptr
  %l106 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t182 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a3, ptr %l3
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
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 28
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 16
  %t14 = load i64, ptr %t13, !tbaa !24
  store i64 %t14, ptr %l6, !tbaa !24
  %t16 = load ptr, ptr %l4, !tbaa !29
  store ptr %t16, ptr %l18, !tbaa !29
  %t17 = load ptr, ptr %l18, !tbaa !29
  %t18 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 15
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t23, i32 0, i32 15
  store i64 %t21, ptr %t24, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l21, !tbaa !29
  store ptr %a2, ptr %l23, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l26
  br label %bb3
bb3:
  %t33 = load i1, ptr %l26, !tbaa !21
  br i1 %t33, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb7
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l32
  br label %bb6
bb6:
  %t44 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t46 = trunc i64 21 to i32
  %t47 = icmp eq i32 %t44, %t46
  store i1 %t47, ptr %l27, !tbaa !21
  br label %bb7
bb7:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb8, label %bb9
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l3, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l40
  br label %bb10
bb9:
  %t60 = load i32, ptr %l3, !tbaa !23
  store i32 %t60, ptr %l35, !tbaa !23
  br label %bb11
bb10:
  %t62 = load i32, ptr %l40, !tbaa !23
  store i32 %t62, ptr %l35, !tbaa !23
  br label %bb11
bb11:
  %t63 = load ptr, ptr %l21, !tbaa !29
  %t64 = load ptr, ptr %l23, !tbaa !29
  %t65 = load i32, ptr %l35, !tbaa !23
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t63, ptr %t64, i32 %t65)
  store ptr %t66, ptr %l42
  br label %bb12
bb12:
  %t67 = load ptr, ptr %l42, !tbaa !29
  store ptr %t67, ptr %l7, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  store ptr %t68, ptr %l43, !tbaa !29
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = getelementptr %"compiler/check:frame", ptr %t69, i32 0, i32 15
  %t71 = load i64, ptr %t70, !tbaa !24
  %t73 = sub i64 %t71, 1
  %t75 = load ptr, ptr %l43, !tbaa !29
  %t76 = getelementptr %"compiler/check:frame", ptr %t75, i32 0, i32 15
  store i64 %t73, ptr %t76, !tbaa !24
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/check:frame", ptr %t77, i32 0, i32 16
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t84 = icmp ne i64 %t80, %t81
  store i1 %t84, ptr %l8, !tbaa !21
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = getelementptr %"compiler/check:frame", ptr %t86, i32 0, i32 16
  store i64 %t87, ptr %t90, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  store ptr %t96, ptr %l54, !tbaa !29
  %t97 = load ptr, ptr %l7, !tbaa !29
  %t100 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t97)
  store i32 %t100, ptr %l57
  br label %bb13
bb13:
  %t101 = load ptr, ptr %l54, !tbaa !29
  %t102 = load i32, ptr %l57, !tbaa !23
  %t103 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t101, i32 %t102)
  store i1 %t103, ptr %l58
  br label %bb14
bb14:
  %t104 = load i1, ptr %l58, !tbaa !21
  store i1 %t104, ptr %l9, !tbaa !21
  %t105 = load i1, ptr %l8, !tbaa !21
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb15, label %bb16
bb15:
  %t109 = load ptr, ptr %l7, !tbaa !29
  %t112 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t109)
  store i32 %t112, ptr %l64
  br label %bb17
bb16:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb18
bb17:
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t114 = load i32, ptr %l64, !tbaa !23
  %t116 = icmp ne i32 %t114, %t113
  store i1 %t116, ptr %l61, !tbaa !21
  br label %bb18
bb18:
  %t118 = load i1, ptr %l61, !tbaa !21
  br i1 %t118, label %bb19, label %bb20
bb19:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %t119)
  store i1 %t121, ptr %l69
  br label %bb21
bb20:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb22
bb21:
  %t122 = load i1, ptr %l69, !tbaa !21
  %t123 = xor i1 %t122, true
  store i1 %t123, ptr %l67, !tbaa !21
  br label %bb22
bb22:
  %t125 = load i1, ptr %l67, !tbaa !21
  br i1 %t125, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s1
  %t126 = load i1, ptr %l9, !tbaa !21
  br i1 %t126, label %bb25, label %bb26
bb24:
  br label %bb33
bb25:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l1
  %t130 = load ptr, ptr %l7, !tbaa !29
  %t134 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwrapNull(ptr %v0, ptr %v2, ptr %v2, ptr %t128, %"compiler/source:Span" %t129, ptr %t130)
  store ptr %t134, ptr %l75
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_scope_close(ptr %s1)
  %t135 = load ptr, ptr %l75, !tbaa !29
  store ptr %t135, ptr %rv
  br label %ret
bb28:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l76, !tbaa !29
  %t137 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t138 = load i32, ptr %t137, !tbaa !23
  %t140 = sub i32 %t138, 1
  %t141 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t142 = load i32, ptr %t141, !tbaa !23
  %t145 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t140, i32 %t142)
  store %"compiler/source:Span" %t145, ptr %l80
  br label %bb29
bb29:
  %t146 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBangNothingFails(ptr %s1)
  store %"compiler/diagmsg:Msg" %t146, ptr %l81
  br label %bb30
bb30:
  %t147 = load ptr, ptr %l76, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l80
  %t149 = load %"compiler/diagmsg:Msg", ptr %l81
  %t150 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t147, %"compiler/source:Span" %t148, %"compiler/diagmsg:Msg" %t149)
  store i64 %t150, ptr %l82
  br label %bb31
bb31:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l1
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t151, %"compiler/source:Span" %t152)
  store ptr %t155, ptr %l85
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s1)
  %t156 = load ptr, ptr %l85, !tbaa !29
  store ptr %t156, ptr %rv
  br label %ret
bb33:
  %t157 = load ptr, ptr %l4, !tbaa !29
  %t159 = getelementptr %"compiler/check:frame", ptr %t157, i32 0, i32 28
  %t160 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t159, i64 %t160)
  br label %bb34
bb34:
  %t163 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t163, ptr %l89
  %t164 = load ptr, ptr %l7, !tbaa !29
  %t167 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t164)
  store i32 %t167, ptr %l92
  br label %bb35
bb35:
  %t168 = load ptr, ptr %l7, !tbaa !29
  store ptr %t168, ptr %l94, !tbaa !29
  %t170 = icmp sge i64 0, 0
  br i1 %t170, label %bb36, label %bb37
bb36:
  %t172 = icmp sle i64 0, 1152921504606846975
  br i1 %t172, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_77940e7aab679ede_bd13144cbc386012)
  unreachable
bb38:
  %t174 = mul i64 0, 8
  %t175 = insertvalue { i64, ptr } undef, i64 0, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t177 = load ptr, ptr %l94, !tbaa !29
  %t179 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %t177, { i64, ptr } %t176, i1 true, i1 false, i1 true)
  store %"compiler/typed:Try" %t179, ptr %l98
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_77940e7aab679ede_bd13144cbc386012)
  unreachable
bb40:
  %t180 = load %"compiler/typed:Try", ptr %l98
  %t181 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Try" %t180, ptr %t181
  store { i64, [5 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 0
  store i64 14, ptr %t183
  %t184 = load %"compiler/source:Span", ptr %l89
  %t185 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t184, 0
  %t186 = load i32, ptr %l92, !tbaa !23
  %t187 = insertvalue { %"compiler/source:Span", i32, ptr } %t185, i32 %t186, 1
  %t189 = insertvalue { %"compiler/source:Span", i32, ptr } %t187, ptr %t181, 2
  %t190 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t189, ptr %t190
  %t191 = load { i64, [5 x i64] }, ptr %t182
  %t192 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t192, ptr %lp10
  %t194 = load ptr, ptr %lp10
  store { i64, [5 x i64] } %t191, ptr %t194
  %t195 = load i1, ptr %l9, !tbaa !21
  br i1 %t195, label %bb41, label %bb42
bb41:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l1
  %t199 = load ptr, ptr %lp10
  %t203 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwrapNull(ptr %v0, ptr %v2, ptr %v2, ptr %t197, %"compiler/source:Span" %t198, ptr %t199)
  store ptr %t203, ptr %l106
  br label %bb43
bb42:
  %t204 = load ptr, ptr %lp10
  store ptr %t204, ptr %l102, !tbaa !29
  br label %bb44
bb43:
  %t206 = load ptr, ptr %l106, !tbaa !29
  store ptr %t206, ptr %l102, !tbaa !29
  br label %bb44
bb44:
  %t207 = load ptr, ptr %l102, !tbaa !29
  store ptr %t207, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebaseHas(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l10 = alloca i32
  %l15 = alloca i64
  %l17 = alloca i1
  %l22 = alloca i64
  %l27 = alloca { i64, ptr }
  %l30 = alloca i32
  %l32 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i32
  %l50 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t17 = load i32, ptr %l2, !tbaa !23
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t15, i32 %t16, i32 %t17)
  store i64 %t21, ptr %l15
  br label %bb2
bb2:
  %t22 = load i64, ptr %l15, !tbaa !24
  %t23 = icmp sge i64 %t22, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb6
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t30 = load i32, ptr %l2, !tbaa !23
  %t34 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %t28, i32 %t29, i32 %t30)
  store i64 %t34, ptr %l22
  br label %bb5
bb5:
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  store i1 %t36, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t40, i32 %t41)
  store { i64, ptr } %t44, ptr %l27
  br label %bb10
bb10:
  %t45 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t45, ptr %l4, !tbaa !27
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l30
  br label %bb11
bb11:
  %t51 = load i32, ptr %l30, !tbaa !23
  store i32 %t51, ptr %l5, !tbaa !23
  %t52 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t54, ptr %l32
  br label %bb12
bb12:
  %t55 = load i1, ptr %l32, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l5, !tbaa !23
  %t65 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t61, i32 %t62)
  store i1 %t65, ptr %l37
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t66 = load i1, ptr %l37, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
bb16:
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t67, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t69, ptr %l39
  br label %bb17
bb17:
  %t70 = load i1, ptr %l39, !tbaa !21
  br i1 %t70, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb21
bb19:
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t73 = call i32 @compiler_2fcheck_2ebitOp(ptr %v0, { i64, ptr } %t71)
  store i32 %t73, ptr %l42
  br label %bb20
bb20:
  %t74 = load i32, ptr %l42, !range !{i32 0, i32 52}
  %t76 = trunc i64 29 to i32
  %t77 = icmp eq i32 %t74, %t76
  %t79 = xor i1 %t77, true
  store i1 %t79, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t81 = load i1, ptr %l40, !tbaa !21
  br i1 %t81, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %l5, !tbaa !23
  %t91 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t87, i32 %t88)
  store i1 %t91, ptr %l50
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t92 = load i1, ptr %l50, !tbaa !21
  store i1 %t92, ptr %rv
  br label %ret
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l14 = alloca %"compiler/generic:Desc"
  %l19 = alloca ptr
  %l20 = alloca i1
  %l29 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %l42 = alloca i32
  %l50 = alloca i32
  %l53 = alloca i1
  %l60 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l83 = alloca i1
  %l90 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/generic:Desc" %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/generic:Desc", ptr %l14, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t8 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t11 = icmp eq i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t15 = load ptr, ptr %l19, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l19, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 30}
  %t21 = icmp eq i64 %t19, 14
  store i1 %t21, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l20, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t25, i32 0, i32 1
  %t27 = load ptr, ptr %t26
  store ptr %t27, ptr %l2, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t31, i32 0, i32 2
  %t33 = load i32, ptr %t32
  store i32 %t33, ptr %l3, !tbaa !23
  br label %bb9
bb8:
  br label %bb40
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t39 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store i32 %t39, ptr %l29
  br label %bb10
bb10:
  %t40 = load i32, ptr %l29, !tbaa !23
  store i32 %t40, ptr %l4, !tbaa !23
  %t41 = load i32, ptr %l4, !tbaa !23
  %t43 = icmp slt i32 %t41, 0
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t49 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t45, ptr %t46)
  store i32 %t49, ptr %l34
  br label %bb13
bb12:
  br label %bb22
bb13:
  %t50 = load i32, ptr %l34, !tbaa !23
  store i32 %t50, ptr %l5, !tbaa !23
  %t51 = load i32, ptr %l5, !tbaa !23
  %t53 = icmp slt i32 %t51, 0
  br i1 %t53, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb17
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l5, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l42
  br label %bb16
bb16:
  %t65 = load i32, ptr %l42, !range !{i32 0, i32 6}
  %t67 = trunc i64 1 to i32
  %t68 = icmp eq i32 %t65, %t67
  %t70 = xor i1 %t68, true
  store i1 %t70, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t72 = load i1, ptr %l37, !tbaa !21
  br i1 %t72, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t78 = load i32, ptr %l5, !tbaa !23
  %t81 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t81, ptr %l50
  br label %bb21
bb21:
  %t82 = load i32, ptr %l50, !tbaa !23
  store i32 %t82, ptr %l4, !tbaa !23
  br label %bb22
bb22:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i32, ptr %l4, !tbaa !23
  %t87 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t83, i32 %t84)
  store i1 %t87, ptr %l53
  br label %bb23
bb23:
  %t88 = load i1, ptr %l53, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l4, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s2, ptr %t97, i32 %t98)
  store { i64, ptr } %t101, ptr %l60
  br label %bb27
bb27:
  %t102 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t102, ptr %l6, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t107 = icmp eq i64 %t105, 0
  br i1 %t107, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t110 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t110, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  store i64 %t114, ptr %l9, !tbaa !24
  br label %bb31
bb31:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t117 = load i64, ptr %l9, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb32, label %bb33
bb32:
  br label %bb39
bb33:
  br label %bb34
bb34:
  %t124 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t124, ptr %l72, !tbaa !27
  %t125 = load i64, ptr %l8, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i32, ptr %t128, i64 %t125
  %t130 = load i32, ptr %t129, !tbaa !33
  %t133 = load i32, ptr %l3, !tbaa !23
  %t136 = icmp eq i32 %t130, %t133
  br i1 %t136, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t139 = load i64, ptr %l8, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l8, !tbaa !24
  br label %bb31
bb39:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb40:
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t145 = load ptr, ptr %l82, !tbaa !29
  %t146 = icmp ne ptr %t145, null
  br i1 %t146, label %bb41, label %bb42
bb41:
  %t148 = load ptr, ptr %l82, !tbaa !29
  %t149 = load i64, ptr %t148, !range !{i64 0, i64 30}
  %t151 = icmp eq i64 %t149, 12
  store i1 %t151, ptr %l83, !tbaa !21
  br label %bb42
bb42:
  %t152 = load i1, ptr %l83, !tbaa !21
  br i1 %t152, label %bb43, label %bb44
bb43:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 1
  %t156 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t155, i32 0, i32 1
  %t157 = load ptr, ptr %t156
  store ptr %t157, ptr %l11, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l11, !tbaa !29
  %t163 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t159, ptr %t160)
  store i1 %t163, ptr %l90
  br label %bb46
bb46:
  %t164 = load i1, ptr %l90, !tbaa !21
  store i1 %t164, ptr %rv
  br label %ret
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  store i1 false, ptr %rv
  br label %ret
bb51:
  call void @__olang_check_failed(ptr @olang_loc_69e8c5ecd9bfbf70_d0f2ea1b652f5f64)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecks(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca %"compiler/typed:ContractInfo"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/diagmsg:Msg"
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca i64
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca { i64, i64, i64 }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca ptr
  %l43 = alloca i1
  %l45 = alloca %"compiler/typed:ContractInfo"
  %l49 = alloca %"compiler/typed:ContractInfo"
  %l50 = alloca i32
  %l52 = alloca %"compiler/typed:ContractInfo"
  %l54 = alloca i64
  %l57 = alloca ptr
  %l60 = alloca i32
  %l65 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l77 = alloca i64
  %l80 = alloca i64
  %l99 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l103 = alloca i1
  %l111 = alloca i64
  %l113 = alloca i32
  %l116 = alloca ptr
  %l120 = alloca i1
  %l124 = alloca i1
  %l129 = alloca i32
  %l132 = alloca i1
  %l137 = alloca %"compiler/diagmsg:Msg"
  %l140 = alloca %"compiler/diagmsg:Msg"
  %l141 = alloca %"compiler/diagmsg:Msg"
  %l149 = alloca { i64, ptr }
  %l153 = alloca %"compiler/diagmsg:Msg"
  %l154 = alloca %"compiler/diagmsg:Msg"
  %l164 = alloca i64
  %l166 = alloca i64
  %l170 = alloca i64
  %l173 = alloca i64
  %l193 = alloca %"compiler/source:Span"
  %l196 = alloca i64
  %l198 = alloca i64
  %l200 = alloca i64
  %l205 = alloca i64
  %l207 = alloca ptr
  %l211 = alloca ptr
  %l216 = alloca i64
  %l220 = alloca %"compiler/source:Span"
  %l221 = alloca ptr
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca i32
  %l228 = alloca ptr
  %l232 = alloca { i64, ptr }
  %l233 = alloca ptr
  %l236 = alloca i32
  %l241 = alloca { i64, ptr }
  %l246 = alloca i64
  %l247 = alloca ptr
  %l252 = alloca ptr
  %l255 = alloca ptr
  %l258 = alloca ptr
  %l259 = alloca i64
  %l262 = alloca i64
  %l263 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l265 = alloca i64
  %l270 = alloca %"compiler/source:Span"
  %l271 = alloca i32
  %l273 = alloca ptr
  %l279 = alloca %"compiler/typed:Try"
  %l285 = alloca i64
  %l289 = alloca { i64, i64, i64 }
  %l295 = alloca ptr
  %l296 = alloca %"compiler/source:Span"
  %l297 = alloca i32
  %l298 = alloca i64
  %l299 = alloca { i64, ptr }
  %l302 = alloca { i64, ptr }
  %l317 = alloca ptr
  %l318 = alloca ptr
  %l319 = alloca %"compiler/source:Span"
  %l323 = alloca ptr
  %l325 = alloca %"compiler/typed:If"
  %l330 = alloca ptr
  %l335 = alloca ptr
  %l337 = alloca ptr
  %l338 = alloca i64
  %l340 = alloca { i64, ptr }
  %l343 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %t389 = alloca { i64, [3 x i64] }, align 8
  %t513 = alloca { i64, [5 x i64] }, align 8
  %t596 = alloca { i64, [3 x i64] }, align 8
  %t637 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l43
  br label %bb1
bb1:
  %t6 = load i1, ptr %l43, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 128
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call { i32, %"compiler/typed:ContractInfo" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H1fc1bd863e6a60d3e5c2aece55d841d1(ptr %v0, ptr %v0, ptr %t11, i64 %t12)
  %t16 = extractvalue { i32, %"compiler/typed:ContractInfo" } %t15, 1
  %t17 = extractvalue { i32, %"compiler/typed:ContractInfo" } %t15, 0
  store i32 %t17, ptr %l50
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb6, label %ok.19, !prof !99
ok.19:
  store %"compiler/typed:ContractInfo" %t16, ptr %l49
  br label %bb5
bb5:
  %t21 = call %"compiler/typed:ContractInfo" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aContractInfo(ptr %v0, ptr %l49)
  store %"compiler/typed:ContractInfo" %t21, ptr %l52
  br label %bb8
bb6:
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t22 = load %"compiler/typed:ContractInfo", ptr %l52
  store %"compiler/typed:ContractInfo" %t22, ptr %l45
  br label %bb9
bb9:
  %t23 = load %"compiler/typed:ContractInfo", ptr %l45
  store %"compiler/typed:ContractInfo" %t23, ptr %l4
  %t24 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 2
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l54
  br label %bb10
bb10:
  %t27 = load i64, ptr %l54, !tbaa !24
  %t28 = icmp eq i64 %t27, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t30)
  store ptr %t32, ptr %l57
  br label %bb14
bb14:
  %t33 = load ptr, ptr %l57, !tbaa !29
  store ptr %t33, ptr %l5, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t37, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t39, ptr %l60
  br label %bb15
bb15:
  %t40 = load i32, ptr %l60, !tbaa !23
  store i32 %t40, ptr %l6, !tbaa !23
  %t41 = load i32, ptr %l6, !tbaa !23
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t45 = icmp eq i32 %t41, %t42
  br i1 %t45, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  br label %bb18
bb18:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %l65, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l70
  br label %bb19
bb19:
  %t61 = load ptr, ptr %l65, !tbaa !29
  %t62 = load i32, ptr %l70, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t61, i32 %t62)
  store { i64, ptr } %t63, ptr %l71
  br label %bb20
bb20:
  %t64 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t64, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t75 = load i64, ptr %l11, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb26
bb23:
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l80, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb25
bb25:
  %t95 = load i64, ptr %l80, !tbaa !24
  store i64 %t95, ptr %l77, !tbaa !24
  br label %bb26
bb26:
  %t96 = load i64, ptr %l77, !tbaa !24
  store i64 %t96, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t97 = load i64, ptr %l13, !tbaa !24
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb29:
  br label %bb30
bb30:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l13, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l14, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t116, ptr %l99, !tbaa !27
  %t117 = load i64, ptr %l14, !tbaa !24
  %t119 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i32, ptr %t120, i64 %t117
  %t122 = load i32, ptr %t121, !tbaa !33
  %t125 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t115, i32 %t122)
  store { i64, ptr } %t125, ptr %l102
  br label %bb31
bb31:
  %t126 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s6, { i64, ptr } %t126, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t127, ptr %l103
  br label %bb32
bb32:
  %t128 = load i1, ptr %l103, !tbaa !21
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t129 = load i64, ptr %l14, !tbaa !24
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb35
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb36:
  %t131 = load i64, ptr %l13, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l13, !tbaa !24
  br label %bb27
bb37:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l6, !tbaa !23
  %t142 = load i64, ptr %l8, !tbaa !24
  store i64 %t142, ptr %l111, !tbaa !24
  %t143 = load i64, ptr %l111, !tbaa !24
  %t144 = load i64, ptr %l111, !tbaa !24
  %t145 = shl i64 1, %t144
  %t149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t140, i32 %t141, i64 %t145)
  store i32 %t149, ptr %l113
  br label %bb38
bb38:
  %t150 = load i32, ptr %l113, !tbaa !23
  store i32 %t150, ptr %l15, !tbaa !23
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l1, !tbaa !24
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %s0, ptr %t151, i64 %t152)
  store ptr %t155, ptr %l116
  br label %bb39
bb39:
  %t156 = load ptr, ptr %l116, !tbaa !29
  store ptr %t156, ptr %l16, !tbaa !29
  %t157 = load ptr, ptr %l5, !tbaa !29
  %t159 = getelementptr %"compiler/check:frame", ptr %t157, i32 0, i32 26
  %t160 = load i1, ptr %t159, !tbaa !21
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb40, label %bb41
bb40:
  %t164 = load ptr, ptr %l5, !tbaa !29
  %t166 = getelementptr %"compiler/check:frame", ptr %t164, i32 0, i32 12
  %t167 = load i1, ptr %t166, !tbaa !21
  %t169 = xor i1 %t167, true
  store i1 %t169, ptr %l120, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb42
bb42:
  %t171 = load i1, ptr %l120, !tbaa !21
  br i1 %t171, label %bb43, label %bb44
bb43:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l5, !tbaa !29
  %t175 = getelementptr %"compiler/check:frame", ptr %t173, i32 0, i32 6
  %t176 = load i32, ptr %t175, !tbaa !23
  %t177 = load i32, ptr %l15, !tbaa !23
  %t181 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %t172, i32 %t176, i32 %t177)
  store i32 %t181, ptr %l129
  br label %bb45
bb44:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb46
bb45:
  %t182 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t183 = load i32, ptr %l129, !tbaa !23
  %t185 = icmp ne i32 %t183, %t182
  store i1 %t185, ptr %l124, !tbaa !21
  br label %bb46
bb46:
  %t187 = load i1, ptr %l124, !tbaa !21
  br i1 %t187, label %bb47, label %bb48
bb47:
  %t188 = load ptr, ptr %l16, !tbaa !29
  %t190 = icmp eq ptr %t188, null
  %t192 = xor i1 %t190, true
  store i1 %t192, ptr %l132, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb49
bb49:
  %t194 = load i1, ptr %l132, !tbaa !21
  br i1 %t194, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t195 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 0
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  %t198 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsArgumentError(ptr %v0, ptr %s9, { i64, ptr } %t196)
  store %"compiler/diagmsg:Msg" %t198, ptr %l137
  br label %bb52
bb51:
  br label %bb71
bb52:
  %t199 = load %"compiler/diagmsg:Msg", ptr %l137
  store %"compiler/diagmsg:Msg" %t199, ptr %l17
  br i1 %a3, label %bb53, label %bb54
bb53:
  %t202 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 0
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t205 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenContractNeedsArgumentError(ptr %v0, ptr %s9, { i64, ptr } %t203)
  store %"compiler/diagmsg:Msg" %t205, ptr %l140
  br label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s11
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/check:Checker", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Program", ptr %t209, i32 0, i32 2
  %t212 = load ptr, ptr %l5, !tbaa !29
  %t214 = getelementptr %"compiler/check:frame", ptr %t212, i32 0, i32 6
  %t215 = load i32, ptr %t214, !tbaa !23
  %t218 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s11, ptr %t211, i32 %t215)
  store { i64, ptr } %t218, ptr %l149
  br label %bb60
bb55:
  %t219 = load %"compiler/diagmsg:Msg", ptr %l17
  store %"compiler/diagmsg:Msg" %t219, ptr %l141
  %t220 = load %"compiler/diagmsg:Msg", ptr %l140
  store %"compiler/diagmsg:Msg" %t220, ptr %l17
  %t221 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t221, label %bb56, label %bb57
bb56:
  %t223 = getelementptr %"compiler/diagmsg:Msg", ptr %l141, i32 0, i32 1
  %t224 = load { i64, ptr }, ptr %t223
  %t225 = extractvalue { i64, ptr } %t224, 1
  call void @__olang_region_release(ptr %t225)
  store { i64, ptr } zeroinitializer, ptr %t223
  br label %bb57
bb57:
  %t226 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t226, label %bb58, label %bb59
bb58:
  %t228 = getelementptr %"compiler/diagmsg:Msg", ptr %l141, i32 0, i32 2
  %t229 = load { i64, ptr }, ptr %t228
  %t230 = extractvalue { i64, ptr } %t229, 1
  call void @__olang_region_release(ptr %t230)
  store { i64, ptr } zeroinitializer, ptr %t228
  br label %bb59
bb59:
  br label %bb69
bb60:
  %t231 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 0
  %t234 = icmp eq i64 %t232, 0
  br i1 %t234, label %bb61, label %bb62
bb61:
  %t236 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 0
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !27
  %t239 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsQuestion(ptr %v0, ptr %s9, { i64, ptr } %t237)
  store %"compiler/diagmsg:Msg" %t239, ptr %l153
  br label %bb63
bb62:
  br label %bb68
bb63:
  %t240 = load %"compiler/diagmsg:Msg", ptr %l17
  store %"compiler/diagmsg:Msg" %t240, ptr %l154
  %t241 = load %"compiler/diagmsg:Msg", ptr %l153
  store %"compiler/diagmsg:Msg" %t241, ptr %l17
  %t242 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t242, label %bb64, label %bb65
bb64:
  %t244 = getelementptr %"compiler/diagmsg:Msg", ptr %l154, i32 0, i32 1
  %t245 = load { i64, ptr }, ptr %t244
  %t246 = extractvalue { i64, ptr } %t245, 1
  call void @__olang_region_release(ptr %t246)
  store { i64, ptr } zeroinitializer, ptr %t244
  br label %bb65
bb65:
  %t247 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t247, label %bb66, label %bb67
bb66:
  %t249 = getelementptr %"compiler/diagmsg:Msg", ptr %l154, i32 0, i32 2
  %t250 = load { i64, ptr }, ptr %t249
  %t251 = extractvalue { i64, ptr } %t250, 1
  call void @__olang_region_release(ptr %t251)
  store { i64, ptr } zeroinitializer, ptr %t249
  br label %bb67
bb67:
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s11)
  br label %bb69
bb69:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load ptr, ptr %l16, !tbaa !29
  %t255 = getelementptr %"compiler/check:ctSource", ptr %t253, i32 0, i32 3
  %t256 = load i64, ptr %t255, !tbaa !24
  %t257 = load ptr, ptr %l16, !tbaa !29
  %t259 = getelementptr %"compiler/check:ctSource", ptr %t257, i32 0, i32 0
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t262 = getelementptr %"compiler/ast:ContractBlock", ptr %t260, i32 0, i32 0
  %t263 = load %"compiler/source:Span", ptr %t262
  %t264 = load %"compiler/diagmsg:Msg", ptr %l17
  %t269 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectErr(ptr %v0, ptr %s9, ptr %t252, i64 %t256, %"compiler/source:Span" %t263, %"compiler/diagmsg:Msg" %t264)
  store i64 %t269, ptr %l164
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s9)
  br label %bb71
bb71:
  store i64 0, ptr %l18, !tbaa !24
  %t270 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 2
  %t272 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t270)
  store i64 %t272, ptr %l166
  br label %bb72
bb72:
  %t273 = load i64, ptr %l166, !tbaa !24
  store i64 %t273, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t274 = load i64, ptr %l19, !tbaa !24
  %t275 = load i64, ptr %l18, !tbaa !24
  %t278 = icmp sgt i64 %t274, %t275
  br i1 %t278, label %bb73, label %bb74
bb73:
  %t280 = load i64, ptr %l20, !tbaa !24
  %t282 = icmp sgt i64 %t280, 0
  br i1 %t282, label %bb75, label %bb76
bb74:
  store i64 0, ptr %l170, !tbaa !24
  br label %bb78
bb75:
  %t284 = load i64, ptr %l19, !tbaa !24
  %t285 = load i64, ptr %l18, !tbaa !24
  %t288 = sub i64 %t284, %t285
  %t289 = load i64, ptr %l20, !tbaa !24
  %t292 = add i64 %t288, %t289
  %t294 = sub i64 %t292, 1
  %t295 = load i64, ptr %l20, !tbaa !24
  %t298 = sdiv i64 %t294, %t295
  store i64 %t298, ptr %l173, !tbaa !24
  br label %bb77
bb76:
  store i64 0, ptr %l173, !tbaa !24
  br label %bb77
bb77:
  %t300 = load i64, ptr %l173, !tbaa !24
  store i64 %t300, ptr %l170, !tbaa !24
  br label %bb78
bb78:
  %t301 = load i64, ptr %l170, !tbaa !24
  store i64 %t301, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb79
bb79:
  store %olang.scope zeroinitializer, ptr %s14
  %t302 = load i64, ptr %l22, !tbaa !24
  %t303 = load i64, ptr %l21, !tbaa !24
  %t306 = icmp slt i64 %t302, %t303
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb80, label %bb81
bb80:
  call void @__olang_scope_close(ptr %s14)
  br label %bb133
bb81:
  br label %bb82
bb82:
  %t310 = load i64, ptr %l18, !tbaa !24
  %t311 = load i64, ptr %l22, !tbaa !24
  %t312 = load i64, ptr %l20, !tbaa !24
  %t315 = mul i64 %t311, %t312
  %t318 = add i64 %t310, %t315
  store i64 %t318, ptr %l23, !tbaa !24
  %t320 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 3
  %t321 = load i64, ptr %l23, !tbaa !24
  %t324 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t320, i64 %t321)
  store %"compiler/source:Span" %t324, ptr %l193
  br label %bb83
bb83:
  %t325 = load %"compiler/source:Span", ptr %l193
  store %"compiler/source:Span" %t325, ptr %l24
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/check:Checker", ptr %t326, i32 0, i32 36
  %t330 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t328)
  store i64 %t330, ptr %l196
  br label %bb84
bb84:
  %t331 = load i64, ptr %l196, !tbaa !24
  store i64 %t331, ptr %l25, !tbaa !24
  store ptr %a2, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb85
bb85:
  %t334 = load i64, ptr %l27, !tbaa !24
  store i64 %t334, ptr %l198, !tbaa !24
  %t335 = load ptr, ptr %l26, !tbaa !29
  %t337 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t335)
  store i64 %t337, ptr %l200
  br label %bb86
bb86:
  %t338 = load i64, ptr %l198, !tbaa !24
  %t339 = load i64, ptr %l200, !tbaa !24
  %t340 = icmp slt i64 %t338, %t339
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb87, label %bb88
bb87:
  br label %bb94
bb88:
  br label %bb89
bb89:
  %t344 = load ptr, ptr %l26, !tbaa !29
  %t345 = load i64, ptr %l27, !tbaa !24
  %t348 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t344, i64 %t345)
  store i64 %t348, ptr %l205
  br label %bb90
bb90:
  %t349 = load i64, ptr %l205, !tbaa !24
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/check:Checker", ptr %t350, i32 0, i32 36
  store ptr %t352, ptr %l207, !tbaa !29
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load %"compiler/source:Span", ptr %l24
  %t359 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t353, %"compiler/source:Span" %t354, i64 %t349)
  store ptr %t359, ptr %l211
  br label %bb91
bb91:
  %t360 = load ptr, ptr %l207, !tbaa !29
  %t361 = load ptr, ptr %l211, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t360, ptr %t361)
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t362 = load i64, ptr %l27, !tbaa !24
  %t364 = add i64 %t362, 1
  store i64 %t364, ptr %l27, !tbaa !24
  br label %bb85
bb94:
  %t366 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 2
  %t367 = load i64, ptr %l23, !tbaa !24
  %t370 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t366, i64 %t367)
  store i64 %t370, ptr %l216
  br label %bb95
bb95:
  %t371 = load i64, ptr %l216, !tbaa !24
  store i64 %t371, ptr %l29, !tbaa !24
  %t372 = getelementptr %"compiler/source:Span", ptr %l24, i32 0, i32 1
  %t373 = load i32, ptr %t372, !tbaa !23
  %t375 = sub i32 %t373, 1
  %t376 = getelementptr %"compiler/source:Span", ptr %l24, i32 0, i32 1
  %t377 = load i32, ptr %t376, !tbaa !23
  %t380 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s14, i32 %t375, i32 %t377)
  store %"compiler/source:Span" %t380, ptr %l220
  br label %bb96
bb96:
  %t381 = load %"compiler/source:Span", ptr %l220
  store %"compiler/source:Span" %t381, ptr %l30
  %t382 = load ptr, ptr %l0, !tbaa !29
  store ptr %t382, ptr %l221, !tbaa !29
  %t383 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t383, ptr %l222
  %t384 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t384, ptr %l223, !tbaa !23
  %t385 = load i64, ptr %l29, !tbaa !24
  %t387 = trunc i64 %t385 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t389
  %t390 = getelementptr { i64, [3 x i64] }, ptr %t389, i32 0, i32 0
  store i64 0, ptr %t390
  %t392 = insertvalue { i32 } undef, i32 %t387, 0
  %t393 = getelementptr { i64, [3 x i64] }, ptr %t389, i32 0, i32 1
  store { i32 } %t392, ptr %t393
  %t394 = load { i64, [3 x i64] }, ptr %t389
  %t396 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t394, ptr %t396
  store ptr %t396, ptr %l228, !tbaa !29
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 36
  %t400 = load i64, ptr %l25, !tbaa !24
  %t403 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t399, i64 %t400)
  store { i64, ptr } %t403, ptr %l232
  br label %bb97
bb97:
  %t404 = load ptr, ptr %l221, !tbaa !29
  %t405 = load %"compiler/source:Span", ptr %l222
  %t406 = load i32, ptr %l223, !tbaa !23
  %t407 = load ptr, ptr %l228, !tbaa !29
  %t408 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t409 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t404, %"compiler/source:Span" %t405, i32 %t406, ptr %t407, { i64, ptr } %t408)
  store ptr %t409, ptr %l233
  br label %bb98
bb98:
  %t410 = load ptr, ptr %l233, !tbaa !29
  store ptr %t410, ptr %l31, !tbaa !29
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load i64, ptr %l29, !tbaa !24
  %t415 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t411, i64 %t412)
  store i32 %t415, ptr %l236
  br label %bb99
bb99:
  %t416 = load i32, ptr %l236, !tbaa !23
  store i32 %t416, ptr %l32, !tbaa !23
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/check:Checker", ptr %t417, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t422 = getelementptr %"compiler/generic:Program", ptr %t420, i32 0, i32 2
  %t423 = load i32, ptr %l32, !tbaa !23
  %t426 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s14, ptr %t422, i32 %t423)
  store { i64, ptr } %t426, ptr %l241
  br label %bb100
bb100:
  %t427 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t428 = extractvalue { i64, ptr } %t427, 0
  %t430 = icmp sgt i64 %t428, 0
  br i1 %t430, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s18
  %t432 = load ptr, ptr %l5, !tbaa !29
  %t434 = getelementptr %"compiler/check:frame", ptr %t432, i32 0, i32 28
  %t436 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t434)
  store i64 %t436, ptr %l246
  br label %bb103
bb102:
  br label %bb114
bb103:
  %t437 = load i64, ptr %l246, !tbaa !24
  store i64 %t437, ptr %l33, !tbaa !24
  %t438 = load ptr, ptr %l5, !tbaa !29
  store ptr %t438, ptr %l247, !tbaa !29
  %t439 = load ptr, ptr %l247, !tbaa !29
  %t440 = getelementptr %"compiler/check:frame", ptr %t439, i32 0, i32 15
  %t441 = load i64, ptr %t440, !tbaa !24
  %t443 = add i64 %t441, 1
  %t445 = load ptr, ptr %l247, !tbaa !29
  %t446 = getelementptr %"compiler/check:frame", ptr %t445, i32 0, i32 15
  store i64 %t443, ptr %t446, !tbaa !24
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load i32, ptr %l32, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleak(ptr %v0, ptr %t447, i32 %t448)
  br label %bb104
bb104:
  %t451 = load ptr, ptr %l5, !tbaa !29
  store ptr %t451, ptr %l252, !tbaa !29
  %t452 = load ptr, ptr %l252, !tbaa !29
  %t453 = getelementptr %"compiler/check:frame", ptr %t452, i32 0, i32 16
  %t454 = load i64, ptr %t453, !tbaa !24
  %t456 = add i64 %t454, 1
  %t458 = load ptr, ptr %l252, !tbaa !29
  %t459 = getelementptr %"compiler/check:frame", ptr %t458, i32 0, i32 16
  store i64 %t456, ptr %t459, !tbaa !24
  %t460 = load ptr, ptr %l5, !tbaa !29
  store ptr %t460, ptr %l255, !tbaa !29
  %t461 = load ptr, ptr %l255, !tbaa !29
  %t462 = getelementptr %"compiler/check:frame", ptr %t461, i32 0, i32 15
  %t463 = load i64, ptr %t462, !tbaa !24
  %t465 = sub i64 %t463, 1
  %t467 = load ptr, ptr %l255, !tbaa !29
  %t468 = getelementptr %"compiler/check:frame", ptr %t467, i32 0, i32 15
  store i64 %t465, ptr %t468, !tbaa !24
  %t469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t469, ptr %l258, !tbaa !29
  %t470 = load i64, ptr %l33, !tbaa !24
  store i64 %t470, ptr %l259, !tbaa !24
  %t471 = load ptr, ptr %l5, !tbaa !29
  %t473 = getelementptr %"compiler/check:frame", ptr %t471, i32 0, i32 28
  %t475 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t473)
  store i64 %t475, ptr %l262
  br label %bb105
bb105:
  %t476 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %s18, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t476, ptr %l263
  br label %bb106
bb106:
  %t477 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l263
  %t478 = call ptr @__olang_scope_alloc_a(ptr %s18, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t477, ptr %t478
  %t479 = load ptr, ptr %l258, !tbaa !29
  %t480 = load i64, ptr %l259, !tbaa !24
  %t481 = load i64, ptr %l262, !tbaa !24
  %t483 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %s18, ptr %t479, i64 %t480, i64 %t481, ptr %t478)
  store i64 %t483, ptr %l265
  br label %bb107
bb107:
  %t484 = load i64, ptr %l265, !tbaa !24
  store i64 %t484, ptr %l34, !tbaa !24
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t486 = load %"compiler/source:Span", ptr %l24
  %t487 = load i64, ptr %l33, !tbaa !24
  %t488 = load i64, ptr %l34, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %t485, %"compiler/source:Span" %t486, i64 %t487, i64 %t488)
  br label %bb108
bb108:
  %t493 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t493, ptr %l270
  %t494 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t494, ptr %l271, !tbaa !23
  %t495 = load ptr, ptr %l31, !tbaa !29
  store ptr %t495, ptr %l273, !tbaa !29
  %t497 = icmp sge i64 0, 0
  br i1 %t497, label %bb109, label %bb110
bb109:
  %t499 = icmp sle i64 0, 1152921504606846975
  br i1 %t499, label %bb111, label %bb112
bb110:
  call void @__olang_check_failed(ptr @olang_loc_30cd626924d65af9_b5ae1ddae6eb1145)
  unreachable
bb111:
  %t501 = mul i64 0, 8
  %t502 = insertvalue { i64, ptr } undef, i64 0, 0
  %t503 = insertvalue { i64, ptr } %t502, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t504 = load i64, ptr %l34, !tbaa !24
  %t506 = icmp sgt i64 %t504, 0
  %t507 = load ptr, ptr %l273, !tbaa !29
  %t510 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t507, { i64, ptr } %t503, i1 false, i1 false, i1 %t506)
  store %"compiler/typed:Try" %t510, ptr %l279
  br label %bb113
bb112:
  call void @__olang_check_failed(ptr @olang_loc_30cd626924d65af9_b5ae1ddae6eb1145)
  unreachable
bb113:
  %t511 = load %"compiler/typed:Try", ptr %l279
  %t512 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Try" %t511, ptr %t512
  store { i64, [5 x i64] } zeroinitializer, ptr %t513
  %t514 = getelementptr { i64, [5 x i64] }, ptr %t513, i32 0, i32 0
  store i64 14, ptr %t514
  %t515 = load %"compiler/source:Span", ptr %l270
  %t516 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t515, 0
  %t517 = load i32, ptr %l271, !tbaa !23
  %t518 = insertvalue { %"compiler/source:Span", i32, ptr } %t516, i32 %t517, 1
  %t520 = insertvalue { %"compiler/source:Span", i32, ptr } %t518, ptr %t512, 2
  %t521 = getelementptr { i64, [5 x i64] }, ptr %t513, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t520, ptr %t521
  %t522 = load { i64, [5 x i64] }, ptr %t513
  %t524 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t522, ptr %t524
  store ptr %t524, ptr %l31, !tbaa !29
  call void @__olang_scope_close(ptr %s18)
  br label %bb114
bb114:
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t528 = getelementptr %"compiler/check:Checker", ptr %t526, i32 0, i32 37
  %t530 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t528)
  store i64 %t530, ptr %l285
  br label %bb115
bb115:
  %t531 = load i64, ptr %l285, !tbaa !24
  store i64 %t531, ptr %l35, !tbaa !24
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l24
  %t537 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t532, i32 1, %"compiler/source:Span" %t533)
  store { i64, i64, i64 } %t537, ptr %l289
  br label %bb116
bb116:
  %t538 = load { i64, i64, i64 }, ptr %l289
  store { i64, i64, i64 } %t538, ptr %l36
  %t539 = getelementptr { i64, i64, i64 }, ptr %l36, i32 0, i32 0
  %t540 = load i64, ptr %t539, !tbaa !24
  store i64 %t540, ptr %l37, !tbaa !24
  %t542 = getelementptr { i64, i64, i64 }, ptr %l36, i32 0, i32 1
  %t543 = load i64, ptr %t542, !tbaa !24
  store i64 %t543, ptr %l38, !tbaa !24
  %t545 = getelementptr { i64, i64, i64 }, ptr %l36, i32 0, i32 2
  %t546 = load i64, ptr %t545, !tbaa !24
  store i64 %t546, ptr %l39, !tbaa !24
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %t548, i32 %t549)
  br label %bb117
bb117:
  %t552 = load ptr, ptr %l0, !tbaa !29
  store ptr %t552, ptr %l295, !tbaa !29
  %t553 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t553, ptr %l296
  %t554 = load i32, ptr %l6, !tbaa !23
  store i32 %t554, ptr %l297, !tbaa !23
  %t555 = load i64, ptr %l8, !tbaa !24
  store i64 %t555, ptr %l298, !tbaa !24
  %t556 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 0
  %t557 = load { i64, ptr }, ptr %t556, !tbaa !27
  store { i64, ptr } %t557, ptr %l299, !tbaa !27
  %t558 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 4
  %t559 = load i64, ptr %l23, !tbaa !24
  %t562 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s14, ptr %t558, i64 %t559)
  store { i64, ptr } %t562, ptr %l302
  br label %bb118
bb118:
  %t563 = load { i64, ptr }, ptr %l299, !tbaa !27
  %t564 = extractvalue { i64, ptr } %t563, 1
  %t565 = extractvalue { i64, ptr } %t563, 0
  %t566 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t567 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t568 = add i64 %t565, %t567
  %t569 = load { i64, ptr }, ptr %l302, !tbaa !27
  %t570 = extractvalue { i64, ptr } %t569, 1
  %t571 = extractvalue { i64, ptr } %t569, 0
  %t572 = add i64 %t568, %t571
  %t573 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t572)
  call void @olang_textcopy(ptr %t573, ptr %t564, i64 %t565)
  %t574 = getelementptr i8, ptr %t573, i64 %t565
  call void @olang_textcopy(ptr %t574, ptr %t566, i64 %t567)
  %t575 = getelementptr i8, ptr %t574, i64 %t567
  call void @olang_textcopy(ptr %t575, ptr %t570, i64 %t571)
  %t576 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t577 = insertvalue { i64, ptr } %t576, ptr %t573, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = extractvalue { i64, ptr } %t577, 1
  %t581 = mul i64 %t579, 1
  %t582 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t581)
  call void @llvm.memcpy.p0.p0.i64(ptr %t582, ptr %t580, i64 %t581, i1 false)
  %t583 = insertvalue { i64, ptr } undef, i64 %t579, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t582, 1
  %t585 = load ptr, ptr %l295, !tbaa !29
  %t586 = load %"compiler/source:Span", ptr %l296
  %t587 = load i32, ptr %l297, !tbaa !23
  %t588 = load i64, ptr %l298, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargumentPush(ptr %v0, ptr %v0, ptr %t585, %"compiler/source:Span" %t586, i32 %t587, i64 %t588, { i64, ptr } %t584)
  br label %bb119
bb119:
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t592 = getelementptr %"compiler/check:Checker", ptr %t590, i32 0, i32 37
  %t593 = load %"compiler/source:Span", ptr %l24
  %t594 = load i32, ptr %l6, !tbaa !23
  %t595 = load i64, ptr %l8, !tbaa !24
  store { i64, [3 x i64] } zeroinitializer, ptr %t596
  %t597 = getelementptr { i64, [3 x i64] }, ptr %t596, i32 0, i32 0
  store i64 7, ptr %t597
  %t599 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t593, 0
  %t601 = insertvalue { %"compiler/source:Span", i32, i64 } %t599, i32 %t594, 1
  %t603 = insertvalue { %"compiler/source:Span", i32, i64 } %t601, i64 %t595, 2
  %t604 = getelementptr { i64, [3 x i64] }, ptr %t596, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t603, ptr %t604
  %t605 = load { i64, [3 x i64] }, ptr %t596
  %t607 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t605, ptr %t607
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t592, ptr %t607)
  br label %bb120
bb120:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load i64, ptr %l37, !tbaa !24
  %t612 = load i64, ptr %l38, !tbaa !24
  %t613 = load i64, ptr %l39, !tbaa !24
  %t614 = load i64, ptr %l35, !tbaa !24
  %t620 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t610, i64 %t611, i64 %t612, i64 %t613, i64 %t614)
  store ptr %t620, ptr %l317
  br label %bb121
bb121:
  %t621 = load ptr, ptr %l317, !tbaa !29
  store ptr %t621, ptr %l40, !tbaa !29
  %t622 = load ptr, ptr %l0, !tbaa !29
  store ptr %t622, ptr %l318, !tbaa !29
  %t623 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t623, ptr %l319
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t625 = load %"compiler/source:Span", ptr %l24
  %t626 = load ptr, ptr %l31, !tbaa !29
  %t630 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v0, ptr %v0, ptr %t624, %"compiler/source:Span" %t625, ptr %t626)
  store ptr %t630, ptr %l323
  br label %bb122
bb122:
  %t631 = load ptr, ptr %l40, !tbaa !29
  %t632 = load ptr, ptr %l323, !tbaa !29
  %t634 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t632, ptr %t631, ptr null)
  store %"compiler/typed:If" %t634, ptr %l325
  br label %bb123
bb123:
  %t635 = load %"compiler/typed:If", ptr %l325
  %t636 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t635, ptr %t636
  store { i64, [3 x i64] } zeroinitializer, ptr %t637
  %t638 = getelementptr { i64, [3 x i64] }, ptr %t637, i32 0, i32 0
  store i64 3, ptr %t638
  %t639 = load %"compiler/source:Span", ptr %l319
  %t640 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t639, 0
  %t642 = insertvalue { %"compiler/source:Span", ptr } %t640, ptr %t636, 1
  %t643 = getelementptr { i64, [3 x i64] }, ptr %t637, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t642, ptr %t643
  %t644 = load { i64, [3 x i64] }, ptr %t637
  %t646 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t644, ptr %t646
  %t647 = load ptr, ptr %l318, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t647, ptr %t646)
  br label %bb124
bb124:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t651 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t649)
  store ptr %t651, ptr %l330
  br label %bb125
bb125:
  %t652 = load ptr, ptr %l330, !tbaa !29
  %t654 = getelementptr %"compiler/typed:Body", ptr %t652, i32 0, i32 12
  %t655 = getelementptr %"compiler/source:Span", ptr %l24, i32 0, i32 0
  %t656 = load i32, ptr %t655, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %t654, i32 %t656)
  br label %bb126
bb126:
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t661 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t659)
  store ptr %t661, ptr %l335
  br label %bb127
bb127:
  %t662 = load ptr, ptr %l335, !tbaa !29
  %t664 = getelementptr %"compiler/typed:Body", ptr %t662, i32 0, i32 13
  store ptr %t664, ptr %l337, !tbaa !29
  %t665 = ptrtoint ptr %v0 to i64
  store i64 %t665, ptr %l338, !tbaa !24
  %t666 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t666, label %bb128, label %bb129
bb128:
  %t668 = call ptr @__olang_region_make(ptr %v0)
  %t669 = ptrtoint ptr %t668 to i64
  store i64 %t669, ptr %l338, !tbaa !24
  br label %bb129
bb129:
  %t670 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 0
  %t671 = load { i64, ptr }, ptr %t670, !tbaa !27
  store { i64, ptr } %t671, ptr %l340, !tbaa !27
  %t672 = getelementptr %"compiler/typed:ContractInfo", ptr %l4, i32 0, i32 4
  %t673 = load i64, ptr %l23, !tbaa !24
  %t676 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s14, ptr %t672, i64 %t673)
  store { i64, ptr } %t676, ptr %l343
  br label %bb130
bb130:
  %t677 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t677, 1
  %t679 = extractvalue { i64, ptr } %t677, 0
  %t680 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t681 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t682 = add i64 %t679, %t681
  %t683 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t684 = extractvalue { i64, ptr } %t683, 1
  %t685 = extractvalue { i64, ptr } %t683, 0
  %t686 = add i64 %t682, %t685
  %t687 = load i64, ptr %l338
  %t688 = inttoptr i64 %t687 to ptr
  %t689 = call ptr @__olang_scope_alloc(ptr %t688, i64 %t686)
  call void @olang_textcopy(ptr %t689, ptr %t678, i64 %t679)
  %t690 = getelementptr i8, ptr %t689, i64 %t679
  call void @olang_textcopy(ptr %t690, ptr %t680, i64 %t681)
  %t691 = getelementptr i8, ptr %t690, i64 %t681
  call void @olang_textcopy(ptr %t691, ptr %t684, i64 %t685)
  %t692 = insertvalue { i64, ptr } undef, i64 %t686, 0
  %t693 = insertvalue { i64, ptr } %t692, ptr %t689, 1
  %t695 = load i64, ptr %l338
  %t696 = inttoptr i64 %t695 to ptr
  %t697 = extractvalue { i64, ptr } %t693, 0
  %t698 = extractvalue { i64, ptr } %t693, 1
  %t699 = mul i64 %t697, 1
  %t700 = call ptr @__olang_scope_alloc(ptr %t696, i64 %t699)
  call void @llvm.memcpy.p0.p0.i64(ptr %t700, ptr %t698, i64 %t699, i1 false)
  %t701 = insertvalue { i64, ptr } undef, i64 %t697, 0
  %t702 = insertvalue { i64, ptr } %t701, ptr %t700, 1
  %t703 = load ptr, ptr %l337, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t703, { i64, ptr } %t702)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s14)
  br label %bb132
bb132:
  %t705 = load i64, ptr %l22, !tbaa !24
  %t707 = add i64 %t705, 1
  store i64 %t707, ptr %l22, !tbaa !24
  br label %bb79
bb133:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectErr(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l13 = alloca ptr
  %l22 = alloca i64
  %rv = alloca i64
  %t36 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
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
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/load:Loader", ptr %t17, i32 0, i32 10
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t19, i64 %a1)
  store ptr %t23, ptr %l13
  br label %bb1
bb1:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t26 = getelementptr %"compiler/load:Module", ptr %t24, i32 0, i32 4
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  %t32 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t33 = load i32, ptr %t32, !tbaa !23
  %t35 = sext i32 %t33 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 0
  store i64 3, ptr %t37
  %t39 = insertvalue { i64, i64, i64 } undef, i64 %t27, 0
  %t41 = insertvalue { i64, i64, i64 } %t39, i64 %t31, 1
  %t43 = insertvalue { i64, i64, i64 } %t41, i64 %t35, 2
  %t44 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 1
  store { i64, i64, i64 } %t43, ptr %t44
  %t45 = load { i64, [3 x i64] }, ptr %t36
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t50 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %t47, { i64, [3 x i64] } %t45, %"compiler/diagmsg:Msg" %a3)
  store i64 %t50, ptr %l22
  br label %bb2
bb2:
  %t51 = load i64, ptr %l22, !tbaa !24
  store i64 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i32
  %l10 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l10
  br label %bb4
bb3:
  %t17 = load i32, ptr %l1, !tbaa !23
  store i32 %t17, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  %t19 = load i32, ptr %l10, !tbaa !23
  store i32 %t19, ptr %l5, !tbaa !23
  br label %bb5
bb5:
  %t20 = load i32, ptr %l5, !tbaa !23
  store i32 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca { i64, [3 x i64] }
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
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
  store ptr %t10, ptr %l6, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t15 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t11, %"compiler/source:Span" %a1)
  store { i64, [3 x i64] } %t15, ptr %l9
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t18 = load { i64, [3 x i64] }, ptr %l9
  %t20 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %t17, { i64, [3 x i64] } %t18, %"compiler/diagmsg:Msg" %a2)
  store i64 %t20, ptr %l11
  br label %bb2
bb2:
  %t21 = load i64, ptr %l11, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrHeld(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l28 = alloca i64
  %l41 = alloca ptr
  %rv = alloca ptr
  %t62 = alloca { i64, [3 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_fde34f6ad3d04e85_8bb8dc064f471149)
  unreachable
bb16:
  br label %bb28
bb17:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb18, label %bb19
bb18:
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 0
  store i1 %t34, ptr %l17, !tbaa !21
  br label %bb19
bb19:
  %t35 = load i1, ptr %l17, !tbaa !21
  br i1 %t35, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_7e2870e38111b7d4_913a9c3a02b86678)
  unreachable
bb28:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t38)
  store %"compiler/source:Span" %t40, ptr %l22
  br label %bb29
bb29:
  %t41 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t41, ptr %l3
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l23, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t43, ptr %l24
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t47 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t44)
  store i32 %t47, ptr %l27
  br label %bb30
bb30:
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l24
  %t50 = load i32, ptr %l27, !tbaa !23
  %t51 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t48, %"compiler/source:Span" %t49, i32 %t50)
  store i64 %t51, ptr %l28
  br label %bb31
bb31:
  %t52 = load i64, ptr %l28, !tbaa !24
  store i64 %t52, ptr %l4, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 37
  %t56 = load %"compiler/source:Span", ptr %l3
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = trunc i64 %t57 to i32
  %t61 = load ptr, ptr %l1, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 0
  store i64 0, ptr %t63
  %t65 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t56, 0
  %t67 = insertvalue { %"compiler/source:Span", i32, ptr } %t65, i32 %t59, 1
  %t69 = insertvalue { %"compiler/source:Span", i32, ptr } %t67, ptr %t61, 2
  %t70 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t69, ptr %t70
  %t71 = load { i64, [3 x i64] }, ptr %t62
  %t73 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t71, ptr %t73
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t55, ptr %t73)
  br label %bb32
bb32:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l3
  %t78 = load i64, ptr %l4, !tbaa !24
  %t82 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t76, %"compiler/source:Span" %t77, i64 %t78)
  store ptr %t82, ptr %l41
  br label %bb33
bb33:
  %t83 = load ptr, ptr %l41, !tbaa !29
  store ptr %t83, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i32
  %l38 = alloca i1
  %l39 = alloca i1
  %l42 = alloca i1
  %l48 = alloca i32
  %l59 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i64
  %l64 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca { i64, [3 x i64] }
  %l69 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i32
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l85 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i64
  %l92 = alloca i1
  %l93 = alloca { i64, ptr }
  %l100 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i64
  %l110 = alloca { i64, ptr }
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l118 = alloca %"compiler/source:Span"
  %l119 = alloca { i64, [3 x i64] }
  %l123 = alloca %"compiler/check:weakPlace"
  %l125 = alloca %"compiler/check:weakPlace"
  %l126 = alloca ptr
  %l127 = alloca i1
  %l139 = alloca ptr
  %l140 = alloca i1
  %l148 = alloca i32
  %l151 = alloca i1
  %l152 = alloca i1
  %l155 = alloca i1
  %l156 = alloca ptr
  %l161 = alloca i32
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i64 %a5, ptr %l5
  store i1 %a6, ptr %l6
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
  store ptr %t5, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t6 = load ptr, ptr %l16, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l16, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 3
  store i1 %t12, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l17, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l7, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t22, i32 0, i32 3
  %t24 = load i1, ptr %t23
  store i1 %t24, ptr %l8, !tbaa !21
  br label %bb8
bb7:
  br label %bb64
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l24, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t32 = load ptr, ptr %l7, !tbaa !29
  %t37 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t30, ptr %t31, ptr %t32)
  store i32 %t37, ptr %l30
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l24, !tbaa !29
  %t39 = load i32, ptr %l30, !tbaa !23
  %t40 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t40, ptr %l31
  br label %bb10
bb10:
  %t41 = load i32, ptr %l31, !tbaa !23
  store i32 %t41, ptr %l9, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load ptr, ptr %l7, !tbaa !29
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t42, ptr %t43, ptr %t44, { i64, ptr } %t45)
  br label %bb11
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l9, !tbaa !23
  %t54 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l38
  br label %bb12
bb12:
  %t55 = load i1, ptr %l38, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb16
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l9, !tbaa !23
  %t60 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l42
  br label %bb15
bb15:
  %t61 = load i1, ptr %l42, !tbaa !21
  store i1 %t61, ptr %l39, !tbaa !21
  br label %bb16
bb16:
  %t62 = load i1, ptr %l39, !tbaa !21
  %t63 = xor i1 %t62, true
  br i1 %t63, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb18:
  br label %bb19
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l9, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l48
  br label %bb20
bb20:
  %t75 = load i32, ptr %l48, !tbaa !23
  %t76 = sext i32 %t75 to i64
  store i64 %t76, ptr %l10, !tbaa !24
  %t78 = load i1, ptr %l8, !tbaa !21
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l10, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t85 = load i1, ptr %l6, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHolds(ptr %v0, ptr %v3, ptr %t82, i64 %t83, { i64, ptr } %t84, i1 %t85)
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb24:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 98
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %t92, i64 %t93)
  store i1 %t96, ptr %l59
  br label %bb25
bb25:
  %t97 = load i1, ptr %l59, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 98
  store ptr %t102, ptr %l62, !tbaa !29
  %t103 = load i64, ptr %l10, !tbaa !24
  store i64 %t103, ptr %l63, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l64, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t109 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakWord(ptr %v0, ptr %v2, ptr %t105, ptr %t106)
  store %"compiler/source:Span" %t109, ptr %l67
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t110 = load ptr, ptr %l64, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l67
  %t112 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t110, %"compiler/source:Span" %t111)
  store { i64, [3 x i64] } %t112, ptr %l68
  br label %bb29
bb29:
  %t113 = load ptr, ptr %l62, !tbaa !29
  %t114 = load i64, ptr %l63, !tbaa !24
  %t115 = load { i64, [3 x i64] }, ptr %l68
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %t113, i64 %t114, { i64, [3 x i64] } %t115)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 5
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %s2, ptr %t121, i64 %t122)
  %t126 = extractvalue { i32, { i64, ptr } } %t125, 1
  %t127 = extractvalue { i32, { i64, ptr } } %t125, 0
  store i32 %t127, ptr %l75
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb33, label %ok.129, !prof !99
ok.129:
  store { i64, ptr } %t126, ptr %l74
  br label %bb32
bb32:
  %t130 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  store i64 %t131, ptr %l76, !tbaa !24
  %t132 = load i64, ptr %l76, !tbaa !24
  %t133 = mul i64 %t132, 1
  %t134 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t133)
  %t135 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  store { i64, ptr } %t136, ptr %l77, !tbaa !27
  %t137 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = load i64, ptr %l76, !tbaa !24
  %t142 = mul i64 %t141, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t138, ptr %t140, i64 %t142, i1 false)
  %t143 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t143, ptr %l69, !tbaa !27
  br label %bb35
bb33:
  br label %bb34
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l78, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t144, ptr %l69, !tbaa !27
  br label %bb35
bb35:
  %t146 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  store i64 %t147, ptr %l80, !tbaa !24
  %t148 = load i64, ptr %l80, !tbaa !24
  %t149 = mul i64 %t148, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t149)
  %t151 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  store { i64, ptr } %t152, ptr %l81, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = load i64, ptr %l80, !tbaa !24
  %t158 = mul i64 %t157, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t154, ptr %t156, i64 %t158, i1 false)
  %t159 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t159, ptr %l11, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t165 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s2, ptr %v3, { i64, ptr } %t160, { i64, ptr } %t161)
  store i1 %t165, ptr %l85
  br label %bb36
bb36:
  %t166 = load i1, ptr %l85, !tbaa !21
  %t167 = xor i1 %t166, true
  br i1 %t167, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s6
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 5
  store ptr %t174, ptr %l89, !tbaa !29
  %t175 = load i64, ptr %l10, !tbaa !24
  store i64 %t175, ptr %l90, !tbaa !24
  %t176 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t178 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s6, { i64, ptr } %t176, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t178, ptr %l92
  br label %bb39
bb38:
  br label %bb44
bb39:
  %t179 = load i1, ptr %l92, !tbaa !21
  br i1 %t179, label %bb40, label %bb41
bb40:
  %t180 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t180, ptr %l93, !tbaa !27
  br label %bb42
bb41:
  %t183 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t183, 1
  %t187 = extractvalue { i64, ptr } %t183, 0
  %t188 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t189 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t190 = add i64 %t187, %t189
  %t192 = extractvalue { i64, ptr } %t184, 1
  %t193 = extractvalue { i64, ptr } %t184, 0
  %t194 = add i64 %t190, %t193
  %t195 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t194)
  call void @olang_textcopy(ptr %t195, ptr %t186, i64 %t187)
  %t196 = getelementptr i8, ptr %t195, i64 %t187
  call void @olang_textcopy(ptr %t196, ptr %t188, i64 %t189)
  %t197 = getelementptr i8, ptr %t196, i64 %t189
  call void @olang_textcopy(ptr %t197, ptr %t192, i64 %t193)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t195, 1
  store { i64, ptr } %t199, ptr %l93, !tbaa !27
  br label %bb42
bb42:
  %t201 = load ptr, ptr %l89, !tbaa !29
  %t202 = load i64, ptr %l90, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l93, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H7dde68908c71339667eba96ae7e6565c(ptr %v0, ptr %t201, i64 %t202, { i64, ptr } %t203)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t204 = load i1, ptr %l6, !tbaa !21
  br i1 %t204, label %bb45, label %bb46
bb45:
  %t206 = load i64, ptr %l4, !tbaa !24
  %t208 = icmp sge i64 %t206, 0
  store i1 %t208, ptr %l100, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb47
bb47:
  %t210 = load i1, ptr %l100, !tbaa !21
  br i1 %t210, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s8
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 7
  store ptr %t216, ptr %l105, !tbaa !29
  %t217 = ptrtoint ptr %s8 to i64
  store i64 %t217, ptr %l106, !tbaa !24
  %t218 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0
  br i1 %t218, label %bb50, label %bb51
bb49:
  br label %bb55
bb50:
  %t220 = call ptr @__olang_region_make(ptr %s8)
  %t221 = ptrtoint ptr %t220 to i64
  store i64 %t221, ptr %l106, !tbaa !24
  br label %bb51
bb51:
  %t222 = load i64, ptr %l4, !tbaa !24
  %t223 = load i64, ptr %l5, !tbaa !24
  %t225 = call i64 @__olang_fmt_i64(ptr null, i64 %t222)
  %t226 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t230 = call i64 @__olang_fmt_i64(ptr null, i64 %t223)
  %t231 = add i64 %t228, %t230
  %t232 = load i64, ptr %l106
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = call ptr @__olang_scope_alloc(ptr %t233, i64 %t231)
  %t235 = call i64 @__olang_fmt_i64(ptr %t234, i64 %t222)
  %t236 = getelementptr i8, ptr %t234, i64 %t225
  call void @olang_textcopy(ptr %t236, ptr %t226, i64 %t227)
  %t237 = getelementptr i8, ptr %t236, i64 %t227
  %t238 = call i64 @__olang_fmt_i64(ptr %t237, i64 %t223)
  %t239 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t234, 1
  store { i64, ptr } %t240, ptr %l110, !tbaa !27
  %t241 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0
  br i1 %t241, label %bb52, label %bb53
bb52:
  %t243 = load i64, ptr %l106
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = load { i64, ptr }, ptr %l110
  %t246 = extractvalue { i64, ptr } %t245, 1
  %t247 = call ptr @__olang_region_or(ptr %t246, ptr null)
  %t248 = icmp ne ptr %t247, null
  %t249 = select i1 %t248, ptr %t247, ptr null
  %t250 = icmp eq ptr %t249, %t244
  call void @__olang_region_settle(ptr %t244, i1 %t250)
  br label %bb53
bb53:
  %t251 = load ptr, ptr %l105, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l110, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %t251, { i64, ptr } %t252, i1 true)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s8)
  br label %bb55
bb55:
  %t253 = load i1, ptr %l6, !tbaa !21
  br i1 %t253, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s10
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/check:Checker", ptr %t255, i32 0, i32 100
  store ptr %t257, ptr %l114, !tbaa !29
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l115, !tbaa !29
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l2, !tbaa !29
  %t263 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakWord(ptr %v0, ptr %v2, ptr %t259, ptr %t260)
  store %"compiler/source:Span" %t263, ptr %l118
  br label %bb58
bb57:
  br label %bb63
bb58:
  %t264 = load ptr, ptr %l115, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l118
  %t266 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t264, %"compiler/source:Span" %t265)
  store { i64, [3 x i64] } %t266, ptr %l119
  br label %bb59
bb59:
  %t267 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t269 = load i64, ptr %l10, !tbaa !24
  %t270 = load { i64, [3 x i64] }, ptr %l119
  %t273 = call %"compiler/check:weakPlace" @compiler_2fcheck_3aweakPlace_2ector(ptr %s10, { i64, [3 x i64] } %t270, { i64, ptr } %t267, i64 %t269)
  store %"compiler/check:weakPlace" %t273, ptr %l123
  br label %bb60
bb60:
  %t275 = call %"compiler/check:weakPlace" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aweakPlace(ptr %s10, ptr %l123)
  store %"compiler/check:weakPlace" %t275, ptr %l125
  br label %bb61
bb61:
  %t276 = load ptr, ptr %l114, !tbaa !29
  %t277 = load %"compiler/check:weakPlace", ptr %l125
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2ePush_H297ef57e7eecfa1bdb33767a82738378(ptr %v0, ptr %s10, ptr %t276, %"compiler/check:weakPlace" %t277)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s10)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s2)
  br label %bb94
bb64:
  %t278 = load ptr, ptr %l2, !tbaa !29
  store ptr %t278, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t279 = load ptr, ptr %l126, !tbaa !29
  %t280 = icmp ne ptr %t279, null
  br i1 %t280, label %bb65, label %bb66
bb65:
  %t282 = load ptr, ptr %l126, !tbaa !29
  %t283 = load i64, ptr %t282, !range !{i64 0, i64 8}
  %t285 = icmp eq i64 %t283, 4
  store i1 %t285, ptr %l127, !tbaa !21
  br label %bb66
bb66:
  %t286 = load i1, ptr %l127, !tbaa !21
  br i1 %t286, label %bb67, label %bb68
bb67:
  %t287 = load ptr, ptr %l2, !tbaa !29
  %t289 = getelementptr { i64, [5 x i64] }, ptr %t287, i32 0, i32 1
  %t290 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t289, i32 0, i32 1
  %t291 = load ptr, ptr %t290
  store ptr %t291, ptr %l12, !tbaa !29
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t295 = load ptr, ptr %l12, !tbaa !29
  %t296 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t297 = load i64, ptr %l4, !tbaa !24
  %t298 = load i64, ptr %l5, !tbaa !24
  %t299 = load i1, ptr %l6, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t293, ptr %t294, ptr %t295, { i64, ptr } %t296, i64 %t297, i64 %t298, i1 %t299)
  br label %bb70
bb70:
  br label %bb94
bb71:
  %t307 = load ptr, ptr %l2, !tbaa !29
  store ptr %t307, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t308 = load ptr, ptr %l139, !tbaa !29
  %t309 = icmp ne ptr %t308, null
  br i1 %t309, label %bb72, label %bb73
bb72:
  %t311 = load ptr, ptr %l139, !tbaa !29
  %t312 = load i64, ptr %t311, !range !{i64 0, i64 8}
  %t314 = icmp eq i64 %t312, 0
  store i1 %t314, ptr %l140, !tbaa !21
  br label %bb73
bb73:
  %t315 = load i1, ptr %l140, !tbaa !21
  br i1 %t315, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb89
bb76:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/check:Checker", ptr %t316, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !29
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t321 = load ptr, ptr %l2, !tbaa !29
  %t326 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t319, ptr %t320, ptr %t321)
  store i32 %t326, ptr %l148
  br label %bb77
bb77:
  %t327 = load i32, ptr %l148, !tbaa !23
  store i32 %t327, ptr %l13, !tbaa !23
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load i32, ptr %l13, !tbaa !23
  %t332 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t328, i32 %t329)
  store i1 %t332, ptr %l151
  br label %bb78
bb78:
  %t333 = load i1, ptr %l151, !tbaa !21
  br i1 %t333, label %bb79, label %bb80
bb79:
  store i1 true, ptr %l152, !tbaa !21
  br label %bb82
bb80:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load i32, ptr %l13, !tbaa !23
  %t338 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t334, i32 %t335)
  store i1 %t338, ptr %l155
  br label %bb81
bb81:
  %t339 = load i1, ptr %l155, !tbaa !21
  store i1 %t339, ptr %l152, !tbaa !21
  br label %bb82
bb82:
  %t340 = load i1, ptr %l152, !tbaa !21
  br i1 %t340, label %bb83, label %bb84
bb83:
  %t341 = load ptr, ptr %l0, !tbaa !29
  store ptr %t341, ptr %l156, !tbaa !29
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/check:Checker", ptr %t342, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t347 = getelementptr %"compiler/generic:Program", ptr %t345, i32 0, i32 2
  %t348 = load i32, ptr %l13, !tbaa !23
  %t351 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t347, i32 %t348)
  store i32 %t351, ptr %l161
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t352 = load i32, ptr %l161, !tbaa !23
  %t353 = sext i32 %t352 to i64
  %t354 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t355 = load i1, ptr %l6, !tbaa !21
  %t356 = load ptr, ptr %l156, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHolds(ptr %v0, ptr %v3, ptr %t356, i64 %t353, { i64, ptr } %t354, i1 %t355)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t362 = load ptr, ptr %l2, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t360, ptr %t361, ptr %t362, { i64, ptr } %t363)
  br label %bb88
bb88:
  br label %bb94
bb89:
  br i1 true, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_99b065cd1779adaf_71b4842056cbdbfb)
  unreachable
bb94:
  br label %ret
ret:
  ret void
}

define dso_local { i32, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eitemOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %rv = alloca { i32, ptr }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 8
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t22 = load i32, ptr %l3, !tbaa !23
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = insertvalue { i32, ptr } undef, i32 %t22, 0
  %t27 = insertvalue { i32, ptr } %t25, ptr %t23, 1
  store { i32, ptr } %t27, ptr %rv
  br label %ret
bb6:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l17, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 9}
  %t36 = icmp eq i64 %t34, 3
  store i1 %t36, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l18, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32 }, ptr %t40, i32 0, i32 1
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l5, !tbaa !23
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t46 = getelementptr %"compiler/check:fieldSet", ptr %a2, i32 0, i32 1
  %t47 = load i32, ptr %t46, !tbaa !23
  %t49 = icmp sge i32 %t47, 0
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load i32, ptr %l5, !tbaa !23
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = insertvalue { i32, ptr } undef, i32 %t51, 0
  %t56 = insertvalue { i32, ptr } %t54, ptr %t52, 1
  store { i32, ptr } %t56, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_a8dc05ade1085e71_1f4ef85bbb60cc55)
  unreachable
bb20:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t59 = insertvalue { i32, ptr } undef, i32 0, 0
  %t61 = insertvalue { i32, ptr } %t59, ptr %t58, 1
  store { i32, ptr } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejudgeEffects(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:effectPlace"
  %l4 = alloca %"compiler/effects:Verdict"
  %l5 = alloca { i64, [3 x i64] }
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l16 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca %"compiler/check:effectPlace"
  %l30 = alloca ptr
  %l34 = alloca %"compiler/effects:Verdict"
  %l36 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca { i64, [3 x i64] }
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca { i64, [3 x i64] }
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca i64
  %l87 = alloca { i64, [3 x i64] }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t80 = alloca { i64, [3 x i64] }, align 8
  %t211 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 62
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l16
  br label %bb4
bb4:
  %t21 = load i64, ptr %l16, !tbaa !24
  %t22 = icmp sgt i64 %t21, 0
  store i1 %t22, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 9
  store ptr null, ptr %t27, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 62
  store ptr %t30, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t32 = load i64, ptr %l2, !tbaa !24
  store i64 %t32, ptr %l21, !tbaa !24
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l23
  br label %bb10
bb10:
  %t36 = load i64, ptr %l21, !tbaa !24
  %t37 = load i64, ptr %l23, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb12:
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = call %"compiler/check:effectPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eAt_H2c6933398e42ebe4f85d63d17b1157eb(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store %"compiler/check:effectPlace" %t46, ptr %l28
  br label %bb14
bb14:
  %t47 = load %"compiler/check:effectPlace", ptr %l28
  store %"compiler/check:effectPlace" %t47, ptr %l3
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t48)
  store ptr %t50, ptr %l30
  br label %bb15
bb15:
  %t51 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 5
  %t56 = load i32, ptr %t55, !tbaa !23
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t61 = call %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eJudge(ptr %v0, ptr %v0, ptr %s3, ptr %t57, i64 %t52, ptr %t54, i32 %t56)
  store %"compiler/effects:Verdict" %t61, ptr %l34
  br label %bb16
bb16:
  %t62 = load %"compiler/effects:Verdict", ptr %l34
  store %"compiler/effects:Verdict" %t62, ptr %l4
  %t63 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t66, ptr %l36
  br label %bb17
bb17:
  %t67 = load i1, ptr %l36, !tbaa !21
  br i1 %t67, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb19:
  br label %bb20
bb20:
  %t68 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 2
  %t71 = getelementptr %"compiler/source:Span", ptr %t70, i32 0, i32 0
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  %t75 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 2
  %t76 = getelementptr %"compiler/source:Span", ptr %t75, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 0
  store i64 3, ptr %t81
  %t83 = insertvalue { i64, i64, i64 } undef, i64 %t69, 0
  %t85 = insertvalue { i64, i64, i64 } %t83, i64 %t74, 1
  %t87 = insertvalue { i64, i64, i64 } %t85, i64 %t79, 2
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 1
  store { i64, i64, i64 } %t87, ptr %t88
  %t89 = load { i64, [3 x i64] }, ptr %t80
  store { i64, [3 x i64] } %t89, ptr %l5
  %t91 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 2
  %t92 = load i1, ptr %t91, !tbaa !21
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 0
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/load:Loader", ptr %t102, i32 0, i32 4
  %t105 = load ptr, ptr %t104, !tbaa !29
  store ptr %t105, ptr %l48, !tbaa !29
  %t106 = load { i64, [3 x i64] }, ptr %l5
  store { i64, [3 x i64] } %t106, ptr %l49
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 3
  %t109 = load i32, ptr %t108, !tbaa !23
  %t112 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t107, i32 %t109)
  store { i64, ptr } %t112, ptr %l52
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t113 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l53, !tbaa !27
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 5
  %t122 = load i32, ptr %t121, !tbaa !23
  %t125 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t120, i32 %t122)
  store { i64, ptr } %t125, ptr %l56
  br label %bb24
bb24:
  %t126 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  %t128 = extractvalue { i64, ptr } %t126, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t133 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t138 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBeyond(ptr %s5, ptr %s5, ptr %s3, ptr %s5, { i64, ptr } %t135, { i64, ptr } %t132, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t138, ptr %l59
  br label %bb25
bb25:
  %t139 = load ptr, ptr %l48, !tbaa !29
  %t140 = load { i64, [3 x i64] }, ptr %l49
  %t141 = load %"compiler/diagmsg:Msg", ptr %l59
  %t142 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t139, { i64, [3 x i64] } %t140, %"compiler/diagmsg:Msg" %t141)
  store i64 %t142, ptr %l60
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb27:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 0
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/load:Loader", ptr %t149, i32 0, i32 4
  %t152 = load ptr, ptr %t151, !tbaa !29
  store ptr %t152, ptr %l64, !tbaa !29
  %t153 = load { i64, [3 x i64] }, ptr %l5
  store { i64, [3 x i64] } %t153, ptr %l65
  %t154 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 4
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l66, !tbaa !27
  %t156 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 1
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l67, !tbaa !27
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 5
  %t160 = load i32, ptr %t159, !tbaa !23
  %t163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t158, i32 %t160)
  store { i64, ptr } %t163, ptr %l70
  br label %bb28
bb28:
  %t164 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  %t171 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 0
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t177 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEffectBeyond(ptr %s3, ptr %s3, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t173, { i64, ptr } %t174, { i64, ptr } %t170, { i64, ptr } %t172)
  store %"compiler/diagmsg:Msg" %t177, ptr %l73
  br label %bb29
bb29:
  %t178 = load ptr, ptr %l64, !tbaa !29
  %t179 = load { i64, [3 x i64] }, ptr %l65
  %t180 = load %"compiler/diagmsg:Msg", ptr %l73
  %t181 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t178, { i64, [3 x i64] } %t179, %"compiler/diagmsg:Msg" %t180)
  store i64 %t181, ptr %l74
  br label %bb30
bb30:
  %t182 = load i64, ptr %l74, !tbaa !24
  store i64 %t182, ptr %l6, !tbaa !24
  %t183 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 5
  %t184 = load i64, ptr %t183, !tbaa !24
  %t186 = icmp sge i64 %t184, 0
  br i1 %t186, label %bb31, label %bb32
bb31:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/generic:Program", ptr %t191, i32 0, i32 0
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/load:Loader", ptr %t194, i32 0, i32 4
  %t197 = load ptr, ptr %t196, !tbaa !29
  store ptr %t197, ptr %l80, !tbaa !29
  %t198 = load i64, ptr %l6, !tbaa !24
  store i64 %t198, ptr %l81, !tbaa !24
  %t199 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 5
  %t200 = load i64, ptr %t199, !tbaa !24
  %t201 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 6
  %t202 = getelementptr %"compiler/source:Span", ptr %t201, i32 0, i32 0
  %t203 = load i32, ptr %t202, !tbaa !23
  %t205 = sext i32 %t203 to i64
  %t206 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 6
  %t207 = getelementptr %"compiler/source:Span", ptr %t206, i32 0, i32 1
  %t208 = load i32, ptr %t207, !tbaa !23
  %t210 = sext i32 %t208 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 0
  store i64 3, ptr %t212
  %t214 = insertvalue { i64, i64, i64 } undef, i64 %t200, 0
  %t216 = insertvalue { i64, i64, i64 } %t214, i64 %t205, 1
  %t218 = insertvalue { i64, i64, i64 } %t216, i64 %t210, 2
  %t219 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  store { i64, i64, i64 } %t218, ptr %t219
  %t220 = load { i64, [3 x i64] }, ptr %t211
  store { i64, [3 x i64] } %t220, ptr %l87
  %t221 = getelementptr %"compiler/effects:Verdict", ptr %l4, i32 0, i32 7
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  %t224 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteEffect(ptr %s3, ptr %s3, { i64, ptr } %t222)
  store %"compiler/diagmsg:Msg" %t224, ptr %l89
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t225 = load ptr, ptr %l80, !tbaa !29
  %t226 = load i64, ptr %l81, !tbaa !24
  %t227 = load { i64, [3 x i64] }, ptr %l87
  %t228 = load %"compiler/diagmsg:Msg", ptr %l89
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s3, ptr %t225, i64 %t226, { i64, [3 x i64] } %t227, %"compiler/diagmsg:Msg" %t228)
  br label %bb34
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb36:
  %t229 = load i64, ptr %l2, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l2, !tbaa !24
  br label %bb9
bb37:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l16 = alloca { i64, ptr }
  %l22 = alloca %"compiler/check:laneNode"
  %l28 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l36 = alloca %"compiler/diagmsg:Msg"
  %l37 = alloca i64
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l3, !tbaa !24
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 39
  %t29 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s2, ptr %t25, i64 %t21)
  store %"compiler/check:laneNode" %t29, ptr %l22
  br label %bb5
bb5:
  %t30 = getelementptr %"compiler/check:laneNode", ptr %l22, i32 0, i32 9
  %t31 = load i64, ptr %t30, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  %t33 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb7:
  br label %bb8
bb8:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp sge i64 %t37, 0
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp ne i64 %t41, %t42
  store i1 %t45, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l28, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l32, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l33
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneLengths(ptr %s4, i64 %t50, i64 %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l36
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t55 = load ptr, ptr %l32, !tbaa !29
  %t56 = load %"compiler/source:Span", ptr %l33
  %t57 = load %"compiler/diagmsg:Msg", ptr %l36
  %t58 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t55, %"compiler/source:Span" %t56, %"compiler/diagmsg:Msg" %t57)
  store i64 %t58, ptr %l37
  br label %bb15
bb15:
  %t59 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  store i64 %t59, ptr %rv
  br label %ret
bb16:
  %t61 = load i64, ptr %l8, !tbaa !24
  store i64 %t61, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l5, !tbaa !24
  br label %bb1
bb18:
  %t67 = load i64, ptr %l3, !tbaa !24
  store i64 %t67, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
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
  %t46 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %t36, i32 %t37, i32 %a2, i64 %t41)
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca ptr
  %t4 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [5 x i64] } zeroinitializer, ptr %t4
  %t5 = getelementptr { i64, [5 x i64] }, ptr %t4, i32 0, i32 0
  store i64 0, ptr %t5
  %t7 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %a1, 0
  %t9 = insertvalue { %"compiler/source:Span", i32, i64 } %t7, i32 %a2, 1
  %t11 = insertvalue { %"compiler/source:Span", i32, i64 } %t9, i64 %a3, 2
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t4, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t11, ptr %t12
  %t13 = load { i64, [5 x i64] }, ptr %t4
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t13, ptr %t15
  store ptr %t15, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca %"compiler/names:Ref"
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l33 = alloca %"compiler/source:Span"
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca %"compiler/source:Span"
  %l42 = alloca i32
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  %l56 = alloca i64
  %l60 = alloca ptr
  %l66 = alloca ptr
  %l72 = alloca ptr
  %l84 = alloca ptr
  %l87 = alloca i1
  %l88 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca i1
  %l97 = alloca ptr
  %l99 = alloca ptr
  %l103 = alloca %"compiler/names:Ref"
  %l105 = alloca ptr
  %l106 = alloca i1
  %l113 = alloca ptr
  %l115 = alloca ptr
  %l119 = alloca %"compiler/names:Ref"
  %l123 = alloca i1
  %l127 = alloca i1
  %l135 = alloca ptr
  %l138 = alloca i1
  %l143 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l147 = alloca i1
  %l149 = alloca i1
  %l152 = alloca { i64, ptr }
  %l153 = alloca i1
  %l160 = alloca ptr
  %l170 = alloca ptr
  %l177 = alloca i32
  %l180 = alloca i1
  %l183 = alloca { i64, ptr }
  %l184 = alloca i1
  %l185 = alloca i1
  %l188 = alloca i1
  %l189 = alloca i1
  %l192 = alloca i1
  %l199 = alloca ptr
  %l202 = alloca i1
  %l205 = alloca i1
  %l211 = alloca ptr
  %l214 = alloca ptr
  %l215 = alloca %"compiler/source:Span"
  %l216 = alloca %"compiler/source:Span"
  %l217 = alloca i32
  %l218 = alloca i32
  %l221 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l228 = alloca i32
  %l231 = alloca i1
  %l236 = alloca i32
  %l239 = alloca ptr
  %l240 = alloca %"compiler/source:Span"
  %l241 = alloca %"compiler/source:Span"
  %l242 = alloca i32
  %l243 = alloca i32
  %l248 = alloca ptr
  %l252 = alloca i64
  %l258 = alloca ptr
  %l264 = alloca ptr
  %l271 = alloca ptr
  %l276 = alloca ptr
  %l282 = alloca ptr
  %l287 = alloca ptr
  %l291 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca ptr
  %t54 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  store ptr %t7, ptr %l21, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t8)
  store ptr %t10, ptr %l23
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l23, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 2
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t17 = load ptr, ptr %l21, !tbaa !29
  %t20 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t17, i64 %t14, i32 %t16)
  store %"compiler/names:Ref" %t20, ptr %l27
  br label %bb2
bb2:
  %t21 = load %"compiler/names:Ref", ptr %l27
  store %"compiler/names:Ref" %t21, ptr %l5
  %t22 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t22, ptr %l28
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t23, i32 %t24)
  store { i64, ptr } %t27, ptr %l31
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = load %"compiler/source:Span", ptr %l28
  %t32 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t30, i64 %t29)
  store %"compiler/source:Span" %t32, ptr %l33
  br label %bb4
bb4:
  %t33 = load %"compiler/source:Span", ptr %l33
  store %"compiler/source:Span" %t33, ptr %l6
  %t34 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 9}
  %t37 = trunc i64 2 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb5, label %bb6
bb5:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l36, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t41, ptr %l37
  %t42 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t42, ptr %l38
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  %t46 = load i32, ptr %l3, !tbaa !23
  %t50 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t43, i64 %t45, i32 %t46)
  store i32 %t50, ptr %l42
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t51 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 0
  store i64 1, ptr %t55
  %t56 = load %"compiler/source:Span", ptr %l38
  %t57 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t56, 0
  %t58 = load i32, ptr %l42, !tbaa !23
  %t59 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t57, i32 %t58, 1
  %t61 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t59, i64 %t52, 2
  %t63 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t61, i32 %t53, 3
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t63, ptr %t64
  %t65 = load { i64, [4 x i64] }, ptr %t54
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t65, ptr %t67
  %t68 = load ptr, ptr %l36, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l37
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t68, %"compiler/source:Span" %t69, ptr %t67)
  store ptr %t71, ptr %l47
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t72 = load ptr, ptr %l47, !tbaa !29
  store ptr %t72, ptr %rv
  br label %ret
bb9:
  %t73 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 9}
  %t76 = trunc i64 3 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb10, label %bb11
bb10:
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l50, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t80, ptr %l51
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = load i32, ptr %l3, !tbaa !23
  %t91 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t84, i64 %t86, i32 %t87)
  store i64 %t91, ptr %l56
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t92 = icmp sge i64 0, 0
  br i1 %t92, label %bb13, label %bb14
bb13:
  %t94 = icmp sle i64 0, 2305843009213693951
  br i1 %t94, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_2c6c6a9e0d4d53fe_41be050b28a8c6c2)
  unreachable
bb15:
  %t96 = mul i64 0, 4
  %t97 = insertvalue { i64, ptr } undef, i64 0, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t99 = load ptr, ptr %l50, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l51
  %t101 = load i64, ptr %l56, !tbaa !24
  %t103 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v2, ptr %v2, ptr %t99, %"compiler/source:Span" %t100, i64 %t101, { i64, ptr } %t98)
  store ptr %t103, ptr %l60
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2c6c6a9e0d4d53fe_41be050b28a8c6c2)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t104 = load ptr, ptr %l60, !tbaa !29
  store ptr %t104, ptr %rv
  br label %ret
bb18:
  %t105 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t106 = load i32, ptr %t105, !range !{i32 0, i32 9}
  %t108 = trunc i64 6 to i32
  %t109 = icmp eq i32 %t106, %t108
  br i1 %t109, label %bb19, label %bb20
bb19:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l1
  %t113 = load i32, ptr %l3, !tbaa !23
  %t117 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v2, ptr %t111, %"compiler/source:Span" %t112, i32 %t113)
  store ptr %t117, ptr %l66
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t118 = load ptr, ptr %l66, !tbaa !29
  store ptr %t118, ptr %rv
  br label %ret
bb22:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l1
  %t121 = load %"compiler/source:Span", ptr %l6
  %t122 = load ptr, ptr %l2, !tbaa !29
  %t123 = load i32, ptr %l3, !tbaa !23
  %t129 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnFact(ptr %v0, ptr %v1, ptr %v2, ptr %t119, %"compiler/source:Span" %t120, %"compiler/source:Span" %t121, ptr %t122, i32 %t123)
  store ptr %t129, ptr %l72
  br label %bb23
bb23:
  %t130 = load ptr, ptr %l72, !tbaa !29
  store ptr %t130, ptr %l7, !tbaa !29
  %t131 = load ptr, ptr %l7, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb24, label %bb25
bb24:
  %t137 = load ptr, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t137, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t139 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t140 = load i32, ptr %t139, !range !{i32 0, i32 9}
  %t142 = trunc i64 0 to i32
  %t143 = icmp eq i32 %t140, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s5, ptr %t147, %"compiler/source:Span" %t148, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l1
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t151, %"compiler/source:Span" %t152)
  store ptr %t155, ptr %l84
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t156 = load ptr, ptr %l84, !tbaa !29
  store ptr %t156, ptr %rv
  br label %ret
bb31:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t161 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %t157, ptr %t158)
  store i1 %t161, ptr %l87
  br label %bb32
bb32:
  %t162 = load i1, ptr %l87, !tbaa !21
  br i1 %t162, label %bb33, label %bb34
bb33:
  %t163 = load ptr, ptr %l2, !tbaa !29
  store ptr %t163, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t164 = load ptr, ptr %l89, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb35, label %bb36
bb34:
  br label %bb65
bb35:
  %t167 = load ptr, ptr %l89, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 30}
  %t170 = icmp eq i64 %t168, 0
  store i1 %t170, ptr %l90, !tbaa !21
  br label %bb36
bb36:
  %t171 = load i1, ptr %l90, !tbaa !21
  br i1 %t171, label %bb37, label %bb38
bb37:
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", i32 }, ptr %t174, i32 0, i32 0
  %t176 = load %"compiler/source:Span", ptr %t175
  store %"compiler/source:Span" %t176, ptr %l8
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = getelementptr %"compiler/generic:Program", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  store ptr %t184, ptr %l97, !tbaa !29
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t185)
  store ptr %t187, ptr %l99
  br label %bb40
bb40:
  %t188 = load ptr, ptr %l99, !tbaa !29
  %t190 = getelementptr %"compiler/check:frame", ptr %t188, i32 0, i32 2
  %t191 = load i64, ptr %t190, !tbaa !24
  %t192 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t193 = load i32, ptr %t192, !tbaa !23
  %t194 = load ptr, ptr %l97, !tbaa !29
  %t197 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t194, i64 %t191, i32 %t193)
  store %"compiler/names:Ref" %t197, ptr %l103
  br label %bb41
bb41:
  %t198 = getelementptr %"compiler/names:Ref", ptr %l103, i32 0, i32 1
  %t199 = load i64, ptr %t198, !tbaa !24
  store i64 %t199, ptr %l88, !tbaa !24
  br label %bb55
bb42:
  %t201 = load ptr, ptr %l2, !tbaa !29
  store ptr %t201, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t202 = load ptr, ptr %l105, !tbaa !29
  %t203 = icmp ne ptr %t202, null
  br i1 %t203, label %bb43, label %bb44
bb43:
  %t205 = load ptr, ptr %l105, !tbaa !29
  %t206 = load i64, ptr %t205, !range !{i64 0, i64 30}
  %t208 = icmp eq i64 %t206, 14
  store i1 %t208, ptr %l106, !tbaa !21
  br label %bb44
bb44:
  %t209 = load i1, ptr %l106, !tbaa !21
  br i1 %t209, label %bb45, label %bb46
bb45:
  %t210 = load ptr, ptr %l2, !tbaa !29
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t210, i32 0, i32 1
  %t213 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t212, i32 0, i32 0
  %t214 = load %"compiler/source:Span", ptr %t213
  store %"compiler/source:Span" %t214, ptr %l9
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/check:Checker", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = getelementptr %"compiler/generic:Program", ptr %t219, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !29
  store ptr %t222, ptr %l113, !tbaa !29
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t223)
  store ptr %t225, ptr %l115
  br label %bb48
bb48:
  %t226 = load ptr, ptr %l115, !tbaa !29
  %t228 = getelementptr %"compiler/check:frame", ptr %t226, i32 0, i32 2
  %t229 = load i64, ptr %t228, !tbaa !24
  %t230 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 1
  %t231 = load i32, ptr %t230, !tbaa !23
  %t232 = load ptr, ptr %l113, !tbaa !29
  %t235 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t232, i64 %t229, i32 %t231)
  store %"compiler/names:Ref" %t235, ptr %l119
  br label %bb49
bb49:
  %t236 = getelementptr %"compiler/names:Ref", ptr %l119, i32 0, i32 1
  %t237 = load i64, ptr %t236, !tbaa !24
  store i64 %t237, ptr %l88, !tbaa !24
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i64 -1, ptr %l88, !tbaa !24
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_954db3133f46ea14_2b823e3792cdf1c0)
  unreachable
bb55:
  %t239 = load i64, ptr %l88, !tbaa !24
  store i64 %t239, ptr %l10, !tbaa !24
  %t240 = load i64, ptr %l10, !tbaa !24
  %t242 = icmp sge i64 %t240, 0
  br i1 %t242, label %bb56, label %bb57
bb56:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i64, ptr %l10, !tbaa !24
  %t246 = load i32, ptr %l3, !tbaa !23
  %t250 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %t244, i64 %t245, i32 %t246)
  store i1 %t250, ptr %l127
  br label %bb58
bb57:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb59
bb58:
  %t251 = load i1, ptr %l127, !tbaa !21
  %t252 = xor i1 %t251, true
  store i1 %t252, ptr %l123, !tbaa !21
  br label %bb59
bb59:
  %t254 = load i1, ptr %l123, !tbaa !21
  br i1 %t254, label %bb60, label %bb61
bb60:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l10, !tbaa !24
  %t257 = load i32, ptr %l3, !tbaa !23
  %t258 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotInModule(ptr %v0, ptr %t255, i64 %t256, i32 %t257, %"compiler/source:Span" %t258)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l1
  %t267 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t263, %"compiler/source:Span" %t264)
  store ptr %t267, ptr %l135
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s0)
  %t268 = load ptr, ptr %l135, !tbaa !29
  store ptr %t268, ptr %rv
  br label %ret
bb65:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l2, !tbaa !29
  %t273 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesPlace(ptr %v0, ptr %v1, ptr %t269, ptr %t270)
  store i1 %t273, ptr %l138
  br label %bb66
bb66:
  %t274 = load i1, ptr %l138, !tbaa !21
  br i1 %t274, label %bb67, label %bb68
bb67:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l1
  %t277 = load %"compiler/source:Span", ptr %l6
  %t278 = load i32, ptr %l3, !tbaa !23
  %t283 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceHere(ptr %v0, ptr %v2, ptr %t275, %"compiler/source:Span" %t276, %"compiler/source:Span" %t277, i32 %t278)
  store ptr %t283, ptr %l143
  br label %bb69
bb68:
  br label %bb70
bb69:
  call void @__olang_scope_close(ptr %s0)
  %t284 = load ptr, ptr %l143, !tbaa !29
  store ptr %t284, ptr %rv
  br label %ret
bb70:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load i32, ptr %l3, !tbaa !23
  %t289 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t285, i32 %t286)
  store { i64, ptr } %t289, ptr %l146
  br label %bb71
bb71:
  %t290 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t291 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t290)
  store i1 %t291, ptr %l147
  br label %bb72
bb72:
  %t292 = load i1, ptr %l147, !tbaa !21
  %t293 = xor i1 %t292, true
  br i1 %t293, label %bb73, label %bb74
bb73:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i32, ptr %l3, !tbaa !23
  %t299 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t295, i32 %t296)
  store { i64, ptr } %t299, ptr %l152
  br label %bb75
bb74:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb77
bb75:
  %t300 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t301 = call i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %t300)
  store i1 %t301, ptr %l153
  br label %bb76
bb76:
  %t302 = load i1, ptr %l153, !tbaa !21
  %t303 = xor i1 %t302, true
  store i1 %t303, ptr %l149, !tbaa !21
  br label %bb77
bb77:
  %t305 = load i1, ptr %l149, !tbaa !21
  br i1 %t305, label %bb78, label %bb79
bb78:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load %"compiler/source:Span", ptr %l1
  %t308 = load %"compiler/source:Span", ptr %l6
  %t309 = load ptr, ptr %l2, !tbaa !29
  %t310 = load i32, ptr %l3, !tbaa !23
  %t316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderValue(ptr %v0, ptr %v1, ptr %v2, ptr %t306, %"compiler/source:Span" %t307, %"compiler/source:Span" %t308, ptr %t309, i32 %t310)
  store ptr %t316, ptr %l160
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t317 = load ptr, ptr %l160, !tbaa !29
  store ptr %t317, ptr %l11, !tbaa !29
  %t318 = load ptr, ptr %l11, !tbaa !29
  %t320 = icmp eq ptr %t318, null
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb81, label %bb82
bb81:
  %t324 = load ptr, ptr %l11, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t324, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l1
  %t328 = load %"compiler/source:Span", ptr %l6
  %t329 = load ptr, ptr %l2, !tbaa !29
  %t330 = load i32, ptr %l3, !tbaa !23
  %t336 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMember(ptr %v0, ptr %v1, ptr %v2, ptr %t326, %"compiler/source:Span" %t327, %"compiler/source:Span" %t328, ptr %t329, i32 %t330)
  store ptr %t336, ptr %l170
  br label %bb85
bb85:
  %t337 = load ptr, ptr %l170, !tbaa !29
  store ptr %t337, ptr %l12, !tbaa !29
  %t338 = load ptr, ptr %l12, !tbaa !29
  %t340 = icmp eq ptr %t338, null
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb86, label %bb87
bb86:
  %t344 = load ptr, ptr %l12, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t344, ptr %rv
  br label %ret
bb87:
  br label %bb88
bb88:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l2, !tbaa !29
  %t350 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t346, ptr %t347)
  store i32 %t350, ptr %l177
  br label %bb89
bb89:
  %t351 = load i32, ptr %l177, !tbaa !23
  store i32 %t351, ptr %l13, !tbaa !23
  %t352 = load i32, ptr %l13, !tbaa !23
  %t354 = icmp sge i32 %t352, 0
  br i1 %t354, label %bb90, label %bb91
bb90:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load i32, ptr %l3, !tbaa !23
  %t360 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t356, i32 %t357)
  store { i64, ptr } %t360, ptr %l183
  br label %bb92
bb91:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb94
bb92:
  %t361 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t362 = call i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %t361)
  store i1 %t362, ptr %l184
  br label %bb93
bb93:
  %t363 = load i1, ptr %l184, !tbaa !21
  store i1 %t363, ptr %l180, !tbaa !21
  br label %bb94
bb94:
  %t364 = load i1, ptr %l180, !tbaa !21
  br i1 %t364, label %bb95, label %bb96
bb95:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t366 = load i32, ptr %l13, !tbaa !23
  %t369 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t365, i32 %t366)
  store i1 %t369, ptr %l188
  br label %bb97
bb96:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb102
bb97:
  %t370 = load i1, ptr %l188, !tbaa !21
  br i1 %t370, label %bb98, label %bb99
bb98:
  store i1 true, ptr %l189, !tbaa !21
  br label %bb101
bb99:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load i32, ptr %l13, !tbaa !23
  %t375 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t371, i32 %t372)
  store i1 %t375, ptr %l192
  br label %bb100
bb100:
  %t376 = load i1, ptr %l192, !tbaa !21
  %t377 = xor i1 %t376, true
  store i1 %t377, ptr %l189, !tbaa !21
  br label %bb101
bb101:
  %t379 = load i1, ptr %l189, !tbaa !21
  store i1 %t379, ptr %l185, !tbaa !21
  br label %bb102
bb102:
  %t380 = load i1, ptr %l185, !tbaa !21
  br i1 %t380, label %bb103, label %bb104
bb103:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load %"compiler/source:Span", ptr %l1
  %t383 = load %"compiler/source:Span", ptr %l6
  %t384 = load i32, ptr %l13, !tbaa !23
  %t385 = load i32, ptr %l3, !tbaa !23
  %t391 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elimit(ptr %v0, ptr %v2, ptr %t381, %"compiler/source:Span" %t382, %"compiler/source:Span" %t383, i32 %t384, i32 %t385)
  store ptr %t391, ptr %l199
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_scope_close(ptr %s0)
  %t392 = load ptr, ptr %l199, !tbaa !29
  store ptr %t392, ptr %rv
  br label %ret
bb106:
  %t393 = load i32, ptr %l13, !tbaa !23
  %t395 = icmp sge i32 %t393, 0
  br i1 %t395, label %bb107, label %bb108
bb107:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i32, ptr %l13, !tbaa !23
  %t401 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t397, i32 %t398)
  store i1 %t401, ptr %l205
  br label %bb109
bb108:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb110
bb109:
  %t402 = load i1, ptr %l205, !tbaa !21
  store i1 %t402, ptr %l202, !tbaa !21
  br label %bb110
bb110:
  %t403 = load i1, ptr %l202, !tbaa !21
  br i1 %t403, label %bb111, label %bb112
bb111:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load %"compiler/source:Span", ptr %l1
  %t406 = load %"compiler/source:Span", ptr %l6
  %t407 = load i32, ptr %l13, !tbaa !23
  %t408 = load i32, ptr %l3, !tbaa !23
  %t414 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elimit(ptr %v0, ptr %v2, ptr %t404, %"compiler/source:Span" %t405, %"compiler/source:Span" %t406, i32 %t407, i32 %t408)
  store ptr %t414, ptr %l211
  br label %bb113
bb112:
  br label %bb114
bb113:
  call void @__olang_scope_close(ptr %s0)
  %t415 = load ptr, ptr %l211, !tbaa !29
  store ptr %t415, ptr %rv
  br label %ret
bb114:
  %t416 = load i32, ptr %l13, !tbaa !23
  %t418 = icmp sge i32 %t416, 0
  br i1 %t418, label %bb115, label %bb116
bb115:
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l214, !tbaa !29
  %t421 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t421, ptr %l215
  %t422 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t422, ptr %l216
  %t423 = load i32, ptr %l13, !tbaa !23
  store i32 %t423, ptr %l217, !tbaa !23
  %t424 = load i32, ptr %l3, !tbaa !23
  store i32 %t424, ptr %l218, !tbaa !23
  %t425 = icmp sge i64 0, 0
  br i1 %t425, label %bb117, label %bb118
bb116:
  br label %bb126
bb117:
  %t427 = icmp sle i64 0, 1152921504606846975
  br i1 %t427, label %bb119, label %bb120
bb118:
  call void @__olang_check_failed(ptr @olang_loc_c41dfbcd22d81110_5c09edf2d4d23d4)
  unreachable
bb119:
  %t429 = mul i64 0, 8
  %t430 = insertvalue { i64, ptr } undef, i64 0, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t431, ptr %l221, !tbaa !27
  %t432 = icmp sge i64 0, 0
  br i1 %t432, label %bb121, label %bb122
bb120:
  call void @__olang_check_failed(ptr @olang_loc_c41dfbcd22d81110_5c09edf2d4d23d4)
  unreachable
bb121:
  %t434 = icmp sle i64 0, 1152921504606846975
  br i1 %t434, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_d2fbf365f111393d_99a61c47f5e25be1)
  unreachable
bb123:
  %t436 = mul i64 0, 8
  %t437 = insertvalue { i64, ptr } undef, i64 0, 0
  %t438 = insertvalue { i64, ptr } %t437, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t439 = load ptr, ptr %l214, !tbaa !29
  %t440 = load %"compiler/source:Span", ptr %l215
  %t441 = load %"compiler/source:Span", ptr %l216
  %t442 = load i32, ptr %l217, !tbaa !23
  %t443 = load i32, ptr %l218, !tbaa !23
  %t444 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t446 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t439, %"compiler/source:Span" %t440, %"compiler/source:Span" %t441, i32 %t442, i32 %t443, { i64, ptr } %t444, { i64, ptr } %t438)
  store ptr %t446, ptr %l225
  br label %bb125
bb124:
  call void @__olang_check_failed(ptr @olang_loc_d2fbf365f111393d_99a61c47f5e25be1)
  unreachable
bb125:
  call void @__olang_scope_close(ptr %s0)
  %t447 = load ptr, ptr %l225, !tbaa !29
  store ptr %t447, ptr %rv
  br label %ret
bb126:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load ptr, ptr %l2, !tbaa !29
  %t452 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t448, ptr %t449)
  store i32 %t452, ptr %l228
  br label %bb127
bb127:
  %t453 = load i32, ptr %l228, !tbaa !23
  store i32 %t453, ptr %l14, !tbaa !23
  %t454 = load i32, ptr %l14, !tbaa !23
  %t456 = icmp sge i32 %t454, 0
  br i1 %t456, label %bb128, label %bb129
bb128:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/check:Checker", ptr %t458, i32 0, i32 1
  %t461 = load ptr, ptr %t460, !tbaa !29
  %t463 = getelementptr %"compiler/generic:Program", ptr %t461, i32 0, i32 2
  %t464 = load i32, ptr %l14, !tbaa !23
  %t467 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t463, i32 %t464)
  store i32 %t467, ptr %l236
  br label %bb130
bb129:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb131
bb130:
  %t468 = load i32, ptr %l236, !range !{i32 0, i32 6}
  %t470 = trunc i64 1 to i32
  %t471 = icmp eq i32 %t468, %t470
  store i1 %t471, ptr %l231, !tbaa !21
  br label %bb131
bb131:
  %t473 = load i1, ptr %l231, !tbaa !21
  br i1 %t473, label %bb132, label %bb133
bb132:
  %t474 = load ptr, ptr %l0, !tbaa !29
  store ptr %t474, ptr %l239, !tbaa !29
  %t475 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t475, ptr %l240
  %t476 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t476, ptr %l241
  %t477 = load i32, ptr %l14, !tbaa !23
  store i32 %t477, ptr %l242, !tbaa !23
  %t478 = load i32, ptr %l3, !tbaa !23
  store i32 %t478, ptr %l243, !tbaa !23
  %t479 = icmp sge i64 0, 0
  br i1 %t479, label %bb134, label %bb135
bb133:
  br label %bb139
bb134:
  %t481 = icmp sle i64 0, 1152921504606846975
  br i1 %t481, label %bb136, label %bb137
bb135:
  call void @__olang_check_failed(ptr @olang_loc_29325a2d88e5d86a_b2ef2c5481dbb3d6)
  unreachable
bb136:
  %t483 = mul i64 0, 8
  %t484 = insertvalue { i64, ptr } undef, i64 0, 0
  %t485 = insertvalue { i64, ptr } %t484, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t487 = load ptr, ptr %l239, !tbaa !29
  %t488 = load %"compiler/source:Span", ptr %l240
  %t489 = load %"compiler/source:Span", ptr %l241
  %t490 = load i32, ptr %l242, !tbaa !23
  %t491 = load i32, ptr %l243, !tbaa !23
  %t494 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCase(ptr %v0, ptr %v0, ptr %v2, ptr %t487, %"compiler/source:Span" %t488, %"compiler/source:Span" %t489, i32 %t490, i32 %t491, { i64, ptr } %t485, i32 %a4)
  store ptr %t494, ptr %l248
  br label %bb138
bb137:
  call void @__olang_check_failed(ptr @olang_loc_29325a2d88e5d86a_b2ef2c5481dbb3d6)
  unreachable
bb138:
  call void @__olang_scope_close(ptr %s0)
  %t495 = load ptr, ptr %l248, !tbaa !29
  store ptr %t495, ptr %rv
  br label %ret
bb139:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load ptr, ptr %l2, !tbaa !29
  %t498 = load i32, ptr %l3, !tbaa !23
  %t502 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedName(ptr %v0, ptr %v1, ptr %t496, ptr %t497, i32 %t498)
  store i64 %t502, ptr %l252
  br label %bb140
bb140:
  %t503 = load i64, ptr %l252, !tbaa !24
  store i64 %t503, ptr %l15, !tbaa !24
  %t504 = load i64, ptr %l15, !tbaa !24
  %t506 = icmp sge i64 %t504, 0
  br i1 %t506, label %bb141, label %bb142
bb141:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t509 = load %"compiler/source:Span", ptr %l1
  %t510 = load i64, ptr %l15, !tbaa !24
  %t514 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t508, %"compiler/source:Span" %t509, i64 %t510)
  store ptr %t514, ptr %l258
  br label %bb143
bb142:
  br label %bb144
bb143:
  call void @__olang_scope_close(ptr %s0)
  %t515 = load ptr, ptr %l258, !tbaa !29
  store ptr %t515, ptr %rv
  br label %ret
bb144:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load %"compiler/source:Span", ptr %l1
  %t518 = load %"compiler/source:Span", ptr %l6
  %t519 = load ptr, ptr %l2, !tbaa !29
  %t520 = load i32, ptr %l3, !tbaa !23
  %t526 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrField(ptr %v0, ptr %v1, ptr %v2, ptr %t516, %"compiler/source:Span" %t517, %"compiler/source:Span" %t518, ptr %t519, i32 %t520)
  store ptr %t526, ptr %l264
  br label %bb145
bb145:
  %t527 = load ptr, ptr %l264, !tbaa !29
  store ptr %t527, ptr %l16, !tbaa !29
  %t528 = load ptr, ptr %l16, !tbaa !29
  %t530 = icmp eq ptr %t528, null
  %t532 = xor i1 %t530, true
  br i1 %t532, label %bb146, label %bb147
bb146:
  %t534 = load ptr, ptr %l16, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t534, ptr %rv
  br label %ret
bb147:
  br label %bb148
bb148:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load ptr, ptr %l2, !tbaa !29
  %t540 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t536, ptr %t537)
  store ptr %t540, ptr %l271
  br label %bb149
bb149:
  %t541 = load ptr, ptr %l271, !tbaa !29
  store ptr %t541, ptr %l17, !tbaa !29
  %t542 = load ptr, ptr %l17, !tbaa !29
  %t544 = icmp eq ptr %t542, null
  br i1 %t544, label %bb150, label %bb151
bb150:
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load %"compiler/source:Span", ptr %l1
  %t550 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t546, %"compiler/source:Span" %t547)
  store ptr %t550, ptr %l276
  br label %bb152
bb151:
  br label %bb153
bb152:
  call void @__olang_scope_close(ptr %s0)
  %t551 = load ptr, ptr %l276, !tbaa !29
  store ptr %t551, ptr %rv
  br label %ret
bb153:
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t553 = load %"compiler/source:Span", ptr %l1
  %t554 = load %"compiler/source:Span", ptr %l6
  %t555 = load ptr, ptr %l17, !tbaa !29
  %t556 = load i32, ptr %l3, !tbaa !23
  %t562 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v2, ptr %v2, ptr %t552, %"compiler/source:Span" %t553, %"compiler/source:Span" %t554, ptr %t555, i32 %t556)
  store ptr %t562, ptr %l282
  br label %bb154
bb154:
  %t563 = load ptr, ptr %l282, !tbaa !29
  store ptr %t563, ptr %l18, !tbaa !29
  %t564 = load ptr, ptr %l18, !tbaa !29
  %t566 = icmp eq ptr %t564, null
  br i1 %t566, label %bb155, label %bb156
bb155:
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t569 = load %"compiler/source:Span", ptr %l1
  %t572 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t568, %"compiler/source:Span" %t569)
  store ptr %t572, ptr %l287
  br label %bb157
bb156:
  br label %bb158
bb157:
  call void @__olang_scope_close(ptr %s0)
  %t573 = load ptr, ptr %l287, !tbaa !29
  store ptr %t573, ptr %rv
  br label %ret
bb158:
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t575 = load %"compiler/source:Span", ptr %l1
  %t576 = load ptr, ptr %l18, !tbaa !29
  %t580 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t574, %"compiler/source:Span" %t575, ptr %t576)
  store ptr %t580, ptr %l291
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s0)
  %t581 = load ptr, ptr %l291, !tbaa !29
  store ptr %t581, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberHint(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"compiler/msgs:Nearest"
  %l26 = alloca i32
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca i32
  %l43 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l55 = alloca i64
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca i1
  %l66 = alloca i64
  %l68 = alloca ptr
  %l72 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l79 = alloca i1
  %l82 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l101 = alloca i32
  %l102 = alloca i64
  %l104 = alloca ptr
  %l109 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l110 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca i32
  %l115 = alloca i1
  %l124 = alloca { i64, ptr }
  %l128 = alloca i1
  %l131 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %wh8 = alloca ptr
  %wc8 = alloca ptr
  %ws8 = alloca i32
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %a2)
  store { i64, ptr } %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t7 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t6)
  store %"compiler/msgs:Nearest" %t7, ptr %l22
  br label %bb2
bb2:
  %t8 = load %"compiler/msgs:Nearest", ptr %l22
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t8, ptr %t9
  store ptr %t9, ptr %l4, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t11, i32 %a1)
  store i32 %t15, ptr %l26
  br label %bb3
bb3:
  %t16 = load i32, ptr %l26, !tbaa !23
  store i32 %t16, ptr %l5, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodNames(ptr %v0, ptr %s1, ptr %t20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l29
  br label %bb4
bb4:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t24 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %t24
  store ptr %t24, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load i64, ptr %l7, !tbaa !24
  store i64 %t26, ptr %l31, !tbaa !24
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s1, ptr %t27)
  store i64 %t29, ptr %l33
  br label %bb6
bb6:
  %t30 = load i64, ptr %l31, !tbaa !24
  %t31 = load i64, ptr %l33, !tbaa !24
  %t32 = icmp slt i64 %t30, %t31
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s1, ptr %t36, i64 %t37)
  store i32 %t40, ptr %l38
  br label %bb10
bb10:
  %t41 = load i32, ptr %l38, !tbaa !23
  store i32 %t41, ptr %l8, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l5, !tbaa !23
  %t47 = load i32, ptr %l8, !tbaa !23
  %t51 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t45, i32 %t46, i32 %t47)
  store i64 %t51, ptr %l43
  br label %bb11
bb11:
  %t52 = load i64, ptr %l43, !tbaa !24
  store i64 %t52, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp slt i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i32, ptr %l5, !tbaa !23
  %t62 = load i32, ptr %l8, !tbaa !23
  %t66 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %s3, ptr %t60, i32 %t61, i32 %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l50
  br label %bb14
bb13:
  br label %bb20
bb14:
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l10
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %l10)
  store i64 %t69, ptr %l52
  br label %bb15
bb15:
  %t70 = load i64, ptr %l52, !tbaa !24
  %t71 = icmp ne i64 %t70, 1
  br i1 %t71, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb17:
  br label %bb18
bb18:
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s3, ptr %l10, i64 0)
  store i64 %t74, ptr %l55
  br label %bb19
bb19:
  %t75 = load i64, ptr %l55, !tbaa !24
  store i64 %t75, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l8, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t76, i32 %t77)
  store { i64, ptr } %t80, ptr %l58
  br label %bb21
bb21:
  %t81 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t81, ptr %l59, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 0
  %t85 = load i8, ptr %t84, !tbaa !32
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t85)
  store i1 %t87, ptr %l61
  br label %bb22
bb22:
  %t88 = load i1, ptr %l61, !tbaa !21
  br i1 %t88, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb27
bb24:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t92, i64 %t93)
  store i64 %t96, ptr %l66
  br label %bb25
bb25:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t97)
  store ptr %t99, ptr %l68
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l68, !tbaa !29
  %t102 = getelementptr %"compiler/check:frame", ptr %t100, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = load i64, ptr %l66, !tbaa !24
  %t106 = icmp eq i64 %t104, %t103
  store i1 %t106, ptr %l62, !tbaa !21
  br label %bb27
bb27:
  %t108 = load i1, ptr %l62, !tbaa !21
  br i1 %t108, label %bb28, label %bb29
bb28:
  %t109 = load ptr, ptr %l4, !tbaa !29
  store ptr %t109, ptr %l72, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l8, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t110, i32 %t111)
  store { i64, ptr } %t114, ptr %l75
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t115 = load ptr, ptr %l72, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l75, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t115, { i64, ptr } %t116)
  br label %bb31
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb33:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l7, !tbaa !24
  br label %bb5
bb34:
  call void @__olang_scope_close(ptr %s1)
  br i1 %a3, label %bb35, label %bb36
bb35:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l5, !tbaa !23
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t123, i32 %t124)
  store i1 %t127, ptr %l82
  br label %bb37
bb36:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb38
bb37:
  %t128 = load i1, ptr %l82, !tbaa !21
  store i1 %t128, ptr %l79, !tbaa !21
  br label %bb38
bb38:
  %t129 = load i1, ptr %l79, !tbaa !21
  br i1 %t129, label %bb39, label %bb40
bb39:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l84, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l5, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l89
  br label %bb41
bb40:
  store ptr null, ptr %l83, !tbaa !29
  br label %bb43
bb41:
  %t141 = load ptr, ptr %l84, !tbaa !29
  %t142 = load i32, ptr %l89, !tbaa !23
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %s0, ptr %t141, i32 %t142)
  store ptr %t143, ptr %l90
  br label %bb42
bb42:
  %t144 = load ptr, ptr %l90, !tbaa !29
  store ptr %t144, ptr %l83, !tbaa !29
  br label %bb43
bb43:
  %t145 = load ptr, ptr %l83, !tbaa !29
  store ptr %t145, ptr %l11, !tbaa !29
  %t146 = load ptr, ptr %l11, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  br i1 %t148, label %bb44, label %bb45
bb44:
  %t150 = load ptr, ptr %l4, !tbaa !29
  %t152 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %v1, ptr %t150)
  store { i64, ptr } %t152, ptr %l94
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  %t153 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t153, ptr %rv
  br label %ret
bb47:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  store ptr %t157, ptr %l96, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l5, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l101
  br label %bb48
bb48:
  %t168 = load ptr, ptr %l96, !tbaa !29
  %t169 = load i32, ptr %l101, !tbaa !23
  %t170 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t168, i32 %t169)
  store i64 %t170, ptr %l102
  br label %bb49
bb49:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t171)
  store ptr %t173, ptr %l104
  br label %bb50
bb50:
  %t174 = load ptr, ptr %l104, !tbaa !29
  %t176 = getelementptr %"compiler/check:frame", ptr %t174, i32 0, i32 1
  %t177 = load i64, ptr %t176, !tbaa !24
  %t178 = load i64, ptr %l102, !tbaa !24
  %t180 = icmp eq i64 %t178, %t177
  store i1 %t180, ptr %l12, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s8
  %t182 = load ptr, ptr %l11, !tbaa !29
  %t184 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %s0, ptr %s8, ptr %t182)
  %t185 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t184, 0, 1
  %t186 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t184, 0, 0
  store ptr %t185, ptr %wh8
  store ptr %t186, ptr %wc8
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t184, ptr %l109
  br label %bb51
bb51:
  %t187 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l109
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t187, ptr %l13
  br label %bb52
bb52:
  %t189 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s8, ptr %l13)
  %t190 = extractvalue { i32, ptr } %t189, 1
  %t191 = extractvalue { i32, ptr } %t189, 0
  store i32 %t191, ptr %l113
  %t192 = icmp ne i32 %t191, 0
  br i1 %t192, label %bb54, label %ok.193, !prof !99
ok.193:
  store ptr %t190, ptr %l112
  br label %bb53
bb53:
  %t194 = load ptr, ptr %l112, !tbaa !29
  store ptr %t194, ptr %l110, !tbaa !29
  br label %bb56
bb54:
  %t195 = load i32, ptr %l113, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  store i1 %t198, ptr %l115, !tbaa !21
  br label %bb55
bb55:
  br label %bb74
bb56:
  %t199 = load ptr, ptr %l110, !tbaa !29
  %t202 = getelementptr %"compiler/ast:VarDecl", ptr %t199, i32 0, i32 0
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  store { i64, ptr } %t203, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  store i64 %t207, ptr %l17, !tbaa !24
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s11
  %t209 = load i64, ptr %l16, !tbaa !24
  %t210 = load i64, ptr %l17, !tbaa !24
  %t213 = icmp slt i64 %t209, %t210
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s11)
  br label %bb72
bb59:
  br label %bb60
bb60:
  %t217 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t217, ptr %l124, !tbaa !27
  %t218 = load i64, ptr %l16, !tbaa !24
  %t220 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr i32, ptr %t221, i64 %t218
  %t223 = load i32, ptr %t222, !tbaa !33
  store i32 %t223, ptr %l18, !tbaa !23
  %t225 = load i1, ptr %l12, !tbaa !21
  br i1 %t225, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l128, !tbaa !21
  br label %bb65
bb62:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load i32, ptr %l18, !tbaa !23
  %t231 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s11, ptr %t227, i32 %t228)
  store { i64, ptr } %t231, ptr %l131
  br label %bb63
bb63:
  %t232 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t232, ptr %l132, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i8, ptr %t234, i64 0
  %t236 = load i8, ptr %t235, !tbaa !32
  %t238 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t236)
  store i1 %t238, ptr %l134
  br label %bb64
bb64:
  %t239 = load i1, ptr %l134, !tbaa !21
  store i1 %t239, ptr %l128, !tbaa !21
  br label %bb65
bb65:
  %t240 = load i1, ptr %l128, !tbaa !21
  br i1 %t240, label %bb66, label %bb67
bb66:
  %t241 = load ptr, ptr %l4, !tbaa !29
  store ptr %t241, ptr %l135, !tbaa !29
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i32, ptr %l18, !tbaa !23
  %t246 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t242, i32 %t243)
  store { i64, ptr } %t246, ptr %l138
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t247 = load ptr, ptr %l135, !tbaa !29
  %t248 = load { i64, ptr }, ptr %l138, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t247, { i64, ptr } %t248)
  br label %bb69
bb69:
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s11)
  br label %bb71
bb71:
  %t249 = load i64, ptr %l16, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l16, !tbaa !24
  br label %bb57
bb72:
  br label %bb73
bb73:
  br label %bb52
bb74:
  store i32 0, ptr %ws8
  br label %wend8
wend8.c0:
  call void @__olang_scope_close(ptr %s8)
  %t253 = load ptr, ptr %l4, !tbaa !29
  %t255 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %v1, ptr %t253)
  store { i64, ptr } %t255, ptr %l142
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s0)
  %t256 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t256, ptr %rv
  br label %ret
wend8:
  %t257 = load ptr, ptr %wh8
  %t258 = load ptr, ptr %wc8
  %t259 = call ptr @llvm.coro.promise(ptr %t257, i32 8, i1 false)
  %t260 = getelementptr { { i32, ptr }, i32 }, ptr %t259, i32 0, i32 1
  store i32 2, ptr %t260
  %t261 = call { i32, ptr } %t258(ptr %t257, ptr null)
  %t262 = load i32, ptr %ws8
  switch i32 %t262, label %wend8.c0 [ ]
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 true)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l14 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l72 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca i64
  %l85 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l98 = alloca ptr
  %l102 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t3 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s0, i32 %t1)
  store { i64, ptr } %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t4, ptr %l6, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load i1, ptr %l14, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l16, !tbaa !29
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t11)
  store i32 %t14, ptr %l19
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l16, !tbaa !29
  %t16 = load i32, ptr %l19, !tbaa !23
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t17, ptr %l20
  br label %bb7
bb7:
  %t18 = load i32, ptr %l20, !tbaa !23
  store i32 %t18, ptr %l7, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l7, !tbaa !23
  %t23 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l23
  br label %bb8
bb8:
  %t24 = load i1, ptr %l23, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l26, !tbaa !29
  %t29 = load i32, ptr %l7, !tbaa !23
  store i32 %t29, ptr %l27, !tbaa !23
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t30, ptr %l28, !tbaa !27
  %t31 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t31, ptr %l29
  %t32 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t34 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t32)
  store { i64, ptr } %t34, ptr %l31
  br label %bb12
bb12:
  %t35 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t36 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %s0, { i64, ptr } %t35)
  store { i64, ptr } %t36, ptr %l32
  br label %bb13
bb13:
  %t37 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  %t39 = extractvalue { i64, ptr } %t37, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = load i32, ptr %l27, !tbaa !23
  %t46 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t47 = load %"compiler/source:Span", ptr %l29
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s0, ptr %s0, ptr %t44, i32 %t45, { i64, ptr } %t46, i64 1, %"compiler/source:Span" %t47, { i64, ptr } %t43)
  store i64 %t49, ptr %l34
  br label %bb14
bb14:
  %t50 = load i64, ptr %l34, !tbaa !24
  store i64 %t50, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l38, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l39, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l43
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l43, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Func", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = load ptr, ptr %l39, !tbaa !29
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t70, i32 %t69)
  store { i64, ptr } %t72, ptr %l46
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 50
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l47, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t77 = load ptr, ptr %l38, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 50
  store { i64, ptr } %t76, ptr %t78, !tbaa !27
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e50
  br i1 %t79, label %bb20, label %bb21
bb20:
  %t81 = load { i64, ptr }, ptr %l47
  %t82 = extractvalue { i64, ptr } %t81, 1
  call void @__olang_region_release(ptr %t82)
  store { i64, ptr } zeroinitializer, ptr %l47
  br label %bb21
bb21:
  %t83 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t85 = trunc i64 99 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb24
bb23:
  %t88 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t90 = trunc i64 98 to i32
  %t91 = icmp eq i32 %t88, %t90
  store i1 %t91, ptr %l51, !tbaa !21
  br label %bb24
bb24:
  %t93 = load i1, ptr %l51, !tbaa !21
  br i1 %t93, label %bb25, label %bb26
bb25:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l54, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t95, ptr %l55
  %t96 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t96, ptr %l56
  %t97 = load i64, ptr %l8, !tbaa !24
  store i64 %t97, ptr %l57, !tbaa !24
  %t98 = load ptr, ptr %l5, !tbaa !29
  store ptr %t98, ptr %l59, !tbaa !29
  %t100 = icmp sge i64 0, 0
  br i1 %t100, label %bb27, label %bb28
bb26:
  br label %bb41
bb27:
  %t102 = icmp sle i64 0, 1152921504606846975
  br i1 %t102, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_9311a1fdea965308_123228c6f8b4663c)
  unreachable
bb29:
  %t104 = mul i64 0, 8
  %t105 = insertvalue { i64, ptr } undef, i64 0, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t106, ptr %l62, !tbaa !27
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l4, !tbaa !29
  %t111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v0, ptr %t107, ptr %t108)
  store { i64, ptr } %t111, ptr %l65
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_9311a1fdea965308_123228c6f8b4663c)
  unreachable
bb31:
  %t112 = icmp sge i64 0, 0
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t114 = icmp sle i64 0, 2305843009213693951
  br i1 %t114, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb34:
  %t116 = mul i64 0, 4
  %t117 = insertvalue { i64, ptr } undef, i64 0, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t119 = load ptr, ptr %l54, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l55
  %t121 = load %"compiler/source:Span", ptr %l56
  %t122 = load i64, ptr %l57, !tbaa !24
  %t123 = load ptr, ptr %l59, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t119, %"compiler/source:Span" %t120, %"compiler/source:Span" %t121, i64 %t122, ptr %t123, { i64, ptr } %t124, { i64, ptr } %t125, { i64, ptr } %t118)
  store ptr %t127, ptr %l69
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb36:
  %t128 = load ptr, ptr %l69, !tbaa !29
  store ptr %t128, ptr %l9, !tbaa !29
  %t129 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t131 = trunc i64 98 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb37, label %bb38
bb37:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  %t136 = load ptr, ptr %l9, !tbaa !29
  %t140 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t134, %"compiler/source:Span" %t135, ptr %t136)
  store ptr %t140, ptr %l76
  br label %bb39
bb38:
  %t141 = load ptr, ptr %l9, !tbaa !29
  store ptr %t141, ptr %l72, !tbaa !29
  br label %bb40
bb39:
  %t144 = load ptr, ptr %l76, !tbaa !29
  store ptr %t144, ptr %l72, !tbaa !29
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t146 = load ptr, ptr %l72, !tbaa !29
  store ptr %t146, ptr %rv
  br label %ret
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l80, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t148, ptr %l81
  %t149 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t149, ptr %l82
  %t150 = load i64, ptr %l8, !tbaa !24
  store i64 %t150, ptr %l83, !tbaa !24
  %t151 = load ptr, ptr %l4, !tbaa !29
  store ptr %t151, ptr %l85, !tbaa !29
  %t153 = icmp sge i64 0, 0
  br i1 %t153, label %bb42, label %bb43
bb42:
  %t155 = icmp sle i64 0, 1152921504606846975
  br i1 %t155, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_53860b63ce2a3756_eab450cf1ae092ca)
  unreachable
bb44:
  %t157 = mul i64 0, 8
  %t158 = insertvalue { i64, ptr } undef, i64 0, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t159, ptr %l88, !tbaa !27
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l5, !tbaa !29
  %t164 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v2, ptr %v0, ptr %t160, ptr %t161)
  store { i64, ptr } %t164, ptr %l91
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_53860b63ce2a3756_eab450cf1ae092ca)
  unreachable
bb46:
  %t165 = icmp sge i64 0, 0
  br i1 %t165, label %bb47, label %bb48
bb47:
  %t167 = icmp sle i64 0, 2305843009213693951
  br i1 %t167, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb49:
  %t169 = mul i64 0, 4
  %t170 = insertvalue { i64, ptr } undef, i64 0, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t172 = load ptr, ptr %l80, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l81
  %t174 = load %"compiler/source:Span", ptr %l82
  %t175 = load i64, ptr %l83, !tbaa !24
  %t176 = load ptr, ptr %l85, !tbaa !29
  %t177 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t172, %"compiler/source:Span" %t173, %"compiler/source:Span" %t174, i64 %t175, ptr %t176, { i64, ptr } %t177, { i64, ptr } %t178, { i64, ptr } %t171)
  store ptr %t180, ptr %l95
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb51:
  %t181 = load ptr, ptr %l95, !tbaa !29
  store ptr %t181, ptr %l10, !tbaa !29
  %t182 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t184 = trunc i64 100 to i32
  %t185 = icmp eq i32 %t182, %t184
  br i1 %t185, label %bb52, label %bb53
bb52:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t189 = load ptr, ptr %l10, !tbaa !29
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t187, %"compiler/source:Span" %t188, ptr %t189)
  store ptr %t193, ptr %l102
  br label %bb54
bb53:
  %t194 = load ptr, ptr %l10, !tbaa !29
  store ptr %t194, ptr %l98, !tbaa !29
  br label %bb55
bb54:
  %t197 = load ptr, ptr %l102, !tbaa !29
  store ptr %t197, ptr %l98, !tbaa !29
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  %t199 = load ptr, ptr %l98, !tbaa !29
  store ptr %t199, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamOn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/generic:Binding"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l30 = alloca i1
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca { i64, ptr }
  %l49 = alloca %"compiler/generic:Binding"
  %l51 = alloca { i64, ptr }
  %l55 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %l90 = alloca i32
  %l91 = alloca { i64, ptr }
  %l100 = alloca i32
  %l104 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l107 = alloca i32
  %l108 = alloca i64
  %l113 = alloca i32
  %l114 = alloca i32
  %l119 = alloca i1
  %l120 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l18, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l21, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t16, i64 %t17)
  store i32 %t20, ptr %l25
  br label %bb1
bb1:
  %t21 = load ptr, ptr %l21, !tbaa !29
  %t22 = load i32, ptr %l25, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t23, ptr %l26
  br label %bb2
bb2:
  %t24 = load ptr, ptr %l18, !tbaa !29
  %t25 = load i32, ptr %l26, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store { i64, ptr } %t26, ptr %l27
  br label %bb3
bb3:
  %t27 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t27, ptr %l4, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = icmp slt i64 %t28, 0
  br i1 %t30, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb6
bb5:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t38 = icmp sge i64 %t32, %t35
  store i1 %t38, ptr %l30, !tbaa !21
  br label %bb6
bb6:
  %t40 = load i1, ptr %l30, !tbaa !21
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t41, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t43)
  store i64 %t45, ptr %l37
  br label %bb10
bb10:
  %t46 = load i64, ptr %l37, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l41
  br label %bb11
bb11:
  %t55 = load i64, ptr %l41, !tbaa !24
  store i64 %t55, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = icmp eq i64 %t56, 0
  br i1 %t58, label %bb12, label %bb13
bb12:
  %t60 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t60, ptr %l44, !tbaa !27
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i32, ptr %t64, i64 %t61
  %t66 = load i32, ptr %t65, !tbaa !33
  call void @__olang_scope_close(ptr %s0)
  store i32 %t66, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load i64, ptr %l6, !tbaa !24
  %t72 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t68, i64 %t69)
  store %"compiler/generic:Binding" %t72, ptr %l49
  br label %bb15
bb15:
  %t73 = load %"compiler/generic:Binding", ptr %l49
  store %"compiler/generic:Binding" %t73, ptr %l7
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t75, ptr %l51, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 0
  %t79 = load i32, ptr %t78, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t74, i32 %t79, i32 %a2, ptr %l7, i1 false, i1 true)
  br label %bb16
bb16:
  %t85 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  store i64 %t86, ptr %l55, !tbaa !24
  %t87 = load i64, ptr %l55, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb17, label %bb18
bb17:
  %t90 = load i64, ptr %l55, !tbaa !24
  %t91 = icmp sle i64 %t90, 2305843009213693951
  br i1 %t91, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_d8c7da3a96e96ec6_ffec47baa4f6769a)
  unreachable
bb19:
  %t93 = load i64, ptr %l55, !tbaa !24
  %t94 = mul i64 %t93, 4
  %t95 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t99 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 1
  %t100 = load i64, ptr %t99, !tbaa !24
  store i64 %t100, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t102 = load i64, ptr %l10, !tbaa !24
  %t103 = load i64, ptr %l9, !tbaa !24
  %t106 = icmp sgt i64 %t102, %t103
  br i1 %t106, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d8c7da3a96e96ec6_ffec47baa4f6769a)
  unreachable
bb21:
  %t108 = load i64, ptr %l11, !tbaa !24
  %t110 = icmp sgt i64 %t108, 0
  br i1 %t110, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb26
bb23:
  %t112 = load i64, ptr %l10, !tbaa !24
  %t113 = load i64, ptr %l9, !tbaa !24
  %t116 = sub i64 %t112, %t113
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t122 = sub i64 %t120, 1
  %t123 = load i64, ptr %l11, !tbaa !24
  %t126 = sdiv i64 %t122, %t123
  store i64 %t126, ptr %l66, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb25
bb25:
  %t128 = load i64, ptr %l66, !tbaa !24
  store i64 %t128, ptr %l63, !tbaa !24
  br label %bb26
bb26:
  %t129 = load i64, ptr %l63, !tbaa !24
  store i64 %t129, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb27
bb27:
  %t130 = load i64, ptr %l13, !tbaa !24
  %t131 = load i64, ptr %l12, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb28, label %bb29
bb28:
  br label %bb36
bb29:
  br label %bb30
bb30:
  %t138 = load i64, ptr %l9, !tbaa !24
  %t139 = load i64, ptr %l13, !tbaa !24
  %t140 = load i64, ptr %l11, !tbaa !24
  %t143 = mul i64 %t139, %t140
  %t146 = add i64 %t138, %t143
  store i64 %t146, ptr %l14, !tbaa !24
  %t148 = load i64, ptr %l14, !tbaa !24
  store i64 %t148, ptr %l84, !tbaa !24
  %t149 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  store { i64, ptr } %t150, ptr %l85, !tbaa !27
  %t151 = load i64, ptr %l14, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i32, ptr %t154, i64 %t151
  %t156 = load i32, ptr %t155, !tbaa !33
  %t157 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t160 = icmp ne i32 %t156, %t157
  br i1 %t160, label %bb31, label %bb32
bb31:
  %t162 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l91, !tbaa !27
  %t164 = load i64, ptr %l14, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t164
  %t169 = load i32, ptr %t168, !tbaa !33
  store i32 %t169, ptr %l90, !tbaa !23
  br label %bb34
bb32:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 0
  %t178 = load i64, ptr %t177, !tbaa !24
  %t179 = load i64, ptr %l14, !tbaa !24
  %t180 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t185 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t176, i64 %t178, i64 %t179, i64 %t180)
  store i32 %t185, ptr %l100
  br label %bb33
bb33:
  %t186 = load i32, ptr %l100, !tbaa !23
  store i32 %t186, ptr %l90, !tbaa !23
  br label %bb34
bb34:
  %t187 = load i32, ptr %l90, !tbaa !23
  %t188 = load i64, ptr %l84, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i32, ptr %t190, i64 %t188
  store i32 %t187, ptr %t191, !tbaa !33
  br label %bb35
bb35:
  %t192 = load i64, ptr %l13, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l13, !tbaa !24
  br label %bb27
bb36:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/check:Checker", ptr %t196, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !29
  store ptr %t199, ptr %l104, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t200, ptr %l105, !tbaa !27
  %t201 = load i64, ptr %l3, !tbaa !24
  %t203 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr i32, ptr %t204, i64 %t201
  %t206 = load i32, ptr %t205, !tbaa !33
  store i32 %t206, ptr %l107, !tbaa !23
  %t207 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 0
  %t208 = load i64, ptr %t207, !tbaa !24
  store i64 %t208, ptr %l108, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/check:Checker", ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t214 = getelementptr %"compiler/generic:Program", ptr %t212, i32 0, i32 2
  %t215 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t218 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t214, { i64, ptr } %t215)
  store i32 %t218, ptr %l113
  br label %bb37
bb37:
  %t219 = load ptr, ptr %l104, !tbaa !29
  %t220 = load i32, ptr %l107, !tbaa !23
  %t221 = load i64, ptr %l108, !tbaa !24
  %t222 = load i32, ptr %l113, !tbaa !23
  %t223 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t219, i32 %t220, i64 %t221, i32 %t222)
  store i32 %t223, ptr %l114
  br label %bb38
bb38:
  %t224 = load i32, ptr %l114, !tbaa !23
  store i32 %t224, ptr %l15, !tbaa !23
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = load i32, ptr %l15, !tbaa !23
  %t234 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t230, i32 %t231)
  store i1 %t234, ptr %l119
  br label %bb39
bb39:
  %t235 = load i1, ptr %l119, !tbaa !21
  br i1 %t235, label %bb40, label %bb41
bb40:
  %t236 = load i32, ptr %l15, !tbaa !23
  store i32 %t236, ptr %l120, !tbaa !23
  br label %bb42
bb41:
  %t238 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t238, ptr %l120, !tbaa !23
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t240 = load i32, ptr %l120, !tbaa !23
  store i32 %t240, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplacement(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l32 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca i1
  %l47 = alloca %"compiler/source:Span"
  %l53 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca i32
  %l64 = alloca i32
  %l69 = alloca i32
  %l75 = alloca i32
  %l79 = alloca i1
  %l83 = alloca i1
  %l91 = alloca i32
  %l95 = alloca i64
  %l100 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l119 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca ptr
  %l129 = alloca %"compiler/source:Span"
  %l133 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l135 = alloca ptr
  %l140 = alloca i32
  %l141 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l150 = alloca %"compiler/diagmsg:Msg"
  %l151 = alloca i64
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
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l15, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Func", ptr %t10, i32 0, i32 7
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Func", ptr %t15, i32 0, i32 3
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/ast:Sig", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = icmp ne i64 %t23, 1
  store i1 %t25, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t27 = load i1, ptr %l18, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb8
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t31, i64 %t32)
  store i1 %t35, ptr %l28
  br label %bb7
bb7:
  %t36 = load i1, ptr %l28, !tbaa !21
  store i1 %t36, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l24, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t45, ptr %l32
  br label %bb12
bb12:
  %t46 = load i64, ptr %l32, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Func", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %t50, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t47, i32 %t51)
  store { i64, ptr } %t54, ptr %l36
  br label %bb13
bb13:
  %t55 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t55, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t56, ptr %l37
  br label %bb14
bb14:
  %t57 = load i1, ptr %l37, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/load:Loader", ptr %t65, i32 0, i32 12
  %t68 = load i64, ptr %t67, !tbaa !24
  %t71 = icmp eq i64 %t58, %t68
  store i1 %t71, ptr %l38, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb17
bb17:
  %t73 = load i1, ptr %l38, !tbaa !21
  br i1 %t73, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 4
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t79 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t77)
  store %"compiler/source:Span" %t79, ptr %l47
  br label %bb21
bb21:
  %t80 = getelementptr %"compiler/source:Span", ptr %l47, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = icmp sge i32 %t81, 0
  br i1 %t83, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  br label %bb24
bb24:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = load i64, ptr %l1, !tbaa !24
  %t92 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t88, i64 %t89)
  store i32 %t92, ptr %l53
  br label %bb25
bb25:
  %t93 = load i32, ptr %l53, !tbaa !23
  store i32 %t93, ptr %l4, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l56, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l57, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l4, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l62
  br label %bb26
bb26:
  %t111 = load ptr, ptr %l57, !tbaa !29
  %t112 = load i32, ptr %l62, !tbaa !23
  %t113 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t113, ptr %l63
  br label %bb27
bb27:
  %t114 = load ptr, ptr %l56, !tbaa !29
  %t115 = load i32, ptr %l63, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t116, ptr %l64
  br label %bb28
bb28:
  %t117 = load i32, ptr %l64, !tbaa !23
  store i32 %t117, ptr %l5, !tbaa !23
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  %t124 = load i32, ptr %l5, !tbaa !23
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t123, i32 %t124)
  store i32 %t127, ptr %l69
  br label %bb29
bb29:
  %t128 = load i32, ptr %l69, !range !{i32 0, i32 33}
  %t130 = trunc i64 18 to i32
  %t131 = icmp eq i32 %t128, %t130
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr %l5, !tbaa !23
  %t139 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t139, ptr %l75
  br label %bb33
bb33:
  %t140 = load i32, ptr %l75, !range !{i32 0, i32 6}
  store i32 %t140, ptr %l6
  %t141 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t143 = trunc i64 0 to i32
  %t144 = icmp eq i32 %t141, %t143
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb34, label %bb35
bb34:
  %t148 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t150 = trunc i64 1 to i32
  %t151 = icmp eq i32 %t148, %t150
  %t153 = xor i1 %t151, true
  store i1 %t153, ptr %l79, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb36
bb36:
  %t155 = load i1, ptr %l79, !tbaa !21
  br i1 %t155, label %bb37, label %bb38
bb37:
  %t156 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t158 = trunc i64 4 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  store i1 %t161, ptr %l83, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb39
bb39:
  %t163 = load i1, ptr %l83, !tbaa !21
  br i1 %t163, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb41:
  br label %bb42
bb42:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  %t170 = load i32, ptr %l5, !tbaa !23
  %t173 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t169, i32 %t170)
  store i32 %t173, ptr %l91
  br label %bb43
bb43:
  %t174 = load i32, ptr %l91, !tbaa !23
  store i32 %t174, ptr %l7, !tbaa !23
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t179 = load i32, ptr %l7, !tbaa !23
  %t182 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t178, i32 %t179)
  store i64 %t182, ptr %l95
  br label %bb44
bb44:
  %t183 = load i64, ptr %l3, !tbaa !24
  %t184 = load i64, ptr %l95, !tbaa !24
  %t186 = icmp ne i64 %t184, %t183
  br i1 %t186, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb46:
  br label %bb47
bb47:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/generic:Program", ptr %t191, i32 0, i32 2
  store ptr %t193, ptr %l100, !tbaa !29
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t199 = getelementptr %"compiler/generic:Program", ptr %t197, i32 0, i32 2
  %t200 = load i32, ptr %l4, !tbaa !23
  %t203 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t199, i32 %t200)
  store i32 %t203, ptr %l105
  br label %bb48
bb48:
  %t204 = load ptr, ptr %l100, !tbaa !29
  %t205 = load i32, ptr %l105, !tbaa !23
  %t206 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t204, i32 %t205)
  store { i64, ptr } %t206, ptr %l106
  br label %bb49
bb49:
  %t207 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t207, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t208 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 0
  store i64 %t210, ptr %l10, !tbaa !24
  br label %bb50
bb50:
  %t212 = load i64, ptr %l9, !tbaa !24
  %t213 = load i64, ptr %l10, !tbaa !24
  %t216 = icmp slt i64 %t212, %t213
  %t218 = xor i1 %t216, true
  br i1 %t218, label %bb51, label %bb52
bb51:
  br label %bb59
bb52:
  br label %bb53
bb53:
  %t220 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t220, ptr %l113, !tbaa !27
  %t221 = load i64, ptr %l9, !tbaa !24
  %t223 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr i32, ptr %t224, i64 %t221
  %t226 = load i32, ptr %t225, !tbaa !33
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = load i32, ptr %l5, !tbaa !23
  %t234 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t228, i32 %t226, i32 %t230, i64 0)
  store i1 %t234, ptr %l119
  br label %bb54
bb54:
  %t235 = load i1, ptr %l119, !tbaa !21
  br i1 %t235, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t236 = load i64, ptr %l9, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l9, !tbaa !24
  br label %bb50
bb59:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load i64, ptr %l3, !tbaa !24
  %t242 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t246 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t240, i64 -1, i64 %t241, i32 %t242, i32 0)
  store ptr %t246, ptr %l125
  br label %bb60
bb60:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l126, !tbaa !29
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l2, !tbaa !29
  %t252 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t248, ptr %t249)
  store %"compiler/source:Span" %t252, ptr %l129
  br label %bb61
bb61:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %l2, !tbaa !29
  %t256 = getelementptr %"compiler/ast:Func", ptr %t254, i32 0, i32 2
  %t257 = load i32, ptr %t256, !tbaa !23
  %t260 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t253, i32 %t257)
  store { i64, ptr } %t260, ptr %l133
  br label %bb62
bb62:
  %t261 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t261, 0
  %t263 = extractvalue { i64, ptr } %t261, 1
  %t264 = mul i64 %t262, 1
  %t265 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t264)
  call void @llvm.memcpy.p0.p0.i64(ptr %t265, ptr %t263, i64 %t264, i1 false)
  %t266 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t265, 1
  store { i64, ptr } %t267, ptr %l134, !tbaa !27
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l135, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t272, i32 0, i32 2
  %t275 = load i32, ptr %l7, !tbaa !23
  %t278 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t274, i32 %t275)
  store i32 %t278, ptr %l140
  br label %bb63
bb63:
  %t279 = load ptr, ptr %l135, !tbaa !29
  %t280 = load i32, ptr %l140, !tbaa !23
  %t281 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t279, i32 %t280)
  store { i64, ptr } %t281, ptr %l141
  br label %bb64
bb64:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load i32, ptr %l5, !tbaa !23
  %t286 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t282, i32 %t283)
  store { i64, ptr } %t286, ptr %l144
  br label %bb65
bb65:
  %t287 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t288 = extractvalue { i64, ptr } %t287, 0
  %t289 = extractvalue { i64, ptr } %t287, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  store { i64, ptr } %t293, ptr %l145, !tbaa !27
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l2, !tbaa !29
  %t297 = getelementptr %"compiler/ast:Func", ptr %t295, i32 0, i32 2
  %t298 = load i32, ptr %t297, !tbaa !23
  %t301 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t294, i32 %t298)
  store { i64, ptr } %t301, ptr %l149
  br label %bb66
bb66:
  %t302 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t303 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t304 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t305 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t306 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderExpected(ptr %s0, ptr %v0, ptr %s0, ptr %v0, ptr %s0, { i64, ptr } %t302, { i64, ptr } %t303, { i64, ptr } %t304, { i64, ptr } %t305)
  store %"compiler/diagmsg:Msg" %t306, ptr %l150
  br label %bb67
bb67:
  %t307 = load ptr, ptr %l126, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l129
  %t309 = load %"compiler/diagmsg:Msg", ptr %l150
  %t310 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t307, %"compiler/source:Span" %t308, %"compiler/diagmsg:Msg" %t309)
  store i64 %t310, ptr %l151
  br label %bb68
bb68:
  %t311 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t311)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i1
  %l32 = alloca i1
  %l38 = alloca i1
  %l42 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l62 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l12
  br label %bb3
bb3:
  %t10 = load i1, ptr %l12, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb8
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l17
  br label %bb7
bb7:
  %t19 = load i32, ptr %l17, !range !{i32 0, i32 6}
  %t21 = trunc i64 0 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  store i1 %t24, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l14, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb12
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l25
  br label %bb11
bb11:
  %t35 = load i1, ptr %l25, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l32
  br label %bb16
bb16:
  %t50 = load i1, ptr %l32, !tbaa !21
  br i1 %t50, label %bb17, label %bb18
bb17:
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l38
  br label %bb20
bb20:
  %t62 = load i1, ptr %l38, !tbaa !21
  br i1 %t62, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l42, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l47
  br label %bb24
bb24:
  %t80 = load ptr, ptr %l42, !tbaa !29
  %t81 = load i32, ptr %l47, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t80, i32 %t81)
  store { i64, ptr } %t82, ptr %l48
  br label %bb25
bb25:
  %t83 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t83, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l5, !tbaa !24
  br label %bb26
bb26:
  %t88 = load i64, ptr %l4, !tbaa !24
  %t89 = load i64, ptr %l5, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb27, label %bb28
bb27:
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t96, ptr %l55, !tbaa !27
  %t97 = load i64, ptr %l4, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i32, ptr %t100, i64 %t97
  %t102 = load i32, ptr %t101, !tbaa !33
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l2, !tbaa !24
  %t108 = add i64 %t106, 1
  %t112 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainField(ptr %v0, ptr %t104, i32 %t102, i64 %t108)
  store i1 %t112, ptr %l62
  br label %bb30
bb30:
  %t113 = load i1, ptr %l62, !tbaa !21
  %t114 = xor i1 %t113, true
  br i1 %t114, label %bb31, label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t117 = load i64, ptr %l4, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l4, !tbaa !24
  br label %bb26
bb35:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eputTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l9 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca i1
  %l26 = alloca ptr
  %l30 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i32
  %l39 = alloca i32
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i32
  %l49 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i32
  %l55 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i1
  %l64 = alloca ptr
  %l71 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca %"compiler/diagmsg:Msg"
  %l83 = alloca i64
  %l86 = alloca ptr
  %l89 = alloca ptr
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca ptr
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l95 = alloca i32
  %l97 = alloca ptr
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t121 = alloca { i64, [1 x i64] }, align 8
  %t139 = alloca { i64, [3 x i64] }, align 8
  %t184 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1)
  store %"compiler/source:Span" %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t4, ptr %l5
  br i1 %a2, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t8 = load ptr, ptr %l13, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb3:
  br label %bb45
bb4:
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 30}
  %t14 = icmp eq i64 %t12, 0
  store i1 %t14, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l14, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l6
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32 }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l7, !tbaa !23
  br label %bb8
bb7:
  br label %bb37
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l7, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store { i64, ptr } %t32, ptr %l23
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t33, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t34, ptr %l24
  br label %bb10
bb10:
  %t35 = load i1, ptr %l24, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t36)
  store ptr %t38, ptr %l26
  br label %bb14
bb14:
  %t39 = load ptr, ptr %l26, !tbaa !29
  %t41 = getelementptr %"compiler/check:frame", ptr %t39, i32 0, i32 43
  %t42 = load i32, ptr %l7, !tbaa !23
  %t45 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t45, ptr %l30
  br label %bb15
bb15:
  %t46 = load i1, ptr %l30, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l4, !tbaa !23
  %t51 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l34
  br label %bb18
bb17:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb19
bb18:
  %t52 = load i32, ptr %l4, !tbaa !23
  %t53 = load i32, ptr %l34, !tbaa !23
  %t55 = icmp ne i32 %t53, %t52
  store i1 %t55, ptr %l31, !tbaa !21
  br label %bb19
bb19:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb20, label %bb21
bb20:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l4, !tbaa !23
  %t62 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l39
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t63 = load i32, ptr %l39, !tbaa !23
  store i32 %t63, ptr %l4, !tbaa !23
  br label %bb23
bb23:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l42, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l4, !tbaa !23
  %t74 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l45
  br label %bb24
bb24:
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = load i32, ptr %l45, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t77, ptr %l46
  br label %bb25
bb25:
  %t78 = load i32, ptr %l46, !range !{i32 0, i32 33}
  %t80 = trunc i64 19 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  store ptr %t88, ptr %l52, !tbaa !29
  %t89 = load i32, ptr %l4, !tbaa !23
  store i32 %t89, ptr %l53, !tbaa !23
  %t90 = load ptr, ptr %l3, !tbaa !29
  store ptr %t90, ptr %l55, !tbaa !29
  %t92 = load ptr, ptr %l55, !tbaa !29
  %t93 = call ptr @__olang_scope_of(ptr %t92, ptr null)
  %t94 = ptrtoint ptr %t93 to i64
  %t96 = inttoptr i64 %t94 to ptr
  %t97 = load ptr, ptr %l55, !tbaa !29
  %t98 = call i32 @compiler_2fcheck_2etypeOf(ptr %t96, ptr %t97)
  store i32 %t98, ptr %l57
  br label %bb28
bb27:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb30
bb28:
  %t99 = load ptr, ptr %l52, !tbaa !29
  %t100 = load i32, ptr %l53, !tbaa !23
  %t101 = load i32, ptr %l57, !tbaa !23
  %t102 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t99, i32 %t100, i32 %t101)
  store i1 %t102, ptr %l58
  br label %bb29
bb29:
  %t103 = load i1, ptr %l58, !tbaa !21
  %t104 = xor i1 %t103, true
  store i1 %t104, ptr %l49, !tbaa !21
  br label %bb30
bb30:
  %t106 = load i1, ptr %l49, !tbaa !21
  br i1 %t106, label %bb31, label %bb32
bb31:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t109 = load i32, ptr %l4, !tbaa !23
  %t110 = load %"compiler/source:Span", ptr %l6
  %t115 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t107, ptr %t108, i32 %t109, %"compiler/source:Span" %t110)
  store ptr %t115, ptr %l64
  br label %bb33
bb32:
  br label %bb34
bb33:
  %t116 = load ptr, ptr %l64, !tbaa !29
  store ptr %t116, ptr %l3, !tbaa !29
  br label %bb34
bb34:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l7, !tbaa !23
  %t119 = load %"compiler/source:Span", ptr %l6
  %t120 = load i32, ptr %l4, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t121
  %t122 = getelementptr { i64, [1 x i64] }, ptr %t121, i32 0, i32 0
  store i64 4, ptr %t122
  %t123 = load { i64, [1 x i64] }, ptr %t121
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t117, i32 %t118, %"compiler/source:Span" %t119, i32 %t120, i32 1, { i64, [1 x i64] } %t123)
  store i64 %t130, ptr %l71
  br label %bb35
bb35:
  %t131 = load i64, ptr %l71, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l6
  %t136 = trunc i64 %t131 to i32
  %t138 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [3 x i64] }, ptr %t139, i32 0, i32 0
  store i64 0, ptr %t140
  %t142 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t133, 0
  %t144 = insertvalue { %"compiler/source:Span", i32, ptr } %t142, i32 %t136, 1
  %t146 = insertvalue { %"compiler/source:Span", i32, ptr } %t144, ptr %t138, 2
  %t147 = getelementptr { i64, [3 x i64] }, ptr %t139, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t146, ptr %t147
  %t148 = load { i64, [3 x i64] }, ptr %t139
  %t150 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t148, ptr %t150
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t132, ptr %t150)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb43
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l80, !tbaa !29
  %t154 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t154, ptr %l81
  %t155 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructNotName(ptr %s6)
  store %"compiler/diagmsg:Msg" %t155, ptr %l82
  br label %bb41
bb41:
  %t156 = load ptr, ptr %l80, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l81
  %t158 = load %"compiler/diagmsg:Msg", ptr %l82
  %t159 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t156, %"compiler/source:Span" %t157, %"compiler/diagmsg:Msg" %t158)
  store i64 %t159, ptr %l83
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_fb06dcd16342dc9_94e70e479081575d)
  unreachable
bb44:
  br label %ret
bb45:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t164 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ediscardOr(ptr %v0, ptr %v1, ptr %v0, ptr %t160, ptr %t161)
  store ptr %t164, ptr %l86
  br label %bb46
bb46:
  %t165 = load ptr, ptr %l86, !tbaa !29
  store ptr %t165, ptr %l9, !tbaa !29
  %t166 = load ptr, ptr %l9, !tbaa !29
  %t168 = icmp eq ptr %t166, null
  br i1 %t168, label %bb47, label %bb48
bb47:
  br label %ret
bb48:
  br label %bb49
bb49:
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l89, !tbaa !29
  %t171 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t171, ptr %l90
  %t172 = load ptr, ptr %l9, !tbaa !29
  store ptr %t172, ptr %l91, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l92, !tbaa !29
  %t174 = load ptr, ptr %l3, !tbaa !29
  store ptr %t174, ptr %l93, !tbaa !29
  %t175 = load ptr, ptr %l9, !tbaa !29
  %t177 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t175)
  store i32 %t177, ptr %l95
  br label %bb50
bb50:
  %t178 = load %"compiler/source:Span", ptr %l5
  %t179 = load ptr, ptr %l92, !tbaa !29
  %t180 = load ptr, ptr %l93, !tbaa !29
  %t181 = load i32, ptr %l95, !tbaa !23
  %t183 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t179, ptr %t180, i32 %t181, %"compiler/source:Span" %t178)
  store ptr %t183, ptr %l97
  br label %bb51
bb51:
  store { i64, [3 x i64] } zeroinitializer, ptr %t184
  %t185 = getelementptr { i64, [3 x i64] }, ptr %t184, i32 0, i32 0
  store i64 1, ptr %t185
  %t186 = load %"compiler/source:Span", ptr %l90
  %t187 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t186, 0
  %t188 = load ptr, ptr %l91, !tbaa !29
  %t189 = insertvalue { %"compiler/source:Span", ptr, ptr } %t187, ptr %t188, 1
  %t190 = load ptr, ptr %l97, !tbaa !29
  %t191 = insertvalue { %"compiler/source:Span", ptr, ptr } %t189, ptr %t190, 2
  %t192 = getelementptr { i64, [3 x i64] }, ptr %t184, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t191, ptr %t192
  %t193 = load { i64, [3 x i64] }, ptr %t184
  %t195 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t193, ptr %t195
  %t196 = load ptr, ptr %l89, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t196, ptr %t195)
  br label %bb52
bb52:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l12 = alloca i32
  %l14 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l21 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t5, i32 %t6)
  store { i64, ptr } %t9, ptr %l9
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t11, ptr %l10
  br label %bb4
bb4:
  %t12 = load i1, ptr %l10, !tbaa !21
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l6, !tbaa !21
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
  store ptr %t17, ptr %l14
  br label %bb9
bb9:
  %t18 = load ptr, ptr %l14, !tbaa !29
  %t20 = getelementptr %"compiler/check:frame", ptr %t18, i32 0, i32 4
  %t21 = getelementptr %"compiler/generic:Context", ptr %t20, i32 0, i32 3
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t21, i32 %t22)
  %t26 = extractvalue { i32, i32 } %t25, 1
  %t27 = extractvalue { i32, i32 } %t25, 0
  store i32 %t27, ptr %l19
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb11, label %ok.29, !prof !99
ok.29:
  store i32 %t26, ptr %l18
  br label %bb10
bb10:
  %t30 = load i32, ptr %l18, !tbaa !23
  store i32 %t30, ptr %l12, !tbaa !23
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i32 -1, ptr %l12, !tbaa !23
  br label %bb13
bb13:
  %t31 = load i32, ptr %l12, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l21
  br label %bb14
bb14:
  %t35 = load ptr, ptr %l21, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 4
  %t38 = getelementptr %"compiler/generic:Context", ptr %t37, i32 0, i32 3
  %t39 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t38, i32 %t39, i32 %a2)
  br label %bb15
bb15:
  %t44 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/generic:Desc"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i32, { i64, ptr } }
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca %"compiler/check:narrowed"
  %l22 = alloca { i64, ptr }
  %lp24 = alloca ptr
  %l28 = alloca %"compiler/generic:Desc"
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l37 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca %"compiler/diagmsg:Msg"
  %l43 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l68 = alloca i32
  %l72 = alloca i64
  %l75 = alloca i64
  %l95 = alloca i1
  %l99 = alloca %"compiler/source:Span"
  %l104 = alloca i32
  %l108 = alloca ptr
  %l115 = alloca i32
  %l127 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l132 = alloca %"compiler/source:Span"
  %l135 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l141 = alloca %"compiler/diagmsg:Msg"
  %l142 = alloca i64
  %l147 = alloca { i32, { i64, ptr } }
  %l151 = alloca i1
  %l159 = alloca { i64, ptr }
  %l161 = alloca i64
  %l163 = alloca ptr
  %l166 = alloca i64
  %l168 = alloca i64
  %l173 = alloca %"compiler/check:narrowed"
  %l177 = alloca i1
  %l181 = alloca i1
  %l192 = alloca { i64, ptr }
  %l193 = alloca ptr
  %l194 = alloca { i64, ptr }
  %l196 = alloca %"compiler/source:Span"
  %l199 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l211 = alloca %"compiler/diagmsg:Msg"
  %l212 = alloca i64
  %l216 = alloca ptr
  %l221 = alloca i32
  %l222 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l226 = alloca %"compiler/source:Span"
  %l227 = alloca i32
  %l231 = alloca %"compiler/typed:Payload"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca ptr
  %t164 = alloca { i64, [4 x i64] }, align 8
  %t279 = alloca { i64, [4 x i64] }, align 8
  %t474 = alloca { i64, [4 x i64] }, align 8
  %t492 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t4, i32 %a3)
  store %"compiler/generic:Desc" %t8, ptr %l28
  br label %bb1
bb1:
  %t9 = load %"compiler/generic:Desc", ptr %l28
  store %"compiler/generic:Desc" %t9, ptr %l5
  %t10 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  %t12 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t15 = icmp ne i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l32, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l33
  %t19 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t21 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t24 = icmp eq i64 %t20, %t21
  br i1 %t24, label %bb4, label %bb5
bb3:
  br label %bb13
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb9
bb5:
  %t26 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t31 = icmp eq i64 %t27, %t28
  br i1 %t31, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l41, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l41, !tbaa !27
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t33, ptr %l37, !tbaa !27
  br label %bb9
bb9:
  %t34 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t35 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %s1, ptr %s1, ptr %s1, ptr %s1, { i64, ptr } %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t35, ptr %l42
  br label %bb10
bb10:
  %t36 = load ptr, ptr %l32, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l33
  %t38 = load %"compiler/diagmsg:Msg", ptr %l42
  %t39 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t36, %"compiler/source:Span" %t37, %"compiler/diagmsg:Msg" %t38)
  store i64 %t39, ptr %l43
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t40, { i64, ptr } %t41)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb13:
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = icmp ne i64 %t47, 1
  br i1 %t49, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l50, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t52, ptr %l51
  %t53 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t57 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfArgs(ptr %s2, i64 %t55)
  store %"compiler/diagmsg:Msg" %t57, ptr %l54
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t58 = load ptr, ptr %l50, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l51
  %t60 = load %"compiler/diagmsg:Msg", ptr %l54
  %t61 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t58, %"compiler/source:Span" %t59, %"compiler/diagmsg:Msg" %t60)
  store i64 %t61, ptr %l55
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t62, { i64, ptr } %t63)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t68, ptr %l60, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr ptr, ptr %t70, i64 0
  %t72 = load ptr, ptr %t71, !tbaa !39
  %t75 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t67, ptr %t72)
  store ptr %t75, ptr %l62
  br label %bb20
bb20:
  %t76 = load ptr, ptr %l62, !tbaa !29
  store ptr %t76, ptr %l6, !tbaa !29
  %t77 = load ptr, ptr %l6, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  br i1 %t79, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t82 = load ptr, ptr %l6, !tbaa !29
  store ptr %t82, ptr %l7, !tbaa !29
  %t84 = load ptr, ptr %l7, !tbaa !29
  %t86 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v2, ptr %t84)
  store i32 %t86, ptr %l68
  br label %bb24
bb24:
  %t87 = load i32, ptr %l68, !tbaa !23
  store i32 %t87, ptr %l8, !tbaa !23
  store i64 0, ptr %l9, !tbaa !24
  store i64 4, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l10, !tbaa !24
  %t89 = load i64, ptr %l9, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb25, label %bb26
bb25:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb30
bb27:
  %t98 = load i64, ptr %l10, !tbaa !24
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l11, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l11, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l75, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb29
bb29:
  %t114 = load i64, ptr %l75, !tbaa !24
  store i64 %t114, ptr %l72, !tbaa !24
  br label %bb30
bb30:
  %t115 = load i64, ptr %l72, !tbaa !24
  store i64 %t115, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  %t116 = load i64, ptr %l13, !tbaa !24
  %t117 = load i64, ptr %l12, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb32, label %bb33
bb32:
  br label %bb44
bb33:
  br label %bb34
bb34:
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l13, !tbaa !24
  %t126 = load i64, ptr %l11, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l14, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l8, !tbaa !23
  %t138 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t134, i32 %t135)
  store i1 %t138, ptr %l95
  br label %bb35
bb35:
  %t139 = load i1, ptr %l95, !tbaa !21
  %t140 = xor i1 %t139, true
  br i1 %t140, label %bb36, label %bb37
bb36:
  br label %bb44
bb37:
  br label %bb38
bb38:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %v2, ptr %t142, ptr %t143)
  br label %bb39
bb39:
  %t146 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t146, ptr %l99
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 2
  %t153 = load i32, ptr %l8, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t152, i32 %t153)
  store i32 %t156, ptr %l104
  br label %bb40
bb40:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l1
  %t159 = load ptr, ptr %l7, !tbaa !29
  %t163 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t157, %"compiler/source:Span" %t158, ptr %t159)
  store ptr %t163, ptr %l108
  br label %bb41
bb41:
  store { i64, [4 x i64] } zeroinitializer, ptr %t164
  %t165 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 0
  store i64 2, ptr %t165
  %t166 = load %"compiler/source:Span", ptr %l99
  %t167 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t166, 0
  %t168 = load i32, ptr %l104, !tbaa !23
  %t169 = insertvalue { %"compiler/source:Span", i32, ptr } %t167, i32 %t168, 1
  %t170 = load ptr, ptr %l108, !tbaa !29
  %t171 = insertvalue { %"compiler/source:Span", i32, ptr } %t169, ptr %t170, 2
  %t172 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t171, ptr %t172
  %t173 = load { i64, [4 x i64] }, ptr %t164
  %t175 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t173, ptr %t175
  store ptr %t175, ptr %l7, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 2
  %t183 = load i32, ptr %l8, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l115
  br label %bb42
bb42:
  %t187 = load i32, ptr %l115, !tbaa !23
  store i32 %t187, ptr %l8, !tbaa !23
  br label %bb43
bb43:
  %t188 = load i64, ptr %l13, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l13, !tbaa !24
  br label %bb31
bb44:
  %t192 = load i32, ptr %l8, !tbaa !23
  %t193 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t196 = icmp eq i32 %t192, %t193
  br i1 %t196, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/generic:Program", ptr %t202, i32 0, i32 2
  %t205 = load i32, ptr %l8, !tbaa !23
  %t206 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 1
  %t207 = load i32, ptr %t206, !tbaa !23
  %t211 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t204, i32 %t205, i32 %t207)
  store i1 %t211, ptr %l127
  br label %bb48
bb48:
  %t212 = load i1, ptr %l127, !tbaa !21
  %t213 = xor i1 %t212, true
  br i1 %t213, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s9
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l129, !tbaa !29
  %t216 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t216, ptr %l130, !tbaa !27
  %t217 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = getelementptr ptr, ptr %t218, i64 0
  %t220 = load ptr, ptr %t219, !tbaa !39
  %t222 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t220)
  store %"compiler/source:Span" %t222, ptr %l132
  br label %bb51
bb50:
  br label %bb56
bb51:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 1
  %t225 = load i32, ptr %t224, !tbaa !23
  %t228 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t223, i32 %t225)
  store { i64, ptr } %t228, ptr %l135
  br label %bb52
bb52:
  %t229 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t229, 0
  %t231 = extractvalue { i64, ptr } %t229, 1
  %t232 = mul i64 %t230, 1
  %t233 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t232)
  call void @llvm.memcpy.p0.p0.i64(ptr %t233, ptr %t231, i64 %t232, i1 false)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  store { i64, ptr } %t235, ptr %l136, !tbaa !27
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i32, ptr %l8, !tbaa !23
  %t240 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t236, i32 %t237)
  store { i64, ptr } %t240, ptr %l139
  br label %bb53
bb53:
  %t241 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 0
  %t243 = extractvalue { i64, ptr } %t241, 1
  %t244 = mul i64 %t242, 1
  %t245 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t244)
  call void @llvm.memcpy.p0.p0.i64(ptr %t245, ptr %t243, i64 %t244, i1 false)
  %t246 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  %t248 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t250 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfType(ptr %s9, ptr %s9, ptr %s9, { i64, ptr } %t248, { i64, ptr } %t247)
  store %"compiler/diagmsg:Msg" %t250, ptr %l141
  br label %bb54
bb54:
  %t251 = load ptr, ptr %l129, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l132
  %t253 = load %"compiler/diagmsg:Msg", ptr %l141
  %t254 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t251, %"compiler/source:Span" %t252, %"compiler/diagmsg:Msg" %t253)
  store i64 %t254, ptr %l142
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb56:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/check:Checker", ptr %t256, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t260 = load %"compiler/generic:Desc", ptr %l5
  %t263 = call { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %s0, ptr %t259, %"compiler/generic:Desc" %t260)
  store { i32, { i64, ptr } } %t263, ptr %l147
  br label %bb57
bb57:
  %t264 = load { i32, { i64, ptr } }, ptr %l147
  store { i32, { i64, ptr } } %t264, ptr %l15
  %t265 = getelementptr { i32, { i64, ptr } }, ptr %l15, i32 0, i32 0
  %t266 = load i32, ptr %t265, !tbaa !23
  store i32 %t266, ptr %l16, !tbaa !23
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load i32, ptr %l8, !tbaa !23
  %t272 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t268, i32 %t269)
  store i1 %t272, ptr %l151
  br label %bb58
bb58:
  %t273 = load i1, ptr %l151, !tbaa !21
  br i1 %t273, label %bb59, label %bb60
bb59:
  %t274 = load %"compiler/source:Span", ptr %l1
  %t275 = load i32, ptr %l16, !tbaa !23
  %t276 = load ptr, ptr %l7, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 3
  %t278 = load i64, ptr %t277, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t279
  %t280 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 0
  store i64 3, ptr %t280
  %t282 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t274, 0
  %t284 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t282, i32 %t275, 1
  %t286 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t284, ptr %t276, 2
  %t288 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t286, i64 %t278, 3
  %t289 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t288, ptr %t289
  %t290 = load { i64, [4 x i64] }, ptr %t279
  %t292 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t290, ptr %t292
  call void @__olang_scope_close(ptr %s0)
  store ptr %t292, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t295, ptr %l159, !tbaa !27
  %t296 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr ptr, ptr %t297, i64 0
  %t299 = load ptr, ptr %t298, !tbaa !39
  %t302 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowLocal(ptr %v0, ptr %v1, ptr %t294, ptr %t299)
  store i64 %t302, ptr %l161
  br label %bb62
bb62:
  %t303 = load i64, ptr %l161, !tbaa !24
  store i64 %t303, ptr %l17, !tbaa !24
  store i1 false, ptr %l18, !tbaa !21
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t304)
  store ptr %t306, ptr %l163
  br label %bb63
bb63:
  %t307 = load ptr, ptr %l163, !tbaa !29
  %t309 = getelementptr %"compiler/check:frame", ptr %t307, i32 0, i32 46
  store ptr %t309, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb64
bb64:
  %t311 = load i64, ptr %l20, !tbaa !24
  store i64 %t311, ptr %l166, !tbaa !24
  %t312 = load ptr, ptr %l19, !tbaa !29
  %t314 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t312)
  store i64 %t314, ptr %l168
  br label %bb65
bb65:
  %t315 = load i64, ptr %l166, !tbaa !24
  %t316 = load i64, ptr %l168, !tbaa !24
  %t317 = icmp slt i64 %t315, %t316
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb66, label %bb67
bb66:
  br label %bb80
bb67:
  br label %bb68
bb68:
  %t321 = load ptr, ptr %l19, !tbaa !29
  %t322 = load i64, ptr %l20, !tbaa !24
  %t325 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t321, i64 %t322)
  store %"compiler/check:narrowed" %t325, ptr %l173
  br label %bb69
bb69:
  %t326 = load %"compiler/check:narrowed", ptr %l173
  store %"compiler/check:narrowed" %t326, ptr %l21
  %t327 = getelementptr %"compiler/check:narrowed", ptr %l21, i32 0, i32 0
  %t328 = load i64, ptr %t327, !tbaa !24
  %t329 = load i64, ptr %l17, !tbaa !24
  %t332 = icmp eq i64 %t328, %t329
  br i1 %t332, label %bb70, label %bb71
bb70:
  %t334 = getelementptr %"compiler/check:narrowed", ptr %l21, i32 0, i32 1
  %t335 = load i64, ptr %t334, !tbaa !24
  %t336 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t337 = load i64, ptr %t336, !tbaa !24
  %t340 = icmp eq i64 %t335, %t337
  store i1 %t340, ptr %l177, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb72
bb72:
  %t342 = load i1, ptr %l177, !tbaa !21
  br i1 %t342, label %bb73, label %bb74
bb73:
  %t343 = getelementptr %"compiler/check:narrowed", ptr %l21, i32 0, i32 5
  %t344 = load i1, ptr %t343, !tbaa !21
  %t346 = xor i1 %t344, true
  store i1 %t346, ptr %l181, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb75
bb75:
  %t348 = load i1, ptr %l181, !tbaa !21
  br i1 %t348, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb78
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t349 = load i64, ptr %l20, !tbaa !24
  %t351 = add i64 %t349, 1
  store i64 %t351, ptr %l20, !tbaa !24
  br label %bb64
bb80:
  %t353 = load i1, ptr %l18, !tbaa !21
  %t355 = xor i1 %t353, true
  br i1 %t355, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s15
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t362 = getelementptr %"compiler/generic:Program", ptr %t360, i32 0, i32 2
  %t363 = load i32, ptr %l8, !tbaa !23
  %t366 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s15, ptr %t362, i32 %t363)
  store { i64, ptr } %t366, ptr %l192
  br label %bb83
bb82:
  br label %bb90
bb83:
  %t367 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t367, ptr %l22, !tbaa !27
  %t368 = load ptr, ptr %l0, !tbaa !29
  store ptr %t368, ptr %l193, !tbaa !29
  %t369 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t369, ptr %l194, !tbaa !27
  %t370 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !27
  %t372 = getelementptr ptr, ptr %t371, i64 0
  %t373 = load ptr, ptr %t372, !tbaa !39
  %t375 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t373)
  store %"compiler/source:Span" %t375, ptr %l196
  br label %bb84
bb84:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load i32, ptr %l8, !tbaa !23
  %t380 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s15, ptr %t376, i32 %t377)
  store { i64, ptr } %t380, ptr %l199
  br label %bb85
bb85:
  %t381 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t381, 0
  %t383 = extractvalue { i64, ptr } %t381, 1
  %t384 = mul i64 %t382, 1
  %t385 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t384)
  call void @llvm.memcpy.p0.p0.i64(ptr %t385, ptr %t383, i64 %t384, i1 false)
  %t386 = insertvalue { i64, ptr } undef, i64 %t382, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t385, 1
  store { i64, ptr } %t387, ptr %l200, !tbaa !27
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t389, ptr %l202, !tbaa !27
  %t390 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t391 = load i64, ptr %t390, !tbaa !24
  %t393 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr i32, ptr %t394, i64 %t391
  %t396 = load i32, ptr %t395, !tbaa !33
  %t399 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s15, ptr %t388, i32 %t396)
  store { i64, ptr } %t399, ptr %l205
  br label %bb86
bb86:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load %"compiler/generic:Desc", ptr %l5
  %t404 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %s15, ptr %t400, %"compiler/generic:Desc" %t401)
  store { i64, ptr } %t404, ptr %l208
  br label %bb87
bb87:
  %t405 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 1
  %t407 = extractvalue { i64, ptr } %t405, 0
  %t408 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t409 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t410 = add i64 %t407, %t409
  %t411 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 1
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t414 = add i64 %t410, %t413
  %t415 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t414)
  call void @olang_textcopy(ptr %t415, ptr %t406, i64 %t407)
  %t416 = getelementptr i8, ptr %t415, i64 %t407
  call void @olang_textcopy(ptr %t416, ptr %t408, i64 %t409)
  %t417 = getelementptr i8, ptr %t416, i64 %t409
  call void @olang_textcopy(ptr %t417, ptr %t412, i64 %t413)
  %t418 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t415, 1
  %t421 = extractvalue { i64, ptr } %t419, 0
  %t422 = extractvalue { i64, ptr } %t419, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  %t427 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t429 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldOfEnum(ptr %s15, ptr %s15, ptr %s15, { i64, ptr } %t427, { i64, ptr } %t426)
  store %"compiler/diagmsg:Msg" %t429, ptr %l211
  br label %bb88
bb88:
  %t430 = load ptr, ptr %l193, !tbaa !29
  %t431 = load %"compiler/source:Span", ptr %l196
  %t432 = load %"compiler/diagmsg:Msg", ptr %l211
  %t433 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t430, %"compiler/source:Span" %t431, %"compiler/diagmsg:Msg" %t432)
  store i64 %t433, ptr %l212
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb90:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"compiler/check:Checker", ptr %t435, i32 0, i32 1
  %t438 = load ptr, ptr %t437, !tbaa !29
  %t440 = getelementptr %"compiler/generic:Program", ptr %t438, i32 0, i32 2
  store ptr %t440, ptr %l216, !tbaa !29
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t443 = getelementptr %"compiler/check:Checker", ptr %t441, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !29
  %t446 = getelementptr %"compiler/generic:Program", ptr %t444, i32 0, i32 2
  %t447 = load i32, ptr %l8, !tbaa !23
  %t450 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t446, i32 %t447)
  store i32 %t450, ptr %l221
  br label %bb91
bb91:
  %t451 = load ptr, ptr %l216, !tbaa !29
  %t452 = load i32, ptr %l221, !tbaa !23
  %t453 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t451, i32 %t452)
  store { i64, ptr } %t453, ptr %l222
  br label %bb92
bb92:
  %t454 = load { i64, ptr }, ptr %l222, !tbaa !27
  store { i64, ptr } %t454, ptr %l223, !tbaa !27
  %t455 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t456 = load i64, ptr %t455, !tbaa !24
  %t458 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !27
  %t460 = getelementptr i32, ptr %t459, i64 %t456
  %t461 = load i32, ptr %t460, !tbaa !33
  %t463 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t463, ptr %l226
  store i32 %t461, ptr %l227, !tbaa !23
  %t465 = load ptr, ptr %l7, !tbaa !29
  %t466 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t467 = load i64, ptr %t466, !tbaa !24
  %t471 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v2, ptr %v2, ptr %t465, i64 %t467, i32 0)
  store %"compiler/typed:Payload" %t471, ptr %l231
  br label %bb93
bb93:
  %t472 = load %"compiler/typed:Payload", ptr %l231
  %t473 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Payload" %t472, ptr %t473
  store { i64, [4 x i64] } zeroinitializer, ptr %t474
  %t475 = getelementptr { i64, [4 x i64] }, ptr %t474, i32 0, i32 0
  store i64 5, ptr %t475
  %t476 = load %"compiler/source:Span", ptr %l226
  %t477 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t476, 0
  %t478 = load i32, ptr %l227, !tbaa !23
  %t479 = insertvalue { %"compiler/source:Span", i32, ptr } %t477, i32 %t478, 1
  %t481 = insertvalue { %"compiler/source:Span", i32, ptr } %t479, ptr %t473, 2
  %t482 = getelementptr { i64, [4 x i64] }, ptr %t474, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t481, ptr %t482
  %t483 = load { i64, [4 x i64] }, ptr %t474
  %t484 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t484, ptr %lp24
  %t486 = load ptr, ptr %lp24
  store { i64, [4 x i64] } %t483, ptr %t486
  %t487 = load %"compiler/source:Span", ptr %l1
  %t488 = load i32, ptr %l16, !tbaa !23
  %t489 = load ptr, ptr %lp24
  %t490 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 3
  %t491 = load i64, ptr %t490, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t492
  %t493 = getelementptr { i64, [4 x i64] }, ptr %t492, i32 0, i32 0
  store i64 3, ptr %t493
  %t495 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t487, 0
  %t497 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t495, i32 %t488, 1
  %t499 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t497, ptr %t489, 2
  %t501 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t499, i64 %t491, 3
  %t502 = getelementptr { i64, [4 x i64] }, ptr %t492, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t501, ptr %t502
  %t503 = load { i64, [4 x i64] }, ptr %t492
  %t505 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t503, ptr %t505
  call void @__olang_scope_close(ptr %s0)
  store ptr %t505, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erestBind(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i32 %a4, i64 %a5, i64 %a6, ptr %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca i1
  %l35 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l52 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l67 = alloca i32
  %l69 = alloca ptr
  %l72 = alloca ptr
  %l79 = alloca ptr
  %l80 = alloca i32
  %l83 = alloca { i64, ptr }
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca ptr
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l97 = alloca i32
  %l98 = alloca ptr
  %l102 = alloca i32
  %l104 = alloca ptr
  %l107 = alloca i32
  %l110 = alloca ptr
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t158 = alloca { i64, [4 x i64] }, align 8
  %t180 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t1)
  store %"compiler/source:Span" %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t4, ptr %l9
  store i32 0, ptr %l10, !tbaa !23
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t6 = load ptr, ptr %l18, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l18, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 9}
  %t12 = icmp eq i64 %t10, 7
  store i1 %t12, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l19, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32 }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l11, !tbaa !23
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t20 = load i32, ptr %l11, !tbaa !23
  store i32 %t20, ptr %l10, !tbaa !23
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_e5b066603c2028fc_10f264a847d19698)
  unreachable
bb12:
  %t22 = load i32, ptr %l10, !tbaa !23
  %t24 = icmp eq i32 %t22, 0
  br i1 %t24, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb17
bb14:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l10, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t30, ptr %l30
  br label %bb15
bb15:
  %t31 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t32, ptr %l31
  br label %bb16
bb16:
  %t33 = load i1, ptr %l31, !tbaa !21
  store i1 %t33, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t34 = load i1, ptr %l27, !tbaa !21
  br i1 %t34, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  br label %bb20
bb20:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/check:seqOf", ptr %t35, i32 0, i32 1
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = icmp sge i64 %t38, 0
  br i1 %t40, label %bb21, label %bb22
bb21:
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = getelementptr %"compiler/check:seqOf", ptr %t42, i32 0, i32 3
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  store i1 %t47, ptr %l35, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb23
bb23:
  %t49 = load i1, ptr %l35, !tbaa !21
  br i1 %t49, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l39, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t51, ptr %l40
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l41, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t57 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t53, i32 %a4)
  store i32 %t57, ptr %l44
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t58 = load ptr, ptr %l41, !tbaa !29
  %t59 = load i32, ptr %l44, !tbaa !23
  %t60 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t58, i32 %t59)
  store { i64, ptr } %t60, ptr %l45
  br label %bb27
bb27:
  %t61 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  %t63 = extractvalue { i64, ptr } %t61, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t69 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestNoSlice(ptr %s4, ptr %s4, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t69, ptr %l47
  br label %bb28
bb28:
  %t70 = load ptr, ptr %l39, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l40
  %t72 = load %"compiler/diagmsg:Msg", ptr %l47
  %t73 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t70, %"compiler/source:Span" %t71, %"compiler/diagmsg:Msg" %t72)
  store i64 %t73, ptr %l48
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l49, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t75, ptr %l50
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t76)
  store i32 %t78, ptr %l52
  br label %bb31
bb31:
  %t80 = load ptr, ptr %l49, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l50
  %t82 = load i32, ptr %l52, !tbaa !23
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t80, %"compiler/source:Span" %t81, i32 %t82, i64 %a5)
  store ptr %t84, ptr %l54
  br label %bb32
bb32:
  %t85 = load ptr, ptr %l54, !tbaa !29
  store ptr %t85, ptr %l12, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l55, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t87, ptr %l56
  %t88 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t88, ptr %l57
  store i32 69, ptr %l58
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l9
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLen(ptr %v0, ptr %v2, ptr %v3, ptr %v0, ptr %t89, %"compiler/source:Span" %t90, ptr %t91, ptr %t92)
  store ptr %t97, ptr %l63
  br label %bb33
bb33:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l64, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t99, ptr %l65
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t100)
  store i32 %t102, ptr %l67
  br label %bb34
bb34:
  %t104 = load ptr, ptr %l64, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l65
  %t106 = load i32, ptr %l67, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t104, %"compiler/source:Span" %t105, i32 %t106, i64 %a6)
  store ptr %t108, ptr %l69
  br label %bb35
bb35:
  %t109 = load %"compiler/source:Span", ptr %l9
  %t110 = load %"compiler/source:Span", ptr %l9
  %t111 = load ptr, ptr %l55, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l56
  %t113 = load %"compiler/source:Span", ptr %l57
  %t114 = load i32, ptr %l58, !range !{i32 0, i32 114}
  %t115 = load ptr, ptr %l63, !tbaa !29
  %t116 = load ptr, ptr %l69, !tbaa !29
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t111, %"compiler/source:Span" %t112, %"compiler/source:Span" %t113, i32 %t114, ptr %t115, ptr %t116, %"compiler/source:Span" %t109, %"compiler/source:Span" %t110)
  store ptr %t119, ptr %l72
  br label %bb36
bb36:
  %t120 = load ptr, ptr %l72, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l9
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t125 = load ptr, ptr %l12, !tbaa !29
  %t133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqSlice(ptr %v0, ptr %v2, ptr %v3, ptr %v0, ptr %v0, ptr %v0, ptr %t121, %"compiler/source:Span" %t122, ptr %t123, ptr %t124, ptr %t125, ptr %t120)
  store ptr %t133, ptr %l79
  br label %bb37
bb37:
  %t134 = load ptr, ptr %l79, !tbaa !29
  store ptr %t134, ptr %l14, !tbaa !29
  %t135 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 1
  %t136 = load i32, ptr %t135, !tbaa !23
  store i32 %t136, ptr %l80, !tbaa !23
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i32, ptr %l10, !tbaa !23
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t137, i32 %t138)
  store { i64, ptr } %t141, ptr %l83
  br label %bb38
bb38:
  %t142 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  %t145 = trunc i64 %t143 to i32
  %t146 = load i32, ptr %l80, !tbaa !23
  %t148 = sub i32 %t146, %t145
  %t149 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 1
  %t150 = load i32, ptr %t149, !tbaa !23
  %t153 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t148, i32 %t150)
  store %"compiler/source:Span" %t153, ptr %l88
  br label %bb39
bb39:
  %t154 = load %"compiler/source:Span", ptr %l88
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l89, !tbaa !29
  %t157 = load i32, ptr %l10, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t158
  %t159 = getelementptr { i64, [4 x i64] }, ptr %t158, i32 0, i32 0
  store i64 3, ptr %t159
  %t161 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t154, 0
  %t163 = insertvalue { %"compiler/source:Span", i32 } %t161, i32 %t157, 1
  %t164 = getelementptr { i64, [4 x i64] }, ptr %t158, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t163, ptr %t164
  %t165 = load { i64, [4 x i64] }, ptr %t158
  %t167 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t165, ptr %t167
  store ptr %t167, ptr %l93, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t168, ptr %l94
  %t169 = load ptr, ptr %l14, !tbaa !29
  %t172 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t169)
  store i32 %t172, ptr %l97
  br label %bb40
bb40:
  %t173 = load ptr, ptr %l14, !tbaa !29
  store ptr %t173, ptr %l98, !tbaa !29
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l9
  %t179 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t174, i32 8, %"compiler/source:Span" %t175)
  store i32 %t179, ptr %l102
  br label %bb41
bb41:
  store { i64, [4 x i64] } zeroinitializer, ptr %t180
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 0
  store i64 6, ptr %t181
  %t182 = load %"compiler/source:Span", ptr %l94
  %t183 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t182, 0
  %t184 = load i32, ptr %l97, !tbaa !23
  %t185 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t183, i32 %t184, 1
  %t186 = load ptr, ptr %l98, !tbaa !29
  %t187 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t185, ptr %t186, 2
  %t188 = load i32, ptr %l102, !tbaa !23
  %t189 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t187, i32 %t188, 3
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t189, ptr %t190
  %t191 = load { i64, [4 x i64] }, ptr %t180
  %t193 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t191, ptr %t193
  store ptr %t193, ptr %l104, !tbaa !29
  %t194 = load ptr, ptr %l14, !tbaa !29
  %t197 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t194)
  store i32 %t197, ptr %l107
  br label %bb42
bb42:
  %t200 = load ptr, ptr %l89, !tbaa !29
  %t201 = load ptr, ptr %l93, !tbaa !29
  %t202 = load ptr, ptr %l104, !tbaa !29
  %t203 = load i32, ptr %l107, !tbaa !23
  %t206 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v0, ptr %t200, ptr %t201, ptr %t202, i32 %t203, ptr %a7, i64 %a8)
  store ptr %t206, ptr %l110
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i32
  %l19 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i1
  %l33 = alloca i32
  %l38 = alloca i32
  %l41 = alloca i1
  %l46 = alloca i32
  %l50 = alloca ptr
  %l53 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i32
  %l64 = alloca i64
  %l65 = alloca i32
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
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t13 = trunc i64 19 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t26 = load i32, ptr %l15, !tbaa !23
  %t27 = icmp ne i32 %t26, 0
  store i1 %t27, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l10, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  store ptr %t35, ptr %l19, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l24
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t46 = load ptr, ptr %l19, !tbaa !29
  %t47 = load i32, ptr %l24, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t46, i32 %t47, i32 0)
  store i32 %t48, ptr %l25
  br label %bb9
bb9:
  %t49 = load i32, ptr %l25, !tbaa !23
  store i32 %t49, ptr %rv
  br label %ret
bb10:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l28
  br label %bb11
bb11:
  %t55 = load i1, ptr %l28, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l33
  br label %bb14
bb13:
  br label %bb27
bb14:
  %t66 = load i32, ptr %l33, !tbaa !23
  store i32 %t66, ptr %l2, !tbaa !23
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l2, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l38
  br label %bb15
bb15:
  %t77 = load i32, ptr %l38, !range !{i32 0, i32 33}
  %t79 = trunc i64 19 to i32
  %t80 = icmp eq i32 %t77, %t79
  br i1 %t80, label %bb16, label %bb17
bb16:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %l2, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l46
  br label %bb18
bb17:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb19
bb18:
  %t92 = load i32, ptr %l46, !tbaa !23
  %t93 = icmp ne i32 %t92, 0
  store i1 %t93, ptr %l41, !tbaa !21
  br label %bb19
bb19:
  %t95 = load i1, ptr %l41, !tbaa !21
  br i1 %t95, label %bb20, label %bb21
bb20:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l50, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  store ptr %t107, ptr %l53, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l2, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l58
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t118 = load ptr, ptr %l53, !tbaa !29
  %t119 = load i32, ptr %l58, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t118, i32 %t119, i32 0)
  store i32 %t120, ptr %l59
  br label %bb23
bb23:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l1, !tbaa !23
  %t130 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t126, i32 %t127)
  store i64 %t130, ptr %l64
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l50, !tbaa !29
  %t132 = load i32, ptr %l59, !tbaa !23
  %t133 = load i64, ptr %l64, !tbaa !24
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t131, i32 %t132, i64 %t133)
  store i32 %t134, ptr %l65
  br label %bb25
bb25:
  %t135 = load i32, ptr %l65, !tbaa !23
  store i32 %t135, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t136 = load i32, ptr %l1, !tbaa !23
  store i32 %t136, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l4 = alloca ptr
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t9 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddSite(ptr %v0, ptr %t6, i32 %a1, %"compiler/source:Span" %a2)
  store i32 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetAnywhere(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l8 = alloca ptr
  %l12 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t9, i64 %a1)
  store ptr %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 8
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t21 = call i1 @compiler_2fcheck_2esetsName(ptr %v0, { i64, ptr } %t17, i32 %a2)
  store i1 %t21, ptr %l12
  br label %bb2
bb2:
  %t22 = load i1, ptr %l12, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitContracts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i1
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l46 = alloca { i64, ptr }
  %l50 = alloca i1
  %l68 = alloca i64
  %l72 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca i32
  %l82 = alloca { i64, ptr }
  %l88 = alloca i64
  %l91 = alloca i64
  %l109 = alloca { i64, ptr }
  %l113 = alloca i1
  %l117 = alloca { i64, ptr }
  %l120 = alloca i32
  %l125 = alloca i32
  %l130 = alloca { i64, ptr }
  %l133 = alloca { i64, [3 x i64] }
  %l135 = alloca i64
  %l140 = alloca i1
  %s9 = alloca %olang.scope
  %t243 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l22, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l22, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb6
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:TypeDecl", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp sgt i64 %t18, 0
  store i1 %t20, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l26, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/ast:TypeDecl", ptr %t23, i32 0, i32 3
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  store ptr %t28, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t29 = load ptr, ptr %l33, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l33, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 5}
  %t35 = icmp eq i64 %t33, 2
  store i1 %t35, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l34, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr { i64, [6 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t39, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40
  store { i64, ptr } %t41, ptr %l4, !tbaa !27
  br label %bb14
bb13:
  br label %bb60
bb14:
  store i1 false, ptr %l5, !tbaa !21
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t43, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t57 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  store ptr %t63, ptr %l9, !tbaa !29
  %t65 = load i1, ptr %l5, !tbaa !21
  br i1 %t65, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb21
bb20:
  %t67 = load ptr, ptr %l9, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Func", ptr %t67, i32 0, i32 3
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/ast:Sig", ptr %t70, i32 0, i32 5
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  %t77 = xor i1 %t75, true
  store i1 %t77, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t79 = load i1, ptr %l50, !tbaa !21
  store i1 %t79, ptr %l5, !tbaa !21
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t82 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitArgumentError(ptr %v0, ptr %v1, ptr %t80, i64 %t81, ptr %t82)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t86 = load i64, ptr %l7, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l7, !tbaa !24
  br label %bb15
bb24:
  %t90 = load i1, ptr %l5, !tbaa !21
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb25, label %bb26
bb25:
  br label %ret
bb26:
  br label %bb27
bb27:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load i64, ptr %l1, !tbaa !24
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t101 = getelementptr %"compiler/ast:TypeDecl", ptr %t99, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t106 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t97, i64 %t98, i32 %t102)
  store i64 %t106, ptr %l68
  br label %bb28
bb28:
  %t107 = load i64, ptr %l68, !tbaa !24
  store i64 %t107, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = icmp slt i64 %t108, 0
  br i1 %t110, label %bb29, label %bb30
bb29:
  br label %ret
bb30:
  br label %bb31
bb31:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  store ptr %t115, ptr %l72, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t120 = load i64, ptr %l1, !tbaa !24
  %t121 = load i64, ptr %l10, !tbaa !24
  %t125 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t119, i64 %t120, i64 %t121)
  store i32 %t125, ptr %l77
  br label %bb32
bb32:
  %t126 = load ptr, ptr %l72, !tbaa !29
  %t127 = load i32, ptr %l77, !tbaa !23
  %t128 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t128, ptr %l78
  br label %bb33
bb33:
  %t129 = load i32, ptr %l78, !tbaa !23
  store i32 %t129, ptr %l11, !tbaa !23
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t134 = load i32, ptr %l11, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t133, i32 %t134)
  store { i64, ptr } %t137, ptr %l82
  br label %bb34
bb34:
  %t138 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t138, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  store i64 %t141, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t143 = load i64, ptr %l14, !tbaa !24
  %t144 = load i64, ptr %l13, !tbaa !24
  %t147 = icmp sgt i64 %t143, %t144
  br i1 %t147, label %bb35, label %bb36
bb35:
  %t149 = load i64, ptr %l15, !tbaa !24
  %t151 = icmp sgt i64 %t149, 0
  br i1 %t151, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb40
bb37:
  %t153 = load i64, ptr %l14, !tbaa !24
  %t154 = load i64, ptr %l13, !tbaa !24
  %t157 = sub i64 %t153, %t154
  %t158 = load i64, ptr %l15, !tbaa !24
  %t161 = add i64 %t157, %t158
  %t163 = sub i64 %t161, 1
  %t164 = load i64, ptr %l15, !tbaa !24
  %t167 = sdiv i64 %t163, %t164
  store i64 %t167, ptr %l91, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb39
bb39:
  %t169 = load i64, ptr %l91, !tbaa !24
  store i64 %t169, ptr %l88, !tbaa !24
  br label %bb40
bb40:
  %t170 = load i64, ptr %l88, !tbaa !24
  store i64 %t170, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s9
  %t171 = load i64, ptr %l17, !tbaa !24
  %t172 = load i64, ptr %l16, !tbaa !24
  %t175 = icmp slt i64 %t171, %t172
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s9)
  br label %bb59
bb43:
  br label %bb44
bb44:
  %t179 = load i64, ptr %l13, !tbaa !24
  %t180 = load i64, ptr %l17, !tbaa !24
  %t181 = load i64, ptr %l15, !tbaa !24
  %t184 = mul i64 %t180, %t181
  %t187 = add i64 %t179, %t184
  store i64 %t187, ptr %l18, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t189, ptr %l109, !tbaa !27
  %t190 = load i64, ptr %l18, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr %"compiler/generic:AnySlot", ptr %t193, i64 %t190
  %t195 = getelementptr %"compiler/generic:AnySlot", ptr %t194, i32 0, i32 2
  %t196 = load i64, ptr %t195, !tbaa !24
  %t198 = icmp slt i64 %t196, 0
  br i1 %t198, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb49
bb46:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/check:Checker", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = getelementptr %"compiler/generic:Program", ptr %t203, i32 0, i32 2
  %t206 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t206, ptr %l117, !tbaa !27
  %t207 = load i64, ptr %l18, !tbaa !24
  %t209 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr %"compiler/generic:AnySlot", ptr %t210, i64 %t207
  %t212 = getelementptr %"compiler/generic:AnySlot", ptr %t211, i32 0, i32 1
  %t213 = load i32, ptr %t212, !tbaa !23
  %t216 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t205, i32 %t213)
  store i32 %t216, ptr %l120
  br label %bb47
bb47:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/check:Checker", ptr %t217, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/generic:Program", ptr %t220, i32 0, i32 2
  %t223 = load i32, ptr %l11, !tbaa !23
  %t226 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t222, i32 %t223)
  store i32 %t226, ptr %l125
  br label %bb48
bb48:
  %t227 = load i32, ptr %l120, !tbaa !23
  %t228 = load i32, ptr %l125, !tbaa !23
  %t229 = icmp ne i32 %t227, %t228
  store i1 %t229, ptr %l113, !tbaa !21
  br label %bb49
bb49:
  %t231 = load i1, ptr %l113, !tbaa !21
  br i1 %t231, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s9)
  br label %bb58
bb51:
  br label %bb52
bb52:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l11, !tbaa !23
  %t234 = load i64, ptr %l18, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t235, ptr %l130, !tbaa !27
  %t236 = load i64, ptr %l18, !tbaa !24
  %t238 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr %"compiler/generic:AnySlot", ptr %t239, i64 %t236
  %t241 = getelementptr %"compiler/generic:AnySlot", ptr %t240, i32 0, i32 5
  %t242 = load i32, ptr %t241, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t243
  %t244 = getelementptr { i64, [3 x i64] }, ptr %t243, i32 0, i32 0
  store i64 3, ptr %t244
  %t246 = insertvalue { i32, i64, i32 } undef, i32 %t233, 0
  %t248 = insertvalue { i32, i64, i32 } %t246, i64 %t234, 1
  %t250 = insertvalue { i32, i64, i32 } %t248, i32 %t242, 2
  %t251 = getelementptr { i64, [3 x i64] }, ptr %t243, i32 0, i32 1
  store { i32, i64, i32 } %t250, ptr %t251
  %t252 = load { i64, [3 x i64] }, ptr %t243
  store { i64, [3 x i64] } %t252, ptr %l133
  %t255 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotContract(ptr %v0, ptr %s9, ptr %t232, ptr %l133)
  store i64 %t255, ptr %l135
  br label %bb53
bb53:
  %t256 = load i64, ptr %l135, !tbaa !24
  store i64 %t256, ptr %l19, !tbaa !24
  %t257 = load i64, ptr %l19, !tbaa !24
  %t259 = icmp sge i64 %t257, 0
  br i1 %t259, label %bb54, label %bb55
bb54:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l19, !tbaa !24
  %t265 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %t261, i64 %t262)
  store i1 %t265, ptr %l140
  br label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s9)
  br label %bb58
bb58:
  %t266 = load i64, ptr %l17, !tbaa !24
  %t268 = add i64 %t266, 1
  store i64 %t268, ptr %l17, !tbaa !24
  br label %bb41
bb59:
  br label %bb65
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_37de638d076f2ae2_57648b627de0a61e)
  unreachable
bb65:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollConsts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, i64, i64 }
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
  %l17 = alloca { i64, i64, i64 }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca { i64, i64, i64 }
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i64
  %l37 = alloca { i64, i64, i64 }
  %l42 = alloca ptr
  %l47 = alloca ptr
  %l58 = alloca i64
  %l61 = alloca i64
  %l81 = alloca i64
  %l85 = alloca { i64, i64, i64 }
  %l90 = alloca ptr
  %l95 = alloca ptr
  %l101 = alloca ptr
  %l103 = alloca i32
  %l108 = alloca { i64, ptr }
  %l111 = alloca i32
  %l112 = alloca i32
  %l113 = alloca ptr
  %l115 = alloca i32
  %l118 = alloca ptr
  %l120 = alloca i32
  %l122 = alloca i32
  %l123 = alloca i32
  %l147 = alloca i64
  %l149 = alloca ptr
  %l152 = alloca i64
  %l153 = alloca i32
  %l159 = alloca ptr
  %l162 = alloca i64
  %l166 = alloca { i64, i64, i64 }
  %l183 = alloca ptr
  %l201 = alloca i64
  %l203 = alloca ptr
  %l206 = alloca i64
  %l207 = alloca i32
  %l213 = alloca ptr
  %t229 = alloca { i64, [3 x i64] }, align 8
  %t296 = alloca { i64, [3 x i64] }, align 8
  %t327 = alloca { i64, [3 x i64] }, align 8
  %t351 = alloca { i64, [3 x i64] }, align 8
  %t393 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l33
  br label %bb1
bb1:
  %t6 = load i64, ptr %l33, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t12 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 2, %"compiler/source:Span" %t8)
  store { i64, i64, i64 } %t12, ptr %l37
  br label %bb2
bb2:
  %t13 = load { i64, i64, i64 }, ptr %l37
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
  store ptr %t25, ptr %l42
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l42, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 11
  %t29 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l47
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l47, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Body", ptr %t35, i32 0, i32 19
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = trunc i64 %t38 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t37, i32 %t40)
  br label %bb6
bb6:
  store i64 0, ptr %l10, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t48 = load i64, ptr %l11, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t52 = icmp sgt i64 %t48, %t49
  br i1 %t52, label %bb7, label %bb8
bb7:
  %t54 = load i64, ptr %l12, !tbaa !24
  %t56 = icmp sgt i64 %t54, 0
  br i1 %t56, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb12
bb9:
  %t58 = load i64, ptr %l11, !tbaa !24
  %t59 = load i64, ptr %l10, !tbaa !24
  %t62 = sub i64 %t58, %t59
  %t63 = load i64, ptr %l12, !tbaa !24
  %t66 = add i64 %t62, %t63
  %t68 = sub i64 %t66, 1
  %t69 = load i64, ptr %l12, !tbaa !24
  %t72 = sdiv i64 %t68, %t69
  store i64 %t72, ptr %l61, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb11
bb11:
  %t74 = load i64, ptr %l61, !tbaa !24
  store i64 %t74, ptr %l58, !tbaa !24
  br label %bb12
bb12:
  %t75 = load i64, ptr %l58, !tbaa !24
  store i64 %t75, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb13
bb13:
  %t76 = load i64, ptr %l14, !tbaa !24
  %t77 = load i64, ptr %l13, !tbaa !24
  %t80 = icmp slt i64 %t76, %t77
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb14, label %bb15
bb14:
  br label %bb47
bb15:
  br label %bb16
bb16:
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l14, !tbaa !24
  %t86 = load i64, ptr %l12, !tbaa !24
  %t89 = mul i64 %t85, %t86
  %t92 = add i64 %t84, %t89
  store i64 %t92, ptr %l15, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 37
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l81
  br label %bb17
bb17:
  %t99 = load i64, ptr %l81, !tbaa !24
  store i64 %t99, ptr %l16, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l1
  %t105 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t100, i32 2, %"compiler/source:Span" %t101)
  store { i64, i64, i64 } %t105, ptr %l85
  br label %bb18
bb18:
  %t106 = load { i64, i64, i64 }, ptr %l85
  store { i64, i64, i64 } %t106, ptr %l17
  %t107 = getelementptr { i64, i64, i64 }, ptr %l17, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  store i64 %t108, ptr %l18, !tbaa !24
  %t110 = getelementptr { i64, i64, i64 }, ptr %l17, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %l19, !tbaa !24
  %t113 = getelementptr { i64, i64, i64 }, ptr %l17, i32 0, i32 2
  %t114 = load i64, ptr %t113, !tbaa !24
  store i64 %t114, ptr %l20, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t116)
  store ptr %t118, ptr %l90
  br label %bb19
bb19:
  %t119 = load ptr, ptr %l90, !tbaa !29
  %t121 = getelementptr %"compiler/check:frame", ptr %t119, i32 0, i32 10
  %t122 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t121, i64 %t122)
  br label %bb20
bb20:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t125)
  store ptr %t127, ptr %l95
  br label %bb21
bb21:
  %t128 = load ptr, ptr %l95, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Body", ptr %t128, i32 0, i32 19
  %t131 = load i64, ptr %l18, !tbaa !24
  %t133 = trunc i64 %t131 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t130, i32 %t133)
  br label %bb22
bb22:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l101, !tbaa !29
  %t138 = load ptr, ptr %l2, !tbaa !29
  %t140 = getelementptr %"compiler/ast:ForIn", ptr %t138, i32 0, i32 1
  %t141 = load i32, ptr %t140, !tbaa !23
  store i32 %t141, ptr %l103, !tbaa !23
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  %t149 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t149, ptr %l108, !tbaa !27
  %t150 = load i64, ptr %l15, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i64, ptr %t153, i64 %t150
  %t155 = load i64, ptr %t154, !tbaa !34
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t147, i32 %a4, i64 %t155)
  store i32 %t159, ptr %l111
  br label %bb23
bb23:
  %t160 = load ptr, ptr %l101, !tbaa !29
  %t161 = load i32, ptr %l103, !tbaa !23
  %t162 = load i32, ptr %l111, !tbaa !23
  %t163 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBind(ptr %v0, ptr %t160, i32 %t161, i32 %t162)
  store i32 %t163, ptr %l112
  br label %bb24
bb24:
  %t164 = load i32, ptr %l112, !tbaa !23
  store i32 %t164, ptr %l21, !tbaa !23
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l113, !tbaa !29
  %t166 = load ptr, ptr %l2, !tbaa !29
  %t168 = getelementptr %"compiler/ast:ForIn", ptr %t166, i32 0, i32 0
  %t169 = load i32, ptr %t168, !tbaa !23
  store i32 %t169, ptr %l115, !tbaa !23
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/check:Checker", ptr %t170, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = getelementptr %"compiler/generic:Program", ptr %t173, i32 0, i32 2
  store ptr %t175, ptr %l118, !tbaa !29
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t176)
  store i32 %t178, ptr %l120
  br label %bb25
bb25:
  %t179 = load i64, ptr %l15, !tbaa !24
  %t180 = load ptr, ptr %l118, !tbaa !29
  %t181 = load i32, ptr %l120, !tbaa !23
  %t183 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t180, i32 %t181, i64 %t179)
  store i32 %t183, ptr %l122
  br label %bb26
bb26:
  %t184 = load ptr, ptr %l113, !tbaa !29
  %t185 = load i32, ptr %l115, !tbaa !23
  %t186 = load i32, ptr %l122, !tbaa !23
  %t187 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBind(ptr %v0, ptr %t184, i32 %t185, i32 %t186)
  store i32 %t187, ptr %l123
  br label %bb27
bb27:
  %t188 = load i32, ptr %l123, !tbaa !23
  store i32 %t188, ptr %l22, !tbaa !23
  %t189 = load ptr, ptr %l2, !tbaa !29
  %t191 = getelementptr %"compiler/ast:ForIn", ptr %t189, i32 0, i32 4
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t196 = icmp sgt i64 %t194, 0
  br i1 %t196, label %bb28, label %bb29
bb28:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l2, !tbaa !29
  %t201 = getelementptr %"compiler/ast:ForIn", ptr %t199, i32 0, i32 4
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t198, { i64, ptr } %t202)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load ptr, ptr %l2, !tbaa !29
  %t208 = getelementptr %"compiler/ast:ForIn", ptr %t206, i32 0, i32 0
  %t209 = load i32, ptr %t208, !tbaa !23
  %t210 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollUnbind(ptr %v0, ptr %t205, i32 %t209, i32 %t210)
  br label %bb32
bb32:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l2, !tbaa !29
  %t217 = getelementptr %"compiler/ast:ForIn", ptr %t215, i32 0, i32 1
  %t218 = load i32, ptr %t217, !tbaa !23
  %t219 = load i32, ptr %l21, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollUnbind(ptr %v0, ptr %t214, i32 %t218, i32 %t219)
  br label %bb33
bb33:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load %"compiler/source:Span", ptr %l1
  %t225 = load i64, ptr %l18, !tbaa !24
  %t227 = trunc i64 %t225 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [3 x i64] }, ptr %t229, i32 0, i32 0
  store i64 5, ptr %t230
  %t232 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t224, 0
  %t234 = insertvalue { %"compiler/source:Span", i32, i32 } %t232, i32 0, 1
  %t236 = insertvalue { %"compiler/source:Span", i32, i32 } %t234, i32 %t227, 2
  %t237 = getelementptr { i64, [3 x i64] }, ptr %t229, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t236, ptr %t237
  %t238 = load { i64, [3 x i64] }, ptr %t229
  %t240 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t238, ptr %t240
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t223, ptr %t240)
  br label %bb34
bb34:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t243)
  store ptr %t245, ptr %l149
  br label %bb35
bb35:
  %t246 = load ptr, ptr %l149, !tbaa !29
  %t248 = getelementptr %"compiler/check:frame", ptr %t246, i32 0, i32 10
  %t250 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t248)
  %t251 = extractvalue { i32, i64 } %t250, 1
  %t252 = extractvalue { i32, i64 } %t250, 0
  store i32 %t252, ptr %l153
  %t253 = icmp ne i32 %t252, 0
  br i1 %t253, label %bb37, label %ok.254, !prof !99
ok.254:
  store i64 %t251, ptr %l152
  br label %bb36
bb36:
  %t255 = load i64, ptr %l152, !tbaa !24
  store i64 %t255, ptr %l147, !tbaa !24
  br label %bb39
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load i64, ptr %l18, !tbaa !24
  %t258 = load i64, ptr %l19, !tbaa !24
  %t259 = load i64, ptr %l20, !tbaa !24
  %t260 = load i64, ptr %l16, !tbaa !24
  %t266 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t256, i64 %t257, i64 %t258, i64 %t259, i64 %t260)
  store ptr %t266, ptr %l159
  br label %bb40
bb40:
  %t267 = load ptr, ptr %l159, !tbaa !29
  store ptr %t267, ptr %l23, !tbaa !29
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/check:Checker", ptr %t268, i32 0, i32 37
  %t272 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t270)
  store i64 %t272, ptr %l162
  br label %bb41
bb41:
  %t273 = load i64, ptr %l162, !tbaa !24
  store i64 %t273, ptr %l24, !tbaa !24
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load %"compiler/source:Span", ptr %l1
  %t279 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t274, i32 3, %"compiler/source:Span" %t275)
  store { i64, i64, i64 } %t279, ptr %l166
  br label %bb42
bb42:
  %t280 = load { i64, i64, i64 }, ptr %l166
  store { i64, i64, i64 } %t280, ptr %l25
  %t281 = getelementptr { i64, i64, i64 }, ptr %l25, i32 0, i32 0
  %t282 = load i64, ptr %t281, !tbaa !24
  store i64 %t282, ptr %l26, !tbaa !24
  %t284 = getelementptr { i64, i64, i64 }, ptr %l25, i32 0, i32 1
  %t285 = load i64, ptr %t284, !tbaa !24
  store i64 %t285, ptr %l27, !tbaa !24
  %t287 = getelementptr { i64, i64, i64 }, ptr %l25, i32 0, i32 2
  %t288 = load i64, ptr %t287, !tbaa !24
  store i64 %t288, ptr %l28, !tbaa !24
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load %"compiler/source:Span", ptr %l1
  %t292 = load i64, ptr %l18, !tbaa !24
  %t294 = trunc i64 %t292 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t296
  %t297 = getelementptr { i64, [3 x i64] }, ptr %t296, i32 0, i32 0
  store i64 5, ptr %t297
  %t299 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t291, 0
  %t301 = insertvalue { %"compiler/source:Span", i32, i32 } %t299, i32 0, 1
  %t303 = insertvalue { %"compiler/source:Span", i32, i32 } %t301, i32 %t294, 2
  %t304 = getelementptr { i64, [3 x i64] }, ptr %t296, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t303, ptr %t304
  %t305 = load { i64, [3 x i64] }, ptr %t296
  %t307 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t305, ptr %t307
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t290, ptr %t307)
  br label %bb43
bb43:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load i64, ptr %l26, !tbaa !24
  %t312 = load i64, ptr %l27, !tbaa !24
  %t313 = load i64, ptr %l28, !tbaa !24
  %t314 = load i64, ptr %l24, !tbaa !24
  %t320 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t310, i64 %t311, i64 %t312, i64 %t313, i64 %t314)
  store ptr %t320, ptr %l183
  br label %bb44
bb44:
  %t321 = load ptr, ptr %l183, !tbaa !29
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load %"compiler/source:Span", ptr %l1
  %t324 = load ptr, ptr %l23, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t327
  %t328 = getelementptr { i64, [3 x i64] }, ptr %t327, i32 0, i32 0
  store i64 4, ptr %t328
  %t330 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t323, 0
  %t332 = insertvalue { %"compiler/source:Span", ptr, ptr } %t330, ptr %t324, 1
  %t334 = insertvalue { %"compiler/source:Span", ptr, ptr } %t332, ptr %t321, 2
  %t335 = getelementptr { i64, [3 x i64] }, ptr %t327, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t334, ptr %t335
  %t336 = load { i64, [3 x i64] }, ptr %t327
  %t338 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t336, ptr %t338
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t322, ptr %t338)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t341 = load i64, ptr %l14, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l14, !tbaa !24
  br label %bb13
bb47:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load %"compiler/source:Span", ptr %l1
  %t347 = load i64, ptr %l7, !tbaa !24
  %t349 = trunc i64 %t347 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t351
  %t352 = getelementptr { i64, [3 x i64] }, ptr %t351, i32 0, i32 0
  store i64 5, ptr %t352
  %t354 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t346, 0
  %t356 = insertvalue { %"compiler/source:Span", i32, i32 } %t354, i32 0, 1
  %t358 = insertvalue { %"compiler/source:Span", i32, i32 } %t356, i32 %t349, 2
  %t359 = getelementptr { i64, [3 x i64] }, ptr %t351, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t358, ptr %t359
  %t360 = load { i64, [3 x i64] }, ptr %t351
  %t362 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t360, ptr %t362
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t345, ptr %t362)
  br label %bb48
bb48:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t365)
  store ptr %t367, ptr %l203
  br label %bb49
bb49:
  %t368 = load ptr, ptr %l203, !tbaa !29
  %t370 = getelementptr %"compiler/check:frame", ptr %t368, i32 0, i32 11
  %t372 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t370)
  %t373 = extractvalue { i32, i64 } %t372, 1
  %t374 = extractvalue { i32, i64 } %t372, 0
  store i32 %t374, ptr %l207
  %t375 = icmp ne i32 %t374, 0
  br i1 %t375, label %bb51, label %ok.376, !prof !99
ok.376:
  store i64 %t373, ptr %l206
  br label %bb50
bb50:
  %t377 = load i64, ptr %l206, !tbaa !24
  store i64 %t377, ptr %l201, !tbaa !24
  br label %bb53
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i64, ptr %l7, !tbaa !24
  %t380 = load i64, ptr %l8, !tbaa !24
  %t381 = load i64, ptr %l9, !tbaa !24
  %t382 = load i64, ptr %l5, !tbaa !24
  %t388 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t378, i64 %t379, i64 %t380, i64 %t381, i64 %t382)
  store ptr %t388, ptr %l213
  br label %bb54
bb54:
  %t389 = load ptr, ptr %l213, !tbaa !29
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t393
  %t394 = getelementptr { i64, [3 x i64] }, ptr %t393, i32 0, i32 0
  store i64 4, ptr %t394
  %t396 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t391, 0
  %t398 = insertvalue { %"compiler/source:Span", ptr, ptr } %t396, ptr %t389, 1
  %t399 = insertvalue { %"compiler/source:Span", ptr, ptr } %t398, ptr null, 2
  %t400 = getelementptr { i64, [3 x i64] }, ptr %t393, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t399, ptr %t400
  %t401 = load { i64, [3 x i64] }, ptr %t393
  %t403 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t401, ptr %t403
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t390, ptr %t403)
  br label %bb55
bb55:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunsetLowers(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i1
  %l20 = alloca i32
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
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l12
  br label %bb2
bb2:
  %t22 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t24 = trunc i64 19 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l20
  br label %bb5
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb6
bb5:
  %t37 = load i32, ptr %l20, !tbaa !23
  %t38 = icmp eq i32 %t37, 0
  store i1 %t38, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t40 = load i1, ptr %l15, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2eexprKindName(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %rv = alloca { i64, ptr }
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
  %t8 = icmp eq i64 %t6, 4
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
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 9
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l7, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb12:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb13, label %bb14
bb13:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 30}
  %t26 = icmp eq i64 %t24, 11
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb14
bb14:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb18:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t29 = load ptr, ptr %l14, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb19, label %bb20
bb19:
  %t32 = load ptr, ptr %l14, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 30}
  %t35 = icmp eq i64 %t33, 13
  store i1 %t35, ptr %l15, !tbaa !21
  br label %bb20
bb20:
  %t36 = load i1, ptr %l15, !tbaa !21
  br i1 %t36, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb24:
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t38 = load ptr, ptr %l18, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb25, label %bb26
bb25:
  %t41 = load ptr, ptr %l18, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 30}
  %t44 = icmp eq i64 %t42, 18
  store i1 %t44, ptr %l19, !tbaa !21
  br label %bb26
bb26:
  %t45 = load i1, ptr %l19, !tbaa !21
  br i1 %t45, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb30:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb31, label %bb32
bb31:
  %t50 = load ptr, ptr %l22, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 30}
  %t53 = icmp eq i64 %t51, 19
  store i1 %t53, ptr %l23, !tbaa !21
  br label %bb32
bb32:
  %t54 = load i1, ptr %l23, !tbaa !21
  br i1 %t54, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb36:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t56 = load ptr, ptr %l26, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb37, label %bb38
bb37:
  %t59 = load ptr, ptr %l26, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 30}
  %t62 = icmp eq i64 %t60, 22
  store i1 %t62, ptr %l27, !tbaa !21
  br label %bb38
bb38:
  %t63 = load i1, ptr %l27, !tbaa !21
  br i1 %t63, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb42:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t65 = load ptr, ptr %l30, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb43, label %bb44
bb43:
  %t68 = load ptr, ptr %l30, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 30}
  %t71 = icmp eq i64 %t69, 23
  store i1 %t71, ptr %l31, !tbaa !21
  br label %bb44
bb44:
  %t72 = load i1, ptr %l31, !tbaa !21
  br i1 %t72, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb48:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t74 = load ptr, ptr %l34, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb49, label %bb50
bb49:
  %t77 = load ptr, ptr %l34, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 30}
  %t80 = icmp eq i64 %t78, 24
  store i1 %t80, ptr %l35, !tbaa !21
  br label %bb50
bb50:
  %t81 = load i1, ptr %l35, !tbaa !21
  br i1 %t81, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb54:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t83 = load ptr, ptr %l38, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb55, label %bb56
bb55:
  %t86 = load ptr, ptr %l38, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 30}
  %t89 = icmp eq i64 %t87, 25
  store i1 %t89, ptr %l39, !tbaa !21
  br label %bb56
bb56:
  %t90 = load i1, ptr %l39, !tbaa !21
  br i1 %t90, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb60:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t92 = load ptr, ptr %l42, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb61, label %bb62
bb61:
  %t95 = load ptr, ptr %l42, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 30}
  %t98 = icmp eq i64 %t96, 15
  store i1 %t98, ptr %l43, !tbaa !21
  br label %bb62
bb62:
  %t99 = load i1, ptr %l43, !tbaa !21
  br i1 %t99, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_d149dd778abfbb99_ce32867ac8840ced)
  unreachable
bb71:
  %t100 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t100, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2elambdaOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 22
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l2, !tbaa !29
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store ptr null, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_94831dcf6c50df99_e0fe015107062615)
  unreachable
bb11:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2elastIsValue(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = sub i64 %t4, 1
  %t8 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr ptr, ptr %t9, i64 %t6
  %t11 = load ptr, ptr %t10, !tbaa !39
  store ptr %t11, ptr %l1, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  store ptr %t13, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 22}
  %t20 = icmp eq i64 %t18, 0
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr }, ptr %t24, i32 0, i32 1
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i1 @compiler_2fcheck_2estmtLike(ptr %v0, ptr %t28)
  store i1 %t30, ptr %l16
  br label %bb6
bb6:
  %t31 = load i1, ptr %l16, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l8, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_696a437f6b67e70a_247b6a7ce30931f6)
  unreachable
bb12:
  %t34 = load i1, ptr %l8, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i1
  %l31 = alloca { i64, ptr }
  %l38 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l69 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t24 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t2 = load ptr, ptr %l12, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l12, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l18, !tbaa !23
  %t17 = icmp sge i64 1, 0
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = icmp sle i64 1, 2305843009213693951
  br i1 %t19, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_b3d4fbe8a8a5f52e_5afb106a2ffe6622)
  unreachable
bb8:
  %t21 = mul i64 1, 4
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = load i32, ptr %l18, !tbaa !23
  store i64 0, ptr %t24
  br label %fill.25
fill.25:
  %t28 = load i64, ptr %t24
  %t29 = icmp slt i64 %t28, 1
  br i1 %t29, label %fillb.26, label %filld.27
fillb.26:
  %t30 = getelementptr i32, ptr %t22, i64 %t28
  store i32 %t23, ptr %t30
  %t31 = add i64 %t28, 1
  store i64 %t31, ptr %t24
  br label %fill.25
filld.27:
  %t32 = insertvalue { i64, ptr } undef, i64 1, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t22, 1
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb9:
  call void @__olang_check_failed(ptr @olang_loc_b3d4fbe8a8a5f52e_5afb106a2ffe6622)
  unreachable
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 30}
  %t42 = icmp eq i64 %t40, 14
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l23, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t52, i32 0, i32 2
  %t54 = load i32, ptr %t53
  store i32 %t54, ptr %l3, !tbaa !23
  br label %bb15
bb14:
  br label %bb36
bb15:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = call { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v0, ptr %v1, ptr %t56)
  store { i64, ptr } %t58, ptr %l31
  br label %bb16
bb16:
  %t59 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t59, ptr %l4, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp eq i64 %t62, 0
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t66, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l38, !tbaa !24
  %t73 = load i64, ptr %l38, !tbaa !24
  %t74 = icmp sge i64 %t73, 0
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t76 = load i64, ptr %l38, !tbaa !24
  %t77 = icmp sle i64 %t76, 2305843009213693951
  br i1 %t77, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_5f893925bf4851a3_7a54563cc3def2d7)
  unreachable
bb22:
  %t79 = load i64, ptr %l38, !tbaa !24
  %t80 = mul i64 %t79, 4
  %t81 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t80)
  %t82 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t84, ptr %lp5
  %t86 = load ptr, ptr %lp5
  store { i64, ptr } %t83, ptr %t86, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t87, 0
  store i64 %t89, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t91 = load i64, ptr %l7, !tbaa !24
  %t92 = load i64, ptr %l6, !tbaa !24
  %t95 = icmp sgt i64 %t91, %t92
  br i1 %t95, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_5f893925bf4851a3_7a54563cc3def2d7)
  unreachable
bb24:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = icmp sgt i64 %t97, 0
  br i1 %t99, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb29
bb26:
  %t101 = load i64, ptr %l7, !tbaa !24
  %t102 = load i64, ptr %l6, !tbaa !24
  %t105 = sub i64 %t101, %t102
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = add i64 %t105, %t106
  %t111 = sub i64 %t109, 1
  %t112 = load i64, ptr %l8, !tbaa !24
  %t115 = sdiv i64 %t111, %t112
  store i64 %t115, ptr %l50, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb28
bb28:
  %t117 = load i64, ptr %l50, !tbaa !24
  store i64 %t117, ptr %l47, !tbaa !24
  br label %bb29
bb29:
  %t118 = load i64, ptr %l47, !tbaa !24
  store i64 %t118, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb30
bb30:
  %t119 = load i64, ptr %l10, !tbaa !24
  %t120 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t127 = load i64, ptr %l6, !tbaa !24
  %t128 = load i64, ptr %l10, !tbaa !24
  %t129 = load i64, ptr %l8, !tbaa !24
  %t132 = mul i64 %t128, %t129
  %t135 = add i64 %t127, %t132
  store i64 %t135, ptr %l11, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t138, ptr %l69, !tbaa !27
  %t139 = load i64, ptr %l11, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i32, ptr %t142, i64 %t139
  %t144 = load i32, ptr %t143, !tbaa !33
  %t146 = load ptr, ptr %lp5
  %t148 = getelementptr { i64, ptr }, ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i32, ptr %t149, i64 %t137
  store i32 %t144, ptr %t150, !tbaa !33
  br label %bb34
bb34:
  %t151 = load i64, ptr %l10, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l10, !tbaa !24
  br label %bb30
bb35:
  %t155 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t158 = load i32, ptr %l3, !tbaa !23
  %t160 = load ptr, ptr %lp5
  %t162 = getelementptr { i64, ptr }, ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i32, ptr %t163, i64 %t157
  store i32 %t158, ptr %t164, !tbaa !33
  %t165 = load ptr, ptr %lp5
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  store { i64, ptr } %t166, ptr %rv
  br label %ret
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb44
bb39:
  %t168 = icmp sge i64 0, 0
  br i1 %t168, label %bb40, label %bb41
bb40:
  %t170 = icmp sle i64 0, 2305843009213693951
  br i1 %t170, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_846f5e9676ec8800_37ad59496399134)
  unreachable
bb42:
  %t172 = mul i64 0, 4
  %t173 = insertvalue { i64, ptr } undef, i64 0, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t174, ptr %rv
  br label %ret
bb43:
  call void @__olang_check_failed(ptr @olang_loc_846f5e9676ec8800_37ad59496399134)
  unreachable
bb44:
  call void @__olang_check_failed(ptr @olang_loc_96946624ac4f8e7e_9abb5b4c37d9f99a)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
declare void @__olang_check_failed(ptr) cold noreturn
@__olang_empty_array = external constant [16 x i64]
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
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d1 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Atomic" }>, align 8
define linkonce_odr %"compiler/typed:ContractInfo" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aContractInfo(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:ContractInfo"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/typed:ContractInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/typed:ContractInfo", ptr %a0
  store %"compiler/typed:ContractInfo" %t2, ptr %l1
  %t3 = getelementptr %"compiler/typed:ContractInfo", ptr %l1, i32 0, i32 2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/typed:ContractInfo", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/typed:ContractInfo", ptr %l1, i32 0, i32 3
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/typed:ContractInfo", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/typed:ContractInfo", ptr %l1, i32 0, i32 4
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/typed:ContractInfo", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/typed:ContractInfo", ptr %l1
  store %"compiler/typed:ContractInfo" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:ContractInfo", ptr %rv
  ret %"compiler/typed:ContractInfo" %rr
}

@.d2 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/argument" }>, align 8
@.d3 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ArgumentError" }>, align 8
@.d4 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Invalid" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare i64 @__olang_fmt_i64(ptr, i64)
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
define linkonce_odr %"compiler/check:weakPlace" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aweakPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/check:weakPlace"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/check:weakPlace"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/check:weakPlace", ptr %a0
  store %"compiler/check:weakPlace" %t2, ptr %l1
  %t3 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/check:weakPlace", ptr %l1
  store %"compiler/check:weakPlace" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:weakPlace", ptr %rv
  ret %"compiler/check:weakPlace" %rr
}

@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a member reached through an import, of this kind" }>, align 8
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e50 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d18 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"parameter" }>, align 8
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"result" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Of" }>, align 8
@.d21 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"its Name and Type" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d24 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"an increment as a value (S3a)" }>, align 8
@.d25 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"'is' with a type (E32)" }>, align 8
@.d26 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"'as' (E32)" }>, align 8
@.d27 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"a generic name as a value" }>, align 8
@.d28 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"a nested row (E21)" }>, align 8
@.d29 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"a comprehension (E27)" }>, align 8
@.d30 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a lambda (D16)" }>, align 8
@.d31 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a match value (S12b)" }>, align 8
@.d32 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a range outside a for (S9b)" }>, align 8
@.d33 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"'default' outside a call (E14a)" }>, align 8
@.d34 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"an index of this kind" }>, align 8
@.d35 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"an expression of this kind" }>, align 8
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwrapNull(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBangNothingFails(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_77940e7aab679ede_bd13144cbc386012 = external constant [0 x i8]
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ebitOp(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_69e8c5ecd9bfbf70_d0f2ea1b652f5f64 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/typed:ContractInfo" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H1fc1bd863e6a60d3e5c2aece55d841d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsArgumentError(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenContractNeedsArgumentError(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsQuestion(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleak(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3)
@olang_loc_30cd626924d65af9_b5ae1ddae6eb1145 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargumentPush(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_fde34f6ad3d04e85_8bb8dc064f471149 = external constant [0 x i8]
@olang_loc_7e2870e38111b7d4_913a9c3a02b86678 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHolds(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i1 %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H7dde68908c71339667eba96ae7e6565c(ptr %v0, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare %"compiler/check:weakPlace" @compiler_2fcheck_3aweakPlace_2ector(ptr %v0, { i64, [3 x i64] } %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2ePush_H297ef57e7eecfa1bdb33767a82738378(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:weakPlace" %a1)
@olang_loc_99b065cd1779adaf_71b4842056cbdbfb = external constant [0 x i8]
@olang_loc_a8dc05ade1085e71_1f4ef85bbb60cc55 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare %"compiler/check:effectPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eAt_H2c6933398e42ebe4f85d63d17b1157eb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eJudge(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i32 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEffectBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteEffect(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneLengths(ptr %v0, i64 %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_2c6c6a9e0d4d53fe_41be050b28a8c6c2 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnFact(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_954db3133f46ea14_2b823e3792cdf1c0 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotInModule(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceHere(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3)
declare i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elimit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4)
@olang_loc_c41dfbcd22d81110_5c09edf2d4d23d4 = external constant [0 x i8]
@olang_loc_d2fbf365f111393d_99a61c47f5e25be1 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6)
@olang_loc_29325a2d88e5d86a_b2ef2c5481dbb3d6 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, i32 %a6)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodNames(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9311a1fdea965308_123228c6f8b4663c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_6fa6db75017b9575_1d827b27b68e8189 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
@olang_loc_53860b63ce2a3756_eab450cf1ae092ca = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
@olang_loc_d8c7da3a96e96ec6_ffec47baa4f6769a = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderExpected(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructNotName(ptr %v0)
@olang_loc_fb06dcd16342dc9_94e70e479081575d = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ediscardOr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfArgs(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldOfEnum(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
@olang_loc_e5b066603c2028fc_10f264a847d19698 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestNoSlice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqSlice(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddSite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fcheck_2esetsName(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitArgumentError(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotContract(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_37de638d076f2ae2_57648b627de0a61e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d149dd778abfbb99_ce32867ac8840ced = external constant [0 x i8]
@olang_loc_94831dcf6c50df99_e0fe015107062615 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2estmtLike(ptr %v0, ptr %a0)
@olang_loc_696a437f6b67e70a_247b6a7ce30931f6 = external constant [0 x i8]
@olang_loc_b3d4fbe8a8a5f52e_5afb106a2ffe6622 = external constant [0 x i8]
@olang_loc_5f893925bf4851a3_7a54563cc3def2d7 = external constant [0 x i8]
@olang_loc_846f5e9676ec8800_37ad59496399134 = external constant [0 x i8]
@olang_loc_96946624ac4f8e7e_9abb5b4c37d9f99a = external constant [0 x i8]

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
