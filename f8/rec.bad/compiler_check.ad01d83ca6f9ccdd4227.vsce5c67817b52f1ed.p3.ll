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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:ValueAsk" = type { i32, i64, %"compiler/source:Span", i32, i64, { i64, [3 x i64] }, i1, { i64, [3 x i64] } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i64, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/cond:Value" = type { i32, i64, double, i64, i64, i1, i1 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32, i32 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:payloadItem" = type { i32, ptr }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/typed:SiteInfo" = type { i32, %"compiler/source:Span" }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, { i64, ptr }, i64, i1, i64 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/check:roDeepArg" = type { i64, ptr, i64, i64 }
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 51}
  store i32 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l14 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %l41 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TopIf", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb7
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/ast:TopIf", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_555450387d5e0d0e_fcfc730d79d494b2)
  unreachable
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/ast:TopIf", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t21 = getelementptr %"compiler/ast:TopBranch", ptr %t18, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %t22, i32 %t23)
  store i1 %t26, ptr %l14
  br label %bb6
bb6:
  %t27 = load i1, ptr %l14, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l5, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/ast:TopIf", ptr %t32, i32 0, i32 2
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopIf", ptr %t41, i32 0, i32 2
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb13, label %bb14
bb12:
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_65e6047404e548b5_230b9180471a5d9)
  unreachable
bb14:
  br label %bb15
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TopIf", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l27
  br label %bb16
bb16:
  %t56 = load i1, ptr %l27, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/ast:TopIf", ptr %t57, i32 0, i32 3
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/ast:TopIf", ptr %t66, i32 0, i32 3
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb24
bb20:
  call void @__olang_check_failed(ptr @olang_loc_9781a02214179da0_3bbb534184ea6a24)
  unreachable
bb21:
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TopIf", ptr %t73, i32 0, i32 3
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TopBranch", ptr %t76, i32 0, i32 1
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %t80, i32 %t81)
  store i1 %t84, ptr %l41
  br label %bb23
bb23:
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %l32, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l32, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i1
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
  br label %bb18
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
  store i32 %t30, ptr %l6, !tbaa !23
  %t32 = load i32, ptr %l6, !tbaa !23
  %t34 = icmp ne i32 %t32, 0
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l6, !tbaa !23
  %t40 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l26
  br label %bb8
bb7:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t41 = load i1, ptr %l26, !tbaa !21
  %t42 = xor i1 %t41, true
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = add i64 %a2, 1
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %t45, i32 %t46, i64 %t49)
  store i1 %t53, ptr %l33
  br label %bb12
bb11:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  %t54 = load i1, ptr %l33, !tbaa !21
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l28, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l4, !tbaa !24
  br label %bb2
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %s3 = alloca %olang.scope
  %t139 = alloca { i64, [2 x i64] }, align 8
  %t190 = alloca %"compiler/generic:Context", align 8
  %t356 = alloca { i64, [3 x i64] }, align 8
  %t454 = alloca { i64, [3 x i64] }, align 8
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 144
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 20
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
  store %olang.scope zeroinitializer, ptr %s3
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l56, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t85, ptr %l57
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l3, !tbaa !23
  %t90 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t86, i32 %t87)
  store { i64, ptr } %t90, ptr %l60
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t91 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %s3, ptr %s3, ptr %v0, { i64, ptr } %t97, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d6, i32 0, i32 1) })
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
  call void @__olang_scope_close(ptr %s3)
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
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 19
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t110)
  store i64 %t112, ptr %l68
  br label %bb34
bb34:
  %t113 = load i64, ptr %l68, !tbaa !24
  store i64 %t113, ptr %l7, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 144
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
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 23
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
  %t203 = call ptr @__olang_region_home(ptr %t202)
  %t204 = icmp ne ptr %t203, null
  %t205 = select i1 %t204, ptr %t203, ptr null
  %t206 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t206, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = call ptr @__olang_region_home(ptr %t210)
  %t212 = icmp ne ptr %t211, null
  %t213 = select i1 %t212, ptr %t211, ptr %t205
  %t214 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t215 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t214, i32 0, i32 0
  %t216 = load { i64, ptr }, ptr %t215
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr null)
  %t219 = call ptr @__olang_region_home(ptr %t218)
  %t220 = icmp ne ptr %t219, null
  %t221 = select i1 %t220, ptr %t219, ptr %t213
  %t222 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t223 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t222, i32 0, i32 2
  %t224 = load { i64, ptr }, ptr %t223
  %t225 = extractvalue { i64, ptr } %t224, 1
  %t226 = call ptr @__olang_region_or(ptr %t225, ptr null)
  %t227 = call ptr @__olang_region_home(ptr %t226)
  %t228 = icmp ne ptr %t227, null
  %t229 = select i1 %t228, ptr %t227, ptr %t221
  %t230 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t231 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t230, i32 0, i32 1
  %t232 = load { i64, ptr }, ptr %t231
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = call ptr @__olang_region_or(ptr %t233, ptr null)
  %t235 = call ptr @__olang_region_home(ptr %t234)
  %t236 = icmp ne ptr %t235, null
  %t237 = select i1 %t236, ptr %t235, ptr %t229
  %t238 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t239 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t238, i32 0, i32 0
  %t240 = load { i64, ptr }, ptr %t239
  %t241 = extractvalue { i64, ptr } %t240, 1
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr null)
  %t243 = call ptr @__olang_region_home(ptr %t242)
  %t244 = icmp ne ptr %t243, null
  %t245 = select i1 %t244, ptr %t243, ptr %t237
  %t246 = icmp eq ptr %t245, %t197
  call void @__olang_region_settle(ptr %t197, i1 %t246)
  br label %bb44
bb44:
  %t247 = load ptr, ptr %l98, !tbaa !29
  %t248 = getelementptr %"compiler/check:frame", ptr %t247, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l106, ptr %t248, i64 160, i1 false)
  %t249 = load ptr, ptr %l98, !tbaa !29
  %t250 = getelementptr %"compiler/check:frame", ptr %t249, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t250, ptr %l104, i64 160, i1 false)
  %t251 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t251, label %bb45, label %bb46
bb45:
  %t253 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t254 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t253, i32 0, i32 2
  %t255 = load { i64, ptr }, ptr %t254
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = call ptr @__olang_region_or(ptr %t256, ptr null)
  %t258 = call ptr @__olang_region_home(ptr %t257)
  %t259 = icmp ne ptr %t258, null
  %t260 = select i1 %t259, ptr %t258, ptr null
  %t261 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t262 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t261, i32 0, i32 1
  %t263 = load { i64, ptr }, ptr %t262
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = call ptr @__olang_region_or(ptr %t264, ptr null)
  %t266 = call ptr @__olang_region_home(ptr %t265)
  %t267 = icmp ne ptr %t266, null
  %t268 = select i1 %t267, ptr %t266, ptr %t260
  %t269 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t270 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t269, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270
  %t272 = extractvalue { i64, ptr } %t271, 1
  %t273 = call ptr @__olang_region_or(ptr %t272, ptr null)
  %t274 = call ptr @__olang_region_home(ptr %t273)
  %t275 = icmp ne ptr %t274, null
  %t276 = select i1 %t275, ptr %t274, ptr %t268
  %t277 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t278 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t277, i32 0, i32 2
  %t279 = load { i64, ptr }, ptr %t278
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = call ptr @__olang_region_or(ptr %t280, ptr null)
  %t282 = call ptr @__olang_region_home(ptr %t281)
  %t283 = icmp ne ptr %t282, null
  %t284 = select i1 %t283, ptr %t282, ptr %t276
  %t285 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t286 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t285, i32 0, i32 1
  %t287 = load { i64, ptr }, ptr %t286
  %t288 = extractvalue { i64, ptr } %t287, 1
  %t289 = call ptr @__olang_region_or(ptr %t288, ptr null)
  %t290 = call ptr @__olang_region_home(ptr %t289)
  %t291 = icmp ne ptr %t290, null
  %t292 = select i1 %t291, ptr %t290, ptr %t284
  %t293 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t294 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t293, i32 0, i32 0
  %t295 = load { i64, ptr }, ptr %t294
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = call ptr @__olang_region_or(ptr %t296, ptr null)
  %t298 = call ptr @__olang_region_home(ptr %t297)
  %t299 = icmp ne ptr %t298, null
  %t300 = select i1 %t299, ptr %t298, ptr %t292
  call void @__olang_region_drop(ptr %t300)
  store %"compiler/generic:Context" zeroinitializer, ptr %l106
  br label %bb46
bb46:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t301)
  store ptr %t303, ptr %l109
  br label %bb47
bb47:
  %t304 = load %"compiler/source:Span", ptr %l2
  %t305 = load ptr, ptr %l109, !tbaa !29
  %t308 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t305, i32 -1, i32 0, %"compiler/source:Span" %t304)
  store i32 %t308, ptr %l112
  br label %bb48
bb48:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/check:Checker", ptr %t309, i32 0, i32 44
  %t313 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t311)
  store i64 %t313, ptr %l115
  br label %bb49
bb49:
  %t314 = load i64, ptr %l115, !tbaa !24
  store i64 %t314, ptr %l14, !tbaa !24
  %t315 = load ptr, ptr %l4, !tbaa !29
  %t317 = icmp eq ptr %t315, null
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb50, label %bb51
bb50:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load ptr, ptr %l4, !tbaa !29
  %t324 = load i32, ptr %l3, !tbaa !23
  %t328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitCtor(ptr %v0, ptr %v1, ptr %v0, ptr %t321, ptr %t322, i32 %t324)
  store ptr %t328, ptr %l124
  br label %bb52
bb51:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l2
  %t331 = load i32, ptr %l3, !tbaa !23
  %t335 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t329, %"compiler/source:Span" %t330, i32 %t331)
  store ptr %t335, ptr %l128
  br label %bb53
bb52:
  %t336 = load ptr, ptr %l124, !tbaa !29
  store ptr %t336, ptr %l119, !tbaa !29
  br label %bb54
bb53:
  %t337 = load ptr, ptr %l128, !tbaa !29
  store ptr %t337, ptr %l119, !tbaa !29
  br label %bb54
bb54:
  %t339 = load ptr, ptr %l119, !tbaa !29
  store ptr %t339, ptr %l15, !tbaa !29
  %t340 = load ptr, ptr %l15, !tbaa !29
  %t342 = icmp eq ptr %t340, null
  br i1 %t342, label %bb55, label %bb56
bb55:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load %"compiler/source:Span", ptr %l2
  %t348 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v0, ptr %t344, %"compiler/source:Span" %t345)
  store ptr %t348, ptr %l134
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t349 = load ptr, ptr %l134, !tbaa !29
  store ptr %t349, ptr %l15, !tbaa !29
  br label %bb58
bb58:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t353 = getelementptr %"compiler/check:Checker", ptr %t351, i32 0, i32 44
  %t354 = load %"compiler/source:Span", ptr %l2
  %t355 = load ptr, ptr %l15, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t356
  %t357 = getelementptr { i64, [3 x i64] }, ptr %t356, i32 0, i32 0
  store i64 6, ptr %t357
  %t359 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t354, 0
  %t361 = insertvalue { %"compiler/source:Span", ptr } %t359, ptr %t355, 1
  %t362 = getelementptr { i64, [3 x i64] }, ptr %t356, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t361, ptr %t362
  %t363 = load { i64, [3 x i64] }, ptr %t356
  %t365 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t363, ptr %t365
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t353, ptr %t365)
  br label %bb59
bb59:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t368)
  store ptr %t370, ptr %l143
  br label %bb60
bb60:
  %t371 = load ptr, ptr %l143, !tbaa !29
  store ptr %t371, ptr %l144, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/check:Checker", ptr %t372, i32 0, i32 44
  %t375 = load i64, ptr %l14, !tbaa !24
  %t378 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t374, i64 %t375)
  store { i64, ptr } %t378, ptr %l148
  br label %bb61
bb61:
  %t379 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t380 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t379)
  store %"compiler/typed:Block" %t380, ptr %l149
  br label %bb62
bb62:
  %t381 = load %"compiler/typed:Block", ptr %l149
  %t382 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t381, ptr %t382
  %t384 = load ptr, ptr %l144, !tbaa !29
  %t385 = getelementptr %"compiler/typed:Body", ptr %t384, i32 0, i32 11
  store ptr %t382, ptr %t385, !tbaa !29
  %t386 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t386)
  br label %bb63
bb63:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/check:Checker", ptr %t388, i32 0, i32 23
  %t391 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t390, i64 %t391, i64 2)
  br label %bb64
bb64:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/check:Checker", ptr %t394, i32 0, i32 144
  store i1 false, ptr %t396, !tbaa !21
  %t397 = load ptr, ptr %l5, !tbaa !29
  %t399 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t397)
  store i64 %t399, ptr %l157
  br label %bb65
bb65:
  %t400 = load i64, ptr %l6, !tbaa !24
  %t401 = load i64, ptr %l157, !tbaa !24
  %t403 = icmp sgt i64 %t401, %t400
  br i1 %t403, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l160, !tbaa !21
  br label %bb69
bb67:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 19
  %t409 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t407)
  store i64 %t409, ptr %l163
  br label %bb68
bb68:
  %t410 = load i64, ptr %l7, !tbaa !24
  %t411 = load i64, ptr %l163, !tbaa !24
  %t413 = icmp sgt i64 %t411, %t410
  store i1 %t413, ptr %l160, !tbaa !21
  br label %bb69
bb69:
  %t415 = load i1, ptr %l160, !tbaa !21
  br i1 %t415, label %bb70, label %bb71
bb70:
  %t416 = load ptr, ptr %l5, !tbaa !29
  %t417 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t416, i64 %t417)
  br label %bb72
bb71:
  br label %bb75
bb72:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = getelementptr %"compiler/check:Checker", ptr %t420, i32 0, i32 19
  %t423 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t422, i64 %t423)
  br label %bb73
bb73:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/check:Checker", ptr %t426, i32 0, i32 18
  %t429 = load i64, ptr %l12, !tbaa !24
  %t432 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t428, i64 %t429)
  store ptr %t432, ptr %l174
  br label %bb74
bb74:
  %t433 = load ptr, ptr %l174, !tbaa !29
  %t435 = getelementptr %"compiler/typed:Body", ptr %t433, i32 0, i32 11
  store ptr null, ptr %t435, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb75:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr %"compiler/check:Checker", ptr %t436, i32 0, i32 118
  store ptr %t438, ptr %l177, !tbaa !29
  %t439 = load i32, ptr %l1, !range !{i32 0, i32 3}
  store i32 %t439, ptr %l178
  %t440 = load i64, ptr %l10, !tbaa !24
  store i64 %t440, ptr %l179, !tbaa !24
  %t441 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t441, ptr %l180
  %t442 = load i32, ptr %l3, !tbaa !23
  store i32 %t442, ptr %l181, !tbaa !23
  %t443 = load i64, ptr %l12, !tbaa !24
  store i64 %t443, ptr %l182, !tbaa !24
  %t444 = load ptr, ptr %l5, !tbaa !29
  %t445 = load i64, ptr %l10, !tbaa !24
  %t446 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t447 = load i32, ptr %t446, !tbaa !23
  %t449 = sext i32 %t447 to i64
  %t450 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t451 = load i32, ptr %t450, !tbaa !23
  %t453 = sext i32 %t451 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t454
  %t455 = getelementptr { i64, [3 x i64] }, ptr %t454, i32 0, i32 0
  store i64 3, ptr %t455
  %t457 = insertvalue { i64, i64, i64 } undef, i64 %t445, 0
  %t459 = insertvalue { i64, i64, i64 } %t457, i64 %t449, 1
  %t461 = insertvalue { i64, i64, i64 } %t459, i64 %t453, 2
  %t462 = getelementptr { i64, [3 x i64] }, ptr %t454, i32 0, i32 1
  store { i64, i64, i64 } %t461, ptr %t462
  %t463 = load { i64, [3 x i64] }, ptr %t454
  %t466 = call { i64, [3 x i64] } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUseOf(ptr %v0, ptr %t444, { i64, [3 x i64] } %t463)
  store { i64, [3 x i64] } %t466, ptr %l190
  br label %bb76
bb76:
  %t467 = load i32, ptr %l178, !range !{i32 0, i32 3}
  %t468 = load i64, ptr %l179, !tbaa !24
  %t469 = load %"compiler/source:Span", ptr %l180
  %t470 = load i32, ptr %l181, !tbaa !23
  %t471 = load i64, ptr %l182, !tbaa !24
  %t472 = load { i64, [3 x i64] }, ptr %l190
  %t473 = call %"compiler/check:ValueAsk" @compiler_2fcheck_3aValueAsk_2ector(ptr %s0, i32 %t467, i64 %t468, %"compiler/source:Span" %t469, i32 %t470, i64 %t471, { i64, [3 x i64] } %t472)
  store %"compiler/check:ValueAsk" %t473, ptr %l191
  br label %bb77
bb77:
  %t474 = load ptr, ptr %l177, !tbaa !29
  %t475 = load %"compiler/check:ValueAsk", ptr %l191
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2ePush_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t474, %"compiler/check:ValueAsk" %t475)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatColls(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca i32
  %l23 = alloca i32
  %l25 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i32
  %s3 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v1, ptr %t3, ptr %a1)
  store { i64, ptr } %t8, ptr %l12
  br label %bb2
bb2:
  %t9 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t9, ptr %l3, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = icmp eq i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store ptr %l2, ptr %l17, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l18, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l19, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr ptr, ptr %t21, i64 0
  %t23 = load ptr, ptr %t22, !tbaa !39
  %t26 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t23)
  store i32 %t26, ptr %l22
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = load i32, ptr %l22, !tbaa !23
  %t29 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t29, ptr %l23
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = load i32, ptr %l23, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t30, i32 %t31)
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t33, ptr %l25, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr ptr, ptr %t35, i64 0
  %t37 = load ptr, ptr %t36, !tbaa !39
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v1, ptr %v1, ptr %t32, ptr %t37)
  store ptr %t40, ptr %l27
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l27, !tbaa !29
  store ptr %t41, ptr %l4, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatColls(ptr %v0, ptr %v1, ptr %s3, ptr %t48, ptr %t49)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l33
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t54 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %t54
  store ptr %t54, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t56 = load i64, ptr %l6, !tbaa !24
  store i64 %t56, ptr %l35, !tbaa !24
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %t57)
  store i64 %t59, ptr %l37
  br label %bb14
bb14:
  %t60 = load i64, ptr %l35, !tbaa !24
  %t61 = load i64, ptr %l37, !tbaa !24
  %t62 = icmp slt i64 %t60, %t61
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb15, label %bb16
bb15:
  br label %bb21
bb16:
  br label %bb17
bb17:
  %t66 = load ptr, ptr %l5, !tbaa !29
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %t66, i64 %t67)
  store i32 %t70, ptr %l42
  br label %bb18
bb18:
  %t71 = load i32, ptr %l42, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %l2, i32 %t71)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb13
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aCycle(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca { i64, [3 x i64] }
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/text:StringBuilder"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i1
  %l65 = alloca i64
  %l69 = alloca i64
  %l72 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca ptr
  %l95 = alloca i64
  %l96 = alloca i64
  %l100 = alloca ptr
  %l101 = alloca ptr
  %l104 = alloca i64
  %l105 = alloca i64
  %l106 = alloca ptr
  %l116 = alloca i64
  %l118 = alloca i64
  %l121 = alloca ptr
  %l122 = alloca ptr
  %l125 = alloca i64
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l132 = alloca { i64, [3 x i64] }
  %l135 = alloca %"compiler/diagmsg:Msg"
  %l136 = alloca i64
  %l137 = alloca %"std/prelude/text:StringBuilder"
  %l140 = alloca i64
  %l144 = alloca i64
  %l147 = alloca i64
  %l165 = alloca ptr
  %l166 = alloca ptr
  %l167 = alloca ptr
  %l170 = alloca i64
  %l171 = alloca i64
  %l172 = alloca { i64, ptr }
  %l177 = alloca ptr
  %l178 = alloca ptr
  %l179 = alloca ptr
  %l182 = alloca i64
  %l183 = alloca i64
  %l184 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l190 = alloca { i64, [3 x i64] }
  %l192 = alloca { i64, ptr }
  %l194 = alloca %"compiler/diagmsg:Msg"
  %l195 = alloca i64
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t177 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l3, !tbaa !24
  store i64 %t1, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t3)
  store i64 %t5, ptr %l28
  br label %bb1
bb1:
  %t6 = load i64, ptr %l28, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l35, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l35, !tbaa !24
  store i64 %t33, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l32, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 34
  store ptr %t55, ptr %l54, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l55, !tbaa !29
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t57, i64 %t51)
  store i64 %t61, ptr %l58
  br label %bb12
bb12:
  %t62 = load ptr, ptr %l55, !tbaa !29
  %t63 = load i64, ptr %l58, !tbaa !24
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t62, i64 %t63)
  store i64 %t64, ptr %l59
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l54, !tbaa !29
  %t66 = load i64, ptr %l59, !tbaa !24
  %t67 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t65, i64 %t66)
  store i1 %t67, ptr %l60
  br label %bb14
bb14:
  %t68 = load i1, ptr %l60, !tbaa !21
  br i1 %t68, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l8, !tbaa !24
  br label %bb8
bb19:
  %t73 = load i64, ptr %l3, !tbaa !24
  store i64 %t73, ptr %l10, !tbaa !24
  %t75 = load ptr, ptr %l2, !tbaa !29
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t75)
  store i64 %t77, ptr %l65
  br label %bb20
bb20:
  %t78 = load i64, ptr %l65, !tbaa !24
  store i64 %t78, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t79 = load i64, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t83 = icmp sgt i64 %t79, %t80
  br i1 %t83, label %bb21, label %bb22
bb21:
  %t85 = load i64, ptr %l12, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb26
bb23:
  %t89 = load i64, ptr %l11, !tbaa !24
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t94 = load i64, ptr %l12, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t99 = sub i64 %t97, 1
  %t100 = load i64, ptr %l12, !tbaa !24
  %t103 = sdiv i64 %t99, %t100
  store i64 %t103, ptr %l72, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb25
bb25:
  %t105 = load i64, ptr %l72, !tbaa !24
  store i64 %t105, ptr %l69, !tbaa !24
  br label %bb26
bb26:
  %t106 = load i64, ptr %l69, !tbaa !24
  store i64 %t106, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb27
bb27:
  %t107 = load i64, ptr %l14, !tbaa !24
  %t108 = load i64, ptr %l13, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb28, label %bb29
bb28:
  br label %bb35
bb29:
  br label %bb30
bb30:
  %t115 = load i64, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l14, !tbaa !24
  %t117 = load i64, ptr %l12, !tbaa !24
  %t120 = mul i64 %t116, %t117
  %t123 = add i64 %t115, %t120
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 34
  store ptr %t127, ptr %l91, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l92, !tbaa !29
  %t129 = load ptr, ptr %l2, !tbaa !29
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t129, i64 %t123)
  store i64 %t133, ptr %l95
  br label %bb31
bb31:
  %t134 = load ptr, ptr %l92, !tbaa !29
  %t135 = load i64, ptr %l95, !tbaa !24
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t134, i64 %t135)
  store i64 %t136, ptr %l96
  br label %bb32
bb32:
  %t137 = load ptr, ptr %l91, !tbaa !29
  %t138 = load i64, ptr %l96, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t137, i64 %t138, i1 true)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t139 = load i64, ptr %l14, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l14, !tbaa !24
  br label %bb27
bb35:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 18
  store ptr %t145, ptr %l100, !tbaa !29
  %t146 = load ptr, ptr %l1, !tbaa !29
  store ptr %t146, ptr %l101, !tbaa !29
  %t147 = load ptr, ptr %l2, !tbaa !29
  %t148 = load i64, ptr %l3, !tbaa !24
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t147, i64 %t148)
  store i64 %t151, ptr %l104
  br label %bb36
bb36:
  %t152 = load ptr, ptr %l101, !tbaa !29
  %t153 = load i64, ptr %l104, !tbaa !24
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t152, i64 %t153)
  store i64 %t154, ptr %l105
  br label %bb37
bb37:
  %t155 = load ptr, ptr %l100, !tbaa !29
  %t156 = load i64, ptr %l105, !tbaa !24
  %t157 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t155, i64 %t156)
  store ptr %t157, ptr %l106
  br label %bb38
bb38:
  %t158 = load ptr, ptr %l106, !tbaa !29
  store ptr %t158, ptr %l16, !tbaa !29
  %t159 = load ptr, ptr %l16, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Body", ptr %t159, i32 0, i32 3
  %t162 = load i64, ptr %t161, !tbaa !24
  %t163 = load ptr, ptr %l16, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Body", ptr %t163, i32 0, i32 4
  %t166 = getelementptr %"compiler/source:Span", ptr %t165, i32 0, i32 0
  %t167 = load i32, ptr %t166, !tbaa !23
  %t169 = sext i32 %t167 to i64
  %t170 = load ptr, ptr %l16, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Body", ptr %t170, i32 0, i32 4
  %t173 = getelementptr %"compiler/source:Span", ptr %t172, i32 0, i32 1
  %t174 = load i32, ptr %t173, !tbaa !23
  %t176 = sext i32 %t174 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [3 x i64] }, ptr %t177, i32 0, i32 0
  store i64 3, ptr %t178
  %t180 = insertvalue { i64, i64, i64 } undef, i64 %t162, 0
  %t182 = insertvalue { i64, i64, i64 } %t180, i64 %t169, 1
  %t184 = insertvalue { i64, i64, i64 } %t182, i64 %t176, 2
  %t185 = getelementptr { i64, [3 x i64] }, ptr %t177, i32 0, i32 1
  store { i64, i64, i64 } %t184, ptr %t185
  %t186 = load { i64, [3 x i64] }, ptr %t177
  store { i64, [3 x i64] } %t186, ptr %l17
  %t188 = load i64, ptr %l3, !tbaa !24
  store i64 %t188, ptr %l116, !tbaa !24
  %t189 = load ptr, ptr %l2, !tbaa !29
  %t191 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t189)
  store i64 %t191, ptr %l118
  br label %bb39
bb39:
  %t192 = load i64, ptr %l118, !tbaa !24
  %t193 = sub i64 %t192, 1
  %t194 = load i64, ptr %l116, !tbaa !24
  %t196 = icmp eq i64 %t194, %t193
  br i1 %t196, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s8
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l121, !tbaa !29
  %t199 = load ptr, ptr %l1, !tbaa !29
  store ptr %t199, ptr %l122, !tbaa !29
  %t200 = load ptr, ptr %l2, !tbaa !29
  %t201 = load i64, ptr %l3, !tbaa !24
  %t204 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t200, i64 %t201)
  store i64 %t204, ptr %l125
  br label %bb42
bb41:
  br label %bb47
bb42:
  %t205 = load ptr, ptr %l122, !tbaa !29
  %t206 = load i64, ptr %l125, !tbaa !24
  %t207 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t205, i64 %t206)
  store i64 %t207, ptr %l126
  br label %bb43
bb43:
  %t208 = load ptr, ptr %l121, !tbaa !29
  %t209 = load i64, ptr %l126, !tbaa !24
  %t210 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aName(ptr %v0, ptr %s8, ptr %t208, i64 %t209)
  store { i64, ptr } %t210, ptr %l127
  br label %bb44
bb44:
  %t211 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t211, ptr %l18, !tbaa !27
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 0
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/load:Loader", ptr %t218, i32 0, i32 4
  %t221 = load ptr, ptr %t220, !tbaa !29
  store ptr %t221, ptr %l131, !tbaa !29
  %t222 = load { i64, [3 x i64] }, ptr %l17
  store { i64, [3 x i64] } %t222, ptr %l132
  %t223 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t227 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalReadsItself(ptr %s8, ptr %s8, ptr %v0, { i64, ptr } %t223, { i64, ptr } %t224)
  store %"compiler/diagmsg:Msg" %t227, ptr %l135
  br label %bb45
bb45:
  %t228 = load ptr, ptr %l131, !tbaa !29
  %t229 = load { i64, [3 x i64] }, ptr %l132
  %t230 = load %"compiler/diagmsg:Msg", ptr %l135
  %t231 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t228, { i64, [3 x i64] } %t229, %"compiler/diagmsg:Msg" %t230)
  store i64 %t231, ptr %l136
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb47:
  %t232 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t232, ptr %l137
  br label %bb48
bb48:
  %t233 = load %"std/prelude/text:StringBuilder", ptr %l137
  store %"std/prelude/text:StringBuilder" %t233, ptr %l19
  %t234 = load i64, ptr %l3, !tbaa !24
  store i64 %t234, ptr %l20, !tbaa !24
  %t236 = load ptr, ptr %l2, !tbaa !29
  %t238 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t236)
  store i64 %t238, ptr %l140
  br label %bb49
bb49:
  %t239 = load i64, ptr %l140, !tbaa !24
  store i64 %t239, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t240 = load i64, ptr %l21, !tbaa !24
  %t241 = load i64, ptr %l20, !tbaa !24
  %t244 = icmp sgt i64 %t240, %t241
  br i1 %t244, label %bb50, label %bb51
bb50:
  %t246 = load i64, ptr %l22, !tbaa !24
  %t248 = icmp sgt i64 %t246, 0
  br i1 %t248, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l144, !tbaa !24
  br label %bb55
bb52:
  %t250 = load i64, ptr %l21, !tbaa !24
  %t251 = load i64, ptr %l20, !tbaa !24
  %t254 = sub i64 %t250, %t251
  %t255 = load i64, ptr %l22, !tbaa !24
  %t258 = add i64 %t254, %t255
  %t260 = sub i64 %t258, 1
  %t261 = load i64, ptr %l22, !tbaa !24
  %t264 = sdiv i64 %t260, %t261
  store i64 %t264, ptr %l147, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb54
bb54:
  %t266 = load i64, ptr %l147, !tbaa !24
  store i64 %t266, ptr %l144, !tbaa !24
  br label %bb55
bb55:
  %t267 = load i64, ptr %l144, !tbaa !24
  store i64 %t267, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb56
bb56:
  store %olang.scope zeroinitializer, ptr %s10
  %t268 = load i64, ptr %l24, !tbaa !24
  %t269 = load i64, ptr %l23, !tbaa !24
  %t272 = icmp slt i64 %t268, %t269
  %t274 = xor i1 %t272, true
  br i1 %t274, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s10)
  br label %bb65
bb58:
  br label %bb59
bb59:
  %t276 = load i64, ptr %l20, !tbaa !24
  %t277 = load i64, ptr %l24, !tbaa !24
  %t278 = load i64, ptr %l22, !tbaa !24
  %t281 = mul i64 %t277, %t278
  %t284 = add i64 %t276, %t281
  store ptr %l19, ptr %l165, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  store ptr %t286, ptr %l166, !tbaa !29
  %t287 = load ptr, ptr %l1, !tbaa !29
  store ptr %t287, ptr %l167, !tbaa !29
  %t288 = load ptr, ptr %l2, !tbaa !29
  %t292 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t288, i64 %t284)
  store i64 %t292, ptr %l170
  br label %bb60
bb60:
  %t293 = load ptr, ptr %l167, !tbaa !29
  %t294 = load i64, ptr %l170, !tbaa !24
  %t295 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t293, i64 %t294)
  store i64 %t295, ptr %l171
  br label %bb61
bb61:
  %t296 = load ptr, ptr %l166, !tbaa !29
  %t297 = load i64, ptr %l171, !tbaa !24
  %t298 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aName(ptr %v0, ptr %s10, ptr %t296, i64 %t297)
  store { i64, ptr } %t298, ptr %l172
  br label %bb62
bb62:
  %t299 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t299, 1
  %t301 = extractvalue { i64, ptr } %t299, 0
  %t302 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t303 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t304 = add i64 %t301, %t303
  %t305 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t304)
  call void @olang_textcopy(ptr %t305, ptr %t300, i64 %t301)
  %t306 = getelementptr i8, ptr %t305, i64 %t301
  call void @olang_textcopy(ptr %t306, ptr %t302, i64 %t303)
  %t307 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t305, 1
  %t310 = extractvalue { i64, ptr } %t308, 0
  %t311 = extractvalue { i64, ptr } %t308, 1
  %t312 = mul i64 %t310, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t312)
  call void @llvm.memcpy.p0.p0.i64(ptr %t313, ptr %t311, i64 %t312, i1 false)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  %t316 = load ptr, ptr %l165, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t316, { i64, ptr } %t315)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s10)
  br label %bb64
bb64:
  %t318 = load i64, ptr %l24, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l24, !tbaa !24
  br label %bb56
bb65:
  store ptr %l19, ptr %l177, !tbaa !29
  %t322 = load ptr, ptr %l0, !tbaa !29
  store ptr %t322, ptr %l178, !tbaa !29
  %t323 = load ptr, ptr %l1, !tbaa !29
  store ptr %t323, ptr %l179, !tbaa !29
  %t324 = load ptr, ptr %l2, !tbaa !29
  %t325 = load i64, ptr %l3, !tbaa !24
  %t328 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t324, i64 %t325)
  store i64 %t328, ptr %l182
  br label %bb66
bb66:
  %t329 = load ptr, ptr %l179, !tbaa !29
  %t330 = load i64, ptr %l182, !tbaa !24
  %t331 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t329, i64 %t330)
  store i64 %t331, ptr %l183
  br label %bb67
bb67:
  %t332 = load ptr, ptr %l178, !tbaa !29
  %t333 = load i64, ptr %l183, !tbaa !24
  %t334 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aName(ptr %v0, ptr %s0, ptr %t332, i64 %t333)
  store { i64, ptr } %t334, ptr %l184
  br label %bb68
bb68:
  %t335 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 0
  %t337 = extractvalue { i64, ptr } %t335, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  %t342 = load ptr, ptr %l177, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t342, { i64, ptr } %t341)
  br label %bb69
bb69:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/check:Checker", ptr %t344, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !29
  %t349 = getelementptr %"compiler/generic:Program", ptr %t347, i32 0, i32 0
  %t350 = load ptr, ptr %t349, !tbaa !29
  %t352 = getelementptr %"compiler/load:Loader", ptr %t350, i32 0, i32 4
  %t353 = load ptr, ptr %t352, !tbaa !29
  store ptr %t353, ptr %l189, !tbaa !29
  %t354 = load { i64, [3 x i64] }, ptr %l17
  store { i64, [3 x i64] } %t354, ptr %l190
  %t356 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l19)
  store { i64, ptr } %t356, ptr %l192
  br label %bb70
bb70:
  %t357 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t357, 0
  %t359 = extractvalue { i64, ptr } %t357, 1
  %t360 = mul i64 %t358, 1
  %t361 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t360)
  call void @llvm.memcpy.p0.p0.i64(ptr %t361, ptr %t359, i64 %t360, i1 false)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t365 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalsCycle(ptr %s0, ptr %v0, { i64, ptr } %t363)
  store %"compiler/diagmsg:Msg" %t365, ptr %l194
  br label %bb71
bb71:
  %t366 = load ptr, ptr %l189, !tbaa !29
  %t367 = load { i64, [3 x i64] }, ptr %l190
  %t368 = load %"compiler/diagmsg:Msg", ptr %l194
  %t369 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t366, { i64, [3 x i64] } %t367, %"compiler/diagmsg:Msg" %t368)
  store i64 %t369, ptr %l195
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca %"compiler/generic:Unmet"
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l30 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i64
  %l57 = alloca { i64, ptr }
  %l62 = alloca i1
  %l64 = alloca i1
  %l69 = alloca i1
  %l71 = alloca i1
  %l72 = alloca i64
  %l76 = alloca i64
  %l82 = alloca %"compiler/generic:varRow"
  %l88 = alloca i32
  %l92 = alloca i1
  %l95 = alloca i32
  %l99 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l108 = alloca ptr
  %l113 = alloca i32
  %l114 = alloca i32
  %l115 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l121 = alloca %"compiler/generic:varRow"
  %l123 = alloca { i64, ptr }
  %l124 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca { i64, ptr }
  %l132 = alloca %"compiler/diagmsg:Msg"
  %l133 = alloca i64
  %l141 = alloca %"compiler/generic:Unmet"
  %l149 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l156 = alloca ptr
  %l161 = alloca i32
  %l162 = alloca i32
  %l163 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l169 = alloca %"compiler/generic:varRow"
  %l171 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l174 = alloca %"compiler/source:Span"
  %l177 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l185 = alloca %"compiler/diagmsg:Msg"
  %l186 = alloca i64
  %l191 = alloca i1
  %l196 = alloca %"std/prelude/text:StringBuilder"
  %l197 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l201 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l207 = alloca { i64, ptr }
  %l209 = alloca %"compiler/diagmsg:Msg"
  %l210 = alloca i64
  %l214 = alloca ptr
  %l215 = alloca %"compiler/source:Span"
  %l218 = alloca { i64, ptr }
  %l222 = alloca %"compiler/diagmsg:Msg"
  %l223 = alloca i64
  %l227 = alloca { i64, ptr }
  %l232 = alloca %"compiler/generic:varRow"
  %l239 = alloca i32
  %l242 = alloca i1
  %l247 = alloca i32
  %l252 = alloca i32
  %l258 = alloca ptr
  %l261 = alloca ptr
  %l266 = alloca i32
  %l267 = alloca i32
  %l268 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l272 = alloca i1
  %l273 = alloca i64
  %l276 = alloca i64
  %l277 = alloca i32
  %l278 = alloca ptr
  %l279 = alloca %"compiler/source:Span"
  %l282 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l284 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l288 = alloca i64
  %l291 = alloca i64
  %l292 = alloca i64
  %l297 = alloca { i64, ptr }
  %l300 = alloca %"compiler/diagmsg:Msg"
  %l301 = alloca i64
  %l303 = alloca ptr
  %l304 = alloca %"compiler/source:Span"
  %l306 = alloca i1
  %l307 = alloca %"compiler/diagmsg:Msg"
  %l310 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l315 = alloca %"compiler/diagmsg:Msg"
  %l318 = alloca { i64, ptr }
  %l320 = alloca { i64, ptr }
  %l322 = alloca { i64, ptr }
  %l325 = alloca %"compiler/diagmsg:Msg"
  %l326 = alloca i64
  %l328 = alloca { i64, ptr }
  %l331 = alloca i1
  %l333 = alloca i64
  %l335 = alloca ptr
  %l336 = alloca i32
  %l342 = alloca i32
  %l343 = alloca i64
  %l346 = alloca ptr
  %l347 = alloca i64
  %l348 = alloca i64
  %l351 = alloca %"compiler/diagmsg:Msg"
  %l356 = alloca i64
  %l359 = alloca ptr
  %l360 = alloca i64
  %l361 = alloca i64
  %l363 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca i1
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %t7)
  store { i64, ptr } %t10, ptr %l30
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l39, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l39, !tbaa !24
  store i64 %t42, ptr %l36, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l36, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l10, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t62, ptr %l57, !tbaa !27
  %t63 = load i64, ptr %l10, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i32, ptr %t66, i64 %t63
  %t68 = load i32, ptr %t67, !tbaa !33
  store i32 %t68, ptr %l11, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l11, !tbaa !23
  %t74 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l62
  br label %bb12
bb12:
  %t75 = load i1, ptr %l62, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb16
bb14:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l11, !tbaa !23
  %t87 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t83, i32 %t84)
  store i1 %t87, ptr %l69
  br label %bb15
bb15:
  %t88 = load i1, ptr %l69, !tbaa !21
  %t89 = xor i1 %t88, true
  store i1 %t89, ptr %l64, !tbaa !21
  br label %bb16
bb16:
  %t91 = load i1, ptr %l64, !tbaa !21
  br i1 %t91, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb20
bb18:
  %t92 = load i64, ptr %l10, !tbaa !24
  store i64 %t92, ptr %l72, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i64, ptr %l1, !tbaa !24
  %t100 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t96, i64 %t97)
  store i64 %t100, ptr %l76
  br label %bb19
bb19:
  %t101 = load i64, ptr %l72, !tbaa !24
  %t102 = load i64, ptr %l76, !tbaa !24
  %t103 = icmp sge i64 %t101, %t102
  store i1 %t103, ptr %l71, !tbaa !21
  br label %bb20
bb20:
  %t105 = load i1, ptr %l71, !tbaa !21
  br i1 %t105, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb22:
  br label %bb23
bb23:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l1, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t115 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t109, i64 %t110, i64 %t111)
  store %"compiler/generic:varRow" %t115, ptr %l82
  br label %bb24
bb24:
  %t116 = getelementptr %"compiler/generic:varRow", ptr %l82, i32 0, i32 3
  %t117 = load i32, ptr %t116, !tbaa !23
  store i32 %t117, ptr %l12, !tbaa !23
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l12, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l88
  br label %bb25
bb25:
  %t129 = load i32, ptr %l88, !range !{i32 0, i32 33}
  %t131 = trunc i64 18 to i32
  %t132 = icmp eq i32 %t129, %t131
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb29
bb27:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i32, ptr %l12, !tbaa !23
  %t140 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l95
  br label %bb28
bb28:
  %t141 = load i32, ptr %l95, !range !{i32 0, i32 6}
  %t143 = trunc i64 3 to i32
  %t144 = icmp eq i32 %t141, %t143
  %t146 = xor i1 %t144, true
  store i1 %t146, ptr %l92, !tbaa !21
  br label %bb29
bb29:
  %t148 = load i1, ptr %l92, !tbaa !21
  br i1 %t148, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb31:
  br label %bb32
bb32:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l99, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t150, ptr %l100
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i32, ptr %l11, !tbaa !23
  %t155 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t151, i32 %t152)
  store { i64, ptr } %t155, ptr %l103
  br label %bb33
bb33:
  %t156 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  store { i64, ptr } %t162, ptr %l104, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l105, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  store ptr %t169, ptr %l108, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/check:Checker", ptr %t170, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = getelementptr %"compiler/generic:Program", ptr %t173, i32 0, i32 2
  %t176 = load i32, ptr %l12, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t175, i32 %t176)
  store i32 %t179, ptr %l113
  br label %bb34
bb34:
  %t180 = load ptr, ptr %l108, !tbaa !29
  %t181 = load i32, ptr %l113, !tbaa !23
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t180, i32 %t181)
  store i32 %t182, ptr %l114
  br label %bb35
bb35:
  %t183 = load ptr, ptr %l105, !tbaa !29
  %t184 = load i32, ptr %l114, !tbaa !23
  %t185 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t183, i32 %t184)
  store { i64, ptr } %t185, ptr %l115
  br label %bb36
bb36:
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l116, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t191 = load i64, ptr %l1, !tbaa !24
  %t192 = load i64, ptr %l10, !tbaa !24
  %t196 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t190, i64 %t191, i64 %t192)
  store %"compiler/generic:varRow" %t196, ptr %l121
  br label %bb37
bb37:
  %t197 = getelementptr %"compiler/generic:varRow", ptr %l121, i32 0, i32 1
  %t198 = load i32, ptr %t197, !tbaa !23
  %t199 = load ptr, ptr %l116, !tbaa !29
  %t201 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t199, i32 %t198)
  store { i64, ptr } %t201, ptr %l123
  br label %bb38
bb38:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l124, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = load i32, ptr %l11, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l129
  br label %bb39
bb39:
  %t213 = load ptr, ptr %l124, !tbaa !29
  %t214 = load i32, ptr %l129, !tbaa !23
  %t215 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t213, i32 %t214)
  store { i64, ptr } %t215, ptr %l130
  br label %bb40
bb40:
  %t216 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 0
  %t218 = extractvalue { i64, ptr } %t216, 1
  %t219 = mul i64 %t217, 1
  %t220 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t219)
  call void @llvm.memcpy.p0.p0.i64(ptr %t220, ptr %t218, i64 %t219, i1 false)
  %t221 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  %t223 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t227 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullableMeetsNoTrait(ptr %s2, ptr %v0, ptr %v0, ptr %s2, ptr %v0, { i64, ptr } %t223, { i64, ptr } %t224, { i64, ptr } %t225, { i64, ptr } %t222)
  store %"compiler/diagmsg:Msg" %t227, ptr %l132
  br label %bb41
bb41:
  %t228 = load ptr, ptr %l99, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l100
  %t230 = load %"compiler/diagmsg:Msg", ptr %l132
  %t231 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t228, %"compiler/source:Span" %t229, %"compiler/diagmsg:Msg" %t230)
  store i64 %t231, ptr %l133
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb43:
  %t233 = load i64, ptr %l9, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l9, !tbaa !24
  br label %bb8
bb44:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/check:Checker", ptr %t237, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t241 = load i64, ptr %l1, !tbaa !24
  %t242 = load i32, ptr %l2, !tbaa !23
  %t246 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %t240, i64 %t241, i32 %t242)
  store %"compiler/generic:Unmet" %t246, ptr %l141
  br label %bb45
bb45:
  %t247 = load %"compiler/generic:Unmet", ptr %l141
  store %"compiler/generic:Unmet" %t247, ptr %l13
  %t248 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t249 = load i64, ptr %t248, !tbaa !24
  %t251 = icmp slt i64 %t249, 0
  br i1 %t251, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/check:Checker", ptr %t254, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 2
  %t260 = load i32, ptr %l2, !tbaa !23
  %t263 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t259, i32 %t260)
  store { i64, ptr } %t263, ptr %l149
  br label %bb49
bb49:
  %t264 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t264, ptr %l150, !tbaa !27
  %t265 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t266 = load i64, ptr %t265, !tbaa !24
  %t268 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr i32, ptr %t269, i64 %t266
  %t271 = load i32, ptr %t270, !tbaa !33
  store i32 %t271, ptr %l14, !tbaa !23
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l153, !tbaa !29
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/check:Checker", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 2
  store ptr %t279, ptr %l156, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/check:Checker", ptr %t280, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = getelementptr %"compiler/generic:Program", ptr %t283, i32 0, i32 2
  %t286 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t287 = load i32, ptr %t286, !tbaa !23
  %t290 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t285, i32 %t287)
  store i32 %t290, ptr %l161
  br label %bb50
bb50:
  %t291 = load ptr, ptr %l156, !tbaa !29
  %t292 = load i32, ptr %l161, !tbaa !23
  %t293 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t291, i32 %t292)
  store i32 %t293, ptr %l162
  br label %bb51
bb51:
  %t294 = load ptr, ptr %l153, !tbaa !29
  %t295 = load i32, ptr %l162, !tbaa !23
  %t296 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t294, i32 %t295)
  store { i64, ptr } %t296, ptr %l163
  br label %bb52
bb52:
  %t297 = load { i64, ptr }, ptr %l163, !tbaa !27
  store { i64, ptr } %t297, ptr %l15, !tbaa !27
  %t298 = load ptr, ptr %l0, !tbaa !29
  store ptr %t298, ptr %l164, !tbaa !29
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !29
  %t303 = load i64, ptr %l1, !tbaa !24
  %t304 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t305 = load i64, ptr %t304, !tbaa !24
  %t309 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t302, i64 %t303, i64 %t305)
  store %"compiler/generic:varRow" %t309, ptr %l169
  br label %bb53
bb53:
  %t310 = getelementptr %"compiler/generic:varRow", ptr %l169, i32 0, i32 1
  %t311 = load i32, ptr %t310, !tbaa !23
  %t312 = load ptr, ptr %l164, !tbaa !29
  %t314 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t312, i32 %t311)
  store { i64, ptr } %t314, ptr %l171
  br label %bb54
bb54:
  %t315 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t315, ptr %l16, !tbaa !27
  %t316 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 4
  %t317 = load i1, ptr %t316, !tbaa !21
  br i1 %t317, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s7
  %t319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t319, ptr %l173, !tbaa !29
  %t320 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t320, ptr %l174
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load i32, ptr %l14, !tbaa !23
  %t325 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t321, i32 %t322)
  store { i64, ptr } %t325, ptr %l177
  br label %bb57
bb56:
  br label %bb61
bb57:
  %t326 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 0
  %t328 = extractvalue { i64, ptr } %t326, 1
  %t329 = mul i64 %t327, 1
  %t330 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t329)
  call void @llvm.memcpy.p0.p0.i64(ptr %t330, ptr %t328, i64 %t329, i1 false)
  %t331 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  store { i64, ptr } %t332, ptr %l178, !tbaa !27
  %t333 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t333, ptr %l179, !tbaa !27
  %t334 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t334, ptr %l180, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t335, ptr %l181, !tbaa !27
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 2
  %t338 = load i32, ptr %t337, !tbaa !23
  %t341 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t336, i32 %t338)
  store { i64, ptr } %t341, ptr %l184
  br label %bb58
bb58:
  %t342 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t343 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t344 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t346 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t347 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintSealed(ptr %s7, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t342, { i64, ptr } %t343, { i64, ptr } %t344, { i64, ptr } %t345, { i64, ptr } %t346)
  store %"compiler/diagmsg:Msg" %t347, ptr %l185
  br label %bb59
bb59:
  %t348 = load ptr, ptr %l173, !tbaa !29
  %t349 = load %"compiler/source:Span", ptr %l174
  %t350 = load %"compiler/diagmsg:Msg", ptr %l185
  %t351 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t348, %"compiler/source:Span" %t349, %"compiler/diagmsg:Msg" %t350)
  store i64 %t351, ptr %l186
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb61:
  %t353 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 5
  %t354 = load i1, ptr %t353, !tbaa !21
  br i1 %t354, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s8
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t358 = load i32, ptr %t357, !tbaa !23
  %t361 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembersWritten(ptr %v0, ptr %t356, i32 %t358)
  store i1 %t361, ptr %l191
  br label %bb64
bb63:
  br label %bb73
bb64:
  %t362 = load i1, ptr %l191, !tbaa !21
  %t363 = xor i1 %t362, true
  br i1 %t363, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t368 = load i32, ptr %t367, !tbaa !23
  %t371 = call %"std/prelude/text:StringBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberListing(ptr %v0, ptr %s8, ptr %t366, i32 %t368)
  store %"std/prelude/text:StringBuilder" %t371, ptr %l196
  br label %bb68
bb68:
  %t372 = load %"std/prelude/text:StringBuilder", ptr %l196
  store %"std/prelude/text:StringBuilder" %t372, ptr %l17
  %t373 = load ptr, ptr %l0, !tbaa !29
  store ptr %t373, ptr %l197, !tbaa !29
  %t374 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t374, ptr %l198
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load i32, ptr %l14, !tbaa !23
  %t379 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t375, i32 %t376)
  store { i64, ptr } %t379, ptr %l201
  br label %bb69
bb69:
  %t380 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t380, 0
  %t382 = extractvalue { i64, ptr } %t380, 1
  %t383 = mul i64 %t381, 1
  %t384 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t383)
  call void @llvm.memcpy.p0.p0.i64(ptr %t384, ptr %t382, i64 %t383, i1 false)
  %t385 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t384, 1
  store { i64, ptr } %t386, ptr %l202, !tbaa !27
  %t387 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t387, ptr %l203, !tbaa !27
  %t388 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t388, ptr %l204, !tbaa !27
  %t389 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t389, ptr %l205, !tbaa !27
  %t391 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s8, ptr %s8, ptr %l17)
  store { i64, ptr } %t391, ptr %l207
  br label %bb70
bb70:
  %t392 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 0
  %t394 = extractvalue { i64, ptr } %t392, 1
  %t395 = mul i64 %t393, 1
  %t396 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t395)
  call void @llvm.memcpy.p0.p0.i64(ptr %t396, ptr %t394, i64 %t395, i1 false)
  %t397 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  %t399 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t400 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t401 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t402 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t404 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintClosed(ptr %s8, ptr %v0, ptr %v0, ptr %v0, ptr %s8, ptr %v0, { i64, ptr } %t399, { i64, ptr } %t400, { i64, ptr } %t401, { i64, ptr } %t402, { i64, ptr } %t398)
  store %"compiler/diagmsg:Msg" %t404, ptr %l209
  br label %bb71
bb71:
  %t405 = load ptr, ptr %l197, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l198
  %t407 = load %"compiler/diagmsg:Msg", ptr %l209
  %t408 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t405, %"compiler/source:Span" %t406, %"compiler/diagmsg:Msg" %t407)
  store i64 %t408, ptr %l210
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb73:
  %t410 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 3
  %t411 = load i1, ptr %t410, !tbaa !21
  %t413 = xor i1 %t411, true
  br i1 %t413, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s10
  %t415 = load ptr, ptr %l0, !tbaa !29
  store ptr %t415, ptr %l214, !tbaa !29
  %t416 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t416, ptr %l215
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load i32, ptr %l14, !tbaa !23
  %t421 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t417, i32 %t418)
  store { i64, ptr } %t421, ptr %l218
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t422 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 0
  %t424 = extractvalue { i64, ptr } %t422, 1
  %t425 = mul i64 %t423, 1
  %t426 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t425)
  call void @llvm.memcpy.p0.p0.i64(ptr %t426, ptr %t424, i64 %t425, i1 false)
  %t427 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t426, 1
  %t429 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t434 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmet(ptr %s10, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t428, { i64, ptr } %t429, { i64, ptr } %t430)
  store %"compiler/diagmsg:Msg" %t434, ptr %l222
  br label %bb77
bb77:
  %t435 = load ptr, ptr %l214, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l215
  %t437 = load %"compiler/diagmsg:Msg", ptr %l222
  %t438 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t435, %"compiler/source:Span" %t436, %"compiler/diagmsg:Msg" %t437)
  store i64 %t438, ptr %l223
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb79:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 2
  %t442 = load i32, ptr %t441, !tbaa !23
  %t445 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t440, i32 %t442)
  store { i64, ptr } %t445, ptr %l227
  br label %bb80
bb80:
  %t446 = load { i64, ptr }, ptr %l227, !tbaa !27
  store { i64, ptr } %t446, ptr %l18, !tbaa !27
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !29
  %t451 = load i64, ptr %l1, !tbaa !24
  %t452 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t453 = load i64, ptr %t452, !tbaa !24
  %t457 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t450, i64 %t451, i64 %t453)
  store %"compiler/generic:varRow" %t457, ptr %l232
  br label %bb81
bb81:
  %t458 = getelementptr %"compiler/generic:varRow", ptr %l232, i32 0, i32 3
  %t459 = load i32, ptr %t458, !tbaa !23
  store i32 %t459, ptr %l19, !tbaa !23
  %t461 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t461, ptr %l20, !tbaa !27
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/check:Checker", ptr %t463, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !29
  %t468 = getelementptr %"compiler/generic:Program", ptr %t466, i32 0, i32 2
  %t469 = load i32, ptr %l19, !tbaa !23
  %t472 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t468, i32 %t469)
  store i32 %t472, ptr %l239
  br label %bb82
bb82:
  %t473 = load i32, ptr %l239, !range !{i32 0, i32 33}
  %t475 = trunc i64 18 to i32
  %t476 = icmp eq i32 %t473, %t475
  br i1 %t476, label %bb83, label %bb84
bb83:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr %"compiler/check:Checker", ptr %t478, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !29
  %t483 = getelementptr %"compiler/generic:Program", ptr %t481, i32 0, i32 2
  %t484 = load i32, ptr %l19, !tbaa !23
  %t487 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t483, i32 %t484)
  store i32 %t487, ptr %l247
  br label %bb85
bb84:
  store i1 false, ptr %l242, !tbaa !21
  br label %bb87
bb85:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/check:Checker", ptr %t488, i32 0, i32 1
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = getelementptr %"compiler/generic:Program", ptr %t491, i32 0, i32 2
  %t494 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t495 = load i32, ptr %t494, !tbaa !23
  %t498 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t493, i32 %t495)
  store i32 %t498, ptr %l252
  br label %bb86
bb86:
  %t499 = load i32, ptr %l247, !tbaa !23
  %t500 = load i32, ptr %l252, !tbaa !23
  %t501 = icmp ne i32 %t499, %t500
  store i1 %t501, ptr %l242, !tbaa !21
  br label %bb87
bb87:
  %t503 = load i1, ptr %l242, !tbaa !21
  br i1 %t503, label %bb88, label %bb89
bb88:
  %t504 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t505 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t504, 1
  %t508 = extractvalue { i64, ptr } %t504, 0
  %t509 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t510 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t511 = add i64 %t508, %t510
  %t513 = extractvalue { i64, ptr } %t505, 1
  %t514 = extractvalue { i64, ptr } %t505, 0
  %t515 = add i64 %t511, %t514
  %t516 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t517 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t518 = add i64 %t515, %t517
  %t519 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t518)
  call void @olang_textcopy(ptr %t519, ptr %t507, i64 %t508)
  %t520 = getelementptr i8, ptr %t519, i64 %t508
  call void @olang_textcopy(ptr %t520, ptr %t509, i64 %t510)
  %t521 = getelementptr i8, ptr %t520, i64 %t510
  call void @olang_textcopy(ptr %t521, ptr %t513, i64 %t514)
  %t522 = getelementptr i8, ptr %t521, i64 %t514
  call void @olang_textcopy(ptr %t522, ptr %t516, i64 %t517)
  %t523 = insertvalue { i64, ptr } undef, i64 %t518, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t519, 1
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t527 = extractvalue { i64, ptr } %t524, 1
  %t528 = mul i64 %t526, 1
  %t529 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t528)
  call void @llvm.memcpy.p0.p0.i64(ptr %t529, ptr %t527, i64 %t528, i1 false)
  %t530 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t529, 1
  store { i64, ptr } %t531, ptr %l20, !tbaa !27
  %t533 = load ptr, ptr %l0, !tbaa !29
  store ptr %t533, ptr %l258, !tbaa !29
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t536 = getelementptr %"compiler/check:Checker", ptr %t534, i32 0, i32 1
  %t537 = load ptr, ptr %t536, !tbaa !29
  %t539 = getelementptr %"compiler/generic:Program", ptr %t537, i32 0, i32 2
  store ptr %t539, ptr %l261, !tbaa !29
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = getelementptr %"compiler/check:Checker", ptr %t540, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !29
  %t545 = getelementptr %"compiler/generic:Program", ptr %t543, i32 0, i32 2
  %t546 = load i32, ptr %l19, !tbaa !23
  %t549 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t545, i32 %t546)
  store i32 %t549, ptr %l266
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t550 = load ptr, ptr %l261, !tbaa !29
  %t551 = load i32, ptr %l266, !tbaa !23
  %t552 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t550, i32 %t551)
  store i32 %t552, ptr %l267
  br label %bb91
bb91:
  %t553 = load ptr, ptr %l258, !tbaa !29
  %t554 = load i32, ptr %l267, !tbaa !23
  %t555 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t553, i32 %t554)
  store { i64, ptr } %t555, ptr %l268
  br label %bb92
bb92:
  %t556 = load { i64, ptr }, ptr %l268, !tbaa !27
  store { i64, ptr } %t556, ptr %l15, !tbaa !27
  br label %bb93
bb93:
  %t557 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l271, !tbaa !27
  %t560 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t561 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t557, { i64, ptr } %t560)
  store i1 %t561, ptr %l272
  br label %bb94
bb94:
  %t562 = load i1, ptr %l272, !tbaa !21
  br i1 %t562, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s13
  %t563 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t566 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t563, i8 46)
  %t567 = extractvalue { i32, i64 } %t566, 1
  %t568 = extractvalue { i32, i64 } %t566, 0
  store i32 %t568, ptr %l277
  %t569 = icmp ne i32 %t568, 0
  br i1 %t569, label %bb98, label %ok.570, !prof !99
ok.570:
  store i64 %t567, ptr %l276
  br label %bb97
bb96:
  br label %bb111
bb97:
  %t571 = load i64, ptr %l276, !tbaa !24
  store i64 %t571, ptr %l273, !tbaa !24
  br label %bb100
bb98:
  br label %bb99
bb99:
  store i64 -1, ptr %l273, !tbaa !24
  br label %bb100
bb100:
  %t572 = load i64, ptr %l273, !tbaa !24
  store i64 %t572, ptr %l21, !tbaa !24
  %t573 = load ptr, ptr %l0, !tbaa !29
  store ptr %t573, ptr %l278, !tbaa !29
  %t574 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t574, ptr %l279
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t576 = load i32, ptr %l14, !tbaa !23
  %t579 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s13, ptr %t575, i32 %t576)
  store { i64, ptr } %t579, ptr %l282
  br label %bb101
bb101:
  %t580 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t581 = extractvalue { i64, ptr } %t580, 0
  %t582 = extractvalue { i64, ptr } %t580, 1
  %t583 = mul i64 %t581, 1
  %t584 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t583)
  call void @llvm.memcpy.p0.p0.i64(ptr %t584, ptr %t582, i64 %t583, i1 false)
  %t585 = insertvalue { i64, ptr } undef, i64 %t581, 0
  %t586 = insertvalue { i64, ptr } %t585, ptr %t584, 1
  store { i64, ptr } %t586, ptr %l283, !tbaa !27
  %t587 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t587, ptr %l284, !tbaa !27
  %t588 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t588, ptr %l285, !tbaa !27
  %t589 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t589, ptr %l286, !tbaa !27
  %t590 = load i64, ptr %l21, !tbaa !24
  %t592 = add i64 %t590, 1
  store i64 %t592, ptr %l288, !tbaa !24
  %t593 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t596 = extractvalue { i64, ptr } %t593, 0
  store i64 %t596, ptr %l291, !tbaa !24
  %t597 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t597, 0
  store i64 %t598, ptr %l292, !tbaa !24
  %t599 = load i64, ptr %l288, !tbaa !24
  %t600 = icmp sge i64 %t599, 0
  br i1 %t600, label %bb102, label %bb103
bb102:
  %t602 = load i64, ptr %l288, !tbaa !24
  %t603 = load i64, ptr %l291, !tbaa !24
  %t604 = icmp sle i64 %t602, %t603
  br i1 %t604, label %bb104, label %bb105
bb103:
  call void @__olang_check_failed(ptr @olang_loc_a9f182c570b9396_c29311a5416207fa)
  unreachable
bb104:
  %t606 = load i64, ptr %l291, !tbaa !24
  %t607 = load i64, ptr %l292, !tbaa !24
  %t608 = icmp sle i64 %t606, %t607
  br i1 %t608, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_a9f182c570b9396_c29311a5416207fa)
  unreachable
bb106:
  %t610 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !27
  %t612 = load i64, ptr %l288, !tbaa !24
  %t613 = load i64, ptr %l291, !tbaa !24
  %t614 = getelementptr i8, ptr %t611, i64 %t612
  %t615 = sub i64 %t613, %t612
  %t616 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t617 = insertvalue { i64, ptr } %t616, ptr %t614, 1
  %t619 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s13, { i64, ptr } %t617)
  store { i64, ptr } %t619, ptr %l297
  br label %bb108
bb107:
  call void @__olang_check_failed(ptr @olang_loc_a9f182c570b9396_c29311a5416207fa)
  unreachable
bb108:
  %t620 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t621 = extractvalue { i64, ptr } %t620, 0
  %t622 = extractvalue { i64, ptr } %t620, 1
  %t623 = mul i64 %t621, 1
  %t624 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t623)
  call void @llvm.memcpy.p0.p0.i64(ptr %t624, ptr %t622, i64 %t623, i1 false)
  %t625 = insertvalue { i64, ptr } undef, i64 %t621, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t624, 1
  %t627 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t628 = extractvalue { i64, ptr } %t627, 1
  %t629 = call ptr @__olang_scope_of(ptr %t628, ptr null)
  %t630 = ptrtoint ptr %t629 to i64
  %t632 = inttoptr i64 %t630 to ptr
  %t633 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t634 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t635 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t637 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetBuilder(ptr %s13, ptr %t632, ptr %v0, ptr %s13, ptr %v0, { i64, ptr } %t633, { i64, ptr } %t634, { i64, ptr } %t635, { i64, ptr } %t626)
  store %"compiler/diagmsg:Msg" %t637, ptr %l300
  br label %bb109
bb109:
  %t638 = load ptr, ptr %l278, !tbaa !29
  %t639 = load %"compiler/source:Span", ptr %l279
  %t640 = load %"compiler/diagmsg:Msg", ptr %l300
  %t641 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t638, %"compiler/source:Span" %t639, %"compiler/diagmsg:Msg" %t640)
  store i64 %t641, ptr %l301
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb111:
  %t643 = load ptr, ptr %l0, !tbaa !29
  store ptr %t643, ptr %l303, !tbaa !29
  %t644 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t644, ptr %l304
  %t645 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t647 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t645, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t647, ptr %l306
  br label %bb112
bb112:
  %t648 = load i1, ptr %l306, !tbaa !21
  br i1 %t648, label %bb113, label %bb114
bb113:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load i32, ptr %l14, !tbaa !23
  %t653 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t649, i32 %t650)
  store { i64, ptr } %t653, ptr %l310
  br label %bb115
bb114:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load i32, ptr %l14, !tbaa !23
  %t658 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t654, i32 %t655)
  store { i64, ptr } %t658, ptr %l318
  br label %bb117
bb115:
  %t659 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t660 = extractvalue { i64, ptr } %t659, 0
  %t661 = extractvalue { i64, ptr } %t659, 1
  %t662 = mul i64 %t660, 1
  %t663 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t662)
  call void @llvm.memcpy.p0.p0.i64(ptr %t663, ptr %t661, i64 %t662, i1 false)
  %t664 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t665 = insertvalue { i64, ptr } %t664, ptr %t663, 1
  %t666 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t666, ptr %l312, !tbaa !27
  %t667 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t668 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t669 = extractvalue { i64, ptr } %t668, 1
  %t670 = call ptr @__olang_scope_of(ptr %t669, ptr null)
  %t671 = ptrtoint ptr %t670 to i64
  %t673 = inttoptr i64 %t671 to ptr
  %t675 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t677 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetHash(ptr %s0, ptr %t673, ptr %v0, ptr %v0, { i64, ptr } %t665, { i64, ptr } %t675, { i64, ptr } %t667)
  store %"compiler/diagmsg:Msg" %t677, ptr %l315
  br label %bb116
bb116:
  %t678 = load %"compiler/diagmsg:Msg", ptr %l315
  store %"compiler/diagmsg:Msg" %t678, ptr %l307
  br label %bb119
bb117:
  %t679 = load { i64, ptr }, ptr %l318, !tbaa !27
  %t680 = extractvalue { i64, ptr } %t679, 0
  %t681 = extractvalue { i64, ptr } %t679, 1
  %t682 = mul i64 %t680, 1
  %t683 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t682)
  call void @llvm.memcpy.p0.p0.i64(ptr %t683, ptr %t681, i64 %t682, i1 false)
  %t684 = insertvalue { i64, ptr } undef, i64 %t680, 0
  %t685 = insertvalue { i64, ptr } %t684, ptr %t683, 1
  %t686 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t686, ptr %l320, !tbaa !27
  %t687 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t688 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t688, ptr %l322, !tbaa !27
  %t689 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t690 = extractvalue { i64, ptr } %t689, 1
  %t691 = call ptr @__olang_scope_of(ptr %t690, ptr null)
  %t692 = ptrtoint ptr %t691 to i64
  %t693 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t694 = extractvalue { i64, ptr } %t693, 1
  %t695 = call ptr @__olang_scope_of(ptr %t694, ptr null)
  %t696 = ptrtoint ptr %t695 to i64
  %t698 = inttoptr i64 %t692 to ptr
  %t700 = inttoptr i64 %t696 to ptr
  %t702 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t704 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t705 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetMethod(ptr %s0, ptr %t698, ptr %v0, ptr %t700, ptr %v0, { i64, ptr } %t685, { i64, ptr } %t702, { i64, ptr } %t687, { i64, ptr } %t704)
  store %"compiler/diagmsg:Msg" %t705, ptr %l325
  br label %bb118
bb118:
  %t706 = load %"compiler/diagmsg:Msg", ptr %l325
  store %"compiler/diagmsg:Msg" %t706, ptr %l307
  br label %bb119
bb119:
  %t707 = load ptr, ptr %l303, !tbaa !29
  %t708 = load %"compiler/source:Span", ptr %l304
  %t709 = load %"compiler/diagmsg:Msg", ptr %l307
  %t710 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t707, %"compiler/source:Span" %t708, %"compiler/diagmsg:Msg" %t709)
  store i64 %t710, ptr %l326
  br label %bb120
bb120:
  %t711 = load i64, ptr %l326, !tbaa !24
  store i64 %t711, ptr %l22, !tbaa !24
  %t712 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t714 = call { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %s0, { i64, ptr } %t712)
  store { i64, ptr } %t714, ptr %l328
  br label %bb121
bb121:
  %t715 = load { i64, ptr }, ptr %l328, !tbaa !27
  store { i64, ptr } %t715, ptr %l23, !tbaa !27
  %t716 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t717 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t720 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t716, { i64, ptr } %t717)
  store i1 %t720, ptr %l331
  br label %bb122
bb122:
  %t721 = load i1, ptr %l331, !tbaa !21
  %t722 = xor i1 %t721, true
  br i1 %t722, label %bb123, label %bb124
bb123:
  %t724 = load ptr, ptr %l0, !tbaa !29
  %t726 = getelementptr %"compiler/check:Checker", ptr %t724, i32 0, i32 1
  %t727 = load ptr, ptr %t726, !tbaa !29
  store ptr %t727, ptr %l335, !tbaa !29
  %t728 = load i32, ptr %l14, !tbaa !23
  store i32 %t728, ptr %l336, !tbaa !23
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t731 = getelementptr %"compiler/check:Checker", ptr %t729, i32 0, i32 1
  %t732 = load ptr, ptr %t731, !tbaa !29
  %t734 = getelementptr %"compiler/generic:Program", ptr %t732, i32 0, i32 0
  %t735 = load ptr, ptr %t734, !tbaa !29
  %t737 = getelementptr %"compiler/load:Loader", ptr %t735, i32 0, i32 3
  %t738 = load ptr, ptr %t737, !tbaa !29
  %t739 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t742 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t738, { i64, ptr } %t739)
  store i32 %t742, ptr %l342
  br label %bb125
bb124:
  store i64 -1, ptr %l333, !tbaa !24
  br label %bb127
bb125:
  %t743 = load ptr, ptr %l335, !tbaa !29
  %t744 = load i32, ptr %l336, !tbaa !23
  %t745 = load i32, ptr %l342, !tbaa !23
  %t746 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t743, i32 %t744, i32 %t745)
  store i64 %t746, ptr %l343
  br label %bb126
bb126:
  %t747 = load i64, ptr %l343, !tbaa !24
  store i64 %t747, ptr %l333, !tbaa !24
  br label %bb127
bb127:
  %t748 = load i64, ptr %l333, !tbaa !24
  store i64 %t748, ptr %l24, !tbaa !24
  %t749 = load i64, ptr %l24, !tbaa !24
  %t751 = icmp sge i64 %t749, 0
  br i1 %t751, label %bb128, label %bb129
bb128:
  %t753 = load ptr, ptr %l0, !tbaa !29
  store ptr %t753, ptr %l346, !tbaa !29
  %t754 = load i64, ptr %l22, !tbaa !24
  store i64 %t754, ptr %l347, !tbaa !24
  %t755 = load i64, ptr %l24, !tbaa !24
  store i64 %t755, ptr %l348, !tbaa !24
  %t756 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t757 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t760 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotePrivateSpelling(ptr %s0, ptr %v0, ptr %v0, { i64, ptr } %t756, { i64, ptr } %t757)
  store %"compiler/diagmsg:Msg" %t760, ptr %l351
  br label %bb130
bb129:
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t763 = getelementptr %"compiler/check:Checker", ptr %t761, i32 0, i32 1
  %t764 = load ptr, ptr %t763, !tbaa !29
  %t765 = load i32, ptr %l14, !tbaa !23
  %t766 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 2
  %t767 = load i32, ptr %t766, !tbaa !23
  %t771 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t764, i32 %t765, i32 %t767)
  store i64 %t771, ptr %l356
  br label %bb132
bb130:
  %t772 = load ptr, ptr %l346, !tbaa !29
  %t773 = load i64, ptr %l347, !tbaa !24
  %t774 = load i64, ptr %l348, !tbaa !24
  %t775 = load %"compiler/diagmsg:Msg", ptr %l351
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %v0, ptr %t772, i64 %t773, i64 %t774, %"compiler/diagmsg:Msg" %t775)
  br label %bb131
bb131:
  br label %bb138
bb132:
  %t776 = load i64, ptr %l356, !tbaa !24
  store i64 %t776, ptr %l25, !tbaa !24
  %t777 = load i64, ptr %l25, !tbaa !24
  %t779 = icmp sge i64 %t777, 0
  br i1 %t779, label %bb133, label %bb134
bb133:
  %t781 = load ptr, ptr %l0, !tbaa !29
  store ptr %t781, ptr %l359, !tbaa !29
  %t782 = load i64, ptr %l22, !tbaa !24
  store i64 %t782, ptr %l360, !tbaa !24
  %t783 = load i64, ptr %l25, !tbaa !24
  store i64 %t783, ptr %l361, !tbaa !24
  %t784 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t786 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteOtherSignature(ptr %v0, ptr %v0, { i64, ptr } %t784)
  store %"compiler/diagmsg:Msg" %t786, ptr %l363
  br label %bb135
bb134:
  br label %bb137
bb135:
  %t787 = load ptr, ptr %l359, !tbaa !29
  %t788 = load i64, ptr %l360, !tbaa !24
  %t789 = load i64, ptr %l361, !tbaa !24
  %t790 = load %"compiler/diagmsg:Msg", ptr %l363
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %v0, ptr %t787, i64 %t788, i64 %t789, %"compiler/diagmsg:Msg" %t790)
  br label %bb136
bb136:
  br label %bb137
bb137:
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:Origin"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca i1
  %l46 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l57 = alloca %"compiler/generic:Origin"
  %l69 = alloca ptr
  %l73 = alloca i32
  %l74 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l85 = alloca i32
  %l88 = alloca i32
  %l89 = alloca i1
  %l90 = alloca i1
  %l92 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = load i64, ptr %l16, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 64, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l23, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l23, !tbaa !24
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l20, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l46, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t64, i64 %t65)
  store i32 %t68, ptr %l50
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l46, !tbaa !29
  %t70 = load i32, ptr %l50, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l51
  br label %bb15
bb15:
  %t72 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t75 = icmp eq i64 %t73, 0
  store i1 %t75, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l43, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t82 = load i64, ptr %l2, !tbaa !24
  %t85 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t81, i64 %t82)
  store %"compiler/generic:Origin" %t85, ptr %l57
  br label %bb20
bb20:
  %t86 = load %"compiler/generic:Origin", ptr %l57
  store %"compiler/generic:Origin" %t86, ptr %l10
  %t87 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = icmp slt i64 %t88, 0
  br i1 %t90, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb22:
  br label %bb23
bb23:
  %t92 = load i64, ptr %l2, !tbaa !24
  store i64 %t92, ptr %l3, !tbaa !24
  %t94 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 2
  %t95 = load i64, ptr %t94, !tbaa !24
  store i64 %t95, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l8, !tbaa !24
  br label %bb8
bb25:
  %t101 = load i64, ptr %l3, !tbaa !24
  %t103 = icmp slt i64 %t101, 0
  br i1 %t103, label %bb26, label %bb27
bb26:
  store i64 -1, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  store ptr %t111, ptr %l69, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t116 = load i64, ptr %l3, !tbaa !24
  %t119 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t115, i64 %t116)
  store i32 %t119, ptr %l73
  br label %bb29
bb29:
  %t120 = load ptr, ptr %l69, !tbaa !29
  %t121 = load i32, ptr %l73, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t120, i32 %t121)
  store { i64, ptr } %t122, ptr %l74
  br label %bb30
bb30:
  %t123 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t123, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  store i64 %t126, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb32, label %bb33
bb32:
  br label %bb46
bb33:
  br label %bb34
bb34:
  %t136 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t136, ptr %l81, !tbaa !27
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i32, ptr %t140, i64 %t137
  %t142 = load i32, ptr %t141, !tbaa !33
  store i32 %t142, ptr %l14, !tbaa !23
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l84, !tbaa !29
  store i32 %a1, ptr %l85, !tbaa !23
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l14, !tbaa !23
  %t150 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l88
  br label %bb35
bb35:
  %t151 = load ptr, ptr %l84, !tbaa !29
  %t152 = load i32, ptr %l85, !tbaa !23
  %t153 = load i32, ptr %l88, !tbaa !23
  %t154 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %t151, i32 %t152, i32 %t153, i64 0)
  store i1 %t154, ptr %l89
  br label %bb36
bb36:
  %t155 = load i1, ptr %l89, !tbaa !21
  br i1 %t155, label %bb37, label %bb38
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  store ptr %t159, ptr %l92, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l14, !tbaa !23
  %t164 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l95
  br label %bb39
bb38:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb41
bb39:
  %t165 = load ptr, ptr %l92, !tbaa !29
  %t166 = load i32, ptr %l95, !tbaa !23
  %t167 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t165, i32 %t166)
  store i1 %t167, ptr %l96
  br label %bb40
bb40:
  %t168 = load i1, ptr %l96, !tbaa !21
  store i1 %t168, ptr %l90, !tbaa !21
  br label %bb41
bb41:
  %t169 = load i1, ptr %l90, !tbaa !21
  br i1 %t169, label %bb42, label %bb43
bb42:
  %t170 = load i64, ptr %l3, !tbaa !24
  store i64 %t170, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t172 = load i64, ptr %l12, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l12, !tbaa !24
  br label %bb31
bb46:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarsOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i1
  %l12 = alloca ptr
  %l17 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp ne i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  store ptr %t18, ptr %l12, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l2, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l17
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb7
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %t29)
  store i32 %t31, ptr %l19
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l12, !tbaa !29
  %t33 = load i32, ptr %l17, !tbaa !23
  %t34 = load i32, ptr %l19, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t32, i32 %t33, i32 %t34)
  store i1 %t35, ptr %l20
  br label %bb6
bb6:
  %t36 = load i1, ptr %l20, !tbaa !21
  store i1 %t36, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t37 = load i1, ptr %l9, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenBranch(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l15 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l27 = alloca i32
  %l31 = alloca %"compiler/typed:Block"
  %l37 = alloca ptr
  %l38 = alloca i1
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca ptr
  %l55 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l69 = alloca ptr
  %rv = alloca ptr
  %t19 = alloca { i64, [3 x i64] }, align 8
  %t60 = alloca { i64, [3 x i64] }, align 8
  %t120 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a3, label %bb1, label %bb2
bb1:
  %t3 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t3, ptr %l8
  %t4 = load ptr, ptr %l0, !tbaa !29
  store ptr %t4, ptr %l9, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:If", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_76087ef951037d6e_3aecbfe8b84426da)
  unreachable
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/ast:If", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load ptr, ptr %l9, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t15)
  store ptr %t18, ptr %l15
  br label %bb6
bb6:
  store { i64, [3 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 0
  store i64 11, ptr %t20
  %t21 = load %"compiler/source:Span", ptr %l8
  %t22 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t21, 0
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = insertvalue { %"compiler/source:Span", ptr } %t22, ptr %t23, 1
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t24, ptr %t25
  %t26 = load { i64, [3 x i64] }, ptr %t19
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t26, ptr %t28
  store ptr %t28, ptr %rv
  br label %ret
bb7:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:If", ptr %t30, i32 0, i32 2
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t37, ptr %l21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t38)
  store ptr %t40, ptr %l23
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t41 = load ptr, ptr %l23, !tbaa !29
  %t43 = getelementptr %"compiler/check:frame", ptr %t41, i32 0, i32 7
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = trunc i64 %t44 to i32
  store i32 %t46, ptr %l27, !tbaa !23
  %t48 = icmp sge i64 0, 0
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = icmp sle i64 0, 1152921504606846975
  br i1 %t50, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_5aef4dfb7ef3d3db_90619d6d8d57518f)
  unreachable
bb13:
  %t52 = mul i64 0, 8
  %t53 = insertvalue { i64, ptr } undef, i64 0, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t55 = load i32, ptr %l27, !tbaa !23
  %t57 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v2, ptr %v2, i32 %t55, { i64, ptr } %t54)
  store %"compiler/typed:Block" %t57, ptr %l31
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_5aef4dfb7ef3d3db_90619d6d8d57518f)
  unreachable
bb15:
  %t58 = load %"compiler/typed:Block", ptr %l31
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t58, ptr %t59
  store { i64, [3 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [3 x i64] }, ptr %t60, i32 0, i32 0
  store i64 11, ptr %t61
  %t62 = load %"compiler/source:Span", ptr %l21
  %t63 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t62, 0
  %t65 = insertvalue { %"compiler/source:Span", ptr } %t63, ptr %t59, 1
  %t66 = getelementptr { i64, [3 x i64] }, ptr %t60, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t65, ptr %t66
  %t67 = load { i64, [3 x i64] }, ptr %t60
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t67, ptr %t69
  store ptr %t69, ptr %rv
  br label %ret
bb16:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr %"compiler/ast:If", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  store ptr %t74, ptr %l4, !tbaa !29
  %t76 = load ptr, ptr %l4, !tbaa !29
  store ptr %t76, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t77 = load ptr, ptr %l37, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb17, label %bb18
bb17:
  %t80 = load ptr, ptr %l37, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 22}
  %t83 = icmp eq i64 %t81, 5
  store i1 %t83, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l38, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr }, ptr %t87, i32 0, i32 0
  %t89 = load %"compiler/source:Span", ptr %t88
  store %"compiler/source:Span" %t89, ptr %l5
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", ptr }, ptr %t93, i32 0, i32 1
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l6, !tbaa !29
  br label %bb21
bb20:
  br label %bb30
bb21:
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/ast:If", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t104 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t104, ptr %l48
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l49, !tbaa !29
  %t106 = load ptr, ptr %l6, !tbaa !29
  %t108 = getelementptr %"compiler/ast:If", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = icmp eq ptr %t109, null
  br i1 %t111, label %bb24, label %bb25
bb23:
  br label %bb28
bb24:
  call void @__olang_check_failed(ptr @olang_loc_cff02b8329dc1100_79cd7222e22836ac)
  unreachable
bb25:
  br label %bb26
bb26:
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = getelementptr %"compiler/ast:If", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t117 = load ptr, ptr %l49, !tbaa !29
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t117, ptr %t116)
  store ptr %t119, ptr %l55
  br label %bb27
bb27:
  store { i64, [3 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 0
  store i64 11, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l48
  %t123 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t122, 0
  %t124 = load ptr, ptr %l55, !tbaa !29
  %t125 = insertvalue { %"compiler/source:Span", ptr } %t123, ptr %t124, 1
  %t126 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t125, ptr %t126
  %t127 = load { i64, [3 x i64] }, ptr %t120
  %t129 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t127, ptr %t129
  store ptr %t129, ptr %rv
  br label %ret
bb28:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l5
  %t133 = load ptr, ptr %l6, !tbaa !29
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %t131, %"compiler/source:Span" %t132, ptr %t133)
  store ptr %t137, ptr %l61
  br label %bb29
bb29:
  %t138 = load ptr, ptr %l61, !tbaa !29
  store ptr %t138, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l62, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t140, ptr %l63
  %t141 = load ptr, ptr %l2, !tbaa !29
  %t143 = getelementptr %"compiler/ast:If", ptr %t141, i32 0, i32 2
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  br i1 %t146, label %bb34, label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_71fc016cdbd92d9f_b1a3aa3c3a436c9b)
  unreachable
bb35:
  br label %bb36
bb36:
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t150 = getelementptr %"compiler/ast:If", ptr %t148, i32 0, i32 2
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t152 = load ptr, ptr %l62, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l63
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %t152, %"compiler/source:Span" %t153, ptr %t151)
  store ptr %t155, ptr %l69
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l69, !tbaa !29
  store ptr %t156, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_43f0c8289ee2541_d6540b938bb16195)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptime(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l22 = alloca ptr
  %l33 = alloca ptr
  %l37 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l49 = alloca i1
  %l51 = alloca { i64, ptr }
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca %"compiler/source:Span"
  %l57 = alloca i1
  %l67 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca i64
  %l82 = alloca ptr
  %l89 = alloca ptr
  %l96 = alloca i32
  %l100 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l101 = alloca i64
  %l105 = alloca i64
  %l106 = alloca i32
  %l115 = alloca i64
  %l116 = alloca i32
  %l120 = alloca i32
  %l121 = alloca i32
  %l128 = alloca ptr
  %l139 = alloca i32
  %l142 = alloca %"compiler/source:Span"
  %l148 = alloca i32
  %l155 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t274 = alloca { i64, [4 x i64] }, align 8
  %t318 = alloca { i64, [5 x i64] }, align 8
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
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l17, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 18
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  %t14 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %t11)
  store ptr %t14, ptr %l22
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l22, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 1
  %t18 = load { i64, [2 x i64] }, ptr %t17
  store { i64, [2 x i64] } %t18, ptr %l5
  %t20 = load { i64, [2 x i64] }, ptr %l5
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 6
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t26 = getelementptr { i64, i32 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  store i64 %t27, ptr %l6, !tbaa !24
  %t29 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t30 = getelementptr { i64, i32 }, ptr %t29, i32 0, i32 1
  %t31 = load i32, ptr %t30
  store i32 %t31, ptr %l7, !tbaa !23
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i32, ptr %l7, !tbaa !23
  %t42 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t36, i64 %t37, i32 %t38)
  store ptr %t42, ptr %l33
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l33, !tbaa !29
  store ptr %t43, ptr %l8, !tbaa !29
  %t44 = load ptr, ptr %l8, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i32, ptr %l7, !tbaa !23
  %t59 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsSynth(ptr %v0, ptr %t53, i64 %t54, i32 %t55)
  store i1 %t59, ptr %l42
  br label %bb9
bb8:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb10
bb9:
  %t60 = load i1, ptr %l42, !tbaa !21
  %t61 = xor i1 %t60, true
  store i1 %t61, ptr %l37, !tbaa !21
  br label %bb10
bb10:
  %t63 = load i1, ptr %l37, !tbaa !21
  br i1 %t63, label %bb11, label %bb12
bb11:
  %t64 = load ptr, ptr %l8, !tbaa !29
  %t66 = getelementptr %"compiler/ast:VarDecl", ptr %t64, i32 0, i32 3
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp sgt i64 %t69, 0
  store i1 %t71, ptr %l44, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb13
bb13:
  %t73 = load i1, ptr %l44, !tbaa !21
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t74 = load ptr, ptr %l8, !tbaa !29
  %t76 = getelementptr %"compiler/ast:VarDecl", ptr %t74, i32 0, i32 3
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l51, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr ptr, ptr %t79, i64 0
  %t81 = load ptr, ptr %t80, !tbaa !39
  %t83 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t81)
  store %"compiler/source:Span" %t83, ptr %l53
  br label %bb16
bb15:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb18
bb16:
  %t84 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t84, ptr %l55
  %t87 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l53, ptr %l55)
  store i1 %t87, ptr %l57
  br label %bb17
bb17:
  %t88 = load i1, ptr %l57, !tbaa !21
  store i1 %t88, ptr %l49, !tbaa !21
  br label %bb18
bb18:
  %t89 = load i1, ptr %l49, !tbaa !21
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 147
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t95 = getelementptr %"compiler/check:frame", ptr %t93, i32 0, i32 0
  %t96 = load i64, ptr %t95, !tbaa !24
  %t97 = load %"compiler/source:Span", ptr %l1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_H19fded22be32a91ca4084130356a325d(ptr %v0, ptr %t92, i64 %t96, %"compiler/source:Span" %t97)
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t104 = load i32, ptr %l3, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, i32 %t104)
  store ptr %t108, ptr %l67
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t109 = load ptr, ptr %l67, !tbaa !29
  store ptr %t109, ptr %rv
  br label %ret
bb23:
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_fa3c94e3a612a0dd_4761343759351551)
  unreachable
bb29:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeCtx(ptr %v0, ptr %s0, ptr %t110)
  store { i64, ptr } %t112, ptr %l69
  br label %bb30
bb30:
  %t113 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t113, ptr %l9, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t116 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t116, ptr %l71
  br label %bb31
bb31:
  %t117 = load i1, ptr %l71, !tbaa !21
  br i1 %t117, label %bb32, label %bb33
bb32:
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t120 = getelementptr %"compiler/check:frame", ptr %t118, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  store i64 %t121, ptr %l72, !tbaa !24
  br label %bb34
bb33:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/load:Loader", ptr %t129, i32 0, i32 12
  %t132 = load i64, ptr %t131, !tbaa !24
  store i64 %t132, ptr %l72, !tbaa !24
  br label %bb34
bb34:
  %t134 = load i64, ptr %l72, !tbaa !24
  store i64 %t134, ptr %l10, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/load:Loader", ptr %t141, i32 0, i32 3
  %t144 = load ptr, ptr %t143, !tbaa !29
  store ptr %t144, ptr %l82, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 0
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/load:Loader", ptr %t151, i32 0, i32 10
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t156 = getelementptr %"compiler/check:frame", ptr %t154, i32 0, i32 1
  %t157 = load i64, ptr %t156, !tbaa !24
  %t160 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t153, i64 %t157)
  store ptr %t160, ptr %l89
  br label %bb35
bb35:
  %t161 = load ptr, ptr %l89, !tbaa !29
  %t163 = getelementptr %"compiler/load:Module", ptr %t161, i32 0, i32 2
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t165 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t166 = load i32, ptr %t165, !tbaa !23
  %t167 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t168 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t171 = extractvalue { i64, ptr } %t164, 1
  %t172 = extractvalue { i64, ptr } %t164, 0
  %t173 = add i64 %t169, %t172
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t176 = add i64 %t173, %t175
  %t178 = sext i32 %t166 to i64
  %t179 = call i64 @__olang_fmt_i64(ptr null, i64 %t178)
  %t180 = add i64 %t176, %t179
  %t182 = extractvalue { i64, ptr } %t167, 1
  %t183 = extractvalue { i64, ptr } %t167, 0
  %t184 = add i64 %t180, %t183
  %t185 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t184)
  call void @olang_textcopy(ptr %t185, ptr %t168, i64 %t169)
  %t186 = getelementptr i8, ptr %t185, i64 %t169
  call void @olang_textcopy(ptr %t186, ptr %t171, i64 %t172)
  %t187 = getelementptr i8, ptr %t186, i64 %t172
  call void @olang_textcopy(ptr %t187, ptr %t174, i64 %t175)
  %t188 = getelementptr i8, ptr %t187, i64 %t175
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t178)
  %t190 = getelementptr i8, ptr %t188, i64 %t179
  call void @olang_textcopy(ptr %t190, ptr %t182, i64 %t183)
  %t191 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t185, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load ptr, ptr %l82, !tbaa !29
  %t202 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t200, { i64, ptr } %t199)
  store i32 %t202, ptr %l96
  br label %bb36
bb36:
  %t203 = load i32, ptr %l96, !tbaa !23
  store i32 %t203, ptr %l11, !tbaa !23
  %t204 = load i64, ptr %l10, !tbaa !24
  %t205 = load i32, ptr %l11, !tbaa !23
  %t207 = sext i32 %t205 to i64
  %t210 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t204, i64 %t207)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t210, ptr %l100
  br label %bb37
bb37:
  %t211 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l100
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t211, ptr %l12
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 31
  %t215 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  %t218 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t214, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t215)
  %t219 = extractvalue { i32, i64 } %t218, 1
  %t220 = extractvalue { i32, i64 } %t218, 0
  store i32 %t220, ptr %l106
  %t221 = icmp ne i32 %t220, 0
  br i1 %t221, label %bb39, label %ok.222, !prof !99
ok.222:
  store i64 %t219, ptr %l105
  br label %bb38
bb38:
  %t223 = load i64, ptr %l105, !tbaa !24
  store i64 %t223, ptr %l101, !tbaa !24
  br label %bb41
bb39:
  br label %bb40
bb40:
  store i64 -1, ptr %l101, !tbaa !24
  br label %bb41
bb41:
  %t224 = load i64, ptr %l101, !tbaa !24
  store i64 %t224, ptr %l13, !tbaa !24
  %t225 = load i64, ptr %l13, !tbaa !24
  %t227 = icmp slt i64 %t225, 0
  br i1 %t227, label %bb42, label %bb43
bb42:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l1
  %t231 = load ptr, ptr %l2, !tbaa !29
  %t232 = load i32, ptr %l3, !tbaa !23
  %t233 = load i64, ptr %l10, !tbaa !24
  %t234 = load i32, ptr %l11, !tbaa !23
  %t241 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeBody(ptr %v0, ptr %v1, ptr %t229, %"compiler/source:Span" %t230, ptr %t231, i32 %t232, i64 %t233, i32 %t234)
  store i64 %t241, ptr %l115
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t242 = load i64, ptr %l115, !tbaa !24
  store i64 %t242, ptr %l13, !tbaa !24
  br label %bb45
bb45:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/check:Checker", ptr %t243, i32 0, i32 32
  %t246 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  %t249 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %t245, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t246)
  %t250 = extractvalue { i32, i32 } %t249, 1
  %t251 = extractvalue { i32, i32 } %t249, 0
  store i32 %t251, ptr %l121
  %t252 = icmp ne i32 %t251, 0
  br i1 %t252, label %bb47, label %ok.253, !prof !99
ok.253:
  store i32 %t250, ptr %l120
  br label %bb46
bb46:
  %t254 = load i32, ptr %l120, !tbaa !23
  store i32 %t254, ptr %l116, !tbaa !23
  br label %bb49
bb47:
  br label %bb48
bb48:
  %t255 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t255, ptr %l116, !tbaa !23
  br label %bb49
bb49:
  %t257 = load i32, ptr %l116, !tbaa !23
  store i32 %t257, ptr %l14, !tbaa !23
  %t258 = load i32, ptr %l14, !tbaa !23
  %t259 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t262 = icmp eq i32 %t258, %t259
  br i1 %t262, label %bb50, label %bb51
bb50:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l1
  %t268 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t264, %"compiler/source:Span" %t265)
  store ptr %t268, ptr %l128
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t269 = load ptr, ptr %l128, !tbaa !29
  store ptr %t269, ptr %rv
  br label %ret
bb53:
  %t270 = load %"compiler/source:Span", ptr %l1
  %t271 = load i32, ptr %l14, !tbaa !23
  %t272 = load i64, ptr %l10, !tbaa !24
  %t273 = load i32, ptr %l11, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t274
  %t275 = getelementptr { i64, [4 x i64] }, ptr %t274, i32 0, i32 0
  store i64 1, ptr %t275
  %t277 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t270, 0
  %t279 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t277, i32 %t271, 1
  %t281 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t279, i64 %t272, 2
  %t283 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t281, i32 %t273, 3
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t274, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t283, ptr %t284
  %t285 = load { i64, [4 x i64] }, ptr %t274
  %t287 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t285, ptr %t287
  store ptr %t287, ptr %l15, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/check:Checker", ptr %t289, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l14, !tbaa !23
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l139
  br label %bb54
bb54:
  %t299 = load i32, ptr %l139, !range !{i32 0, i32 33}
  %t301 = trunc i64 19 to i32
  %t302 = icmp eq i32 %t299, %t301
  br i1 %t302, label %bb55, label %bb56
bb55:
  %t304 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t304, ptr %l142
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/check:Checker", ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t308, i32 0, i32 2
  %t311 = load i32, ptr %l14, !tbaa !23
  %t312 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t316 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t310, i32 %t311, i64 %t312)
  store i32 %t316, ptr %l148
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t317 = load ptr, ptr %l15, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t318
  %t319 = getelementptr { i64, [5 x i64] }, ptr %t318, i32 0, i32 0
  store i64 3, ptr %t319
  %t320 = load %"compiler/source:Span", ptr %l142
  %t321 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t320, 0
  %t322 = load i32, ptr %l148, !tbaa !23
  %t323 = insertvalue { %"compiler/source:Span", i32, ptr } %t321, i32 %t322, 1
  %t325 = insertvalue { %"compiler/source:Span", i32, ptr } %t323, ptr %t317, 2
  %t326 = getelementptr { i64, [5 x i64] }, ptr %t318, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t325, ptr %t326
  %t327 = load { i64, [5 x i64] }, ptr %t318
  %t329 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t327, ptr %t329
  call void @__olang_scope_close(ptr %s0)
  store ptr %t329, ptr %rv
  br label %ret
bb58:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load %"compiler/source:Span", ptr %l1
  %t333 = load ptr, ptr %l15, !tbaa !29
  %t337 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t331, %"compiler/source:Span" %t332, ptr %t333)
  store ptr %t337, ptr %l155
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  %t338 = load ptr, ptr %l155, !tbaa !29
  store ptr %t338, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorVarRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca i32
  %l41 = alloca { i64, ptr }
  %l45 = alloca %"compiler/source:Span"
  %l49 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i32
  %l73 = alloca i1
  %l80 = alloca i64
  %l83 = alloca i64
  %l104 = alloca i1
  %l109 = alloca ptr
  %l111 = alloca { i64, ptr }
  %l113 = alloca %"compiler/source:Span"
  %l116 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l122 = alloca %"compiler/diagmsg:Msg"
  %l123 = alloca i64
  %l128 = alloca i1
  %l133 = alloca i1
  %l146 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l175 = alloca %"compiler/source:Span"
  %l179 = alloca { i64, ptr }
  %l180 = alloca %"compiler/source:Span"
  %l183 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l187 = alloca %"compiler/source:Span"
  %l190 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l207 = alloca %"compiler/diagmsg:Msg"
  %l208 = alloca i64
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %wh3 = alloca ptr
  %wc3 = alloca ptr
  %ws3 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:StructBody", ptr %t1, i32 0, i32 5
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TypeDecl", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/ast:StructBody", ptr %t19, i32 0, i32 5
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l31, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 0
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l33, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/ast:TypeParam", ptr %t29, i32 0, i32 0
  %t32 = getelementptr %"compiler/source:Span", ptr %t31, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  store i32 %t33, ptr %l35, !tbaa !23
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeParam", ptr %t34, i32 0, i32 0
  %t37 = getelementptr %"compiler/source:Span", ptr %t36, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  store i32 %t38, ptr %l37, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/ast:TypeParam", ptr %t40, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t39, i32 %t43)
  store { i64, ptr } %t46, ptr %l41
  br label %bb6
bb5:
  br label %bb13
bb6:
  %t47 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t50 = trunc i64 %t48 to i32
  %t51 = load i32, ptr %l37, !tbaa !23
  %t53 = add i32 %t51, %t50
  %t54 = load i32, ptr %l35, !tbaa !23
  %t56 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t54, i32 %t53)
  store %"compiler/source:Span" %t56, ptr %l45
  br label %bb7
bb7:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/ast:TypeParam", ptr %t58, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t57, i32 %t61)
  store { i64, ptr } %t64, ptr %l49
  br label %bb8
bb8:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/ast:TypeDecl", ptr %t66, i32 0, i32 0
  %t69 = load i32, ptr %t68, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t65, i32 %t69)
  store { i64, ptr } %t72, ptr %l53
  br label %bb9
bb9:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/ast:TypeParam", ptr %t74, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t73, i32 %t77)
  store { i64, ptr } %t80, ptr %l57
  br label %bb10
bb10:
  %t81 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t84 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorVarOfGeneric(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t81, { i64, ptr } %t82, { i64, ptr } %t83)
  store %"compiler/diagmsg:Msg" %t84, ptr %l58
  br label %bb11
bb11:
  %t85 = load ptr, ptr %l33, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l45
  %t87 = load %"compiler/diagmsg:Msg", ptr %l58
  %t88 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t85, %"compiler/source:Span" %t86, %"compiler/diagmsg:Msg" %t87)
  store i64 %t88, ptr %l59
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb13:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t92 = getelementptr %"compiler/ast:StructBody", ptr %t90, i32 0, i32 5
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l62, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 0
  %t97 = load ptr, ptr %t96, !tbaa !39
  %t99 = getelementptr %"compiler/ast:TypeParam", ptr %t97, i32 0, i32 1
  %t100 = load i32, ptr %t99, !tbaa !23
  %t103 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t89, i32 %t100)
  store { i64, ptr } %t103, ptr %l65
  br label %bb14
bb14:
  %t104 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t104, ptr %l4, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s3
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v2, ptr %s3, ptr %t105)
  %t108 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t107, 0, 1
  %t109 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t107, 0, 0
  store ptr %t108, ptr %wh3
  store ptr %t109, ptr %wc3
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t107, ptr %l67
  br label %bb15
bb15:
  %t110 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l67
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t110, ptr %l5
  br label %bb16
bb16:
  %t112 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s3, ptr %l5)
  %t113 = extractvalue { i32, ptr } %t112, 1
  %t114 = extractvalue { i32, ptr } %t112, 0
  store i32 %t114, ptr %l71
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb18, label %ok.116, !prof !99
ok.116:
  store ptr %t113, ptr %l70
  br label %bb17
bb17:
  %t117 = load ptr, ptr %l70, !tbaa !29
  store ptr %t117, ptr %l68, !tbaa !29
  br label %bb20
bb18:
  %t118 = load i32, ptr %l71, !tbaa !23
  %t119 = ashr i32 %t118, 16
  %t121 = icmp eq i32 %t119, 1
  store i1 %t121, ptr %l73, !tbaa !21
  br label %bb19
bb19:
  br label %bb82
bb20:
  %t122 = load ptr, ptr %l68, !tbaa !29
  store ptr %t122, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t125 = getelementptr %"compiler/ast:VarDecl", ptr %t123, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load i64, ptr %l7, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb21, label %bb22
bb21:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb26
bb23:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t141 = load i64, ptr %l7, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l9, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l83, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb25
bb25:
  %t156 = load i64, ptr %l83, !tbaa !24
  store i64 %t156, ptr %l80, !tbaa !24
  br label %bb26
bb26:
  %t157 = load i64, ptr %l80, !tbaa !24
  store i64 %t157, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb27
bb27:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb28, label %bb29
bb28:
  br label %bb80
bb29:
  br label %bb30
bb30:
  %t166 = load i64, ptr %l7, !tbaa !24
  %t167 = load i64, ptr %l11, !tbaa !24
  %t168 = load i64, ptr %l9, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  store i64 %t174, ptr %l12, !tbaa !24
  %t176 = load ptr, ptr %l6, !tbaa !29
  %t178 = getelementptr %"compiler/ast:VarDecl", ptr %t176, i32 0, i32 2
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  br i1 %t181, label %bb31, label %bb32
bb31:
  %t183 = load ptr, ptr %l6, !tbaa !29
  %t185 = getelementptr %"compiler/ast:VarDecl", ptr %t183, i32 0, i32 3
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t190 = icmp sgt i64 %t188, 0
  store i1 %t190, ptr %l104, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb33
bb33:
  %t192 = load i1, ptr %l104, !tbaa !21
  br i1 %t192, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l109, !tbaa !29
  %t194 = load ptr, ptr %l6, !tbaa !29
  %t196 = getelementptr %"compiler/ast:VarDecl", ptr %t194, i32 0, i32 1
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  store { i64, ptr } %t197, ptr %l111, !tbaa !27
  %t198 = load i64, ptr %l12, !tbaa !24
  %t200 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr %"compiler/source:Span", ptr %t201, i64 %t198
  %t203 = load %"compiler/source:Span", ptr %t202
  store %"compiler/source:Span" %t203, ptr %l113
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l6, !tbaa !29
  %t207 = getelementptr %"compiler/ast:VarDecl", ptr %t205, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l116, !tbaa !27
  %t209 = load i64, ptr %l12, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i32, ptr %t212, i64 %t209
  %t214 = load i32, ptr %t213, !tbaa !33
  %t217 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s7, ptr %t204, i32 %t214)
  store { i64, ptr } %t217, ptr %l119
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t218 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  %t220 = extractvalue { i64, ptr } %t218, 1
  %t221 = mul i64 %t219, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t221)
  call void @llvm.memcpy.p0.p0.i64(ptr %t222, ptr %t220, i64 %t221, i1 false)
  %t223 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  %t225 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t228 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorGenericInferredField(ptr %s7, ptr %v0, ptr %v0, { i64, ptr } %t224, { i64, ptr } %t225)
  store %"compiler/diagmsg:Msg" %t228, ptr %l122
  br label %bb37
bb37:
  %t229 = load ptr, ptr %l109, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l113
  %t231 = load %"compiler/diagmsg:Msg", ptr %l122
  %t232 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t229, %"compiler/source:Span" %t230, %"compiler/diagmsg:Msg" %t231)
  store i64 %t232, ptr %l123
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  store i32 0, ptr %ws3
  br label %wend3
wend3.c0:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb39:
  %t233 = load ptr, ptr %l6, !tbaa !29
  %t235 = getelementptr %"compiler/ast:VarDecl", ptr %t233, i32 0, i32 2
  %t236 = load ptr, ptr %t235, !tbaa !29
  store ptr %t236, ptr %l13, !tbaa !29
  %t238 = load ptr, ptr %l13, !tbaa !29
  %t240 = icmp eq ptr %t238, null
  br i1 %t240, label %bb40, label %bb41
bb40:
  %t242 = load ptr, ptr %l6, !tbaa !29
  %t244 = getelementptr %"compiler/ast:VarDecl", ptr %t242, i32 0, i32 3
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t249 = icmp eq i64 %t247, 0
  store i1 %t249, ptr %l128, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb42
bb42:
  %t251 = load i1, ptr %l128, !tbaa !21
  br i1 %t251, label %bb43, label %bb44
bb43:
  %t252 = load ptr, ptr %l2, !tbaa !29
  %t254 = getelementptr %"compiler/ast:StructBody", ptr %t252, i32 0, i32 0
  %t255 = load { i64, ptr }, ptr %t254, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t259 = icmp sgt i64 %t257, 0
  store i1 %t259, ptr %l133, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb45
bb45:
  %t261 = load i1, ptr %l133, !tbaa !21
  br i1 %t261, label %bb46, label %bb47
bb46:
  %t262 = load ptr, ptr %l2, !tbaa !29
  %t264 = getelementptr %"compiler/ast:StructBody", ptr %t262, i32 0, i32 0
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  store { i64, ptr } %t265, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t267 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t267, 0
  store i64 %t269, ptr %l16, !tbaa !24
  br label %bb48
bb47:
  br label %bb57
bb48:
  %t271 = load i64, ptr %l15, !tbaa !24
  %t272 = load i64, ptr %l16, !tbaa !24
  %t275 = icmp slt i64 %t271, %t272
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb49, label %bb50
bb49:
  br label %bb56
bb50:
  br label %bb51
bb51:
  %t279 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t279, ptr %l146, !tbaa !27
  %t280 = load i64, ptr %l15, !tbaa !24
  %t282 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr ptr, ptr %t283, i64 %t280
  %t285 = load ptr, ptr %t284, !tbaa !39
  store ptr %t285, ptr %l17, !tbaa !29
  %t287 = load ptr, ptr %l17, !tbaa !29
  %t289 = getelementptr %"compiler/ast:Param", ptr %t287, i32 0, i32 1
  %t290 = load i32, ptr %t289, !tbaa !23
  %t291 = load ptr, ptr %l6, !tbaa !29
  %t293 = getelementptr %"compiler/ast:VarDecl", ptr %t291, i32 0, i32 0
  %t294 = load { i64, ptr }, ptr %t293, !tbaa !27
  store { i64, ptr } %t294, ptr %l152, !tbaa !27
  %t295 = load i64, ptr %l12, !tbaa !24
  %t297 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = getelementptr i32, ptr %t298, i64 %t295
  %t300 = load i32, ptr %t299, !tbaa !33
  %t303 = icmp eq i32 %t290, %t300
  br i1 %t303, label %bb52, label %bb53
bb52:
  %t305 = load ptr, ptr %l17, !tbaa !29
  %t307 = getelementptr %"compiler/ast:Param", ptr %t305, i32 0, i32 2
  %t308 = load ptr, ptr %t307, !tbaa !29
  store ptr %t308, ptr %l13, !tbaa !29
  br label %bb54
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t310 = load i64, ptr %l15, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l15, !tbaa !24
  br label %bb48
bb56:
  br label %bb57
bb57:
  %t314 = load ptr, ptr %l13, !tbaa !29
  %t316 = icmp eq ptr %t314, null
  br i1 %t316, label %bb58, label %bb59
bb58:
  br label %bb79
bb59:
  br label %bb60
bb60:
  %t318 = load ptr, ptr %l2, !tbaa !29
  %t320 = getelementptr %"compiler/ast:StructBody", ptr %t318, i32 0, i32 5
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  store { i64, ptr } %t321, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  store i64 %t325, ptr %l20, !tbaa !24
  br label %bb61
bb61:
  store %olang.scope zeroinitializer, ptr %s15
  %t327 = load i64, ptr %l19, !tbaa !24
  %t328 = load i64, ptr %l20, !tbaa !24
  %t331 = icmp slt i64 %t327, %t328
  %t333 = xor i1 %t331, true
  br i1 %t333, label %bb62, label %bb63
bb62:
  call void @__olang_scope_close(ptr %s15)
  br label %bb78
bb63:
  br label %bb64
bb64:
  %t335 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t335, ptr %l170, !tbaa !27
  %t336 = load i64, ptr %l19, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr ptr, ptr %t339, i64 %t336
  %t341 = load ptr, ptr %t340, !tbaa !39
  store ptr %t341, ptr %l21, !tbaa !29
  %t343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t343, ptr %l173, !tbaa !29
  %t344 = load ptr, ptr %l13, !tbaa !29
  %t346 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t344)
  store %"compiler/source:Span" %t346, ptr %l175
  br label %bb65
bb65:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load ptr, ptr %l21, !tbaa !29
  %t350 = getelementptr %"compiler/ast:TypeParam", ptr %t348, i32 0, i32 1
  %t351 = load i32, ptr %t350, !tbaa !23
  %t354 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t347, i32 %t351)
  store { i64, ptr } %t354, ptr %l179
  br label %bb66
bb66:
  %t355 = load ptr, ptr %l173, !tbaa !29
  %t356 = load %"compiler/source:Span", ptr %l175
  %t357 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t358 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIn(ptr %v0, ptr %v0, ptr %t355, %"compiler/source:Span" %t356, { i64, ptr } %t357)
  store %"compiler/source:Span" %t358, ptr %l180
  br label %bb67
bb67:
  %t359 = getelementptr %"compiler/source:Span", ptr %l180, i32 0, i32 0
  %t360 = load i32, ptr %t359, !tbaa !23
  %t362 = icmp slt i32 %t360, 0
  br i1 %t362, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s15)
  br label %bb77
bb69:
  br label %bb70
bb70:
  %t364 = load ptr, ptr %l0, !tbaa !29
  store ptr %t364, ptr %l183, !tbaa !29
  %t365 = load ptr, ptr %l6, !tbaa !29
  %t367 = getelementptr %"compiler/ast:VarDecl", ptr %t365, i32 0, i32 1
  %t368 = load { i64, ptr }, ptr %t367, !tbaa !27
  store { i64, ptr } %t368, ptr %l185, !tbaa !27
  %t369 = load i64, ptr %l12, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr %"compiler/source:Span", ptr %t372, i64 %t369
  %t374 = load %"compiler/source:Span", ptr %t373
  store %"compiler/source:Span" %t374, ptr %l187
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load ptr, ptr %l6, !tbaa !29
  %t378 = getelementptr %"compiler/ast:VarDecl", ptr %t376, i32 0, i32 0
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  store { i64, ptr } %t379, ptr %l190, !tbaa !27
  %t380 = load i64, ptr %l12, !tbaa !24
  %t382 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr i32, ptr %t383, i64 %t380
  %t385 = load i32, ptr %t384, !tbaa !33
  %t388 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s15, ptr %t375, i32 %t385)
  store { i64, ptr } %t388, ptr %l193
  br label %bb71
bb71:
  %t389 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  store { i64, ptr } %t395, ptr %l194, !tbaa !27
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l21, !tbaa !29
  %t399 = getelementptr %"compiler/ast:TypeParam", ptr %t397, i32 0, i32 1
  %t400 = load i32, ptr %t399, !tbaa !23
  %t403 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t396, i32 %t400)
  store { i64, ptr } %t403, ptr %l198
  br label %bb72
bb72:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load ptr, ptr %l1, !tbaa !29
  %t407 = getelementptr %"compiler/ast:TypeDecl", ptr %t405, i32 0, i32 0
  %t408 = load i32, ptr %t407, !tbaa !23
  %t411 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t404, i32 %t408)
  store { i64, ptr } %t411, ptr %l202
  br label %bb73
bb73:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load ptr, ptr %l21, !tbaa !29
  %t415 = getelementptr %"compiler/ast:TypeParam", ptr %t413, i32 0, i32 1
  %t416 = load i32, ptr %t415, !tbaa !23
  %t419 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t412, i32 %t416)
  store { i64, ptr } %t419, ptr %l206
  br label %bb74
bb74:
  %t420 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t421 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t422 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t423 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t424 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorFieldNamesVar(ptr %s15, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t420, { i64, ptr } %t421, { i64, ptr } %t422, { i64, ptr } %t423)
  store %"compiler/diagmsg:Msg" %t424, ptr %l207
  br label %bb75
bb75:
  %t425 = load ptr, ptr %l183, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l187
  %t427 = load %"compiler/diagmsg:Msg", ptr %l207
  %t428 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t425, %"compiler/source:Span" %t426, %"compiler/diagmsg:Msg" %t427)
  store i64 %t428, ptr %l208
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s15)
  store i32 1, ptr %ws3
  br label %wend3
wend3.c1:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb77:
  %t429 = load i64, ptr %l19, !tbaa !24
  %t431 = add i64 %t429, 1
  store i64 %t431, ptr %l19, !tbaa !24
  br label %bb61
bb78:
  br label %bb79
bb79:
  %t433 = load i64, ptr %l11, !tbaa !24
  %t435 = add i64 %t433, 1
  store i64 %t435, ptr %l11, !tbaa !24
  br label %bb27
bb80:
  br label %bb81
bb81:
  br label %bb16
bb82:
  store i32 2, ptr %ws3
  br label %wend3
wend3.c2:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
wend3:
  %t437 = load ptr, ptr %wh3
  %t438 = load ptr, ptr %wc3
  %t439 = call ptr @llvm.coro.promise(ptr %t437, i32 8, i1 false)
  %t440 = getelementptr { { i32, ptr }, i32 }, ptr %t439, i32 0, i32 1
  store i32 2, ptr %t440
  %t441 = call { i32, ptr } %t438(ptr %t437, ptr null)
  %t442 = load i32, ptr %ws3
  switch i32 %t442, label %wend3.c0 [ i32 1, label %wend3.c1 i32 2, label %wend3.c2 ]
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l49 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 11}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [8 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TypeDecl", ptr %t18, i32 0, i32 4
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t16, i64 %t17, { i64, ptr } %t21)
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = getelementptr %"compiler/ast:TypeDecl", ptr %t25, i32 0, i32 3
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l24, !tbaa !24
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = getelementptr %"compiler/ast:TypeDecl", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  br i1 %t41, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e375dcd56c8db7ae_8ebec7f18eafef7a)
  unreachable
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TypeDecl", ptr %t43, i32 0, i32 3
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = load i64, ptr %l24, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyAttrs(ptr %v0, ptr %v1, ptr %t47, i64 %t48, ptr %t46)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb33
bb14:
  %t50 = load ptr, ptr %l2, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 11}
  %t57 = icmp eq i64 %t55, 0
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb16
bb16:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr { i64, [8 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { ptr }, ptr %t61, i32 0, i32 0
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb28
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Func", ptr %t67, i32 0, i32 8
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t65, i64 %t66, { i64, ptr } %t70)
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 3
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Sig", ptr %t77, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  store { i64, ptr } %t80, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t94, ptr %l49, !tbaa !27
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr ptr, ptr %t98, i64 %t95
  %t100 = load ptr, ptr %t99, !tbaa !39
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l1, !tbaa !24
  %t106 = getelementptr %"compiler/ast:Param", ptr %t100, i32 0, i32 4
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t102, i64 %t103, { i64, ptr } %t107)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t111 = load i64, ptr %l6, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l6, !tbaa !24
  br label %bb21
bb27:
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_f43f80063d96068c_f8dacab5994fea88)
  unreachable
bb33:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t12, i32 %a1)
  store i32 %t16, ptr %l9
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i32, ptr %l9, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t19, ptr %l10
  br label %bb2
bb2:
  %t20 = load i32, ptr %l10, !range !{i32 0, i32 6}
  store i32 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefineValue(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/cond:Value"
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca %"compiler/cond:Value"
  %l11 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/cond:Value"
  %l16 = alloca i32
  %l21 = alloca i32
  %l24 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca i32
  %l33 = alloca i64
  %l34 = alloca ptr
  %l38 = alloca i1
  %l43 = alloca i1
  %l48 = alloca ptr
  %l52 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca i32
  %l61 = alloca i32
  %l64 = alloca %"compiler/check:litv"
  %l65 = alloca i64
  %l66 = alloca ptr
  %l70 = alloca i1
  %l75 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca %"compiler/source:Span"
  %l78 = alloca i32
  %l81 = alloca i64
  %l82 = alloca ptr
  %l86 = alloca i1
  %l87 = alloca i32
  %l89 = alloca i32
  %l94 = alloca ptr
  %s4 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t11, i32 %t12)
  store { i64, ptr } %t15, ptr %l14
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l11, !tbaa !29
  %t17 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t18 = call { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eValueOf(ptr %v0, ptr %v0, ptr %t16, { i64, ptr } %t17)
  %t19 = extractvalue { i32, %"compiler/cond:Value" } %t18, 1
  %t20 = extractvalue { i32, %"compiler/cond:Value" } %t18, 0
  store i32 %t20, ptr %l16
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb3, label %ok.22, !prof !99
ok.22:
  store %"compiler/cond:Value" %t19, ptr %l15
  br label %bb2
bb2:
  %t23 = load %"compiler/cond:Value", ptr %l15
  store %"compiler/cond:Value" %t23, ptr %l7
  br label %bb5
bb3:
  br label %bb4
bb4:
  store ptr null, ptr %rv
  br label %ret
bb5:
  %t25 = load %"compiler/cond:Value", ptr %l7
  store %"compiler/cond:Value" %t25, ptr %l4
  %t26 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 6
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l5, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t33 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l21
  br label %bb6
bb6:
  %t34 = load i32, ptr %l21, !tbaa !23
  store i32 %t34, ptr %l6, !tbaa !23
  %t35 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t36 = load i32, ptr %t35, !range !{i32 0, i32 5}
  %t38 = trunc i64 1 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i32, ptr %l6, !tbaa !23
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t45 = icmp eq i32 %t41, %t42
  store i1 %t45, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t47 = load i1, ptr %l24, !tbaa !21
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l28, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t49, ptr %l29
  %t50 = load i32, ptr %l3, !tbaa !23
  store i32 %t50, ptr %l30, !tbaa !23
  %t51 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  %t54 = icmp ne i64 %t52, 0
  br i1 %t54, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  store i64 1, ptr %l33, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l28, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l29
  %t58 = load i32, ptr %l30, !tbaa !23
  %t59 = load i64, ptr %l33, !tbaa !24
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t56, %"compiler/source:Span" %t57, i32 %t58, i64 %t59)
  store ptr %t60, ptr %l34
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l34, !tbaa !29
  store ptr %t61, ptr %rv
  br label %ret
bb16:
  %t63 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 5}
  %t66 = trunc i64 2 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb17, label %bb18
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load i32, ptr %l6, !tbaa !23
  %t78 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t78, ptr %l43
  br label %bb19
bb18:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb20
bb19:
  %t79 = load i1, ptr %l43, !tbaa !21
  store i1 %t79, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t80 = load i1, ptr %l38, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t83 = load i32, ptr %l3, !tbaa !23
  %t84 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t85 = load i64, ptr %t84, !tbaa !24
  %t90 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t81, %"compiler/source:Span" %t82, i32 %t83, i64 %t85)
  store ptr %t90, ptr %l48
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t91 = load ptr, ptr %l48, !tbaa !29
  store ptr %t91, ptr %rv
  br label %ret
bb24:
  %t93 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t94 = load i32, ptr %t93, !range !{i32 0, i32 5}
  %t96 = trunc i64 2 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %l6, !tbaa !23
  %t108 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t104, i32 %t105)
  store i1 %t108, ptr %l57
  br label %bb27
bb26:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb28
bb27:
  %t109 = load i1, ptr %l57, !tbaa !21
  store i1 %t109, ptr %l52, !tbaa !21
  br label %bb28
bb28:
  %t110 = load i1, ptr %l52, !tbaa !21
  br i1 %t110, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l58, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t112, ptr %l59
  %t113 = load i32, ptr %l3, !tbaa !23
  store i32 %t113, ptr %l60, !tbaa !23
  %t114 = load i32, ptr %l6, !tbaa !23
  store i32 %t114, ptr %l61, !tbaa !23
  %t115 = load i1, ptr %l5, !tbaa !21
  %t116 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t117 = load i64, ptr %t116, !tbaa !24
  %t120 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s4, i1 true, i1 false, i1 %t115, i64 %t117, double 0x0000000000000000)
  store %"compiler/check:litv" %t120, ptr %l64
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t121 = load i32, ptr %l61, !tbaa !23
  %t122 = load %"compiler/check:litv", ptr %l64
  %t123 = call i64 @compiler_2fcheck_2eintFloatBits(i32 %t121, %"compiler/check:litv" %t122)
  store i64 %t123, ptr %l65
  br label %bb32
bb32:
  %t124 = load ptr, ptr %l58, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l59
  %t126 = load i32, ptr %l60, !tbaa !23
  %t127 = load i64, ptr %l65, !tbaa !24
  %t128 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t124, %"compiler/source:Span" %t125, i32 %t126, i64 %t127)
  store ptr %t128, ptr %l66
  br label %bb33
bb33:
  %t129 = load ptr, ptr %l66, !tbaa !29
  call void @__olang_scope_close(ptr %s4)
  store ptr %t129, ptr %rv
  br label %ret
bb34:
  %t131 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t132 = load i32, ptr %t131, !range !{i32 0, i32 5}
  %t134 = trunc i64 3 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb35, label %bb36
bb35:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 2
  %t143 = load i32, ptr %l6, !tbaa !23
  %t146 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t142, i32 %t143)
  store i1 %t146, ptr %l75
  br label %bb37
bb36:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb38
bb37:
  %t147 = load i1, ptr %l75, !tbaa !21
  store i1 %t147, ptr %l70, !tbaa !21
  br label %bb38
bb38:
  %t148 = load i1, ptr %l70, !tbaa !21
  br i1 %t148, label %bb39, label %bb40
bb39:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l76, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t150, ptr %l77
  %t151 = load i32, ptr %l3, !tbaa !23
  store i32 %t151, ptr %l78, !tbaa !23
  %t152 = load i32, ptr %l6, !tbaa !23
  %t153 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 2
  %t154 = load double, ptr %t153, !tbaa !26
  %t157 = call i64 @compiler_2fcheck_2efloatBits(i32 %t152, double %t154)
  store i64 %t157, ptr %l81
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t158 = load ptr, ptr %l76, !tbaa !29
  %t159 = load %"compiler/source:Span", ptr %l77
  %t160 = load i32, ptr %l78, !tbaa !23
  %t161 = load i64, ptr %l81, !tbaa !24
  %t162 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t158, %"compiler/source:Span" %t159, i32 %t160, i64 %t161)
  store ptr %t162, ptr %l82
  br label %bb42
bb42:
  %t163 = load ptr, ptr %l82, !tbaa !29
  store ptr %t163, ptr %rv
  br label %ret
bb43:
  %t165 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t166 = load i32, ptr %t165, !range !{i32 0, i32 5}
  %t168 = trunc i64 4 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb44, label %bb45
bb44:
  %t171 = load i32, ptr %l3, !tbaa !23
  store i32 %t171, ptr %l87, !tbaa !23
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t172)
  store i32 %t174, ptr %l89
  br label %bb46
bb45:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb47
bb46:
  %t175 = load i32, ptr %l87, !tbaa !23
  %t176 = load i32, ptr %l89, !tbaa !23
  %t177 = icmp eq i32 %t175, %t176
  store i1 %t177, ptr %l86, !tbaa !21
  br label %bb47
bb47:
  %t179 = load i1, ptr %l86, !tbaa !21
  br i1 %t179, label %bb48, label %bb49
bb48:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load %"compiler/source:Span", ptr %l1
  %t182 = load i32, ptr %l2, !tbaa !23
  %t186 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v1, ptr %t180, %"compiler/source:Span" %t181, i32 %t182)
  store ptr %t186, ptr %l94
  br label %bb50
bb49:
  br label %bb51
bb50:
  %t187 = load ptr, ptr %l94, !tbaa !29
  store ptr %t187, ptr %rv
  br label %ret
bb51:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edoFor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, i64, i64 }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i64
  %l22 = alloca { i64, i64, i64 }
  %l27 = alloca ptr
  %l32 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca i32
  %l49 = alloca i64
  %l51 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca i32
  %l61 = alloca ptr
  %l64 = alloca i64
  %l68 = alloca { i64, i64, i64 }
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l77 = alloca ptr
  %l79 = alloca ptr
  %l85 = alloca ptr
  %t148 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 44
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load i64, ptr %l18, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t12 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 2, %"compiler/source:Span" %t8)
  store { i64, i64, i64 } %t12, ptr %l22
  br label %bb2
bb2:
  %t13 = load { i64, i64, i64 }, ptr %l22
  store { i64, i64, i64 } %t13, ptr %l5
  %t14 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  %t17 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l7, !tbaa !24
  %t20 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l8, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l27
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l27, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 10
  %t29 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l32
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l32, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 11
  %t38 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t37, i64 %t38)
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopEnter(ptr %v0, ptr %t41)
  br label %bb7
bb7:
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t49, { i64, ptr } %t50)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t53)
  store ptr %t55, ptr %l44
  br label %bb12
bb12:
  %t56 = load ptr, ptr %l44, !tbaa !29
  %t58 = getelementptr %"compiler/check:frame", ptr %t56, i32 0, i32 10
  %t60 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t58)
  %t61 = extractvalue { i32, i64 } %t60, 1
  %t62 = extractvalue { i32, i64 } %t60, 0
  store i32 %t62, ptr %l48
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb14, label %ok.64, !prof !99
ok.64:
  store i64 %t61, ptr %l47
  br label %bb13
bb13:
  %t65 = load i64, ptr %l47, !tbaa !24
  store i64 %t65, ptr %l42, !tbaa !24
  br label %bb16
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t66)
  store ptr %t68, ptr %l51
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l51, !tbaa !29
  %t71 = getelementptr %"compiler/check:frame", ptr %t69, i32 0, i32 11
  %t73 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t71)
  %t74 = extractvalue { i32, i64 } %t73, 1
  %t75 = extractvalue { i32, i64 } %t73, 0
  store i32 %t75, ptr %l55
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb19, label %ok.77, !prof !99
ok.77:
  store i64 %t74, ptr %l54
  br label %bb18
bb18:
  %t78 = load i64, ptr %l54, !tbaa !24
  store i64 %t78, ptr %l49, !tbaa !24
  br label %bb21
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t82 = load i64, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l4, !tbaa !24
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t79, i64 %t80, i64 %t81, i64 %t82, i64 %t83)
  store ptr %t89, ptr %l61
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l61, !tbaa !29
  store ptr %t90, ptr %l9, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 44
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t93)
  store i64 %t95, ptr %l64
  br label %bb23
bb23:
  %t96 = load i64, ptr %l64, !tbaa !24
  store i64 %t96, ptr %l10, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l1
  %t102 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t97, i32 3, %"compiler/source:Span" %t98)
  store { i64, i64, i64 } %t102, ptr %l68
  br label %bb24
bb24:
  %t103 = load { i64, i64, i64 }, ptr %l68
  store { i64, i64, i64 } %t103, ptr %l11
  %t104 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 0
  %t105 = load i64, ptr %t104, !tbaa !24
  store i64 %t105, ptr %l12, !tbaa !24
  %t107 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 1
  %t108 = load i64, ptr %t107, !tbaa !24
  store i64 %t108, ptr %l13, !tbaa !24
  %t110 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 2
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %l14, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l72, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l73, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t115, ptr %l74
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v2, ptr %v0, ptr %t116, ptr %a3)
  store ptr %t120, ptr %l77
  br label %bb25
bb25:
  %t121 = load i64, ptr %l6, !tbaa !24
  %t122 = load ptr, ptr %l73, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l74
  %t124 = load ptr, ptr %l77, !tbaa !29
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t122, %"compiler/source:Span" %t123, ptr %t124, i64 %t121)
  store ptr %t126, ptr %l79
  br label %bb26
bb26:
  %t127 = load ptr, ptr %l72, !tbaa !29
  %t128 = load ptr, ptr %l79, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t127, ptr %t128)
  br label %bb27
bb27:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l12, !tbaa !24
  %t131 = load i64, ptr %l13, !tbaa !24
  %t132 = load i64, ptr %l14, !tbaa !24
  %t133 = load i64, ptr %l10, !tbaa !24
  %t139 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t129, i64 %t130, i64 %t131, i64 %t132, i64 %t133)
  store ptr %t139, ptr %l85
  br label %bb28
bb28:
  %t140 = load ptr, ptr %l85, !tbaa !29
  store ptr %t140, ptr %l15, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopLeave(ptr %v0, ptr %t141)
  br label %bb29
bb29:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load %"compiler/source:Span", ptr %l1
  %t145 = load ptr, ptr %l9, !tbaa !29
  %t146 = load ptr, ptr %l15, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t148
  %t149 = getelementptr { i64, [3 x i64] }, ptr %t148, i32 0, i32 0
  store i64 4, ptr %t149
  %t151 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t144, 0
  %t153 = insertvalue { %"compiler/source:Span", ptr, ptr } %t151, ptr %t145, 1
  %t155 = insertvalue { %"compiler/source:Span", ptr, ptr } %t153, ptr %t146, 2
  %t156 = getelementptr { i64, [3 x i64] }, ptr %t148, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t155, ptr %t156
  %t157 = load { i64, [3 x i64] }, ptr %t148
  %t159 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t157, ptr %t159
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t143, ptr %t159)
  br label %bb30
bb30:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsFitted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l27 = alloca i64
  %l36 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca %"compiler/source:Span"
  %l48 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca i32
  %l59 = alloca i32
  %l63 = alloca { i64, ptr }
  %l68 = alloca %"compiler/typed:Make"
  %rv = alloca ptr
  %t125 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l4
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb23
bb5:
  %t22 = load ptr, ptr %l5, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Make", ptr %t22, i32 0, i32 0
  %t25 = load i32, ptr %t24, !range !{i32 0, i32 5}
  %t27 = trunc i64 2 to i32
  %t28 = icmp eq i32 %t25, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  store ptr null, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 43
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l27
  br label %bb9
bb9:
  %t38 = load i64, ptr %l27, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Make", ptr %t39, i32 0, i32 2
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t56, ptr %l36, !tbaa !27
  %t57 = load i64, ptr %l8, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr ptr, ptr %t60, i64 %t57
  %t62 = load ptr, ptr %t61, !tbaa !39
  store ptr %t62, ptr %l10, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 43
  store ptr %t66, ptr %l40, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l41, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l10, !tbaa !29
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunadapted(ptr %v0, ptr %v1, ptr %v1, ptr %t68, ptr %t69)
  store ptr %t72, ptr %l44
  br label %bb14
bb14:
  %t73 = load i32, ptr %l2, !tbaa !23
  store i32 %t73, ptr %l45, !tbaa !23
  %t74 = load ptr, ptr %l10, !tbaa !29
  %t76 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t74)
  store %"compiler/source:Span" %t76, ptr %l47
  br label %bb15
bb15:
  %t77 = load ptr, ptr %l41, !tbaa !29
  %t78 = load ptr, ptr %l44, !tbaa !29
  %t79 = load i32, ptr %l45, !tbaa !23
  %t80 = load %"compiler/source:Span", ptr %l47
  %t81 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t77, ptr %t78, i32 %t79, %"compiler/source:Span" %t80)
  store ptr %t81, ptr %l48
  br label %bb16
bb16:
  %t82 = load ptr, ptr %l40, !tbaa !29
  %t83 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t82, ptr %t83)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t84 = load i64, ptr %l8, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l8, !tbaa !24
  br label %bb10
bb19:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l2, !tbaa !23
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t93, i32 %t94, i32 %a3)
  store i32 %t99, ptr %l56
  br label %bb20
bb20:
  %t100 = load i32, ptr %l56, !tbaa !23
  %t101 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t101, ptr %l57
  store i32 %t100, ptr %l58, !tbaa !23
  store i32 2, ptr %l59
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 43
  %t106 = load i64, ptr %l6, !tbaa !24
  %t109 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t105, i64 %t106)
  store { i64, ptr } %t109, ptr %l63
  br label %bb21
bb21:
  %t110 = load ptr, ptr %l5, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Make", ptr %t110, i32 0, i32 4
  %t113 = load i32, ptr %t112, !tbaa !23
  %t114 = load ptr, ptr %l5, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Make", ptr %t114, i32 0, i32 5
  %t117 = load i32, ptr %t116, !range !{i32 0, i32 4}
  %t118 = load i32, ptr %l59, !range !{i32 0, i32 5}
  %t119 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t122 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t118, i64 0, { i64, ptr } %t119, ptr null, i32 %t113, i32 %t117, i1 false)
  store %"compiler/typed:Make" %t122, ptr %l68
  br label %bb22
bb22:
  %t123 = load %"compiler/typed:Make", ptr %l68
  %t124 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t123, ptr %t124
  store { i64, [5 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [5 x i64] }, ptr %t125, i32 0, i32 0
  store i64 7, ptr %t126
  %t127 = load %"compiler/source:Span", ptr %l57
  %t128 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t127, 0
  %t129 = load i32, ptr %l58, !tbaa !23
  %t130 = insertvalue { %"compiler/source:Span", i32, ptr } %t128, i32 %t129, 1
  %t132 = insertvalue { %"compiler/source:Span", i32, ptr } %t130, ptr %t124, 2
  %t133 = getelementptr { i64, [5 x i64] }, ptr %t125, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t132, ptr %t133
  %t134 = load { i64, [5 x i64] }, ptr %t125
  %t136 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t134, ptr %t136
  store ptr %t136, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store ptr null, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_55099d59d3c2415d_7883b81e4d83cfd9)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca %"compiler/diagmsg:Msg"
  %l33 = alloca i64
  %l37 = alloca ptr
  %l45 = alloca ptr
  %l52 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  store i1 %t6, ptr %l5, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v2, ptr %t7, ptr %t8)
  store i1 %t11, ptr %l12
  br label %bb2
bb2:
  %t12 = load i1, ptr %l12, !tbaa !21
  store i1 %t12, ptr %l6, !tbaa !21
  %t13 = load i1, ptr %l5, !tbaa !21
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i1, ptr %l6, !tbaa !21
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store ptr null, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load i1, ptr %l5, !tbaa !21
  br i1 %t23, label %bb9, label %bb10
bb9:
  %t25 = load i1, ptr %l6, !tbaa !21
  store i1 %t25, ptr %l20, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t27 = load i1, ptr %l20, !tbaa !21
  br i1 %t27, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordPath(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i1 %t32, ptr %l24
  br label %bb14
bb13:
  br label %bb25
bb14:
  %t33 = load i1, ptr %l24, !tbaa !21
  br i1 %t33, label %bb15, label %bb16
bb15:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t38 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordPath(ptr %v0, ptr %v2, ptr %t34, ptr %t35)
  store i1 %t38, ptr %l28
  br label %bb17
bb16:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb18
bb17:
  %t39 = load i1, ptr %l28, !tbaa !21
  store i1 %t39, ptr %l25, !tbaa !21
  br label %bb18
bb18:
  %t40 = load i1, ptr %l25, !tbaa !21
  br i1 %t40, label %bb19, label %bb20
bb19:
  store ptr null, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l30, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t43, ptr %l31
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtComparedToCaught(ptr %v0)
  store %"compiler/diagmsg:Msg" %t44, ptr %l32
  br label %bb22
bb22:
  %t45 = load ptr, ptr %l30, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l31
  %t47 = load %"compiler/diagmsg:Msg", ptr %l32
  %t48 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t45, %"compiler/source:Span" %t46, %"compiler/diagmsg:Msg" %t47)
  store i64 %t48, ptr %l33
  br label %bb23
bb23:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l1
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t49, %"compiler/source:Span" %t50, i32 %t51, i64 0)
  store ptr %t55, ptr %l37
  br label %bb24
bb24:
  %t56 = load ptr, ptr %l37, !tbaa !29
  store ptr %t56, ptr %rv
  br label %ret
bb25:
  %t58 = load i1, ptr %l5, !tbaa !21
  br i1 %t58, label %bb26, label %bb27
bb26:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l1
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCompareItem(ptr %v0, ptr %v2, ptr %v1, ptr %v3, ptr %t60, %"compiler/source:Span" %t61, i32 %t62, ptr %t63, ptr %t64)
  store ptr %t70, ptr %l45
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t71 = load ptr, ptr %l45, !tbaa !29
  store ptr %t71, ptr %rv
  br label %ret
bb29:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  %t75 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t83 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCompareItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t73, %"compiler/source:Span" %t74, i32 %t75, ptr %t76, ptr %t77)
  store ptr %t83, ptr %l52
  br label %bb30
bb30:
  %t84 = load ptr, ptr %l52, !tbaa !29
  store ptr %t84, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i32
  %l12 = alloca i32
  %l17 = alloca i1
  %l24 = alloca { i64, ptr }
  %l30 = alloca %"compiler/source:Span"
  %l38 = alloca ptr
  %l42 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca i1
  %l58 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca i1
  %l62 = alloca i1
  %l64 = alloca ptr
  %l68 = alloca i1
  %l69 = alloca i32
  %l70 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t19 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = icmp ne i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i32, ptr %l2, !tbaa !23
  store i32 %t11, ptr %l12, !tbaa !23
  %t12 = icmp sge i64 1, 0
  br i1 %t12, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t14 = icmp sle i64 1, 2305843009213693951
  br i1 %t14, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_414cc8b7f33d3de6_fda2437ae6b3c3f2)
  unreachable
bb6:
  %t16 = mul i64 1, 4
  %t17 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t16)
  %t18 = load i32, ptr %l12, !tbaa !23
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, 1
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr i32, ptr %t17, i64 %t23
  store i32 %t18, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 1, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t17, 1
  store { i64, ptr } %t28, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_414cc8b7f33d3de6_fda2437ae6b3c3f2)
  unreachable
bb8:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = call i1 @compiler_2fcheck_2eisMember(ptr %v1, ptr %t30)
  store i1 %t32, ptr %l17
  br label %bb9
bb9:
  %t33 = load i1, ptr %l17, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = icmp sge i64 0, 0
  br i1 %t36, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  %t38 = icmp sle i64 0, 2305843009213693951
  br i1 %t38, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_9722fccfe35ee7b_558e4c381c37f7e7)
  unreachable
bb14:
  %t40 = mul i64 0, 4
  %t41 = insertvalue { i64, ptr } undef, i64 0, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_9722fccfe35ee7b_558e4c381c37f7e7)
  unreachable
bb16:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t48 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %v2, ptr %t44, ptr %t45)
  store { i64, ptr } %t48, ptr %l24
  br label %bb17
bb17:
  %t49 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t49, ptr %l3, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t54 = icmp slt i64 %t52, 2
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t58)
  store %"compiler/source:Span" %t60, ptr %l30
  br label %bb21
bb21:
  %t61 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t61, ptr %l4
  %t62 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t63 = load i32, ptr %t62, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t67 = mul i64 %t65, 4294967296
  %t68 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 1
  %t69 = load i32, ptr %t68, !tbaa !23
  %t71 = sext i32 %t69 to i64
  %t74 = add i64 %t67, %t71
  store i64 %t74, ptr %l5, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t76)
  store ptr %t78, ptr %l38
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l38, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 63
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t81, i64 %t82)
  store i1 %t85, ptr %l42
  br label %bb23
bb23:
  %t86 = load i1, ptr %l42, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb24, label %bb25
bb24:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t93 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equietPlace(ptr %v0, ptr %v1, ptr %v0, ptr %t89, ptr %t90)
  store ptr %t93, ptr %l46
  br label %bb26
bb25:
  br label %bb34
bb26:
  %t94 = load ptr, ptr %l46, !tbaa !29
  store ptr %t94, ptr %l6, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t95)
  store ptr %t97, ptr %l48
  br label %bb27
bb27:
  %t98 = load ptr, ptr %l48, !tbaa !29
  %t100 = getelementptr %"compiler/check:frame", ptr %t98, i32 0, i32 63
  store ptr %t100, ptr %l50, !tbaa !29
  %t101 = load i64, ptr %l5, !tbaa !24
  store i64 %t101, ptr %l51, !tbaa !24
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb28, label %bb29
bb28:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  store ptr %t113, ptr %l58, !tbaa !29
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t116 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t114)
  store i32 %t116, ptr %l60
  br label %bb30
bb29:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb32
bb30:
  %t117 = load ptr, ptr %l58, !tbaa !29
  %t118 = load i32, ptr %l60, !tbaa !23
  %t119 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t117, i32 %t118)
  store i1 %t119, ptr %l61
  br label %bb31
bb31:
  %t120 = load i1, ptr %l61, !tbaa !21
  store i1 %t120, ptr %l55, !tbaa !21
  br label %bb32
bb32:
  %t121 = load ptr, ptr %l50, !tbaa !29
  %t122 = load i64, ptr %l51, !tbaa !24
  %t123 = load i1, ptr %l55, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t121, i64 %t122, i1 %t123)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t124)
  store ptr %t126, ptr %l64
  br label %bb35
bb35:
  %t127 = load ptr, ptr %l64, !tbaa !29
  %t129 = getelementptr %"compiler/check:frame", ptr %t127, i32 0, i32 63
  %t130 = load i64, ptr %l5, !tbaa !24
  %t133 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t129, i64 %t130)
  %t134 = extractvalue { i32, i1 } %t133, 1
  %t135 = extractvalue { i32, i1 } %t133, 0
  store i32 %t135, ptr %l69
  %t136 = icmp ne i32 %t135, 0
  br i1 %t136, label %bb37, label %ok.137, !prof !99
ok.137:
  store i1 %t134, ptr %l68
  br label %bb36
bb36:
  %t138 = load i1, ptr %l68, !tbaa !21
  store i1 %t138, ptr %l62, !tbaa !21
  br label %bb39
bb37:
  br label %bb38
bb38:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb39
bb39:
  %t139 = load i1, ptr %l62, !tbaa !21
  br i1 %t139, label %bb40, label %bb41
bb40:
  %t140 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t140, ptr %l70, !tbaa !27
  br label %bb46
bb41:
  %t142 = icmp sge i64 0, 0
  br i1 %t142, label %bb42, label %bb43
bb42:
  %t144 = icmp sle i64 0, 2305843009213693951
  br i1 %t144, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_9c172245b700a898_5abd6adb0e722504)
  unreachable
bb44:
  %t146 = mul i64 0, 4
  %t147 = insertvalue { i64, ptr } undef, i64 0, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t148, ptr %l70, !tbaa !27
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_9c172245b700a898_5abd6adb0e722504)
  unreachable
bb46:
  %t150 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t150, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/check:factsMark"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:factsMark"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 50
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l6
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 46
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l9
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 62
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = call %"compiler/check:factsMark" @compiler_2fcheck_3afactsMark_2ector(ptr %s0, i64 %t20, i64 %t21, i64 %t22)
  store %"compiler/check:factsMark" %t23, ptr %l13
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load %"compiler/check:factsMark", ptr %l13
  store %"compiler/check:factsMark" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:factsMark", ptr %rv
  ret %"compiler/check:factsMark" %rr
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
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNamesType(ptr %s4, ptr %v0, { i64, ptr } %t114)
  store %"compiler/diagmsg:Msg" %t116, ptr %l65
  br label %bb16
bb16:
  %t117 = load ptr, ptr %l47, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l59
  %t119 = load %"compiler/diagmsg:Msg", ptr %l65
  %t120 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t117, %"compiler/source:Span" %t118, %"compiler/diagmsg:Msg" %t119)
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
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %t190, %"compiler/source:Span" %t191, i32 %t196, i1 true)
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
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %v0, { i64, ptr } %t261)
  store %"compiler/diagmsg:Msg" %t262, ptr %l129
  br label %bb56
bb56:
  %t263 = load ptr, ptr %l114, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l120
  %t265 = load %"compiler/diagmsg:Msg", ptr %l129
  %t266 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t263, %"compiler/source:Span" %t264, %"compiler/diagmsg:Msg" %t265)
  store i64 %t266, ptr %l130
  br label %bb57
bb57:
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
  %t314 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %v0, { i64, ptr } %t313)
  store %"compiler/diagmsg:Msg" %t314, ptr %l154
  br label %bb69
bb69:
  %t315 = load ptr, ptr %l147, !tbaa !29
  %t316 = load %"compiler/source:Span", ptr %l149
  %t317 = load %"compiler/diagmsg:Msg", ptr %l154
  %t318 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t315, %"compiler/source:Span" %t316, %"compiler/diagmsg:Msg" %t317)
  store i64 %t318, ptr %l155
  br label %bb70
bb70:
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

define dso_local %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l16 = alloca i64
  %l17 = alloca %"compiler/check:litv"
  %l21 = alloca %"compiler/check:litv"
  %rv = alloca %"compiler/check:litv"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
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
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 113}
  store i32 %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t24 = trunc i64 4 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l2
  %t31 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %t27, %"compiler/source:Span" %t28)
  store i64 %t31, ptr %l16
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t32 = load i64, ptr %l16, !tbaa !24
  %t33 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t32)
  store %"compiler/check:litv" %t33, ptr %l17
  br label %bb9
bb9:
  %t34 = load %"compiler/check:litv", ptr %l17
  store %"compiler/check:litv" %t34, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_2bda502508e1b1d_a3083ba563ab0481)
  unreachable
bb16:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t40 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store %"compiler/check:litv" %t40, ptr %l21
  br label %bb17
bb17:
  %t41 = load %"compiler/check:litv", ptr %l21
  store %"compiler/check:litv" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsSelf(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l30 = alloca i64
  %l50 = alloca i1
  %l52 = alloca i1
  %l55 = alloca i32
  %l64 = alloca i32
  %l69 = alloca i64
  %l71 = alloca i64
  %l76 = alloca i32
  %l80 = alloca i64
  %l84 = alloca i64
  %l86 = alloca i1
  %l101 = alloca i1
  %l108 = alloca i32
  %l113 = alloca i32
  %l118 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca i32
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
  store ptr %t1, ptr %l16, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t7, i32 %a2)
  store i32 %t11, ptr %l21
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l16, !tbaa !29
  %t13 = load i32, ptr %l21, !tbaa !23
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l22
  br label %bb2
bb2:
  %t15 = load i32, ptr %l22, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l23
  br label %bb3
bb3:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  store i64 16, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load i64, ptr %l7, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb9
bb6:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l7, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l30, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l30, !tbaa !24
  store i64 %t44, ptr %l27, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  br label %bb55
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l10, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l3, !tbaa !23
  %t68 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l50
  br label %bb14
bb14:
  %t69 = load i1, ptr %l50, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb16:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l3, !tbaa !23
  %t76 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l55
  br label %bb17
bb17:
  %t77 = load i32, ptr %l55, !range !{i32 0, i32 6}
  %t79 = trunc i64 4 to i32
  %t80 = icmp eq i32 %t77, %t79
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l52, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l3, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l64
  br label %bb22
bb22:
  %t96 = load i32, ptr %l64, !tbaa !23
  store i32 %t96, ptr %l11, !tbaa !23
  %t97 = load i32, ptr %l11, !tbaa !23
  %t98 = load i32, ptr %l1, !tbaa !23
  %t101 = icmp eq i32 %t97, %t98
  br i1 %t101, label %bb23, label %bb24
bb23:
  store ptr %l4, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb24:
  br label %bb41
bb25:
  %t104 = load i64, ptr %l13, !tbaa !24
  store i64 %t104, ptr %l69, !tbaa !24
  %t105 = load ptr, ptr %l12, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eLen_3ccompiler_2ftypes_3aDeclId_3e(ptr %s0, ptr %t105)
  store i64 %t107, ptr %l71
  br label %bb26
bb26:
  %t108 = load i64, ptr %l69, !tbaa !24
  %t109 = load i64, ptr %l71, !tbaa !24
  %t110 = icmp slt i64 %t108, %t109
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb27, label %bb28
bb27:
  br label %bb40
bb28:
  br label %bb29
bb29:
  %t114 = load ptr, ptr %l12, !tbaa !29
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eAt_3ccompiler_2ftypes_3aDeclId_3e(ptr %s0, ptr %t114, i64 %t115)
  store i32 %t118, ptr %l76
  br label %bb30
bb30:
  %t119 = load i32, ptr %l76, !tbaa !23
  store i32 %t119, ptr %l14, !tbaa !23
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t124 = load i32, ptr %l14, !tbaa !23
  %t127 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t123, i32 %t124)
  store i64 %t127, ptr %l80
  br label %bb31
bb31:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t131, i32 %t132)
  store i64 %t135, ptr %l84
  br label %bb32
bb32:
  %t136 = load i64, ptr %l80, !tbaa !24
  %t137 = load i64, ptr %l84, !tbaa !24
  %t138 = icmp eq i64 %t136, %t137
  br i1 %t138, label %bb33, label %bb34
bb33:
  %t140 = load i32, ptr %l14, !tbaa !23
  %t142 = sext i32 %t140 to i64
  %t143 = load i32, ptr %l1, !tbaa !23
  %t145 = sext i32 %t143 to i64
  %t148 = icmp sgt i64 %t142, %t145
  store i1 %t148, ptr %l86, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb35
bb35:
  %t150 = load i1, ptr %l86, !tbaa !21
  br i1 %t150, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t152 = load i64, ptr %l13, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l13, !tbaa !24
  br label %bb25
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb41:
  %t157 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePush_3ccompiler_2ftypes_3aDeclId_3e(ptr %s0, ptr %l4, i32 %t157)
  br label %bb42
bb42:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t164 = load i32, ptr %l3, !tbaa !23
  %t167 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t167, ptr %l101
  br label %bb43
bb43:
  %t168 = load i1, ptr %l101, !tbaa !21
  %t169 = xor i1 %t168, true
  br i1 %t169, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/check:Checker", ptr %t172, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/generic:Program", ptr %t175, i32 0, i32 2
  %t178 = load i32, ptr %l3, !tbaa !23
  %t181 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t181, ptr %l108
  br label %bb47
bb47:
  %t182 = load i32, ptr %l108, !tbaa !23
  store i32 %t182, ptr %l15, !tbaa !23
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  %t189 = load i32, ptr %l15, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l113
  br label %bb48
bb48:
  %t193 = load i32, ptr %l113, !range !{i32 0, i32 33}
  %t195 = trunc i64 19 to i32
  %t196 = icmp eq i32 %t193, %t195
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l118, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/check:Checker", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t208 = load i32, ptr %l15, !tbaa !23
  %t211 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t211, ptr %l123
  br label %bb52
bb52:
  %t212 = load ptr, ptr %l118, !tbaa !29
  %t213 = load i32, ptr %l123, !tbaa !23
  %t214 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t212, i32 %t213)
  store i32 %t214, ptr %l124
  br label %bb53
bb53:
  %t215 = load i32, ptr %l124, !tbaa !23
  store i32 %t215, ptr %l3, !tbaa !23
  br label %bb54
bb54:
  %t216 = load i64, ptr %l9, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l9, !tbaa !24
  br label %bb10
bb55:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca ptr
  %t3 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [5 x i64] }, ptr %t3, i32 0, i32 0
  store i64 0, ptr %t4
  %t6 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %a1, 0
  %t8 = insertvalue { %"compiler/source:Span", i32, i64 } %t6, i32 %t2, 1
  %t9 = insertvalue { %"compiler/source:Span", i32, i64 } %t8, i64 0, 2
  %t10 = getelementptr { i64, [5 x i64] }, ptr %t3, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t9, ptr %t10
  %t11 = load { i64, [5 x i64] }, ptr %t3
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t11, ptr %t13
  store ptr %t13, ptr %rv
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
  %l30 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca %"compiler/check:reflList"
  %l45 = alloca ptr
  %l49 = alloca %"compiler/check:reflVal"
  %l51 = alloca { i64, ptr }
  %l53 = alloca %"compiler/check:reflVal"
  %l54 = alloca %"compiler/check:reflVal"
  %l57 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca { i64, ptr }
  %l64 = alloca %"compiler/source:Span"
  %l66 = alloca %"compiler/diagmsg:Msg"
  %l67 = alloca i64
  %l70 = alloca ptr
  %l75 = alloca i32
  %l81 = alloca ptr
  %l85 = alloca ptr
  %l88 = alloca ptr
  %l98 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca ptr
  %l113 = alloca i32
  %l114 = alloca i32
  %l117 = alloca i32
  %l120 = alloca i1
  %l129 = alloca ptr
  %l136 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca i32
  %l140 = alloca i64
  %l143 = alloca %"compiler/source:Span"
  %l144 = alloca i64
  %l147 = alloca ptr
  %l148 = alloca %"compiler/source:Span"
  %l149 = alloca %"compiler/source:Span"
  %l150 = alloca i64
  %l154 = alloca ptr
  %l155 = alloca ptr
  %l156 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca i32
  %l168 = alloca i32
  %l173 = alloca ptr
  %l179 = alloca ptr
  %l184 = alloca ptr
  %l188 = alloca ptr
  %s3 = alloca %olang.scope
  %s11 = alloca %olang.scope
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
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = call i1 @compiler_2fast_2eSlicing(ptr %v2, { i64, ptr } %t25)
  store i1 %t27, ptr %l30
  br label %bb7
bb7:
  %t28 = load i1, ptr %l30, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load %"compiler/source:Span", ptr %l1
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t29, %"compiler/source:Span" %t30, ptr %t31, { i64, ptr } %t32)
  store ptr %t37, ptr %l35
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t38 = load ptr, ptr %l35, !tbaa !29
  store ptr %t38, ptr %rv
  br label %ret
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t43 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t39, ptr %t40)
  store %"compiler/check:reflList" %t43, ptr %l38
  br label %bb12
bb12:
  %t44 = load %"compiler/check:reflList", ptr %l38
  store %"compiler/check:reflList" %t44, ptr %l5
  %t45 = getelementptr %"compiler/check:reflList", ptr %l5, i32 0, i32 0
  %t46 = load i1, ptr %t45, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = getelementptr %"compiler/check:reflList", ptr %l5, i32 0, i32 1
  %t49 = load i32, ptr %t48, !tbaa !23
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t53 = icmp eq i32 %t49, %t50
  br i1 %t53, label %bb15, label %bb16
bb14:
  br label %bb40
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load %"compiler/source:Span", ptr %l1
  %t59 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t55, %"compiler/source:Span" %t56)
  store ptr %t59, ptr %l45
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  %t60 = load ptr, ptr %l45, !tbaa !29
  store ptr %t60, ptr %rv
  br label %ret
bb18:
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t65 = icmp eq i64 %t63, 1
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t68, ptr %l51, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr ptr, ptr %t70, i64 0
  %t72 = load ptr, ptr %t71, !tbaa !39
  %t75 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflInt(ptr %v0, ptr %v2, ptr %s3, ptr %t67, ptr %t72)
  store %"compiler/check:reflVal" %t75, ptr %l53
  br label %bb21
bb20:
  %t76 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %s3)
  store %"compiler/check:reflVal" %t76, ptr %l54
  br label %bb22
bb21:
  %t77 = load %"compiler/check:reflVal", ptr %l53
  store %"compiler/check:reflVal" %t77, ptr %l49
  br label %bb23
bb22:
  %t78 = load %"compiler/check:reflVal", ptr %l54
  store %"compiler/check:reflVal" %t78, ptr %l49
  br label %bb23
bb23:
  %t79 = load %"compiler/check:reflVal", ptr %l49
  store %"compiler/check:reflVal" %t79, ptr %l6
  %t80 = getelementptr %"compiler/check:reflVal", ptr %l6, i32 0, i32 0
  %t81 = load i1, ptr %t80, !tbaa !21
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l57, !tbaa !29
  %t86 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t90 = icmp sgt i64 %t88, 0
  br i1 %t90, label %bb26, label %bb27
bb25:
  br label %bb33
bb26:
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t92, ptr %l62, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 0
  %t96 = load ptr, ptr %t95, !tbaa !39
  %t98 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t96)
  store %"compiler/source:Span" %t98, ptr %l64
  br label %bb28
bb27:
  %t99 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t99, ptr %l61
  br label %bb29
bb28:
  %t101 = load %"compiler/source:Span", ptr %l64
  store %"compiler/source:Span" %t101, ptr %l61
  br label %bb29
bb29:
  %t102 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexNotConst(ptr %v0)
  store %"compiler/diagmsg:Msg" %t102, ptr %l66
  br label %bb30
bb30:
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l61
  %t105 = load %"compiler/diagmsg:Msg", ptr %l66
  %t106 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t103, %"compiler/source:Span" %t104, %"compiler/diagmsg:Msg" %t105)
  store i64 %t106, ptr %l67
  br label %bb31
bb31:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l1
  %t111 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t107, %"compiler/source:Span" %t108)
  store ptr %t111, ptr %l70
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s3)
  %t112 = load ptr, ptr %l70, !tbaa !29
  store ptr %t112, ptr %rv
  br label %ret
bb33:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l1
  %t115 = load %"compiler/check:reflList", ptr %l5
  %t116 = getelementptr %"compiler/check:reflVal", ptr %l6, i32 0, i32 2
  %t117 = load i64, ptr %t116, !tbaa !24
  %t122 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %t113, %"compiler/source:Span" %t114, %"compiler/check:reflList" %t115, i64 %t117)
  store i32 %t122, ptr %l75
  br label %bb34
bb34:
  %t123 = load i32, ptr %l75, !tbaa !23
  store i32 %t123, ptr %l7, !tbaa !23
  %t124 = load i32, ptr %l7, !tbaa !23
  %t125 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t128 = icmp eq i32 %t124, %t125
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l1
  %t134 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t130, %"compiler/source:Span" %t131)
  store ptr %t134, ptr %l81
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  %t135 = load ptr, ptr %l81, !tbaa !29
  store ptr %t135, ptr %rv
  br label %ret
bb38:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l1
  %t138 = load i32, ptr %l7, !tbaa !23
  %t142 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v3, ptr %t136, %"compiler/source:Span" %t137, i32 %t138)
  store ptr %t142, ptr %l85
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s3)
  %t143 = load ptr, ptr %l85, !tbaa !29
  store ptr %t143, ptr %rv
  br label %ret
bb40:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t148 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v3, ptr %t144, ptr %t145)
  store ptr %t148, ptr %l88
  br label %bb41
bb41:
  %t149 = load ptr, ptr %l88, !tbaa !29
  store ptr %t149, ptr %l8, !tbaa !29
  %t150 = load ptr, ptr %l8, !tbaa !29
  %t152 = icmp eq ptr %t150, null
  br i1 %t152, label %bb42, label %bb43
bb42:
  %t154 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t154, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t156 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  store i64 %t158, ptr %l11, !tbaa !24
  br label %bb44
bb43:
  br label %bb52
bb44:
  %t160 = load i64, ptr %l10, !tbaa !24
  %t161 = load i64, ptr %l11, !tbaa !24
  %t164 = icmp slt i64 %t160, %t161
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb45, label %bb46
bb45:
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t168 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t168, ptr %l98, !tbaa !27
  %t169 = load i64, ptr %l10, !tbaa !24
  %t171 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr ptr, ptr %t172, i64 %t169
  %t174 = load ptr, ptr %t173, !tbaa !39
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t183 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t176, ptr %t174, i32 %t179)
  store ptr %t183, ptr %l105
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t184 = load i64, ptr %l10, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l10, !tbaa !24
  br label %bb44
bb50:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load %"compiler/source:Span", ptr %l1
  %t192 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t188, %"compiler/source:Span" %t189)
  store ptr %t192, ptr %l110
  br label %bb51
bb51:
  %t193 = load ptr, ptr %l110, !tbaa !29
  store ptr %t193, ptr %rv
  br label %ret
bb52:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l111, !tbaa !29
  %t195 = load ptr, ptr %l8, !tbaa !29
  %t197 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v3, ptr %t195)
  store i32 %t197, ptr %l113
  br label %bb53
bb53:
  %t198 = load ptr, ptr %l111, !tbaa !29
  %t199 = load i32, ptr %l113, !tbaa !23
  %t200 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t198, i32 %t199)
  store i32 %t200, ptr %l114
  br label %bb54
bb54:
  %t201 = load i32, ptr %l114, !tbaa !23
  store i32 %t201, ptr %l13, !tbaa !23
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i32, ptr %l13, !tbaa !23
  %t206 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l117
  br label %bb55
bb55:
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t208 = load i32, ptr %l117, !tbaa !23
  %t210 = icmp eq i32 %t208, %t207
  br i1 %t210, label %bb56, label %bb57
bb56:
  %t212 = load i32, ptr %l13, !tbaa !23
  %t213 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t216 = icmp ne i32 %t212, %t213
  store i1 %t216, ptr %l120, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb58
bb58:
  %t218 = load i1, ptr %l120, !tbaa !21
  br i1 %t218, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s11
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load %"compiler/source:Span", ptr %l1
  %t221 = load ptr, ptr %l8, !tbaa !29
  %t222 = load i32, ptr %l13, !tbaa !23
  %t223 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t229 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueElem(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t219, %"compiler/source:Span" %t220, ptr %t221, i32 %t222, { i64, ptr } %t223)
  store ptr %t229, ptr %l129
  br label %bb61
bb60:
  br label %bb84
bb61:
  %t230 = load ptr, ptr %l129, !tbaa !29
  store ptr %t230, ptr %l14, !tbaa !29
  %t231 = load ptr, ptr %l14, !tbaa !29
  %t233 = icmp eq ptr %t231, null
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb62, label %bb63
bb62:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l1
  %t239 = load ptr, ptr %l14, !tbaa !29
  %t243 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t237, %"compiler/source:Span" %t238, ptr %t239)
  store ptr %t243, ptr %l136
  br label %bb64
bb63:
  br label %bb65
bb64:
  call void @__olang_scope_close(ptr %s11)
  %t244 = load ptr, ptr %l136, !tbaa !29
  store ptr %t244, ptr %rv
  br label %ret
bb65:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l137, !tbaa !29
  %t246 = load i32, ptr %l13, !tbaa !23
  store i32 %t246, ptr %l138, !tbaa !23
  %t247 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t249 = extractvalue { i64, ptr } %t247, 0
  store i64 %t249, ptr %l140, !tbaa !24
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load %"compiler/source:Span", ptr %l1
  %t254 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %t250, %"compiler/source:Span" %t251)
  store %"compiler/source:Span" %t254, ptr %l143
  br label %bb66
bb66:
  %t255 = load ptr, ptr %l137, !tbaa !29
  %t256 = load i32, ptr %l138, !tbaa !23
  %t257 = load i64, ptr %l140, !tbaa !24
  %t258 = load %"compiler/source:Span", ptr %l143
  %t259 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s11, ptr %s11, ptr %t255, i32 %t256, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, i64 %t257, %"compiler/source:Span" %t258, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i64 %t259, ptr %l144
  br label %bb67
bb67:
  %t260 = load i64, ptr %l144, !tbaa !24
  store i64 %t260, ptr %l15, !tbaa !24
  %t261 = load i64, ptr %l15, !tbaa !24
  %t263 = icmp sge i64 %t261, 0
  br i1 %t263, label %bb68, label %bb69
bb68:
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l147, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t266, ptr %l148
  %t267 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t267, ptr %l149
  %t268 = load i64, ptr %l15, !tbaa !24
  store i64 %t268, ptr %l150, !tbaa !24
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l1
  %t271 = load ptr, ptr %l8, !tbaa !29
  %t275 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v0, ptr %t269, %"compiler/source:Span" %t270, ptr %t271)
  store ptr %t275, ptr %l154
  br label %bb70
bb69:
  br label %bb80
bb70:
  %t276 = load ptr, ptr %l154, !tbaa !29
  store ptr %t276, ptr %l155, !tbaa !29
  %t277 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t277, ptr %l156, !tbaa !27
  %t278 = icmp sge i64 0, 0
  br i1 %t278, label %bb71, label %bb72
bb71:
  %t280 = icmp sle i64 0, 1152921504606846975
  br i1 %t280, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_23e55da1d35c3b26_9d147ecacbf30ffa)
  unreachable
bb73:
  %t282 = mul i64 0, 8
  %t283 = insertvalue { i64, ptr } undef, i64 0, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t284, ptr %l159, !tbaa !27
  %t285 = icmp sge i64 0, 0
  br i1 %t285, label %bb75, label %bb76
bb74:
  call void @__olang_check_failed(ptr @olang_loc_23e55da1d35c3b26_9d147ecacbf30ffa)
  unreachable
bb75:
  %t287 = icmp sle i64 0, 2305843009213693951
  br i1 %t287, label %bb77, label %bb78
bb76:
  call void @__olang_check_failed(ptr @olang_loc_2136f99ca1795ebb_470e73d5134ce74f)
  unreachable
bb77:
  %t289 = mul i64 0, 4
  %t290 = insertvalue { i64, ptr } undef, i64 0, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t292 = load ptr, ptr %l147, !tbaa !29
  %t293 = load %"compiler/source:Span", ptr %l148
  %t294 = load %"compiler/source:Span", ptr %l149
  %t295 = load i64, ptr %l150, !tbaa !24
  %t296 = load ptr, ptr %l155, !tbaa !29
  %t297 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t300 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %v3, ptr %t292, %"compiler/source:Span" %t293, %"compiler/source:Span" %t294, i64 %t295, ptr %t296, { i64, ptr } %t297, { i64, ptr } %t298, { i64, ptr } %t291)
  store ptr %t300, ptr %l163
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_2136f99ca1795ebb_470e73d5134ce74f)
  unreachable
bb79:
  call void @__olang_scope_close(ptr %s11)
  %t301 = load ptr, ptr %l163, !tbaa !29
  store ptr %t301, ptr %rv
  br label %ret
bb80:
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l164, !tbaa !29
  %t303 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t303, ptr %l165
  %t304 = load i32, ptr %l13, !tbaa !23
  store i32 %t304, ptr %l166, !tbaa !23
  %t305 = load ptr, ptr %l8, !tbaa !29
  %t307 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v3, ptr %t305)
  store i32 %t307, ptr %l168
  br label %bb81
bb81:
  %t308 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t308, 0
  %t311 = load ptr, ptr %l164, !tbaa !29
  %t312 = load %"compiler/source:Span", ptr %l165
  %t313 = load i32, ptr %l166, !tbaa !23
  %t314 = load i32, ptr %l168, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoIndex(ptr %v0, ptr %t311, %"compiler/source:Span" %t312, i32 %t313, i32 %t314, i64 %t310)
  br label %bb82
bb82:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load %"compiler/source:Span", ptr %l1
  %t320 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t316, %"compiler/source:Span" %t317)
  store ptr %t320, ptr %l173
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s11)
  %t321 = load ptr, ptr %l173, !tbaa !29
  store ptr %t321, ptr %rv
  br label %ret
bb84:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load %"compiler/source:Span", ptr %l1
  %t324 = load ptr, ptr %l8, !tbaa !29
  %t325 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t331 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t322, %"compiler/source:Span" %t323, ptr %t324, { i64, ptr } %t325, i32 0)
  store ptr %t331, ptr %l179
  br label %bb85
bb85:
  %t332 = load ptr, ptr %l179, !tbaa !29
  store ptr %t332, ptr %l16, !tbaa !29
  %t333 = load ptr, ptr %l16, !tbaa !29
  %t335 = icmp eq ptr %t333, null
  br i1 %t335, label %bb86, label %bb87
bb86:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load %"compiler/source:Span", ptr %l1
  %t341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t337, %"compiler/source:Span" %t338)
  store ptr %t341, ptr %l184
  br label %bb88
bb87:
  br label %bb89
bb88:
  %t342 = load ptr, ptr %l184, !tbaa !29
  store ptr %t342, ptr %rv
  br label %ret
bb89:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load %"compiler/source:Span", ptr %l1
  %t345 = load ptr, ptr %l16, !tbaa !29
  %t349 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t343, %"compiler/source:Span" %t344, ptr %t345)
  store ptr %t349, ptr %l188
  br label %bb90
bb90:
  %t350 = load ptr, ptr %l188, !tbaa !29
  store ptr %t350, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEntryType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i1
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l23 = alloca i32
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i32 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i32, ptr %l5, !tbaa !23
  store i32 %t7, ptr %l2, !tbaa !23
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l6, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l9
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = load i32, ptr %l9, !tbaa !23
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t16, ptr %l10
  br label %bb3
bb3:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l14, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l17
  br label %bb6
bb5:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb6:
  %t29 = load ptr, ptr %l14, !tbaa !29
  %t30 = load i32, ptr %l17, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t31, ptr %l18
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l23
  br label %bb8
bb8:
  %t42 = load i32, ptr %l18, !tbaa !23
  %t43 = load i32, ptr %l23, !tbaa !23
  %t44 = icmp eq i32 %t42, %t43
  store i1 %t44, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t46 = load i1, ptr %l11, !tbaa !21
  store i1 %t46, ptr %rv
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBool(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %a1)
  store i32 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load i32, ptr %l7, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i32, ptr %l4, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  store i1 %t16, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l16, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l17
  store { i64, ptr } %a3, ptr %l18, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t23, i32 %t24)
  store { i64, ptr } %t27, ptr %l21
  br label %bb8
bb8:
  %t28 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  %t35 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t37 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v2, ptr %s0, ptr %v0, { i64, ptr } %t35, { i64, ptr } %t34)
  store %"compiler/diagmsg:Msg" %t37, ptr %l23
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l17
  %t40 = load %"compiler/diagmsg:Msg", ptr %l23
  %t41 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t38, %"compiler/source:Span" %t39, %"compiler/diagmsg:Msg" %t40)
  store i64 %t41, ptr %l24
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i1
  %l23 = alloca i32
  %l28 = alloca i32
  %l31 = alloca i1
  %l36 = alloca i32
  %l39 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i32
  %l50 = alloca i1
  %l51 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca i32
  %l58 = alloca %"compiler/source:Span"
  %l60 = alloca %"compiler/source:Span"
  %l62 = alloca ptr
  %l67 = alloca i32
  %l70 = alloca %"compiler/check:laneNode"
  %l71 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca i64
  %l74 = alloca i32
  %l76 = alloca %"compiler/source:Span"
  %l78 = alloca %"compiler/source:Span"
  %l83 = alloca %"compiler/check:laneNode"
  %l84 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t13)
  store i32 %t16, ptr %l17
  br label %bb5
bb5:
  %t17 = load i32, ptr %l17, !tbaa !23
  store i32 %t17, ptr %l3, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l20
  br label %bb6
bb6:
  %t23 = load i1, ptr %l20, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l23
  br label %bb9
bb8:
  br label %bb29
bb9:
  %t29 = load i32, ptr %l23, !tbaa !23
  store i32 %t29, ptr %l4, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l4, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l28
  br label %bb10
bb10:
  %t40 = load i32, ptr %l28, !tbaa !23
  store i32 %t40, ptr %l5, !tbaa !23
  %t41 = load i32, ptr %l5, !tbaa !23
  %t43 = icmp ne i32 %t41, 0
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l5, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l36
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb14
bb13:
  %t55 = load i32, ptr %l36, !range !{i32 0, i32 33}
  %t57 = trunc i64 26 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  %t67 = load i32, ptr %l5, !tbaa !23
  %t70 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t66, i32 %t67)
  store i64 %t70, ptr %l44
  br label %bb17
bb16:
  store i64 -1, ptr %l39, !tbaa !24
  br label %bb18
bb17:
  %t71 = load i64, ptr %l44, !tbaa !24
  store i64 %t71, ptr %l39, !tbaa !24
  br label %bb18
bb18:
  %t72 = load i64, ptr %l39, !tbaa !24
  store i64 %t72, ptr %l6, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l3, !tbaa !23
  %t77 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l47
  br label %bb19
bb19:
  %t78 = load i32, ptr %l47, !tbaa !23
  store i32 %t78, ptr %l7, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l7, !tbaa !23
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l50
  br label %bb20
bb20:
  %t84 = load i1, ptr %l50, !tbaa !21
  br i1 %t84, label %bb21, label %bb22
bb21:
  %t85 = load i32, ptr %l7, !tbaa !23
  store i32 %t85, ptr %l51, !tbaa !23
  br label %bb23
bb22:
  %t87 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t87, ptr %l51, !tbaa !23
  br label %bb23
bb23:
  %t89 = load i32, ptr %l51, !tbaa !23
  store i32 %t89, ptr %l8, !tbaa !23
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l54, !tbaa !29
  %t91 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  store i64 %t91, ptr %l55, !tbaa !24
  store i32 67, ptr %l56
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t92)
  store %"compiler/source:Span" %t94, ptr %l58
  br label %bb24
bb24:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t95)
  store %"compiler/source:Span" %t97, ptr %l60
  br label %bb25
bb25:
  %t98 = load ptr, ptr %l1, !tbaa !29
  store ptr %t98, ptr %l62, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = load i32, ptr %l4, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t105, i32 %t106)
  store i32 %t109, ptr %l67
  br label %bb26
bb26:
  %t110 = load i64, ptr %l6, !tbaa !24
  %t111 = load i32, ptr %l8, !tbaa !23
  %t112 = load i64, ptr %l55, !tbaa !24
  %t113 = load i32, ptr %l56, !range !{i32 0, i32 113}
  %t114 = load %"compiler/source:Span", ptr %l58
  %t115 = load %"compiler/source:Span", ptr %l60
  %t116 = load ptr, ptr %l62, !tbaa !29
  %t117 = load i32, ptr %l67, !tbaa !23
  %t120 = call %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v1, ptr %v0, i64 %t112, i32 %t113, %"compiler/source:Span" %t114, %"compiler/source:Span" %t115, i64 -1, i64 -1, i64 -1, ptr %t116, i32 %t117, i64 %t110, i32 %t111)
  store %"compiler/check:laneNode" %t120, ptr %l70
  br label %bb27
bb27:
  %t121 = load ptr, ptr %l54, !tbaa !29
  %t122 = load %"compiler/check:laneNode", ptr %l70
  %t123 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v0, ptr %t121, %"compiler/check:laneNode" %t122)
  store i64 %t123, ptr %l71
  br label %bb28
bb28:
  %t124 = load i64, ptr %l71, !tbaa !24
  store i64 %t124, ptr %rv
  br label %ret
bb29:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l72, !tbaa !29
  %t126 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  store i64 %t126, ptr %l73, !tbaa !24
  store i32 67, ptr %l74
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t127)
  store %"compiler/source:Span" %t129, ptr %l76
  br label %bb30
bb30:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t130)
  store %"compiler/source:Span" %t132, ptr %l78
  br label %bb31
bb31:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = load i32, ptr %l3, !tbaa !23
  %t136 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t137 = load i64, ptr %l73, !tbaa !24
  %t138 = load i32, ptr %l74, !range !{i32 0, i32 113}
  %t139 = load %"compiler/source:Span", ptr %l76
  %t140 = load %"compiler/source:Span", ptr %l78
  %t144 = call %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v1, ptr %v0, i64 %t137, i32 %t138, %"compiler/source:Span" %t139, %"compiler/source:Span" %t140, i64 -1, i64 -1, i64 -1, ptr %t133, i32 %t135, i64 -1, i32 %t136)
  store %"compiler/check:laneNode" %t144, ptr %l83
  br label %bb32
bb32:
  %t145 = load ptr, ptr %l72, !tbaa !29
  %t146 = load %"compiler/check:laneNode", ptr %l83
  %t147 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v0, ptr %t145, %"compiler/check:laneNode" %t146)
  store i64 %t147, ptr %l84
  br label %bb33
bb33:
  %t148 = load i64, ptr %l84, !tbaa !24
  store i64 %t148, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/check:laneNode"
  %l7 = alloca %"compiler/check:laneNode"
  %l11 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 46
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/check:laneNode" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load %"compiler/check:laneNode", ptr %l7
  store %"compiler/check:laneNode" %t8, ptr %l3
  %t9 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  %t14 = icmp eq i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t16 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 0
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l11, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t24, i64 %t25)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %ret
bb8:
  %t28 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 4
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp sge i64 %t29, 0
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 4
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %t33, i64 %t35, ptr %t36)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t40 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 5
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp sge i64 %t41, 0
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 5
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %t45, i64 %t47, ptr %t48)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t52 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 6
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = icmp sge i64 %t53, 0
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 6
  %t59 = load i64, ptr %t58, !tbaa !24
  %t60 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %t57, i64 %t59, ptr %t60)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneMethodCalled(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/check:laneNode"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i32
  %l12 = alloca %"compiler/check:laneNode"
  %l16 = alloca i1
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l50 = alloca %"compiler/check:laneNode"
  %l55 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l64 = alloca i1
  %l68 = alloca i1
  %l73 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 46
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/check:laneNode" %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load %"compiler/check:laneNode", ptr %l12
  store %"compiler/check:laneNode" %t8, ptr %l2
  %t9 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  %t14 = icmp eq i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb4
bb3:
  %t16 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 0
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  store i1 %t21, ptr %l16, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l16, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t24, ptr %l21, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l22, !tbaa !24
  %t27 = load i64, ptr %l22, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l23, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t38, ptr %l21, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 4
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 5
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 6
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = insertvalue [3 x i64] undef, i64 %t41, 0
  %t49 = insertvalue [3 x i64] %t47, i64 %t43, 1
  %t51 = insertvalue [3 x i64] %t49, i64 %t45, 2
  %t53 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 24, i64 8)
  store [3 x i64] %t51, ptr %t53
  store ptr %t53, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l3
  store i64 3, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load i64, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb41
bb10:
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l3
  %t67 = load i64, ptr %l4, !tbaa !24
  %t70 = getelementptr [3 x i64], ptr %t66, i64 0, i64 %t67
  %t71 = load i64, ptr %t70, !tbaa !34
  store i64 %t71, ptr %l6, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  br i1 %t75, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb13:
  br label %bb14
bb14:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneMethodCalled(ptr %v0, ptr %v1, ptr %t77, i64 %t78)
  store { i64, ptr } %t81, ptr %l42
  br label %bb15
bb15:
  %t82 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t82, ptr %lp7
  %t83 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t84 = load ptr, ptr %lp7
  store { i64, ptr } %t83, ptr %t84, !tbaa !27
  %t85 = load ptr, ptr %lp7
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t86, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t88, ptr %l44
  br label %bb16
bb16:
  %t89 = load i1, ptr %l44, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb17, label %bb18
bb17:
  %t92 = load ptr, ptr %lp7
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t93, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 46
  %t98 = load i64, ptr %l6, !tbaa !24
  %t101 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s3, ptr %t97, i64 %t98)
  store %"compiler/check:laneNode" %t101, ptr %l50
  br label %bb20
bb20:
  %t102 = getelementptr %"compiler/check:laneNode", ptr %l50, i32 0, i32 8
  %t103 = load i32, ptr %t102, !tbaa !23
  store i32 %t103, ptr %l8, !tbaa !23
  %t105 = load i32, ptr %l8, !tbaa !23
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t109 = icmp ne i32 %t105, %t106
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l8, !tbaa !23
  %t115 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t115, ptr %l58
  br label %bb23
bb22:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb32
bb23:
  %t116 = load i1, ptr %l58, !tbaa !21
  %t117 = xor i1 %t116, true
  br i1 %t117, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb31
bb25:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l8, !tbaa !23
  %t123 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t119, i32 %t120)
  store i1 %t123, ptr %l63
  br label %bb26
bb26:
  %t124 = load i1, ptr %l63, !tbaa !21
  br i1 %t124, label %bb27, label %bb28
bb27:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t129 = load i32, ptr %l8, !tbaa !23
  %t132 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t128, i32 %t129)
  store i1 %t132, ptr %l68
  br label %bb29
bb28:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb30
bb29:
  %t133 = load i1, ptr %l68, !tbaa !21
  %t134 = xor i1 %t133, true
  store i1 %t134, ptr %l64, !tbaa !21
  br label %bb30
bb30:
  %t136 = load i1, ptr %l64, !tbaa !21
  store i1 %t136, ptr %l60, !tbaa !21
  br label %bb31
bb31:
  %t137 = load i1, ptr %l60, !tbaa !21
  store i1 %t137, ptr %l55, !tbaa !21
  br label %bb32
bb32:
  %t138 = load i1, ptr %l55, !tbaa !21
  br i1 %t138, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t139 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 0
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneBin, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  br i1 %t144, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  %t146 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 1
  %t147 = load i32, ptr %t146, !range !{i32 0, i32 113}
  %t149 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s6, i32 %t147)
  store { i64, ptr } %t149, ptr %l75
  br label %bb37
bb36:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l77, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t150, ptr %l73, !tbaa !27
  br label %bb38
bb37:
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t154 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = add i64 %t153, %t156
  %t158 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t160 = add i64 %t157, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t152, i64 %t153)
  %t162 = getelementptr i8, ptr %t161, i64 %t153
  call void @olang_textcopy(ptr %t162, ptr %t155, i64 %t156)
  %t163 = getelementptr i8, ptr %t162, i64 %t156
  call void @olang_textcopy(ptr %t163, ptr %t158, i64 %t159)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t161, 1
  store { i64, ptr } %t165, ptr %l73, !tbaa !27
  br label %bb38
bb38:
  %t167 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  store i64 %t168, ptr %l79, !tbaa !24
  %t169 = load i64, ptr %l79, !tbaa !24
  %t170 = mul i64 %t169, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t170)
  %t172 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  store { i64, ptr } %t173, ptr %l80, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l79, !tbaa !24
  %t179 = mul i64 %t178, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t175, ptr %t177, i64 %t179, i1 false)
  %t180 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t180, ptr %l73, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t181 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t181, ptr %rv
  br label %ret
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb40:
  %t182 = load i64, ptr %l4, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l4, !tbaa !24
  br label %bb8
bb41:
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l83, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t186, ptr %l84, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  store i64 %t188, ptr %l85, !tbaa !24
  %t189 = load i64, ptr %l85, !tbaa !24
  %t190 = mul i64 %t189, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l86, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = load i64, ptr %l85, !tbaa !24
  %t199 = mul i64 %t198, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t195, ptr %t197, i64 %t199, i1 false)
  %t200 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t200, ptr %l84, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t201, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca ptr
  %l26 = alloca i1
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca %"compiler/typed:Promote"
  %l42 = alloca i1
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca i32
  %l45 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca %"compiler/typed:Promote"
  %rv = alloca ptr
  %t53 = alloca { i64, [5 x i64] }, align 8
  %t90 = alloca { i64, [5 x i64] }, align 8
  %t106 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i32, ptr %l3, !tbaa !23
  %t5 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elentWritable(ptr %v0, ptr %v2, ptr %v1, ptr %t1, ptr %t2, ptr %t3, i32 %t4, %"compiler/source:Span" %t5)
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 10
  store ptr %t13, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l6, !tbaa !24
  store i64 %t15, ptr %l15, !tbaa !24
  %t16 = load ptr, ptr %l5, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l17
  br label %bb3
bb3:
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb4, label %bb5
bb4:
  br label %bb15
bb5:
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l5, !tbaa !29
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store ptr %t29, ptr %l22
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v2, ptr %v0, ptr %t31, ptr %t32, ptr %t30)
  store i1 %t37, ptr %l26
  br label %bb8
bb8:
  %t38 = load i1, ptr %l26, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t39 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t39, ptr %l27
  %t40 = load i32, ptr %l3, !tbaa !23
  store i32 %t40, ptr %l28, !tbaa !23
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l29, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l4
  %t47 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t42, i32 2, %"compiler/source:Span" %t43)
  store i32 %t47, ptr %l33
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t48 = load ptr, ptr %l29, !tbaa !29
  %t49 = load i32, ptr %l33, !tbaa !23
  %t50 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v1, ptr %v3, ptr %t48, i32 %t49)
  store %"compiler/typed:Promote" %t50, ptr %l34
  br label %bb12
bb12:
  %t51 = load %"compiler/typed:Promote", ptr %l34
  %t52 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store %"compiler/typed:Promote" %t51, ptr %t52
  store { i64, [5 x i64] } zeroinitializer, ptr %t53
  %t54 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 0
  store i64 5, ptr %t54
  %t55 = load %"compiler/source:Span", ptr %l27
  %t56 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t55, 0
  %t57 = load i32, ptr %l28, !tbaa !23
  %t58 = insertvalue { %"compiler/source:Span", i32, ptr } %t56, i32 %t57, 1
  %t60 = insertvalue { %"compiler/source:Span", i32, ptr } %t58, ptr %t52, 2
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t60, ptr %t61
  %t62 = load { i64, [5 x i64] }, ptr %t53
  %t64 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t62, ptr %t64
  store ptr %t64, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l6, !tbaa !24
  br label %bb2
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t74 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etargetHoldsRefs(ptr %v0, ptr %v2, ptr %t70, ptr %t71)
  store i1 %t74, ptr %l42
  br label %bb16
bb16:
  %t75 = load i1, ptr %l42, !tbaa !21
  br i1 %t75, label %bb17, label %bb18
bb17:
  %t76 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t76, ptr %l43
  %t77 = load i32, ptr %l3, !tbaa !23
  store i32 %t77, ptr %l44, !tbaa !23
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l45, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l4
  %t84 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t79, i32 2, %"compiler/source:Span" %t80)
  store i32 %t84, ptr %l49
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t85 = load ptr, ptr %l45, !tbaa !29
  %t86 = load i32, ptr %l49, !tbaa !23
  %t87 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v1, ptr %v3, ptr %t85, i32 %t86)
  store %"compiler/typed:Promote" %t87, ptr %l50
  br label %bb20
bb20:
  %t88 = load %"compiler/typed:Promote", ptr %l50
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store %"compiler/typed:Promote" %t88, ptr %t89
  store { i64, [5 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 0
  store i64 5, ptr %t91
  %t92 = load %"compiler/source:Span", ptr %l43
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t92, 0
  %t94 = load i32, ptr %l44, !tbaa !23
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr } %t93, i32 %t94, 1
  %t97 = insertvalue { %"compiler/source:Span", i32, ptr } %t95, ptr %t89, 2
  %t98 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t97, ptr %t98
  %t99 = load { i64, [5 x i64] }, ptr %t90
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t99, ptr %t101
  store ptr %t101, ptr %rv
  br label %ret
bb21:
  %t103 = load %"compiler/source:Span", ptr %l4
  %t104 = load i32, ptr %l3, !tbaa !23
  %t105 = load ptr, ptr %l2, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t106
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 0
  store i64 3, ptr %t107
  %t109 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t103, 0
  %t111 = insertvalue { %"compiler/source:Span", i32, ptr } %t109, i32 %t104, 1
  %t113 = insertvalue { %"compiler/source:Span", i32, ptr } %t111, ptr %t105, 2
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t113, ptr %t114
  %t115 = load { i64, [5 x i64] }, ptr %t106
  %t117 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t115, ptr %t117
  store ptr %t117, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/check:reflList"
  %l3 = alloca { { i64, ptr }, { i64, ptr } }
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca { { i64, ptr }, { i64, ptr } }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/check:reflList" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t6 = icmp eq i32 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 1152921504606846975
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_5ab97e381db75496_a4ed3933adca62ca)
  unreachable
bb5:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_5ab97e381db75496_a4ed3933adca62ca)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %l14, !tbaa !23
  %t22 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l15, !tbaa !24
  %t24 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l16, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t26)
  store ptr %t28, ptr %l18
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t31 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = load ptr, ptr %l13, !tbaa !29
  %t34 = load i32, ptr %l14, !tbaa !23
  %t35 = load i64, ptr %l15, !tbaa !24
  %t36 = load i64, ptr %l16, !tbaa !24
  %t38 = call { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %s0, ptr %t33, i32 %t34, i64 %t35, i64 %t36, i64 %t32)
  store { { i64, ptr }, { i64, ptr } } %t38, ptr %l21
  br label %bb9
bb9:
  %t39 = load { { i64, ptr }, { i64, ptr } }, ptr %l21
  store { { i64, ptr }, { i64, ptr } } %t39, ptr %l3
  %t40 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l23, !tbaa !24
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = mul i64 %t44, 8
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l24, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l23, !tbaa !24
  %t54 = mul i64 %t53, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t55, ptr %lp4
  %t56 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t57 = load ptr, ptr %lp4
  store { i64, ptr } %t56, ptr %t57, !tbaa !27
  %t58 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 1
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l5, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t61, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t63, ptr %l27
  br label %bb10
bb10:
  %t64 = load i1, ptr %l27, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l29, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l30
  %t69 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 2
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = call { i64, ptr } @compiler_2fcheck_2elistName(ptr %s2, i64 %t70)
  store { i64, ptr } %t72, ptr %l32
  br label %bb13
bb12:
  br label %bb21
bb13:
  %t73 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l33, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t82 = load i32, ptr %t81, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t80, i32 %t82)
  store { i64, ptr } %t85, ptr %l36
  br label %bb14
bb14:
  %t86 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t97 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNotList(ptr %s2, ptr %s2, ptr %s0, ptr %v0, { i64, ptr } %t94, { i64, ptr } %t92, { i64, ptr } %t93)
  store %"compiler/diagmsg:Msg" %t97, ptr %l39
  br label %bb15
bb15:
  %t98 = load ptr, ptr %l29, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l30
  %t100 = load %"compiler/diagmsg:Msg", ptr %l39
  %t101 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t98, %"compiler/source:Span" %t99, %"compiler/diagmsg:Msg" %t100)
  store i64 %t101, ptr %l40
  br label %bb16
bb16:
  %t102 = icmp sge i64 0, 0
  br i1 %t102, label %bb17, label %bb18
bb17:
  %t104 = icmp sle i64 0, 1152921504606846975
  br i1 %t104, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_fce01e404a5d04ab_bd3fcfdbd155739f)
  unreachable
bb19:
  %t106 = mul i64 0, 8
  %t107 = insertvalue { i64, ptr } undef, i64 0, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t108, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_fce01e404a5d04ab_bd3fcfdbd155739f)
  unreachable
bb21:
  %t110 = load ptr, ptr %lp4
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l39 = alloca %"compiler/check:litv"
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
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
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 28}
  %t23 = icmp eq i64 %t21, 3
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t35, ptr %l20
  br label %bb10
bb10:
  %t36 = load i1, ptr %l20, !tbaa !21
  store i1 %t36, ptr %l5, !tbaa !21
  br label %bb28
bb11:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 28}
  %t44 = icmp eq i64 %t42, 5
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l3, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t54, i32 0, i32 3
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t62 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t58, ptr %t59)
  store i1 %t62, ptr %l31
  br label %bb17
bb17:
  %t63 = load i1, ptr %l31, !tbaa !21
  br i1 %t63, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb21
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t68 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t64, ptr %t65)
  store i1 %t68, ptr %l35
  br label %bb20
bb20:
  %t69 = load i1, ptr %l35, !tbaa !21
  store i1 %t69, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t70 = load i1, ptr %l32, !tbaa !21
  store i1 %t70, ptr %l5, !tbaa !21
  br label %bb28
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t76 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t71, ptr %t72)
  store %"compiler/check:litv" %t76, ptr %l39
  br label %bb26
bb26:
  %t77 = getelementptr %"compiler/check:litv", ptr %l39, i32 0, i32 2
  %t78 = load i1, ptr %t77, !tbaa !21
  store i1 %t78, ptr %l5, !tbaa !21
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_a9a2c4034b6e08dd_84116590a5e4e601)
  unreachable
bb28:
  %t80 = load i1, ptr %l5, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i32
  %l11 = alloca i1
  %l12 = alloca i1
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca %"compiler/typed:Local"
  %l20 = alloca i32
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i1
  %l30 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t38 = alloca i64
  %t72 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb13
bb5:
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 7
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t24, i64 %t25)
  store %"compiler/typed:Local" %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 0
  %t30 = load i32, ptr %t29, !tbaa !23
  store i32 %t30, ptr %l20, !tbaa !23
  %t31 = icmp sge i64 1, 0
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = icmp sle i64 1, 2305843009213693951
  br i1 %t33, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9c04d5f47d2250f6_3417b2e0d095e072)
  unreachable
bb9:
  %t35 = mul i64 1, 4
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  %t37 = load i32, ptr %l20, !tbaa !23
  store i64 0, ptr %t38
  br label %fill.39
fill.39:
  %t42 = load i64, ptr %t38
  %t43 = icmp slt i64 %t42, 1
  br i1 %t43, label %fillb.40, label %filld.41
fillb.40:
  %t44 = getelementptr i32, ptr %t36, i64 %t42
  store i32 %t37, ptr %t44
  %t45 = add i64 %t42, 1
  store i64 %t45, ptr %t38
  br label %fill.39
filld.41:
  %t46 = insertvalue { i64, ptr } undef, i64 1, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t36, 1
  store { i64, ptr } %t47, ptr %l23, !tbaa !27
  %t48 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t48, ptr %l24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9c04d5f47d2250f6_3417b2e0d095e072)
  unreachable
bb11:
  %t49 = load ptr, ptr %l13, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t51 = load %"compiler/source:Span", ptr %l24
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %s0, ptr %t49, { i64, ptr } %t50, %"compiler/source:Span" %t51)
  store i1 %t52, ptr %l25
  br label %bb12
bb12:
  %t53 = load i1, ptr %l25, !tbaa !21
  store i1 %t53, ptr %l12, !tbaa !21
  br label %bb13
bb13:
  %t54 = load i1, ptr %l12, !tbaa !21
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l3, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l30
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t65 = load i32, ptr %l30, !tbaa !23
  store i32 %t65, ptr %l3, !tbaa !23
  br label %bb17
bb17:
  %t67 = load i32, ptr %l3, !tbaa !23
  %t68 = load i64, ptr %l2, !tbaa !24
  %t70 = trunc i64 %t68 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 0
  store i64 0, ptr %t73
  %t75 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %a1, 0
  %t77 = insertvalue { %"compiler/source:Span", i32, i32 } %t75, i32 %t67, 1
  %t79 = insertvalue { %"compiler/source:Span", i32, i32 } %t77, i32 %t70, 2
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t79, ptr %t80
  %t81 = load { i64, [4 x i64] }, ptr %t72
  %t83 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t81, ptr %t83
  call void @__olang_scope_close(ptr %s0)
  store ptr %t83, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca { i64, i64, i64 }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/check:factsMark"
  %l21 = alloca i64
  %l25 = alloca { i64, i64, i64 }
  %l30 = alloca ptr
  %l35 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l58 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca ptr
  %l71 = alloca i64
  %l72 = alloca i32
  %l73 = alloca i64
  %l75 = alloca ptr
  %l78 = alloca i64
  %l79 = alloca i32
  %l85 = alloca ptr
  %l91 = alloca i64
  %l95 = alloca { i64, i64, i64 }
  %l103 = alloca %"compiler/check:factsMark"
  %l111 = alloca ptr
  %l126 = alloca ptr
  %l138 = alloca i1
  %l141 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l144 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca ptr
  %l149 = alloca ptr
  %s0 = alloca %olang.scope
  %t223 = alloca { i64, [3 x i64] }, align 8
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 44
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load i64, ptr %l21, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t12 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 2, %"compiler/source:Span" %t8)
  store { i64, i64, i64 } %t12, ptr %l25
  br label %bb2
bb2:
  %t13 = load { i64, i64, i64 }, ptr %l25
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
  store ptr %t25, ptr %l30
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l30, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 10
  %t29 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l35
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l35, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 11
  %t38 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t37, i64 %t38)
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopEnter(ptr %v0, ptr %t41)
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l43, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l44, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t51, ptr %l45
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t56 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v0, ptr %t52, ptr %t53)
  store ptr %t56, ptr %l48
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load ptr, ptr %l44, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l45
  %t60 = load ptr, ptr %l48, !tbaa !29
  %t62 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t58, %"compiler/source:Span" %t59, ptr %t60, i64 %t57)
  store ptr %t62, ptr %l50
  br label %bb11
bb11:
  %t63 = load ptr, ptr %l43, !tbaa !29
  %t64 = load ptr, ptr %l50, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t63, ptr %t64)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t73 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t71, ptr %t72, i1 true, i64 %t73)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t77)
  store ptr %t79, ptr %l58
  br label %bb18
bb18:
  %t80 = load ptr, ptr %l58, !tbaa !29
  %t82 = getelementptr %"compiler/check:frame", ptr %t80, i32 0, i32 51
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v2, ptr %t91, { i64, ptr } %t92)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t95)
  store ptr %t97, ptr %l68
  br label %bb23
bb23:
  %t98 = load ptr, ptr %l68, !tbaa !29
  %t100 = getelementptr %"compiler/check:frame", ptr %t98, i32 0, i32 10
  %t102 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t100)
  %t103 = extractvalue { i32, i64 } %t102, 1
  %t104 = extractvalue { i32, i64 } %t102, 0
  store i32 %t104, ptr %l72
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb25, label %ok.106, !prof !99
ok.106:
  store i64 %t103, ptr %l71
  br label %bb24
bb24:
  %t107 = load i64, ptr %l71, !tbaa !24
  store i64 %t107, ptr %l66, !tbaa !24
  br label %bb27
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t108)
  store ptr %t110, ptr %l75
  br label %bb28
bb28:
  %t111 = load ptr, ptr %l75, !tbaa !29
  %t113 = getelementptr %"compiler/check:frame", ptr %t111, i32 0, i32 11
  %t115 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t113)
  %t116 = extractvalue { i32, i64 } %t115, 1
  %t117 = extractvalue { i32, i64 } %t115, 0
  store i32 %t117, ptr %l79
  %t118 = icmp ne i32 %t117, 0
  br i1 %t118, label %bb30, label %ok.119, !prof !99
ok.119:
  store i64 %t116, ptr %l78
  br label %bb29
bb29:
  %t120 = load i64, ptr %l78, !tbaa !24
  store i64 %t120, ptr %l73, !tbaa !24
  br label %bb32
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i64, ptr %l7, !tbaa !24
  %t123 = load i64, ptr %l8, !tbaa !24
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l5, !tbaa !24
  %t131 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t121, i64 %t122, i64 %t123, i64 %t124, i64 %t125)
  store ptr %t131, ptr %l85
  br label %bb33
bb33:
  %t132 = load ptr, ptr %l85, !tbaa !29
  store ptr %t132, ptr %l11, !tbaa !29
  store ptr null, ptr %l12, !tbaa !29
  %t133 = load ptr, ptr %l4, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb34, label %bb35
bb34:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 44
  %t143 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t141)
  store i64 %t143, ptr %l91
  br label %bb36
bb35:
  br label %bb51
bb36:
  %t144 = load i64, ptr %l91, !tbaa !24
  store i64 %t144, ptr %l13, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l1
  %t150 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t145, i32 3, %"compiler/source:Span" %t146)
  store { i64, i64, i64 } %t150, ptr %l95
  br label %bb37
bb37:
  %t151 = load { i64, i64, i64 }, ptr %l95
  store { i64, i64, i64 } %t151, ptr %l14
  %t152 = getelementptr { i64, i64, i64 }, ptr %l14, i32 0, i32 0
  %t153 = load i64, ptr %t152, !tbaa !24
  store i64 %t153, ptr %l15, !tbaa !24
  %t155 = getelementptr { i64, i64, i64 }, ptr %l14, i32 0, i32 1
  %t156 = load i64, ptr %t155, !tbaa !24
  store i64 %t156, ptr %l16, !tbaa !24
  %t158 = getelementptr { i64, i64, i64 }, ptr %l14, i32 0, i32 2
  %t159 = load i64, ptr %t158, !tbaa !24
  store i64 %t159, ptr %l17, !tbaa !24
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t163 = icmp eq ptr %t161, null
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb38, label %bb39
bb38:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = call %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %t167)
  store %"compiler/check:factsMark" %t169, ptr %l103
  br label %bb40
bb39:
  br label %bb48
bb40:
  %t170 = load %"compiler/check:factsMark", ptr %l103
  store %"compiler/check:factsMark" %t170, ptr %l18
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t173 = load i64, ptr %l15, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t171, ptr %t172, i1 true, i64 %t173)
  br label %bb41
bb41:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load %"compiler/check:factsMark", ptr %l18
  %t179 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v2, ptr %t177, %"compiler/check:factsMark" %t178, { i64, ptr } %t179)
  br label %bb42
bb42:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t183)
  store ptr %t185, ptr %l111
  br label %bb43
bb43:
  %t186 = load ptr, ptr %l111, !tbaa !29
  %t188 = getelementptr %"compiler/check:frame", ptr %t186, i32 0, i32 51
  %t189 = load i64, ptr %t188, !tbaa !24
  %t190 = load i64, ptr %l10, !tbaa !24
  %t193 = icmp ne i64 %t189, %t190
  br i1 %t193, label %bb44, label %bb45
bb44:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr @G_2ecompiler_2fcheck_2eWhyCalled, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillPaths(ptr %v0, ptr %t195, i64 %t196)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v3, ptr %t199, ptr %t200)
  br label %bb49
bb49:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i64, ptr %l15, !tbaa !24
  %t206 = load i64, ptr %l16, !tbaa !24
  %t207 = load i64, ptr %l17, !tbaa !24
  %t208 = load i64, ptr %l13, !tbaa !24
  %t214 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t204, i64 %t205, i64 %t206, i64 %t207, i64 %t208)
  store ptr %t214, ptr %l126
  br label %bb50
bb50:
  %t215 = load ptr, ptr %l126, !tbaa !29
  store ptr %t215, ptr %l12, !tbaa !29
  br label %bb51
bb51:
  %t217 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopLeave(ptr %v0, ptr %t217)
  br label %bb52
bb52:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load %"compiler/source:Span", ptr %l1
  %t221 = load ptr, ptr %l11, !tbaa !29
  %t222 = load ptr, ptr %l12, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [3 x i64] }, ptr %t223, i32 0, i32 0
  store i64 4, ptr %t224
  %t226 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t220, 0
  %t228 = insertvalue { %"compiler/source:Span", ptr, ptr } %t226, ptr %t221, 1
  %t230 = insertvalue { %"compiler/source:Span", ptr, ptr } %t228, ptr %t222, 2
  %t231 = getelementptr { i64, [3 x i64] }, ptr %t223, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t230, ptr %t231
  %t232 = load { i64, [3 x i64] }, ptr %t223
  %t234 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t232, ptr %t234
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t219, ptr %t234)
  br label %bb53
bb53:
  %t237 = load ptr, ptr %l2, !tbaa !29
  %t239 = icmp eq ptr %t237, null
  %t241 = xor i1 %t239, true
  br i1 %t241, label %bb54, label %bb55
bb54:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  %t247 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s0, ptr %t243, %"compiler/source:Span" %t244)
  store { i64, ptr } %t247, ptr %l141
  br label %bb56
bb55:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb58
bb56:
  %t248 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l143, !tbaa !27
  %t250 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t251 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t248, { i64, ptr } %t250)
  store i1 %t251, ptr %l144
  br label %bb57
bb57:
  %t252 = load i1, ptr %l144, !tbaa !21
  %t253 = xor i1 %t252, true
  store i1 %t253, ptr %l138, !tbaa !21
  br label %bb58
bb58:
  %t255 = load i1, ptr %l138, !tbaa !21
  br i1 %t255, label %bb59, label %bb60
bb59:
  %t256 = load ptr, ptr %l0, !tbaa !29
  store ptr %t256, ptr %l146, !tbaa !29
  %t257 = load ptr, ptr %l2, !tbaa !29
  store ptr %t257, ptr %l147, !tbaa !29
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t258)
  store ptr %t260, ptr %l149
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t261 = load ptr, ptr %l149, !tbaa !29
  %t263 = getelementptr %"compiler/check:frame", ptr %t261, i32 0, i32 7
  %t264 = load i64, ptr %t263, !tbaa !24
  %t265 = load ptr, ptr %l146, !tbaa !29
  %t266 = load ptr, ptr %l147, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t265, ptr %t266, i1 false, i64 %t264)
  br label %bb62
bb62:
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca %"compiler/generic:AnySlot"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca ptr
  %l29 = alloca i32
  %l32 = alloca i64
  %l33 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca i32
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l75 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca i64
  %l82 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l92 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l114 = alloca i32
  %l117 = alloca ptr
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l126 = alloca i64
  %l130 = alloca i64
  %l133 = alloca i64
  %l153 = alloca ptr
  %l157 = alloca i32
  %l158 = alloca i32
  %l161 = alloca ptr
  %l165 = alloca i32
  %l172 = alloca i64
  %l174 = alloca i64
  %l179 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t95 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l26
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l26, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t8, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d26, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i32 %t10, ptr %l29
  br label %bb2
bb2:
  %t11 = load i32, ptr %l29, !tbaa !23
  store i32 %t11, ptr %l6, !tbaa !23
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 28
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l32
  br label %bb3
bb3:
  %t17 = load i64, ptr %l32, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  %t18 = load ptr, ptr %l5, !tbaa !29
  store ptr %t18, ptr %l33, !tbaa !29
  %t19 = load ptr, ptr %l33, !tbaa !29
  %t20 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 15
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = add i64 %t21, 1
  %t25 = load ptr, ptr %l33, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t25, i32 0, i32 15
  store i64 %t23, ptr %t26, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 49
  store i32 0, ptr %t29, !tbaa !23
  store ptr null, ptr %l8, !tbaa !29
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp slt i64 %t30, -1
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  store ptr %t39, ptr %l41, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t40)
  store i32 %t43, ptr %l44
  br label %bb6
bb5:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l77, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t45, ptr %l78
  %t46 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t46, ptr %l79
  %t47 = load i64, ptr %l2, !tbaa !24
  store i64 %t47, ptr %l80, !tbaa !24
  %t48 = load ptr, ptr %l3, !tbaa !29
  store ptr %t48, ptr %l82, !tbaa !29
  %t50 = icmp sge i64 0, 0
  br i1 %t50, label %bb15, label %bb16
bb6:
  %t52 = load ptr, ptr %l41, !tbaa !29
  %t53 = load i32, ptr %l44, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t54, ptr %l45
  br label %bb7
bb7:
  %t55 = load i32, ptr %l45, !tbaa !23
  store i32 %t55, ptr %l9, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load i32, ptr %l9, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t59, i32 %t60)
  store { i64, ptr } %t63, ptr %l49
  br label %bb8
bb8:
  %t64 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t64, ptr %l50, !tbaa !27
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 -2, %t65
  %t69 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr %"compiler/generic:AnySlot", ptr %t70, i64 %t67
  %t72 = load %"compiler/generic:AnySlot", ptr %t71
  store %"compiler/generic:AnySlot" %t72, ptr %l10
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l9, !tbaa !23
  %t76 = load i64, ptr %l2, !tbaa !24
  %t78 = sub i64 -2, %t76
  %t79 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotCall(ptr %v0, ptr %t74, i32 %t75, i64 %t78, %"compiler/source:Span" %t79)
  br label %bb9
bb9:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l59, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t85, ptr %l60
  %t86 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t86, ptr %l61
  %t87 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 5
  %t88 = load i32, ptr %t87, !tbaa !23
  store i32 %t88, ptr %l62, !tbaa !23
  %t89 = load i32, ptr %l9, !tbaa !23
  %t90 = load i64, ptr %l2, !tbaa !24
  %t92 = sub i64 -2, %t90
  %t93 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 5
  %t94 = load i32, ptr %t93, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t95
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 0
  store i64 3, ptr %t96
  %t98 = insertvalue { i32, i64, i32 } undef, i32 %t89, 0
  %t100 = insertvalue { i32, i64, i32 } %t98, i64 %t92, 1
  %t102 = insertvalue { i32, i64, i32 } %t100, i32 %t94, 2
  %t103 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 1
  store { i32, i64, i32 } %t102, ptr %t103
  %t104 = load { i64, [3 x i64] }, ptr %t95
  %t106 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store { i64, [3 x i64] } %t104, ptr %t106
  store ptr %t106, ptr %l68, !tbaa !29
  %t107 = load ptr, ptr %l3, !tbaa !29
  store ptr %t107, ptr %l70, !tbaa !29
  %t109 = icmp sge i64 0, 0
  br i1 %t109, label %bb10, label %bb11
bb10:
  %t111 = icmp sle i64 0, 1152921504606846975
  br i1 %t111, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_652199a1d15cfac6_f2a0b86627c88902)
  unreachable
bb12:
  %t113 = mul i64 0, 8
  %t114 = insertvalue { i64, ptr } undef, i64 0, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t116 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t117 = load ptr, ptr %l59, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l60
  %t119 = load %"compiler/source:Span", ptr %l61
  %t120 = load i32, ptr %l62, !tbaa !23
  %t121 = load ptr, ptr %l68, !tbaa !29
  %t122 = load ptr, ptr %l70, !tbaa !29
  %t125 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v3, ptr %v1, ptr %v0, ptr %v2, ptr %v3, ptr %t117, %"compiler/source:Span" %t118, %"compiler/source:Span" %t119, i32 %t120, ptr %t121, i64 -1, ptr %t122, { i64, ptr } %t115, { i64, ptr } %t116)
  store ptr %t125, ptr %l75
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_652199a1d15cfac6_f2a0b86627c88902)
  unreachable
bb14:
  %t126 = load ptr, ptr %l75, !tbaa !29
  store ptr %t126, ptr %l8, !tbaa !29
  br label %bb24
bb15:
  %t128 = icmp sle i64 0, 1152921504606846975
  br i1 %t128, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_7509e56452997e5b_fb360af196d85db7)
  unreachable
bb17:
  %t130 = mul i64 0, 8
  %t131 = insertvalue { i64, ptr } undef, i64 0, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t132, ptr %l85, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t133, ptr %l86, !tbaa !27
  %t134 = icmp sge i64 0, 0
  br i1 %t134, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_7509e56452997e5b_fb360af196d85db7)
  unreachable
bb19:
  %t136 = icmp sle i64 0, 2305843009213693951
  br i1 %t136, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_ff81ff8210117a78_6f7a62fdc976c914)
  unreachable
bb21:
  %t138 = mul i64 0, 4
  %t139 = insertvalue { i64, ptr } undef, i64 0, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t141 = load ptr, ptr %l77, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l78
  %t143 = load %"compiler/source:Span", ptr %l79
  %t144 = load i64, ptr %l80, !tbaa !24
  %t145 = load ptr, ptr %l82, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t149 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %t141, %"compiler/source:Span" %t142, %"compiler/source:Span" %t143, i64 %t144, ptr %t145, { i64, ptr } %t146, { i64, ptr } %t147, { i64, ptr } %t140)
  store ptr %t149, ptr %l90
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ff81ff8210117a78_6f7a62fdc976c914)
  unreachable
bb23:
  %t150 = load ptr, ptr %l90, !tbaa !29
  store ptr %t150, ptr %l8, !tbaa !29
  br label %bb24
bb24:
  %t152 = load ptr, ptr %l5, !tbaa !29
  store ptr %t152, ptr %l92, !tbaa !29
  %t153 = load ptr, ptr %l92, !tbaa !29
  %t154 = getelementptr %"compiler/check:frame", ptr %t153, i32 0, i32 15
  %t155 = load i64, ptr %t154, !tbaa !24
  %t157 = sub i64 %t155, 1
  %t159 = load ptr, ptr %l92, !tbaa !29
  %t160 = getelementptr %"compiler/check:frame", ptr %t159, i32 0, i32 15
  store i64 %t157, ptr %t160, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 49
  %t170 = load i32, ptr %t169, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t166, i32 %t170)
  store { i64, ptr } %t173, ptr %l100
  br label %bb25
bb25:
  %t174 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t174, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  store i64 %t177, ptr %l13, !tbaa !24
  br label %bb26
bb26:
  %t179 = load i64, ptr %l12, !tbaa !24
  %t180 = load i64, ptr %l13, !tbaa !24
  %t183 = icmp slt i64 %t179, %t180
  %t185 = xor i1 %t183, true
  br i1 %t185, label %bb27, label %bb28
bb27:
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t187 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t187, ptr %l107, !tbaa !27
  %t188 = load i64, ptr %l12, !tbaa !24
  %t190 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i32, ptr %t191, i64 %t188
  %t193 = load i32, ptr %t192, !tbaa !33
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t204 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t200, i32 %t193)
  store i32 %t204, ptr %l114
  br label %bb30
bb30:
  %t205 = load i32, ptr %l6, !tbaa !23
  %t206 = load i32, ptr %l114, !tbaa !23
  %t208 = icmp ne i32 %t206, %t205
  br i1 %t208, label %bb31, label %bb32
bb31:
  %t210 = load ptr, ptr %l5, !tbaa !29
  store ptr %t210, ptr %l117, !tbaa !29
  %t211 = load ptr, ptr %l117, !tbaa !29
  %t212 = getelementptr %"compiler/check:frame", ptr %t211, i32 0, i32 17
  %t213 = load i64, ptr %t212, !tbaa !24
  %t215 = add i64 %t213, 1
  %t217 = load ptr, ptr %l117, !tbaa !29
  %t218 = getelementptr %"compiler/check:frame", ptr %t217, i32 0, i32 17
  store i64 %t215, ptr %t218, !tbaa !24
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t219 = load i64, ptr %l12, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l12, !tbaa !24
  br label %bb26
bb35:
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l122
  br label %bb36
bb36:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %l15
  %t225 = load i64, ptr %l7, !tbaa !24
  store i64 %t225, ptr %l16, !tbaa !24
  %t227 = load ptr, ptr %l5, !tbaa !29
  %t229 = getelementptr %"compiler/check:frame", ptr %t227, i32 0, i32 28
  %t231 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t229)
  store i64 %t231, ptr %l126
  br label %bb37
bb37:
  %t232 = load i64, ptr %l126, !tbaa !24
  store i64 %t232, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t233 = load i64, ptr %l17, !tbaa !24
  %t234 = load i64, ptr %l16, !tbaa !24
  %t237 = icmp sgt i64 %t233, %t234
  br i1 %t237, label %bb38, label %bb39
bb38:
  %t239 = load i64, ptr %l18, !tbaa !24
  %t241 = icmp sgt i64 %t239, 0
  br i1 %t241, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb43
bb40:
  %t243 = load i64, ptr %l17, !tbaa !24
  %t244 = load i64, ptr %l16, !tbaa !24
  %t247 = sub i64 %t243, %t244
  %t248 = load i64, ptr %l18, !tbaa !24
  %t251 = add i64 %t247, %t248
  %t253 = sub i64 %t251, 1
  %t254 = load i64, ptr %l18, !tbaa !24
  %t257 = sdiv i64 %t253, %t254
  store i64 %t257, ptr %l133, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb42
bb42:
  %t259 = load i64, ptr %l133, !tbaa !24
  store i64 %t259, ptr %l130, !tbaa !24
  br label %bb43
bb43:
  %t260 = load i64, ptr %l130, !tbaa !24
  store i64 %t260, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb44
bb44:
  %t261 = load i64, ptr %l20, !tbaa !24
  %t262 = load i64, ptr %l19, !tbaa !24
  %t265 = icmp slt i64 %t261, %t262
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb45, label %bb46
bb45:
  br label %bb56
bb46:
  br label %bb47
bb47:
  %t269 = load i64, ptr %l16, !tbaa !24
  %t270 = load i64, ptr %l20, !tbaa !24
  %t271 = load i64, ptr %l18, !tbaa !24
  %t274 = mul i64 %t270, %t271
  %t277 = add i64 %t269, %t274
  store i64 %t277, ptr %l21, !tbaa !24
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/check:Checker", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = getelementptr %"compiler/generic:Program", ptr %t282, i32 0, i32 2
  store ptr %t284, ptr %l153, !tbaa !29
  %t285 = load ptr, ptr %l5, !tbaa !29
  %t287 = getelementptr %"compiler/check:frame", ptr %t285, i32 0, i32 28
  %t288 = load i64, ptr %l21, !tbaa !24
  %t291 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t287, i64 %t288)
  store i32 %t291, ptr %l157
  br label %bb48
bb48:
  %t292 = load ptr, ptr %l153, !tbaa !29
  %t293 = load i32, ptr %l157, !tbaa !23
  %t294 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t292, i32 %t293)
  store i32 %t294, ptr %l158
  br label %bb49
bb49:
  %t295 = load i32, ptr %l6, !tbaa !23
  %t296 = load i32, ptr %l158, !tbaa !23
  %t298 = icmp ne i32 %t296, %t295
  br i1 %t298, label %bb50, label %bb51
bb50:
  store ptr %l15, ptr %l161, !tbaa !29
  %t300 = load ptr, ptr %l5, !tbaa !29
  %t302 = getelementptr %"compiler/check:frame", ptr %t300, i32 0, i32 28
  %t303 = load i64, ptr %l21, !tbaa !24
  %t306 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t302, i64 %t303)
  store i32 %t306, ptr %l165
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t307 = load ptr, ptr %l161, !tbaa !29
  %t308 = load i32, ptr %l165, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t307, i32 %t308)
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t309 = load i64, ptr %l20, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l20, !tbaa !24
  br label %bb44
bb56:
  %t313 = load ptr, ptr %l5, !tbaa !29
  %t315 = getelementptr %"compiler/check:frame", ptr %t313, i32 0, i32 28
  %t316 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t315, i64 %t316)
  br label %bb57
bb57:
  store ptr %l15, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb58
bb58:
  %t320 = load i64, ptr %l23, !tbaa !24
  store i64 %t320, ptr %l172, !tbaa !24
  %t321 = load ptr, ptr %l22, !tbaa !29
  %t323 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t321)
  store i64 %t323, ptr %l174
  br label %bb59
bb59:
  %t324 = load i64, ptr %l172, !tbaa !24
  %t325 = load i64, ptr %l174, !tbaa !24
  %t326 = icmp slt i64 %t324, %t325
  %t328 = xor i1 %t326, true
  br i1 %t328, label %bb60, label %bb61
bb60:
  br label %bb66
bb61:
  br label %bb62
bb62:
  %t330 = load ptr, ptr %l22, !tbaa !29
  %t331 = load i64, ptr %l23, !tbaa !24
  %t334 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t330, i64 %t331)
  store i32 %t334, ptr %l179
  br label %bb63
bb63:
  %t335 = load i32, ptr %l179, !tbaa !23
  %t336 = load ptr, ptr %l5, !tbaa !29
  %t338 = getelementptr %"compiler/check:frame", ptr %t336, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t338, i32 %t335)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t342 = load i64, ptr %l23, !tbaa !24
  %t344 = add i64 %t342, 1
  store i64 %t344, ptr %l23, !tbaa !24
  br label %bb58
bb66:
  %t346 = load ptr, ptr %l8, !tbaa !29
  %t348 = icmp eq ptr %t346, null
  br i1 %t348, label %bb67, label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_77a5603a1298311f_4bb819fe8c7bb9e3)
  unreachable
bb68:
  br label %bb69
bb69:
  %t350 = load ptr, ptr %l8, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t350, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodOverlap(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l10 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l46 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l54 = alloca i32
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l69 = alloca i64
  %l71 = alloca ptr
  %l75 = alloca ptr
  %l76 = alloca i64
  %l77 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca { i64, [3 x i64] }
  %l85 = alloca { i64, ptr }
  %l88 = alloca %"compiler/diagmsg:Msg"
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
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOverlap(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l16
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l16, !tbaa !29
  store ptr %t22, ptr %l3, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l19, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  store ptr %t34, ptr %l22, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t38, i64 %t39)
  store i32 %t42, ptr %l26
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l22, !tbaa !29
  %t44 = load i32, ptr %l26, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t45, ptr %l27
  br label %bb7
bb7:
  %t46 = load ptr, ptr %l19, !tbaa !29
  %t47 = load i32, ptr %l27, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store { i64, ptr } %t48, ptr %l28
  br label %bb8
bb8:
  %t49 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t49, ptr %l4, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t54 = icmp eq i64 %t52, 0
  br i1 %t54, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l32, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t64 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l36
  br label %bb12
bb12:
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t66 = load ptr, ptr %l32, !tbaa !29
  %t67 = load i64, ptr %l36, !tbaa !24
  %t69 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t66, i64 -1, i64 %t67, i32 %t65, i32 0)
  store ptr %t69, ptr %l38
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l39, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l3, !tbaa !29
  %t75 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t71, ptr %t72)
  store %"compiler/source:Span" %t75, ptr %l42
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Func", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %t79, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t76, i32 %t80)
  store { i64, ptr } %t83, ptr %l46
  br label %bb15
bb15:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l47, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  store ptr %t90, ptr %l50, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t92, ptr %l52, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i32, ptr %t94, i64 0
  %t96 = load i32, ptr %t95, !tbaa !33
  %t99 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t91, i32 %t96)
  store i32 %t99, ptr %l54
  br label %bb16
bb16:
  %t100 = load ptr, ptr %l50, !tbaa !29
  %t101 = load i32, ptr %l54, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t102, ptr %l55
  br label %bb17
bb17:
  %t103 = load ptr, ptr %l47, !tbaa !29
  %t104 = load i32, ptr %l55, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t103, i32 %t104)
  store { i64, ptr } %t105, ptr %l56
  br label %bb18
bb18:
  %t106 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  %t108 = extractvalue { i64, ptr } %t106, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t113 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t115 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOverlap(ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t113, { i64, ptr } %t112)
  store %"compiler/diagmsg:Msg" %t115, ptr %l58
  br label %bb19
bb19:
  %t116 = load ptr, ptr %l39, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l42
  %t118 = load %"compiler/diagmsg:Msg", ptr %l58
  %t119 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t116, %"compiler/source:Span" %t117, %"compiler/diagmsg:Msg" %t118)
  store i64 %t119, ptr %l59
  br label %bb20
bb20:
  %t120 = load i64, ptr %l59, !tbaa !24
  store i64 %t120, ptr %l5, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t121)
  br label %bb21
bb21:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i64, ptr %l2, !tbaa !24
  %t130 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l64
  br label %bb22
bb22:
  %t131 = load ptr, ptr %l64, !tbaa !29
  store ptr %t131, ptr %l6, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l65, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t137 = load i64, ptr %l2, !tbaa !24
  %t140 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t136, i64 %t137)
  store i64 %t140, ptr %l69
  br label %bb23
bb23:
  %t141 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t142 = load ptr, ptr %l65, !tbaa !29
  %t143 = load i64, ptr %l69, !tbaa !24
  %t145 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t142, i64 -1, i64 %t143, i32 %t141, i32 0)
  store ptr %t145, ptr %l71
  br label %bb24
bb24:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/load:Loader", ptr %t152, i32 0, i32 4
  %t155 = load ptr, ptr %t154, !tbaa !29
  store ptr %t155, ptr %l75, !tbaa !29
  %t156 = load i64, ptr %l5, !tbaa !24
  store i64 %t156, ptr %l76, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l77, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l6, !tbaa !29
  %t162 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t158, ptr %t159)
  store %"compiler/source:Span" %t162, ptr %l80
  br label %bb25
bb25:
  %t163 = load ptr, ptr %l77, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l80
  %t165 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t163, %"compiler/source:Span" %t164)
  store { i64, [3 x i64] } %t165, ptr %l81
  br label %bb26
bb26:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load ptr, ptr %l6, !tbaa !29
  %t169 = getelementptr %"compiler/ast:Func", ptr %t167, i32 0, i32 2
  %t170 = load i32, ptr %t169, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t166, i32 %t170)
  store { i64, ptr } %t173, ptr %l85
  br label %bb27
bb27:
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t176 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t174, i64 %t175)
  %t184 = getelementptr i8, ptr %t183, i64 %t175
  call void @olang_textcopy(ptr %t184, ptr %t177, i64 %t178)
  %t185 = getelementptr i8, ptr %t184, i64 %t178
  call void @olang_textcopy(ptr %t185, ptr %t180, i64 %t181)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t183, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } %t187, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  %t196 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %s0, ptr %v0, { i64, ptr } %t194)
  store %"compiler/diagmsg:Msg" %t196, ptr %l88
  br label %bb28
bb28:
  %t197 = load ptr, ptr %l75, !tbaa !29
  %t198 = load i64, ptr %l76, !tbaa !24
  %t199 = load { i64, [3 x i64] }, ptr %l81
  %t200 = load %"compiler/diagmsg:Msg", ptr %l88
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t197, i64 %t198, { i64, [3 x i64] } %t199, %"compiler/diagmsg:Msg" %t200)
  br label %bb29
bb29:
  %t201 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t201)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emovesHere(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca ptr
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 1
  %t7 = load { i64, [2 x i64] }, ptr %t6
  %t11 = extractvalue { i64, [2 x i64] } %t7, 0
  %t12 = icmp eq i64 %t11, 4
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_50501a9e8f2d69dd_68ff42214473c41)
  unreachable
bb10:
  %t14 = load i1, ptr %l6, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
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
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 113}
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
  %t28 = load i32, ptr %l3, !range !{i32 0, i32 113}
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l8 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %t3, i32 2, ptr %a2, ptr null)
  store ptr %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l8, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoItemField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l11 = alloca i1
  %l15 = alloca i64
  %l19 = alloca { i64, ptr }
  %l22 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"compiler/msgs:Nearest"
  %l37 = alloca { i64, ptr }
  %l42 = alloca i1
  %l46 = alloca i1
  %l47 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l67 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:fieldSet", ptr %t1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp sge i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/check:fieldSet", ptr %t8, i32 0, i32 0
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i64 @compiler_2fcheck_2enameIndex(ptr %v1, { i64, ptr } %t11, i32 %t12)
  store i64 %t15, ptr %l15
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp sge i64 %t16, 0
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l11, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t24, ptr %l19
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/check:fieldSet", ptr %t25, i32 0, i32 2
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t31 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t29, { i64, ptr } %t28)
  store %"compiler/diagmsg:Msg" %t31, ptr %l22
  br label %bb8
bb8:
  %t32 = load %"compiler/diagmsg:Msg", ptr %l22
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store %"compiler/diagmsg:Msg" %t32, ptr %t33
  call void @__olang_scope_close(ptr %s0)
  store ptr %t33, ptr %rv
  br label %ret
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t35, i32 %t36)
  store { i64, ptr } %t39, ptr %l26
  br label %bb10
bb10:
  %t40 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t41 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t40)
  store %"compiler/msgs:Nearest" %t41, ptr %l27
  br label %bb11
bb11:
  %t42 = load %"compiler/msgs:Nearest", ptr %l27
  %t43 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t42, ptr %t43
  store ptr %t43, ptr %l3, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/check:fieldSet", ptr %t45, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb13, label %bb14
bb13:
  br label %bb26
bb14:
  br label %bb15
bb15:
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t62, ptr %l37, !tbaa !27
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i32, ptr %t66, i64 %t63
  %t68 = load i32, ptr %t67, !tbaa !33
  store i32 %t68, ptr %l7, !tbaa !23
  %t70 = load i32, ptr %l7, !tbaa !23
  %t72 = icmp ne i32 %t70, 0
  br i1 %t72, label %bb16, label %bb17
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t76 = load i32, ptr %l7, !tbaa !23
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldReadable(ptr %v0, ptr %v1, ptr %t74, ptr %t75, i32 %t76)
  store i1 %t80, ptr %l46
  br label %bb18
bb17:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb19
bb18:
  %t81 = load i1, ptr %l46, !tbaa !21
  store i1 %t81, ptr %l42, !tbaa !21
  br label %bb19
bb19:
  %t82 = load i1, ptr %l42, !tbaa !21
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t83 = load ptr, ptr %l3, !tbaa !29
  store ptr %t83, ptr %l47, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l7, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t84, i32 %t85)
  store { i64, ptr } %t88, ptr %l50
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t89 = load ptr, ptr %l47, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l50, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t89, { i64, ptr } %t90)
  br label %bb23
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t91 = load i64, ptr %l5, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l5, !tbaa !24
  br label %bb12
bb26:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/check:fieldSet", ptr %t95, i32 0, i32 1
  %t98 = load i32, ptr %t97, !tbaa !23
  %t100 = icmp sge i32 %t98, 0
  br i1 %t100, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr %"compiler/check:fieldSet", ptr %t102, i32 0, i32 2
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %l57, !tbaa !27
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l2, !tbaa !23
  %t110 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t106, i32 %t107)
  store { i64, ptr } %t110, ptr %l60
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t113 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %s6, ptr %t111)
  store { i64, ptr } %t113, ptr %l62
  br label %bb30
bb30:
  %t114 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  %t116 = extractvalue { i64, ptr } %t114, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t124 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatNoField(ptr %v1, ptr %v0, ptr %s6, ptr %v2, { i64, ptr } %t121, { i64, ptr } %t122, { i64, ptr } %t120)
  store %"compiler/diagmsg:Msg" %t124, ptr %l64
  br label %bb31
bb31:
  %t125 = load %"compiler/diagmsg:Msg", ptr %l64
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store %"compiler/diagmsg:Msg" %t125, ptr %t126
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t126, ptr %rv
  br label %ret
bb32:
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr %"compiler/check:fieldSet", ptr %t128, i32 0, i32 2
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l67, !tbaa !27
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i32, ptr %l2, !tbaa !23
  %t136 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t132, i32 %t133)
  store { i64, ptr } %t136, ptr %l70
  br label %bb33
bb33:
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t139 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %s0, ptr %t137)
  store { i64, ptr } %t139, ptr %l72
  br label %bb34
bb34:
  %t140 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = mul i64 %t141, 1
  %t144 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t143)
  call void @llvm.memcpy.p0.p0.i64(ptr %t144, ptr %t142, i64 %t143, i1 false)
  %t145 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t144, 1
  %t147 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t150 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadNoField(ptr %v1, ptr %v0, ptr %s0, ptr %v2, { i64, ptr } %t147, { i64, ptr } %t148, { i64, ptr } %t146)
  store %"compiler/diagmsg:Msg" %t150, ptr %l74
  br label %bb35
bb35:
  %t151 = load %"compiler/diagmsg:Msg", ptr %l74
  %t152 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store %"compiler/diagmsg:Msg" %t151, ptr %t152
  call void @__olang_scope_close(ptr %s0)
  store ptr %t152, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t11 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryNothingFails(ptr %s0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) })
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
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
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 28}
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
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 113}
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
  %t56 = load i32, ptr %l3, !range !{i32 0, i32 113}
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

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopParam(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca i1
  %l8 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca i32
  %l15 = alloca { i64, ptr }
  %l18 = alloca i32
  %l20 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca i32
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
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l11
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t13 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i32, ptr %l11, !tbaa !23
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopParam(ptr %v0, ptr %t14, i32 %t15, i32 %t13)
  store i32 %t17, ptr %l13
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i32, ptr %l13, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
bb6:
  %t19 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t21 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s0, i32 %t19)
  store { i64, ptr } %t21, ptr %l15
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l18
  br label %bb8
bb8:
  %t28 = load i32, ptr %l18, !tbaa !23
  store i32 %t28, ptr %l4, !tbaa !23
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t31, ptr %l20
  br label %bb9
bb9:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb13
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l4, !tbaa !23
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l24
  br label %bb12
bb12:
  %t38 = load i1, ptr %l24, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t41 = load i1, ptr %l21, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t42, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l4, !tbaa !23
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t45, i32 %t46, { i64, ptr } %t47, i64 1)
  store i64 %t51, ptr %l31
  br label %bb17
bb17:
  %t52 = load i32, ptr %l1, !tbaa !23
  %t53 = load ptr, ptr %l27, !tbaa !29
  %t54 = load i64, ptr %l31, !tbaa !24
  %t56 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %t53, i64 %t54, i32 %t52)
  store i32 %t56, ptr %l33
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t57 = load i32, ptr %l33, !tbaa !23
  store i32 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca %"compiler/source:Span"
  %l16 = alloca { i64, ptr }
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca ptr
  %l20 = alloca i1
  %l27 = alloca %"compiler/source:Span"
  %l30 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
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
  store %"compiler/source:Span" %t22, ptr %l13
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t23, i32 %t24)
  store { i64, ptr } %t27, ptr %l16
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = load %"compiler/source:Span", ptr %l13
  %t32 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t30, i64 %t29)
  store %"compiler/source:Span" %t32, ptr %l18
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  %t33 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t33, ptr %rv
  br label %ret
bb8:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 28}
  %t41 = icmp eq i64 %t39, 13
  store i1 %t41, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l20, !tbaa !21
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
  store %"compiler/source:Span" %t53, ptr %l27
  br label %bb14
bb14:
  %t54 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t54, ptr %rv
  br label %ret
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t59 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  store %"compiler/source:Span" %t59, ptr %l30
  br label %bb19
bb19:
  %t60 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t60, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_e993077ed681d47d_7cf2fdb3e0a34b99)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l10, !tbaa !27
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
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l27, !tbaa !27
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
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l31, !tbaa !27
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
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l35, !tbaa !27
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
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l39, !tbaa !27
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
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l50, !tbaa !27
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
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l64, !tbaa !27
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadPatternOk(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca { i64, i32 }
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/check:payloadItem"
  %l19 = alloca ptr
  %l20 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %l44 = alloca { i64, i32 }
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l55 = alloca ptr
  %l60 = alloca i32
  %l62 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l86 = alloca { i64, ptr }
  %l92 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l100 = alloca %"compiler/diagmsg:Msg"
  %l101 = alloca i64
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca i64
  %l110 = alloca i64
  %l115 = alloca %"compiler/check:payloadItem"
  %l126 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t2 = load ptr, ptr %l19, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l19, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l20, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l20, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [4 x i64] }, ptr %t13, i32 0, i32 1
  %t16 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t15, i32 0, i32 0
  %t17 = load %"compiler/source:Span", ptr %t16
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t21, i32 0, i32 1
  %t23 = load ptr, ptr %t22
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t27, i32 0, i32 2
  %t29 = load { i64, ptr }, ptr %t28
  store %"compiler/source:Span" %t17, ptr %l8
  store { i64, ptr } %t29, ptr %l9, !tbaa !27
  %t37 = call ptr @compiler_2fcheck_2eexprPath(ptr %v1, ptr %s0, ptr %t23)
  store ptr %t37, ptr %l34
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l34, !tbaa !29
  store ptr %t38, ptr %l10, !tbaa !29
  %t39 = load ptr, ptr %l10, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l37, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t44, ptr %l38
  %t45 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %v0)
  store %"compiler/diagmsg:Msg" %t45, ptr %l39
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t46 = load ptr, ptr %l37, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l38
  %t48 = load %"compiler/diagmsg:Msg", ptr %l39
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t46, %"compiler/source:Span" %t47, %"compiler/diagmsg:Msg" %t48)
  store i64 %t49, ptr %l40
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l10, !tbaa !29
  %t55 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %s0, ptr %t51, ptr %t52)
  store { i64, i32 } %t55, ptr %l44
  br label %bb12
bb12:
  %t56 = load { i64, i32 }, ptr %l44
  store { i64, i32 } %t56, ptr %l11
  %t57 = getelementptr { i64, i32 }, ptr %l11, i32 0, i32 0
  %t58 = load i64, ptr %t57, !tbaa !24
  store i64 %t58, ptr %l12, !tbaa !24
  %t60 = getelementptr { i64, i32 }, ptr %l11, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  store i32 %t61, ptr %l13, !tbaa !23
  %t63 = load i64, ptr %l12, !tbaa !24
  %t65 = icmp slt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l49, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t68, ptr %l50
  %t69 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %v0)
  store %"compiler/diagmsg:Msg" %t69, ptr %l51
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t70 = load ptr, ptr %l49, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l50
  %t72 = load %"compiler/diagmsg:Msg", ptr %l51
  %t73 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t70, %"compiler/source:Span" %t71, %"compiler/diagmsg:Msg" %t72)
  store i64 %t73, ptr %l52
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l55, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l13, !tbaa !23
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t88, ptr %l60
  br label %bb18
bb18:
  %t89 = load i64, ptr %l12, !tbaa !24
  %t90 = load ptr, ptr %l55, !tbaa !29
  %t91 = load i32, ptr %l60, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %s0, ptr %t90, i32 %t91, i64 %t89)
  store { i64, ptr } %t93, ptr %l62
  br label %bb19
bb19:
  %t94 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t94, ptr %l14, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t99 = icmp eq i64 %t97, 0
  br i1 %t99, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l66, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t102, ptr %l67
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l13, !tbaa !23
  %t105 = load i64, ptr %l12, !tbaa !24
  %t109 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s4, ptr %t103, i32 %t104, i64 %t105)
  store { i64, ptr } %t109, ptr %l71
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t110 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  %t112 = extractvalue { i64, ptr } %t110, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t118 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %s4, ptr %v0, { i64, ptr } %t116)
  store %"compiler/diagmsg:Msg" %t118, ptr %l73
  br label %bb23
bb23:
  %t119 = load ptr, ptr %l66, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l67
  %t121 = load %"compiler/diagmsg:Msg", ptr %l73
  %t122 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t119, %"compiler/source:Span" %t120, %"compiler/diagmsg:Msg" %t121)
  store i64 %t122, ptr %l74
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb25:
  %t124 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t127 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t132 = icmp sgt i64 %t126, %t129
  br i1 %t132, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l81, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t135, ptr %l82
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i32, ptr %l13, !tbaa !23
  %t138 = load i64, ptr %l12, !tbaa !24
  %t142 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s5, ptr %t136, i32 %t137, i64 %t138)
  store { i64, ptr } %t142, ptr %l86
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t143 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  %t145 = extractvalue { i64, ptr } %t143, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t159 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadArgs(ptr %s5, ptr %v0, { i64, ptr } %t149, i64 %t152, i64 %t155)
  store %"compiler/diagmsg:Msg" %t159, ptr %l92
  br label %bb29
bb29:
  %t160 = load ptr, ptr %l81, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l82
  %t162 = load %"compiler/diagmsg:Msg", ptr %l92
  %t163 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t160, %"compiler/source:Span" %t161, %"compiler/diagmsg:Msg" %t162)
  store i64 %t163, ptr %l93
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb31:
  %t167 = xor i1 %a3, true
  br i1 %t167, label %bb32, label %bb33
bb32:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l97, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t170, ptr %l98
  %t173 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrPatternNeedsName(ptr %v2, ptr %v0, { i64, ptr } %a2)
  store %"compiler/diagmsg:Msg" %t173, ptr %l100
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t174 = load ptr, ptr %l97, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l98
  %t176 = load %"compiler/diagmsg:Msg", ptr %l100
  %t177 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t174, %"compiler/source:Span" %t175, %"compiler/diagmsg:Msg" %t176)
  store i64 %t177, ptr %l101
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb36:
  %t179 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %l103
  br label %bb37
bb37:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l15
  store %olang.scope zeroinitializer, ptr %s7
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t185 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v1, ptr %s7, ptr %t181, ptr %t182)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %l106
  br label %bb38
bb38:
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  %t187 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %t187
  store ptr %t187, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s8
  %t189 = load i64, ptr %l17, !tbaa !24
  store i64 %t189, ptr %l108, !tbaa !24
  %t190 = load ptr, ptr %l16, !tbaa !29
  %t192 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eLe_Hf8109b64a4e45220d0da36a987cf38b1(ptr %s7, ptr %t190)
  store i64 %t192, ptr %l110
  br label %bb40
bb40:
  %t193 = load i64, ptr %l108, !tbaa !24
  %t194 = load i64, ptr %l110, !tbaa !24
  %t195 = icmp slt i64 %t193, %t194
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s8)
  br label %bb51
bb42:
  br label %bb43
bb43:
  %t199 = load ptr, ptr %l16, !tbaa !29
  %t200 = load i64, ptr %l17, !tbaa !24
  %t203 = call %"compiler/check:payloadItem" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eAt_H64f851f610dd8566f1d7651b626ec99d(ptr %s7, ptr %s7, ptr %t199, i64 %t200)
  store %"compiler/check:payloadItem" %t203, ptr %l115
  br label %bb44
bb44:
  %t204 = load %"compiler/check:payloadItem", ptr %l115
  store %"compiler/check:payloadItem" %t204, ptr %l18
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l8
  %t207 = load i32, ptr %l13, !tbaa !23
  %t208 = load i64, ptr %l12, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t223 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItemOk(ptr %v0, ptr %s8, ptr %s0, ptr %s0, ptr %t205, ptr %l18, %"compiler/source:Span" %t206, i32 %t207, i64 %t208, { i64, ptr } %t209, i64 %t212, ptr %l15, i64 %a4)
  store i1 %t223, ptr %l126
  br label %bb45
bb45:
  %t224 = load i1, ptr %l126, !tbaa !21
  %t225 = xor i1 %t224, true
  br i1 %t225, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t228 = getelementptr %"compiler/check:payloadItem", ptr %l18, i32 0, i32 0
  %t229 = load i32, ptr %t228, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l15, i32 %t229)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb50:
  %t232 = load i64, ptr %l17, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l17, !tbaa !24
  br label %bb39
bb51:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainScalar(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb4
bb4:
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t13 = load i32, ptr %l8, !tbaa !23
  %t15 = icmp eq i32 %t13, %t12
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l14
  br label %bb9
bb9:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l23
  br label %bb12
bb11:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb14
bb12:
  %t41 = load ptr, ptr %l18, !tbaa !29
  %t42 = load i32, ptr %l23, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t43, ptr %l24
  br label %bb13
bb13:
  %t44 = load i1, ptr %l24, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l15, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l15, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l16 = alloca i1
  %l19 = alloca i32
  %l24 = alloca ptr
  %l28 = alloca i64
  %l33 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i1
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l52 = alloca { i64, ptr }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l65 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca %"compiler/source:Span"
  %l74 = alloca i64
  %l76 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l86 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t2)
  store i32 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t7 = load i32, ptr %l11, !tbaa !23
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t8, ptr %l12
  br label %bb2
bb2:
  %t9 = load i32, ptr %l12, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load i32, ptr %l5, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb6
bb4:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t16)
  store i32 %t19, ptr %l19
  br label %bb5
bb5:
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t21 = load i32, ptr %l19, !tbaa !23
  %t23 = icmp eq i32 %t21, %t20
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l16, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l1
  %t30 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t26, %"compiler/source:Span" %t27)
  store ptr %t30, ptr %l24
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load ptr, ptr %l24, !tbaa !29
  store ptr %t31, ptr %rv
  br label %ret
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l5, !tbaa !23
  %t34 = load %"compiler/source:Span", ptr %l2
  %t38 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %t32, i32 %t33, %"compiler/source:Span" %t34)
  store i64 %t38, ptr %l28
  br label %bb11
bb11:
  %t39 = load i64, ptr %l28, !tbaa !24
  store i64 %t39, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t42 = icmp slt i64 %t40, 0
  br i1 %t42, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l5, !tbaa !23
  %t48 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t44, i32 %t45)
  store i1 %t48, ptr %l33
  br label %bb14
bb13:
  br label %bb28
bb14:
  %t49 = load i1, ptr %l33, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l5, !tbaa !23
  %t54 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l37
  br label %bb17
bb16:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb18
bb17:
  %t55 = load i1, ptr %l37, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l34, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l5, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t59, i32 %t60)
  store { i64, ptr } %t63, ptr %l42
  br label %bb21
bb20:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l39, !tbaa !27
  br label %bb23
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l5, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t64, i32 %t65)
  store { i64, ptr } %t68, ptr %l45
  br label %bb22
bb22:
  %t69 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t71 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t69, i64 %t70)
  %t86 = getelementptr i8, ptr %t85, i64 %t70
  call void @olang_textcopy(ptr %t86, ptr %t72, i64 %t73)
  %t87 = getelementptr i8, ptr %t86, i64 %t73
  call void @olang_textcopy(ptr %t87, ptr %t75, i64 %t76)
  %t88 = getelementptr i8, ptr %t87, i64 %t76
  call void @olang_textcopy(ptr %t88, ptr %t79, i64 %t80)
  %t89 = getelementptr i8, ptr %t88, i64 %t80
  call void @olang_textcopy(ptr %t89, ptr %t82, i64 %t83)
  %t90 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t85, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = extractvalue { i64, ptr } %t91, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l39, !tbaa !27
  br label %bb23
bb23:
  %t100 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t100, ptr %l7, !tbaa !27
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l48, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t102, ptr %l49
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l5, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t103, i32 %t104)
  store { i64, ptr } %t107, ptr %l52
  br label %bb24
bb24:
  %t108 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePowNone(ptr %s2, ptr %s2, ptr %v0, { i64, ptr } %t114, { i64, ptr } %t115)
  store %"compiler/diagmsg:Msg" %t118, ptr %l55
  br label %bb25
bb25:
  %t119 = load ptr, ptr %l48, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l49
  %t121 = load %"compiler/diagmsg:Msg", ptr %l55
  %t122 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t119, %"compiler/source:Span" %t120, %"compiler/diagmsg:Msg" %t121)
  store i64 %t122, ptr %l56
  br label %bb26
bb26:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l1
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t123, %"compiler/source:Span" %t124)
  store ptr %t127, ptr %l59
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t128 = load ptr, ptr %l59, !tbaa !29
  store ptr %t128, ptr %rv
  br label %ret
bb28:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l60, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l61, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t135 = load i64, ptr %l6, !tbaa !24
  %t138 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t134, i64 %t135)
  store ptr %t138, ptr %l65
  br label %bb29
bb29:
  %t139 = load ptr, ptr %l65, !tbaa !29
  %t141 = getelementptr %"compiler/ast:Func", ptr %t139, i32 0, i32 2
  %t142 = load i32, ptr %t141, !tbaa !23
  %t143 = load ptr, ptr %l61, !tbaa !29
  %t145 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t143, i32 %t142)
  store { i64, ptr } %t145, ptr %l68
  br label %bb30
bb30:
  %t146 = load ptr, ptr %l60, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 57
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l69, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t150 = load ptr, ptr %l60, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 57
  store { i64, ptr } %t149, ptr %t151, !tbaa !27
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e57
  br i1 %t152, label %bb31, label %bb32
bb31:
  %t154 = load { i64, ptr }, ptr %l69
  %t155 = extractvalue { i64, ptr } %t154, 1
  call void @__olang_region_release(ptr %t155)
  store { i64, ptr } zeroinitializer, ptr %l69
  br label %bb32
bb32:
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l71, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t157, ptr %l72
  %t158 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t158, ptr %l73
  %t159 = load i64, ptr %l6, !tbaa !24
  store i64 %t159, ptr %l74, !tbaa !24
  %t160 = load ptr, ptr %l3, !tbaa !29
  store ptr %t160, ptr %l76, !tbaa !29
  %t162 = icmp sge i64 0, 0
  br i1 %t162, label %bb33, label %bb34
bb33:
  %t164 = icmp sle i64 0, 1152921504606846975
  br i1 %t164, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_40ba663ddc86f216_8a32628f26d9e82)
  unreachable
bb35:
  %t166 = mul i64 0, 8
  %t167 = insertvalue { i64, ptr } undef, i64 0, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t168, ptr %l79, !tbaa !27
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l4, !tbaa !29
  %t173 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v2, ptr %v0, ptr %t169, ptr %t170)
  store { i64, ptr } %t173, ptr %l82
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_40ba663ddc86f216_8a32628f26d9e82)
  unreachable
bb37:
  %t174 = icmp sge i64 0, 0
  br i1 %t174, label %bb38, label %bb39
bb38:
  %t176 = icmp sle i64 0, 2305843009213693951
  br i1 %t176, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_e2e10646092ca22b_113878b4617d7337)
  unreachable
bb40:
  %t178 = mul i64 0, 4
  %t179 = insertvalue { i64, ptr } undef, i64 0, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t181 = load ptr, ptr %l71, !tbaa !29
  %t182 = load %"compiler/source:Span", ptr %l72
  %t183 = load %"compiler/source:Span", ptr %l73
  %t184 = load i64, ptr %l74, !tbaa !24
  %t185 = load ptr, ptr %l76, !tbaa !29
  %t186 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t189 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t181, %"compiler/source:Span" %t182, %"compiler/source:Span" %t183, i64 %t184, ptr %t185, { i64, ptr } %t186, { i64, ptr } %t187, { i64, ptr } %t180)
  store ptr %t189, ptr %l86
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_e2e10646092ca22b_113878b4617d7337)
  unreachable
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t190 = load ptr, ptr %l86, !tbaa !29
  store ptr %t190, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawTable(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l19 = alloca %"compiler/check:rawTable"
  %l23 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l46 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1, ptr %l8, !tbaa !23
  %t2 = ptrtoint ptr %v1 to i64
  store i64 %t2, ptr %l9, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3arawTable_2e2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v1)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t7 = icmp sge i64 0, 0
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = icmp sle i64 0, 1152921504606846975
  br i1 %t9, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_ec8a21dbb084e216_fbcda7bc6021fa9a)
  unreachable
bb5:
  %t11 = mul i64 0, 8
  %t12 = load i64, ptr %l9
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = insertvalue { i64, ptr } undef, i64 0, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = ptrtoint ptr %v1 to i64
  store i64 %t16, ptr %l14, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3arawTable_2e3
  br i1 %t17, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_ec8a21dbb084e216_fbcda7bc6021fa9a)
  unreachable
bb7:
  %t19 = call ptr @__olang_region_make(ptr %v1)
  %t20 = ptrtoint ptr %t19 to i64
  store i64 %t20, ptr %l14, !tbaa !24
  br label %bb8
bb8:
  %t21 = icmp sge i64 0, 0
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = icmp sle i64 0, 576460752303423487
  br i1 %t23, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ec8a21dbb084e216_fbcda7bc6021fa9a)
  unreachable
bb11:
  %t25 = mul i64 0, 16
  %t26 = load i64, ptr %l14
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = insertvalue { i64, ptr } undef, i64 0, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t30 = load i32, ptr %l8, !tbaa !23
  %t31 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t33 = call %"compiler/check:rawTable" @compiler_2fcheck_3arawTable_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t30, i1 false, { i64, ptr } %t31, { i64, ptr } %t29)
  store %"compiler/check:rawTable" %t33, ptr %l19
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_ec8a21dbb084e216_fbcda7bc6021fa9a)
  unreachable
bb13:
  %t34 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t34, ptr %lp3
  %t35 = load %"compiler/check:rawTable", ptr %l19
  %t36 = load ptr, ptr %lp3
  store %"compiler/check:rawTable" %t35, ptr %t36
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t40, i32 %t41)
  store ptr %t44, ptr %l23
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l23, !tbaa !29
  store ptr %t45, ptr %l4, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb17
bb16:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TypeDecl", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  store i1 %t55, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l26, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  %t58 = load ptr, ptr %lp3
  store ptr %t58, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr %"compiler/ast:TypeDecl", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l5, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  store ptr %t65, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t66 = load ptr, ptr %l33, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t69 = load ptr, ptr %l33, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 5}
  %t72 = icmp eq i64 %t70, 1
  store i1 %t72, ptr %l34, !tbaa !21
  br label %bb22
bb22:
  %t73 = load i1, ptr %l34, !tbaa !21
  br i1 %t73, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l5, !tbaa !29
  %t76 = getelementptr { i64, [6 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { { i64, ptr }, ptr }, ptr %t76, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77
  store { i64, ptr } %t78, ptr %l6, !tbaa !27
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t82 = getelementptr { i64, [6 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { { i64, ptr }, ptr }, ptr %t82, i32 0, i32 1
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l1, !tbaa !23
  %t88 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t96 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawEnum(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t86, i32 %t87, { i64, ptr } %t88, ptr %t89, i1 %a2)
  store ptr %t96, ptr %l46
  br label %bb26
bb26:
  %t97 = load ptr, ptr %l46, !tbaa !29
  store ptr %t97, ptr %rv
  br label %ret
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t98 = load ptr, ptr %lp3
  store ptr %t98, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_89ab76664fe93b5c_2e5cefefce25c48)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"compiler/typed:SiteInfo"
  %l10 = alloca ptr
  %l15 = alloca %"compiler/typed:SiteInfo"
  %l19 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp slt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 18
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t9, i64 %a2)
  store ptr %t13, ptr %l10
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 9
  %t17 = load i32, ptr %l1, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t22 = call %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t16, i64 %t19)
  store %"compiler/typed:SiteInfo" %t22, ptr %l15
  br label %bb5
bb5:
  %t23 = load %"compiler/typed:SiteInfo", ptr %l15
  store %"compiler/typed:SiteInfo" %t23, ptr %l3
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/typed:SiteInfo", ptr %l3, i32 0, i32 0
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 9}
  %t27 = getelementptr %"compiler/typed:SiteInfo", ptr %l3, i32 0, i32 1
  %t28 = load %"compiler/source:Span", ptr %t27
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t24, i32 %t26, %"compiler/source:Span" %t28)
  store i32 %t32, ptr %l19
  br label %bb6
bb6:
  %t33 = load i32, ptr %l19, !tbaa !23
  store i32 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/check:reflVal"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca %"compiler/check:reflVal"
  %l20 = alloca i1
  %l30 = alloca %"compiler/check:reflVal"
  %l37 = alloca i1
  %l47 = alloca i64
  %l50 = alloca i64
  %l69 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l89 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l108 = alloca ptr
  %l112 = alloca %"compiler/check:reflVal"
  %l115 = alloca i1
  %l123 = alloca i1
  %l132 = alloca i1
  %l135 = alloca i1
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Match", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 159
  %t10 = load i1, ptr %t9, !tbaa !21
  store i1 %t10, ptr %l2, !tbaa !21
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 159
  store i1 false, ptr %t14, !tbaa !21
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Match", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t22 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %s0, ptr %t15, ptr %t19)
  store %"compiler/check:reflVal" %t22, ptr %l30
  br label %bb4
bb4:
  %t23 = load %"compiler/check:reflVal", ptr %l30
  store %"compiler/check:reflVal" %t23, ptr %l3
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 159
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i1, ptr %l2, !tbaa !21
  %t33 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 159
  store i1 %t30, ptr %t33, !tbaa !21
  %t36 = xor i1 %t27, true
  br i1 %t36, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb7
bb6:
  %t38 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 0
  %t39 = load i1, ptr %t38, !tbaa !21
  %t41 = xor i1 %t39, true
  store i1 %t41, ptr %l37, !tbaa !21
  br label %bb7
bb7:
  %t43 = load i1, ptr %l37, !tbaa !21
  br i1 %t43, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  store i64 -1, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/ast:Match", ptr %t45, i32 0, i32 3
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = icmp sgt i64 %t52, %t53
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb16
bb13:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t67 = load i64, ptr %l8, !tbaa !24
  %t70 = add i64 %t66, %t67
  %t72 = sub i64 %t70, 1
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = sdiv i64 %t72, %t73
  store i64 %t76, ptr %l50, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb15
bb15:
  %t78 = load i64, ptr %l50, !tbaa !24
  store i64 %t78, ptr %l47, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l47, !tbaa !24
  store i64 %t79, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb18, label %bb19
bb18:
  br label %bb76
bb19:
  br label %bb20
bb20:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = mul i64 %t89, %t90
  %t96 = add i64 %t88, %t93
  store i64 %t96, ptr %l11, !tbaa !24
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Match", ptr %t98, i32 0, i32 3
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l69, !tbaa !27
  %t102 = load i64, ptr %l11, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr ptr, ptr %t105, i64 %t102
  %t107 = load ptr, ptr %t106, !tbaa !39
  store ptr %t107, ptr %l12, !tbaa !29
  %t109 = load ptr, ptr %l12, !tbaa !29
  %t111 = getelementptr %"compiler/ast:Case", ptr %t109, i32 0, i32 3
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t119 = load ptr, ptr %l12, !tbaa !29
  %t121 = getelementptr %"compiler/ast:Case", ptr %t119, i32 0, i32 1
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  store i64 %t126, ptr %l15, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t128 = load i64, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l15, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  br label %bb74
bb26:
  br label %bb27
bb27:
  %t136 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t136, ptr %l85, !tbaa !27
  %t137 = load i64, ptr %l14, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr ptr, ptr %t140, i64 %t137
  %t142 = load ptr, ptr %t141, !tbaa !39
  store ptr %t142, ptr %l16, !tbaa !29
  %t144 = load ptr, ptr %l16, !tbaa !29
  %t146 = call i1 @compiler_2fcheck_2eisWild(ptr %v1, ptr %t144)
  store i1 %t146, ptr %l89
  br label %bb28
bb28:
  %t147 = load i1, ptr %l89, !tbaa !21
  br i1 %t147, label %bb29, label %bb30
bb29:
  %t148 = load i64, ptr %l5, !tbaa !24
  %t150 = icmp slt i64 %t148, 0
  br i1 %t150, label %bb31, label %bb32
bb30:
  br label %bb34
bb31:
  %t152 = load i64, ptr %l11, !tbaa !24
  store i64 %t152, ptr %l5, !tbaa !24
  br label %bb33
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s7)
  br label %bb73
bb34:
  store ptr null, ptr %l17, !tbaa !29
  %t154 = load ptr, ptr %l16, !tbaa !29
  store ptr %t154, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t155 = load ptr, ptr %l93, !tbaa !29
  %t156 = icmp ne ptr %t155, null
  br i1 %t156, label %bb35, label %bb36
bb35:
  %t158 = load ptr, ptr %l93, !tbaa !29
  %t159 = load i64, ptr %t158, !range !{i64 0, i64 9}
  %t161 = icmp eq i64 %t159, 4
  store i1 %t161, ptr %l94, !tbaa !21
  br label %bb36
bb36:
  %t162 = load i1, ptr %l94, !tbaa !21
  br i1 %t162, label %bb37, label %bb38
bb37:
  %t163 = load ptr, ptr %l16, !tbaa !29
  %t165 = getelementptr { i64, [4 x i64] }, ptr %t163, i32 0, i32 1
  %t166 = getelementptr { %"compiler/source:Span", ptr }, ptr %t165, i32 0, i32 1
  %t167 = load ptr, ptr %t166
  store ptr %t167, ptr %l18, !tbaa !29
  br label %bb43
bb38:
  %t169 = load ptr, ptr %l16, !tbaa !29
  store ptr %t169, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t170 = load ptr, ptr %l99, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb39, label %bb40
bb39:
  %t173 = load ptr, ptr %l99, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 9}
  %t176 = icmp eq i64 %t174, 1
  store i1 %t176, ptr %l100, !tbaa !21
  br label %bb40
bb40:
  %t177 = load i1, ptr %l100, !tbaa !21
  br i1 %t177, label %bb41, label %bb42
bb41:
  %t178 = load ptr, ptr %l16, !tbaa !29
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l18, !tbaa !29
  br label %bb43
bb42:
  br label %bb44
bb43:
  %t184 = load ptr, ptr %l18, !tbaa !29
  store ptr %t184, ptr %l17, !tbaa !29
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_9e01274f48f7ce6d_f4de7e29f0d3bc19)
  unreachable
bb49:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l108, !tbaa !29
  %t189 = load ptr, ptr %l17, !tbaa !29
  %t191 = icmp eq ptr %t189, null
  br i1 %t191, label %bb50, label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_67ebba1fc016fa85_5eca450ae3d6f0c1)
  unreachable
bb51:
  br label %bb52
bb52:
  %t193 = load ptr, ptr %l17, !tbaa !29
  %t194 = load ptr, ptr %l108, !tbaa !29
  %t196 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %s7, ptr %t194, ptr %t193)
  store %"compiler/check:reflVal" %t196, ptr %l112
  br label %bb53
bb53:
  %t197 = load %"compiler/check:reflVal", ptr %l112
  store %"compiler/check:reflVal" %t197, ptr %l19
  %t198 = getelementptr %"compiler/check:reflVal", ptr %l19, i32 0, i32 0
  %t199 = load i1, ptr %t198, !tbaa !21
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l115, !tbaa !21
  br label %bb56
bb55:
  %t203 = getelementptr %"compiler/check:reflVal", ptr %l19, i32 0, i32 1
  %t204 = load i64, ptr %t203, !tbaa !24
  %t205 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 1
  %t206 = load i64, ptr %t205, !tbaa !24
  %t209 = icmp ne i64 %t204, %t206
  store i1 %t209, ptr %l115, !tbaa !21
  br label %bb56
bb56:
  %t211 = load i1, ptr %l115, !tbaa !21
  br i1 %t211, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  %t213 = getelementptr %"compiler/check:reflVal", ptr %l19, i32 0, i32 2
  %t214 = load i64, ptr %t213, !tbaa !24
  %t215 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 2
  %t216 = load i64, ptr %t215, !tbaa !24
  %t219 = icmp eq i64 %t214, %t216
  br i1 %t219, label %bb60, label %bb61
bb60:
  %t221 = getelementptr %"compiler/check:reflVal", ptr %l19, i32 0, i32 4
  %t222 = load i32, ptr %t221, !tbaa !23
  %t223 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 4
  %t224 = load i32, ptr %t223, !tbaa !23
  %t227 = icmp eq i32 %t222, %t224
  store i1 %t227, ptr %l123, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb62
bb62:
  %t229 = load i1, ptr %l123, !tbaa !21
  store i1 %t229, ptr %l20, !tbaa !21
  %t230 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 1
  %t231 = load i64, ptr %t230, !tbaa !24
  %t232 = load i64, ptr @G_2ecompiler_2fcheck_2eRvText, !tbaa !24
  %t235 = icmp eq i64 %t231, %t232
  br i1 %t235, label %bb63, label %bb64
bb63:
  %t237 = getelementptr %"compiler/check:reflVal", ptr %l19, i32 0, i32 3
  %t238 = load { i64, ptr }, ptr %t237, !tbaa !27
  %t239 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 3
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s0, { i64, ptr } %t238, { i64, ptr } %t240)
  store i1 %t243, ptr %l132
  br label %bb65
bb64:
  br label %bb66
bb65:
  %t244 = load i1, ptr %l132, !tbaa !21
  store i1 %t244, ptr %l20, !tbaa !21
  br label %bb66
bb66:
  %t245 = load i64, ptr %l5, !tbaa !24
  %t247 = icmp slt i64 %t245, 0
  br i1 %t247, label %bb67, label %bb68
bb67:
  %t249 = load i1, ptr %l20, !tbaa !21
  store i1 %t249, ptr %l135, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb69
bb69:
  %t251 = load i1, ptr %l135, !tbaa !21
  br i1 %t251, label %bb70, label %bb71
bb70:
  %t252 = load i64, ptr %l11, !tbaa !24
  store i64 %t252, ptr %l5, !tbaa !24
  br label %bb72
bb71:
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s7)
  br label %bb73
bb73:
  %t254 = load i64, ptr %l14, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l14, !tbaa !24
  br label %bb24
bb74:
  br label %bb75
bb75:
  %t258 = load i64, ptr %l10, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l10, !tbaa !24
  br label %bb17
bb76:
  %t262 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t262, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %l17 = alloca { i64, ptr }
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
  %l161 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l166 = alloca i64
  %l168 = alloca i64
  %l173 = alloca %"compiler/check:narrowed"
  %l177 = alloca i1
  %l180 = alloca i1
  %l181 = alloca i1
  %l185 = alloca i1
  %l196 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l198 = alloca { i64, ptr }
  %l200 = alloca %"compiler/source:Span"
  %l203 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l209 = alloca { i64, ptr }
  %l212 = alloca { i64, ptr }
  %l215 = alloca %"compiler/diagmsg:Msg"
  %l216 = alloca i64
  %l220 = alloca ptr
  %l225 = alloca i32
  %l226 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l230 = alloca %"compiler/source:Span"
  %l231 = alloca i32
  %l235 = alloca %"compiler/typed:Payload"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca ptr
  %t164 = alloca { i64, [4 x i64] }, align 8
  %t279 = alloca { i64, [4 x i64] }, align 8
  %t481 = alloca { i64, [4 x i64] }, align 8
  %t499 = alloca { i64, [4 x i64] }, align 8
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb9
bb5:
  %t26 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t31 = icmp eq i64 %t27, %t28
  br i1 %t31, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l41, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l41, !tbaa !27
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t33, ptr %l37, !tbaa !27
  br label %bb9
bb9:
  %t34 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t35 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %s1, ptr %s1, ptr %s1, ptr %v0, { i64, ptr } %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t35, ptr %l42
  br label %bb10
bb10:
  %t36 = load ptr, ptr %l32, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l33
  %t38 = load %"compiler/diagmsg:Msg", ptr %l42
  %t39 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t36, %"compiler/source:Span" %t37, %"compiler/diagmsg:Msg" %t38)
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
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l50, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t52, ptr %l51
  %t53 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t57 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfArgs(ptr %v0, i64 %t55)
  store %"compiler/diagmsg:Msg" %t57, ptr %l54
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t58 = load ptr, ptr %l50, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l51
  %t60 = load %"compiler/diagmsg:Msg", ptr %l54
  %t61 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t58, %"compiler/source:Span" %t59, %"compiler/diagmsg:Msg" %t60)
  store i64 %t61, ptr %l55
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t62, { i64, ptr } %t63)
  br label %bb18
bb18:
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
  %t250 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfType(ptr %s9, ptr %s9, ptr %v0, { i64, ptr } %t248, { i64, ptr } %t247)
  store %"compiler/diagmsg:Msg" %t250, ptr %l141
  br label %bb54
bb54:
  %t251 = load ptr, ptr %l129, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l132
  %t253 = load %"compiler/diagmsg:Msg", ptr %l141
  %t254 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t251, %"compiler/source:Span" %t252, %"compiler/diagmsg:Msg" %t253)
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
  %t302 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %s0, ptr %t294, ptr %t299)
  store { i64, ptr } %t302, ptr %l161
  br label %bb62
bb62:
  %t303 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t303, ptr %l17, !tbaa !27
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
  br label %bb84
bb67:
  br label %bb68
bb68:
  %t321 = load ptr, ptr %l19, !tbaa !29
  %t322 = load i64, ptr %l20, !tbaa !24
  %t325 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v0, ptr %t321, i64 %t322)
  store %"compiler/check:narrowed" %t325, ptr %l173
  br label %bb69
bb69:
  %t326 = load %"compiler/check:narrowed", ptr %l173
  store %"compiler/check:narrowed" %t326, ptr %l21
  %t327 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t327, 0
  %t331 = icmp sgt i64 %t329, 0
  br i1 %t331, label %bb70, label %bb71
bb70:
  %t333 = getelementptr %"compiler/check:narrowed", ptr %l21, i32 0, i32 5
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t338 = call i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %s0, { i64, ptr } %t334, { i64, ptr } %t335)
  store i1 %t338, ptr %l180
  br label %bb72
bb71:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb73
bb72:
  %t339 = load i1, ptr %l180, !tbaa !21
  store i1 %t339, ptr %l177, !tbaa !21
  br label %bb73
bb73:
  %t340 = load i1, ptr %l177, !tbaa !21
  br i1 %t340, label %bb74, label %bb75
bb74:
  %t341 = getelementptr %"compiler/check:narrowed", ptr %l21, i32 0, i32 1
  %t342 = load i64, ptr %t341, !tbaa !24
  %t343 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t344 = load i64, ptr %t343, !tbaa !24
  %t347 = icmp eq i64 %t342, %t344
  store i1 %t347, ptr %l181, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb76
bb76:
  %t349 = load i1, ptr %l181, !tbaa !21
  br i1 %t349, label %bb77, label %bb78
bb77:
  %t350 = getelementptr %"compiler/check:narrowed", ptr %l21, i32 0, i32 7
  %t351 = load i1, ptr %t350, !tbaa !21
  %t353 = xor i1 %t351, true
  store i1 %t353, ptr %l185, !tbaa !21
  br label %bb79
bb78:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb79
bb79:
  %t355 = load i1, ptr %l185, !tbaa !21
  br i1 %t355, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb82
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t356 = load i64, ptr %l20, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l20, !tbaa !24
  br label %bb64
bb84:
  %t360 = load i1, ptr %l18, !tbaa !21
  %t362 = xor i1 %t360, true
  br i1 %t362, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s15
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t369 = getelementptr %"compiler/generic:Program", ptr %t367, i32 0, i32 2
  %t370 = load i32, ptr %l8, !tbaa !23
  %t373 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s15, ptr %t369, i32 %t370)
  store { i64, ptr } %t373, ptr %l196
  br label %bb87
bb86:
  br label %bb94
bb87:
  %t374 = load { i64, ptr }, ptr %l196, !tbaa !27
  store { i64, ptr } %t374, ptr %l22, !tbaa !27
  %t375 = load ptr, ptr %l0, !tbaa !29
  store ptr %t375, ptr %l197, !tbaa !29
  %t376 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t376, ptr %l198, !tbaa !27
  %t377 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr ptr, ptr %t378, i64 0
  %t380 = load ptr, ptr %t379, !tbaa !39
  %t382 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t380)
  store %"compiler/source:Span" %t382, ptr %l200
  br label %bb88
bb88:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load i32, ptr %l8, !tbaa !23
  %t387 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s15, ptr %t383, i32 %t384)
  store { i64, ptr } %t387, ptr %l203
  br label %bb89
bb89:
  %t388 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t389 = extractvalue { i64, ptr } %t388, 0
  %t390 = extractvalue { i64, ptr } %t388, 1
  %t391 = mul i64 %t389, 1
  %t392 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t391)
  call void @llvm.memcpy.p0.p0.i64(ptr %t392, ptr %t390, i64 %t391, i1 false)
  %t393 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  store { i64, ptr } %t394, ptr %l204, !tbaa !27
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t396, ptr %l206, !tbaa !27
  %t397 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t398 = load i64, ptr %t397, !tbaa !24
  %t400 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr i32, ptr %t401, i64 %t398
  %t403 = load i32, ptr %t402, !tbaa !33
  %t406 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s15, ptr %t395, i32 %t403)
  store { i64, ptr } %t406, ptr %l209
  br label %bb90
bb90:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load %"compiler/generic:Desc", ptr %l5
  %t411 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %s15, ptr %t407, %"compiler/generic:Desc" %t408)
  store { i64, ptr } %t411, ptr %l212
  br label %bb91
bb91:
  %t412 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t412, 1
  %t414 = extractvalue { i64, ptr } %t412, 0
  %t415 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t416 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t417 = add i64 %t414, %t416
  %t418 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = add i64 %t417, %t420
  %t422 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t421)
  call void @olang_textcopy(ptr %t422, ptr %t413, i64 %t414)
  %t423 = getelementptr i8, ptr %t422, i64 %t414
  call void @olang_textcopy(ptr %t423, ptr %t415, i64 %t416)
  %t424 = getelementptr i8, ptr %t423, i64 %t416
  call void @olang_textcopy(ptr %t424, ptr %t419, i64 %t420)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t422, 1
  %t428 = extractvalue { i64, ptr } %t426, 0
  %t429 = extractvalue { i64, ptr } %t426, 1
  %t430 = mul i64 %t428, 1
  %t431 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t430)
  call void @llvm.memcpy.p0.p0.i64(ptr %t431, ptr %t429, i64 %t430, i1 false)
  %t432 = insertvalue { i64, ptr } undef, i64 %t428, 0
  %t433 = insertvalue { i64, ptr } %t432, ptr %t431, 1
  %t434 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t436 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldOfEnum(ptr %s15, ptr %s15, ptr %v0, ptr %v0, { i64, ptr } %t434, { i64, ptr } %t433, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t436, ptr %l215
  br label %bb92
bb92:
  %t437 = load ptr, ptr %l197, !tbaa !29
  %t438 = load %"compiler/source:Span", ptr %l200
  %t439 = load %"compiler/diagmsg:Msg", ptr %l215
  %t440 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t437, %"compiler/source:Span" %t438, %"compiler/diagmsg:Msg" %t439)
  store i64 %t440, ptr %l216
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb94:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/check:Checker", ptr %t442, i32 0, i32 1
  %t445 = load ptr, ptr %t444, !tbaa !29
  %t447 = getelementptr %"compiler/generic:Program", ptr %t445, i32 0, i32 2
  store ptr %t447, ptr %l220, !tbaa !29
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/check:Checker", ptr %t448, i32 0, i32 1
  %t451 = load ptr, ptr %t450, !tbaa !29
  %t453 = getelementptr %"compiler/generic:Program", ptr %t451, i32 0, i32 2
  %t454 = load i32, ptr %l8, !tbaa !23
  %t457 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t453, i32 %t454)
  store i32 %t457, ptr %l225
  br label %bb95
bb95:
  %t458 = load ptr, ptr %l220, !tbaa !29
  %t459 = load i32, ptr %l225, !tbaa !23
  %t460 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t458, i32 %t459)
  store { i64, ptr } %t460, ptr %l226
  br label %bb96
bb96:
  %t461 = load { i64, ptr }, ptr %l226, !tbaa !27
  store { i64, ptr } %t461, ptr %l227, !tbaa !27
  %t462 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t463 = load i64, ptr %t462, !tbaa !24
  %t465 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = getelementptr i32, ptr %t466, i64 %t463
  %t468 = load i32, ptr %t467, !tbaa !33
  %t470 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t470, ptr %l230
  store i32 %t468, ptr %l231, !tbaa !23
  %t472 = load ptr, ptr %l7, !tbaa !29
  %t473 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 2
  %t474 = load i64, ptr %t473, !tbaa !24
  %t478 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v2, ptr %v2, ptr %t472, i64 %t474, i32 0)
  store %"compiler/typed:Payload" %t478, ptr %l235
  br label %bb97
bb97:
  %t479 = load %"compiler/typed:Payload", ptr %l235
  %t480 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Payload" %t479, ptr %t480
  store { i64, [4 x i64] } zeroinitializer, ptr %t481
  %t482 = getelementptr { i64, [4 x i64] }, ptr %t481, i32 0, i32 0
  store i64 5, ptr %t482
  %t483 = load %"compiler/source:Span", ptr %l230
  %t484 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t483, 0
  %t485 = load i32, ptr %l231, !tbaa !23
  %t486 = insertvalue { %"compiler/source:Span", i32, ptr } %t484, i32 %t485, 1
  %t488 = insertvalue { %"compiler/source:Span", i32, ptr } %t486, ptr %t480, 2
  %t489 = getelementptr { i64, [4 x i64] }, ptr %t481, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t488, ptr %t489
  %t490 = load { i64, [4 x i64] }, ptr %t481
  %t491 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t491, ptr %lp24
  %t493 = load ptr, ptr %lp24
  store { i64, [4 x i64] } %t490, ptr %t493
  %t494 = load %"compiler/source:Span", ptr %l1
  %t495 = load i32, ptr %l16, !tbaa !23
  %t496 = load ptr, ptr %lp24
  %t497 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 3
  %t498 = load i64, ptr %t497, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t499
  %t500 = getelementptr { i64, [4 x i64] }, ptr %t499, i32 0, i32 0
  store i64 3, ptr %t500
  %t502 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t494, 0
  %t504 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t502, i32 %t495, 1
  %t506 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t504, ptr %t496, 2
  %t508 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t506, i64 %t498, 3
  %t509 = getelementptr { i64, [4 x i64] }, ptr %t499, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t508, ptr %t509
  %t510 = load { i64, [4 x i64] }, ptr %t499
  %t512 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t510, ptr %t512
  call void @__olang_scope_close(ptr %s0)
  store ptr %t512, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroBorrowedFrom(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Call", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t20 = icmp slt i64 %t11, %t17
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l8, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr ptr, ptr %t31, i64 %t28
  %t33 = load ptr, ptr %t32, !tbaa !39
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t23, ptr %t33)
  store i1 %t37, ptr %l21
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t38 = load i1, ptr %l21, !tbaa !21
  store i1 %t38, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t39 = load i1, ptr %l14, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca i1
  %l156 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l174 = alloca i64
  %l186 = alloca ptr
  %l187 = alloca i1
  %l195 = alloca i1
  %l196 = alloca i1
  %l202 = alloca { i64, ptr }
  %l209 = alloca ptr
  %l210 = alloca i1
  %l218 = alloca i64
  %l227 = alloca i64
  %l230 = alloca i64
  %l251 = alloca i1
  %l255 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sgt i64 %t5, 48
  store i1 %t7, ptr %l30, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l30, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t11 = load ptr, ptr %l33, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l33, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l34, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l34, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l6, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l1, !tbaa !24
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t31, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t25, i64 %t26, ptr %t27, ptr %t29, ptr %t30, i64 %t33)
  br label %bb12
bb12:
  br label %bb122
bb13:
  %t40 = load ptr, ptr %l2, !tbaa !29
  store ptr %t40, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t41 = load ptr, ptr %l47, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l47, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 3
  store i1 %t47, ptr %l48, !tbaa !21
  br label %bb15
bb15:
  %t48 = load i1, ptr %l48, !tbaa !21
  br i1 %t48, label %bb16, label %bb17
bb16:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l7, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = add i64 %t61, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t55, i64 %t56, ptr %t57, ptr %t59, ptr %t60, i64 %t63)
  br label %bb19
bb19:
  br label %bb122
bb20:
  %t70 = load ptr, ptr %l2, !tbaa !29
  store ptr %t70, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t71 = load ptr, ptr %l61, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l61, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 18}
  %t77 = icmp eq i64 %t75, 10
  store i1 %t77, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l62, !tbaa !21
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr { i64, [5 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l8, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = load ptr, ptr %l8, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Slice", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = add i64 %t94, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t85, i64 %t86, ptr %t90, ptr %t92, ptr %t93, i64 %t96)
  br label %bb26
bb26:
  br label %bb122
bb27:
  %t103 = load ptr, ptr %l2, !tbaa !29
  store ptr %t103, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t104 = load ptr, ptr %l76, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb28, label %bb29
bb28:
  %t107 = load ptr, ptr %l76, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 18}
  %t110 = icmp eq i64 %t108, 5
  store i1 %t110, ptr %l77, !tbaa !21
  br label %bb29
bb29:
  %t111 = load i1, ptr %l77, !tbaa !21
  br i1 %t111, label %bb30, label %bb31
bb30:
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t114, i32 0, i32 2
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l9, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i64, ptr %l1, !tbaa !24
  %t120 = load ptr, ptr %l9, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Promote", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = load ptr, ptr %l3, !tbaa !29
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t127 = load i64, ptr %l5, !tbaa !24
  %t129 = add i64 %t127, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t118, i64 %t119, ptr %t123, ptr %t125, ptr %t126, i64 %t129)
  br label %bb33
bb33:
  br label %bb122
bb34:
  %t136 = load ptr, ptr %l2, !tbaa !29
  store ptr %t136, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t137 = load ptr, ptr %l91, !tbaa !29
  %t138 = icmp ne ptr %t137, null
  br i1 %t138, label %bb35, label %bb36
bb35:
  %t140 = load ptr, ptr %l91, !tbaa !29
  %t141 = load i64, ptr %t140, !range !{i64 0, i64 18}
  %t143 = icmp eq i64 %t141, 11
  store i1 %t143, ptr %l92, !tbaa !21
  br label %bb36
bb36:
  %t144 = load i1, ptr %l92, !tbaa !21
  br i1 %t144, label %bb37, label %bb38
bb37:
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t147 = getelementptr { i64, [5 x i64] }, ptr %t145, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t147, i32 0, i32 2
  %t149 = load ptr, ptr %t148
  store ptr %t149, ptr %l10, !tbaa !29
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l1, !tbaa !24
  %t153 = load ptr, ptr %l10, !tbaa !29
  %t155 = getelementptr %"compiler/typed:Cond", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t157 = load ptr, ptr %l3, !tbaa !29
  %t158 = load ptr, ptr %l4, !tbaa !29
  %t159 = load i64, ptr %l5, !tbaa !24
  %t161 = add i64 %t159, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t151, i64 %t152, ptr %t156, ptr %t157, ptr %t158, i64 %t161)
  br label %bb40
bb40:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i64, ptr %l1, !tbaa !24
  %t170 = load ptr, ptr %l10, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Cond", ptr %t170, i32 0, i32 2
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = load ptr, ptr %l3, !tbaa !29
  %t176 = load ptr, ptr %l4, !tbaa !29
  %t177 = load i64, ptr %l5, !tbaa !24
  %t179 = add i64 %t177, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t168, i64 %t169, ptr %t173, ptr %t175, ptr %t176, i64 %t179)
  br label %bb41
bb41:
  br label %bb122
bb42:
  %t186 = load ptr, ptr %l2, !tbaa !29
  store ptr %t186, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t187 = load ptr, ptr %l114, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb43, label %bb44
bb43:
  %t190 = load ptr, ptr %l114, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 18}
  %t193 = icmp eq i64 %t191, 12
  store i1 %t193, ptr %l115, !tbaa !21
  br label %bb44
bb44:
  %t194 = load i1, ptr %l115, !tbaa !21
  br i1 %t194, label %bb45, label %bb46
bb45:
  %t195 = load ptr, ptr %l2, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t197, i32 0, i32 2
  %t199 = load ptr, ptr %t198
  store ptr %t199, ptr %l11, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i64, ptr %l1, !tbaa !24
  %t203 = load ptr, ptr %l11, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Seq", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t207 = load ptr, ptr %l3, !tbaa !29
  %t208 = load ptr, ptr %l4, !tbaa !29
  %t209 = load i64, ptr %l5, !tbaa !24
  %t211 = add i64 %t209, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t201, i64 %t202, ptr %t206, ptr %t207, ptr %t208, i64 %t211)
  br label %bb48
bb48:
  br label %bb122
bb49:
  %t218 = load ptr, ptr %l2, !tbaa !29
  store ptr %t218, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t219 = load ptr, ptr %l128, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb50, label %bb51
bb50:
  %t222 = load ptr, ptr %l128, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 18}
  %t225 = icmp eq i64 %t223, 14
  store i1 %t225, ptr %l129, !tbaa !21
  br label %bb51
bb51:
  %t226 = load i1, ptr %l129, !tbaa !21
  br i1 %t226, label %bb52, label %bb53
bb52:
  %t227 = load ptr, ptr %l2, !tbaa !29
  %t229 = getelementptr { i64, [5 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t229, i32 0, i32 2
  %t231 = load ptr, ptr %t230
  store ptr %t231, ptr %l12, !tbaa !29
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l1, !tbaa !24
  %t235 = load ptr, ptr %l12, !tbaa !29
  %t237 = getelementptr %"compiler/typed:Try", ptr %t235, i32 0, i32 0
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t239 = load ptr, ptr %l3, !tbaa !29
  %t240 = load ptr, ptr %l4, !tbaa !29
  %t241 = load i64, ptr %l5, !tbaa !24
  %t243 = add i64 %t241, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t233, i64 %t234, ptr %t238, ptr %t239, ptr %t240, i64 %t243)
  br label %bb55
bb55:
  br label %bb122
bb56:
  %t250 = load ptr, ptr %l2, !tbaa !29
  store ptr %t250, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t251 = load ptr, ptr %l142, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb57, label %bb58
bb57:
  %t254 = load ptr, ptr %l142, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 18}
  %t257 = icmp eq i64 %t255, 13
  store i1 %t257, ptr %l143, !tbaa !21
  br label %bb58
bb58:
  %t258 = load i1, ptr %l143, !tbaa !21
  br i1 %t258, label %bb59, label %bb60
bb59:
  %t259 = load ptr, ptr %l2, !tbaa !29
  %t261 = getelementptr { i64, [5 x i64] }, ptr %t259, i32 0, i32 1
  %t262 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t261, i32 0, i32 2
  %t263 = load ptr, ptr %t262
  store ptr %t263, ptr %l13, !tbaa !29
  br label %bb61
bb60:
  br label %bb76
bb61:
  %t265 = load ptr, ptr %l13, !tbaa !29
  %t267 = getelementptr %"compiler/typed:Match", ptr %t265, i32 0, i32 1
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  store { i64, ptr } %t268, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t270 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t270, 0
  store i64 %t272, ptr %l16, !tbaa !24
  br label %bb62
bb62:
  %t274 = load i64, ptr %l15, !tbaa !24
  %t275 = load i64, ptr %l16, !tbaa !24
  %t278 = icmp slt i64 %t274, %t275
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb63, label %bb64
bb63:
  br label %bb68
bb64:
  br label %bb65
bb65:
  %t282 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t282, ptr %l156, !tbaa !27
  %t283 = load i64, ptr %l15, !tbaa !24
  %t285 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr ptr, ptr %t286, i64 %t283
  %t288 = load ptr, ptr %t287, !tbaa !39
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load i64, ptr %l1, !tbaa !24
  %t294 = getelementptr %"compiler/typed:Arm", ptr %t288, i32 0, i32 4
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t296 = load ptr, ptr %l3, !tbaa !29
  %t297 = load ptr, ptr %l4, !tbaa !29
  %t298 = load i64, ptr %l5, !tbaa !24
  %t300 = add i64 %t298, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t290, i64 %t291, ptr %t295, ptr %t296, ptr %t297, i64 %t300)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t307 = load i64, ptr %l15, !tbaa !24
  %t309 = add i64 %t307, 1
  store i64 %t309, ptr %l15, !tbaa !24
  br label %bb62
bb68:
  %t311 = load ptr, ptr %l13, !tbaa !29
  %t313 = getelementptr %"compiler/typed:Match", ptr %t311, i32 0, i32 2
  %t314 = load ptr, ptr %t313, !tbaa !29
  %t316 = icmp eq ptr %t314, null
  %t318 = xor i1 %t316, true
  br i1 %t318, label %bb69, label %bb70
bb69:
  %t320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t320, ptr %l173, !tbaa !29
  %t321 = load i64, ptr %l1, !tbaa !24
  store i64 %t321, ptr %l174, !tbaa !24
  %t322 = load ptr, ptr %l13, !tbaa !29
  %t324 = getelementptr %"compiler/typed:Match", ptr %t322, i32 0, i32 2
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t327 = icmp eq ptr %t325, null
  br i1 %t327, label %bb71, label %bb72
bb70:
  br label %bb75
bb71:
  call void @__olang_check_failed(ptr @olang_loc_8273e01acb39955e_49f05f53ee74b1b2)
  unreachable
bb72:
  br label %bb73
bb73:
  %t329 = load ptr, ptr %l13, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Match", ptr %t329, i32 0, i32 2
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t335 = getelementptr %"compiler/typed:Arm", ptr %t332, i32 0, i32 4
  %t336 = load ptr, ptr %t335, !tbaa !29
  %t337 = load ptr, ptr %l3, !tbaa !29
  %t338 = load ptr, ptr %l4, !tbaa !29
  %t339 = load i64, ptr %l5, !tbaa !24
  %t341 = add i64 %t339, 1
  %t342 = load ptr, ptr %l173, !tbaa !29
  %t343 = load i64, ptr %l174, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t342, i64 %t343, ptr %t336, ptr %t337, ptr %t338, i64 %t341)
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb122
bb76:
  %t348 = load ptr, ptr %l2, !tbaa !29
  store ptr %t348, ptr %l186, !tbaa !29
  store i1 false, ptr %l187, !tbaa !21
  %t349 = load ptr, ptr %l186, !tbaa !29
  %t350 = icmp ne ptr %t349, null
  br i1 %t350, label %bb77, label %bb78
bb77:
  %t352 = load ptr, ptr %l186, !tbaa !29
  %t353 = load i64, ptr %t352, !range !{i64 0, i64 18}
  %t355 = icmp eq i64 %t353, 9
  store i1 %t355, ptr %l187, !tbaa !21
  br label %bb78
bb78:
  %t356 = load i1, ptr %l187, !tbaa !21
  br i1 %t356, label %bb79, label %bb80
bb79:
  %t357 = load ptr, ptr %l2, !tbaa !29
  %t359 = getelementptr { i64, [5 x i64] }, ptr %t357, i32 0, i32 1
  %t360 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t359, i32 0, i32 2
  %t361 = load i32, ptr %t360, !range !{i32 0, i32 51}
  store i32 %t361, ptr %l18
  %t363 = load ptr, ptr %l2, !tbaa !29
  %t365 = getelementptr { i64, [5 x i64] }, ptr %t363, i32 0, i32 1
  %t366 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t365, i32 0, i32 4
  %t367 = load { i64, ptr }, ptr %t366
  store { i64, ptr } %t367, ptr %l19, !tbaa !27
  br label %bb81
bb80:
  br label %bb90
bb81:
  %t369 = load i32, ptr %l18, !range !{i32 0, i32 51}
  %t371 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t369)
  store i1 %t371, ptr %l195
  br label %bb82
bb82:
  %t372 = load i1, ptr %l195, !tbaa !21
  br i1 %t372, label %bb83, label %bb84
bb83:
  %t373 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t377 = icmp sgt i64 %t375, 0
  store i1 %t377, ptr %l196, !tbaa !21
  br label %bb85
bb84:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb85
bb85:
  %t379 = load i1, ptr %l196, !tbaa !21
  br i1 %t379, label %bb86, label %bb87
bb86:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load i64, ptr %l1, !tbaa !24
  %t382 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t382, ptr %l202, !tbaa !27
  %t383 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr ptr, ptr %t384, i64 0
  %t386 = load ptr, ptr %t385, !tbaa !39
  %t388 = load ptr, ptr %l3, !tbaa !29
  %t389 = load ptr, ptr %l4, !tbaa !29
  %t390 = load i64, ptr %l5, !tbaa !24
  %t392 = add i64 %t390, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t380, i64 %t381, ptr %t386, ptr %t388, ptr %t389, i64 %t392)
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb89
bb89:
  br label %bb122
bb90:
  %t399 = load ptr, ptr %l2, !tbaa !29
  store ptr %t399, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t400 = load ptr, ptr %l209, !tbaa !29
  %t401 = icmp ne ptr %t400, null
  br i1 %t401, label %bb91, label %bb92
bb91:
  %t403 = load ptr, ptr %l209, !tbaa !29
  %t404 = load i64, ptr %t403, !range !{i64 0, i64 18}
  %t406 = icmp eq i64 %t404, 6
  store i1 %t406, ptr %l210, !tbaa !21
  br label %bb92
bb92:
  %t407 = load i1, ptr %l210, !tbaa !21
  br i1 %t407, label %bb93, label %bb94
bb93:
  %t408 = load ptr, ptr %l2, !tbaa !29
  %t410 = getelementptr { i64, [5 x i64] }, ptr %t408, i32 0, i32 1
  %t411 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t410, i32 0, i32 2
  %t412 = load ptr, ptr %t411
  store ptr %t412, ptr %l20, !tbaa !29
  br label %bb95
bb94:
  br label %bb117
bb95:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load ptr, ptr %l20, !tbaa !29
  %t417 = getelementptr %"compiler/typed:Call", ptr %t415, i32 0, i32 0
  %t418 = load ptr, ptr %t417, !tbaa !29
  %t421 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %t414, ptr %t418)
  store i64 %t421, ptr %l218
  br label %bb96
bb96:
  %t422 = load i64, ptr %l218, !tbaa !24
  store i64 %t422, ptr %l21, !tbaa !24
  %t423 = load i64, ptr %l21, !tbaa !24
  %t425 = icmp slt i64 %t423, 0
  br i1 %t425, label %bb97, label %bb98
bb97:
  br label %ret
bb98:
  br label %bb99
bb99:
  store i64 0, ptr %l22, !tbaa !24
  %t427 = load ptr, ptr %l20, !tbaa !29
  %t429 = getelementptr %"compiler/typed:Call", ptr %t427, i32 0, i32 1
  %t430 = load { i64, ptr }, ptr %t429, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t430, 0
  store i64 %t432, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t434 = load i64, ptr %l23, !tbaa !24
  %t435 = load i64, ptr %l22, !tbaa !24
  %t438 = icmp sgt i64 %t434, %t435
  br i1 %t438, label %bb100, label %bb101
bb100:
  %t440 = load i64, ptr %l24, !tbaa !24
  %t442 = icmp sgt i64 %t440, 0
  br i1 %t442, label %bb102, label %bb103
bb101:
  store i64 0, ptr %l227, !tbaa !24
  br label %bb105
bb102:
  %t444 = load i64, ptr %l23, !tbaa !24
  %t445 = load i64, ptr %l22, !tbaa !24
  %t448 = sub i64 %t444, %t445
  %t449 = load i64, ptr %l24, !tbaa !24
  %t452 = add i64 %t448, %t449
  %t454 = sub i64 %t452, 1
  %t455 = load i64, ptr %l24, !tbaa !24
  %t458 = sdiv i64 %t454, %t455
  store i64 %t458, ptr %l230, !tbaa !24
  br label %bb104
bb103:
  store i64 0, ptr %l230, !tbaa !24
  br label %bb104
bb104:
  %t460 = load i64, ptr %l230, !tbaa !24
  store i64 %t460, ptr %l227, !tbaa !24
  br label %bb105
bb105:
  %t461 = load i64, ptr %l227, !tbaa !24
  store i64 %t461, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb106
bb106:
  %t462 = load i64, ptr %l26, !tbaa !24
  %t463 = load i64, ptr %l25, !tbaa !24
  %t466 = icmp slt i64 %t462, %t463
  %t468 = xor i1 %t466, true
  br i1 %t468, label %bb107, label %bb108
bb107:
  br label %bb116
bb108:
  br label %bb109
bb109:
  %t470 = load i64, ptr %l22, !tbaa !24
  %t471 = load i64, ptr %l26, !tbaa !24
  %t472 = load i64, ptr %l24, !tbaa !24
  %t475 = mul i64 %t471, %t472
  %t478 = add i64 %t470, %t475
  store i64 %t478, ptr %l27, !tbaa !24
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load i64, ptr %l21, !tbaa !24
  %t482 = load i64, ptr %l27, !tbaa !24
  %t486 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %t480, i64 %t481, i64 %t482)
  store i1 %t486, ptr %l251
  br label %bb110
bb110:
  %t487 = load i1, ptr %l251, !tbaa !21
  br i1 %t487, label %bb111, label %bb112
bb111:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load i64, ptr %l1, !tbaa !24
  %t490 = load ptr, ptr %l20, !tbaa !29
  %t492 = getelementptr %"compiler/typed:Call", ptr %t490, i32 0, i32 1
  %t493 = load { i64, ptr }, ptr %t492, !tbaa !27
  store { i64, ptr } %t493, ptr %l255, !tbaa !27
  %t494 = load i64, ptr %l27, !tbaa !24
  %t496 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t497 = load ptr, ptr %t496, !tbaa !27
  %t498 = getelementptr ptr, ptr %t497, i64 %t494
  %t499 = load ptr, ptr %t498, !tbaa !39
  %t501 = load ptr, ptr %l3, !tbaa !29
  %t502 = load ptr, ptr %l4, !tbaa !29
  %t503 = load i64, ptr %l5, !tbaa !24
  %t505 = add i64 %t503, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t488, i64 %t489, ptr %t499, ptr %t501, ptr %t502, i64 %t505)
  br label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t512 = load i64, ptr %l26, !tbaa !24
  %t514 = add i64 %t512, 1
  store i64 %t514, ptr %l26, !tbaa !24
  br label %bb106
bb116:
  br label %bb122
bb117:
  br i1 true, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb122
bb121:
  call void @__olang_check_failed(ptr @olang_loc_6132b637a09ab63c_579ebcf2b9b55890)
  unreachable
bb122:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca i32
  %l9 = alloca i1
  %l13 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitTarget(ptr %v0, ptr %t1, i32 %a3)
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i32, ptr %l7, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = call i1 @compiler_2fcheck_2ekeyedEmpty(ptr %v1, { i64, ptr } %t7)
  store i1 %t9, ptr %l9
  br label %bb2
bb2:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  %t13 = load i32, ptr %l4, !tbaa !23
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemptyKeyed(ptr %v0, ptr %v2, ptr %t11, %"compiler/source:Span" %t12, i32 %t13)
  store ptr %t17, ptr %l13
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t18 = load ptr, ptr %l13, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
bb6:
  %t19 = load i32, ptr %l4, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = icmp ne i32 %t19, %t20
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l1
  %t27 = load %"compiler/source:Span", ptr %l1
  %t28 = load i32, ptr %l4, !tbaa !23
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v1, ptr %v2, ptr %t25, %"compiler/source:Span" %t26, %"compiler/source:Span" %t27, i32 %t28, { i64, ptr } %t29)
  store ptr %t35, ptr %l22
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t36 = load ptr, ptr %l22, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load %"compiler/source:Span", ptr %l1
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownLit(ptr %v0, ptr %v1, ptr %v2, ptr %t37, %"compiler/source:Span" %t38, { i64, ptr } %t39)
  store ptr %t43, ptr %l26
  br label %bb11
bb11:
  %t44 = load ptr, ptr %l26, !tbaa !29
  store ptr %t44, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
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
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t60, i32 %t67)
  store { i64, ptr } %t70, ptr %l49
  br label %bb15
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb16
bb15:
  %t71 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t71, ptr %l44, !tbaa !27
  br label %bb16
bb16:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l6, !tbaa !23
  %t76 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t72, i32 %t73)
  store { i64, ptr } %t76, ptr %l52
  br label %bb17
bb17:
  %t77 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  %t79 = extractvalue { i64, ptr } %t77, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t86 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchNotExhaustive(ptr %s2, ptr %s2, ptr %v0, { i64, ptr } %t84, { i64, ptr } %t83)
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
  call void @__olang_scope_close(ptr %s2)
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
  store %olang.scope zeroinitializer, ptr %s4
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
  %t165 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t155, i32 %t162)
  store { i64, ptr } %t165, ptr %l92
  br label %bb40
bb39:
  br label %bb44
bb40:
  %t166 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 0
  %t168 = extractvalue { i64, ptr } %t166, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  store { i64, ptr } %t172, ptr %l93, !tbaa !27
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i32, ptr %l2, !tbaa !23
  %t177 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t173, i32 %t174)
  store { i64, ptr } %t177, ptr %l96
  br label %bb41
bb41:
  %t178 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  %t180 = extractvalue { i64, ptr } %t178, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t185 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t187 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchNotExhaustive(ptr %s4, ptr %s4, ptr %v0, { i64, ptr } %t185, { i64, ptr } %t184)
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
  call void @__olang_scope_close(ptr %s4)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l121, !tbaa !27
  br label %bb63
bb62:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l121, !tbaa !27
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
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l127, !tbaa !27
  br label %bb67
bb66:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l127, !tbaa !27
  br label %bb67
bb67:
  %t242 = load i64, ptr %l118, !tbaa !24
  %t243 = call i64 @__olang_fmt_i64(ptr null, i64 %t242)
  %t244 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
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
  %t283 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s6, ptr %t279, i32 %t280)
  store { i64, ptr } %t283, ptr %l138
  br label %bb69
bb69:
  %t284 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 0
  %t286 = extractvalue { i64, ptr } %t284, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t291 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t294 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchLengthUncovered(ptr %s6, ptr %s6, ptr %v0, { i64, ptr } %t290, { i64, ptr } %t291)
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
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t324, i32 %t325)
  store { i64, ptr } %t328, ptr %l157
  br label %bb80
bb80:
  %t329 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  %t331 = extractvalue { i64, ptr } %t329, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  %t337 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueUncovered(ptr %s8, ptr %v0, { i64, ptr } %t335)
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
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
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
  %t64 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t66 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = add i64 %t65, %t68
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l33, !tbaa !27
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
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l39, !tbaa !27
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
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l45, !tbaa !27
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
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l47, !tbaa !27
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca { i64, ptr }
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca ptr
  %l48 = alloca i1
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca { i64, ptr }
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i1
  %l144 = alloca ptr
  %l145 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i1
  %l181 = alloca ptr
  %l182 = alloca i1
  %l195 = alloca ptr
  %l196 = alloca i1
  %l206 = alloca ptr
  %l207 = alloca i1
  %l217 = alloca ptr
  %l218 = alloca i1
  %l228 = alloca ptr
  %l229 = alloca i1
  %l239 = alloca ptr
  %l240 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca i1
  %l267 = alloca ptr
  %l268 = alloca i1
  %l281 = alloca ptr
  %l282 = alloca i1
  %l295 = alloca ptr
  %l296 = alloca i1
  %l303 = alloca ptr
  %l304 = alloca %"compiler/source:Span"
  %l309 = alloca ptr
  %l312 = alloca ptr
  %l313 = alloca i1
  %l323 = alloca ptr
  %l324 = alloca i1
  %l337 = alloca ptr
  %l339 = alloca %"compiler/source:Span"
  %t622 = alloca { i64, [3 x i64] }, align 8
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
  store ptr %t5, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t6 = load ptr, ptr %l58, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l58, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 22}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l59, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l59, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l2
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l2
  %t28 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprStmt(ptr %v0, ptr %v1, ptr %t26, %"compiler/source:Span" %t27, ptr %t28)
  br label %bb9
bb9:
  br label %bb165
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t33 = load ptr, ptr %l69, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l69, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 22}
  %t39 = icmp eq i64 %t37, 1
  store i1 %t39, ptr %l70, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l70, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", ptr }, ptr %t43, i32 0, i32 0
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l4
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l4
  %t55 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarDecl(ptr %v0, ptr %v1, ptr %t53, %"compiler/source:Span" %t54, ptr %t55)
  br label %bb16
bb16:
  br label %bb165
bb17:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t60 = load ptr, ptr %l80, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l80, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 22}
  %t66 = icmp eq i64 %t64, 2
  store i1 %t66, ptr %l81, !tbaa !21
  br label %bb19
bb19:
  %t67 = load i1, ptr %l81, !tbaa !21
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr }, ptr %t70, i32 0, i32 0
  %t72 = load %"compiler/source:Span", ptr %t71
  store %"compiler/source:Span" %t72, ptr %l6
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr }, ptr %t76, i32 0, i32 1
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l6
  %t82 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emulti(ptr %v0, ptr %v1, ptr %t80, %"compiler/source:Span" %t81, ptr %t82)
  br label %bb23
bb23:
  br label %bb165
bb24:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t87 = load ptr, ptr %l91, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l91, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 22}
  %t93 = icmp eq i64 %t91, 3
  store i1 %t93, ptr %l92, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l92, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t97, i32 0, i32 0
  %t99 = load %"compiler/source:Span", ptr %t98
  store %"compiler/source:Span" %t99, ptr %l8
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t103, i32 0, i32 1
  %t105 = load i32, ptr %t104, !range !{i32 0, i32 113}
  store i32 %t105, ptr %l9
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l10, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t115, i32 0, i32 3
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l11, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l8
  %t121 = load i32, ptr %l9, !range !{i32 0, i32 113}
  %t122 = load ptr, ptr %l10, !tbaa !29
  %t123 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassign(ptr %v0, ptr %v1, ptr %v1, ptr %t119, %"compiler/source:Span" %t120, i32 %t121, ptr %t122, ptr %t123)
  br label %bb30
bb30:
  br label %bb165
bb31:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t130 = load ptr, ptr %l108, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb32, label %bb33
bb32:
  %t133 = load ptr, ptr %l108, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 22}
  %t136 = icmp eq i64 %t134, 4
  store i1 %t136, ptr %l109, !tbaa !21
  br label %bb33
bb33:
  %t137 = load i1, ptr %l109, !tbaa !21
  br i1 %t137, label %bb34, label %bb35
bb34:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l12
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t146, i32 0, i32 1
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l13, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t152, i32 0, i32 2
  %t154 = load { i64, ptr }, ptr %t153
  store { i64, ptr } %t154, ptr %l14, !tbaa !27
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l12
  %t158 = load ptr, ptr %l13, !tbaa !29
  %t159 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryStore(ptr %v0, ptr %v1, ptr %v1, ptr %t156, %"compiler/source:Span" %t157, ptr %t158, { i64, ptr } %t159)
  br label %bb37
bb37:
  br label %bb165
bb38:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t165 = load ptr, ptr %l122, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb39, label %bb40
bb39:
  %t168 = load ptr, ptr %l122, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 22}
  %t171 = icmp eq i64 %t169, 5
  store i1 %t171, ptr %l123, !tbaa !21
  br label %bb40
bb40:
  %t172 = load i1, ptr %l123, !tbaa !21
  br i1 %t172, label %bb41, label %bb42
bb41:
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", ptr }, ptr %t175, i32 0, i32 0
  %t177 = load %"compiler/source:Span", ptr %t176
  store %"compiler/source:Span" %t177, ptr %l15
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", ptr }, ptr %t181, i32 0, i32 1
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l16, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l15
  %t187 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifStmt(ptr %v0, ptr %v1, ptr %t185, %"compiler/source:Span" %t186, ptr %t187)
  br label %bb44
bb44:
  br label %bb165
bb45:
  %t191 = load ptr, ptr %l1, !tbaa !29
  store ptr %t191, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t192 = load ptr, ptr %l133, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb46, label %bb47
bb46:
  %t195 = load ptr, ptr %l133, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 22}
  %t198 = icmp eq i64 %t196, 6
  store i1 %t198, ptr %l134, !tbaa !21
  br label %bb47
bb47:
  %t199 = load i1, ptr %l134, !tbaa !21
  br i1 %t199, label %bb48, label %bb49
bb48:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr { i64, [4 x i64] }, ptr %t200, i32 0, i32 1
  %t203 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t202, i32 0, i32 0
  %t204 = load %"compiler/source:Span", ptr %t203
  store %"compiler/source:Span" %t204, ptr %l17
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t208, i32 0, i32 1
  %t210 = load { i64, ptr }, ptr %t209
  store { i64, ptr } %t210, ptr %l18, !tbaa !27
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l17
  %t214 = load { i64, ptr }, ptr %l18, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloop(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %t212, %"compiler/source:Span" %t213, ptr null, { i64, ptr } %t214, ptr null)
  br label %bb51
bb51:
  br label %bb165
bb52:
  %t218 = load ptr, ptr %l1, !tbaa !29
  store ptr %t218, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t219 = load ptr, ptr %l144, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb53, label %bb54
bb53:
  %t222 = load ptr, ptr %l144, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 22}
  %t225 = icmp eq i64 %t223, 7
  store i1 %t225, ptr %l145, !tbaa !21
  br label %bb54
bb54:
  %t226 = load i1, ptr %l145, !tbaa !21
  br i1 %t226, label %bb55, label %bb56
bb55:
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t229 = getelementptr { i64, [4 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t229, i32 0, i32 0
  %t231 = load %"compiler/source:Span", ptr %t230
  store %"compiler/source:Span" %t231, ptr %l19
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t235, i32 0, i32 1
  %t237 = load ptr, ptr %t236
  store ptr %t237, ptr %l20, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t241, i32 0, i32 2
  %t243 = load { i64, ptr }, ptr %t242
  store { i64, ptr } %t243, ptr %l21, !tbaa !27
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l19
  %t247 = load ptr, ptr %l20, !tbaa !29
  %t249 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %t245, %"compiler/source:Span" %t246, ptr %t247, { i64, ptr } %t249, ptr null)
  br label %bb58
bb58:
  br label %bb165
bb59:
  %t254 = load ptr, ptr %l1, !tbaa !29
  store ptr %t254, ptr %l159, !tbaa !29
  store i1 false, ptr %l160, !tbaa !21
  %t255 = load ptr, ptr %l159, !tbaa !29
  %t256 = icmp ne ptr %t255, null
  br i1 %t256, label %bb60, label %bb61
bb60:
  %t258 = load ptr, ptr %l159, !tbaa !29
  %t259 = load i64, ptr %t258, !range !{i64 0, i64 22}
  %t261 = icmp eq i64 %t259, 8
  store i1 %t261, ptr %l160, !tbaa !21
  br label %bb61
bb61:
  %t262 = load i1, ptr %l160, !tbaa !21
  br i1 %t262, label %bb62, label %bb63
bb62:
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", ptr }, ptr %t265, i32 0, i32 0
  %t267 = load %"compiler/source:Span", ptr %t266
  store %"compiler/source:Span" %t267, ptr %l22
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr { i64, [4 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", ptr }, ptr %t271, i32 0, i32 1
  %t273 = load ptr, ptr %t272
  store ptr %t273, ptr %l23, !tbaa !29
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l22
  %t277 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efor3(ptr %v0, ptr %v1, ptr %t275, %"compiler/source:Span" %t276, ptr %t277)
  br label %bb65
bb65:
  br label %bb165
bb66:
  %t281 = load ptr, ptr %l1, !tbaa !29
  store ptr %t281, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t282 = load ptr, ptr %l170, !tbaa !29
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %bb67, label %bb68
bb67:
  %t285 = load ptr, ptr %l170, !tbaa !29
  %t286 = load i64, ptr %t285, !range !{i64 0, i64 22}
  %t288 = icmp eq i64 %t286, 9
  store i1 %t288, ptr %l171, !tbaa !21
  br label %bb68
bb68:
  %t289 = load i1, ptr %l171, !tbaa !21
  br i1 %t289, label %bb69, label %bb70
bb69:
  %t290 = load ptr, ptr %l1, !tbaa !29
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", ptr }, ptr %t292, i32 0, i32 0
  %t294 = load %"compiler/source:Span", ptr %t293
  store %"compiler/source:Span" %t294, ptr %l24
  %t296 = load ptr, ptr %l1, !tbaa !29
  %t298 = getelementptr { i64, [4 x i64] }, ptr %t296, i32 0, i32 1
  %t299 = getelementptr { %"compiler/source:Span", ptr }, ptr %t298, i32 0, i32 1
  %t300 = load ptr, ptr %t299
  store ptr %t300, ptr %l25, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load %"compiler/source:Span", ptr %l24
  %t304 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforIn(ptr %v0, ptr %v1, ptr %t302, %"compiler/source:Span" %t303, ptr %t304)
  br label %bb72
bb72:
  br label %bb165
bb73:
  %t308 = load ptr, ptr %l1, !tbaa !29
  store ptr %t308, ptr %l181, !tbaa !29
  store i1 false, ptr %l182, !tbaa !21
  %t309 = load ptr, ptr %l181, !tbaa !29
  %t310 = icmp ne ptr %t309, null
  br i1 %t310, label %bb74, label %bb75
bb74:
  %t312 = load ptr, ptr %l181, !tbaa !29
  %t313 = load i64, ptr %t312, !range !{i64 0, i64 22}
  %t315 = icmp eq i64 %t313, 10
  store i1 %t315, ptr %l182, !tbaa !21
  br label %bb75
bb75:
  %t316 = load i1, ptr %l182, !tbaa !21
  br i1 %t316, label %bb76, label %bb77
bb76:
  %t317 = load ptr, ptr %l1, !tbaa !29
  %t319 = getelementptr { i64, [4 x i64] }, ptr %t317, i32 0, i32 1
  %t320 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t319, i32 0, i32 0
  %t321 = load %"compiler/source:Span", ptr %t320
  store %"compiler/source:Span" %t321, ptr %l26
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = getelementptr { i64, [4 x i64] }, ptr %t323, i32 0, i32 1
  %t326 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t325, i32 0, i32 1
  %t327 = load { i64, ptr }, ptr %t326
  store { i64, ptr } %t327, ptr %l27, !tbaa !27
  %t329 = load ptr, ptr %l1, !tbaa !29
  %t331 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 1
  %t332 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t331, i32 0, i32 2
  %t333 = load ptr, ptr %t332
  store ptr %t333, ptr %l28, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l26
  %t337 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t338 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edoFor(ptr %v0, ptr %v1, ptr %v1, ptr %t335, %"compiler/source:Span" %t336, { i64, ptr } %t337, ptr %t338)
  br label %bb79
bb79:
  br label %bb165
bb80:
  %t343 = load ptr, ptr %l1, !tbaa !29
  store ptr %t343, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t344 = load ptr, ptr %l195, !tbaa !29
  %t345 = icmp ne ptr %t344, null
  br i1 %t345, label %bb81, label %bb82
bb81:
  %t347 = load ptr, ptr %l195, !tbaa !29
  %t348 = load i64, ptr %t347, !range !{i64 0, i64 22}
  %t350 = icmp eq i64 %t348, 12
  store i1 %t350, ptr %l196, !tbaa !21
  br label %bb82
bb82:
  %t351 = load i1, ptr %l196, !tbaa !21
  br i1 %t351, label %bb83, label %bb84
bb83:
  %t352 = load ptr, ptr %l1, !tbaa !29
  %t354 = getelementptr { i64, [4 x i64] }, ptr %t352, i32 0, i32 1
  %t355 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t354, i32 0, i32 0
  %t356 = load %"compiler/source:Span", ptr %t355
  store %"compiler/source:Span" %t356, ptr %l29
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = getelementptr { i64, [4 x i64] }, ptr %t358, i32 0, i32 1
  %t361 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t360, i32 0, i32 1
  %t362 = load { i64, ptr }, ptr %t361
  store { i64, ptr } %t362, ptr %l30, !tbaa !27
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load %"compiler/source:Span", ptr %l29
  %t366 = load { i64, ptr }, ptr %l30, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereturnStmt(ptr %v0, ptr %v1, ptr %t364, %"compiler/source:Span" %t365, { i64, ptr } %t366)
  br label %bb86
bb86:
  br label %bb165
bb87:
  %t370 = load ptr, ptr %l1, !tbaa !29
  store ptr %t370, ptr %l206, !tbaa !29
  store i1 false, ptr %l207, !tbaa !21
  %t371 = load ptr, ptr %l206, !tbaa !29
  %t372 = icmp ne ptr %t371, null
  br i1 %t372, label %bb88, label %bb89
bb88:
  %t374 = load ptr, ptr %l206, !tbaa !29
  %t375 = load i64, ptr %t374, !range !{i64 0, i64 22}
  %t377 = icmp eq i64 %t375, 15
  store i1 %t377, ptr %l207, !tbaa !21
  br label %bb89
bb89:
  %t378 = load i1, ptr %l207, !tbaa !21
  br i1 %t378, label %bb90, label %bb91
bb90:
  %t379 = load ptr, ptr %l1, !tbaa !29
  %t381 = getelementptr { i64, [4 x i64] }, ptr %t379, i32 0, i32 1
  %t382 = getelementptr { %"compiler/source:Span", ptr }, ptr %t381, i32 0, i32 0
  %t383 = load %"compiler/source:Span", ptr %t382
  store %"compiler/source:Span" %t383, ptr %l31
  %t385 = load ptr, ptr %l1, !tbaa !29
  %t387 = getelementptr { i64, [4 x i64] }, ptr %t385, i32 0, i32 1
  %t388 = getelementptr { %"compiler/source:Span", ptr }, ptr %t387, i32 0, i32 1
  %t389 = load ptr, ptr %t388
  store ptr %t389, ptr %l32, !tbaa !29
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load %"compiler/source:Span", ptr %l31
  %t393 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeStmt(ptr %v0, ptr %v1, ptr %t391, %"compiler/source:Span" %t392, ptr %t393)
  br label %bb93
bb93:
  br label %bb165
bb94:
  %t397 = load ptr, ptr %l1, !tbaa !29
  store ptr %t397, ptr %l217, !tbaa !29
  store i1 false, ptr %l218, !tbaa !21
  %t398 = load ptr, ptr %l217, !tbaa !29
  %t399 = icmp ne ptr %t398, null
  br i1 %t399, label %bb95, label %bb96
bb95:
  %t401 = load ptr, ptr %l217, !tbaa !29
  %t402 = load i64, ptr %t401, !range !{i64 0, i64 22}
  %t404 = icmp eq i64 %t402, 21
  store i1 %t404, ptr %l218, !tbaa !21
  br label %bb96
bb96:
  %t405 = load i1, ptr %l218, !tbaa !21
  br i1 %t405, label %bb97, label %bb98
bb97:
  %t406 = load ptr, ptr %l1, !tbaa !29
  %t408 = getelementptr { i64, [4 x i64] }, ptr %t406, i32 0, i32 1
  %t409 = getelementptr { %"compiler/source:Span", ptr }, ptr %t408, i32 0, i32 0
  %t410 = load %"compiler/source:Span", ptr %t409
  store %"compiler/source:Span" %t410, ptr %l33
  %t412 = load ptr, ptr %l1, !tbaa !29
  %t414 = getelementptr { i64, [4 x i64] }, ptr %t412, i32 0, i32 1
  %t415 = getelementptr { %"compiler/source:Span", ptr }, ptr %t414, i32 0, i32 1
  %t416 = load ptr, ptr %t415
  store ptr %t416, ptr %l34, !tbaa !29
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t419 = load %"compiler/source:Span", ptr %l33
  %t420 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eyieldStmt(ptr %v0, ptr %v1, ptr %t418, %"compiler/source:Span" %t419, ptr %t420)
  br label %bb100
bb100:
  br label %bb165
bb101:
  %t424 = load ptr, ptr %l1, !tbaa !29
  store ptr %t424, ptr %l228, !tbaa !29
  store i1 false, ptr %l229, !tbaa !21
  %t425 = load ptr, ptr %l228, !tbaa !29
  %t426 = icmp ne ptr %t425, null
  br i1 %t426, label %bb102, label %bb103
bb102:
  %t428 = load ptr, ptr %l228, !tbaa !29
  %t429 = load i64, ptr %t428, !range !{i64 0, i64 22}
  %t431 = icmp eq i64 %t429, 11
  store i1 %t431, ptr %l229, !tbaa !21
  br label %bb103
bb103:
  %t432 = load i1, ptr %l229, !tbaa !21
  br i1 %t432, label %bb104, label %bb105
bb104:
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t435 = getelementptr { i64, [4 x i64] }, ptr %t433, i32 0, i32 1
  %t436 = getelementptr { %"compiler/source:Span", ptr }, ptr %t435, i32 0, i32 0
  %t437 = load %"compiler/source:Span", ptr %t436
  store %"compiler/source:Span" %t437, ptr %l35
  %t439 = load ptr, ptr %l1, !tbaa !29
  %t441 = getelementptr { i64, [4 x i64] }, ptr %t439, i32 0, i32 1
  %t442 = getelementptr { %"compiler/source:Span", ptr }, ptr %t441, i32 0, i32 1
  %t443 = load ptr, ptr %t442
  store ptr %t443, ptr %l36, !tbaa !29
  br label %bb106
bb105:
  br label %bb108
bb106:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load %"compiler/source:Span", ptr %l35
  %t447 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchStmt(ptr %v0, ptr %v1, ptr %t445, %"compiler/source:Span" %t446, ptr %t447)
  br label %bb107
bb107:
  br label %bb165
bb108:
  %t451 = load ptr, ptr %l1, !tbaa !29
  store ptr %t451, ptr %l239, !tbaa !29
  store i1 false, ptr %l240, !tbaa !21
  %t452 = load ptr, ptr %l239, !tbaa !29
  %t453 = icmp ne ptr %t452, null
  br i1 %t453, label %bb109, label %bb110
bb109:
  %t455 = load ptr, ptr %l239, !tbaa !29
  %t456 = load i64, ptr %t455, !range !{i64 0, i64 22}
  %t458 = icmp eq i64 %t456, 13
  store i1 %t458, ptr %l240, !tbaa !21
  br label %bb110
bb110:
  %t459 = load i1, ptr %l240, !tbaa !21
  br i1 %t459, label %bb111, label %bb112
bb111:
  %t460 = load ptr, ptr %l1, !tbaa !29
  %t462 = getelementptr { i64, [4 x i64] }, ptr %t460, i32 0, i32 1
  %t463 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t462, i32 0, i32 0
  %t464 = load %"compiler/source:Span", ptr %t463
  store %"compiler/source:Span" %t464, ptr %l37
  %t466 = load ptr, ptr %l1, !tbaa !29
  %t468 = getelementptr { i64, [4 x i64] }, ptr %t466, i32 0, i32 1
  %t469 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t468, i32 0, i32 1
  %t470 = load i32, ptr %t469, !range !{i32 0, i32 113}
  store i32 %t470, ptr %l38
  %t472 = load ptr, ptr %l1, !tbaa !29
  %t474 = getelementptr { i64, [4 x i64] }, ptr %t472, i32 0, i32 1
  %t475 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t474, i32 0, i32 2
  %t476 = load ptr, ptr %t475
  store ptr %t476, ptr %l39, !tbaa !29
  br label %bb113
bb112:
  br label %bb115
bb113:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l37
  %t480 = load i32, ptr %l38, !range !{i32 0, i32 113}
  %t481 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejump(ptr %v0, ptr %v1, ptr %t478, %"compiler/source:Span" %t479, i32 %t480, ptr %t481)
  br label %bb114
bb114:
  br label %bb165
bb115:
  %t486 = load ptr, ptr %l1, !tbaa !29
  store ptr %t486, ptr %l253, !tbaa !29
  store i1 false, ptr %l254, !tbaa !21
  %t487 = load ptr, ptr %l253, !tbaa !29
  %t488 = icmp ne ptr %t487, null
  br i1 %t488, label %bb116, label %bb117
bb116:
  %t490 = load ptr, ptr %l253, !tbaa !29
  %t491 = load i64, ptr %t490, !range !{i64 0, i64 22}
  %t493 = icmp eq i64 %t491, 14
  store i1 %t493, ptr %l254, !tbaa !21
  br label %bb117
bb117:
  %t494 = load i1, ptr %l254, !tbaa !21
  br i1 %t494, label %bb118, label %bb119
bb118:
  %t495 = load ptr, ptr %l1, !tbaa !29
  %t497 = getelementptr { i64, [4 x i64] }, ptr %t495, i32 0, i32 1
  %t498 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t497, i32 0, i32 0
  %t499 = load %"compiler/source:Span", ptr %t498
  store %"compiler/source:Span" %t499, ptr %l40
  %t501 = load ptr, ptr %l1, !tbaa !29
  %t503 = getelementptr { i64, [4 x i64] }, ptr %t501, i32 0, i32 1
  %t504 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t503, i32 0, i32 1
  %t505 = load ptr, ptr %t504
  store ptr %t505, ptr %l41, !tbaa !29
  %t507 = load ptr, ptr %l1, !tbaa !29
  %t509 = getelementptr { i64, [4 x i64] }, ptr %t507, i32 0, i32 1
  %t510 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t509, i32 0, i32 2
  %t511 = load ptr, ptr %t510
  store ptr %t511, ptr %l42, !tbaa !29
  br label %bb120
bb119:
  br label %bb122
bb120:
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load %"compiler/source:Span", ptr %l40
  %t515 = load ptr, ptr %l41, !tbaa !29
  %t516 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassertStmt(ptr %v0, ptr %v1, ptr %v1, ptr %t513, %"compiler/source:Span" %t514, ptr %t515, ptr %t516)
  br label %bb121
bb121:
  br label %bb165
bb122:
  %t521 = load ptr, ptr %l1, !tbaa !29
  store ptr %t521, ptr %l267, !tbaa !29
  store i1 false, ptr %l268, !tbaa !21
  %t522 = load ptr, ptr %l267, !tbaa !29
  %t523 = icmp ne ptr %t522, null
  br i1 %t523, label %bb123, label %bb124
bb123:
  %t525 = load ptr, ptr %l267, !tbaa !29
  %t526 = load i64, ptr %t525, !range !{i64 0, i64 22}
  %t528 = icmp eq i64 %t526, 16
  store i1 %t528, ptr %l268, !tbaa !21
  br label %bb124
bb124:
  %t529 = load i1, ptr %l268, !tbaa !21
  br i1 %t529, label %bb125, label %bb126
bb125:
  %t530 = load ptr, ptr %l1, !tbaa !29
  %t532 = getelementptr { i64, [4 x i64] }, ptr %t530, i32 0, i32 1
  %t533 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t532, i32 0, i32 0
  %t534 = load %"compiler/source:Span", ptr %t533
  store %"compiler/source:Span" %t534, ptr %l43
  %t536 = load ptr, ptr %l1, !tbaa !29
  %t538 = getelementptr { i64, [4 x i64] }, ptr %t536, i32 0, i32 1
  %t539 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t538, i32 0, i32 1
  %t540 = load ptr, ptr %t539
  store ptr %t540, ptr %l44, !tbaa !29
  %t542 = load ptr, ptr %l1, !tbaa !29
  %t544 = getelementptr { i64, [4 x i64] }, ptr %t542, i32 0, i32 1
  %t545 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t544, i32 0, i32 2
  %t546 = load { i64, ptr }, ptr %t545
  store { i64, ptr } %t546, ptr %l45, !tbaa !27
  br label %bb127
bb126:
  br label %bb129
bb127:
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load %"compiler/source:Span", ptr %l43
  %t550 = load ptr, ptr %l44, !tbaa !29
  %t551 = load { i64, ptr }, ptr %l45, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraise(ptr %v0, ptr %v1, ptr %v1, ptr %t548, %"compiler/source:Span" %t549, ptr %t550, { i64, ptr } %t551)
  br label %bb128
bb128:
  br label %bb165
bb129:
  %t556 = load ptr, ptr %l1, !tbaa !29
  store ptr %t556, ptr %l281, !tbaa !29
  store i1 false, ptr %l282, !tbaa !21
  %t557 = load ptr, ptr %l281, !tbaa !29
  %t558 = icmp ne ptr %t557, null
  br i1 %t558, label %bb130, label %bb131
bb130:
  %t560 = load ptr, ptr %l281, !tbaa !29
  %t561 = load i64, ptr %t560, !range !{i64 0, i64 22}
  %t563 = icmp eq i64 %t561, 19
  store i1 %t563, ptr %l282, !tbaa !21
  br label %bb131
bb131:
  %t564 = load i1, ptr %l282, !tbaa !21
  br i1 %t564, label %bb132, label %bb133
bb132:
  %t565 = load ptr, ptr %l1, !tbaa !29
  %t567 = getelementptr { i64, [4 x i64] }, ptr %t565, i32 0, i32 1
  %t568 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t567, i32 0, i32 0
  %t569 = load %"compiler/source:Span", ptr %t568
  store %"compiler/source:Span" %t569, ptr %l46
  %t571 = load ptr, ptr %l1, !tbaa !29
  %t573 = getelementptr { i64, [4 x i64] }, ptr %t571, i32 0, i32 1
  %t574 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t573, i32 0, i32 1
  %t575 = load ptr, ptr %t574
  store ptr %t575, ptr %l47, !tbaa !29
  %t577 = load ptr, ptr %l1, !tbaa !29
  %t579 = getelementptr { i64, [4 x i64] }, ptr %t577, i32 0, i32 1
  %t580 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t579, i32 0, i32 2
  %t581 = load i1, ptr %t580
  store i1 %t581, ptr %l48, !tbaa !21
  br label %bb134
bb133:
  br label %bb136
bb134:
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t584 = load %"compiler/source:Span", ptr %l46
  %t585 = load ptr, ptr %l47, !tbaa !29
  %t586 = load i1, ptr %l48, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeferStmt(ptr %v0, ptr %v1, ptr %t583, %"compiler/source:Span" %t584, ptr %t585, i1 %t586)
  br label %bb135
bb135:
  br label %bb165
bb136:
  %t591 = load ptr, ptr %l1, !tbaa !29
  store ptr %t591, ptr %l295, !tbaa !29
  store i1 false, ptr %l296, !tbaa !21
  %t592 = load ptr, ptr %l295, !tbaa !29
  %t593 = icmp ne ptr %t592, null
  br i1 %t593, label %bb137, label %bb138
bb137:
  %t595 = load ptr, ptr %l295, !tbaa !29
  %t596 = load i64, ptr %t595, !range !{i64 0, i64 22}
  %t598 = icmp eq i64 %t596, 20
  store i1 %t598, ptr %l296, !tbaa !21
  br label %bb138
bb138:
  %t599 = load i1, ptr %l296, !tbaa !21
  br i1 %t599, label %bb139, label %bb140
bb139:
  %t600 = load ptr, ptr %l1, !tbaa !29
  %t602 = getelementptr { i64, [4 x i64] }, ptr %t600, i32 0, i32 1
  %t603 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t602, i32 0, i32 0
  %t604 = load %"compiler/source:Span", ptr %t603
  store %"compiler/source:Span" %t604, ptr %l49
  %t606 = load ptr, ptr %l1, !tbaa !29
  %t608 = getelementptr { i64, [4 x i64] }, ptr %t606, i32 0, i32 1
  %t609 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t608, i32 0, i32 1
  %t610 = load { i64, ptr }, ptr %t609
  store { i64, ptr } %t610, ptr %l50, !tbaa !27
  br label %bb141
bb140:
  br label %bb144
bb141:
  %t612 = load ptr, ptr %l0, !tbaa !29
  store ptr %t612, ptr %l303, !tbaa !29
  %t613 = load %"compiler/source:Span", ptr %l49
  store %"compiler/source:Span" %t613, ptr %l304
  %t614 = load ptr, ptr %l0, !tbaa !29
  %t615 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t616 = load %"compiler/source:Span", ptr %l49
  %t621 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v0, ptr %t614, { i64, ptr } %t615, i32 1, %"compiler/source:Span" %t616)
  store ptr %t621, ptr %l309
  br label %bb142
bb142:
  store { i64, [3 x i64] } zeroinitializer, ptr %t622
  %t623 = getelementptr { i64, [3 x i64] }, ptr %t622, i32 0, i32 0
  store i64 11, ptr %t623
  %t624 = load %"compiler/source:Span", ptr %l304
  %t625 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t624, 0
  %t626 = load ptr, ptr %l309, !tbaa !29
  %t627 = insertvalue { %"compiler/source:Span", ptr } %t625, ptr %t626, 1
  %t628 = getelementptr { i64, [3 x i64] }, ptr %t622, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t627, ptr %t628
  %t629 = load { i64, [3 x i64] }, ptr %t622
  %t631 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t629, ptr %t631
  %t632 = load ptr, ptr %l303, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t632, ptr %t631)
  br label %bb143
bb143:
  br label %bb165
bb144:
  %t634 = load ptr, ptr %l1, !tbaa !29
  store ptr %t634, ptr %l312, !tbaa !29
  store i1 false, ptr %l313, !tbaa !21
  %t635 = load ptr, ptr %l312, !tbaa !29
  %t636 = icmp ne ptr %t635, null
  br i1 %t636, label %bb145, label %bb146
bb145:
  %t638 = load ptr, ptr %l312, !tbaa !29
  %t639 = load i64, ptr %t638, !range !{i64 0, i64 22}
  %t641 = icmp eq i64 %t639, 18
  store i1 %t641, ptr %l313, !tbaa !21
  br label %bb146
bb146:
  %t642 = load i1, ptr %l313, !tbaa !21
  br i1 %t642, label %bb147, label %bb148
bb147:
  %t643 = load ptr, ptr %l1, !tbaa !29
  %t645 = getelementptr { i64, [4 x i64] }, ptr %t643, i32 0, i32 1
  %t646 = getelementptr { %"compiler/source:Span", ptr }, ptr %t645, i32 0, i32 0
  %t647 = load %"compiler/source:Span", ptr %t646
  store %"compiler/source:Span" %t647, ptr %l51
  %t649 = load ptr, ptr %l1, !tbaa !29
  %t651 = getelementptr { i64, [4 x i64] }, ptr %t649, i32 0, i32 1
  %t652 = getelementptr { %"compiler/source:Span", ptr }, ptr %t651, i32 0, i32 1
  %t653 = load ptr, ptr %t652
  store ptr %t653, ptr %l52, !tbaa !29
  br label %bb149
bb148:
  br label %bb151
bb149:
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load %"compiler/source:Span", ptr %l51
  %t657 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoinStmt(ptr %v0, ptr %v1, ptr %t655, %"compiler/source:Span" %t656, ptr %t657)
  br label %bb150
bb150:
  br label %bb165
bb151:
  %t661 = load ptr, ptr %l1, !tbaa !29
  store ptr %t661, ptr %l323, !tbaa !29
  store i1 false, ptr %l324, !tbaa !21
  %t662 = load ptr, ptr %l323, !tbaa !29
  %t663 = icmp ne ptr %t662, null
  br i1 %t663, label %bb152, label %bb153
bb152:
  %t665 = load ptr, ptr %l323, !tbaa !29
  %t666 = load i64, ptr %t665, !range !{i64 0, i64 22}
  %t668 = icmp eq i64 %t666, 17
  store i1 %t668, ptr %l324, !tbaa !21
  br label %bb153
bb153:
  %t669 = load i1, ptr %l324, !tbaa !21
  br i1 %t669, label %bb154, label %bb155
bb154:
  %t670 = load ptr, ptr %l1, !tbaa !29
  %t672 = getelementptr { i64, [4 x i64] }, ptr %t670, i32 0, i32 1
  %t673 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t672, i32 0, i32 0
  %t674 = load %"compiler/source:Span", ptr %t673
  store %"compiler/source:Span" %t674, ptr %l53
  %t676 = load ptr, ptr %l1, !tbaa !29
  %t678 = getelementptr { i64, [4 x i64] }, ptr %t676, i32 0, i32 1
  %t679 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t678, i32 0, i32 1
  %t680 = load { i64, ptr }, ptr %t679
  store { i64, ptr } %t680, ptr %l54, !tbaa !27
  %t682 = load ptr, ptr %l1, !tbaa !29
  %t684 = getelementptr { i64, [4 x i64] }, ptr %t682, i32 0, i32 1
  %t685 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t684, i32 0, i32 2
  %t686 = load ptr, ptr %t685
  store ptr %t686, ptr %l55, !tbaa !29
  br label %bb156
bb155:
  br label %bb158
bb156:
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t689 = load %"compiler/source:Span", ptr %l53
  %t690 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t691 = load ptr, ptr %l55, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnStmt(ptr %v0, ptr %v1, ptr %v1, ptr %t688, %"compiler/source:Span" %t689, { i64, ptr } %t690, ptr %t691)
  br label %bb157
bb157:
  br label %bb165
bb158:
  br i1 true, label %bb159, label %bb160
bb159:
  br label %bb161
bb160:
  br label %bb164
bb161:
  %t696 = load ptr, ptr %l0, !tbaa !29
  store ptr %t696, ptr %l337, !tbaa !29
  %t697 = load ptr, ptr %l1, !tbaa !29
  %t699 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t697)
  store %"compiler/source:Span" %t699, ptr %l339
  br label %bb162
bb162:
  %t700 = load ptr, ptr %l337, !tbaa !29
  %t701 = load %"compiler/source:Span", ptr %l339
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t700, %"compiler/source:Span" %t701, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb163
bb163:
  br label %bb165
bb164:
  call void @__olang_check_failed(ptr @olang_loc_97a078c1fd6401ad_6b439c1864d584b1)
  unreachable
bb165:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreLambdaInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l26 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l59 = alloca i64
  %l77 = alloca ptr
  %l79 = alloca %"compiler/source:Span"
  %l82 = alloca { i64, ptr }
  %l83 = alloca %"compiler/diagmsg:Msg"
  %l84 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t2 = load ptr, ptr %l21, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l21, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 20
  store i1 %t8, ptr %l22, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l22, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb7
bb4:
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t12, i32 0, i32 1
  %t15 = getelementptr { %"compiler/source:Span", ptr }, ptr %t14, i32 0, i32 0
  %t16 = load %"compiler/source:Span", ptr %t15
  store %"compiler/source:Span" %t16, ptr %l6
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21
  store ptr %t22, ptr %l7, !tbaa !29
  %t24 = load ptr, ptr %l5, !tbaa !29
  store ptr %t24, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t25 = load ptr, ptr %l31, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load ptr, ptr %l31, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 28}
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l32, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l32, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l26, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l26, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l1
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l4
  %t41 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t36, %"compiler/source:Span" %t37, ptr %t38, ptr %t39, %"compiler/source:Span" %t40, ptr %t41, i1 false)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %ret
bb11:
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", ptr }, ptr %t51, i32 0, i32 0
  %t53 = load %"compiler/source:Span", ptr %t52
  store %"compiler/source:Span" %t53, ptr %l8
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr }, ptr %t57, i32 0, i32 1
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l9, !tbaa !29
  %t61 = load ptr, ptr %l5, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32 }, ptr %t63, i32 0, i32 0
  %t65 = load %"compiler/source:Span", ptr %t64
  store %"compiler/source:Span" %t65, ptr %l10
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32 }, ptr %t69, i32 0, i32 1
  %t71 = load i32, ptr %t70
  store i32 %t71, ptr %l11, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 14
  %t76 = load i64, ptr %t75, !tbaa !24
  store i64 %t76, ptr %l12, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 15
  %t81 = load i32, ptr %t80, !tbaa !23
  store i32 %t81, ptr %l13, !tbaa !23
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 16
  %t86 = load i1, ptr %t85, !tbaa !21
  store i1 %t86, ptr %l14, !tbaa !21
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 20
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t90)
  store i64 %t92, ptr %l59
  br label %bb12
bb12:
  %t93 = load i64, ptr %l59, !tbaa !24
  %t94 = sub i64 %t93, 1
  %t96 = load i32, ptr %l11, !tbaa !23
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 14
  store i64 %t94, ptr %t102, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 15
  store i32 %t96, ptr %t107, !tbaa !23
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 16
  store i1 false, ptr %t112, !tbaa !21
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l1
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t116 = load ptr, ptr %l3, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l4
  %t118 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t113, %"compiler/source:Span" %t114, ptr %t115, ptr %t116, %"compiler/source:Span" %t117, ptr %t118, i1 false)
  br label %bb13
bb13:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 16
  %t129 = load i1, ptr %t128, !tbaa !21
  br i1 %t129, label %bb14, label %bb15
bb14:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l77, !tbaa !29
  %t132 = load ptr, ptr %l5, !tbaa !29
  %t134 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t132)
  store %"compiler/source:Span" %t134, ptr %l79
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr %l11, !tbaa !23
  %t139 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t135, i32 %t136)
  store { i64, ptr } %t139, ptr %l82
  br label %bb17
bb17:
  %t140 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t141 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaCapturesItself(ptr %v0, ptr %v0, { i64, ptr } %t140)
  store %"compiler/diagmsg:Msg" %t141, ptr %l83
  br label %bb18
bb18:
  %t142 = load ptr, ptr %l77, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l79
  %t144 = load %"compiler/diagmsg:Msg", ptr %l83
  %t145 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t142, %"compiler/source:Span" %t143, %"compiler/diagmsg:Msg" %t144)
  store i64 %t145, ptr %l84
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t146 = load i64, ptr %l12, !tbaa !24
  %t148 = load i32, ptr %l13, !tbaa !23
  %t150 = load i1, ptr %l14, !tbaa !21
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 14
  store i64 %t146, ptr %t156, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 15
  store i32 %t148, ptr %t161, !tbaa !23
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 16
  store i1 %t150, ptr %t166, !tbaa !21
  br label %ret
ret:
  ret void
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextLit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i32
  %l11 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %rv = alloca ptr
  %t28 = alloca { i64, [2 x i64] }, align 8
  %t36 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l2
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  store ptr %t7, ptr %l5, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t8)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t13 = load i32, ptr %l7, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t12, i32 %t13, i64 %t11)
  store i32 %t15, ptr %l9
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l11
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  store i64 %t22, ptr %l13, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %t23, %"compiler/source:Span" %t24)
  store { i64, ptr } %t27, ptr %l16
  br label %bb4
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 0
  store i64 1, ptr %t29
  %t30 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t31 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t30, 0
  %t32 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 1
  store { { i64, ptr } } %t31, ptr %t32
  %t33 = load { i64, [2 x i64] }, ptr %t28
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t33, ptr %t35
  store { i64, [5 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 0
  store i64 1, ptr %t37
  %t38 = load %"compiler/source:Span", ptr %l2
  %t39 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t38, 0
  %t40 = load i32, ptr %l9, !tbaa !23
  %t41 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t39, i32 %t40, 1
  %t42 = load i64, ptr %l13, !tbaa !24
  %t43 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t41, i64 %t42, 2
  %t45 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t43, ptr %t35, 3
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t45, ptr %t46
  %t47 = load { i64, [5 x i64] }, ptr %t36
  %t49 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t47, ptr %t49
  store ptr %t49, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etwinBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l12 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l25 = alloca i32
  %l30 = alloca i32
  %l31 = alloca ptr
  %l34 = alloca { i64, [2 x i64] }
  %l35 = alloca i32
  %l40 = alloca i64
  %l41 = alloca %"compiler/source:Span"
  %l42 = alloca i64
  %l49 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t55 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t4 = load i32, ptr %l2, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t3, i64 %t6)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10, ptr %l3
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 25
  %t14 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t17 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t13, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14)
  %t18 = extractvalue { i32, i64 } %t17, 1
  %t19 = extractvalue { i32, i64 } %t17, 0
  store i32 %t19, ptr %l17
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb3, label %ok.21, !prof !99
ok.21:
  store i64 %t18, ptr %l16
  br label %bb2
bb2:
  %t22 = load i64, ptr %l16, !tbaa !24
  store i64 %t22, ptr %l12, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l12, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t28, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l25
  br label %bb9
bb9:
  %t40 = load i32, ptr %l25, !tbaa !23
  store i32 %t40, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i32, ptr %l1, !tbaa !23
  %t46 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %t44, i32 %t45, i32 %t46)
  store i32 %t50, ptr %l30
  br label %bb10
bb10:
  %t51 = load i32, ptr %l30, !tbaa !23
  store i32 %t51, ptr %l6, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load i32, ptr %l1, !tbaa !23
  %t54 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 0
  store i64 1, ptr %t56
  %t58 = insertvalue { i32, i32 } undef, i32 %t53, 0
  %t60 = insertvalue { i32, i32 } %t58, i32 %t54, 1
  %t61 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  store { i32, i32 } %t60, ptr %t61
  %t62 = load { i64, [2 x i64] }, ptr %t55
  store { i64, [2 x i64] } %t62, ptr %l34
  %t63 = load i32, ptr %l6, !tbaa !23
  store i32 %t63, ptr %l35, !tbaa !23
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l5, !tbaa !23
  %t73 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t69, i32 %t70)
  store i64 %t73, ptr %l40
  br label %bb11
bb11:
  %t74 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t74, ptr %l41
  br label %bb12
bb12:
  %t75 = load ptr, ptr %l31, !tbaa !29
  %t76 = load { i64, [2 x i64] }, ptr %l34
  %t77 = load i32, ptr %l35, !tbaa !23
  %t78 = load i64, ptr %l40, !tbaa !24
  %t79 = load %"compiler/source:Span", ptr %l41
  %t80 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t75, { i64, [2 x i64] } %t76, i32 %t77, i64 %t78, %"compiler/source:Span" %t79)
  store i64 %t80, ptr %l42
  br label %bb13
bb13:
  %t81 = load i64, ptr %l42, !tbaa !24
  store i64 %t81, ptr %l4, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 25
  %t85 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t86 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t84, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t85, i64 %t86)
  br label %bb14
bb14:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l6, !tbaa !23
  %t94 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l49
  br label %bb15
bb15:
  %t95 = load i1, ptr %l49, !tbaa !21
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 61
  %t99 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t98, i64 %t99, i1 true)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t102 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t102, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueFill(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l30 = alloca { i64, ptr }
  %l32 = alloca %"compiler/diagmsg:Msg"
  %l33 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l10
  br label %bb3
bb3:
  %t12 = load i1, ptr %l10, !tbaa !21
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l15
  br label %bb7
bb7:
  %t22 = load i1, ptr %l15, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t25 = load i1, ptr %l11, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %t26, i32 %t27)
  store i64 %t30, ptr %l19
  br label %bb12
bb12:
  %t31 = load i64, ptr %l19, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  br i1 %t34, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load %"compiler/source:Span", ptr %l1
  %t39 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedsCopy(ptr %v0, ptr %t36, i64 %t37, %"compiler/source:Span" %t38, i32 %t39)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t45, ptr %l27
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t46, i32 %t47)
  store { i64, ptr } %t50, ptr %l30
  br label %bb17
bb17:
  %t51 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueFill(ptr %s0, ptr %v0, { i64, ptr } %t57)
  store %"compiler/diagmsg:Msg" %t59, ptr %l32
  br label %bb18
bb18:
  %t60 = load ptr, ptr %l26, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l27
  %t62 = load %"compiler/diagmsg:Msg", ptr %l32
  %t63 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t60, %"compiler/source:Span" %t61, %"compiler/diagmsg:Msg" %t62)
  store i64 %t63, ptr %l33
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakFresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i32
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"compiler/diagmsg:Msg"
  %l37 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb5
bb4:
  br label %bb20
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l15, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l16, !tbaa !29
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t27)
  store i32 %t29, ptr %l18
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = load i32, ptr %l18, !tbaa !23
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t32, ptr %l19
  br label %bb7
bb7:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load ptr, ptr %l15, !tbaa !29
  %t35 = load i32, ptr %l19, !tbaa !23
  %t37 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %t34, i32 %t35, i64 %t33)
  store i1 %t37, ptr %l21
  br label %bb8
bb8:
  %t38 = load i1, ptr %l21, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewInstance(ptr %v0, ptr %v2, ptr %t41, ptr %t42)
  store i32 %t45, ptr %l25
  br label %bb12
bb12:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %l5, !tbaa !23
  %t47 = load i32, ptr %l5, !tbaa !23
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t51 = icmp ne i32 %t47, %t48
  br i1 %t51, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l29, !tbaa !29
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t54)
  store %"compiler/source:Span" %t56, ptr %l31
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l5, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t57, i32 %t58)
  store { i64, ptr } %t61, ptr %l34
  br label %bb16
bb16:
  %t62 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t70 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakFresh(ptr %s3, ptr %v0, { i64, ptr } %t68)
  store %"compiler/diagmsg:Msg" %t70, ptr %l36
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l29, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l31
  %t73 = load %"compiler/diagmsg:Msg", ptr %l36
  %t74 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t71, %"compiler/source:Span" %t72, %"compiler/diagmsg:Msg" %t73)
  store i64 %t74, ptr %l37
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_66d123f9d043212d_a02c798f90017b81)
  unreachable
bb25:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritableTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l7 = alloca i1
  %l12 = alloca i64
  %l18 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
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
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t14, i32 %t15)
  store i64 %t18, ptr %l12
  br label %bb4
bb4:
  %t19 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t20 = load i64, ptr %l12, !tbaa !24
  %t22 = and i64 %t20, %t19
  %t24 = icmp eq i64 %t22, 0
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l7, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store ptr null, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = call ptr @compiler_2fcheck_2etempUnder(ptr %v1, ptr %v2, ptr %a2)
  store ptr %t30, ptr %l18
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l18, !tbaa !29
  store ptr %t31, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(ptr %v0, ptr %v1, %"compiler/check:narrowed" %a0, i64 %a1) #0 {
entry:
  %l0 = alloca %"compiler/check:narrowed"
  %l10 = alloca %"compiler/check:narrowed"
  %rv = alloca %"compiler/check:narrowed"
  store %"compiler/check:narrowed" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 2
  %t6 = load i32, ptr %t5, !tbaa !23
  %t7 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 3
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 4
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 5
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 6
  %t14 = load i64, ptr %t13, !tbaa !24
  %t24 = call %"compiler/check:narrowed" @compiler_2fcheck_3anarrowed_2ector(ptr %v0, ptr %v1, i64 %t2, i64 %t4, i32 %t6, i64 %t8, i64 %t10, { i64, ptr } %t12, i64 %t14, i1 true, i64 %a1)
  store %"compiler/check:narrowed" %t24, ptr %l10
  br label %bb1
bb1:
  %t25 = load %"compiler/check:narrowed", ptr %l10
  store %"compiler/check:narrowed" %t25, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:narrowed", ptr %rv
  ret %"compiler/check:narrowed" %rr
}

define dso_local void @compiler_2fcheck_2edeclNames(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca i1
  %l29 = alloca i32
  %l32 = alloca i1
  %l35 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
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
  br label %bb36
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l19, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l22, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 11}
  %t36 = icmp eq i64 %t34, 8
  store i1 %t36, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l23, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr { i64, [8 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t40, i32 0, i32 1
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t44 = load ptr, ptr %l6, !tbaa !29
  %t46 = call i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %t44)
  store i32 %t46, ptr %l29
  br label %bb13
bb13:
  %t47 = load i32, ptr %l29, !tbaa !23
  store i32 %t47, ptr %l7, !tbaa !23
  %t48 = load i32, ptr %l7, !tbaa !23
  %t50 = icmp ne i32 %t48, 0
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t53 = load i32, ptr %l7, !tbaa !23
  %t56 = call i1 @compiler_2fcheck_2ehasName(ptr %v1, ptr %t52, i32 %t53)
  store i1 %t56, ptr %l35
  br label %bb16
bb15:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb17
bb16:
  %t57 = load i1, ptr %l35, !tbaa !21
  %t58 = xor i1 %t57, true
  store i1 %t58, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t60 = load i1, ptr %l32, !tbaa !21
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t62 = load i32, ptr %l7, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t61, i32 %t62)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb34
bb22:
  %t65 = load ptr, ptr %l5, !tbaa !29
  store ptr %t65, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t66 = load ptr, ptr %l39, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb23, label %bb24
bb23:
  %t69 = load ptr, ptr %l39, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 11}
  %t72 = icmp eq i64 %t70, 7
  store i1 %t72, ptr %l40, !tbaa !21
  br label %bb24
bb24:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb25, label %bb26
bb25:
  %t74 = load ptr, ptr %l5, !tbaa !29
  %t76 = getelementptr { i64, [8 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr }, ptr %t76, i32 0, i32 1
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l8, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t80 = load ptr, ptr %l8, !tbaa !29
  %t81 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2echainNames(ptr %v0, ptr %v1, ptr %t80, ptr %t81)
  br label %bb28
bb28:
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_bae3cd237d905c4d_ccae9f7ce38212b9)
  unreachable
bb34:
  br label %bb35
bb35:
  %t84 = load i64, ptr %l3, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l3, !tbaa !24
  br label %bb4
bb36:
  br label %ret
ret:
  ret void
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

define dso_local ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l24 = alloca ptr
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 5
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
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Promote", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l4, !tbaa !29
  br label %bb18
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 14
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/source:Span", ptr %t34
  store %"compiler/source:Span" %t35, ptr %l2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t43 = load %"compiler/source:Span", ptr %l2
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t47 = call ptr @compiler_2fcheck_2eheldTry(ptr %v0, ptr %v1, %"compiler/source:Span" %t43, ptr %t44)
  store ptr %t47, ptr %l24
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l24, !tbaa !29
  store ptr %t48, ptr %l4, !tbaa !29
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store ptr null, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_338177df999812ed_466eceed6b347ea1)
  unreachable
bb18:
  %t49 = load ptr, ptr %l4, !tbaa !29
  store ptr %t49, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewide(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i128
  %l4 = alloca i128
  %l5 = alloca i32
  %l6 = alloca %"compiler/check:litv"
  %l8 = alloca %"compiler/check:litv"
  %rv = alloca %"compiler/check:litv"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, i128 } @compiler_2fcheck_2ewideDigits(ptr %v0, { i64, ptr } %a0)
  %t4 = extractvalue { i32, i128 } %t3, 1
  %t5 = extractvalue { i32, i128 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i128 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i128, ptr %l4
  store i128 %t8, ptr %l2
  br label %bb5
bb2:
  br label %bb3
bb3:
  %t9 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t9, ptr %l6
  br label %bb4
bb4:
  %t10 = load %"compiler/check:litv", ptr %l6
  store %"compiler/check:litv" %t10, ptr %rv
  br label %ret
bb5:
  %t11 = load i128, ptr %l2
  %t14 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 false, i128 %t11)
  store %"compiler/check:litv" %t14, ptr %l8
  br label %bb6
bb6:
  %t15 = load %"compiler/check:litv", ptr %l8
  store %"compiler/check:litv" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local i1 @compiler_2fcheck_2ematchExisting(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l21 = alloca i1
  %l27 = alloca i1
  %l35 = alloca i1
  %l45 = alloca i1
  %l56 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb16
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l14, !tbaa !27
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l4, !tbaa !29
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Arm", ptr %t26, i32 0, i32 4
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Arm", ptr %t35, i32 0, i32 4
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_3bef89c29375057e_93446d82378ce1ba)
  unreachable
bb8:
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Arm", ptr %t42, i32 0, i32 4
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t45)
  store i1 %t47, ptr %l27
  br label %bb10
bb10:
  %t48 = load i1, ptr %l27, !tbaa !21
  store i1 %t48, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t49 = load i1, ptr %l21, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb1
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Match", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb17, label %bb18
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Match", ptr %t64, i32 0, i32 2
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb22
bb19:
  call void @__olang_check_failed(ptr @olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541)
  unreachable
bb20:
  br label %bb21
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Match", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Arm", ptr %t74, i32 0, i32 4
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t84 = load i1, ptr %l35, !tbaa !21
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Match", ptr %t85, i32 0, i32 2
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = icmp eq ptr %t88, null
  br i1 %t90, label %bb25, label %bb26
bb24:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb32
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541)
  unreachable
bb26:
  br label %bb27
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Match", ptr %t92, i32 0, i32 2
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Arm", ptr %t95, i32 0, i32 4
  %t99 = load ptr, ptr %t98, !tbaa !29
  store ptr %t99, ptr %l5, !tbaa !29
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  br i1 %t103, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541)
  unreachable
bb29:
  br label %bb30
bb30:
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t107 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t105)
  store i1 %t107, ptr %l56
  br label %bb31
bb31:
  %t108 = load i1, ptr %l56, !tbaa !21
  store i1 %t108, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t109 = load i1, ptr %l45, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1) #0 {
entry:
  %l0 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store %"compiler/source:Span" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/source:Span", ptr %l0, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  %t5 = trunc i64 %a1 to i32
  %t8 = sub i32 %t2, %t5
  %t9 = getelementptr %"compiler/source:Span", ptr %l0, i32 0, i32 1
  %t10 = load i32, ptr %t9, !tbaa !23
  %t13 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t8, i32 %t10)
  store %"compiler/source:Span" %t13, ptr %l7
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2epartPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 4
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l7, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 5
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8b3c4b934309a30d_f42a8645f9878091)
  unreachable
bb19:
  %t28 = load i1, ptr %l1, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i32
  %l59 = alloca i64
  %l62 = alloca i64
  %l81 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t24 = alloca i64
  %t109 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
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
  store i32 %t16, ptr %l19, !tbaa !23
  %t17 = icmp sge i64 1, 0
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = icmp sle i64 1, 2305843009213693951
  br i1 %t19, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_3043109bf91ec9f6_e521dc8ddba3d97a)
  unreachable
bb8:
  %t21 = mul i64 1, 4
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = load i32, ptr %l19, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_3043109bf91ec9f6_e521dc8ddba3d97a)
  unreachable
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 28}
  %t42 = icmp eq i64 %t40, 2
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = call { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %v1, ptr %t50)
  store { i64, ptr } %t52, ptr %l30
  br label %bb16
bb16:
  %t53 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = load ptr, ptr %l31, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 28}
  %t61 = icmp eq i64 %t59, 12
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t65, i32 0, i32 1
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l3, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t71, i32 0, i32 2
  %t73 = load i32, ptr %t72
  store i32 %t73, ptr %l4, !tbaa !23
  br label %bb22
bb21:
  br label %bb47
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = call { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %s3, ptr %t75)
  store { i64, ptr } %t77, ptr %l40
  br label %bb23
bb23:
  %t78 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t78, ptr %l5, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp eq i64 %t81, 0
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t85 = icmp sge i64 0, 0
  br i1 %t85, label %bb26, label %bb27
bb25:
  br label %bb30
bb26:
  %t87 = icmp sle i64 0, 2305843009213693951
  br i1 %t87, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4815dd6a844b648b_8f1bd19822fdb0cf)
  unreachable
bb28:
  %t89 = mul i64 0, 4
  %t90 = insertvalue { i64, ptr } undef, i64 0, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t91, ptr %rv
  br label %ret
bb29:
  call void @__olang_check_failed(ptr @olang_loc_4815dd6a844b648b_8f1bd19822fdb0cf)
  unreachable
bb30:
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l49, !tbaa !24
  %t98 = load i32, ptr %l4, !tbaa !23
  store i32 %t98, ptr %l50, !tbaa !23
  %t99 = load i64, ptr %l49, !tbaa !24
  %t100 = icmp sge i64 %t99, 0
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t102 = load i64, ptr %l49, !tbaa !24
  %t103 = icmp sle i64 %t102, 2305843009213693951
  br i1 %t103, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_5df9bd969218a728_7fa184e5bc45956c)
  unreachable
bb33:
  %t105 = load i64, ptr %l49, !tbaa !24
  %t106 = mul i64 %t105, 4
  %t107 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t106)
  %t108 = load i32, ptr %l50, !tbaa !23
  store i64 0, ptr %t109
  br label %fill.110
fill.110:
  %t113 = load i64, ptr %t109
  %t114 = icmp slt i64 %t113, %t105
  br i1 %t114, label %fillb.111, label %filld.112
fillb.111:
  %t115 = getelementptr i32, ptr %t107, i64 %t113
  store i32 %t108, ptr %t115
  %t116 = add i64 %t113, 1
  store i64 %t116, ptr %t109
  br label %fill.110
filld.112:
  %t117 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t107, 1
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t119, ptr %lp6
  %t121 = load ptr, ptr %lp6
  store { i64, ptr } %t118, ptr %t121, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  store i64 %t124, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t126 = load i64, ptr %l8, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t130 = icmp sgt i64 %t126, %t127
  br i1 %t130, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_5df9bd969218a728_7fa184e5bc45956c)
  unreachable
bb35:
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = icmp sgt i64 %t132, 0
  br i1 %t134, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb40
bb37:
  %t136 = load i64, ptr %l8, !tbaa !24
  %t137 = load i64, ptr %l7, !tbaa !24
  %t140 = sub i64 %t136, %t137
  %t141 = load i64, ptr %l9, !tbaa !24
  %t144 = add i64 %t140, %t141
  %t146 = sub i64 %t144, 1
  %t147 = load i64, ptr %l9, !tbaa !24
  %t150 = sdiv i64 %t146, %t147
  store i64 %t150, ptr %l62, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb39
bb39:
  %t152 = load i64, ptr %l62, !tbaa !24
  store i64 %t152, ptr %l59, !tbaa !24
  br label %bb40
bb40:
  %t153 = load i64, ptr %l59, !tbaa !24
  store i64 %t153, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb41
bb41:
  %t154 = load i64, ptr %l11, !tbaa !24
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb42, label %bb43
bb42:
  br label %bb46
bb43:
  br label %bb44
bb44:
  %t162 = load i64, ptr %l7, !tbaa !24
  %t163 = load i64, ptr %l11, !tbaa !24
  %t164 = load i64, ptr %l9, !tbaa !24
  %t167 = mul i64 %t163, %t164
  %t170 = add i64 %t162, %t167
  store i64 %t170, ptr %l12, !tbaa !24
  %t172 = load i64, ptr %l12, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t173, ptr %l81, !tbaa !27
  %t174 = load i64, ptr %l12, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i32, ptr %t177, i64 %t174
  %t179 = load i32, ptr %t178, !tbaa !33
  %t181 = load ptr, ptr %lp6
  %t183 = getelementptr { i64, ptr }, ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i32, ptr %t184, i64 %t172
  store i32 %t179, ptr %t185, !tbaa !33
  br label %bb45
bb45:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l11, !tbaa !24
  br label %bb41
bb46:
  %t190 = load ptr, ptr %lp6
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t191, ptr %rv
  br label %ret
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb55
bb50:
  %t193 = icmp sge i64 0, 0
  br i1 %t193, label %bb51, label %bb52
bb51:
  %t195 = icmp sle i64 0, 2305843009213693951
  br i1 %t195, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_69c4f09cb804b315_a031ca4d3ae928f9)
  unreachable
bb53:
  %t197 = mul i64 0, 4
  %t198 = insertvalue { i64, ptr } undef, i64 0, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t199, ptr %rv
  br label %ret
bb54:
  call void @__olang_check_failed(ptr @olang_loc_69c4f09cb804b315_a031ca4d3ae928f9)
  unreachable
bb55:
  call void @__olang_check_failed(ptr @olang_loc_81e6157a61b9a5f1_a0e5ca59452f2055)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/check:reflVal"
  %rv = alloca %"compiler/check:reflVal"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t3 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v0, i1 false, i64 0, i64 0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) }, i32 %t1)
  store %"compiler/check:reflVal" %t3, ptr %l1
  br label %bb1
bb1:
  %t4 = load %"compiler/check:reflVal", ptr %l1
  store %"compiler/check:reflVal" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v0, i1 %a0) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i64
  %l5 = alloca %"compiler/check:reflVal"
  %rv = alloca %"compiler/check:reflVal"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  store i64 %t1, ptr %l1, !tbaa !24
  br i1 %a0, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t8 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v0, i1 true, i64 %t5, i64 %t6, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, i32 %t4)
  store %"compiler/check:reflVal" %t8, ptr %l5
  br label %bb4
bb4:
  %t9 = load %"compiler/check:reflVal", ptr %l5
  store %"compiler/check:reflVal" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local i1 @compiler_2fcheck_2esameRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 28}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32 }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t32 = load i32, ptr %l3, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_66c871427796c5ad_be34307b05f1da91)
  unreachable
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 28}
  %t45 = icmp eq i64 %t43, 12
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t55, i32 0, i32 2
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l5, !tbaa !23
  br label %bb21
bb20:
  br label %bb36
bb21:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t60 = load ptr, ptr %l33, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 28}
  %t66 = icmp eq i64 %t64, 12
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t70, i32 0, i32 1
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l6, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t76, i32 0, i32 2
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l7, !tbaa !23
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t80 = load i32, ptr %l5, !tbaa !23
  %t81 = load i32, ptr %l7, !tbaa !23
  %t84 = icmp eq i32 %t80, %t81
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t87 = load ptr, ptr %l6, !tbaa !29
  %t90 = call i1 @compiler_2fcheck_2esameRead(ptr %v0, ptr %v1, ptr %t86, ptr %t87)
  store i1 %t90, ptr %l47
  br label %bb29
bb28:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb30
bb29:
  %t91 = load i1, ptr %l47, !tbaa !21
  store i1 %t91, ptr %l44, !tbaa !21
  br label %bb30
bb30:
  %t92 = load i1, ptr %l44, !tbaa !21
  store i1 %t92, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_d1a78098b058e5fc_3c3cd5596d56fa00)
  unreachable
bb36:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t95 = load ptr, ptr %l49, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb37, label %bb38
bb37:
  %t98 = load ptr, ptr %l49, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 28}
  %t101 = icmp eq i64 %t99, 2
  store i1 %t101, ptr %l50, !tbaa !21
  br label %bb38
bb38:
  %t102 = load i1, ptr %l50, !tbaa !21
  br i1 %t102, label %bb39, label %bb40
bb39:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", ptr }, ptr %t105, i32 0, i32 1
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l8, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t109 = load ptr, ptr %l8, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t113 = call i1 @compiler_2fcheck_2esameRead(ptr %v0, ptr %v1, ptr %t109, ptr %t110)
  store i1 %t113, ptr %l57
  br label %bb42
bb42:
  %t114 = load i1, ptr %l57, !tbaa !21
  store i1 %t114, ptr %rv
  br label %ret
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i1 false, ptr %rv
  br label %ret
bb47:
  call void @__olang_check_failed(ptr @olang_loc_e46b3fa1946bcbb7_3b47270341ec1d7b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2estoredMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l18 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Match", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t4, ptr %t6)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Match", ptr %t9, i32 0, i32 3
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l18, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  %t35 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredCase(ptr %v0, ptr %v1, ptr %t32, ptr %t35)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb2
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v1, ptr %t16, i32 %t17, i1 true)
  br label %bb6
bb6:
  br label %bb20
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 28}
  %t27 = icmp eq i64 %t25, 2
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
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
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t39, ptr %t41)
  br label %bb18
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_67e8dc6b8789e10d_d8389ade20250951)
  unreachable
bb20:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2etryExisting(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i1
  %l19 = alloca i1
  %l29 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l44 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Try", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Try", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_fa22773c0ed7d28e_9744d977b6aff1d2)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Try", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t20)
  store i1 %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load i1, ptr %l19, !tbaa !21
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Try", ptr %t26, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb12, label %bb13
bb12:
  br label %bb26
bb13:
  br label %bb14
bb14:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t43, ptr %l29, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 %t44
  %t49 = load ptr, ptr %t48, !tbaa !39
  %t53 = getelementptr %"compiler/typed:Clause", ptr %t49, i32 0, i32 4
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t68, ptr %l40, !tbaa !27
  %t69 = load i64, ptr %l6, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t78 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t74)
  store i1 %t78, ptr %l44
  br label %bb19
bb19:
  %t79 = load i1, ptr %l44, !tbaa !21
  br i1 %t79, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l6, !tbaa !24
  br label %bb15
bb24:
  br label %bb25
bb25:
  %t85 = load i64, ptr %l2, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l2, !tbaa !24
  br label %bb11
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:roDeepArg" @compiler_2fcheck_3aroDeepArg_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:roDeepArg"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:roDeepArg" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/check:roDeepArg" %t10, ptr %a1, 1
  %t14 = insertvalue %"compiler/check:roDeepArg" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/check:roDeepArg" %t14, i64 %a3, 3
  store %"compiler/check:roDeepArg" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:roDeepArg", ptr %rv
  ret %"compiler/check:roDeepArg" %rr
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
@.d6 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"it introduces a type variable, which no zero binds" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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

declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
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
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" -> " }>, align 8
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
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s)" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@__olang_empty_array = external constant [16 x i64]
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

@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"comptime." }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'['" }>, align 8
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d18 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"MapEntry" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"operator method" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"break" }>, align 8
@.d26 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d27 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Exhausted" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 113}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 113}
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

@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"try" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a reference" }>, align 8
@.d33 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"a function value" }>, align 8
@.d34 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"an any" }>, align 8
@.d35 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"an error value" }>, align 8
@.d36 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"an array of a run-time length" }>, align 8
@.d37 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"it has no width in bits" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" - declare 'fn (x " }>, align 8
@.d40 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c") Pow(y E) " }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e57 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fcheck_3arawTable_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3arawTable_2e3 = weak hidden constant i1 false
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d43 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"parameter" }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"result" }>, align 8
@.d45 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Of" }>, align 8
@.d46 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"its Name and Type" }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d52 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" or more" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" element" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d56 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"the global '" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d58 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"a field" }>, align 8
@.d59 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"an element" }>, align 8
@.d60 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"a payload" }>, align 8
@.d61 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"the place" }>, align 8
@.d62 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a statement of this kind" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i1 @compiler_2fcheck_2eisHexDigit(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_a3fc486149a2dc5d_17491af4361141b9 = external constant [0 x i8]
@olang_loc_555450387d5e0d0e_fcfc730d79d494b2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_65e6047404e548b5_230b9180471a5d9 = external constant [0 x i8]
@olang_loc_9781a02214179da0_3bbb534184ea6a24 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitCtor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUseOf(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
declare %"compiler/check:ValueAsk" @compiler_2fcheck_3aValueAsk_2ector(ptr %v0, i32 %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, { i64, [3 x i64] } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2ePush_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %a0, %"compiler/check:ValueAsk" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalReadsItself(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalsCycle(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullableMeetsNoTrait(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintSealed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembersWritten(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberListing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintClosed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_a9f182c570b9396_c29311a5416207fa = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetBuilder(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetHash(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotePrivateSpelling(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteOtherSignature(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_76087ef951037d6e_3aecbfe8b84426da = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_5aef4dfb7ef3d3db_90619d6d8d57518f = external constant [0 x i8]
@olang_loc_cff02b8329dc1100_79cd7222e22836ac = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_71fc016cdbd92d9f_b1a3aa3c3a436c9b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_43f0c8289ee2541_d6540b938bb16195 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsSynth(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_H19fded22be32a91ca4084130356a325d(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_fa3c94e3a612a0dd_4761343759351551 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeCtx(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeBody(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i64 %a4, i32 %a5)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorVarOfGeneric(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorGenericInferredField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorFieldNamesVar(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_e375dcd56c8db7ae_8ebec7f18eafef7a = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyAttrs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_f43f80063d96068c_f8dacab5994fea88 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eValueOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare i64 @compiler_2fcheck_2eintFloatBits(i32 %a0, %"compiler/check:litv" %a1)
declare i64 @compiler_2fcheck_2efloatBits(i32 %a0, double %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopEnter(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopLeave(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunadapted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
@olang_loc_55099d59d3c2415d_7883b81e4d83cfd9 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtComparedToCaught(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCompareItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_414cc8b7f33d3de6_fda2437ae6b3c3f2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eisMember(ptr %v0, ptr %a0)
@olang_loc_9722fccfe35ee7b_558e4c381c37f7e7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equietPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9c172245b700a898_5abd6adb0e722504 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare %"compiler/check:factsMark" @compiler_2fcheck_3afactsMark_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNamesType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3)
@olang_loc_e4171899205744bd_2a3775717c01c5d1 = external constant [0 x i8]
@olang_loc_f9f7abe6f4095c55_11136f6e879bf089 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %a0)
@olang_loc_2bda502508e1b1d_a3083ba563ab0481 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eLen_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eAt_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePush_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare i1 @compiler_2fast_2eSlicing(ptr %v0, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflInt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexNotConst(ptr %v0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, { i64, ptr } %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
@olang_loc_23e55da1d35c3b26_9d147ecacbf30ffa = external constant [0 x i8]
@olang_loc_2136f99ca1795ebb_470e73d5134ce74f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoIndex(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesIn(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eLaneArr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
@G_2ecompiler_2fcheck_2eLaneScalar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fcheck_2eLaneBin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elentWritable(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etargetHoldsRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5ab97e381db75496_a4ed3933adca62ca = external constant [0 x i8]
declare { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare { i64, ptr } @compiler_2fcheck_2elistName(ptr %v0, i64 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNotList(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_fce01e404a5d04ab_bd3fcfdbd155739f = external constant [0 x i8]
@olang_loc_a9a2c4034b6e08dd_84116590a5e4e601 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9c04d5f47d2250f6_3417b2e0d095e072 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factsMark" %a1, { i64, ptr } %a2)
@G_2ecompiler_2fcheck_2eWhyCalled = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillPaths(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotCall(ptr %v0, ptr %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
@olang_loc_652199a1d15cfac6_f2a0b86627c88902 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
@olang_loc_7509e56452997e5b_fb360af196d85db7 = external constant [0 x i8]
@olang_loc_ff81ff8210117a78_6f7a62fdc976c914 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_77a5603a1298311f_4bb819fe8c7bb9e3 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOverlap(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOverlap(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
@olang_loc_50501a9e8f2d69dd_68ff42214473c41 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_5f1ab9969ad5ed2d_61c4fa41275be331 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare i64 @compiler_2fcheck_2enameIndex(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldReadable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatNoField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadNoField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryNothingFails(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
@olang_loc_354044a632a7444d_aa07af71c262dc01 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e993077ed681d47d_7cf2fdb3e0a34b99 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedPackedWhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_b024c5157650ed4d_a91dda553fa89049 = external constant [0 x i8]
@olang_loc_d8c7da3a96e96ec6_ffec47baa4f6769a = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2eexprPath(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %v0)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadArgs(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrPatternNeedsName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eLe_Hf8109b64a4e45220d0da36a987cf38b1(ptr %v0, ptr %a0)
declare %"compiler/check:payloadItem" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eAt_H64f851f610dd8566f1d7651b626ec99d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItemOk(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, { i64, ptr } %a5, i64 %a6, ptr %a7, i64 %a8)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePowNone(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_40ba663ddc86f216_8a32628f26d9e82 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_e2e10646092ca22b_113878b4617d7337 = external constant [0 x i8]
@olang_loc_ec8a21dbb084e216_fbcda7bc6021fa9a = external constant [0 x i8]
declare %"compiler/check:rawTable" @compiler_2fcheck_3arawTable_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i1 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawEnum(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, ptr %a3, i1 %a4)
@olang_loc_89ab76664fe93b5c_2e5cefefce25c48 = external constant [0 x i8]
declare %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
@olang_loc_9e01274f48f7ce6d_f4de7e29f0d3bc19 = external constant [0 x i8]
@olang_loc_67ebba1fc016fa85_5eca450ae3d6f0c1 = external constant [0 x i8]
@G_2ecompiler_2fcheck_2eRvText = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfArgs(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldOfEnum(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroBorrowedFrom(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
@olang_loc_8273e01acb39955e_49f05f53ee74b1b2 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_6132b637a09ab63c_579ebcf2b9b55890 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitTarget(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ekeyedEmpty(ptr %v0, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemptyKeyed(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efirstUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchNotExhaustive(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eIndexOf_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchLengthUncovered(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueUncovered(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_66b69280d2937ccd_950530418ba68201 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarDecl(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emulti(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryStore(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efor3(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforIn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereturnStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eyieldStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejump(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassertStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraise(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeferStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoinStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_97a078c1fd6401ad_6b439c1864d584b1 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, ptr %a5, i1 %a6)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaCapturesItself(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0)
@olang_loc_ac983f970f94ac3e_5c81cf941b3f1e2 = external constant [0 x i8]
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetChain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, i64 %a5, i64 %a6)
@olang_loc_5e7ac483298c689c_15fc6611344e0300 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedsCopy(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueFill(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewInstance(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakFresh(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_66d123f9d043212d_a02c798f90017b81 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2etempUnder(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare %"compiler/check:narrowed" @compiler_2fcheck_3anarrowed_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5, i64 %a6, i1 %a7, i64 %a8)
declare i1 @compiler_2fcheck_2ehasName(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2echainNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_bae3cd237d905c4d_ccae9f7ce38212b9 = external constant [0 x i8]
@olang_loc_fbb347671bce929e_e992a88db50b1b5a = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
@olang_loc_338177df999812ed_466eceed6b347ea1 = external constant [0 x i8]
declare { i32, i128 } @compiler_2fcheck_2ewideDigits(ptr %v0, { i64, ptr } %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %a0, i128 %a1)
@olang_loc_3bef89c29375057e_93446d82378ce1ba = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %a0)
@olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541 = external constant [0 x i8]
@olang_loc_8b3c4b934309a30d_f42a8645f9878091 = external constant [0 x i8]
@olang_loc_3043109bf91ec9f6_e521dc8ddba3d97a = external constant [0 x i8]
@olang_loc_4815dd6a844b648b_8f1bd19822fdb0cf = external constant [0 x i8]
@olang_loc_5df9bd969218a728_7fa184e5bc45956c = external constant [0 x i8]
@olang_loc_69c4f09cb804b315_a031ca4d3ae928f9 = external constant [0 x i8]
@olang_loc_81e6157a61b9a5f1_a0e5ca59452f2055 = external constant [0 x i8]
declare %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4)
@G_2ecompiler_2fcheck_2eRvBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_66c871427796c5ad_be34307b05f1da91 = external constant [0 x i8]
@olang_loc_d1a78098b058e5fc_3c3cd5596d56fa00 = external constant [0 x i8]
@olang_loc_e46b3fa1946bcbb7_3b47270341ec1d7b = external constant [0 x i8]
declare void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredCase(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_67e8dc6b8789e10d_d8389ade20250951 = external constant [0 x i8]
@olang_loc_fa22773c0ed7d28e_9744d977b6aff1d2 = external constant [0 x i8]

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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
