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
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:collWalk" = type { ptr, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:inPlaceRead" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/check:payloadItem" = type { i32, ptr }
%"compiler/check:signMag" = type { i1, i128 }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
define dso_local i32 @compiler_2fcheck_2ebinaryOp(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %rv = alloca i32
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
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i32 3, ptr %l1
  br label %bb71
bb4:
  %t7 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t9 = trunc i64 69 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i32 4, ptr %l1
  br label %bb71
bb8:
  %t13 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t15 = trunc i64 70 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i32 5, ptr %l1
  br label %bb71
bb12:
  %t19 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t21 = trunc i64 72 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i32 6, ptr %l1
  br label %bb71
bb16:
  %t25 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t27 = trunc i64 73 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i32 7, ptr %l1
  br label %bb71
bb20:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 106 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i32 8, ptr %l1
  br label %bb71
bb24:
  %t37 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t39 = trunc i64 107 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i32 9, ptr %l1
  br label %bb71
bb28:
  %t43 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t45 = trunc i64 101 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i32 10, ptr %l1
  br label %bb71
bb32:
  %t49 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t51 = trunc i64 102 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i32 11, ptr %l1
  br label %bb71
bb36:
  %t55 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t57 = trunc i64 103 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  %t60 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t62 = trunc i64 47 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i32 12, ptr %l1
  br label %bb71
bb42:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t68 = trunc i64 94 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store i32 13, ptr %l1
  br label %bb71
bb46:
  %t72 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t74 = trunc i64 95 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i32 14, ptr %l1
  br label %bb71
bb50:
  %t78 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t80 = trunc i64 97 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i32 15, ptr %l1
  br label %bb71
bb54:
  %t84 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t86 = trunc i64 98 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store i32 16, ptr %l1
  br label %bb71
bb58:
  %t90 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t92 = trunc i64 99 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i32 17, ptr %l1
  br label %bb71
bb62:
  %t96 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t98 = trunc i64 100 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store i32 18, ptr %l1
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store i32 3, ptr %l1
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_b418a15f1455a8e1_40cdd11b1c753e15)
  unreachable
bb71:
  %t103 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l11 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = icmp sge i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i32, ptr %l2, !tbaa !23
  store i32 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t13, ptr %t14)
  store i32 %t17, ptr %l11
  br label %bb5
bb5:
  %t18 = load i32, ptr %l11, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i32
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, i32 }
  %l21 = alloca i64
  %l22 = alloca i32
  %l27 = alloca i1
  %l29 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l35 = alloca i1
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l43 = alloca i32
  %l48 = alloca i32
  %l53 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l77 = alloca i1
  %l79 = alloca ptr
  %l81 = alloca ptr
  %l85 = alloca i32
  %l92 = alloca i1
  %l94 = alloca ptr
  %l96 = alloca %"compiler/typed:Item"
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca i64
  %l105 = alloca i64
  %l110 = alloca i32
  %l118 = alloca i32
  %l122 = alloca ptr
  %l124 = alloca %"compiler/typed:Item"
  %l129 = alloca i64
  %l133 = alloca i64
  %l136 = alloca i64
  %l155 = alloca i64
  %l159 = alloca ptr
  %l164 = alloca i32
  %l166 = alloca %"compiler/typed:Item"
  %l173 = alloca { i64, i32 }
  %l179 = alloca ptr
  %l181 = alloca ptr
  %l185 = alloca i1
  %l186 = alloca ptr
  %l189 = alloca %"compiler/typed:Item"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Path", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 1
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l29
  br label %bb3
bb2:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l29, !tbaa !29
  %t15 = getelementptr %"compiler/check:frame", ptr %t13, i32 0, i32 4
  %t16 = getelementptr %"compiler/generic:Context", ptr %t15, i32 0, i32 2
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Path", ptr %t17, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l33, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i32, ptr %t22, i64 0
  %t24 = load i32, ptr %t23, !tbaa !33
  %t27 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %t16, i32 %t24)
  store i1 %t27, ptr %l35
  br label %bb4
bb4:
  %t28 = load i1, ptr %l35, !tbaa !21
  store i1 %t28, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l27, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  store ptr %t33, ptr %l37, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t34)
  store ptr %t36, ptr %l39
  br label %bb8
bb7:
  br label %bb27
bb8:
  %t37 = load ptr, ptr %l39, !tbaa !29
  %t39 = getelementptr %"compiler/check:frame", ptr %t37, i32 0, i32 4
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t41 = load ptr, ptr %l37, !tbaa !29
  %t44 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %v0, ptr %v1, ptr %t41, ptr %t39, ptr %t40)
  store i32 %t44, ptr %l43
  br label %bb9
bb9:
  %t45 = load i32, ptr %l43, !tbaa !23
  store i32 %t45, ptr %l3, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l48
  br label %bb10
bb10:
  %t56 = load i32, ptr %l48, !range !{i32 0, i32 33}
  %t58 = trunc i64 30 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  store ptr %t66, ptr %l53, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l3, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l58
  br label %bb13
bb12:
  br label %bb22
bb13:
  %t77 = load ptr, ptr %l53, !tbaa !29
  %t78 = load i32, ptr %l58, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t77, i32 %t78)
  store { i64, ptr } %t79, ptr %l59
  br label %bb14
bb14:
  %t80 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t80, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  store i64 %t83, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t85 = load i64, ptr %l5, !tbaa !24
  %t86 = load i64, ptr %l6, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t93 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t93, ptr %l66, !tbaa !27
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t94
  %t99 = load i32, ptr %t98, !tbaa !33
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryItems(ptr %v0, ptr %v2, ptr %t101, i32 %t99, ptr %t103)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t107 = load i64, ptr %l5, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l5, !tbaa !24
  br label %bb15
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t115 = load i32, ptr %l3, !tbaa !23
  %t118 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %t114, i32 %t115)
  store i1 %t118, ptr %l77
  br label %bb23
bb23:
  %t119 = load i1, ptr %l77, !tbaa !21
  br i1 %t119, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  store ptr %t123, ptr %l79, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t124)
  store ptr %t126, ptr %l81
  br label %bb28
bb28:
  %t127 = load ptr, ptr %l81, !tbaa !29
  %t129 = getelementptr %"compiler/check:frame", ptr %t127, i32 0, i32 4
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t131 = load ptr, ptr %l79, !tbaa !29
  %t134 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %v1, ptr %t131, ptr %t129, ptr %t130)
  store i32 %t134, ptr %l85
  br label %bb29
bb29:
  %t135 = load i32, ptr %l85, !tbaa !23
  store i32 %t135, ptr %l8, !tbaa !23
  %t136 = load i32, ptr %l8, !tbaa !23
  %t137 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t140 = icmp ne i32 %t136, %t137
  br i1 %t140, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s7
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t146 = load i32, ptr %l8, !tbaa !23
  %t149 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %t145, i32 %t146)
  store i1 %t149, ptr %l92
  br label %bb32
bb31:
  br label %bb76
bb32:
  %t150 = load i1, ptr %l92, !tbaa !21
  %t151 = xor i1 %t150, true
  br i1 %t151, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load ptr, ptr %l2, !tbaa !29
  store ptr %t153, ptr %l94, !tbaa !29
  %t154 = load i32, ptr %l8, !tbaa !23
  %t156 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s8, i32 %t154, i64 -1)
  store %"compiler/typed:Item" %t156, ptr %l96
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t157 = load ptr, ptr %l94, !tbaa !29
  %t158 = load %"compiler/typed:Item", ptr %l96
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v2, ptr %t157, %"compiler/typed:Item" %t158)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb37:
  %t159 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l97
  br label %bb38
bb38:
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %l9
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t165 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %s7, ptr %t164, i32 %t165, ptr %l9)
  br label %bb39
bb39:
  store ptr %l9, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb40
bb40:
  %t170 = load i64, ptr %l11, !tbaa !24
  store i64 %t170, ptr %l103, !tbaa !24
  %t171 = load ptr, ptr %l10, !tbaa !29
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s7, ptr %t171)
  store i64 %t173, ptr %l105
  br label %bb41
bb41:
  %t174 = load i64, ptr %l103, !tbaa !24
  %t175 = load i64, ptr %l105, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb42, label %bb43
bb42:
  br label %bb75
bb43:
  br label %bb44
bb44:
  %t180 = load ptr, ptr %l10, !tbaa !29
  %t181 = load i64, ptr %l11, !tbaa !24
  %t184 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s7, ptr %t180, i64 %t181)
  store i32 %t184, ptr %l110
  br label %bb45
bb45:
  %t185 = load i32, ptr %l110, !tbaa !23
  store i32 %t185, ptr %l12, !tbaa !23
  %t186 = load i32, ptr %l12, !tbaa !23
  %t187 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t190 = icmp eq i32 %t186, %t187
  br i1 %t190, label %bb46, label %bb47
bb46:
  br label %bb74
bb47:
  br label %bb48
bb48:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/check:Checker", ptr %t192, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = getelementptr %"compiler/generic:Program", ptr %t195, i32 0, i32 2
  %t198 = load i32, ptr %l12, !tbaa !23
  %t201 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t197, i32 %t198)
  store i32 %t201, ptr %l118
  br label %bb49
bb49:
  %t202 = load i32, ptr %l118, !range !{i32 0, i32 33}
  %t204 = trunc i64 28 to i32
  %t205 = icmp eq i32 %t202, %t204
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s12
  %t209 = load ptr, ptr %l2, !tbaa !29
  store ptr %t209, ptr %l122, !tbaa !29
  %t210 = load i32, ptr %l12, !tbaa !23
  %t212 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s12, i32 %t210, i64 -1)
  store %"compiler/typed:Item" %t212, ptr %l124
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t213 = load ptr, ptr %l122, !tbaa !29
  %t214 = load %"compiler/typed:Item", ptr %l124
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v2, ptr %t213, %"compiler/typed:Item" %t214)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s12)
  br label %bb74
bb54:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 2
  %t221 = load i32, ptr %l12, !tbaa !23
  %t224 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t220, i32 %t221)
  store i64 %t224, ptr %l129
  br label %bb55
bb55:
  %t225 = load i64, ptr %l129, !tbaa !65
  store i64 %t225, ptr %l13, !tbaa !65
  store i64 0, ptr %l14, !tbaa !24
  store i64 64, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t226 = load i64, ptr %l15, !tbaa !24
  %t227 = load i64, ptr %l14, !tbaa !24
  %t230 = icmp sgt i64 %t226, %t227
  br i1 %t230, label %bb56, label %bb57
bb56:
  %t232 = load i64, ptr %l16, !tbaa !24
  %t234 = icmp sgt i64 %t232, 0
  br i1 %t234, label %bb58, label %bb59
bb57:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb61
bb58:
  %t236 = load i64, ptr %l15, !tbaa !24
  %t237 = load i64, ptr %l14, !tbaa !24
  %t240 = sub i64 %t236, %t237
  %t241 = load i64, ptr %l16, !tbaa !24
  %t244 = add i64 %t240, %t241
  %t246 = sub i64 %t244, 1
  %t247 = load i64, ptr %l16, !tbaa !24
  %t250 = sdiv i64 %t246, %t247
  store i64 %t250, ptr %l136, !tbaa !24
  br label %bb60
bb59:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb60
bb60:
  %t252 = load i64, ptr %l136, !tbaa !24
  store i64 %t252, ptr %l133, !tbaa !24
  br label %bb61
bb61:
  %t253 = load i64, ptr %l133, !tbaa !24
  store i64 %t253, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb62
bb62:
  %t254 = load i64, ptr %l18, !tbaa !24
  %t255 = load i64, ptr %l17, !tbaa !24
  %t258 = icmp slt i64 %t254, %t255
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb63, label %bb64
bb63:
  br label %bb73
bb64:
  br label %bb65
bb65:
  %t262 = load i64, ptr %l14, !tbaa !24
  %t263 = load i64, ptr %l18, !tbaa !24
  %t264 = load i64, ptr %l16, !tbaa !24
  %t267 = mul i64 %t263, %t264
  %t270 = add i64 %t262, %t267
  store i64 %t270, ptr %l19, !tbaa !24
  %t272 = load i64, ptr %l13, !tbaa !65
  %t273 = load i64, ptr %l19, !tbaa !24
  store i64 %t273, ptr %l155, !tbaa !24
  %t274 = load i64, ptr %l155, !tbaa !24
  %t275 = load i64, ptr %l155, !tbaa !24
  %t276 = shl i64 1, %t275
  %t279 = and i64 %t272, %t276
  %t281 = icmp ne i64 %t279, 0
  br i1 %t281, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s15
  %t283 = load ptr, ptr %l2, !tbaa !29
  store ptr %t283, ptr %l159, !tbaa !29
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = getelementptr %"compiler/generic:Program", ptr %t287, i32 0, i32 2
  %t290 = load i32, ptr %l12, !tbaa !23
  %t293 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t289, i32 %t290)
  store i32 %t293, ptr %l164
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t294 = load i64, ptr %l19, !tbaa !24
  %t295 = load i32, ptr %l164, !tbaa !23
  %t297 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s15, i32 %t295, i64 %t294)
  store %"compiler/typed:Item" %t297, ptr %l166
  br label %bb69
bb69:
  %t298 = load ptr, ptr %l159, !tbaa !29
  %t299 = load %"compiler/typed:Item", ptr %l166
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v2, ptr %t298, %"compiler/typed:Item" %t299)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s15)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t300 = load i64, ptr %l18, !tbaa !24
  %t302 = add i64 %t300, 1
  store i64 %t302, ptr %l18, !tbaa !24
  br label %bb62
bb73:
  br label %bb74
bb74:
  %t304 = load i64, ptr %l11, !tbaa !24
  %t306 = add i64 %t304, 1
  store i64 %t306, ptr %l11, !tbaa !24
  br label %bb40
bb75:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb76:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load ptr, ptr %l1, !tbaa !29
  %t312 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %t308, ptr %t309)
  store { i64, i32 } %t312, ptr %l173
  br label %bb77
bb77:
  %t313 = load { i64, i32 }, ptr %l173
  store { i64, i32 } %t313, ptr %l20
  %t314 = getelementptr { i64, i32 }, ptr %l20, i32 0, i32 0
  %t315 = load i64, ptr %t314, !tbaa !24
  store i64 %t315, ptr %l21, !tbaa !24
  %t317 = getelementptr { i64, i32 }, ptr %l20, i32 0, i32 1
  %t318 = load i32, ptr %t317, !tbaa !23
  store i32 %t318, ptr %l22, !tbaa !23
  %t320 = load i64, ptr %l21, !tbaa !24
  %t322 = icmp slt i64 %t320, 0
  br i1 %t322, label %bb78, label %bb79
bb78:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/check:Checker", ptr %t324, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !29
  store ptr %t327, ptr %l179, !tbaa !29
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t328)
  store ptr %t330, ptr %l181
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t331 = load ptr, ptr %l181, !tbaa !29
  %t333 = getelementptr %"compiler/check:frame", ptr %t331, i32 0, i32 4
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t335 = load ptr, ptr %l179, !tbaa !29
  %t338 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v0, ptr %v1, ptr %t335, ptr %t333, ptr %t334)
  store i1 %t338, ptr %l185
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb82:
  %t339 = load ptr, ptr %l2, !tbaa !29
  store ptr %t339, ptr %l186, !tbaa !29
  %t340 = load i32, ptr %l22, !tbaa !23
  %t341 = load i64, ptr %l21, !tbaa !24
  %t344 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s0, i32 %t340, i64 %t341)
  store %"compiler/typed:Item" %t344, ptr %l189
  br label %bb83
bb83:
  %t345 = load ptr, ptr %l186, !tbaa !29
  %t346 = load %"compiler/typed:Item", ptr %l189
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v2, ptr %t345, %"compiler/typed:Item" %t346)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i64
  %l38 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l73 = alloca i64
  %l76 = alloca { i64, ptr }
  %l80 = alloca %"compiler/check:litv"
  %l84 = alloca i64
  %l91 = alloca i64
  %l94 = alloca i64
  %l112 = alloca i64
  %l115 = alloca { i64, ptr }
  %l118 = alloca i1
  %l122 = alloca ptr
  %l125 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca ptr
  %l131 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l141 = alloca %"compiler/source:Span"
  %l142 = alloca ptr
  %l149 = alloca i64
  %l152 = alloca i64
  %l173 = alloca i1
  %l180 = alloca i64
  %l183 = alloca i64
  %l205 = alloca i1
  %l219 = alloca i1
  %l231 = alloca { i64, ptr }
  %l237 = alloca ptr
  %l240 = alloca i64
  %l241 = alloca ptr
  %l246 = alloca ptr
  %l248 = alloca %"compiler/source:Span"
  %l249 = alloca ptr
  %l255 = alloca ptr
  %l257 = alloca i32
  %l260 = alloca i1
  %l261 = alloca i32
  %l264 = alloca i32
  %l269 = alloca i1
  %l270 = alloca ptr
  %l271 = alloca ptr
  %l273 = alloca ptr
  %l275 = alloca i32
  %l278 = alloca ptr
  %l280 = alloca %"compiler/source:Span"
  %l281 = alloca ptr
  %l285 = alloca i64
  %l290 = alloca ptr
  %l291 = alloca ptr
  %l293 = alloca { i64, ptr }
  %l296 = alloca %"compiler/source:Span"
  %l298 = alloca { i64, ptr }
  %l302 = alloca %"compiler/source:Span"
  %l304 = alloca { i64, ptr }
  %l307 = alloca { i64, ptr }
  %l309 = alloca %"compiler/source:Span"
  %l310 = alloca i32
  %l313 = alloca i32
  %l314 = alloca i1
  %l323 = alloca ptr
  %l324 = alloca %"compiler/source:Span"
  %l325 = alloca ptr
  %l326 = alloca i64
  %l327 = alloca { i64, ptr }
  %l329 = alloca ptr
  %l333 = alloca ptr
  %l335 = alloca ptr
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l41
  br label %bb1
bb1:
  %t6 = load i64, ptr %l41, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Chain", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  store i64 %t14, ptr %l45, !tbaa !24
  %t15 = load i64, ptr %l45, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l45, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t23, ptr %lp5
  %t25 = load ptr, ptr %lp5
  store { i64, ptr } %t22, ptr %t25, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  store i64 %t26, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t28 = load i64, ptr %l7, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_514ceade83978a4d_1843f44cd2570191)
  unreachable
bb4:
  %t34 = load i64, ptr %l8, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb9
bb6:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l55, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb8
bb8:
  %t54 = load i64, ptr %l55, !tbaa !24
  store i64 %t54, ptr %l52, !tbaa !24
  br label %bb9
bb9:
  %t55 = load i64, ptr %l52, !tbaa !24
  store i64 %t55, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb10
bb10:
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t64 = load i64, ptr %l6, !tbaa !24
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l11, !tbaa !24
  %t74 = load i64, ptr %l11, !tbaa !24
  store i64 %t74, ptr %l73, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/ast:Chain", ptr %t76, i32 0, i32 1
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  store { i64, ptr } %t79, ptr %l76, !tbaa !27
  %t80 = load i64, ptr %l11, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr ptr, ptr %t83, i64 %t80
  %t85 = load ptr, ptr %t84, !tbaa !39
  %t89 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t75, ptr %t85)
  store %"compiler/check:litv" %t89, ptr %l80
  br label %bb14
bb14:
  %t90 = getelementptr %"compiler/check:litv", ptr %l80, i32 0, i32 0
  %t91 = load i1, ptr %t90, !tbaa !21
  %t93 = load ptr, ptr %lp5
  %t94 = load i64, ptr %l73, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i1, ptr %t96, i64 %t94
  store i1 %t91, ptr %t97, !tbaa !31
  br label %bb15
bb15:
  %t98 = load i64, ptr %l10, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l10, !tbaa !24
  br label %bb10
bb16:
  %t102 = load i64, ptr %l4, !tbaa !24
  store i64 %t102, ptr %l84, !tbaa !24
  %t103 = load i64, ptr %l84, !tbaa !24
  %t104 = icmp sge i64 %t103, 0
  br i1 %t104, label %bb17, label %bb18
bb17:
  %t106 = load i64, ptr %l84, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l4, !tbaa !24
  store i64 %t112, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t114 = load i64, ptr %l14, !tbaa !24
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = icmp sgt i64 %t114, %t115
  br i1 %t118, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8bbd92ac148fb220_5a9ba8c1b178084)
  unreachable
bb19:
  %t120 = load i64, ptr %l15, !tbaa !24
  %t122 = icmp sgt i64 %t120, 0
  br i1 %t122, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb24
bb21:
  %t124 = load i64, ptr %l14, !tbaa !24
  %t125 = load i64, ptr %l13, !tbaa !24
  %t128 = sub i64 %t124, %t125
  %t129 = load i64, ptr %l15, !tbaa !24
  %t132 = add i64 %t128, %t129
  %t134 = sub i64 %t132, 1
  %t135 = load i64, ptr %l15, !tbaa !24
  %t138 = sdiv i64 %t134, %t135
  store i64 %t138, ptr %l94, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb23
bb23:
  %t140 = load i64, ptr %l94, !tbaa !24
  store i64 %t140, ptr %l91, !tbaa !24
  br label %bb24
bb24:
  %t141 = load i64, ptr %l91, !tbaa !24
  store i64 %t141, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb25
bb25:
  %t142 = load i64, ptr %l17, !tbaa !24
  %t143 = load i64, ptr %l16, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb26, label %bb27
bb26:
  br label %bb40
bb27:
  br label %bb28
bb28:
  %t150 = load i64, ptr %l13, !tbaa !24
  %t151 = load i64, ptr %l17, !tbaa !24
  %t152 = load i64, ptr %l15, !tbaa !24
  %t155 = mul i64 %t151, %t152
  %t158 = add i64 %t150, %t155
  store i64 %t158, ptr %l18, !tbaa !24
  %t160 = load i64, ptr %l18, !tbaa !24
  store i64 %t160, ptr %l112, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l2, !tbaa !29
  %t164 = getelementptr %"compiler/ast:Chain", ptr %t162, i32 0, i32 1
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l115, !tbaa !27
  %t166 = load i64, ptr %l18, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr ptr, ptr %t169, i64 %t166
  %t171 = load ptr, ptr %t170, !tbaa !39
  %t174 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t161, ptr %t171)
  store i1 %t174, ptr %l118
  br label %bb29
bb29:
  %t175 = load i1, ptr %l118, !tbaa !21
  %t176 = load i64, ptr %l112, !tbaa !24
  %t177 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr i1, ptr %t178, i64 %t176
  store i1 %t175, ptr %t179, !tbaa !31
  %t180 = load i64, ptr %l18, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i1, ptr %t183, i64 %t180
  %t185 = load i1, ptr %t184, !tbaa !31
  br i1 %t185, label %bb30, label %bb31
bb30:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 36
  store ptr %t189, ptr %l122, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l1
  %t194 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v0, ptr %t190, %"compiler/source:Span" %t191)
  store ptr %t194, ptr %l125
  br label %bb32
bb31:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 36
  store ptr %t197, ptr %l127, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l128, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l2, !tbaa !29
  %t202 = getelementptr %"compiler/ast:Chain", ptr %t200, i32 0, i32 1
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  store { i64, ptr } %t203, ptr %l131, !tbaa !27
  %t204 = load i64, ptr %l18, !tbaa !24
  %t206 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr ptr, ptr %t207, i64 %t204
  %t209 = load ptr, ptr %t208, !tbaa !39
  %t211 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t215 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t199, ptr %t209, i32 %t211)
  store ptr %t215, ptr %l136
  br label %bb34
bb32:
  %t216 = load ptr, ptr %l122, !tbaa !29
  %t217 = load ptr, ptr %l125, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t216, ptr %t217)
  br label %bb33
bb33:
  br label %bb38
bb34:
  %t218 = load ptr, ptr %l2, !tbaa !29
  %t220 = getelementptr %"compiler/ast:Chain", ptr %t218, i32 0, i32 1
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  store { i64, ptr } %t221, ptr %l138, !tbaa !27
  %t222 = load i64, ptr %l18, !tbaa !24
  %t224 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr ptr, ptr %t225, i64 %t222
  %t227 = load ptr, ptr %t226, !tbaa !39
  %t229 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t227)
  store %"compiler/source:Span" %t229, ptr %l141
  br label %bb35
bb35:
  %t230 = load ptr, ptr %l128, !tbaa !29
  %t231 = load ptr, ptr %l136, !tbaa !29
  %t232 = load %"compiler/source:Span", ptr %l141
  %t233 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t230, ptr %t231, %"compiler/source:Span" %t232)
  store ptr %t233, ptr %l142
  br label %bb36
bb36:
  %t234 = load ptr, ptr %l127, !tbaa !29
  %t235 = load ptr, ptr %l142, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t234, ptr %t235)
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t236 = load i64, ptr %l17, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l17, !tbaa !24
  br label %bb25
bb40:
  store i64 0, ptr %l19, !tbaa !24
  %t240 = load i64, ptr %l4, !tbaa !24
  store i64 %t240, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t242 = load i64, ptr %l20, !tbaa !24
  %t243 = load i64, ptr %l19, !tbaa !24
  %t246 = icmp sgt i64 %t242, %t243
  br i1 %t246, label %bb41, label %bb42
bb41:
  %t248 = load i64, ptr %l21, !tbaa !24
  %t250 = icmp sgt i64 %t248, 0
  br i1 %t250, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb46
bb43:
  %t252 = load i64, ptr %l20, !tbaa !24
  %t253 = load i64, ptr %l19, !tbaa !24
  %t256 = sub i64 %t252, %t253
  %t257 = load i64, ptr %l21, !tbaa !24
  %t260 = add i64 %t256, %t257
  %t262 = sub i64 %t260, 1
  %t263 = load i64, ptr %l21, !tbaa !24
  %t266 = sdiv i64 %t262, %t263
  store i64 %t266, ptr %l152, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb45
bb45:
  %t268 = load i64, ptr %l152, !tbaa !24
  store i64 %t268, ptr %l149, !tbaa !24
  br label %bb46
bb46:
  %t269 = load i64, ptr %l149, !tbaa !24
  store i64 %t269, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb47
bb47:
  store %olang.scope zeroinitializer, ptr %s10
  %t270 = load i64, ptr %l23, !tbaa !24
  %t271 = load i64, ptr %l22, !tbaa !24
  %t274 = icmp slt i64 %t270, %t271
  %t276 = xor i1 %t274, true
  br i1 %t276, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s10)
  br label %bb116
bb49:
  br label %bb50
bb50:
  %t278 = load i64, ptr %l19, !tbaa !24
  %t279 = load i64, ptr %l23, !tbaa !24
  %t280 = load i64, ptr %l21, !tbaa !24
  %t283 = mul i64 %t279, %t280
  %t286 = add i64 %t278, %t283
  store i64 %t286, ptr %l24, !tbaa !24
  %t288 = load i64, ptr %l24, !tbaa !24
  %t290 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr i1, ptr %t291, i64 %t288
  %t293 = load i1, ptr %t292, !tbaa !31
  %t295 = xor i1 %t293, true
  br i1 %t295, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l173, !tbaa !21
  br label %bb53
bb52:
  %t297 = load i64, ptr %l24, !tbaa !24
  %t298 = load ptr, ptr %lp5
  %t300 = getelementptr { i64, ptr }, ptr %t298, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr i1, ptr %t301, i64 %t297
  %t303 = load i1, ptr %t302, !tbaa !31
  store i1 %t303, ptr %l173, !tbaa !21
  br label %bb53
bb53:
  %t305 = load i1, ptr %l173, !tbaa !21
  br i1 %t305, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s10)
  br label %bb115
bb55:
  br label %bb56
bb56:
  store i64 -1, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t306 = load i64, ptr %l4, !tbaa !24
  store i64 %t306, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t308 = load i64, ptr %l27, !tbaa !24
  %t309 = load i64, ptr %l26, !tbaa !24
  %t312 = icmp sgt i64 %t308, %t309
  br i1 %t312, label %bb57, label %bb58
bb57:
  %t314 = load i64, ptr %l28, !tbaa !24
  %t316 = icmp sgt i64 %t314, 0
  br i1 %t316, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb62
bb59:
  %t318 = load i64, ptr %l27, !tbaa !24
  %t319 = load i64, ptr %l26, !tbaa !24
  %t322 = sub i64 %t318, %t319
  %t323 = load i64, ptr %l28, !tbaa !24
  %t326 = add i64 %t322, %t323
  %t328 = sub i64 %t326, 1
  %t329 = load i64, ptr %l28, !tbaa !24
  %t332 = sdiv i64 %t328, %t329
  store i64 %t332, ptr %l183, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb61
bb61:
  %t334 = load i64, ptr %l183, !tbaa !24
  store i64 %t334, ptr %l180, !tbaa !24
  br label %bb62
bb62:
  %t335 = load i64, ptr %l180, !tbaa !24
  store i64 %t335, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb63
bb63:
  %t336 = load i64, ptr %l30, !tbaa !24
  %t337 = load i64, ptr %l29, !tbaa !24
  %t340 = icmp slt i64 %t336, %t337
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb64, label %bb65
bb64:
  br label %bb80
bb65:
  br label %bb66
bb66:
  %t344 = load i64, ptr %l26, !tbaa !24
  %t345 = load i64, ptr %l30, !tbaa !24
  %t346 = load i64, ptr %l28, !tbaa !24
  %t349 = mul i64 %t345, %t346
  %t352 = add i64 %t344, %t349
  store i64 %t352, ptr %l31, !tbaa !24
  %t354 = load i64, ptr %l24, !tbaa !24
  %t355 = load i64, ptr %l31, !tbaa !24
  %t358 = sub i64 %t354, %t355
  %t360 = icmp sge i64 %t358, 0
  br i1 %t360, label %bb67, label %bb68
bb67:
  %t362 = load i64, ptr %l24, !tbaa !24
  %t363 = load i64, ptr %l31, !tbaa !24
  %t366 = sub i64 %t362, %t363
  %t368 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !27
  %t370 = getelementptr i1, ptr %t369, i64 %t366
  %t371 = load i1, ptr %t370, !tbaa !31
  %t373 = xor i1 %t371, true
  store i1 %t373, ptr %l205, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l205, !tbaa !21
  br label %bb69
bb69:
  %t375 = load i1, ptr %l205, !tbaa !21
  br i1 %t375, label %bb70, label %bb71
bb70:
  %t376 = load i64, ptr %l24, !tbaa !24
  %t377 = load i64, ptr %l31, !tbaa !24
  %t380 = sub i64 %t376, %t377
  store i64 %t380, ptr %l25, !tbaa !24
  br label %bb80
bb71:
  br label %bb72
bb72:
  %t382 = load i64, ptr %l24, !tbaa !24
  %t383 = load i64, ptr %l31, !tbaa !24
  %t386 = add i64 %t382, %t383
  %t387 = load i64, ptr %l4, !tbaa !24
  %t390 = icmp slt i64 %t386, %t387
  br i1 %t390, label %bb73, label %bb74
bb73:
  %t392 = load i64, ptr %l24, !tbaa !24
  %t393 = load i64, ptr %l31, !tbaa !24
  %t396 = add i64 %t392, %t393
  %t398 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr i1, ptr %t399, i64 %t396
  %t401 = load i1, ptr %t400, !tbaa !31
  %t403 = xor i1 %t401, true
  store i1 %t403, ptr %l219, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l219, !tbaa !21
  br label %bb75
bb75:
  %t405 = load i1, ptr %l219, !tbaa !21
  br i1 %t405, label %bb76, label %bb77
bb76:
  %t406 = load i64, ptr %l24, !tbaa !24
  %t407 = load i64, ptr %l31, !tbaa !24
  %t410 = add i64 %t406, %t407
  store i64 %t410, ptr %l25, !tbaa !24
  br label %bb80
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t412 = load i64, ptr %l30, !tbaa !24
  %t414 = add i64 %t412, 1
  store i64 %t414, ptr %l30, !tbaa !24
  br label %bb63
bb80:
  %t416 = load ptr, ptr %l2, !tbaa !29
  %t418 = getelementptr %"compiler/ast:Chain", ptr %t416, i32 0, i32 1
  %t419 = load { i64, ptr }, ptr %t418, !tbaa !27
  store { i64, ptr } %t419, ptr %l231, !tbaa !27
  %t420 = load i64, ptr %l24, !tbaa !24
  %t422 = getelementptr { i64, ptr }, ptr %l231, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !27
  %t424 = getelementptr ptr, ptr %t423, i64 %t420
  %t425 = load ptr, ptr %t424, !tbaa !39
  store ptr %t425, ptr %l32, !tbaa !29
  %t427 = load i64, ptr %l25, !tbaa !24
  %t429 = icmp slt i64 %t427, 0
  br i1 %t429, label %bb81, label %bb82
bb81:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = getelementptr %"compiler/check:Checker", ptr %t431, i32 0, i32 36
  store ptr %t433, ptr %l237, !tbaa !29
  %t434 = load i64, ptr %l3, !tbaa !24
  %t435 = load i64, ptr %l24, !tbaa !24
  %t438 = add i64 %t434, %t435
  store i64 %t438, ptr %l240, !tbaa !24
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l241, !tbaa !29
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load ptr, ptr %l32, !tbaa !29
  %t443 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t447 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t440, ptr %t441, i32 %t443)
  store ptr %t447, ptr %l246
  br label %bb83
bb82:
  br label %bb87
bb83:
  %t448 = load ptr, ptr %l32, !tbaa !29
  %t450 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t448)
  store %"compiler/source:Span" %t450, ptr %l248
  br label %bb84
bb84:
  %t451 = load ptr, ptr %l241, !tbaa !29
  %t452 = load ptr, ptr %l246, !tbaa !29
  %t453 = load %"compiler/source:Span", ptr %l248
  %t454 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t451, ptr %t452, %"compiler/source:Span" %t453)
  store ptr %t454, ptr %l249
  br label %bb85
bb85:
  %t455 = load ptr, ptr %l237, !tbaa !29
  %t456 = load i64, ptr %l240, !tbaa !24
  %t457 = load ptr, ptr %l249, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eSetAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t455, i64 %t456, ptr %t457)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s10)
  br label %bb115
bb87:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/check:Checker", ptr %t458, i32 0, i32 36
  %t461 = load i64, ptr %l3, !tbaa !24
  %t462 = load i64, ptr %l25, !tbaa !24
  %t465 = add i64 %t461, %t462
  %t468 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s10, ptr %t460, i64 %t465)
  store ptr %t468, ptr %l255
  br label %bb88
bb88:
  %t469 = load ptr, ptr %l255, !tbaa !29
  %t471 = call i32 @compiler_2fcheck_2etypeOf(ptr %s10, ptr %t469)
  store i32 %t471, ptr %l257
  br label %bb89
bb89:
  %t472 = load i32, ptr %l257, !tbaa !23
  store i32 %t472, ptr %l33, !tbaa !23
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l33, !tbaa !23
  %t477 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t473, i32 %t474)
  store i1 %t477, ptr %l260
  br label %bb90
bb90:
  %t478 = load i1, ptr %l260, !tbaa !21
  br i1 %t478, label %bb91, label %bb92
bb91:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i32, ptr %l33, !tbaa !23
  %t483 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t479, i32 %t480)
  store i32 %t483, ptr %l264
  br label %bb93
bb92:
  %t484 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t484, ptr %l261, !tbaa !23
  br label %bb94
bb93:
  %t486 = load i32, ptr %l264, !tbaa !23
  store i32 %t486, ptr %l261, !tbaa !23
  br label %bb94
bb94:
  %t487 = load i32, ptr %l261, !tbaa !23
  store i32 %t487, ptr %l34, !tbaa !23
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load ptr, ptr %l32, !tbaa !29
  %t490 = load i32, ptr %l34, !tbaa !23
  %t494 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %t488, ptr %t489, i32 %t490)
  store i1 %t494, ptr %l269
  br label %bb95
bb95:
  %t495 = load i1, ptr %l269, !tbaa !21
  store i1 %t495, ptr %l35, !tbaa !21
  %t496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t496, ptr %l270, !tbaa !29
  %t497 = load ptr, ptr %l0, !tbaa !29
  store ptr %t497, ptr %l271, !tbaa !29
  %t498 = load ptr, ptr %l32, !tbaa !29
  store ptr %t498, ptr %l273, !tbaa !29
  %t500 = load i1, ptr %l35, !tbaa !21
  br i1 %t500, label %bb96, label %bb97
bb96:
  %t502 = load i32, ptr %l34, !tbaa !23
  store i32 %t502, ptr %l275, !tbaa !23
  br label %bb98
bb97:
  %t504 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t504, ptr %l275, !tbaa !23
  br label %bb98
bb98:
  %t506 = load ptr, ptr %l271, !tbaa !29
  %t507 = load ptr, ptr %l273, !tbaa !29
  %t508 = load i32, ptr %l275, !tbaa !23
  %t509 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t506, ptr %t507, i32 %t508)
  store ptr %t509, ptr %l278
  br label %bb99
bb99:
  %t510 = load ptr, ptr %l32, !tbaa !29
  %t512 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t510)
  store %"compiler/source:Span" %t512, ptr %l280
  br label %bb100
bb100:
  %t513 = load ptr, ptr %l270, !tbaa !29
  %t514 = load ptr, ptr %l278, !tbaa !29
  %t515 = load %"compiler/source:Span", ptr %l280
  %t516 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t513, ptr %t514, %"compiler/source:Span" %t515)
  store ptr %t516, ptr %l281
  br label %bb101
bb101:
  %t517 = load ptr, ptr %l281, !tbaa !29
  store ptr %t517, ptr %l36, !tbaa !29
  %t518 = load i64, ptr %l24, !tbaa !24
  %t519 = load i64, ptr %l25, !tbaa !24
  %t522 = icmp slt i64 %t518, %t519
  br i1 %t522, label %bb102, label %bb103
bb102:
  %t524 = load i64, ptr %l24, !tbaa !24
  store i64 %t524, ptr %l285, !tbaa !24
  br label %bb104
bb103:
  %t526 = load i64, ptr %l25, !tbaa !24
  store i64 %t526, ptr %l285, !tbaa !24
  br label %bb104
bb104:
  %t528 = load i64, ptr %l285, !tbaa !24
  store i64 %t528, ptr %l37, !tbaa !24
  %t529 = load i1, ptr %l35, !tbaa !21
  %t531 = xor i1 %t529, true
  br i1 %t531, label %bb105, label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s18
  %t533 = load ptr, ptr %l0, !tbaa !29
  store ptr %t533, ptr %l290, !tbaa !29
  %t534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t534, ptr %l291, !tbaa !29
  %t535 = load ptr, ptr %l2, !tbaa !29
  %t537 = getelementptr %"compiler/ast:Chain", ptr %t535, i32 0, i32 1
  %t538 = load { i64, ptr }, ptr %t537, !tbaa !27
  store { i64, ptr } %t538, ptr %l293, !tbaa !27
  %t539 = load i64, ptr %l37, !tbaa !24
  %t541 = getelementptr { i64, ptr }, ptr %l293, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr ptr, ptr %t542, i64 %t539
  %t544 = load ptr, ptr %t543, !tbaa !39
  %t546 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t544)
  store %"compiler/source:Span" %t546, ptr %l296
  br label %bb107
bb106:
  br label %bb113
bb107:
  %t547 = load ptr, ptr %l2, !tbaa !29
  %t549 = getelementptr %"compiler/ast:Chain", ptr %t547, i32 0, i32 1
  %t550 = load { i64, ptr }, ptr %t549, !tbaa !27
  store { i64, ptr } %t550, ptr %l298, !tbaa !27
  %t551 = load i64, ptr %l37, !tbaa !24
  %t553 = add i64 %t551, 1
  %t555 = getelementptr { i64, ptr }, ptr %l298, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !27
  %t557 = getelementptr ptr, ptr %t556, i64 %t553
  %t558 = load ptr, ptr %t557, !tbaa !39
  %t560 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t558)
  store %"compiler/source:Span" %t560, ptr %l302
  br label %bb108
bb108:
  %t561 = load ptr, ptr %l2, !tbaa !29
  %t563 = getelementptr %"compiler/ast:Chain", ptr %t561, i32 0, i32 0
  %t564 = load { i64, ptr }, ptr %t563, !tbaa !27
  store { i64, ptr } %t564, ptr %l304, !tbaa !27
  %t565 = load i64, ptr %l37, !tbaa !24
  %t567 = getelementptr { i64, ptr }, ptr %l304, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = getelementptr i32, ptr %t568, i64 %t565
  %t570 = load i32, ptr %t569, !range !{i32 0, i32 114}
  %t572 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s18, i32 %t570)
  store { i64, ptr } %t572, ptr %l307
  br label %bb109
bb109:
  %t573 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t574 = extractvalue { i64, ptr } %t573, 0
  %t575 = load ptr, ptr %l291, !tbaa !29
  %t576 = load %"compiler/source:Span", ptr %l296
  %t577 = load %"compiler/source:Span", ptr %l302
  %t579 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t575, %"compiler/source:Span" %t576, %"compiler/source:Span" %t577, i64 %t574)
  store %"compiler/source:Span" %t579, ptr %l309
  br label %bb110
bb110:
  %t580 = load i32, ptr %l33, !tbaa !23
  store i32 %t580, ptr %l310, !tbaa !23
  %t581 = load ptr, ptr %l36, !tbaa !29
  %t584 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t581)
  store i32 %t584, ptr %l313
  br label %bb111
bb111:
  %t585 = load ptr, ptr %l290, !tbaa !29
  %t586 = load %"compiler/source:Span", ptr %l309
  %t587 = load i32, ptr %l310, !tbaa !23
  %t588 = load i32, ptr %l313, !tbaa !23
  %t589 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %t585, %"compiler/source:Span" %t586, i32 %t587, i32 %t588)
  store i1 %t589, ptr %l314
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s18)
  br label %bb113
bb113:
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t592 = getelementptr %"compiler/check:Checker", ptr %t590, i32 0, i32 36
  %t593 = load i64, ptr %l3, !tbaa !24
  %t594 = load i64, ptr %l24, !tbaa !24
  %t597 = add i64 %t593, %t594
  %t598 = load ptr, ptr %l36, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eSetAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t592, i64 %t597, ptr %t598)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s10)
  br label %bb115
bb115:
  %t602 = load i64, ptr %l23, !tbaa !24
  %t604 = add i64 %t602, 1
  store i64 %t604, ptr %l23, !tbaa !24
  br label %bb47
bb116:
  %t606 = load ptr, ptr %l0, !tbaa !29
  store ptr %t606, ptr %l323, !tbaa !29
  %t607 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t607, ptr %l324
  %t608 = load ptr, ptr %l2, !tbaa !29
  store ptr %t608, ptr %l325, !tbaa !29
  %t609 = load i64, ptr %l3, !tbaa !24
  store i64 %t609, ptr %l326, !tbaa !24
  %t610 = load ptr, ptr %lp5
  %t611 = load { i64, ptr }, ptr %t610, !tbaa !27
  store { i64, ptr } %t611, ptr %l327, !tbaa !27
  %t612 = load ptr, ptr %lp5
  %t613 = getelementptr { i64, ptr }, ptr %t612, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !27
  %t615 = getelementptr i1, ptr %t614, i64 0
  %t616 = load i1, ptr %t615, !tbaa !31
  br i1 %t616, label %bb117, label %bb118
bb117:
  store ptr null, ptr %l329, !tbaa !29
  br label %bb120
bb118:
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/check:Checker", ptr %t618, i32 0, i32 36
  %t621 = load i64, ptr %l3, !tbaa !24
  %t624 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t620, i64 %t621)
  store ptr %t624, ptr %l333
  br label %bb119
bb119:
  %t625 = load ptr, ptr %l333, !tbaa !29
  store ptr %t625, ptr %l329, !tbaa !29
  br label %bb120
bb120:
  %t627 = load ptr, ptr %l323, !tbaa !29
  %t628 = load %"compiler/source:Span", ptr %l324
  %t629 = load ptr, ptr %l325, !tbaa !29
  %t630 = load i64, ptr %l326, !tbaa !24
  %t631 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t632 = load ptr, ptr %l329, !tbaa !29
  %t633 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %v2, ptr %t627, %"compiler/source:Span" %t628, ptr %t629, i64 %t630, { i64, ptr } %t631, i64 0, ptr %t632)
  store ptr %t633, ptr %l335
  br label %bb121
bb121:
  %t634 = load ptr, ptr %l335, !tbaa !29
  store ptr %t634, ptr %l38, !tbaa !29
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t637 = getelementptr %"compiler/check:Checker", ptr %t635, i32 0, i32 36
  %t638 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eTrunca_Hdac151ce4e73ec212dc55b02b0b7e7d0(ptr %v0, ptr %t637, i64 %t638)
  br label %bb122
bb122:
  %t641 = load ptr, ptr %l38, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t641, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l5 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca i1
  %l24 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t3 = call i1 @compiler_2fcheck_2ecommutative(i32 %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l10
  br label %bb4
bb4:
  %t12 = load i1, ptr %l10, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l13, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  store i32 %t18, ptr %l14, !tbaa !23
  %t19 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t21 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s0, i32 %t19)
  store { i64, ptr } %t21, ptr %l16
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t25 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t22, i32 %t23, { i64, ptr } %t24, i64 1)
  store i64 %t25, ptr %l17
  br label %bb10
bb10:
  %t26 = load i64, ptr %l17, !tbaa !24
  store i64 %t26, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp slt i64 %t27, 0
  br i1 %t29, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb14
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t34, i64 %t35)
  store ptr %t38, ptr %l24
  br label %bb13
bb13:
  %t39 = load ptr, ptr %l24, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Func", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/ast:Sig", ptr %t42, i32 0, i32 6
  %t45 = load i1, ptr %t44, !tbaa !21
  %t47 = xor i1 %t45, true
  store i1 %t47, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l20, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t51 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca i32
  %l26 = alloca i1
  %l28 = alloca i1
  %l32 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca i32
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i64
  %l56 = alloca ptr
  %l59 = alloca i1
  %l61 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i64
  %l74 = alloca ptr
  %l80 = alloca i32
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l92 = alloca i32
  %l94 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l110 = alloca i64
  %l117 = alloca ptr
  %l118 = alloca %"compiler/source:Span"
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca i32
  %l125 = alloca ptr
  %l126 = alloca { i64, ptr }
  %l130 = alloca ptr
  %l136 = alloca i1
  %l139 = alloca i1
  %l144 = alloca ptr
  %l147 = alloca i1
  %l151 = alloca i32
  %l158 = alloca ptr
  %l164 = alloca i32
  %l170 = alloca i64
  %l174 = alloca i1
  %l176 = alloca { i64, ptr }
  %l178 = alloca i1
  %l181 = alloca ptr
  %l182 = alloca %"compiler/source:Span"
  %l183 = alloca %"compiler/source:Span"
  %l184 = alloca i32
  %l189 = alloca ptr
  %l190 = alloca { i64, ptr }
  %l194 = alloca ptr
  %l196 = alloca ptr
  %l197 = alloca i32
  %l198 = alloca { i64, ptr }
  %l200 = alloca %"compiler/source:Span"
  %l202 = alloca { i64, ptr }
  %l209 = alloca ptr
  %l210 = alloca %"compiler/source:Span"
  %l213 = alloca %"compiler/diagmsg:Msg"
  %l214 = alloca i64
  %l217 = alloca ptr
  %l222 = alloca i32
  %l223 = alloca ptr
  %l224 = alloca ptr
  %l225 = alloca { i64, ptr }
  %l227 = alloca ptr
  %l229 = alloca { i64, ptr }
  %l231 = alloca i1
  %l232 = alloca i32
  %l235 = alloca ptr
  %l236 = alloca { i64, ptr }
  %l238 = alloca %"compiler/source:Span"
  %l239 = alloca ptr
  %l242 = alloca i32
  %l246 = alloca i1
  %l253 = alloca i1
  %l254 = alloca i1
  %l257 = alloca i1
  %l262 = alloca ptr
  %l263 = alloca ptr
  %l266 = alloca i32
  %l268 = alloca i1
  %l269 = alloca i1
  %l270 = alloca ptr
  %l273 = alloca i32
  %l275 = alloca i1
  %l279 = alloca i1
  %l281 = alloca ptr
  %l284 = alloca i32
  %l285 = alloca i1
  %l289 = alloca i1
  %l290 = alloca ptr
  %l291 = alloca ptr
  %l292 = alloca %"compiler/source:Span"
  %l293 = alloca %"compiler/source:Span"
  %l296 = alloca i32
  %l300 = alloca ptr
  %l302 = alloca ptr
  %l303 = alloca %"compiler/source:Span"
  %l306 = alloca ptr
  %l308 = alloca ptr
  %l311 = alloca i1
  %l312 = alloca ptr
  %l313 = alloca %"compiler/source:Span"
  %l314 = alloca ptr
  %l317 = alloca ptr
  %l318 = alloca i32
  %l323 = alloca i64
  %l324 = alloca i32
  %l325 = alloca ptr
  %l327 = alloca ptr
  %l331 = alloca i1
  %l334 = alloca ptr
  %l337 = alloca i32
  %l338 = alloca i32
  %l341 = alloca i1
  %l344 = alloca ptr
  %l347 = alloca i32
  %l348 = alloca i32
  %l351 = alloca i1
  %l352 = alloca ptr
  %l355 = alloca ptr
  %l358 = alloca i32
  %l359 = alloca i32
  %l362 = alloca ptr
  %l365 = alloca i32
  %l366 = alloca i32
  %l367 = alloca i1
  %l370 = alloca i1
  %l371 = alloca i64
  %l374 = alloca ptr
  %l375 = alloca %"compiler/source:Span"
  %l376 = alloca %"compiler/source:Span"
  %l382 = alloca i32
  %l385 = alloca ptr
  %l391 = alloca i32
  %l392 = alloca ptr
  %l400 = alloca ptr
  %l404 = alloca i1
  %l410 = alloca ptr
  %l411 = alloca ptr
  %l412 = alloca %"compiler/source:Span"
  %l413 = alloca ptr
  %l414 = alloca ptr
  %l415 = alloca i32
  %l416 = alloca { i64, ptr }
  %l418 = alloca %"compiler/source:Span"
  %l419 = alloca ptr
  %l421 = alloca ptr
  %l422 = alloca ptr
  %l423 = alloca { i64, ptr }
  %l425 = alloca %"compiler/source:Span"
  %l428 = alloca { i64, ptr }
  %l429 = alloca { i64, ptr }
  %l432 = alloca { i64, ptr }
  %l434 = alloca %"compiler/diagmsg:Msg"
  %l435 = alloca i64
  %l438 = alloca ptr
  %l441 = alloca ptr
  %l442 = alloca %"compiler/source:Span"
  %l445 = alloca { i64, ptr }
  %l446 = alloca { i64, ptr }
  %l448 = alloca %"compiler/diagmsg:Msg"
  %l449 = alloca i64
  %l454 = alloca ptr
  %l457 = alloca i1
  %l459 = alloca ptr
  %l464 = alloca i32
  %l465 = alloca i1
  %l469 = alloca i32
  %l476 = alloca ptr
  %l477 = alloca %"compiler/source:Span"
  %l478 = alloca %"compiler/source:Span"
  %l479 = alloca i32
  %l482 = alloca ptr
  %l487 = alloca i32
  %l488 = alloca i32
  %l489 = alloca { i64, ptr }
  %l493 = alloca ptr
  %l498 = alloca ptr
  %s4 = alloca %olang.scope
  %rv = alloca ptr
  %t211 = alloca { i64, [3 x i64] }, align 8
  %t350 = alloca { i64, [3 x i64] }, align 8
  %t580 = alloca { i64, [4 x i64] }, align 8
  %t760 = alloca { i64, [5 x i64] }, align 8
  %t795 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr %l2
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t1, i32 %t2, %"compiler/source:Span" %t3)
  store i1 %t7, ptr %l26
  br label %bb1
bb1:
  %t8 = load i1, ptr %l26, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load i32, ptr %l3, !tbaa !23
  %t18 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l32
  br label %bb4
bb4:
  %t19 = load i1, ptr %l32, !tbaa !21
  %t20 = xor i1 %t19, true
  store i1 %t20, ptr %l28, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l28, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t23, { i64, ptr } %t24)
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t27, %"compiler/source:Span" %t28)
  store ptr %t31, ptr %l38
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l38, !tbaa !29
  store ptr %t32, ptr %rv
  br label %ret
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l41
  br label %bb11
bb11:
  %t38 = load i32, ptr %l41, !range !{i32 0, i32 6}
  store i32 %t38, ptr %l5
  %t39 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t41 = trunc i64 5 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l44, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t45, ptr %l45
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store { i64, ptr } %t50, ptr %l48
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t51 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignBuilt(ptr %v0, ptr %v0, { i64, ptr } %t57)
  store %"compiler/diagmsg:Msg" %t59, ptr %l50
  br label %bb15
bb15:
  %t60 = load ptr, ptr %l44, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l45
  %t62 = load %"compiler/diagmsg:Msg", ptr %l50
  %t63 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t60, %"compiler/source:Span" %t61, %"compiler/diagmsg:Msg" %t62)
  store i64 %t63, ptr %l51
  br label %bb16
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t64, { i64, ptr } %t65)
  br label %bb17
bb17:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l1
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t68, %"compiler/source:Span" %t69)
  store ptr %t72, ptr %l56
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l56, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
bb19:
  %t74 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t76 = trunc i64 0 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  store ptr %t82, ptr %l61, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load i32, ptr %l3, !tbaa !23
  %t92 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t88, i32 %t89)
  store i32 %t92, ptr %l66
  br label %bb22
bb21:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb24
bb22:
  %t93 = load ptr, ptr %l61, !tbaa !29
  %t94 = load i32, ptr %l66, !tbaa !23
  %t95 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %t93, i32 %t94)
  store i64 %t95, ptr %l67
  br label %bb23
bb23:
  %t96 = load i64, ptr %l67, !tbaa !24
  %t97 = icmp sgt i64 %t96, 0
  store i1 %t97, ptr %l59, !tbaa !21
  br label %bb24
bb24:
  %t99 = load i1, ptr %l59, !tbaa !21
  br i1 %t99, label %bb25, label %bb26
bb25:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l1
  %t102 = load %"compiler/source:Span", ptr %l2
  %t103 = load i32, ptr %l3, !tbaa !23
  %t104 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t110 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etwinCall(ptr %v0, ptr %v1, ptr %v2, ptr %t100, %"compiler/source:Span" %t101, %"compiler/source:Span" %t102, i32 %t103, { i64, ptr } %t104)
  store ptr %t110, ptr %l74
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t111 = load ptr, ptr %l74, !tbaa !29
  store ptr %t111, ptr %rv
  br label %ret
bb28:
  %t112 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t114 = trunc i64 0 to i32
  %t115 = icmp eq i32 %t112, %t114
  br i1 %t115, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t121 = load i32, ptr %l3, !tbaa !23
  %t124 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l80
  br label %bb31
bb30:
  br label %bb52
bb31:
  %t125 = load i32, ptr %l80, !tbaa !23
  store i32 %t125, ptr %l6, !tbaa !23
  %t126 = load i32, ptr %l6, !tbaa !23
  %t127 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t130 = icmp eq i32 %t126, %t127
  br i1 %t130, label %bb32, label %bb33
bb32:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l1
  %t136 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t132, %"compiler/source:Span" %t133)
  store ptr %t136, ptr %l86
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_scope_close(ptr %s4)
  %t137 = load ptr, ptr %l86, !tbaa !29
  store ptr %t137, ptr %rv
  br label %ret
bb35:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l87, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l3, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l92
  br label %bb36
bb36:
  %t149 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t150 = load ptr, ptr %l87, !tbaa !29
  %t151 = load i32, ptr %l92, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorNamed(ptr %v0, ptr %v1, ptr %v0, ptr %t150, i32 %t151, { i64, ptr } %t149)
  store { i64, ptr } %t153, ptr %l94
  br label %bb37
bb37:
  %t154 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t154, ptr %l4, !tbaa !27
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 153
  %t158 = load i1, ptr %t157, !tbaa !21
  br i1 %t158, label %bb38, label %bb39
bb38:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 153
  store i1 false, ptr %t162, !tbaa !21
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t163, { i64, ptr } %t164)
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l1
  %t171 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t167, %"compiler/source:Span" %t168)
  store ptr %t171, ptr %l102
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s4)
  %t172 = load ptr, ptr %l102, !tbaa !29
  store ptr %t172, ptr %rv
  br label %ret
bb42:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/check:Checker", ptr %t173, i32 0, i32 154
  %t177 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %s4, ptr %t175)
  store { i64, ptr } %t177, ptr %l105
  br label %bb43
bb43:
  %t178 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t178, ptr %l7, !tbaa !27
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t181)
  br label %bb44
bb44:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l3, !tbaa !23
  %t187 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t183, i32 %t184)
  store i64 %t187, ptr %l110
  br label %bb45
bb45:
  %t188 = load i64, ptr %l110, !tbaa !24
  store i64 %t188, ptr %l8, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 23
  %t192 = load i32, ptr %t191, !tbaa !23
  store i32 %t192, ptr %l9, !tbaa !23
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l3, !tbaa !23
  %t198 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 23
  store i32 %t195, ptr %t198, !tbaa !23
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %s4, ptr %t199, { i64, ptr } %t200)
  br label %bb46
bb46:
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l117, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t204, ptr %l118
  %t205 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t205, ptr %l119
  %t206 = load i32, ptr %l6, !tbaa !23
  store i32 %t206, ptr %l120, !tbaa !23
  %t207 = load i64, ptr %l8, !tbaa !24
  %t209 = trunc i64 %t207 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 0
  store i64 0, ptr %t212
  %t214 = insertvalue { i32 } undef, i32 %t209, 0
  %t215 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  store { i32 } %t214, ptr %t215
  %t216 = load { i64, [3 x i64] }, ptr %t211
  %t218 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t216, ptr %t218
  store ptr %t218, ptr %l125, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t219, ptr %l126, !tbaa !27
  %t220 = icmp sge i64 0, 0
  br i1 %t220, label %bb47, label %bb48
bb47:
  %t222 = icmp sle i64 0, 1152921504606846975
  br i1 %t222, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_77e9ca8727c07af9_ddc1fd4e636ee49d)
  unreachable
bb49:
  %t224 = mul i64 0, 8
  %t225 = insertvalue { i64, ptr } undef, i64 0, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t227 = load ptr, ptr %l117, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l118
  %t229 = load %"compiler/source:Span", ptr %l119
  %t230 = load i32, ptr %l120, !tbaa !23
  %t231 = load ptr, ptr %l125, !tbaa !29
  %t232 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t234 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t227, %"compiler/source:Span" %t228, %"compiler/source:Span" %t229, i32 %t230, ptr %t231, i64 -1, ptr null, { i64, ptr } %t232, { i64, ptr } %t226)
  store ptr %t234, ptr %l130
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_77e9ca8727c07af9_ddc1fd4e636ee49d)
  unreachable
bb51:
  %t235 = load ptr, ptr %l130, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i32, ptr %l9, !tbaa !23
  %t240 = getelementptr %"compiler/check:Checker", ptr %t236, i32 0, i32 23
  store i32 %t237, ptr %t240, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  store ptr %t235, ptr %rv
  br label %ret
bb52:
  %t243 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t245 = trunc i64 4 to i32
  %t246 = icmp eq i32 %t243, %t245
  br i1 %t246, label %bb53, label %bb54
bb53:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load i32, ptr %l3, !tbaa !23
  %t252 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadOver(ptr %v0, ptr %t248, i32 %t249)
  store i1 %t252, ptr %l139
  br label %bb55
bb54:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb56
bb55:
  %t253 = load i1, ptr %l139, !tbaa !21
  store i1 %t253, ptr %l136, !tbaa !21
  br label %bb56
bb56:
  %t254 = load i1, ptr %l136, !tbaa !21
  br i1 %t254, label %bb57, label %bb58
bb57:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t255, { i64, ptr } %t256)
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l1
  %t263 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t259, %"compiler/source:Span" %t260)
  store ptr %t263, ptr %l144
  br label %bb60
bb60:
  %t264 = load ptr, ptr %l144, !tbaa !29
  store ptr %t264, ptr %rv
  br label %ret
bb61:
  %t265 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t267 = trunc i64 4 to i32
  %t268 = icmp eq i32 %t265, %t267
  br i1 %t268, label %bb62, label %bb63
bb62:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/check:Checker", ptr %t270, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t274 = load i32, ptr %l3, !tbaa !23
  %t277 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %t273, i32 %t274)
  store i32 %t277, ptr %l151
  br label %bb64
bb63:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb65
bb64:
  %t278 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t279 = load i32, ptr %l151, !tbaa !23
  %t281 = icmp ne i32 %t279, %t278
  store i1 %t281, ptr %l147, !tbaa !21
  br label %bb65
bb65:
  %t283 = load i1, ptr %l147, !tbaa !21
  br i1 %t283, label %bb66, label %bb67
bb66:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l1
  %t286 = load i32, ptr %l3, !tbaa !23
  %t287 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t292 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etoDeclaredFunc(ptr %v0, ptr %v1, ptr %v2, ptr %t284, %"compiler/source:Span" %t285, i32 %t286, { i64, ptr } %t287)
  store ptr %t292, ptr %l158
  br label %bb68
bb67:
  br label %bb69
bb68:
  %t293 = load ptr, ptr %l158, !tbaa !29
  store ptr %t293, ptr %rv
  br label %ret
bb69:
  %t294 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t296 = trunc i64 4 to i32
  %t297 = icmp eq i32 %t294, %t296
  br i1 %t297, label %bb70, label %bb71
bb70:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !29
  %t303 = load i32, ptr %l3, !tbaa !23
  %t306 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t302, i32 %t303)
  store i32 %t306, ptr %l164
  br label %bb72
bb71:
  br label %bb196
bb72:
  %t307 = load i32, ptr %l164, !tbaa !23
  store i32 %t307, ptr %l11, !tbaa !23
  %t308 = load i32, ptr %l11, !tbaa !23
  %t309 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t312 = icmp ne i32 %t308, %t309
  br i1 %t312, label %bb73, label %bb74
bb73:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load i32, ptr %l3, !tbaa !23
  %t318 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t314, i32 %t315)
  store i64 %t318, ptr %l170
  br label %bb75
bb74:
  br label %bb90
bb75:
  %t319 = load i64, ptr %l170, !tbaa !24
  store i64 %t319, ptr %l12, !tbaa !24
  %t320 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t324 = icmp eq i64 %t322, 1
  br i1 %t324, label %bb76, label %bb77
bb76:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t327, ptr %l176, !tbaa !27
  %t328 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr ptr, ptr %t329, i64 0
  %t331 = load ptr, ptr %t330, !tbaa !39
  %t334 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t326, ptr %t331)
  store i1 %t334, ptr %l178
  br label %bb78
bb77:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb79
bb78:
  %t335 = load i1, ptr %l178, !tbaa !21
  store i1 %t335, ptr %l174, !tbaa !21
  br label %bb79
bb79:
  %t336 = load i1, ptr %l174, !tbaa !21
  store i1 %t336, ptr %l13, !tbaa !21
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load i1, ptr %l13, !tbaa !21
  %t341 = getelementptr %"compiler/check:Checker", ptr %t337, i32 0, i32 44
  store i1 %t338, ptr %t341, !tbaa !21
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l181, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t343, ptr %l182
  %t344 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t344, ptr %l183
  %t345 = load i32, ptr %l11, !tbaa !23
  store i32 %t345, ptr %l184, !tbaa !23
  %t346 = load i64, ptr %l12, !tbaa !24
  %t348 = trunc i64 %t346 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t350
  %t351 = getelementptr { i64, [3 x i64] }, ptr %t350, i32 0, i32 0
  store i64 0, ptr %t351
  %t353 = insertvalue { i32 } undef, i32 %t348, 0
  %t354 = getelementptr { i64, [3 x i64] }, ptr %t350, i32 0, i32 1
  store { i32 } %t353, ptr %t354
  %t355 = load { i64, [3 x i64] }, ptr %t350
  %t357 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t355, ptr %t357
  store ptr %t357, ptr %l189, !tbaa !29
  %t358 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t358, ptr %l190, !tbaa !27
  %t359 = icmp sge i64 0, 0
  br i1 %t359, label %bb80, label %bb81
bb80:
  %t361 = icmp sle i64 0, 1152921504606846975
  br i1 %t361, label %bb82, label %bb83
bb81:
  call void @__olang_check_failed(ptr @olang_loc_5759851fa91ce76c_a0f65aa07f0891f0)
  unreachable
bb82:
  %t363 = mul i64 0, 8
  %t364 = insertvalue { i64, ptr } undef, i64 0, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t366 = load ptr, ptr %l181, !tbaa !29
  %t367 = load %"compiler/source:Span", ptr %l182
  %t368 = load %"compiler/source:Span", ptr %l183
  %t369 = load i32, ptr %l184, !tbaa !23
  %t370 = load ptr, ptr %l189, !tbaa !29
  %t371 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t373 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v2, ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t366, %"compiler/source:Span" %t367, %"compiler/source:Span" %t368, i32 %t369, ptr %t370, i64 -1, ptr null, { i64, ptr } %t371, { i64, ptr } %t365)
  store ptr %t373, ptr %l194
  br label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_5759851fa91ce76c_a0f65aa07f0891f0)
  unreachable
bb84:
  %t374 = load ptr, ptr %l194, !tbaa !29
  store ptr %t374, ptr %l14, !tbaa !29
  %t375 = load i1, ptr %l13, !tbaa !21
  br i1 %t375, label %bb85, label %bb86
bb85:
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l196, !tbaa !29
  store i32 0, ptr %l197
  %t378 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t378, ptr %l198, !tbaa !27
  %t379 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !27
  %t381 = getelementptr ptr, ptr %t380, i64 0
  %t382 = load ptr, ptr %t381, !tbaa !39
  %t384 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t382)
  store %"compiler/source:Span" %t384, ptr %l200
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t385 = load i32, ptr %l3, !tbaa !23
  %t386 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t386, ptr %l202, !tbaa !27
  %t387 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t388 = load ptr, ptr %t387, !tbaa !27
  %t389 = getelementptr ptr, ptr %t388, i64 0
  %t390 = load ptr, ptr %t389, !tbaa !39
  %t392 = load ptr, ptr %l196, !tbaa !29
  %t393 = load i32, ptr %l197, !range !{i32 0, i32 3}
  %t394 = load %"compiler/source:Span", ptr %l200
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v1, ptr %t392, i32 %t393, %"compiler/source:Span" %t394, i32 %t385, ptr %t390)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t397 = load ptr, ptr %l14, !tbaa !29
  store ptr %t397, ptr %rv
  br label %ret
bb90:
  %t399 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t399, 0
  %t403 = icmp ne i64 %t401, 1
  br i1 %t403, label %bb91, label %bb92
bb91:
  %t405 = load ptr, ptr %l0, !tbaa !29
  store ptr %t405, ptr %l209, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t406, ptr %l210
  %t407 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t407, 0
  %t411 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, i64 %t409)
  store %"compiler/diagmsg:Msg" %t411, ptr %l213
  br label %bb93
bb92:
  br label %bb96
bb93:
  %t412 = load ptr, ptr %l209, !tbaa !29
  %t413 = load %"compiler/source:Span", ptr %l210
  %t414 = load %"compiler/diagmsg:Msg", ptr %l213
  %t415 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t412, %"compiler/source:Span" %t413, %"compiler/diagmsg:Msg" %t414)
  store i64 %t415, ptr %l214
  br label %bb94
bb94:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load %"compiler/source:Span", ptr %l1
  %t420 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t416, %"compiler/source:Span" %t417)
  store ptr %t420, ptr %l217
  br label %bb95
bb95:
  %t421 = load ptr, ptr %l217, !tbaa !29
  store ptr %t421, ptr %rv
  br label %ret
bb96:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = getelementptr %"compiler/check:Checker", ptr %t422, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  %t428 = load i32, ptr %l3, !tbaa !23
  %t431 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t427, i32 %t428)
  store i32 %t431, ptr %l222
  br label %bb97
bb97:
  %t432 = load i32, ptr %l222, !tbaa !23
  store i32 %t432, ptr %l15, !tbaa !23
  %t433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t433, ptr %l223, !tbaa !29
  %t434 = load ptr, ptr %l0, !tbaa !29
  store ptr %t434, ptr %l224, !tbaa !29
  %t435 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t435, ptr %l225, !tbaa !27
  %t436 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = getelementptr ptr, ptr %t437, i64 0
  %t439 = load ptr, ptr %t438, !tbaa !39
  store ptr %t439, ptr %l227, !tbaa !29
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t442, ptr %l229, !tbaa !27
  %t443 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !27
  %t445 = getelementptr ptr, ptr %t444, i64 0
  %t446 = load ptr, ptr %t445, !tbaa !39
  %t449 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t441, ptr %t446)
  store i1 %t449, ptr %l231
  br label %bb98
bb98:
  %t450 = load i1, ptr %l231, !tbaa !21
  br i1 %t450, label %bb99, label %bb100
bb99:
  %t451 = load i32, ptr %l3, !tbaa !23
  store i32 %t451, ptr %l232, !tbaa !23
  br label %bb101
bb100:
  %t453 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t453, ptr %l232, !tbaa !23
  br label %bb101
bb101:
  %t455 = load ptr, ptr %l224, !tbaa !29
  %t456 = load ptr, ptr %l227, !tbaa !29
  %t457 = load i32, ptr %l232, !tbaa !23
  %t458 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t455, ptr %t456, i32 %t457)
  store ptr %t458, ptr %l235
  br label %bb102
bb102:
  %t459 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t459, ptr %l236, !tbaa !27
  %t460 = getelementptr { i64, ptr }, ptr %l236, i32 0, i32 1
  %t461 = load ptr, ptr %t460, !tbaa !27
  %t462 = getelementptr ptr, ptr %t461, i64 0
  %t463 = load ptr, ptr %t462, !tbaa !39
  %t465 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t463)
  store %"compiler/source:Span" %t465, ptr %l238
  br label %bb103
bb103:
  %t466 = load ptr, ptr %l223, !tbaa !29
  %t467 = load ptr, ptr %l235, !tbaa !29
  %t468 = load %"compiler/source:Span", ptr %l238
  %t469 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t466, ptr %t467, %"compiler/source:Span" %t468)
  store ptr %t469, ptr %l239
  br label %bb104
bb104:
  %t470 = load ptr, ptr %l239, !tbaa !29
  store ptr %t470, ptr %l16, !tbaa !29
  %t471 = load ptr, ptr %l16, !tbaa !29
  %t474 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t471)
  store i32 %t474, ptr %l242
  br label %bb105
bb105:
  %t475 = load i32, ptr %l242, !tbaa !23
  store i32 %t475, ptr %l17, !tbaa !23
  %t476 = load i32, ptr %l17, !tbaa !23
  %t477 = load i32, ptr %l3, !tbaa !23
  %t480 = icmp eq i32 %t476, %t477
  br i1 %t480, label %bb106, label %bb107
bb106:
  store i1 true, ptr %l246, !tbaa !21
  br label %bb108
bb107:
  %t482 = load i32, ptr %l17, !tbaa !23
  %t483 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t486 = icmp eq i32 %t482, %t483
  store i1 %t486, ptr %l246, !tbaa !21
  br label %bb108
bb108:
  %t488 = load i1, ptr %l246, !tbaa !21
  br i1 %t488, label %bb109, label %bb110
bb109:
  %t489 = load ptr, ptr %l16, !tbaa !29
  store ptr %t489, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i32, ptr %l17, !tbaa !23
  %t495 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t491, i32 %t492)
  store i1 %t495, ptr %l253
  br label %bb112
bb112:
  %t496 = load i1, ptr %l253, !tbaa !21
  br i1 %t496, label %bb113, label %bb114
bb113:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t498 = load i32, ptr %l3, !tbaa !23
  %t501 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t497, i32 %t498)
  store i1 %t501, ptr %l257
  br label %bb115
bb114:
  store i1 false, ptr %l254, !tbaa !21
  br label %bb116
bb115:
  %t502 = load i1, ptr %l257, !tbaa !21
  store i1 %t502, ptr %l254, !tbaa !21
  br label %bb116
bb116:
  %t503 = load i1, ptr %l254, !tbaa !21
  br i1 %t503, label %bb117, label %bb118
bb117:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t505 = load %"compiler/source:Span", ptr %l1
  %t506 = load ptr, ptr %l16, !tbaa !29
  %t507 = load i32, ptr %l3, !tbaa !23
  %t512 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t504, %"compiler/source:Span" %t505, ptr %t506, i32 %t507)
  store ptr %t512, ptr %l262
  br label %bb119
bb118:
  br label %bb120
bb119:
  %t513 = load ptr, ptr %l262, !tbaa !29
  store ptr %t513, ptr %rv
  br label %ret
bb120:
  %t514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t514, ptr %l263, !tbaa !29
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load i32, ptr %l17, !tbaa !23
  %t519 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t515, i32 %t516)
  store i32 %t519, ptr %l266
  br label %bb121
bb121:
  %t520 = load i32, ptr %l15, !tbaa !23
  %t521 = load ptr, ptr %l263, !tbaa !29
  %t522 = load i32, ptr %l266, !tbaa !23
  %t524 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t521, i32 %t522, i32 %t520)
  store i1 %t524, ptr %l268
  br label %bb122
bb122:
  %t525 = load i1, ptr %l268, !tbaa !21
  br i1 %t525, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l269, !tbaa !21
  br label %bb127
bb124:
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l270, !tbaa !29
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t528 = load i32, ptr %l17, !tbaa !23
  %t531 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t527, i32 %t528)
  store i32 %t531, ptr %l273
  br label %bb125
bb125:
  %t532 = load i32, ptr %l15, !tbaa !23
  %t533 = load ptr, ptr %l270, !tbaa !29
  %t534 = load i32, ptr %l273, !tbaa !23
  %t536 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t533, i32 %t534, i32 %t532)
  store i1 %t536, ptr %l275
  br label %bb126
bb126:
  %t537 = load i1, ptr %l275, !tbaa !21
  store i1 %t537, ptr %l269, !tbaa !21
  br label %bb127
bb127:
  %t538 = load i1, ptr %l269, !tbaa !21
  br i1 %t538, label %bb128, label %bb129
bb128:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = getelementptr %"compiler/check:Checker", ptr %t539, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !29
  %t543 = load i32, ptr %l3, !tbaa !23
  %t546 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t542, i32 %t543)
  store i1 %t546, ptr %l279
  br label %bb130
bb129:
  br label %bb189
bb130:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/check:Checker", ptr %t547, i32 0, i32 1
  %t550 = load ptr, ptr %t549, !tbaa !29
  store ptr %t550, ptr %l281, !tbaa !29
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t552 = load i32, ptr %l17, !tbaa !23
  %t555 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t551, i32 %t552)
  store i32 %t555, ptr %l284
  br label %bb131
bb131:
  %t556 = load ptr, ptr %l281, !tbaa !29
  %t557 = load i32, ptr %l284, !tbaa !23
  %t558 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t556, i32 %t557)
  store i1 %t558, ptr %l285
  br label %bb132
bb132:
  %t559 = load i1, ptr %l279, !tbaa !21
  %t560 = load i1, ptr %l285, !tbaa !21
  %t561 = icmp ne i1 %t559, %t560
  br i1 %t561, label %bb133, label %bb134
bb133:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load i32, ptr %l17, !tbaa !23
  %t567 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t563, i32 %t564)
  store i1 %t567, ptr %l289
  br label %bb135
bb134:
  br label %bb143
bb135:
  %t568 = load i1, ptr %l289, !tbaa !21
  br i1 %t568, label %bb136, label %bb137
bb136:
  %t569 = load ptr, ptr %l0, !tbaa !29
  store ptr %t569, ptr %l291, !tbaa !29
  %t570 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t570, ptr %l292
  %t571 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t571, ptr %l293
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t573 = load i32, ptr %l17, !tbaa !23
  %t576 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t572, i32 %t573)
  store i32 %t576, ptr %l296
  br label %bb138
bb137:
  %t577 = load ptr, ptr %l16, !tbaa !29
  store ptr %t577, ptr %l290, !tbaa !29
  br label %bb140
bb138:
  %t579 = load ptr, ptr %l16, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t580
  %t581 = getelementptr { i64, [4 x i64] }, ptr %t580, i32 0, i32 0
  store i64 2, ptr %t581
  %t582 = load %"compiler/source:Span", ptr %l293
  %t583 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t582, 0
  %t584 = load i32, ptr %l296, !tbaa !23
  %t585 = insertvalue { %"compiler/source:Span", i32, ptr } %t583, i32 %t584, 1
  %t587 = insertvalue { %"compiler/source:Span", i32, ptr } %t585, ptr %t579, 2
  %t588 = getelementptr { i64, [4 x i64] }, ptr %t580, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t587, ptr %t588
  %t589 = load { i64, [4 x i64] }, ptr %t580
  %t591 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t589, ptr %t591
  %t592 = load ptr, ptr %l291, !tbaa !29
  %t593 = load %"compiler/source:Span", ptr %l292
  %t595 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t592, %"compiler/source:Span" %t593, ptr %t591)
  store ptr %t595, ptr %l300
  br label %bb139
bb139:
  %t596 = load ptr, ptr %l300, !tbaa !29
  store ptr %t596, ptr %l290, !tbaa !29
  br label %bb140
bb140:
  %t597 = load ptr, ptr %l290, !tbaa !29
  %t598 = load ptr, ptr %l0, !tbaa !29
  store ptr %t598, ptr %l302, !tbaa !29
  %t599 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t599, ptr %l303
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t604 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v2, ptr %v0, ptr %t600, ptr %t597)
  store ptr %t604, ptr %l306
  br label %bb141
bb141:
  %t605 = load i32, ptr %l3, !tbaa !23
  %t606 = load ptr, ptr %l302, !tbaa !29
  %t607 = load %"compiler/source:Span", ptr %l303
  %t608 = load ptr, ptr %l306, !tbaa !29
  %t610 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t606, %"compiler/source:Span" %t607, ptr %t608, i32 %t605)
  store ptr %t610, ptr %l308
  br label %bb142
bb142:
  %t611 = load ptr, ptr %l308, !tbaa !29
  store ptr %t611, ptr %rv
  br label %ret
bb143:
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t613 = load i32, ptr %l17, !tbaa !23
  %t616 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t612, i32 %t613)
  store i1 %t616, ptr %l311
  br label %bb144
bb144:
  %t617 = load i1, ptr %l311, !tbaa !21
  br i1 %t617, label %bb145, label %bb146
bb145:
  %t618 = load ptr, ptr %l0, !tbaa !29
  store ptr %t618, ptr %l312, !tbaa !29
  %t619 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t619, ptr %l313
  %t620 = load ptr, ptr %l16, !tbaa !29
  store ptr %t620, ptr %l314, !tbaa !29
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/check:Checker", ptr %t621, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !29
  %t626 = getelementptr %"compiler/generic:Program", ptr %t624, i32 0, i32 2
  store ptr %t626, ptr %l317, !tbaa !29
  %t627 = load i32, ptr %l3, !tbaa !23
  store i32 %t627, ptr %l318, !tbaa !23
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t630 = getelementptr %"compiler/check:Checker", ptr %t628, i32 0, i32 1
  %t631 = load ptr, ptr %t630, !tbaa !29
  %t633 = getelementptr %"compiler/generic:Program", ptr %t631, i32 0, i32 2
  %t634 = load i32, ptr %l17, !tbaa !23
  %t637 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t633, i32 %t634)
  store i64 %t637, ptr %l323
  br label %bb147
bb146:
  br label %bb150
bb147:
  %t638 = load ptr, ptr %l317, !tbaa !29
  %t639 = load i32, ptr %l318, !tbaa !23
  %t640 = load i64, ptr %l323, !tbaa !24
  %t641 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t638, i32 %t639, i64 %t640)
  store i32 %t641, ptr %l324
  br label %bb148
bb148:
  %t642 = load ptr, ptr %l312, !tbaa !29
  %t643 = load %"compiler/source:Span", ptr %l313
  %t644 = load ptr, ptr %l314, !tbaa !29
  %t645 = load i32, ptr %l324, !tbaa !23
  %t646 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t642, %"compiler/source:Span" %t643, ptr %t644, i32 %t645)
  store ptr %t646, ptr %l325
  br label %bb149
bb149:
  %t647 = load ptr, ptr %l325, !tbaa !29
  store ptr %t647, ptr %rv
  br label %ret
bb150:
  %t648 = load ptr, ptr %l16, !tbaa !29
  %t650 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t648)
  store ptr %t650, ptr %l327
  br label %bb151
bb151:
  %t651 = load ptr, ptr %l327, !tbaa !29
  store ptr %t651, ptr %l19, !tbaa !29
  %t652 = load ptr, ptr %l19, !tbaa !29
  %t654 = icmp eq ptr %t652, null
  %t656 = xor i1 %t654, true
  br i1 %t656, label %bb152, label %bb153
bb152:
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t660 = getelementptr %"compiler/check:Checker", ptr %t658, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !29
  %t663 = getelementptr %"compiler/generic:Program", ptr %t661, i32 0, i32 2
  store ptr %t663, ptr %l334, !tbaa !29
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load i32, ptr %l17, !tbaa !23
  %t668 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t664, i32 %t665)
  store i32 %t668, ptr %l337
  br label %bb154
bb153:
  store i1 false, ptr %l331, !tbaa !21
  br label %bb156
bb154:
  %t669 = load ptr, ptr %l334, !tbaa !29
  %t670 = load i32, ptr %l337, !tbaa !23
  %t671 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t669, i32 %t670)
  store i32 %t671, ptr %l338
  br label %bb155
bb155:
  %t672 = load i32, ptr %l338, !range !{i32 0, i32 33}
  %t674 = trunc i64 19 to i32
  %t675 = icmp eq i32 %t672, %t674
  store i1 %t675, ptr %l331, !tbaa !21
  br label %bb156
bb156:
  %t677 = load i1, ptr %l331, !tbaa !21
  br i1 %t677, label %bb157, label %bb158
bb157:
  %t678 = load ptr, ptr %l0, !tbaa !29
  %t680 = getelementptr %"compiler/check:Checker", ptr %t678, i32 0, i32 1
  %t681 = load ptr, ptr %t680, !tbaa !29
  %t683 = getelementptr %"compiler/generic:Program", ptr %t681, i32 0, i32 2
  store ptr %t683, ptr %l344, !tbaa !29
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load i32, ptr %l15, !tbaa !23
  %t688 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t684, i32 %t685)
  store i32 %t688, ptr %l347
  br label %bb159
bb158:
  store i1 false, ptr %l341, !tbaa !21
  br label %bb161
bb159:
  %t689 = load ptr, ptr %l344, !tbaa !29
  %t690 = load i32, ptr %l347, !tbaa !23
  %t691 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t689, i32 %t690)
  store i32 %t691, ptr %l348
  br label %bb160
bb160:
  %t692 = load i32, ptr %l348, !range !{i32 0, i32 33}
  %t694 = trunc i64 19 to i32
  %t695 = icmp eq i32 %t692, %t694
  store i1 %t695, ptr %l341, !tbaa !21
  br label %bb161
bb161:
  %t697 = load i1, ptr %l341, !tbaa !21
  br i1 %t697, label %bb162, label %bb163
bb162:
  %t698 = load ptr, ptr %l0, !tbaa !29
  store ptr %t698, ptr %l352, !tbaa !29
  %t699 = load ptr, ptr %l0, !tbaa !29
  %t701 = getelementptr %"compiler/check:Checker", ptr %t699, i32 0, i32 1
  %t702 = load ptr, ptr %t701, !tbaa !29
  %t704 = getelementptr %"compiler/generic:Program", ptr %t702, i32 0, i32 2
  store ptr %t704, ptr %l355, !tbaa !29
  %t705 = load ptr, ptr %l0, !tbaa !29
  %t706 = load i32, ptr %l17, !tbaa !23
  %t709 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t705, i32 %t706)
  store i32 %t709, ptr %l358
  br label %bb164
bb163:
  store i1 false, ptr %l351, !tbaa !21
  br label %bb169
bb164:
  %t710 = load ptr, ptr %l355, !tbaa !29
  %t711 = load i32, ptr %l358, !tbaa !23
  %t712 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t710, i32 %t711)
  store i32 %t712, ptr %l359
  br label %bb165
bb165:
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t715 = getelementptr %"compiler/check:Checker", ptr %t713, i32 0, i32 1
  %t716 = load ptr, ptr %t715, !tbaa !29
  %t718 = getelementptr %"compiler/generic:Program", ptr %t716, i32 0, i32 2
  store ptr %t718, ptr %l362, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t720 = load i32, ptr %l15, !tbaa !23
  %t723 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t719, i32 %t720)
  store i32 %t723, ptr %l365
  br label %bb166
bb166:
  %t724 = load ptr, ptr %l362, !tbaa !29
  %t725 = load i32, ptr %l365, !tbaa !23
  %t726 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t724, i32 %t725)
  store i32 %t726, ptr %l366
  br label %bb167
bb167:
  %t727 = load ptr, ptr %l352, !tbaa !29
  %t728 = load i32, ptr %l359, !tbaa !23
  %t729 = load i32, ptr %l366, !tbaa !23
  %t730 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaidAlike(ptr %v0, ptr %t727, i32 %t728, i32 %t729)
  store i1 %t730, ptr %l367
  br label %bb168
bb168:
  %t731 = load i1, ptr %l367, !tbaa !21
  store i1 %t731, ptr %l351, !tbaa !21
  br label %bb169
bb169:
  %t732 = load i1, ptr %l351, !tbaa !21
  br i1 %t732, label %bb170, label %bb171
bb170:
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t734 = load ptr, ptr %l19, !tbaa !29
  %t737 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v2, ptr %t733, ptr %t734)
  store i1 %t737, ptr %l370
  br label %bb172
bb171:
  br label %bb180
bb172:
  %t738 = load i1, ptr %l370, !tbaa !21
  br i1 %t738, label %bb173, label %bb174
bb173:
  %t739 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t739, ptr %l371, !tbaa !24
  br label %bb175
bb174:
  %t741 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t741, ptr %l371, !tbaa !24
  br label %bb175
bb175:
  %t743 = load i64, ptr %l371, !tbaa !24
  store i64 %t743, ptr %l20, !tbaa !24
  %t744 = load ptr, ptr %l0, !tbaa !29
  store ptr %t744, ptr %l374, !tbaa !29
  %t745 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t745, ptr %l375
  %t746 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t746, ptr %l376
  %t747 = load ptr, ptr %l0, !tbaa !29
  %t749 = getelementptr %"compiler/check:Checker", ptr %t747, i32 0, i32 1
  %t750 = load ptr, ptr %t749, !tbaa !29
  %t752 = getelementptr %"compiler/generic:Program", ptr %t750, i32 0, i32 2
  %t753 = load i32, ptr %l17, !tbaa !23
  %t754 = load i64, ptr %l20, !tbaa !24
  %t758 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t752, i32 %t753, i64 %t754)
  store i32 %t758, ptr %l382
  br label %bb176
bb176:
  %t759 = load ptr, ptr %l19, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t760
  %t761 = getelementptr { i64, [5 x i64] }, ptr %t760, i32 0, i32 0
  store i64 3, ptr %t761
  %t762 = load %"compiler/source:Span", ptr %l376
  %t763 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t762, 0
  %t764 = load i32, ptr %l382, !tbaa !23
  %t765 = insertvalue { %"compiler/source:Span", i32, ptr } %t763, i32 %t764, 1
  %t767 = insertvalue { %"compiler/source:Span", i32, ptr } %t765, ptr %t759, 2
  %t768 = getelementptr { i64, [5 x i64] }, ptr %t760, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t767, ptr %t768
  %t769 = load { i64, [5 x i64] }, ptr %t760
  %t771 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t769, ptr %t771
  store ptr %t771, ptr %l385, !tbaa !29
  %t772 = load ptr, ptr %l0, !tbaa !29
  %t774 = getelementptr %"compiler/check:Checker", ptr %t772, i32 0, i32 1
  %t775 = load ptr, ptr %t774, !tbaa !29
  %t777 = getelementptr %"compiler/generic:Program", ptr %t775, i32 0, i32 2
  %t778 = load i32, ptr %l3, !tbaa !23
  %t779 = load i64, ptr %l20, !tbaa !24
  %t783 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t777, i32 %t778, i64 %t779)
  store i32 %t783, ptr %l391
  br label %bb177
bb177:
  %t784 = load ptr, ptr %l374, !tbaa !29
  %t785 = load %"compiler/source:Span", ptr %l375
  %t786 = load ptr, ptr %l385, !tbaa !29
  %t787 = load i32, ptr %l391, !tbaa !23
  %t788 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t784, %"compiler/source:Span" %t785, ptr %t786, i32 %t787)
  store ptr %t788, ptr %l392
  br label %bb178
bb178:
  %t789 = load ptr, ptr %l392, !tbaa !29
  %t790 = load ptr, ptr %l0, !tbaa !29
  %t791 = load %"compiler/source:Span", ptr %l1
  %t792 = load %"compiler/source:Span", ptr %l1
  %t793 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t795
  %t796 = getelementptr { i64, [4 x i64] }, ptr %t795, i32 0, i32 0
  store i64 2, ptr %t796
  %t798 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t792, 0
  %t800 = insertvalue { %"compiler/source:Span", i32, ptr } %t798, i32 %t793, 1
  %t802 = insertvalue { %"compiler/source:Span", i32, ptr } %t800, ptr %t789, 2
  %t803 = getelementptr { i64, [4 x i64] }, ptr %t795, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t802, ptr %t803
  %t804 = load { i64, [4 x i64] }, ptr %t795
  %t806 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t804, ptr %t806
  %t810 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t790, %"compiler/source:Span" %t791, ptr %t806)
  store ptr %t810, ptr %l400
  br label %bb179
bb179:
  %t811 = load ptr, ptr %l400, !tbaa !29
  store ptr %t811, ptr %rv
  br label %ret
bb180:
  %t812 = load ptr, ptr %l0, !tbaa !29
  %t813 = load i32, ptr %l17, !tbaa !23
  %t814 = load i32, ptr %l15, !tbaa !23
  %t818 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t812, i32 %t813, i32 %t814)
  store i1 %t818, ptr %l404
  br label %bb181
bb181:
  %t819 = load i1, ptr %l404, !tbaa !21
  %t820 = xor i1 %t819, true
  br i1 %t820, label %bb182, label %bb183
bb182:
  %t822 = load ptr, ptr %l0, !tbaa !29
  %t823 = load %"compiler/source:Span", ptr %l1
  %t824 = load ptr, ptr %l16, !tbaa !29
  %t825 = load i32, ptr %l3, !tbaa !23
  %t830 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t822, %"compiler/source:Span" %t823, ptr %t824, i32 %t825)
  store ptr %t830, ptr %l410
  br label %bb184
bb183:
  br label %bb185
bb184:
  %t831 = load ptr, ptr %l410, !tbaa !29
  store ptr %t831, ptr %rv
  br label %ret
bb185:
  %t832 = load ptr, ptr %l0, !tbaa !29
  store ptr %t832, ptr %l411, !tbaa !29
  %t833 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t833, ptr %l412
  %t834 = load ptr, ptr %l0, !tbaa !29
  store ptr %t834, ptr %l413, !tbaa !29
  %t835 = load ptr, ptr %l16, !tbaa !29
  store ptr %t835, ptr %l414, !tbaa !29
  %t836 = load i32, ptr %l15, !tbaa !23
  store i32 %t836, ptr %l415, !tbaa !23
  %t837 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t837, ptr %l416, !tbaa !27
  %t838 = getelementptr { i64, ptr }, ptr %l416, i32 0, i32 1
  %t839 = load ptr, ptr %t838, !tbaa !27
  %t840 = getelementptr ptr, ptr %t839, i64 0
  %t841 = load ptr, ptr %t840, !tbaa !39
  %t843 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t841)
  store %"compiler/source:Span" %t843, ptr %l418
  br label %bb186
bb186:
  %t844 = load ptr, ptr %l413, !tbaa !29
  %t845 = load ptr, ptr %l414, !tbaa !29
  %t846 = load i32, ptr %l415, !tbaa !23
  %t847 = load %"compiler/source:Span", ptr %l418
  %t848 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t844, ptr %t845, i32 %t846, %"compiler/source:Span" %t847)
  store ptr %t848, ptr %l419
  br label %bb187
bb187:
  %t849 = load i32, ptr %l3, !tbaa !23
  %t850 = load ptr, ptr %l411, !tbaa !29
  %t851 = load %"compiler/source:Span", ptr %l412
  %t852 = load ptr, ptr %l419, !tbaa !29
  %t854 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t850, %"compiler/source:Span" %t851, ptr %t852, i32 %t849)
  store ptr %t854, ptr %l421
  br label %bb188
bb188:
  %t855 = load ptr, ptr %l421, !tbaa !29
  store ptr %t855, ptr %rv
  br label %ret
bb189:
  %t856 = load ptr, ptr %l0, !tbaa !29
  store ptr %t856, ptr %l422, !tbaa !29
  %t857 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t857, ptr %l423, !tbaa !27
  %t858 = getelementptr { i64, ptr }, ptr %l423, i32 0, i32 1
  %t859 = load ptr, ptr %t858, !tbaa !27
  %t860 = getelementptr ptr, ptr %t859, i64 0
  %t861 = load ptr, ptr %t860, !tbaa !39
  %t863 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t861)
  store %"compiler/source:Span" %t863, ptr %l425
  br label %bb190
bb190:
  %t864 = load ptr, ptr %l0, !tbaa !29
  %t865 = load i32, ptr %l15, !tbaa !23
  %t868 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t864, i32 %t865)
  store { i64, ptr } %t868, ptr %l428
  br label %bb191
bb191:
  %t869 = load { i64, ptr }, ptr %l428, !tbaa !27
  %t870 = extractvalue { i64, ptr } %t869, 0
  %t871 = extractvalue { i64, ptr } %t869, 1
  %t872 = mul i64 %t870, 1
  %t873 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t872)
  call void @llvm.memcpy.p0.p0.i64(ptr %t873, ptr %t871, i64 %t872, i1 false)
  %t874 = insertvalue { i64, ptr } undef, i64 %t870, 0
  %t875 = insertvalue { i64, ptr } %t874, ptr %t873, 1
  store { i64, ptr } %t875, ptr %l429, !tbaa !27
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t877 = load i32, ptr %l17, !tbaa !23
  %t880 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t876, i32 %t877)
  store { i64, ptr } %t880, ptr %l432
  br label %bb192
bb192:
  %t881 = load { i64, ptr }, ptr %l432, !tbaa !27
  %t882 = extractvalue { i64, ptr } %t881, 0
  %t883 = extractvalue { i64, ptr } %t881, 1
  %t884 = mul i64 %t882, 1
  %t885 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t884)
  call void @llvm.memcpy.p0.p0.i64(ptr %t885, ptr %t883, i64 %t884, i1 false)
  %t886 = insertvalue { i64, ptr } undef, i64 %t882, 0
  %t887 = insertvalue { i64, ptr } %t886, ptr %t885, 1
  %t888 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t890 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t888, { i64, ptr } %t887)
  store %"compiler/diagmsg:Msg" %t890, ptr %l434
  br label %bb193
bb193:
  %t891 = load ptr, ptr %l422, !tbaa !29
  %t892 = load %"compiler/source:Span", ptr %l425
  %t893 = load %"compiler/diagmsg:Msg", ptr %l434
  %t894 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t891, %"compiler/source:Span" %t892, %"compiler/diagmsg:Msg" %t893)
  store i64 %t894, ptr %l435
  br label %bb194
bb194:
  %t895 = load ptr, ptr %l0, !tbaa !29
  %t896 = load %"compiler/source:Span", ptr %l1
  %t899 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t895, %"compiler/source:Span" %t896)
  store ptr %t899, ptr %l438
  br label %bb195
bb195:
  %t900 = load ptr, ptr %l438, !tbaa !29
  store ptr %t900, ptr %rv
  br label %ret
bb196:
  %t901 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t903 = trunc i64 1 to i32
  %t904 = icmp eq i32 %t901, %t903
  br i1 %t904, label %bb197, label %bb198
bb197:
  %t906 = load ptr, ptr %l0, !tbaa !29
  store ptr %t906, ptr %l441, !tbaa !29
  %t907 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t907, ptr %l442
  %t908 = load ptr, ptr %l0, !tbaa !29
  %t909 = load %"compiler/source:Span", ptr %l2
  %t912 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t908, %"compiler/source:Span" %t909)
  store { i64, ptr } %t912, ptr %l445
  br label %bb199
bb198:
  br label %bb205
bb199:
  %t913 = load { i64, ptr }, ptr %l445, !tbaa !27
  %t914 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t913)
  store { i64, ptr } %t914, ptr %l446
  br label %bb200
bb200:
  %t915 = load { i64, ptr }, ptr %l446, !tbaa !27
  %t916 = extractvalue { i64, ptr } %t915, 0
  %t917 = extractvalue { i64, ptr } %t915, 1
  %t918 = mul i64 %t916, 1
  %t919 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t918)
  call void @llvm.memcpy.p0.p0.i64(ptr %t919, ptr %t917, i64 %t918, i1 false)
  %t920 = insertvalue { i64, ptr } undef, i64 %t916, 0
  %t921 = insertvalue { i64, ptr } %t920, ptr %t919, 1
  %t923 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHasNoConstructor(ptr %v0, ptr %v0, { i64, ptr } %t921)
  store %"compiler/diagmsg:Msg" %t923, ptr %l448
  br label %bb201
bb201:
  %t924 = load ptr, ptr %l441, !tbaa !29
  %t925 = load %"compiler/source:Span", ptr %l442
  %t926 = load %"compiler/diagmsg:Msg", ptr %l448
  %t927 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t924, %"compiler/source:Span" %t925, %"compiler/diagmsg:Msg" %t926)
  store i64 %t927, ptr %l449
  br label %bb202
bb202:
  %t928 = load ptr, ptr %l0, !tbaa !29
  %t929 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t928, { i64, ptr } %t929)
  br label %bb203
bb203:
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t933 = load %"compiler/source:Span", ptr %l1
  %t936 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t932, %"compiler/source:Span" %t933)
  store ptr %t936, ptr %l454
  br label %bb204
bb204:
  %t937 = load ptr, ptr %l454, !tbaa !29
  store ptr %t937, ptr %rv
  br label %ret
bb205:
  %t938 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t940 = trunc i64 2 to i32
  %t941 = icmp eq i32 %t938, %t940
  br i1 %t941, label %bb206, label %bb207
bb206:
  %t943 = load ptr, ptr %l0, !tbaa !29
  %t945 = getelementptr %"compiler/check:Checker", ptr %t943, i32 0, i32 1
  %t946 = load ptr, ptr %t945, !tbaa !29
  store ptr %t946, ptr %l459, !tbaa !29
  %t947 = load ptr, ptr %l0, !tbaa !29
  %t949 = getelementptr %"compiler/check:Checker", ptr %t947, i32 0, i32 1
  %t950 = load ptr, ptr %t949, !tbaa !29
  %t952 = getelementptr %"compiler/generic:Program", ptr %t950, i32 0, i32 2
  %t953 = load i32, ptr %l3, !tbaa !23
  %t956 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t952, i32 %t953)
  store i32 %t956, ptr %l464
  br label %bb208
bb207:
  store i1 false, ptr %l457, !tbaa !21
  br label %bb210
bb208:
  %t957 = load ptr, ptr %l459, !tbaa !29
  %t958 = load i32, ptr %l464, !tbaa !23
  %t959 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t957, i32 %t958)
  store i1 %t959, ptr %l465
  br label %bb209
bb209:
  %t960 = load i1, ptr %l465, !tbaa !21
  store i1 %t960, ptr %l457, !tbaa !21
  br label %bb210
bb210:
  %t961 = load i1, ptr %l457, !tbaa !21
  br i1 %t961, label %bb211, label %bb212
bb211:
  %t962 = load ptr, ptr %l0, !tbaa !29
  %t964 = getelementptr %"compiler/check:Checker", ptr %t962, i32 0, i32 1
  %t965 = load ptr, ptr %t964, !tbaa !29
  %t966 = load i32, ptr %l3, !tbaa !23
  %t969 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t965, i32 %t966)
  store i32 %t969, ptr %l469
  br label %bb213
bb212:
  br label %bb225
bb213:
  %t970 = load i32, ptr %l469, !tbaa !23
  store i32 %t970, ptr %l22, !tbaa !23
  %t971 = load i32, ptr %l22, !tbaa !23
  %t972 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t975 = icmp ne i32 %t971, %t972
  br i1 %t975, label %bb214, label %bb215
bb214:
  %t977 = load ptr, ptr %l0, !tbaa !29
  %t978 = load i32, ptr %l3, !tbaa !23
  %t979 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleRaised(ptr %v0, ptr %t977, i32 %t978, i32 %t979)
  br label %bb216
bb215:
  br label %bb217
bb216:
  br label %bb217
bb217:
  %t983 = load ptr, ptr %l0, !tbaa !29
  store ptr %t983, ptr %l476, !tbaa !29
  %t984 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t984, ptr %l477
  %t985 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t985, ptr %l478
  %t986 = load i32, ptr %l3, !tbaa !23
  store i32 %t986, ptr %l479, !tbaa !23
  %t987 = load ptr, ptr %l0, !tbaa !29
  %t989 = getelementptr %"compiler/check:Checker", ptr %t987, i32 0, i32 1
  %t990 = load ptr, ptr %t989, !tbaa !29
  %t992 = getelementptr %"compiler/generic:Program", ptr %t990, i32 0, i32 2
  store ptr %t992, ptr %l482, !tbaa !29
  %t993 = load ptr, ptr %l0, !tbaa !29
  %t995 = getelementptr %"compiler/check:Checker", ptr %t993, i32 0, i32 1
  %t996 = load ptr, ptr %t995, !tbaa !29
  %t998 = getelementptr %"compiler/generic:Program", ptr %t996, i32 0, i32 2
  %t999 = load i32, ptr %l3, !tbaa !23
  %t1002 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t998, i32 %t999)
  store i32 %t1002, ptr %l487
  br label %bb218
bb218:
  %t1003 = load ptr, ptr %l482, !tbaa !29
  %t1004 = load i32, ptr %l487, !tbaa !23
  %t1005 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t1003, i32 %t1004)
  store i32 %t1005, ptr %l488
  br label %bb219
bb219:
  %t1006 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t1006, ptr %l489, !tbaa !27
  %t1007 = icmp sge i64 0, 0
  br i1 %t1007, label %bb220, label %bb221
bb220:
  %t1009 = icmp sle i64 0, 1152921504606846975
  br i1 %t1009, label %bb222, label %bb223
bb221:
  call void @__olang_check_failed(ptr @olang_loc_66d3d1d20fd502cf_cd668d3b10c2a493)
  unreachable
bb222:
  %t1011 = mul i64 0, 8
  %t1012 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1013 = insertvalue { i64, ptr } %t1012, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1014 = load ptr, ptr %l476, !tbaa !29
  %t1015 = load %"compiler/source:Span", ptr %l477
  %t1016 = load %"compiler/source:Span", ptr %l478
  %t1017 = load i32, ptr %l479, !tbaa !23
  %t1018 = load i32, ptr %l488, !tbaa !23
  %t1019 = load { i64, ptr }, ptr %l489, !tbaa !27
  %t1021 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t1014, %"compiler/source:Span" %t1015, %"compiler/source:Span" %t1016, i32 %t1017, i32 %t1018, { i64, ptr } %t1019, { i64, ptr } %t1013)
  store ptr %t1021, ptr %l493
  br label %bb224
bb223:
  call void @__olang_check_failed(ptr @olang_loc_66d3d1d20fd502cf_cd668d3b10c2a493)
  unreachable
bb224:
  %t1022 = load ptr, ptr %l493, !tbaa !29
  store ptr %t1022, ptr %rv
  br label %ret
bb225:
  %t1023 = load ptr, ptr %l0, !tbaa !29
  %t1024 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t1023, %"compiler/source:Span" %t1024, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb226
bb226:
  %t1027 = load ptr, ptr %l0, !tbaa !29
  %t1028 = load %"compiler/source:Span", ptr %l1
  %t1031 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t1027, %"compiler/source:Span" %t1028)
  store ptr %t1031, ptr %l498
  br label %bb227
bb227:
  %t1032 = load ptr, ptr %l498, !tbaa !29
  store ptr %t1032, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, i64, i64 }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i32
  %l18 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l27 = alloca i1
  %l30 = alloca ptr
  %l34 = alloca %"compiler/typed:Local"
  %l37 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l65 = alloca i32
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca i32
  %l70 = alloca i64
  %l71 = alloca ptr
  %l75 = alloca ptr
  %l81 = alloca ptr
  %l83 = alloca ptr
  %l87 = alloca ptr
  %l89 = alloca ptr
  %l91 = alloca ptr
  %l95 = alloca ptr
  %l97 = alloca ptr
  %l99 = alloca ptr
  %l104 = alloca i64
  %l108 = alloca { i64, i64, i64 }
  %l112 = alloca ptr
  %l123 = alloca ptr
  %l129 = alloca ptr
  %s0 = alloca %olang.scope
  %t114 = alloca { i64, [3 x i64] }, align 8
  %t212 = alloca { i64, [4 x i64] }, align 8
  %t247 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i32, ptr %l14, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l4, !tbaa !23
  %t17 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l21, !tbaa !21
  store i1 %t18, ptr %l18, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l18, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l27
  br label %bb8
bb8:
  %t30 = load i1, ptr %l27, !tbaa !21
  %t31 = xor i1 %t30, true
  store i1 %t31, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t34)
  store ptr %t36, ptr %l30
  br label %bb13
bb13:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = trunc i64 %t37 to i32
  %t41 = load ptr, ptr %l30, !tbaa !29
  %t43 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t41, i32 %t39)
  store %"compiler/typed:Local" %t43, ptr %l34
  br label %bb14
bb14:
  %t44 = getelementptr %"compiler/typed:Local", ptr %l34, i32 0, i32 4
  %t45 = load i32, ptr %t44, !range !{i32 0, i32 7}
  %t47 = trunc i64 6 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t50)
  store ptr %t52, ptr %l39
  br label %bb17
bb16:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb18
bb17:
  %t53 = load ptr, ptr %l39, !tbaa !29
  %t55 = getelementptr %"compiler/check:frame", ptr %t53, i32 0, i32 13
  %t56 = load i1, ptr %t55, !tbaa !21
  store i1 %t56, ptr %l37, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l37, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  store ptr %t64, ptr %l45, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  store ptr %t70, ptr %l48, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t71)
  store ptr %t73, ptr %l50
  br label %bb21
bb20:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb24
bb21:
  %t74 = load ptr, ptr %l50, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load ptr, ptr %l48, !tbaa !29
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t78, i32 %t77)
  store i32 %t80, ptr %l53
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l45, !tbaa !29
  %t82 = load i32, ptr %l53, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l54
  br label %bb23
bb23:
  %t84 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t87 = icmp eq i64 %t85, 0
  store i1 %t87, ptr %l42, !tbaa !21
  br label %bb24
bb24:
  %t89 = load i1, ptr %l42, !tbaa !21
  br i1 %t89, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  br label %bb27
bb27:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load %"compiler/source:Span", ptr %l2
  %t92 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t96 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t90, %"compiler/source:Span" %t91, i32 %t92)
  store i64 %t96, ptr %l60
  br label %bb28
bb28:
  %t97 = load i64, ptr %l60, !tbaa !24
  store i64 %t97, ptr %l5, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l61, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t99, ptr %l62
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = trunc i64 %t100 to i32
  store i32 %t102, ptr %l65, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l66, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t105, ptr %l67
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t106, ptr %l68, !tbaa !23
  br i1 %a3, label %bb29, label %bb30
bb29:
  store i64 1, ptr %l70, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb31
bb31:
  %t109 = load ptr, ptr %l66, !tbaa !29
  %t110 = load %"compiler/source:Span", ptr %l67
  %t111 = load i32, ptr %l68, !tbaa !23
  %t112 = load i64, ptr %l70, !tbaa !24
  %t113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t109, %"compiler/source:Span" %t110, i32 %t111, i64 %t112)
  store ptr %t113, ptr %l71
  br label %bb32
bb32:
  store { i64, [3 x i64] } zeroinitializer, ptr %t114
  %t115 = getelementptr { i64, [3 x i64] }, ptr %t114, i32 0, i32 0
  store i64 0, ptr %t115
  %t116 = load %"compiler/source:Span", ptr %l62
  %t117 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t116, 0
  %t118 = load i32, ptr %l65, !tbaa !23
  %t119 = insertvalue { %"compiler/source:Span", i32, ptr } %t117, i32 %t118, 1
  %t120 = load ptr, ptr %l71, !tbaa !29
  %t121 = insertvalue { %"compiler/source:Span", i32, ptr } %t119, ptr %t120, 2
  %t122 = getelementptr { i64, [3 x i64] }, ptr %t114, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t121, ptr %t122
  %t123 = load { i64, [3 x i64] }, ptr %t114
  %t125 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t123, ptr %t125
  %t126 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t126, ptr %t125)
  br label %bb33
bb33:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t128)
  store ptr %t130, ptr %l75
  br label %bb34
bb34:
  %t131 = load ptr, ptr %l75, !tbaa !29
  %t133 = getelementptr %"compiler/check:frame", ptr %t131, i32 0, i32 23
  %t134 = load i64, ptr %l1, !tbaa !24
  %t135 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t133, i64 %t134, i64 %t135)
  br label %bb35
bb35:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 67
  store ptr %t141, ptr %l81, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t142)
  store ptr %t144, ptr %l83
  br label %bb36
bb36:
  %t145 = load ptr, ptr %l83, !tbaa !29
  %t147 = getelementptr %"compiler/check:frame", ptr %t145, i32 0, i32 0
  %t148 = load i64, ptr %t147, !tbaa !24
  %t149 = load ptr, ptr %l81, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t149, i64 %t148, i1 true)
  br label %bb37
bb37:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t151)
  store ptr %t153, ptr %l87
  br label %bb38
bb38:
  %t154 = load ptr, ptr %l87, !tbaa !29
  %t156 = getelementptr %"compiler/check:frame", ptr %t154, i32 0, i32 22
  store ptr %t156, ptr %l89, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t157)
  store ptr %t159, ptr %l91
  br label %bb39
bb39:
  %t160 = load ptr, ptr %l91, !tbaa !29
  %t162 = getelementptr %"compiler/check:frame", ptr %t160, i32 0, i32 7
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = load ptr, ptr %l89, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t164, i64 %t163)
  br label %bb40
bb40:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t166)
  store ptr %t168, ptr %l95
  br label %bb41
bb41:
  %t169 = load ptr, ptr %l95, !tbaa !29
  %t171 = getelementptr %"compiler/check:frame", ptr %t169, i32 0, i32 24
  store ptr %t171, ptr %l97, !tbaa !29
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t172)
  store ptr %t174, ptr %l99
  br label %bb42
bb42:
  %t175 = load ptr, ptr %l99, !tbaa !29
  %t177 = getelementptr %"compiler/check:frame", ptr %t175, i32 0, i32 7
  %t178 = load i64, ptr %t177, !tbaa !24
  %t179 = load ptr, ptr %l97, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t179, i64 %t178)
  br label %bb43
bb43:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t181, i32 0, i32 37
  %t185 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t183)
  store i64 %t185, ptr %l104
  br label %bb44
bb44:
  %t186 = load i64, ptr %l104, !tbaa !24
  store i64 %t186, ptr %l6, !tbaa !24
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l2
  %t192 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t187, i32 8, %"compiler/source:Span" %t188)
  store { i64, i64, i64 } %t192, ptr %l108
  br label %bb45
bb45:
  %t193 = load { i64, i64, i64 }, ptr %l108
  store { i64, i64, i64 } %t193, ptr %l7
  %t194 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 0
  %t195 = load i64, ptr %t194, !tbaa !24
  store i64 %t195, ptr %l8, !tbaa !24
  %t197 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 1
  %t198 = load i64, ptr %t197, !tbaa !24
  store i64 %t198, ptr %l9, !tbaa !24
  %t200 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 2
  %t201 = load i64, ptr %t200, !tbaa !24
  store i64 %t201, ptr %l10, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l112, !tbaa !29
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l2
  %t206 = load %"compiler/source:Span", ptr %l2
  %t207 = load i32, ptr %l4, !tbaa !23
  %t208 = load i64, ptr %l1, !tbaa !24
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
  %t224 = load i64, ptr %l5, !tbaa !24
  %t229 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v0, ptr %v0, ptr %t204, %"compiler/source:Span" %t205, ptr %t223, i64 %t224)
  store ptr %t229, ptr %l123
  br label %bb46
bb46:
  %t230 = load ptr, ptr %l112, !tbaa !29
  %t231 = load ptr, ptr %l123, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t230, ptr %t231)
  br label %bb47
bb47:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i64, ptr %l8, !tbaa !24
  %t234 = load i64, ptr %l9, !tbaa !24
  %t235 = load i64, ptr %l10, !tbaa !24
  %t236 = load i64, ptr %l6, !tbaa !24
  %t242 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t232, i64 %t233, i64 %t234, i64 %t235, i64 %t236)
  store ptr %t242, ptr %l129
  br label %bb48
bb48:
  %t243 = load ptr, ptr %l129, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l2
  store { i64, [3 x i64] } zeroinitializer, ptr %t247
  %t248 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 0
  store i64 12, ptr %t248
  %t250 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t245, 0
  %t252 = insertvalue { %"compiler/source:Span", ptr } %t250, ptr %t243, 1
  %t253 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t252, ptr %t253
  %t254 = load { i64, [3 x i64] }, ptr %t247
  %t256 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t254, ptr %t256
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t244, ptr %t256)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
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
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 36
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
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 36
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
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 36
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
  %t117 = load i32, ptr %t116, !range !{i32 0, i32 3}
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsCover(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l24 = alloca i32
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
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a2)
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
  br label %bb11
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
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t38 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %t32, i32 %a1, i32 %t30)
  store i32 %t38, ptr %l24
  br label %bb6
bb6:
  %t39 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t40 = load i32, ptr %l24, !tbaa !23
  %t42 = icmp ne i32 %t40, %t39
  br i1 %t42, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l4, !tbaa !24
  br label %bb2
bb11:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportParam(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l10 = alloca i1
  %l17 = alloca i32
  %l20 = alloca i1
  %l24 = alloca i32
  %l29 = alloca i32
  %l32 = alloca i1
  %l33 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t8, i32 %t9)
  store i1 %t12, ptr %l10
  br label %bb5
bb5:
  %t13 = load i1, ptr %l10, !tbaa !21
  %t14 = xor i1 %t13, true
  br i1 %t14, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l17
  br label %bb9
bb9:
  %t27 = load i32, ptr %l17, !tbaa !23
  store i32 %t27, ptr %l2, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t28, i32 %t29, i64 0)
  store i1 %t32, ptr %l20
  br label %bb10
bb10:
  %t33 = load i1, ptr %l20, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l24
  br label %bb14
bb14:
  %t40 = load i32, ptr %l24, !tbaa !23
  store i32 %t40, ptr %l3, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l29
  br label %bb15
bb15:
  %t51 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t53 = trunc i64 19 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb16, label %bb17
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l33, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l3, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l38
  br label %bb18
bb17:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb20
bb18:
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = load i32, ptr %l38, !tbaa !23
  %t69 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t67, i32 %t68)
  store i1 %t69, ptr %l39
  br label %bb19
bb19:
  %t70 = load i1, ptr %l39, !tbaa !21
  store i1 %t70, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l32, !tbaa !21
  store i1 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l15 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i1
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l46 = alloca { i64, ptr }
  %l48 = alloca i64
  %l52 = alloca i64
  %l62 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca i64
  %l78 = alloca i32
  %l79 = alloca i64
  %l82 = alloca i32
  %l85 = alloca i1
  %l89 = alloca %"compiler/generic:Desc"
  %l96 = alloca ptr
  %l99 = alloca ptr
  %l103 = alloca %"compiler/generic:Desc"
  %l105 = alloca i32
  %l106 = alloca { i64, ptr }
  %l110 = alloca i1
  %l114 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l122 = alloca i32
  %l125 = alloca i1
  %l127 = alloca i1
  %l130 = alloca ptr
  %l135 = alloca i32
  %l136 = alloca { i64, ptr }
  %l137 = alloca i64
  %l141 = alloca i64
  %l145 = alloca ptr
  %l146 = alloca i64
  %l151 = alloca i32
  %l152 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t1)
  store i64 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i64, ptr %l15, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load i64, ptr %l3, !tbaa !24
  %t12 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t8, i64 %t9)
  store i64 %t12, ptr %l19
  br label %bb2
bb2:
  %t13 = load i64, ptr %l19, !tbaa !24
  %t14 = icmp eq i64 %t13, 0
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t19, i64 %t20, i32 0)
  store i64 %t23, ptr %l24
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load i64, ptr %l24, !tbaa !24
  store i64 %t24, ptr %rv
  br label %ret
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l28
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l28, !tbaa !29
  %t34 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t33)
  store i1 %t34, ptr %l29
  br label %bb8
bb8:
  %t35 = load i1, ptr %l29, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t38 = load i64, ptr %l2, !tbaa !24
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderFactInst(ptr %v0, ptr %v1, ptr %t36, ptr %t37, i64 %t38)
  store i64 %t42, ptr %l33
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load i64, ptr %l33, !tbaa !24
  store i64 %t43, ptr %rv
  br label %ret
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t45 = load ptr, ptr %l34, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l34, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 30}
  %t51 = icmp eq i64 %t49, 13
  store i1 %t51, ptr %l35, !tbaa !21
  br label %bb14
bb14:
  %t52 = load i1, ptr %l35, !tbaa !21
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  store %"compiler/source:Span" %t57, ptr %l4
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t61, i32 0, i32 2
  %t63 = load { i64, ptr }, ptr %t62
  store { i64, ptr } %t63, ptr %l5, !tbaa !27
  br label %bb17
bb16:
  br label %bb34
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l2, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t68 = load %"compiler/source:Span", ptr %l4
  %t73 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %s3, ptr %t65, i64 %t66, { i64, ptr } %t67, %"compiler/source:Span" %t68)
  store { i64, ptr } %t73, ptr %l46
  br label %bb18
bb18:
  %t74 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t74, ptr %l6, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l48, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t82 = load i64, ptr %l3, !tbaa !24
  %t85 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t81, i64 %t82)
  store i64 %t85, ptr %l52
  br label %bb19
bb19:
  %t86 = load i64, ptr %l48, !tbaa !24
  %t87 = load i64, ptr %l52, !tbaa !24
  %t88 = icmp ne i64 %t86, %t87
  br i1 %t88, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t91, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  store i64 %t95, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t98 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb24, label %bb25
bb24:
  br label %bb31
bb25:
  br label %bb26
bb26:
  %t105 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t105, ptr %l62, !tbaa !27
  %t106 = load i64, ptr %l8, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i32, ptr %t109, i64 %t106
  %t111 = load i32, ptr %t110, !tbaa !33
  %t114 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t117 = icmp eq i32 %t111, %t114
  br i1 %t117, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t120 = load i64, ptr %l8, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l8, !tbaa !24
  br label %bb23
bb31:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  store ptr %t127, ptr %l72, !tbaa !29
  %t128 = load i64, ptr %l2, !tbaa !24
  store i64 %t128, ptr %l73, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s3, ptr %t134, { i64, ptr } %t135)
  store i32 %t138, ptr %l78
  br label %bb32
bb32:
  %t139 = load ptr, ptr %l72, !tbaa !29
  %t140 = load i64, ptr %l73, !tbaa !24
  %t141 = load i32, ptr %l78, !tbaa !23
  %t142 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t139, i64 %t140, i32 %t141)
  store i64 %t142, ptr %l79
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t143 = load i64, ptr %l79, !tbaa !24
  store i64 %t143, ptr %rv
  br label %ret
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_c361d907896d08d5_2eb86c98dc279551)
  unreachable
bb39:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t148 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t144, ptr %t145)
  store i32 %t148, ptr %l82
  br label %bb40
bb40:
  %t149 = load i32, ptr %l82, !tbaa !23
  store i32 %t149, ptr %l11, !tbaa !23
  %t150 = load i32, ptr %l11, !tbaa !23
  %t152 = icmp slt i32 %t150, 0
  br i1 %t152, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb44
bb42:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t158 = load i32, ptr %l11, !tbaa !23
  %t161 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t157, i32 %t158)
  store %"compiler/generic:Desc" %t161, ptr %l89
  br label %bb43
bb43:
  %t162 = getelementptr %"compiler/generic:Desc", ptr %l89, i32 0, i32 0
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t167 = icmp ne i64 %t163, %t164
  store i1 %t167, ptr %l85, !tbaa !21
  br label %bb44
bb44:
  %t169 = load i1, ptr %l85, !tbaa !21
  br i1 %t169, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  store ptr %t176, ptr %l96, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 2
  store ptr %t182, ptr %l99, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t187 = load i32, ptr %l11, !tbaa !23
  %t190 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t186, i32 %t187)
  store %"compiler/generic:Desc" %t190, ptr %l103
  br label %bb48
bb48:
  %t191 = getelementptr %"compiler/generic:Desc", ptr %l103, i32 0, i32 1
  %t192 = load i32, ptr %t191, !tbaa !23
  %t193 = load ptr, ptr %l99, !tbaa !29
  %t195 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t193, i32 %t192)
  store i32 %t195, ptr %l105
  br label %bb49
bb49:
  %t196 = load ptr, ptr %l96, !tbaa !29
  %t197 = load i32, ptr %l105, !tbaa !23
  %t198 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t196, i32 %t197)
  store { i64, ptr } %t198, ptr %l106
  br label %bb50
bb50:
  %t199 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t199, ptr %l12, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t204 = icmp eq i64 %t202, 0
  br i1 %t204, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb54
bb52:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/check:Checker", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t210 = load i64, ptr %l2, !tbaa !24
  %t213 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t209, i64 %t210)
  store ptr %t213, ptr %l114
  br label %bb53
bb53:
  %t214 = load ptr, ptr %l114, !tbaa !29
  %t216 = getelementptr %"compiler/ast:Func", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = icmp eq ptr %t217, null
  store i1 %t219, ptr %l110, !tbaa !21
  br label %bb54
bb54:
  %t221 = load i1, ptr %l110, !tbaa !21
  br i1 %t221, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t224, ptr %l120, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr i32, ptr %t226, i64 0
  %t228 = load i32, ptr %t227, !tbaa !33
  %t231 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t223, i32 %t228)
  store i32 %t231, ptr %l122
  br label %bb58
bb58:
  %t232 = load i32, ptr %l122, !tbaa !23
  store i32 %t232, ptr %l13, !tbaa !23
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i32, ptr %l13, !tbaa !23
  %t237 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t233, i32 %t234)
  store i1 %t237, ptr %l125
  br label %bb59
bb59:
  %t238 = load i1, ptr %l125, !tbaa !21
  %t239 = xor i1 %t238, true
  br i1 %t239, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb65
bb61:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/check:Checker", ptr %t241, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = getelementptr %"compiler/generic:Program", ptr %t244, i32 0, i32 2
  store ptr %t246, ptr %l130, !tbaa !29
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = getelementptr %"compiler/generic:Program", ptr %t250, i32 0, i32 2
  %t253 = load i32, ptr %l13, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t252, i32 %t253)
  store i32 %t256, ptr %l135
  br label %bb62
bb62:
  %t257 = load ptr, ptr %l130, !tbaa !29
  %t258 = load i32, ptr %l135, !tbaa !23
  %t259 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t257, i32 %t258)
  store { i64, ptr } %t259, ptr %l136
  br label %bb63
bb63:
  %t260 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 0
  store i64 %t261, ptr %l137, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/check:Checker", ptr %t262, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t266 = load i64, ptr %l3, !tbaa !24
  %t269 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t265, i64 %t266)
  store i64 %t269, ptr %l141
  br label %bb64
bb64:
  %t270 = load i64, ptr %l137, !tbaa !24
  %t271 = load i64, ptr %l141, !tbaa !24
  %t272 = icmp ne i64 %t270, %t271
  store i1 %t272, ptr %l127, !tbaa !21
  br label %bb65
bb65:
  %t274 = load i1, ptr %l127, !tbaa !21
  br i1 %t274, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/check:Checker", ptr %t276, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !29
  store ptr %t279, ptr %l145, !tbaa !29
  %t280 = load i64, ptr %l2, !tbaa !24
  store i64 %t280, ptr %l146, !tbaa !24
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/check:Checker", ptr %t281, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t286 = getelementptr %"compiler/generic:Program", ptr %t284, i32 0, i32 2
  %t287 = load i32, ptr %l13, !tbaa !23
  %t290 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t286, i32 %t287)
  store i32 %t290, ptr %l151
  br label %bb69
bb69:
  %t291 = load ptr, ptr %l145, !tbaa !29
  %t292 = load i64, ptr %l146, !tbaa !24
  %t293 = load i32, ptr %l151, !tbaa !23
  %t294 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t291, i64 %t292, i32 %t293)
  store i64 %t294, ptr %l152
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  %t295 = load i64, ptr %l152, !tbaa !24
  store i64 %t295, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldBits(ptr %v0, ptr %a0, %"compiler/generic:Desc" %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:Desc"
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l15 = alloca i32
  %l18 = alloca i1
  %l19 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l58 = alloca i1
  %l60 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca i64
  %l72 = alloca { i64, ptr }
  %l76 = alloca i64
  %l80 = alloca { i64, ptr }
  %l83 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/generic:Desc" %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/generic:Desc", ptr %l1
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldOffset(ptr %v0, ptr %t1, %"compiler/generic:Desc" %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t17 = load i32, ptr %t16, !tbaa !23
  %t20 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t15, i32 %t17)
  store i32 %t20, ptr %l15
  br label %bb5
bb5:
  %t21 = load i32, ptr %l15, !tbaa !23
  store i32 %t21, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l4, !tbaa !23
  %t26 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l18
  br label %bb6
bb6:
  %t27 = load i1, ptr %l18, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l22, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l4, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l27
  br label %bb9
bb8:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l31, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  store ptr %t55, ptr %l34, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l37, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l42
  br label %bb11
bb9:
  %t72 = load ptr, ptr %l22, !tbaa !29
  %t73 = load i32, ptr %l27, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t72, i32 %t73)
  store { i64, ptr } %t74, ptr %l28
  br label %bb10
bb10:
  %t75 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t75, ptr %l19, !tbaa !27
  br label %bb15
bb11:
  %t76 = load ptr, ptr %l37, !tbaa !29
  %t77 = load i32, ptr %l42, !tbaa !23
  %t78 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t76, i32 %t77)
  store { i64, ptr } %t78, ptr %l43
  br label %bb12
bb12:
  %t79 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t79, ptr %l44, !tbaa !27
  %t80 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t81 = load i64, ptr %t80, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i32, ptr %t84, i64 %t81
  %t86 = load i32, ptr %t85, !tbaa !33
  %t87 = load ptr, ptr %l34, !tbaa !29
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t87, i32 %t86)
  store i32 %t89, ptr %l47
  br label %bb13
bb13:
  %t90 = load ptr, ptr %l31, !tbaa !29
  %t91 = load i32, ptr %l47, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t90, i32 %t91)
  store { i64, ptr } %t92, ptr %l48
  br label %bb14
bb14:
  %t93 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t93, ptr %l19, !tbaa !27
  br label %bb15
bb15:
  %t94 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t94, ptr %l5, !tbaa !27
  %t95 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t96 = load i64, ptr %t95, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp sge i64 %t96, %t99
  br i1 %t102, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  %t111 = load i32, ptr %l4, !tbaa !23
  %t114 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t110, i32 %t111)
  store i1 %t114, ptr %l58
  br label %bb19
bb19:
  %t115 = load i1, ptr %l58, !tbaa !21
  br i1 %t115, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t116 = load i1, ptr %l2, !tbaa !21
  br i1 %t116, label %bb22, label %bb23
bb21:
  br label %bb27
bb22:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t124, ptr %l64, !tbaa !27
  %t125 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i32, ptr %t129, i64 %t126
  %t131 = load i32, ptr %t130, !tbaa !33
  %t134 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t123, i32 %t131)
  store i64 %t134, ptr %l67
  br label %bb24
bb23:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l4, !tbaa !23
  %t144 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %s3, ptr %t140, i32 %t141)
  store { i64, ptr } %t144, ptr %l72
  br label %bb25
bb24:
  %t145 = load i64, ptr %l67, !tbaa !24
  store i64 %t145, ptr %l60, !tbaa !24
  br label %bb26
bb25:
  %t146 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t147 = load i64, ptr %t146, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i64, ptr %t150, i64 %t147
  %t152 = load i64, ptr %t151, !tbaa !34
  store i64 %t152, ptr %l60, !tbaa !24
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t154 = load i64, ptr %l60, !tbaa !24
  store i64 %t154, ptr %rv
  br label %ret
bb27:
  %t155 = load i1, ptr %l2, !tbaa !21
  br i1 %t155, label %bb28, label %bb29
bb28:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 2
  %t163 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t163, ptr %l80, !tbaa !27
  %t164 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t165 = load i64, ptr %t164, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t173 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t162, i32 %t170)
  store i64 %t173, ptr %l83
  br label %bb30
bb29:
  %t174 = load i64, ptr %l3, !tbaa !24
  %t176 = mul i64 8, %t174
  store i64 %t176, ptr %l76, !tbaa !24
  br label %bb31
bb30:
  %t178 = load i64, ptr %l83, !tbaa !24
  %t179 = mul i64 8, %t178
  store i64 %t179, ptr %l76, !tbaa !24
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t181 = load i64, ptr %l76, !tbaa !24
  store i64 %t181, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l22 = alloca { i64, ptr }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t16 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t16, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l7, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t30, ptr %l22, !tbaa !27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %t36, { i64, ptr } %a3, i64 -1, i64 -1, i1 false)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l6, !tbaa !24
  br label %bb6
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
  call void @__olang_check_failed(ptr @olang_loc_887bfd43d66eb550_32ec45221345c514)
  unreachable
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutableGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t10 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t4, i64 %a1, i32 %a2)
  store ptr %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l8, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/ast:VarDecl", ptr %t18, i32 0, i32 2
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t21)
  store i1 %t23, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb5
bb4:
  %t24 = load i1, ptr %l15, !tbaa !21
  %t25 = xor i1 %t24, true
  store i1 %t25, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l12, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca %"compiler/check:collWalk"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %lp19 = alloca ptr
  %lp20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %lp35 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i1
  %l60 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l66 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca i32
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca i64
  %l77 = alloca i64
  %l82 = alloca i32
  %l87 = alloca %"compiler/check:collWalk"
  %l90 = alloca i1
  %l96 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l128 = alloca { i64, ptr }
  %l131 = alloca i1
  %l134 = alloca { i64, ptr }
  %l137 = alloca i1
  %l139 = alloca i1
  %l144 = alloca i1
  %l146 = alloca { i64, ptr }
  %l151 = alloca i1
  %l152 = alloca ptr
  %l155 = alloca { i64, ptr }
  %l157 = alloca i1
  %l159 = alloca i1
  %l163 = alloca { i64, ptr }
  %l166 = alloca i1
  %l167 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l179 = alloca ptr
  %l187 = alloca i1
  %l191 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca i64
  %l199 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca { i64, ptr }
  %l206 = alloca i64
  %l208 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l213 = alloca ptr
  %l217 = alloca %"compiler/check:inPlaceRead"
  %l219 = alloca %"compiler/check:inPlaceRead"
  %l222 = alloca { i64, ptr }
  %l224 = alloca ptr
  %l225 = alloca ptr
  %l226 = alloca i1
  %l235 = alloca ptr
  %l236 = alloca i1
  %l240 = alloca %"compiler/source:Span"
  %l241 = alloca i32
  %l244 = alloca ptr
  %l249 = alloca i64
  %l252 = alloca i64
  %l253 = alloca ptr
  %l263 = alloca i64
  %l266 = alloca i64
  %l284 = alloca { i64, ptr }
  %l285 = alloca i64
  %l286 = alloca { i64, ptr }
  %l289 = alloca ptr
  %l292 = alloca { i64, ptr }
  %l295 = alloca ptr
  %l297 = alloca { i64, ptr }
  %l303 = alloca %"compiler/source:Span"
  %l306 = alloca i32
  %l316 = alloca %"compiler/typed:Call"
  %l324 = alloca i32
  %l328 = alloca i1
  %l337 = alloca %"compiler/source:Span"
  %l338 = alloca i32
  %l342 = alloca { i64, ptr }
  %l343 = alloca %"compiler/typed:Seq"
  %l347 = alloca %"compiler/source:Span"
  %l348 = alloca i32
  %l352 = alloca { i64, ptr }
  %l354 = alloca %"compiler/typed:Seq"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca ptr
  %t470 = alloca { i64, [5 x i64] }, align 8
  %t506 = alloca i64
  %t647 = alloca { i64, [5 x i64] }, align 8
  %t687 = alloca { i64, [3 x i64] }, align 8
  %t712 = alloca { i64, [5 x i64] }, align 8
  %t740 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t2 = load ptr, ptr %l38, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l38, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l39, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l39, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l3, !tbaa !29
  store ptr %t16, ptr %l37, !tbaa !29
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store ptr null, ptr %l37, !tbaa !29
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ca4f5f5b23e45e3_6d800cc55c15839f)
  unreachable
bb11:
  %t19 = load ptr, ptr %l37, !tbaa !29
  store ptr %t19, ptr %l4, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 41
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb14
bb13:
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  store i1 %t29, ptr %l49, !tbaa !21
  br label %bb14
bb14:
  %t31 = load i1, ptr %l49, !tbaa !21
  br i1 %t31, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb17
bb16:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Call", ptr %t32, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l52, !tbaa !21
  br label %bb17
bb17:
  %t41 = load i1, ptr %l52, !tbaa !21
  br i1 %t41, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t42, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l4, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Call", ptr %t45, i32 0, i32 1
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l60, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr ptr, ptr %t50, i64 0
  %t52 = load ptr, ptr %t51, !tbaa !39
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatTemp(ptr %v0, ptr %v1, ptr %v2, ptr %t44, ptr %t52)
  store ptr %t55, ptr %l62
  br label %bb21
bb21:
  %t56 = load ptr, ptr %l62, !tbaa !29
  store ptr %t56, ptr %l5, !tbaa !29
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb22, label %bb23
bb22:
  %t61 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t61, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l66, !tbaa !29
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t67 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t64)
  store i32 %t67, ptr %l69
  br label %bb25
bb25:
  %t68 = load ptr, ptr %l66, !tbaa !29
  %t69 = load i32, ptr %l69, !tbaa !23
  %t70 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l70
  br label %bb26
bb26:
  %t71 = load i32, ptr %l70, !tbaa !23
  store i32 %t71, ptr %l6, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s5
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l5, !tbaa !29
  %t76 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatColls(ptr %v0, ptr %v2, ptr %s5, ptr %t72, ptr %t73)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l73
  br label %bb27
bb27:
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  %t78 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %t78
  store ptr %t78, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t80 = load i64, ptr %l8, !tbaa !24
  store i64 %t80, ptr %l75, !tbaa !24
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s5, ptr %t81)
  store i64 %t83, ptr %l77
  br label %bb29
bb29:
  %t84 = load i64, ptr %l75, !tbaa !24
  %t85 = load i64, ptr %l77, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb40
bb31:
  br label %bb32
bb32:
  %t90 = load ptr, ptr %l7, !tbaa !29
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s5, ptr %t90, i64 %t91)
  store i32 %t94, ptr %l82
  br label %bb33
bb33:
  %t95 = load i32, ptr %l82, !tbaa !23
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t105 = call %"compiler/check:collWalk" @compiler_2fcheck_3acollWalk_2ector(ptr %v0, ptr %s6, ptr %t101, i32 %t95)
  store %"compiler/check:collWalk" %t105, ptr %l87
  br label %bb34
bb34:
  %t106 = load %"compiler/check:collWalk", ptr %l87
  store %"compiler/check:collWalk" %t106, ptr %l10
  %t107 = load i32, ptr %l6, !tbaa !23
  %t110 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2ereaches(ptr %s6, ptr %v0, ptr %l10, i32 %t107)
  store i1 %t110, ptr %l90
  br label %bb35
bb35:
  %t111 = load i1, ptr %l90, !tbaa !21
  br i1 %t111, label %bb36, label %bb37
bb36:
  %t112 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t112, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb39:
  %t114 = load i64, ptr %l8, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l8, !tbaa !24
  br label %bb28
bb40:
  call void @__olang_scope_close(ptr %s5)
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Call", ptr %t118, i32 0, i32 1
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 0
  store i64 %t123, ptr %l96, !tbaa !24
  %t124 = load i64, ptr %l96, !tbaa !24
  %t125 = icmp sge i64 %t124, 0
  br i1 %t125, label %bb41, label %bb42
bb41:
  %t127 = load i64, ptr %l96, !tbaa !24
  %t128 = mul i64 %t127, 1
  %t129 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l11, !tbaa !27
  store i1 false, ptr %l12, !tbaa !21
  store i64 1, ptr %l13, !tbaa !24
  %t133 = load ptr, ptr %l4, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Call", ptr %t133, i32 0, i32 1
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t140 = load i64, ptr %l14, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t144 = icmp sgt i64 %t140, %t141
  br i1 %t144, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_5aa7d4de030be559_fd07d6902576424d)
  unreachable
bb43:
  %t146 = load i64, ptr %l15, !tbaa !24
  %t148 = icmp sgt i64 %t146, 0
  br i1 %t148, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb48
bb45:
  %t150 = load i64, ptr %l14, !tbaa !24
  %t151 = load i64, ptr %l13, !tbaa !24
  %t154 = sub i64 %t150, %t151
  %t155 = load i64, ptr %l15, !tbaa !24
  %t158 = add i64 %t154, %t155
  %t160 = sub i64 %t158, 1
  %t161 = load i64, ptr %l15, !tbaa !24
  %t164 = sdiv i64 %t160, %t161
  store i64 %t164, ptr %l108, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb47
bb47:
  %t166 = load i64, ptr %l108, !tbaa !24
  store i64 %t166, ptr %l105, !tbaa !24
  br label %bb48
bb48:
  %t167 = load i64, ptr %l105, !tbaa !24
  store i64 %t167, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb49
bb49:
  %t168 = load i64, ptr %l17, !tbaa !24
  %t169 = load i64, ptr %l16, !tbaa !24
  %t172 = icmp slt i64 %t168, %t169
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb50, label %bb51
bb50:
  br label %bb66
bb51:
  br label %bb52
bb52:
  %t176 = load i64, ptr %l13, !tbaa !24
  %t177 = load i64, ptr %l17, !tbaa !24
  %t178 = load i64, ptr %l15, !tbaa !24
  %t181 = mul i64 %t177, %t178
  %t184 = add i64 %t176, %t181
  store i64 %t184, ptr %l18, !tbaa !24
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l4, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Call", ptr %t187, i32 0, i32 1
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l128, !tbaa !27
  %t191 = load i64, ptr %l18, !tbaa !24
  %t193 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr ptr, ptr %t194, i64 %t191
  %t196 = load ptr, ptr %t195, !tbaa !39
  %t199 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArg(ptr %v0, ptr %v1, ptr %t186, ptr %t196)
  store i1 %t199, ptr %l131
  br label %bb53
bb53:
  %t200 = load i1, ptr %l131, !tbaa !21
  br i1 %t200, label %bb54, label %bb55
bb54:
  br label %bb65
bb55:
  br label %bb56
bb56:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l4, !tbaa !29
  %t204 = getelementptr %"compiler/typed:Call", ptr %t202, i32 0, i32 1
  %t205 = load { i64, ptr }, ptr %t204, !tbaa !27
  store { i64, ptr } %t205, ptr %l134, !tbaa !27
  %t206 = load i64, ptr %l18, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr ptr, ptr %t209, i64 %t206
  %t211 = load ptr, ptr %t210, !tbaa !39
  %t214 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdable(ptr %v0, ptr %v1, ptr %t201, ptr %t211)
  store i1 %t214, ptr %l137
  br label %bb57
bb57:
  %t215 = load i1, ptr %l137, !tbaa !21
  %t216 = xor i1 %t215, true
  br i1 %t216, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l139, !tbaa !21
  br label %bb61
bb59:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/check:Checker", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = getelementptr %"compiler/generic:Program", ptr %t221, i32 0, i32 2
  %t224 = load i32, ptr %l6, !tbaa !23
  %t227 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %t223, i32 %t224)
  store i1 %t227, ptr %l144
  br label %bb60
bb60:
  %t228 = load i1, ptr %l144, !tbaa !21
  store i1 %t228, ptr %l139, !tbaa !21
  br label %bb61
bb61:
  %t229 = load i1, ptr %l139, !tbaa !21
  br i1 %t229, label %bb62, label %bb63
bb62:
  %t230 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t230, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  %t232 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t232, ptr %l146, !tbaa !27
  %t233 = load i64, ptr %l18, !tbaa !24
  %t235 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i1, ptr %t236, i64 %t233
  store i1 true, ptr %t237, !tbaa !31
  store i1 true, ptr %l12, !tbaa !21
  br label %bb65
bb65:
  %t238 = load i64, ptr %l17, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l17, !tbaa !24
  br label %bb49
bb66:
  %t242 = load i1, ptr %l12, !tbaa !21
  br i1 %t242, label %bb67, label %bb68
bb67:
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l152, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load ptr, ptr %l5, !tbaa !29
  %t249 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatIndices(ptr %v0, ptr %v2, ptr %v2, ptr %t245, ptr %t246)
  store { i64, ptr } %t249, ptr %l155
  br label %bb69
bb68:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb80
bb69:
  %t250 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t250, 0
  %t252 = extractvalue { i64, ptr } %t250, 1
  %t253 = mul i64 %t251, 8
  %t254 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  %t257 = load ptr, ptr %l152, !tbaa !29
  %t259 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArgs(ptr %v0, ptr %v2, ptr %t257, { i64, ptr } %t256)
  store i1 %t259, ptr %l157
  br label %bb70
bb70:
  %t260 = load i1, ptr %l157, !tbaa !21
  %t261 = xor i1 %t260, true
  br i1 %t261, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l159, !tbaa !21
  br label %bb74
bb72:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l5, !tbaa !29
  %t268 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v2, ptr %s0, ptr %t263, ptr %t264)
  store { i64, ptr } %t268, ptr %l163
  br label %bb73
bb73:
  %t269 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 0
  %t272 = icmp eq i64 %t270, 0
  store i1 %t272, ptr %l159, !tbaa !21
  br label %bb74
bb74:
  %t274 = load i1, ptr %l159, !tbaa !21
  br i1 %t274, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l166, !tbaa !21
  br label %bb79
bb76:
  %t275 = load ptr, ptr %l0, !tbaa !29
  store ptr %t275, ptr %l167, !tbaa !29
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load ptr, ptr %l5, !tbaa !29
  %t281 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v2, ptr %v2, ptr %t276, ptr %t277)
  store { i64, ptr } %t281, ptr %l171
  br label %bb77
bb77:
  %t282 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t282, ptr %l172, !tbaa !27
  %t283 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr ptr, ptr %t284, i64 0
  %t286 = load ptr, ptr %t285, !tbaa !39
  %t287 = load ptr, ptr %l167, !tbaa !29
  %t289 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v2, ptr %s0, ptr %t287, ptr %t286)
  store ptr %t289, ptr %l174
  br label %bb78
bb78:
  %t290 = load ptr, ptr %l174, !tbaa !29
  %t291 = icmp eq ptr %t290, null
  %t293 = xor i1 %t291, true
  store i1 %t293, ptr %l166, !tbaa !21
  br label %bb79
bb79:
  %t295 = load i1, ptr %l166, !tbaa !21
  store i1 %t295, ptr %l151, !tbaa !21
  br label %bb80
bb80:
  %t296 = load i1, ptr %l151, !tbaa !21
  br i1 %t296, label %bb81, label %bb82
bb81:
  %t297 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t297, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t299)
  store ptr %t301, ptr %l179
  br label %bb84
bb84:
  %t302 = load ptr, ptr %l179, !tbaa !29
  %t304 = getelementptr %"compiler/check:frame", ptr %t302, i32 0, i32 2
  %t305 = load i64, ptr %t304, !tbaa !24
  %t306 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t307 = load i32, ptr %t306, !tbaa !23
  %t309 = call i64 @__olang_fmt_i64(ptr null, i64 %t305)
  %t310 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t311 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t312 = add i64 %t309, %t311
  %t314 = sext i32 %t307 to i64
  %t315 = call i64 @__olang_fmt_i64(ptr null, i64 %t314)
  %t316 = add i64 %t312, %t315
  %t317 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t316)
  %t318 = call i64 @__olang_fmt_i64(ptr %t317, i64 %t305)
  %t319 = getelementptr i8, ptr %t317, i64 %t309
  call void @olang_textcopy(ptr %t319, ptr %t310, i64 %t311)
  %t320 = getelementptr i8, ptr %t319, i64 %t311
  %t321 = call i64 @__olang_fmt_i64(ptr %t320, i64 %t314)
  %t322 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t317, 1
  %t324 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t324, ptr %lp19
  %t326 = load ptr, ptr %lp19
  store { i64, ptr } %t323, ptr %t326, !tbaa !27
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %lp19
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  %t330 = load %"compiler/source:Span", ptr %l1
  %t334 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceCopied(ptr %v0, ptr %v2, ptr %t327, { i64, ptr } %t329, %"compiler/source:Span" %t330)
  store i1 %t334, ptr %l187
  br label %bb85
bb85:
  %t335 = load i1, ptr %l187, !tbaa !21
  br i1 %t335, label %bb86, label %bb87
bb86:
  %t336 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t336, ptr %rv
  br label %ret
bb87:
  br label %bb88
bb88:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load ptr, ptr %l4, !tbaa !29
  %t342 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceBodies(ptr %v0, ptr %v1, ptr %v2, ptr %t338, ptr %t339)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t342, ptr %l191
  br label %bb89
bb89:
  %t343 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t343, ptr %lp20
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l191
  %t345 = load ptr, ptr %lp20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %t345
  %t346 = load ptr, ptr %lp20
  %t348 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t346)
  store i64 %t348, ptr %l193
  br label %bb90
bb90:
  %t349 = load i64, ptr %l193, !tbaa !24
  %t350 = icmp eq i64 %t349, 0
  br i1 %t350, label %bb91, label %bb92
bb91:
  %t352 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t352, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load %"compiler/source:Span", ptr %l1
  %t356 = load ptr, ptr %l5, !tbaa !29
  %t360 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceRef(ptr %v0, ptr %v2, ptr %v2, ptr %t354, %"compiler/source:Span" %t355, ptr %t356)
  store ptr %t360, ptr %l199
  br label %bb94
bb94:
  %t361 = load ptr, ptr %l199, !tbaa !29
  store ptr %t361, ptr %l21, !tbaa !29
  %t362 = load ptr, ptr %l21, !tbaa !29
  %t364 = icmp eq ptr %t362, null
  br i1 %t364, label %bb95, label %bb96
bb95:
  %t366 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t366, ptr %rv
  br label %ret
bb96:
  br label %bb97
bb97:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/check:Checker", ptr %t368, i32 0, i32 65
  store ptr %t370, ptr %l204, !tbaa !29
  %t371 = load ptr, ptr %lp19
  %t372 = load { i64, ptr }, ptr %t371, !tbaa !27
  store { i64, ptr } %t372, ptr %l205, !tbaa !27
  %t373 = ptrtoint ptr %v0 to i64
  store i64 %t373, ptr %l206, !tbaa !24
  %t374 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ainPlaceRead_2e1
  br i1 %t374, label %bb98, label %bb99
bb98:
  %t376 = call ptr @__olang_region_make(ptr %v0)
  %t377 = ptrtoint ptr %t376 to i64
  store i64 %t377, ptr %l206, !tbaa !24
  br label %bb99
bb99:
  %t378 = load ptr, ptr %lp20
  %t379 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t378
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t379, ptr %l208
  %t380 = load i64, ptr %l206
  %t381 = inttoptr i64 %t380 to ptr
  %t383 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t381, ptr %l208)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l210
  br label %bb100
bb100:
  %t384 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ainPlaceRead_2e1
  br i1 %t384, label %bb101, label %bb102
bb101:
  %t386 = load i64, ptr %l206
  %t387 = inttoptr i64 %t386 to ptr
  %t388 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210, i32 0, i32 0
  %t389 = load { i64, ptr }, ptr %t388
  %t390 = extractvalue { i64, ptr } %t389, 1
  %t391 = call ptr @__olang_region_or(ptr %t390, ptr null)
  %t392 = icmp ne ptr %t391, null
  %t393 = select i1 %t392, ptr %t391, ptr null
  %t394 = icmp eq ptr %t393, %t387
  call void @__olang_region_settle(ptr %t387, i1 %t394)
  br label %bb102
bb102:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t395)
  store ptr %t397, ptr %l213
  br label %bb103
bb103:
  %t398 = load ptr, ptr %l213, !tbaa !29
  %t400 = getelementptr %"compiler/check:frame", ptr %t398, i32 0, i32 2
  %t401 = load i64, ptr %t400, !tbaa !24
  %t402 = load %"compiler/source:Span", ptr %l1
  %t403 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210
  %t407 = call %"compiler/check:inPlaceRead" @compiler_2fcheck_3ainPlaceRead_2ector(ptr %v2, ptr %v0, ptr %v0, { i64, ptr } %t403, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, i64 %t401, %"compiler/source:Span" %t402)
  store %"compiler/check:inPlaceRead" %t407, ptr %l217
  br label %bb104
bb104:
  %t409 = call %"compiler/check:inPlaceRead" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3ainPlaceRead(ptr %v0, ptr %l217)
  store %"compiler/check:inPlaceRead" %t409, ptr %l219
  br label %bb105
bb105:
  %t410 = load ptr, ptr %l204, !tbaa !29
  %t411 = load %"compiler/check:inPlaceRead", ptr %l219
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2ePu_H042bb738a6b40c55f43b8576e2e1347e(ptr %v0, ptr %v0, ptr %t410, %"compiler/check:inPlaceRead" %t411)
  br label %bb106
bb106:
  %t412 = load ptr, ptr %l21, !tbaa !29
  store ptr %t412, ptr %l22, !tbaa !29
  %t414 = load ptr, ptr %l4, !tbaa !29
  %t416 = getelementptr %"compiler/typed:Call", ptr %t414, i32 0, i32 1
  %t417 = load { i64, ptr }, ptr %t416, !tbaa !27
  store { i64, ptr } %t417, ptr %l222, !tbaa !27
  %t418 = getelementptr { i64, ptr }, ptr %l222, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !27
  %t420 = getelementptr ptr, ptr %t419, i64 0
  %t421 = load ptr, ptr %t420, !tbaa !39
  %t423 = call ptr @compiler_2fcheck_2epastAway(ptr %v1, ptr %v2, ptr %t421)
  store ptr %t423, ptr %l224
  br label %bb107
bb107:
  %t424 = load ptr, ptr %l224, !tbaa !29
  store ptr %t424, ptr %l23, !tbaa !29
  %t425 = load ptr, ptr %l23, !tbaa !29
  store ptr %t425, ptr %l225, !tbaa !29
  store i1 false, ptr %l226, !tbaa !21
  %t426 = load ptr, ptr %l225, !tbaa !29
  %t427 = icmp ne ptr %t426, null
  br i1 %t427, label %bb108, label %bb109
bb108:
  %t429 = load ptr, ptr %l225, !tbaa !29
  %t430 = load i64, ptr %t429, !range !{i64 0, i64 18}
  %t432 = icmp eq i64 %t430, 3
  store i1 %t432, ptr %l226, !tbaa !21
  br label %bb109
bb109:
  %t433 = load i1, ptr %l226, !tbaa !21
  br i1 %t433, label %bb110, label %bb111
bb110:
  %t434 = load ptr, ptr %l23, !tbaa !29
  %t436 = getelementptr { i64, [5 x i64] }, ptr %t434, i32 0, i32 1
  %t437 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t436, i32 0, i32 0
  %t438 = load %"compiler/source:Span", ptr %t437
  store %"compiler/source:Span" %t438, ptr %l24
  %t440 = load ptr, ptr %l23, !tbaa !29
  %t442 = getelementptr { i64, [5 x i64] }, ptr %t440, i32 0, i32 1
  %t443 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t442, i32 0, i32 1
  %t444 = load i32, ptr %t443
  store i32 %t444, ptr %l25, !tbaa !23
  %t446 = load ptr, ptr %l23, !tbaa !29
  %t448 = getelementptr { i64, [5 x i64] }, ptr %t446, i32 0, i32 1
  %t449 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t448, i32 0, i32 2
  %t450 = load ptr, ptr %t449
  store ptr %t450, ptr %l26, !tbaa !29
  br label %bb112
bb111:
  br label %bb119
bb112:
  %t452 = load ptr, ptr %l26, !tbaa !29
  store ptr %t452, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t453 = load ptr, ptr %l235, !tbaa !29
  %t454 = icmp ne ptr %t453, null
  br i1 %t454, label %bb113, label %bb114
bb113:
  %t456 = load ptr, ptr %l235, !tbaa !29
  %t457 = load i64, ptr %t456, !range !{i64 0, i64 8}
  %t459 = icmp eq i64 %t457, 6
  store i1 %t459, ptr %l236, !tbaa !21
  br label %bb114
bb114:
  %t460 = load i1, ptr %l236, !tbaa !21
  %t461 = xor i1 %t460, true
  br i1 %t461, label %bb115, label %bb116
bb115:
  %t463 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t463, ptr %l240
  %t464 = load i32, ptr %l25, !tbaa !23
  store i32 %t464, ptr %l241, !tbaa !23
  %t465 = load ptr, ptr %l26, !tbaa !29
  %t466 = load ptr, ptr %l21, !tbaa !29
  %t469 = call ptr @compiler_2fcheck_2erebased(ptr %v2, ptr %v2, ptr %v2, ptr %t465, ptr %t466)
  store ptr %t469, ptr %l244
  br label %bb117
bb116:
  br label %bb118
bb117:
  store { i64, [5 x i64] } zeroinitializer, ptr %t470
  %t471 = getelementptr { i64, [5 x i64] }, ptr %t470, i32 0, i32 0
  store i64 3, ptr %t471
  %t472 = load %"compiler/source:Span", ptr %l240
  %t473 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t472, 0
  %t474 = load i32, ptr %l241, !tbaa !23
  %t475 = insertvalue { %"compiler/source:Span", i32, ptr } %t473, i32 %t474, 1
  %t476 = load ptr, ptr %l244, !tbaa !29
  %t477 = insertvalue { %"compiler/source:Span", i32, ptr } %t475, ptr %t476, 2
  %t478 = getelementptr { i64, [5 x i64] }, ptr %t470, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t477, ptr %t478
  %t479 = load { i64, [5 x i64] }, ptr %t470
  %t481 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t479, ptr %t481
  store ptr %t481, ptr %l22, !tbaa !29
  br label %bb118
bb118:
  br label %bb124
bb119:
  br i1 true, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_2d42dd0dd97e7bd9_d37ae78aca20ab55)
  unreachable
bb124:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t485 = getelementptr %"compiler/check:Checker", ptr %t483, i32 0, i32 37
  %t487 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t485)
  store i64 %t487, ptr %l249
  br label %bb125
bb125:
  %t488 = load i64, ptr %l249, !tbaa !24
  store i64 %t488, ptr %l27, !tbaa !24
  %t489 = load ptr, ptr %l4, !tbaa !29
  %t491 = getelementptr %"compiler/typed:Call", ptr %t489, i32 0, i32 1
  %t492 = load { i64, ptr }, ptr %t491, !tbaa !27
  %t494 = extractvalue { i64, ptr } %t492, 0
  store i64 %t494, ptr %l252, !tbaa !24
  %t495 = load ptr, ptr %l22, !tbaa !29
  store ptr %t495, ptr %l253, !tbaa !29
  %t496 = load i64, ptr %l252, !tbaa !24
  %t497 = icmp sge i64 %t496, 0
  br i1 %t497, label %bb126, label %bb127
bb126:
  %t499 = load i64, ptr %l252, !tbaa !24
  %t500 = icmp sle i64 %t499, 1152921504606846975
  br i1 %t500, label %bb128, label %bb129
bb127:
  call void @__olang_check_failed(ptr @olang_loc_63e5c37ccccdf7af_ebbfa2ab6c880643)
  unreachable
bb128:
  %t502 = load i64, ptr %l252, !tbaa !24
  %t503 = mul i64 %t502, 8
  %t504 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t503)
  %t505 = load ptr, ptr %l253, !tbaa !29
  store i64 0, ptr %t506
  br label %fill.507
fill.507:
  %t510 = load i64, ptr %t506
  %t511 = icmp slt i64 %t510, %t502
  br i1 %t511, label %fillb.508, label %filld.509
fillb.508:
  %t512 = getelementptr ptr, ptr %t504, i64 %t510
  store ptr %t505, ptr %t512
  %t513 = add i64 %t510, 1
  store i64 %t513, ptr %t506
  br label %fill.507
filld.509:
  %t514 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t515 = insertvalue { i64, ptr } %t514, ptr %t504, 1
  store { i64, ptr } %t515, ptr %l28, !tbaa !27
  store i64 1, ptr %l29, !tbaa !24
  %t517 = load ptr, ptr %l4, !tbaa !29
  %t519 = getelementptr %"compiler/typed:Call", ptr %t517, i32 0, i32 1
  %t520 = load { i64, ptr }, ptr %t519, !tbaa !27
  %t522 = extractvalue { i64, ptr } %t520, 0
  store i64 %t522, ptr %l30, !tbaa !24
  store i64 1, ptr %l31, !tbaa !24
  %t524 = load i64, ptr %l30, !tbaa !24
  %t525 = load i64, ptr %l29, !tbaa !24
  %t528 = icmp sgt i64 %t524, %t525
  br i1 %t528, label %bb130, label %bb131
bb129:
  call void @__olang_check_failed(ptr @olang_loc_63e5c37ccccdf7af_ebbfa2ab6c880643)
  unreachable
bb130:
  %t530 = load i64, ptr %l31, !tbaa !24
  %t532 = icmp sgt i64 %t530, 0
  br i1 %t532, label %bb132, label %bb133
bb131:
  store i64 0, ptr %l263, !tbaa !24
  br label %bb135
bb132:
  %t534 = load i64, ptr %l30, !tbaa !24
  %t535 = load i64, ptr %l29, !tbaa !24
  %t538 = sub i64 %t534, %t535
  %t539 = load i64, ptr %l31, !tbaa !24
  %t542 = add i64 %t538, %t539
  %t544 = sub i64 %t542, 1
  %t545 = load i64, ptr %l31, !tbaa !24
  %t548 = sdiv i64 %t544, %t545
  store i64 %t548, ptr %l266, !tbaa !24
  br label %bb134
bb133:
  store i64 0, ptr %l266, !tbaa !24
  br label %bb134
bb134:
  %t550 = load i64, ptr %l266, !tbaa !24
  store i64 %t550, ptr %l263, !tbaa !24
  br label %bb135
bb135:
  %t551 = load i64, ptr %l263, !tbaa !24
  store i64 %t551, ptr %l32, !tbaa !24
  store i64 0, ptr %l33, !tbaa !24
  br label %bb136
bb136:
  %t552 = load i64, ptr %l33, !tbaa !24
  %t553 = load i64, ptr %l32, !tbaa !24
  %t556 = icmp slt i64 %t552, %t553
  %t558 = xor i1 %t556, true
  br i1 %t558, label %bb137, label %bb138
bb137:
  br label %bb145
bb138:
  br label %bb139
bb139:
  %t560 = load i64, ptr %l29, !tbaa !24
  %t561 = load i64, ptr %l33, !tbaa !24
  %t562 = load i64, ptr %l31, !tbaa !24
  %t565 = mul i64 %t561, %t562
  %t568 = add i64 %t560, %t565
  store i64 %t568, ptr %l34, !tbaa !24
  %t570 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t570, ptr %l284, !tbaa !27
  %t571 = load i64, ptr %l34, !tbaa !24
  store i64 %t571, ptr %l285, !tbaa !24
  %t572 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t572, ptr %l286, !tbaa !27
  %t573 = load i64, ptr %l34, !tbaa !24
  %t575 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t576 = load ptr, ptr %t575, !tbaa !27
  %t577 = getelementptr i1, ptr %t576, i64 %t573
  %t578 = load i1, ptr %t577, !tbaa !31
  br i1 %t578, label %bb140, label %bb141
bb140:
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t581 = load ptr, ptr %l4, !tbaa !29
  %t583 = getelementptr %"compiler/typed:Call", ptr %t581, i32 0, i32 1
  %t584 = load { i64, ptr }, ptr %t583, !tbaa !27
  store { i64, ptr } %t584, ptr %l292, !tbaa !27
  %t585 = load i64, ptr %l34, !tbaa !24
  %t587 = getelementptr { i64, ptr }, ptr %l292, i32 0, i32 1
  %t588 = load ptr, ptr %t587, !tbaa !27
  %t589 = getelementptr ptr, ptr %t588, i64 %t585
  %t590 = load ptr, ptr %t589, !tbaa !39
  %t593 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldFirst(ptr %v0, ptr %v1, ptr %v1, ptr %t580, ptr %t590)
  store ptr %t593, ptr %l295
  br label %bb142
bb141:
  %t594 = load ptr, ptr %l4, !tbaa !29
  %t596 = getelementptr %"compiler/typed:Call", ptr %t594, i32 0, i32 1
  %t597 = load { i64, ptr }, ptr %t596, !tbaa !27
  store { i64, ptr } %t597, ptr %l297, !tbaa !27
  %t598 = load i64, ptr %l34, !tbaa !24
  %t600 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t601 = load ptr, ptr %t600, !tbaa !27
  %t602 = getelementptr ptr, ptr %t601, i64 %t598
  %t603 = load ptr, ptr %t602, !tbaa !39
  store ptr %t603, ptr %l289, !tbaa !29
  br label %bb143
bb142:
  %t605 = load ptr, ptr %l295, !tbaa !29
  store ptr %t605, ptr %l289, !tbaa !29
  br label %bb143
bb143:
  %t606 = load ptr, ptr %l289, !tbaa !29
  %t607 = load i64, ptr %l285, !tbaa !24
  %t608 = getelementptr { i64, ptr }, ptr %l284, i32 0, i32 1
  %t609 = load ptr, ptr %t608, !tbaa !27
  %t610 = getelementptr ptr, ptr %t609, i64 %t607
  store ptr %t606, ptr %t610, !tbaa !39
  br label %bb144
bb144:
  %t611 = load i64, ptr %l33, !tbaa !24
  %t613 = add i64 %t611, 1
  store i64 %t613, ptr %l33, !tbaa !24
  br label %bb136
bb145:
  %t615 = load ptr, ptr %l2, !tbaa !29
  %t617 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t615)
  store %"compiler/source:Span" %t617, ptr %l303
  br label %bb146
bb146:
  %t618 = load ptr, ptr %l2, !tbaa !29
  %t621 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t618)
  store i32 %t621, ptr %l306
  br label %bb147
bb147:
  %t622 = load ptr, ptr %l4, !tbaa !29
  %t624 = getelementptr %"compiler/typed:Call", ptr %t622, i32 0, i32 0
  %t625 = load ptr, ptr %t624, !tbaa !29
  %t626 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t627 = load ptr, ptr %l4, !tbaa !29
  %t629 = getelementptr %"compiler/typed:Call", ptr %t627, i32 0, i32 2
  %t630 = load i32, ptr %t629, !tbaa !23
  %t631 = load ptr, ptr %l4, !tbaa !29
  %t633 = getelementptr %"compiler/typed:Call", ptr %t631, i32 0, i32 3
  %t634 = load i1, ptr %t633, !tbaa !21
  %t635 = load ptr, ptr %l4, !tbaa !29
  %t637 = getelementptr %"compiler/typed:Call", ptr %t635, i32 0, i32 4
  %t638 = load i1, ptr %t637, !tbaa !21
  %t644 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v1, ptr %v2, ptr %v2, ptr %t625, { i64, ptr } %t626, i32 %t630, i1 %t634, i1 %t638)
  store %"compiler/typed:Call" %t644, ptr %l316
  br label %bb148
bb148:
  %t645 = load %"compiler/typed:Call", ptr %l316
  %t646 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Call" %t645, ptr %t646
  store { i64, [5 x i64] } zeroinitializer, ptr %t647
  %t648 = getelementptr { i64, [5 x i64] }, ptr %t647, i32 0, i32 0
  store i64 6, ptr %t648
  %t649 = load %"compiler/source:Span", ptr %l303
  %t650 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t649, 0
  %t651 = load i32, ptr %l306, !tbaa !23
  %t652 = insertvalue { %"compiler/source:Span", i32, ptr } %t650, i32 %t651, 1
  %t654 = insertvalue { %"compiler/source:Span", i32, ptr } %t652, ptr %t646, 2
  %t655 = getelementptr { i64, [5 x i64] }, ptr %t647, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t654, ptr %t655
  %t656 = load { i64, [5 x i64] }, ptr %t647
  %t657 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t657, ptr %lp35
  %t659 = load ptr, ptr %lp35
  store { i64, [5 x i64] } %t656, ptr %t659
  %t660 = load i1, ptr %l12, !tbaa !21
  %t662 = xor i1 %t660, true
  br i1 %t662, label %bb149, label %bb150
bb149:
  %t664 = load ptr, ptr %lp35
  call void @__olang_scope_close(ptr %s0)
  store ptr %t664, ptr %rv
  br label %ret
bb150:
  br label %bb151
bb151:
  %t666 = load ptr, ptr %l2, !tbaa !29
  %t669 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t666)
  store i32 %t669, ptr %l324
  br label %bb152
bb152:
  %t670 = load i32, ptr %l324, !tbaa !23
  store i32 %t670, ptr %l36, !tbaa !23
  %t671 = load i32, ptr %l36, !tbaa !23
  %t672 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t675 = icmp eq i32 %t671, %t672
  br i1 %t675, label %bb153, label %bb154
bb153:
  store i1 true, ptr %l328, !tbaa !21
  br label %bb155
bb154:
  %t677 = load i32, ptr %l36, !tbaa !23
  %t678 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t681 = icmp eq i32 %t677, %t678
  store i1 %t681, ptr %l328, !tbaa !21
  br label %bb155
bb155:
  %t683 = load i1, ptr %l328, !tbaa !21
  br i1 %t683, label %bb156, label %bb157
bb156:
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load %"compiler/source:Span", ptr %l1
  %t686 = load ptr, ptr %lp35
  store { i64, [3 x i64] } zeroinitializer, ptr %t687
  %t688 = getelementptr { i64, [3 x i64] }, ptr %t687, i32 0, i32 0
  store i64 2, ptr %t688
  %t690 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t685, 0
  %t692 = insertvalue { %"compiler/source:Span", ptr } %t690, ptr %t686, 1
  %t693 = getelementptr { i64, [3 x i64] }, ptr %t687, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t692, ptr %t693
  %t694 = load { i64, [3 x i64] }, ptr %t687
  %t696 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t694, ptr %t696
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t684, ptr %t696)
  br label %bb158
bb157:
  br label %bb161
bb158:
  %t699 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t699, ptr %l337
  %t700 = load i32, ptr %l36, !tbaa !23
  store i32 %t700, ptr %l338, !tbaa !23
  %t701 = load ptr, ptr %l0, !tbaa !29
  %t703 = getelementptr %"compiler/check:Checker", ptr %t701, i32 0, i32 37
  %t704 = load i64, ptr %l27, !tbaa !24
  %t707 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t703, i64 %t704)
  store { i64, ptr } %t707, ptr %l342
  br label %bb159
bb159:
  %t708 = load { i64, ptr }, ptr %l342, !tbaa !27
  %t709 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t708, ptr null, i1 false)
  store %"compiler/typed:Seq" %t709, ptr %l343
  br label %bb160
bb160:
  %t710 = load %"compiler/typed:Seq", ptr %l343
  %t711 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t710, ptr %t711
  store { i64, [5 x i64] } zeroinitializer, ptr %t712
  %t713 = getelementptr { i64, [5 x i64] }, ptr %t712, i32 0, i32 0
  store i64 12, ptr %t713
  %t714 = load %"compiler/source:Span", ptr %l337
  %t715 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t714, 0
  %t716 = load i32, ptr %l338, !tbaa !23
  %t717 = insertvalue { %"compiler/source:Span", i32, ptr } %t715, i32 %t716, 1
  %t719 = insertvalue { %"compiler/source:Span", i32, ptr } %t717, ptr %t711, 2
  %t720 = getelementptr { i64, [5 x i64] }, ptr %t712, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t719, ptr %t720
  %t721 = load { i64, [5 x i64] }, ptr %t712
  %t723 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t721, ptr %t723
  call void @__olang_scope_close(ptr %s0)
  store ptr %t723, ptr %rv
  br label %ret
bb161:
  %t725 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t725, ptr %l347
  %t726 = load i32, ptr %l36, !tbaa !23
  store i32 %t726, ptr %l348, !tbaa !23
  %t727 = load ptr, ptr %l0, !tbaa !29
  %t729 = getelementptr %"compiler/check:Checker", ptr %t727, i32 0, i32 37
  %t730 = load i64, ptr %l27, !tbaa !24
  %t733 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t729, i64 %t730)
  store { i64, ptr } %t733, ptr %l352
  br label %bb162
bb162:
  %t734 = load ptr, ptr %lp35
  %t735 = load { i64, ptr }, ptr %l352, !tbaa !27
  %t737 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t735, ptr %t734, i1 false)
  store %"compiler/typed:Seq" %t737, ptr %l354
  br label %bb163
bb163:
  %t738 = load %"compiler/typed:Seq", ptr %l354
  %t739 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t738, ptr %t739
  store { i64, [5 x i64] } zeroinitializer, ptr %t740
  %t741 = getelementptr { i64, [5 x i64] }, ptr %t740, i32 0, i32 0
  store i64 12, ptr %t741
  %t742 = load %"compiler/source:Span", ptr %l347
  %t743 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t742, 0
  %t744 = load i32, ptr %l348, !tbaa !23
  %t745 = insertvalue { %"compiler/source:Span", i32, ptr } %t743, i32 %t744, 1
  %t747 = insertvalue { %"compiler/source:Span", i32, ptr } %t745, ptr %t739, 2
  %t748 = getelementptr { i64, [5 x i64] }, ptr %t740, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t747, ptr %t748
  %t749 = load { i64, [5 x i64] }, ptr %t740
  %t751 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t749, ptr %t751
  call void @__olang_scope_close(ptr %s0)
  store ptr %t751, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisZeroLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l15 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i1
  %s1 = alloca %olang.scope
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
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
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
  br label %bb11
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t24 = trunc i64 2 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t28 = load %"compiler/source:Span", ptr %l2
  %t31 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %t28)
  store { i64, ptr } %t31, ptr %l18
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb10
bb8:
  %t32 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t33, ptr %l19
  br label %bb9
bb9:
  %t34 = load i1, ptr %l19, !tbaa !21
  store i1 %t34, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l15, !tbaa !21
  store i1 %t35, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4a75f471ea948b24_16ed41ec7c1e5db8)
  unreachable
bb16:
  %t36 = load i1, ptr %l4, !tbaa !21
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTotal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca %"compiler/check:laneNode"
  %l6 = alloca i32
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, i64, i64, i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i64
  %l20 = alloca { i64, i64, i64, i64, i64 }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i64
  %lp28 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca { i64, i64, i64, i64, i64 }
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i64
  %lp44 = alloca ptr
  %l48 = alloca %"compiler/check:laneNode"
  %l56 = alloca ptr
  %l58 = alloca i1
  %l59 = alloca i1
  %l61 = alloca i1
  %l62 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l70 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca i64
  %l86 = alloca %"compiler/check:laneVals"
  %l91 = alloca ptr
  %l93 = alloca i1
  %l97 = alloca i64
  %l98 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l102 = alloca i32
  %l106 = alloca ptr
  %l112 = alloca { i64, i64, i64, i64, i64 }
  %l118 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca %"compiler/source:Span"
  %l121 = alloca i32
  %l125 = alloca ptr
  %l126 = alloca ptr
  %l127 = alloca %"compiler/source:Span"
  %l128 = alloca i64
  %l129 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca ptr
  %l139 = alloca %"compiler/source:Span"
  %l146 = alloca ptr
  %l151 = alloca ptr
  %l161 = alloca %"compiler/source:Span"
  %l162 = alloca i32
  %l166 = alloca { i64, ptr }
  %l170 = alloca ptr
  %l172 = alloca %"compiler/typed:Seq"
  %l177 = alloca i1
  %l178 = alloca i1
  %l180 = alloca i1
  %l182 = alloca i1
  %l186 = alloca i64
  %l187 = alloca ptr
  %l188 = alloca %"compiler/source:Span"
  %l191 = alloca i32
  %l192 = alloca ptr
  %l193 = alloca %"compiler/source:Span"
  %l194 = alloca i32
  %l196 = alloca i64
  %l197 = alloca ptr
  %l203 = alloca { i64, i64, i64, i64, i64 }
  %l209 = alloca ptr
  %l210 = alloca %"compiler/source:Span"
  %l211 = alloca i64
  %l212 = alloca ptr
  %l216 = alloca ptr
  %l217 = alloca ptr
  %l220 = alloca i64
  %l222 = alloca ptr
  %l223 = alloca %"compiler/source:Span"
  %l230 = alloca ptr
  %l231 = alloca ptr
  %l232 = alloca %"compiler/source:Span"
  %l233 = alloca i32
  %l235 = alloca i64
  %l236 = alloca ptr
  %l249 = alloca ptr
  %l253 = alloca i32
  %l257 = alloca { i64, ptr }
  %l258 = alloca %"compiler/typed:Block"
  %l259 = alloca ptr
  %l260 = alloca %"compiler/source:Span"
  %l262 = alloca ptr
  %l267 = alloca ptr
  %l269 = alloca %"compiler/typed:If"
  %l280 = alloca %"compiler/source:Span"
  %l281 = alloca i32
  %l285 = alloca { i64, ptr }
  %l289 = alloca ptr
  %l291 = alloca %"compiler/typed:Seq"
  %l295 = alloca ptr
  %l297 = alloca i32
  %l298 = alloca { i64, ptr }
  %l300 = alloca i32
  %l301 = alloca ptr
  %l302 = alloca %"compiler/source:Span"
  %l303 = alloca %"compiler/source:Span"
  %l304 = alloca i32
  %l305 = alloca i32
  %l306 = alloca i32
  %l309 = alloca { i64, ptr }
  %l314 = alloca ptr
  %l315 = alloca %"compiler/source:Span"
  %l317 = alloca i32
  %l318 = alloca i64
  %l319 = alloca ptr
  %l320 = alloca %"compiler/source:Span"
  %l323 = alloca i32
  %l324 = alloca ptr
  %l325 = alloca %"compiler/source:Span"
  %l327 = alloca i32
  %l328 = alloca ptr
  %l335 = alloca i64
  %l336 = alloca ptr
  %l337 = alloca %"compiler/source:Span"
  %l338 = alloca i64
  %l339 = alloca ptr
  %l343 = alloca ptr
  %l344 = alloca ptr
  %l357 = alloca i64
  %l358 = alloca ptr
  %l359 = alloca %"compiler/source:Span"
  %l362 = alloca i32
  %l367 = alloca ptr
  %l370 = alloca ptr
  %l371 = alloca %"compiler/source:Span"
  %l376 = alloca ptr
  %l377 = alloca { i64, i64, i64, i64, i64 }
  %l386 = alloca i64
  %l387 = alloca ptr
  %l388 = alloca %"compiler/source:Span"
  %l391 = alloca i32
  %l392 = alloca ptr
  %l393 = alloca ptr
  %l394 = alloca %"compiler/source:Span"
  %l395 = alloca i64
  %l396 = alloca ptr
  %l400 = alloca ptr
  %l401 = alloca ptr
  %l404 = alloca ptr
  %l408 = alloca i1
  %l409 = alloca ptr
  %l410 = alloca ptr
  %l411 = alloca %"compiler/source:Span"
  %l412 = alloca %"compiler/source:Span"
  %l413 = alloca i32
  %l417 = alloca ptr
  %l421 = alloca ptr
  %l424 = alloca ptr
  %l425 = alloca ptr
  %l426 = alloca %"compiler/source:Span"
  %l427 = alloca %"compiler/source:Span"
  %l428 = alloca i32
  %l432 = alloca ptr
  %l436 = alloca ptr
  %l439 = alloca ptr
  %l442 = alloca ptr
  %l445 = alloca i32
  %l446 = alloca i1
  %l447 = alloca ptr
  %l448 = alloca %"compiler/source:Span"
  %l449 = alloca i32
  %l450 = alloca i32
  %l454 = alloca ptr
  %l458 = alloca ptr
  %l460 = alloca ptr
  %l461 = alloca %"compiler/source:Span"
  %l462 = alloca i32
  %l463 = alloca ptr
  %l467 = alloca ptr
  %l470 = alloca %"compiler/typed:Cond"
  %l476 = alloca i64
  %l478 = alloca ptr
  %l479 = alloca %"compiler/source:Span"
  %l486 = alloca ptr
  %l490 = alloca ptr
  %l494 = alloca ptr
  %l498 = alloca i32
  %l502 = alloca { i64, ptr }
  %l503 = alloca %"compiler/typed:Block"
  %l504 = alloca ptr
  %l505 = alloca %"compiler/source:Span"
  %l508 = alloca %"compiler/typed:If"
  %l519 = alloca %"compiler/source:Span"
  %l520 = alloca i32
  %l524 = alloca { i64, ptr }
  %l528 = alloca ptr
  %l530 = alloca %"compiler/typed:Seq"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca ptr
  %t142 = alloca { i64, [3 x i64] }, align 8
  %t226 = alloca { i64, [4 x i64] }, align 8
  %t247 = alloca { i64, [3 x i64] }, align 8
  %t297 = alloca { i64, [5 x i64] }, align 8
  %t347 = alloca { i64, [3 x i64] }, align 8
  %t418 = alloca { i64, [4 x i64] }, align 8
  %t440 = alloca { i64, [3 x i64] }, align 8
  %t462 = alloca { i64, [3 x i64] }, align 8
  %t519 = alloca { i64, [3 x i64] }, align 8
  %t567 = alloca { i64, [5 x i64] }, align 8
  %t608 = alloca { i64, [5 x i64] }, align 8
  %t624 = alloca { i64, [3 x i64] }, align 8
  %t661 = alloca { i64, [3 x i64] }, align 8
  %t753 = alloca { i64, [3 x i64] }, align 8
  %t837 = alloca { i64, [3 x i64] }, align 8
  %t973 = alloca { i64, [5 x i64] }, align 8
  %t1002 = alloca { i64, [4 x i64] }, align 8
  %t1021 = alloca { i64, [3 x i64] }, align 8
  %t1067 = alloca { i64, [3 x i64] }, align 8
  %t1115 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 39
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/check:laneNode" %t7, ptr %l48
  br label %bb1
bb1:
  %t8 = load %"compiler/check:laneNode", ptr %l48
  store %"compiler/check:laneNode" %t8, ptr %l5
  %t9 = getelementptr %"compiler/check:laneNode", ptr %l5, i32 0, i32 8
  %t10 = load i32, ptr %t9, !tbaa !23
  store i32 %t10, ptr %l6, !tbaa !23
  %t12 = load i32, ptr %l6, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l1
  %t20 = load i64, ptr %l4, !tbaa !24
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v2, ptr %t18, %"compiler/source:Span" %t19, i64 %t20)
  store ptr %t24, ptr %l56
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load ptr, ptr %l56, !tbaa !29
  store ptr %t25, ptr %rv
  br label %ret
bb5:
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t28, ptr %l58
  br label %bb6
bb6:
  %t29 = load i1, ptr %l58, !tbaa !21
  br i1 %t29, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb10
bb8:
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t32, ptr %l61
  br label %bb9
bb9:
  %t33 = load i1, ptr %l61, !tbaa !21
  store i1 %t33, ptr %l59, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l59, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load i32, ptr %l6, !tbaa !23
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t39 = icmp ne i32 %t35, %t36
  store i1 %t39, ptr %l62, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb13
bb13:
  %t41 = load i1, ptr %l62, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l66, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t43, ptr %l67
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t48 = extractvalue { i64, ptr } %t44, 1
  %t49 = extractvalue { i64, ptr } %t44, 0
  %t50 = add i64 %t46, %t49
  %t51 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t53 = add i64 %t50, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t45, i64 %t46)
  %t55 = getelementptr i8, ptr %t54, i64 %t46
  call void @olang_textcopy(ptr %t55, ptr %t48, i64 %t49)
  %t56 = getelementptr i8, ptr %t55, i64 %t49
  call void @olang_textcopy(ptr %t56, ptr %t51, i64 %t52)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t54, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } %t58, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l70, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l6, !tbaa !23
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t66, i32 %t67)
  store { i64, ptr } %t70, ptr %l73
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t71 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t80 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneMaskBool(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t78, { i64, ptr } %t77)
  store %"compiler/diagmsg:Msg" %t80, ptr %l75
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l66, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l67
  %t83 = load %"compiler/diagmsg:Msg", ptr %l75
  %t84 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t81, %"compiler/source:Span" %t82, %"compiler/diagmsg:Msg" %t83)
  store i64 %t84, ptr %l76
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t85, %"compiler/source:Span" %t86)
  store ptr %t89, ptr %l79
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t90 = load ptr, ptr %l79, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 37
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t93)
  store i64 %t95, ptr %l82
  br label %bb21
bb21:
  %t96 = load i64, ptr %l82, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l1
  %t99 = load i64, ptr %l4, !tbaa !24
  %t103 = call %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v2, ptr %t97, %"compiler/source:Span" %t98, i64 %t99)
  store %"compiler/check:laneVals" %t103, ptr %l86
  br label %bb22
bb22:
  %t104 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 80, i64 8)
  store ptr %t104, ptr %lp8
  %t105 = load %"compiler/check:laneVals", ptr %l86
  %t106 = load ptr, ptr %lp8
  store %"compiler/check:laneVals" %t105, ptr %t106
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l1
  %t109 = load i64, ptr %l4, !tbaa !24
  %t110 = load ptr, ptr %lp8
  %t115 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneCount(ptr %v0, ptr %v2, ptr %v2, ptr %t107, %"compiler/source:Span" %t108, i64 %t109, ptr %t110)
  store ptr %t115, ptr %l91
  br label %bb23
bb23:
  %t116 = load ptr, ptr %l91, !tbaa !29
  store ptr %t116, ptr %l9, !tbaa !29
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t117, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t119, ptr %l93
  br label %bb24
bb24:
  %t120 = load i1, ptr %l93, !tbaa !21
  br i1 %t120, label %bb25, label %bb26
bb25:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l1
  %t123 = load i32, ptr %l6, !tbaa !23
  %t127 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t121, %"compiler/source:Span" %t122, i32 %t123)
  store i64 %t127, ptr %l97
  br label %bb27
bb26:
  br label %bb41
bb27:
  %t128 = load i64, ptr %l97, !tbaa !24
  store i64 %t128, ptr %l10, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l98, !tbaa !29
  %t130 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t130, ptr %l99
  %t131 = load i64, ptr %l10, !tbaa !24
  %t133 = trunc i64 %t131 to i32
  store i32 %t133, ptr %l102, !tbaa !23
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l1
  %t137 = load i32, ptr %l6, !tbaa !23
  %t141 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t135, %"compiler/source:Span" %t136, i32 %t137)
  store ptr %t141, ptr %l106
  br label %bb28
bb28:
  store { i64, [3 x i64] } zeroinitializer, ptr %t142
  %t143 = getelementptr { i64, [3 x i64] }, ptr %t142, i32 0, i32 0
  store i64 0, ptr %t143
  %t144 = load %"compiler/source:Span", ptr %l99
  %t145 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t144, 0
  %t146 = load i32, ptr %l102, !tbaa !23
  %t147 = insertvalue { %"compiler/source:Span", i32, ptr } %t145, i32 %t146, 1
  %t148 = load ptr, ptr %l106, !tbaa !29
  %t149 = insertvalue { %"compiler/source:Span", i32, ptr } %t147, ptr %t148, 2
  %t150 = getelementptr { i64, [3 x i64] }, ptr %t142, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t149, ptr %t150
  %t151 = load { i64, [3 x i64] }, ptr %t142
  %t153 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t151, ptr %t153
  %t154 = load ptr, ptr %l98, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t154, ptr %t153)
  br label %bb29
bb29:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  %t158 = load ptr, ptr %l9, !tbaa !29
  %t162 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v2, ptr %t156, %"compiler/source:Span" %t157, ptr %t158, i64 0)
  store { i64, i64, i64, i64, i64 } %t162, ptr %l112
  br label %bb30
bb30:
  %t163 = load { i64, i64, i64, i64, i64 }, ptr %l112
  store { i64, i64, i64, i64, i64 } %t163, ptr %l11
  %t164 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l11, i32 0, i32 0
  %t165 = load i64, ptr %t164, !tbaa !24
  store i64 %t165, ptr %l12, !tbaa !24
  %t167 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l11, i32 0, i32 1
  %t168 = load i64, ptr %t167, !tbaa !24
  store i64 %t168, ptr %l13, !tbaa !24
  %t170 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l11, i32 0, i32 2
  %t171 = load i64, ptr %t170, !tbaa !24
  store i64 %t171, ptr %l14, !tbaa !24
  %t173 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l11, i32 0, i32 3
  %t174 = load i64, ptr %t173, !tbaa !24
  store i64 %t174, ptr %l15, !tbaa !24
  %t176 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l11, i32 0, i32 4
  %t177 = load i64, ptr %t176, !tbaa !24
  store i64 %t177, ptr %l16, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l118, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t180, ptr %l119
  %t181 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t181, ptr %l120
  store i32 68, ptr %l121
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load %"compiler/source:Span", ptr %l1
  %t184 = load i64, ptr %l10, !tbaa !24
  %t188 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t182, %"compiler/source:Span" %t183, i64 %t184)
  store ptr %t188, ptr %l125
  br label %bb31
bb31:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l126, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t190, ptr %l127
  %t191 = load i64, ptr %l4, !tbaa !24
  store i64 %t191, ptr %l128, !tbaa !24
  %t192 = load ptr, ptr %lp8
  store ptr %t192, ptr %l129, !tbaa !29
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l1
  %t195 = load i64, ptr %l12, !tbaa !24
  %t199 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t193, %"compiler/source:Span" %t194, i64 %t195)
  store ptr %t199, ptr %l133
  br label %bb32
bb32:
  %t200 = load ptr, ptr %l126, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l127
  %t202 = load i64, ptr %l128, !tbaa !24
  %t203 = load ptr, ptr %l129, !tbaa !29
  %t204 = load ptr, ptr %l133, !tbaa !29
  %t205 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %t200, %"compiler/source:Span" %t201, i64 %t202, ptr %t203, ptr %t204)
  store ptr %t205, ptr %l134
  br label %bb33
bb33:
  %t206 = load %"compiler/source:Span", ptr %l1
  %t207 = load %"compiler/source:Span", ptr %l1
  %t208 = load ptr, ptr %l118, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l119
  %t210 = load %"compiler/source:Span", ptr %l120
  %t211 = load i32, ptr %l121, !range !{i32 0, i32 114}
  %t212 = load ptr, ptr %l125, !tbaa !29
  %t213 = load ptr, ptr %l134, !tbaa !29
  %t216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t208, %"compiler/source:Span" %t209, %"compiler/source:Span" %t210, i32 %t211, ptr %t212, ptr %t213, %"compiler/source:Span" %t206, %"compiler/source:Span" %t207)
  store ptr %t216, ptr %l137
  br label %bb34
bb34:
  %t217 = load ptr, ptr %l137, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l138, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t219, ptr %l139
  %t220 = load %"compiler/source:Span", ptr %l1
  %t221 = load i32, ptr %l6, !tbaa !23
  %t222 = load i64, ptr %l10, !tbaa !24
  %t224 = trunc i64 %t222 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t226
  %t227 = getelementptr { i64, [4 x i64] }, ptr %t226, i32 0, i32 0
  store i64 0, ptr %t227
  %t229 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t220, 0
  %t231 = insertvalue { %"compiler/source:Span", i32, i32 } %t229, i32 %t221, 1
  %t233 = insertvalue { %"compiler/source:Span", i32, i32 } %t231, i32 %t224, 2
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t226, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t233, ptr %t234
  %t235 = load { i64, [4 x i64] }, ptr %t226
  %t237 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t235, ptr %t237
  store ptr %t237, ptr %l146, !tbaa !29
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l6, !tbaa !23
  %t241 = load %"compiler/source:Span", ptr %l1
  %t246 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t238, ptr %t217, i32 %t240, %"compiler/source:Span" %t241)
  store ptr %t246, ptr %l151
  br label %bb35
bb35:
  store { i64, [3 x i64] } zeroinitializer, ptr %t247
  %t248 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 0
  store i64 1, ptr %t248
  %t249 = load %"compiler/source:Span", ptr %l139
  %t250 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t249, 0
  %t251 = load ptr, ptr %l146, !tbaa !29
  %t252 = insertvalue { %"compiler/source:Span", ptr, ptr } %t250, ptr %t251, 1
  %t253 = load ptr, ptr %l151, !tbaa !29
  %t254 = insertvalue { %"compiler/source:Span", ptr, ptr } %t252, ptr %t253, 2
  %t255 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t254, ptr %t255
  %t256 = load { i64, [3 x i64] }, ptr %t247
  %t258 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t256, ptr %t258
  %t259 = load ptr, ptr %l138, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t259, ptr %t258)
  br label %bb36
bb36:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l1
  %t263 = load i64, ptr %l12, !tbaa !24
  %t264 = load i64, ptr %l13, !tbaa !24
  %t265 = load i64, ptr %l14, !tbaa !24
  %t266 = load i64, ptr %l15, !tbaa !24
  %t267 = load i64, ptr %l16, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t261, %"compiler/source:Span" %t262, i64 %t263, i64 %t264, i64 %t265, i64 %t266, i64 %t267)
  br label %bb37
bb37:
  %t275 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t275, ptr %l161
  %t276 = load i32, ptr %l6, !tbaa !23
  store i32 %t276, ptr %l162, !tbaa !23
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/check:Checker", ptr %t277, i32 0, i32 37
  %t280 = load i64, ptr %l7, !tbaa !24
  %t283 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t279, i64 %t280)
  store { i64, ptr } %t283, ptr %l166
  br label %bb38
bb38:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l1
  %t286 = load i64, ptr %l10, !tbaa !24
  %t290 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t284, %"compiler/source:Span" %t285, i64 %t286)
  store ptr %t290, ptr %l170
  br label %bb39
bb39:
  %t291 = load ptr, ptr %l170, !tbaa !29
  %t292 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t294 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t292, ptr %t291, i1 false)
  store %"compiler/typed:Seq" %t294, ptr %l172
  br label %bb40
bb40:
  %t295 = load %"compiler/typed:Seq", ptr %l172
  %t296 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t295, ptr %t296
  store { i64, [5 x i64] } zeroinitializer, ptr %t297
  %t298 = getelementptr { i64, [5 x i64] }, ptr %t297, i32 0, i32 0
  store i64 12, ptr %t298
  %t299 = load %"compiler/source:Span", ptr %l161
  %t300 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t299, 0
  %t301 = load i32, ptr %l162, !tbaa !23
  %t302 = insertvalue { %"compiler/source:Span", i32, ptr } %t300, i32 %t301, 1
  %t304 = insertvalue { %"compiler/source:Span", i32, ptr } %t302, ptr %t296, 2
  %t305 = getelementptr { i64, [5 x i64] }, ptr %t297, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t304, ptr %t305
  %t306 = load { i64, [5 x i64] }, ptr %t297
  %t308 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t306, ptr %t308
  call void @__olang_scope_close(ptr %s0)
  store ptr %t308, ptr %rv
  br label %ret
bb41:
  %t310 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t312 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t310, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t312, ptr %l177
  br label %bb42
bb42:
  %t313 = load i1, ptr %l177, !tbaa !21
  br i1 %t313, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb46
bb44:
  %t314 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t314, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t316, ptr %l180
  br label %bb45
bb45:
  %t317 = load i1, ptr %l180, !tbaa !21
  store i1 %t317, ptr %l178, !tbaa !21
  br label %bb46
bb46:
  %t318 = load i1, ptr %l178, !tbaa !21
  br i1 %t318, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s5
  %t319 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t321 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s5, { i64, ptr } %t319, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t321, ptr %l182
  br label %bb49
bb48:
  br label %bb79
bb49:
  %t322 = load i1, ptr %l182, !tbaa !21
  store i1 %t322, ptr %l18, !tbaa !21
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load %"compiler/source:Span", ptr %l1
  %t325 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t329 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t323, %"compiler/source:Span" %t324, i32 %t325)
  store i64 %t329, ptr %l186
  br label %bb50
bb50:
  %t330 = load i64, ptr %l186, !tbaa !24
  store i64 %t330, ptr %l19, !tbaa !24
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l187, !tbaa !29
  %t332 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t332, ptr %l188
  %t333 = load i64, ptr %l19, !tbaa !24
  %t335 = trunc i64 %t333 to i32
  store i32 %t335, ptr %l191, !tbaa !23
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l192, !tbaa !29
  %t338 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t338, ptr %l193
  %t339 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t339, ptr %l194, !tbaa !23
  %t340 = load i1, ptr %l18, !tbaa !21
  br i1 %t340, label %bb51, label %bb52
bb51:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb53
bb52:
  store i64 1, ptr %l196, !tbaa !24
  br label %bb53
bb53:
  %t342 = load ptr, ptr %l192, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l193
  %t344 = load i32, ptr %l194, !tbaa !23
  %t345 = load i64, ptr %l196, !tbaa !24
  %t346 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t342, %"compiler/source:Span" %t343, i32 %t344, i64 %t345)
  store ptr %t346, ptr %l197
  br label %bb54
bb54:
  store { i64, [3 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [3 x i64] }, ptr %t347, i32 0, i32 0
  store i64 0, ptr %t348
  %t349 = load %"compiler/source:Span", ptr %l188
  %t350 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t349, 0
  %t351 = load i32, ptr %l191, !tbaa !23
  %t352 = insertvalue { %"compiler/source:Span", i32, ptr } %t350, i32 %t351, 1
  %t353 = load ptr, ptr %l197, !tbaa !29
  %t354 = insertvalue { %"compiler/source:Span", i32, ptr } %t352, ptr %t353, 2
  %t355 = getelementptr { i64, [3 x i64] }, ptr %t347, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t354, ptr %t355
  %t356 = load { i64, [3 x i64] }, ptr %t347
  %t358 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t356, ptr %t358
  %t359 = load ptr, ptr %l187, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t359, ptr %t358)
  br label %bb55
bb55:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load %"compiler/source:Span", ptr %l1
  %t363 = load ptr, ptr %l9, !tbaa !29
  %t367 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v2, ptr %t361, %"compiler/source:Span" %t362, ptr %t363, i64 0)
  store { i64, i64, i64, i64, i64 } %t367, ptr %l203
  br label %bb56
bb56:
  %t368 = load { i64, i64, i64, i64, i64 }, ptr %l203
  store { i64, i64, i64, i64, i64 } %t368, ptr %l20
  %t369 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l20, i32 0, i32 0
  %t370 = load i64, ptr %t369, !tbaa !24
  store i64 %t370, ptr %l21, !tbaa !24
  %t372 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l20, i32 0, i32 1
  %t373 = load i64, ptr %t372, !tbaa !24
  store i64 %t373, ptr %l22, !tbaa !24
  %t375 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l20, i32 0, i32 2
  %t376 = load i64, ptr %t375, !tbaa !24
  store i64 %t376, ptr %l23, !tbaa !24
  %t378 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l20, i32 0, i32 3
  %t379 = load i64, ptr %t378, !tbaa !24
  store i64 %t379, ptr %l24, !tbaa !24
  %t381 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l20, i32 0, i32 4
  %t382 = load i64, ptr %t381, !tbaa !24
  store i64 %t382, ptr %l25, !tbaa !24
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l209, !tbaa !29
  %t385 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t385, ptr %l210
  %t386 = load i64, ptr %l4, !tbaa !24
  store i64 %t386, ptr %l211, !tbaa !24
  %t387 = load ptr, ptr %lp8
  store ptr %t387, ptr %l212, !tbaa !29
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load %"compiler/source:Span", ptr %l1
  %t390 = load i64, ptr %l21, !tbaa !24
  %t394 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t388, %"compiler/source:Span" %t389, i64 %t390)
  store ptr %t394, ptr %l216
  br label %bb57
bb57:
  %t395 = load ptr, ptr %l209, !tbaa !29
  %t396 = load %"compiler/source:Span", ptr %l210
  %t397 = load i64, ptr %l211, !tbaa !24
  %t398 = load ptr, ptr %l212, !tbaa !29
  %t399 = load ptr, ptr %l216, !tbaa !29
  %t400 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t395, %"compiler/source:Span" %t396, i64 %t397, ptr %t398, ptr %t399)
  store ptr %t400, ptr %l217
  br label %bb58
bb58:
  %t401 = load ptr, ptr %l217, !tbaa !29
  store ptr %t401, ptr %l26, !tbaa !29
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/check:Checker", ptr %t402, i32 0, i32 37
  %t406 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t404)
  store i64 %t406, ptr %l220
  br label %bb59
bb59:
  %t407 = load i64, ptr %l220, !tbaa !24
  store i64 %t407, ptr %l27, !tbaa !24
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/check:Checker", ptr %t408, i32 0, i32 37
  store ptr %t410, ptr %l222, !tbaa !29
  %t411 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t411, ptr %l223
  %t412 = load %"compiler/source:Span", ptr %l1
  %t413 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t414 = load i64, ptr %l19, !tbaa !24
  %t416 = trunc i64 %t414 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t418
  %t419 = getelementptr { i64, [4 x i64] }, ptr %t418, i32 0, i32 0
  store i64 0, ptr %t419
  %t421 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t412, 0
  %t423 = insertvalue { %"compiler/source:Span", i32, i32 } %t421, i32 %t413, 1
  %t425 = insertvalue { %"compiler/source:Span", i32, i32 } %t423, i32 %t416, 2
  %t426 = getelementptr { i64, [4 x i64] }, ptr %t418, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t425, ptr %t426
  %t427 = load { i64, [4 x i64] }, ptr %t418
  %t429 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t427, ptr %t429
  store ptr %t429, ptr %l230, !tbaa !29
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l231, !tbaa !29
  %t431 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t431, ptr %l232
  %t432 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t432, ptr %l233, !tbaa !23
  %t433 = load i1, ptr %l18, !tbaa !21
  br i1 %t433, label %bb60, label %bb61
bb60:
  store i64 1, ptr %l235, !tbaa !24
  br label %bb62
bb61:
  store i64 0, ptr %l235, !tbaa !24
  br label %bb62
bb62:
  %t435 = load ptr, ptr %l231, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l232
  %t437 = load i32, ptr %l233, !tbaa !23
  %t438 = load i64, ptr %l235, !tbaa !24
  %t439 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t435, %"compiler/source:Span" %t436, i32 %t437, i64 %t438)
  store ptr %t439, ptr %l236
  br label %bb63
bb63:
  store { i64, [3 x i64] } zeroinitializer, ptr %t440
  %t441 = getelementptr { i64, [3 x i64] }, ptr %t440, i32 0, i32 0
  store i64 1, ptr %t441
  %t442 = load %"compiler/source:Span", ptr %l223
  %t443 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t442, 0
  %t444 = load ptr, ptr %l230, !tbaa !29
  %t445 = insertvalue { %"compiler/source:Span", ptr, ptr } %t443, ptr %t444, 1
  %t446 = load ptr, ptr %l236, !tbaa !29
  %t447 = insertvalue { %"compiler/source:Span", ptr, ptr } %t445, ptr %t446, 2
  %t448 = getelementptr { i64, [3 x i64] }, ptr %t440, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t447, ptr %t448
  %t449 = load { i64, [3 x i64] }, ptr %t440
  %t451 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t449, ptr %t451
  %t452 = load ptr, ptr %l222, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t452, ptr %t451)
  br label %bb64
bb64:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/check:Checker", ptr %t454, i32 0, i32 37
  %t457 = load %"compiler/source:Span", ptr %l1
  %t458 = load i64, ptr %l22, !tbaa !24
  %t460 = trunc i64 %t458 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t462
  %t463 = getelementptr { i64, [3 x i64] }, ptr %t462, i32 0, i32 0
  store i64 5, ptr %t463
  %t465 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t457, 0
  %t467 = insertvalue { %"compiler/source:Span", i32, i32 } %t465, i32 0, 1
  %t469 = insertvalue { %"compiler/source:Span", i32, i32 } %t467, i32 %t460, 2
  %t470 = getelementptr { i64, [3 x i64] }, ptr %t462, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t469, ptr %t470
  %t471 = load { i64, [3 x i64] }, ptr %t462
  %t473 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t471, ptr %t473
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t456, ptr %t473)
  br label %bb65
bb65:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t476)
  store ptr %t478, ptr %l249
  br label %bb66
bb66:
  %t479 = load ptr, ptr %l249, !tbaa !29
  %t481 = getelementptr %"compiler/check:frame", ptr %t479, i32 0, i32 7
  %t482 = load i64, ptr %t481, !tbaa !24
  %t484 = trunc i64 %t482 to i32
  store i32 %t484, ptr %l253, !tbaa !23
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = getelementptr %"compiler/check:Checker", ptr %t486, i32 0, i32 37
  %t489 = load i64, ptr %l27, !tbaa !24
  %t492 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t488, i64 %t489)
  store { i64, ptr } %t492, ptr %l257
  br label %bb67
bb67:
  %t493 = load i32, ptr %l253, !tbaa !23
  %t494 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t495 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 %t493, { i64, ptr } %t494)
  store %"compiler/typed:Block" %t495, ptr %l258
  br label %bb68
bb68:
  %t496 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t496, ptr %lp28
  %t497 = load %"compiler/typed:Block", ptr %l258
  %t498 = load ptr, ptr %lp28
  store %"compiler/typed:Block" %t497, ptr %t498
  %t499 = load ptr, ptr %l0, !tbaa !29
  store ptr %t499, ptr %l259, !tbaa !29
  %t500 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t500, ptr %l260
  %t501 = load i1, ptr %l18, !tbaa !21
  br i1 %t501, label %bb69, label %bb70
bb69:
  %t503 = load ptr, ptr %l26, !tbaa !29
  store ptr %t503, ptr %l262, !tbaa !29
  br label %bb72
bb70:
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t506 = load %"compiler/source:Span", ptr %l1
  %t507 = load ptr, ptr %l26, !tbaa !29
  %t511 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v2, ptr %v2, ptr %t505, %"compiler/source:Span" %t506, ptr %t507)
  store ptr %t511, ptr %l267
  br label %bb71
bb71:
  %t512 = load ptr, ptr %l267, !tbaa !29
  store ptr %t512, ptr %l262, !tbaa !29
  br label %bb72
bb72:
  %t513 = load ptr, ptr %lp28
  %t514 = load ptr, ptr %l262, !tbaa !29
  %t516 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v0, ptr %t514, ptr %t513, ptr null)
  store %"compiler/typed:If" %t516, ptr %l269
  br label %bb73
bb73:
  %t517 = load %"compiler/typed:If", ptr %l269
  %t518 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t517, ptr %t518
  store { i64, [3 x i64] } zeroinitializer, ptr %t519
  %t520 = getelementptr { i64, [3 x i64] }, ptr %t519, i32 0, i32 0
  store i64 3, ptr %t520
  %t521 = load %"compiler/source:Span", ptr %l260
  %t522 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t521, 0
  %t524 = insertvalue { %"compiler/source:Span", ptr } %t522, ptr %t518, 1
  %t525 = getelementptr { i64, [3 x i64] }, ptr %t519, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t524, ptr %t525
  %t526 = load { i64, [3 x i64] }, ptr %t519
  %t528 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t526, ptr %t528
  %t529 = load ptr, ptr %l259, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t529, ptr %t528)
  br label %bb74
bb74:
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t532 = load %"compiler/source:Span", ptr %l1
  %t533 = load i64, ptr %l21, !tbaa !24
  %t534 = load i64, ptr %l22, !tbaa !24
  %t535 = load i64, ptr %l23, !tbaa !24
  %t536 = load i64, ptr %l24, !tbaa !24
  %t537 = load i64, ptr %l25, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t531, %"compiler/source:Span" %t532, i64 %t533, i64 %t534, i64 %t535, i64 %t536, i64 %t537)
  br label %bb75
bb75:
  %t545 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t545, ptr %l280
  %t546 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t546, ptr %l281, !tbaa !23
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/check:Checker", ptr %t547, i32 0, i32 37
  %t550 = load i64, ptr %l7, !tbaa !24
  %t553 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t549, i64 %t550)
  store { i64, ptr } %t553, ptr %l285
  br label %bb76
bb76:
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t555 = load %"compiler/source:Span", ptr %l1
  %t556 = load i64, ptr %l19, !tbaa !24
  %t560 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t554, %"compiler/source:Span" %t555, i64 %t556)
  store ptr %t560, ptr %l289
  br label %bb77
bb77:
  %t561 = load ptr, ptr %l289, !tbaa !29
  %t562 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t564 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t562, ptr %t561, i1 false)
  store %"compiler/typed:Seq" %t564, ptr %l291
  br label %bb78
bb78:
  %t565 = load %"compiler/typed:Seq", ptr %l291
  %t566 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t565, ptr %t566
  store { i64, [5 x i64] } zeroinitializer, ptr %t567
  %t568 = getelementptr { i64, [5 x i64] }, ptr %t567, i32 0, i32 0
  store i64 12, ptr %t568
  %t569 = load %"compiler/source:Span", ptr %l280
  %t570 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t569, 0
  %t571 = load i32, ptr %l281, !tbaa !23
  %t572 = insertvalue { %"compiler/source:Span", i32, ptr } %t570, i32 %t571, 1
  %t574 = insertvalue { %"compiler/source:Span", i32, ptr } %t572, ptr %t566, 2
  %t575 = getelementptr { i64, [5 x i64] }, ptr %t567, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t574, ptr %t575
  %t576 = load { i64, [5 x i64] }, ptr %t567
  %t578 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t576, ptr %t578
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t578, ptr %rv
  br label %ret
bb79:
  %t580 = load ptr, ptr %l0, !tbaa !29
  store ptr %t580, ptr %l295, !tbaa !29
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t583 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t581, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d12, i32 0, i32 1) }, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d13, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i32 %t583, ptr %l297
  br label %bb80
bb80:
  %t584 = mul i64 1, 4
  %t585 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t584)
  %t586 = insertvalue { i64, ptr } undef, i64 1, 0
  %t587 = insertvalue { i64, ptr } %t586, ptr %t585, 1
  store { i64, ptr } %t587, ptr %l298, !tbaa !27
  %t588 = load i32, ptr %l297, !tbaa !23
  %t589 = getelementptr { i64, ptr }, ptr %l298, i32 0, i32 1
  %t590 = load ptr, ptr %t589, !tbaa !27
  %t591 = getelementptr i32, ptr %t590, i64 0
  store i32 %t588, ptr %t591, !tbaa !33
  %t592 = load %"compiler/source:Span", ptr %l2
  %t593 = load ptr, ptr %l295, !tbaa !29
  %t594 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t596 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %s0, ptr %t593, { i64, ptr } %t594, %"compiler/source:Span" %t592, i1 false)
  store i32 %t596, ptr %l300
  br label %bb81
bb81:
  %t597 = load i32, ptr %l300, !range !{i32 0, i32 3}
  %t598 = load ptr, ptr %l0, !tbaa !29
  store ptr %t598, ptr %l301, !tbaa !29
  %t599 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t599, ptr %l302
  %t600 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t600, ptr %l303
  %t601 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t601, ptr %l304, !tbaa !23
  store i32 39, ptr %l305
  store i32 %t597, ptr %l306
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t604 = load ptr, ptr %l9, !tbaa !29
  %t607 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v2, ptr %v0, ptr %t603, ptr %t604)
  store { i64, ptr } %t607, ptr %l309
  br label %bb82
bb82:
  store { i64, [5 x i64] } zeroinitializer, ptr %t608
  %t609 = getelementptr { i64, [5 x i64] }, ptr %t608, i32 0, i32 0
  store i64 9, ptr %t609
  %t610 = load %"compiler/source:Span", ptr %l303
  %t611 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t610, 0
  %t612 = load i32, ptr %l304, !tbaa !23
  %t613 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t611, i32 %t612, 1
  %t614 = load i32, ptr %l305, !range !{i32 0, i32 52}
  %t615 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t613, i32 %t614, 2
  %t616 = load i32, ptr %l306, !range !{i32 0, i32 3}
  %t617 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t615, i32 %t616, 3
  %t618 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t619 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t617, { i64, ptr } %t618, 4
  %t620 = getelementptr { i64, [5 x i64] }, ptr %t608, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t619, ptr %t620
  %t621 = load { i64, [5 x i64] }, ptr %t608
  %t623 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t621, ptr %t623
  store { i64, [3 x i64] } zeroinitializer, ptr %t624
  %t625 = getelementptr { i64, [3 x i64] }, ptr %t624, i32 0, i32 0
  store i64 2, ptr %t625
  %t626 = load %"compiler/source:Span", ptr %l302
  %t627 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t626, 0
  %t629 = insertvalue { %"compiler/source:Span", ptr } %t627, ptr %t623, 1
  %t630 = getelementptr { i64, [3 x i64] }, ptr %t624, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t629, ptr %t630
  %t631 = load { i64, [3 x i64] }, ptr %t624
  %t633 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t631, ptr %t633
  %t634 = load ptr, ptr %l301, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t634, ptr %t633)
  br label %bb83
bb83:
  %t636 = load ptr, ptr %l0, !tbaa !29
  store ptr %t636, ptr %l314, !tbaa !29
  %t637 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t637, ptr %l315
  %t638 = load ptr, ptr %l0, !tbaa !29
  %t640 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t638)
  store i32 %t640, ptr %l317
  br label %bb84
bb84:
  %t641 = load ptr, ptr %l314, !tbaa !29
  %t642 = load %"compiler/source:Span", ptr %l315
  %t643 = load i32, ptr %l317, !tbaa !23
  %t644 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t641, %"compiler/source:Span" %t642, i32 %t643)
  store i64 %t644, ptr %l318
  br label %bb85
bb85:
  %t645 = load i64, ptr %l318, !tbaa !24
  store i64 %t645, ptr %l30, !tbaa !24
  %t646 = load ptr, ptr %l0, !tbaa !29
  store ptr %t646, ptr %l319, !tbaa !29
  %t647 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t647, ptr %l320
  %t648 = load i64, ptr %l30, !tbaa !24
  %t650 = trunc i64 %t648 to i32
  store i32 %t650, ptr %l323, !tbaa !23
  %t652 = load ptr, ptr %l0, !tbaa !29
  store ptr %t652, ptr %l324, !tbaa !29
  %t653 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t653, ptr %l325
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t656 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t654)
  store i32 %t656, ptr %l327
  br label %bb86
bb86:
  %t657 = load ptr, ptr %l324, !tbaa !29
  %t658 = load %"compiler/source:Span", ptr %l325
  %t659 = load i32, ptr %l327, !tbaa !23
  %t660 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t657, %"compiler/source:Span" %t658, i32 %t659, i64 0)
  store ptr %t660, ptr %l328
  br label %bb87
bb87:
  store { i64, [3 x i64] } zeroinitializer, ptr %t661
  %t662 = getelementptr { i64, [3 x i64] }, ptr %t661, i32 0, i32 0
  store i64 0, ptr %t662
  %t663 = load %"compiler/source:Span", ptr %l320
  %t664 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t663, 0
  %t665 = load i32, ptr %l323, !tbaa !23
  %t666 = insertvalue { %"compiler/source:Span", i32, ptr } %t664, i32 %t665, 1
  %t667 = load ptr, ptr %l328, !tbaa !29
  %t668 = insertvalue { %"compiler/source:Span", i32, ptr } %t666, ptr %t667, 2
  %t669 = getelementptr { i64, [3 x i64] }, ptr %t661, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t668, ptr %t669
  %t670 = load { i64, [3 x i64] }, ptr %t661
  %t672 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t670, ptr %t672
  %t673 = load ptr, ptr %l319, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t673, ptr %t672)
  br label %bb88
bb88:
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t677 = getelementptr %"compiler/check:Checker", ptr %t675, i32 0, i32 1
  %t678 = load ptr, ptr %t677, !tbaa !29
  %t680 = getelementptr %"compiler/generic:Program", ptr %t678, i32 0, i32 0
  %t681 = load ptr, ptr %t680, !tbaa !29
  %t683 = getelementptr %"compiler/load:Loader", ptr %t681, i32 0, i32 4
  %t684 = load ptr, ptr %t683, !tbaa !29
  %t686 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t684)
  store i64 %t686, ptr %l335
  br label %bb89
bb89:
  %t687 = load i64, ptr %l335, !tbaa !24
  store i64 %t687, ptr %l31, !tbaa !24
  %t688 = load ptr, ptr %l0, !tbaa !29
  store ptr %t688, ptr %l336, !tbaa !29
  %t689 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t689, ptr %l337
  %t690 = load i64, ptr %l4, !tbaa !24
  store i64 %t690, ptr %l338, !tbaa !24
  %t691 = load ptr, ptr %lp8
  store ptr %t691, ptr %l339, !tbaa !29
  %t692 = load ptr, ptr %l0, !tbaa !29
  %t693 = load %"compiler/source:Span", ptr %l1
  %t694 = load i64, ptr %l30, !tbaa !24
  %t698 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t692, %"compiler/source:Span" %t693, i64 %t694)
  store ptr %t698, ptr %l343
  br label %bb90
bb90:
  %t699 = load ptr, ptr %l336, !tbaa !29
  %t700 = load %"compiler/source:Span", ptr %l337
  %t701 = load i64, ptr %l338, !tbaa !24
  %t702 = load ptr, ptr %l339, !tbaa !29
  %t703 = load ptr, ptr %l343, !tbaa !29
  %t704 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t699, %"compiler/source:Span" %t700, i64 %t701, ptr %t702, ptr %t703)
  store ptr %t704, ptr %l344
  br label %bb91
bb91:
  %t705 = load ptr, ptr %l344, !tbaa !29
  store ptr %t705, ptr %l32, !tbaa !29
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/check:Checker", ptr %t706, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t711 = getelementptr %"compiler/generic:Program", ptr %t709, i32 0, i32 0
  %t712 = load ptr, ptr %t711, !tbaa !29
  %t714 = getelementptr %"compiler/load:Loader", ptr %t712, i32 0, i32 4
  %t715 = load ptr, ptr %t714, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t715)
  br label %bb92
bb92:
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t719 = getelementptr %"compiler/check:Checker", ptr %t717, i32 0, i32 1
  %t720 = load ptr, ptr %t719, !tbaa !29
  %t722 = getelementptr %"compiler/generic:Program", ptr %t720, i32 0, i32 0
  %t723 = load ptr, ptr %t722, !tbaa !29
  %t725 = getelementptr %"compiler/load:Loader", ptr %t723, i32 0, i32 4
  %t726 = load ptr, ptr %t725, !tbaa !29
  %t727 = load i64, ptr %l31, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t726, i64 %t727)
  br label %bb93
bb93:
  %t730 = load ptr, ptr %l0, !tbaa !29
  %t731 = load %"compiler/source:Span", ptr %l1
  %t732 = load i32, ptr %l6, !tbaa !23
  %t736 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t730, %"compiler/source:Span" %t731, i32 %t732)
  store i64 %t736, ptr %l357
  br label %bb94
bb94:
  %t737 = load i64, ptr %l357, !tbaa !24
  store i64 %t737, ptr %l33, !tbaa !24
  %t738 = load ptr, ptr %l0, !tbaa !29
  store ptr %t738, ptr %l358, !tbaa !29
  %t739 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t739, ptr %l359
  %t740 = load i64, ptr %l33, !tbaa !24
  %t742 = trunc i64 %t740 to i32
  store i32 %t742, ptr %l362, !tbaa !23
  %t744 = load ptr, ptr %l0, !tbaa !29
  %t745 = load ptr, ptr %l32, !tbaa !29
  %t746 = load i32, ptr %l6, !tbaa !23
  %t747 = load %"compiler/source:Span", ptr %l1
  %t752 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t744, ptr %t745, i32 %t746, %"compiler/source:Span" %t747)
  store ptr %t752, ptr %l367
  br label %bb95
bb95:
  store { i64, [3 x i64] } zeroinitializer, ptr %t753
  %t754 = getelementptr { i64, [3 x i64] }, ptr %t753, i32 0, i32 0
  store i64 0, ptr %t754
  %t755 = load %"compiler/source:Span", ptr %l359
  %t756 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t755, 0
  %t757 = load i32, ptr %l362, !tbaa !23
  %t758 = insertvalue { %"compiler/source:Span", i32, ptr } %t756, i32 %t757, 1
  %t759 = load ptr, ptr %l367, !tbaa !29
  %t760 = insertvalue { %"compiler/source:Span", i32, ptr } %t758, ptr %t759, 2
  %t761 = getelementptr { i64, [3 x i64] }, ptr %t753, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t760, ptr %t761
  %t762 = load { i64, [3 x i64] }, ptr %t753
  %t764 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t762, ptr %t764
  %t765 = load ptr, ptr %l358, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t765, ptr %t764)
  br label %bb96
bb96:
  %t767 = load ptr, ptr %l0, !tbaa !29
  store ptr %t767, ptr %l370, !tbaa !29
  %t768 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t768, ptr %l371
  %t769 = load ptr, ptr %l0, !tbaa !29
  %t770 = load %"compiler/source:Span", ptr %l1
  %t771 = load i64, ptr %l4, !tbaa !24
  %t772 = load ptr, ptr %lp8
  %t777 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneCount(ptr %v0, ptr %v2, ptr %v0, ptr %t769, %"compiler/source:Span" %t770, i64 %t771, ptr %t772)
  store ptr %t777, ptr %l376
  br label %bb97
bb97:
  %t778 = load ptr, ptr %l370, !tbaa !29
  %t779 = load %"compiler/source:Span", ptr %l371
  %t780 = load ptr, ptr %l376, !tbaa !29
  %t781 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t778, %"compiler/source:Span" %t779, ptr %t780, i64 1)
  store { i64, i64, i64, i64, i64 } %t781, ptr %l377
  br label %bb98
bb98:
  %t782 = load { i64, i64, i64, i64, i64 }, ptr %l377
  store { i64, i64, i64, i64, i64 } %t782, ptr %l34
  %t783 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l34, i32 0, i32 0
  %t784 = load i64, ptr %t783, !tbaa !24
  store i64 %t784, ptr %l35, !tbaa !24
  %t786 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l34, i32 0, i32 1
  %t787 = load i64, ptr %t786, !tbaa !24
  store i64 %t787, ptr %l36, !tbaa !24
  %t789 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l34, i32 0, i32 2
  %t790 = load i64, ptr %t789, !tbaa !24
  store i64 %t790, ptr %l37, !tbaa !24
  %t792 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l34, i32 0, i32 3
  %t793 = load i64, ptr %t792, !tbaa !24
  store i64 %t793, ptr %l38, !tbaa !24
  %t795 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l34, i32 0, i32 4
  %t796 = load i64, ptr %t795, !tbaa !24
  store i64 %t796, ptr %l39, !tbaa !24
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t799 = load %"compiler/source:Span", ptr %l1
  %t800 = load i32, ptr %l6, !tbaa !23
  %t804 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t798, %"compiler/source:Span" %t799, i32 %t800)
  store i64 %t804, ptr %l386
  br label %bb99
bb99:
  %t805 = load i64, ptr %l386, !tbaa !24
  store i64 %t805, ptr %l40, !tbaa !24
  %t806 = load ptr, ptr %l0, !tbaa !29
  store ptr %t806, ptr %l387, !tbaa !29
  %t807 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t807, ptr %l388
  %t808 = load i64, ptr %l40, !tbaa !24
  %t810 = trunc i64 %t808 to i32
  store i32 %t810, ptr %l391, !tbaa !23
  %t812 = load ptr, ptr %l0, !tbaa !29
  store ptr %t812, ptr %l392, !tbaa !29
  %t813 = load ptr, ptr %l0, !tbaa !29
  store ptr %t813, ptr %l393, !tbaa !29
  %t814 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t814, ptr %l394
  %t815 = load i64, ptr %l4, !tbaa !24
  store i64 %t815, ptr %l395, !tbaa !24
  %t816 = load ptr, ptr %lp8
  store ptr %t816, ptr %l396, !tbaa !29
  %t817 = load ptr, ptr %l0, !tbaa !29
  %t818 = load %"compiler/source:Span", ptr %l1
  %t819 = load i64, ptr %l35, !tbaa !24
  %t823 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t817, %"compiler/source:Span" %t818, i64 %t819)
  store ptr %t823, ptr %l400
  br label %bb100
bb100:
  %t824 = load ptr, ptr %l393, !tbaa !29
  %t825 = load %"compiler/source:Span", ptr %l394
  %t826 = load i64, ptr %l395, !tbaa !24
  %t827 = load ptr, ptr %l396, !tbaa !29
  %t828 = load ptr, ptr %l400, !tbaa !29
  %t829 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %t824, %"compiler/source:Span" %t825, i64 %t826, ptr %t827, ptr %t828)
  store ptr %t829, ptr %l401
  br label %bb101
bb101:
  %t830 = load i32, ptr %l6, !tbaa !23
  %t831 = load %"compiler/source:Span", ptr %l1
  %t832 = load ptr, ptr %l392, !tbaa !29
  %t833 = load ptr, ptr %l401, !tbaa !29
  %t836 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t832, ptr %t833, i32 %t830, %"compiler/source:Span" %t831)
  store ptr %t836, ptr %l404
  br label %bb102
bb102:
  store { i64, [3 x i64] } zeroinitializer, ptr %t837
  %t838 = getelementptr { i64, [3 x i64] }, ptr %t837, i32 0, i32 0
  store i64 0, ptr %t838
  %t839 = load %"compiler/source:Span", ptr %l388
  %t840 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t839, 0
  %t841 = load i32, ptr %l391, !tbaa !23
  %t842 = insertvalue { %"compiler/source:Span", i32, ptr } %t840, i32 %t841, 1
  %t843 = load ptr, ptr %l404, !tbaa !29
  %t844 = insertvalue { %"compiler/source:Span", i32, ptr } %t842, ptr %t843, 2
  %t845 = getelementptr { i64, [3 x i64] }, ptr %t837, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t844, ptr %t845
  %t846 = load { i64, [3 x i64] }, ptr %t837
  %t848 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t846, ptr %t848
  %t849 = load ptr, ptr %l387, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t849, ptr %t848)
  br label %bb103
bb103:
  %t851 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t853 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t851, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t853, ptr %l408
  br label %bb104
bb104:
  %t854 = load i1, ptr %l408, !tbaa !21
  br i1 %t854, label %bb105, label %bb106
bb105:
  %t855 = load ptr, ptr %l0, !tbaa !29
  store ptr %t855, ptr %l410, !tbaa !29
  %t856 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t856, ptr %l411
  %t857 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t857, ptr %l412
  store i32 97, ptr %l413
  %t858 = load ptr, ptr %l0, !tbaa !29
  %t859 = load %"compiler/source:Span", ptr %l1
  %t860 = load i64, ptr %l40, !tbaa !24
  %t864 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t858, %"compiler/source:Span" %t859, i64 %t860)
  store ptr %t864, ptr %l417
  br label %bb107
bb106:
  %t865 = load ptr, ptr %l0, !tbaa !29
  store ptr %t865, ptr %l425, !tbaa !29
  %t866 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t866, ptr %l426
  %t867 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t867, ptr %l427
  store i32 97, ptr %l428
  %t868 = load ptr, ptr %l0, !tbaa !29
  %t869 = load %"compiler/source:Span", ptr %l1
  %t870 = load i64, ptr %l33, !tbaa !24
  %t874 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t868, %"compiler/source:Span" %t869, i64 %t870)
  store ptr %t874, ptr %l432
  br label %bb110
bb107:
  %t875 = load ptr, ptr %l0, !tbaa !29
  %t876 = load %"compiler/source:Span", ptr %l1
  %t877 = load i64, ptr %l33, !tbaa !24
  %t881 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t875, %"compiler/source:Span" %t876, i64 %t877)
  store ptr %t881, ptr %l421
  br label %bb108
bb108:
  %t882 = load %"compiler/source:Span", ptr %l1
  %t883 = load %"compiler/source:Span", ptr %l1
  %t884 = load ptr, ptr %l410, !tbaa !29
  %t885 = load %"compiler/source:Span", ptr %l411
  %t886 = load %"compiler/source:Span", ptr %l412
  %t887 = load i32, ptr %l413, !range !{i32 0, i32 114}
  %t888 = load ptr, ptr %l417, !tbaa !29
  %t889 = load ptr, ptr %l421, !tbaa !29
  %t892 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t884, %"compiler/source:Span" %t885, %"compiler/source:Span" %t886, i32 %t887, ptr %t888, ptr %t889, %"compiler/source:Span" %t882, %"compiler/source:Span" %t883)
  store ptr %t892, ptr %l424
  br label %bb109
bb109:
  %t893 = load ptr, ptr %l424, !tbaa !29
  store ptr %t893, ptr %l409, !tbaa !29
  br label %bb113
bb110:
  %t894 = load ptr, ptr %l0, !tbaa !29
  %t895 = load %"compiler/source:Span", ptr %l1
  %t896 = load i64, ptr %l40, !tbaa !24
  %t900 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t894, %"compiler/source:Span" %t895, i64 %t896)
  store ptr %t900, ptr %l436
  br label %bb111
bb111:
  %t901 = load %"compiler/source:Span", ptr %l1
  %t902 = load %"compiler/source:Span", ptr %l1
  %t903 = load ptr, ptr %l425, !tbaa !29
  %t904 = load %"compiler/source:Span", ptr %l426
  %t905 = load %"compiler/source:Span", ptr %l427
  %t906 = load i32, ptr %l428, !range !{i32 0, i32 114}
  %t907 = load ptr, ptr %l432, !tbaa !29
  %t908 = load ptr, ptr %l436, !tbaa !29
  %t911 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t903, %"compiler/source:Span" %t904, %"compiler/source:Span" %t905, i32 %t906, ptr %t907, ptr %t908, %"compiler/source:Span" %t901, %"compiler/source:Span" %t902)
  store ptr %t911, ptr %l439
  br label %bb112
bb112:
  %t912 = load ptr, ptr %l439, !tbaa !29
  store ptr %t912, ptr %l409, !tbaa !29
  br label %bb113
bb113:
  %t913 = load ptr, ptr %l409, !tbaa !29
  store ptr %t913, ptr %l41, !tbaa !29
  %t914 = load ptr, ptr %l0, !tbaa !29
  %t916 = getelementptr %"compiler/check:Checker", ptr %t914, i32 0, i32 1
  %t917 = load ptr, ptr %t916, !tbaa !29
  %t919 = getelementptr %"compiler/generic:Program", ptr %t917, i32 0, i32 2
  store ptr %t919, ptr %l442, !tbaa !29
  %t920 = load ptr, ptr %l0, !tbaa !29
  %t921 = load i32, ptr %l6, !tbaa !23
  %t924 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t920, i32 %t921)
  store i32 %t924, ptr %l445
  br label %bb114
bb114:
  %t925 = load ptr, ptr %l442, !tbaa !29
  %t926 = load i32, ptr %l445, !tbaa !23
  %t927 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t925, i32 %t926)
  store i1 %t927, ptr %l446
  br label %bb115
bb115:
  %t928 = load i1, ptr %l446, !tbaa !21
  br i1 %t928, label %bb116, label %bb117
bb116:
  %t929 = load ptr, ptr %l0, !tbaa !29
  store ptr %t929, ptr %l447, !tbaa !29
  %t930 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t930, ptr %l448
  %t931 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t931, ptr %l449, !tbaa !23
  store i32 14, ptr %l450
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t933 = load %"compiler/source:Span", ptr %l1
  %t934 = load i64, ptr %l40, !tbaa !24
  %t938 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t932, %"compiler/source:Span" %t933, i64 %t934)
  store ptr %t938, ptr %l454
  br label %bb118
bb117:
  br label %bb123
bb118:
  %t939 = load ptr, ptr %l0, !tbaa !29
  %t940 = load %"compiler/source:Span", ptr %l1
  %t941 = load i64, ptr %l40, !tbaa !24
  %t945 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t939, %"compiler/source:Span" %t940, i64 %t941)
  store ptr %t945, ptr %l458
  br label %bb119
bb119:
  %t946 = load ptr, ptr %l458, !tbaa !29
  %t947 = load ptr, ptr %l447, !tbaa !29
  %t948 = load %"compiler/source:Span", ptr %l448
  %t949 = load i32, ptr %l449, !tbaa !23
  %t950 = load i32, ptr %l450, !range !{i32 0, i32 52}
  %t951 = load ptr, ptr %l454, !tbaa !29
  %t953 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t947, %"compiler/source:Span" %t948, i32 %t949, i32 %t950, ptr %t951, ptr %t946)
  store ptr %t953, ptr %l460
  br label %bb120
bb120:
  %t954 = load ptr, ptr %l460, !tbaa !29
  store ptr %t954, ptr %l42, !tbaa !29
  %t955 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t955, ptr %l461
  %t956 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t956, ptr %l462, !tbaa !23
  %t957 = load ptr, ptr %l41, !tbaa !29
  store ptr %t957, ptr %l463, !tbaa !29
  %t958 = load ptr, ptr %l0, !tbaa !29
  %t959 = load %"compiler/source:Span", ptr %l1
  %t960 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t964 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t958, %"compiler/source:Span" %t959, i32 %t960, i64 1)
  store ptr %t964, ptr %l467
  br label %bb121
bb121:
  %t965 = load ptr, ptr %l467, !tbaa !29
  %t966 = load ptr, ptr %l42, !tbaa !29
  %t967 = load ptr, ptr %l463, !tbaa !29
  %t970 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t967, ptr %t965, ptr %t966)
  store %"compiler/typed:Cond" %t970, ptr %l470
  br label %bb122
bb122:
  %t971 = load %"compiler/typed:Cond", ptr %l470
  %t972 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Cond" %t971, ptr %t972
  store { i64, [5 x i64] } zeroinitializer, ptr %t973
  %t974 = getelementptr { i64, [5 x i64] }, ptr %t973, i32 0, i32 0
  store i64 11, ptr %t974
  %t975 = load %"compiler/source:Span", ptr %l461
  %t976 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t975, 0
  %t977 = load i32, ptr %l462, !tbaa !23
  %t978 = insertvalue { %"compiler/source:Span", i32, ptr } %t976, i32 %t977, 1
  %t980 = insertvalue { %"compiler/source:Span", i32, ptr } %t978, ptr %t972, 2
  %t981 = getelementptr { i64, [5 x i64] }, ptr %t973, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t980, ptr %t981
  %t982 = load { i64, [5 x i64] }, ptr %t973
  %t984 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t982, ptr %t984
  store ptr %t984, ptr %l41, !tbaa !29
  br label %bb123
bb123:
  %t986 = load ptr, ptr %l0, !tbaa !29
  %t988 = getelementptr %"compiler/check:Checker", ptr %t986, i32 0, i32 37
  %t990 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t988)
  store i64 %t990, ptr %l476
  br label %bb124
bb124:
  %t991 = load i64, ptr %l476, !tbaa !24
  store i64 %t991, ptr %l43, !tbaa !24
  %t992 = load ptr, ptr %l0, !tbaa !29
  %t994 = getelementptr %"compiler/check:Checker", ptr %t992, i32 0, i32 37
  store ptr %t994, ptr %l478, !tbaa !29
  %t995 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t995, ptr %l479
  %t996 = load %"compiler/source:Span", ptr %l1
  %t997 = load i32, ptr %l6, !tbaa !23
  %t998 = load i64, ptr %l33, !tbaa !24
  %t1000 = trunc i64 %t998 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t1002
  %t1003 = getelementptr { i64, [4 x i64] }, ptr %t1002, i32 0, i32 0
  store i64 0, ptr %t1003
  %t1005 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t996, 0
  %t1007 = insertvalue { %"compiler/source:Span", i32, i32 } %t1005, i32 %t997, 1
  %t1009 = insertvalue { %"compiler/source:Span", i32, i32 } %t1007, i32 %t1000, 2
  %t1010 = getelementptr { i64, [4 x i64] }, ptr %t1002, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t1009, ptr %t1010
  %t1011 = load { i64, [4 x i64] }, ptr %t1002
  %t1013 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t1011, ptr %t1013
  store ptr %t1013, ptr %l486, !tbaa !29
  %t1014 = load ptr, ptr %l0, !tbaa !29
  %t1015 = load %"compiler/source:Span", ptr %l1
  %t1016 = load i64, ptr %l40, !tbaa !24
  %t1020 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1014, %"compiler/source:Span" %t1015, i64 %t1016)
  store ptr %t1020, ptr %l490
  br label %bb125
bb125:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1021
  %t1022 = getelementptr { i64, [3 x i64] }, ptr %t1021, i32 0, i32 0
  store i64 1, ptr %t1022
  %t1023 = load %"compiler/source:Span", ptr %l479
  %t1024 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t1023, 0
  %t1025 = load ptr, ptr %l486, !tbaa !29
  %t1026 = insertvalue { %"compiler/source:Span", ptr, ptr } %t1024, ptr %t1025, 1
  %t1027 = load ptr, ptr %l490, !tbaa !29
  %t1028 = insertvalue { %"compiler/source:Span", ptr, ptr } %t1026, ptr %t1027, 2
  %t1029 = getelementptr { i64, [3 x i64] }, ptr %t1021, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t1028, ptr %t1029
  %t1030 = load { i64, [3 x i64] }, ptr %t1021
  %t1032 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1030, ptr %t1032
  %t1033 = load ptr, ptr %l478, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1033, ptr %t1032)
  br label %bb126
bb126:
  %t1035 = load ptr, ptr %l0, !tbaa !29
  %t1037 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1035)
  store ptr %t1037, ptr %l494
  br label %bb127
bb127:
  %t1038 = load ptr, ptr %l494, !tbaa !29
  %t1040 = getelementptr %"compiler/check:frame", ptr %t1038, i32 0, i32 7
  %t1041 = load i64, ptr %t1040, !tbaa !24
  %t1043 = trunc i64 %t1041 to i32
  store i32 %t1043, ptr %l498, !tbaa !23
  %t1045 = load ptr, ptr %l0, !tbaa !29
  %t1047 = getelementptr %"compiler/check:Checker", ptr %t1045, i32 0, i32 37
  %t1048 = load i64, ptr %l43, !tbaa !24
  %t1051 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1047, i64 %t1048)
  store { i64, ptr } %t1051, ptr %l502
  br label %bb128
bb128:
  %t1052 = load i32, ptr %l498, !tbaa !23
  %t1053 = load { i64, ptr }, ptr %l502, !tbaa !27
  %t1054 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 %t1052, { i64, ptr } %t1053)
  store %"compiler/typed:Block" %t1054, ptr %l503
  br label %bb129
bb129:
  %t1055 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t1055, ptr %lp44
  %t1056 = load %"compiler/typed:Block", ptr %l503
  %t1057 = load ptr, ptr %lp44
  store %"compiler/typed:Block" %t1056, ptr %t1057
  %t1058 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1058, ptr %l504, !tbaa !29
  %t1059 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1059, ptr %l505
  %t1060 = load ptr, ptr %l41, !tbaa !29
  %t1061 = load ptr, ptr %lp44
  %t1064 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v0, ptr %t1060, ptr %t1061, ptr null)
  store %"compiler/typed:If" %t1064, ptr %l508
  br label %bb130
bb130:
  %t1065 = load %"compiler/typed:If", ptr %l508
  %t1066 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t1065, ptr %t1066
  store { i64, [3 x i64] } zeroinitializer, ptr %t1067
  %t1068 = getelementptr { i64, [3 x i64] }, ptr %t1067, i32 0, i32 0
  store i64 3, ptr %t1068
  %t1069 = load %"compiler/source:Span", ptr %l505
  %t1070 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1069, 0
  %t1072 = insertvalue { %"compiler/source:Span", ptr } %t1070, ptr %t1066, 1
  %t1073 = getelementptr { i64, [3 x i64] }, ptr %t1067, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1072, ptr %t1073
  %t1074 = load { i64, [3 x i64] }, ptr %t1067
  %t1076 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1074, ptr %t1076
  %t1077 = load ptr, ptr %l504, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1077, ptr %t1076)
  br label %bb131
bb131:
  %t1079 = load ptr, ptr %l0, !tbaa !29
  %t1080 = load %"compiler/source:Span", ptr %l1
  %t1081 = load i64, ptr %l35, !tbaa !24
  %t1082 = load i64, ptr %l36, !tbaa !24
  %t1083 = load i64, ptr %l37, !tbaa !24
  %t1084 = load i64, ptr %l38, !tbaa !24
  %t1085 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t1079, %"compiler/source:Span" %t1080, i64 %t1081, i64 %t1082, i64 %t1083, i64 %t1084, i64 %t1085)
  br label %bb132
bb132:
  %t1093 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1093, ptr %l519
  %t1094 = load i32, ptr %l6, !tbaa !23
  store i32 %t1094, ptr %l520, !tbaa !23
  %t1095 = load ptr, ptr %l0, !tbaa !29
  %t1097 = getelementptr %"compiler/check:Checker", ptr %t1095, i32 0, i32 37
  %t1098 = load i64, ptr %l7, !tbaa !24
  %t1101 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1097, i64 %t1098)
  store { i64, ptr } %t1101, ptr %l524
  br label %bb133
bb133:
  %t1102 = load ptr, ptr %l0, !tbaa !29
  %t1103 = load %"compiler/source:Span", ptr %l1
  %t1104 = load i64, ptr %l33, !tbaa !24
  %t1108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t1102, %"compiler/source:Span" %t1103, i64 %t1104)
  store ptr %t1108, ptr %l528
  br label %bb134
bb134:
  %t1109 = load ptr, ptr %l528, !tbaa !29
  %t1110 = load { i64, ptr }, ptr %l524, !tbaa !27
  %t1112 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t1110, ptr %t1109, i1 false)
  store %"compiler/typed:Seq" %t1112, ptr %l530
  br label %bb135
bb135:
  %t1113 = load %"compiler/typed:Seq", ptr %l530
  %t1114 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t1113, ptr %t1114
  store { i64, [5 x i64] } zeroinitializer, ptr %t1115
  %t1116 = getelementptr { i64, [5 x i64] }, ptr %t1115, i32 0, i32 0
  store i64 12, ptr %t1116
  %t1117 = load %"compiler/source:Span", ptr %l519
  %t1118 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1117, 0
  %t1119 = load i32, ptr %l520, !tbaa !23
  %t1120 = insertvalue { %"compiler/source:Span", i32, ptr } %t1118, i32 %t1119, 1
  %t1122 = insertvalue { %"compiler/source:Span", i32, ptr } %t1120, ptr %t1114, 2
  %t1123 = getelementptr { i64, [5 x i64] }, ptr %t1115, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1122, ptr %t1123
  %t1124 = load { i64, [5 x i64] }, ptr %t1115
  %t1126 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t1124, ptr %t1126
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1126, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %l21 = alloca ptr
  %l26 = alloca i64
  %l31 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca ptr
  %l56 = alloca i64
  %l61 = alloca i64
  %l66 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l70 = alloca %"compiler/diagmsg:Msg"
  %l71 = alloca i64
  %l74 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l91 = alloca ptr
  %l96 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  store i1 %t12, ptr %l16
  br label %bb3
bb2:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i1, ptr %l16, !tbaa !21
  store i1 %t13, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l13, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtMatchValue(ptr %v0, ptr %v1, ptr %v2, ptr %t15, %"compiler/source:Span" %t16, ptr %t17, i32 %t18)
  store ptr %t23, ptr %l21
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t24 = load ptr, ptr %l21, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Match", ptr %t25, i32 0, i32 2
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchOnType(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  store i64 %t34, ptr %l26
  br label %bb11
bb10:
  br label %bb24
bb11:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp slt i64 %t36, 0
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l1
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t40, %"compiler/source:Span" %t41)
  store ptr %t44, ptr %l31
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  %t45 = load ptr, ptr %l31, !tbaa !29
  store ptr %t45, ptr %rv
  br label %ret
bb15:
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/ast:Match", ptr %t46, i32 0, i32 3
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l33, !tbaa !27
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr ptr, ptr %t53, i64 %t50
  %t55 = load ptr, ptr %t54, !tbaa !39
  store ptr %t55, ptr %l5, !tbaa !29
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Case", ptr %t57, i32 0, i32 5
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t64, %"compiler/source:Span" %t65, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l1
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t68, %"compiler/source:Span" %t69)
  store ptr %t72, ptr %l43
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  %t73 = load ptr, ptr %l43, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindCase(ptr %v0, ptr %s2, ptr %t74)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l45
  br label %bb21
bb21:
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l6
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l5, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Case", ptr %t79, i32 0, i32 5
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t78, ptr %t82, i32 %t83)
  store ptr %t87, ptr %l50
  br label %bb22
bb22:
  %t88 = load ptr, ptr %l50, !tbaa !29
  store ptr %t88, ptr %l7, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunbindCase(ptr %v0, ptr %s2, ptr %t89, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90)
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s2)
  store ptr %t93, ptr %rv
  br label %ret
bb24:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t99 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMatch(ptr %v0, ptr %v1, ptr %t95, ptr %t96)
  store i64 %t99, ptr %l56
  br label %bb25
bb25:
  %t100 = load i64, ptr %l56, !tbaa !24
  store i64 %t100, ptr %l8, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = icmp eq i64 %t101, -2
  br i1 %t103, label %bb26, label %bb27
bb26:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t109 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elenMatch(ptr %v0, ptr %v1, ptr %t105, ptr %t106)
  store i64 %t109, ptr %l61
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t110 = load i64, ptr %l61, !tbaa !24
  store i64 %t110, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = icmp ne i64 %t111, -2
  br i1 %t113, label %bb30, label %bb31
bb30:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t117 = icmp slt i64 %t115, 0
  br i1 %t117, label %bb32, label %bb33
bb31:
  br label %bb45
bb32:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l66, !tbaa !29
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Match", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t123)
  store %"compiler/source:Span" %t125, ptr %l69
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t126 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueNone(ptr %v0)
  store %"compiler/diagmsg:Msg" %t126, ptr %l70
  br label %bb35
bb35:
  %t127 = load ptr, ptr %l66, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l69
  %t129 = load %"compiler/diagmsg:Msg", ptr %l70
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128, %"compiler/diagmsg:Msg" %t129)
  store i64 %t130, ptr %l71
  br label %bb36
bb36:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l1
  %t135 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t131, %"compiler/source:Span" %t132)
  store ptr %t135, ptr %l74
  br label %bb37
bb37:
  %t136 = load ptr, ptr %l74, !tbaa !29
  store ptr %t136, ptr %rv
  br label %ret
bb38:
  %t137 = load ptr, ptr %l2, !tbaa !29
  %t139 = getelementptr %"compiler/ast:Match", ptr %t137, i32 0, i32 3
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l76, !tbaa !27
  %t141 = load i64, ptr %l8, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr ptr, ptr %t144, i64 %t141
  %t146 = load ptr, ptr %t145, !tbaa !39
  store ptr %t146, ptr %l9, !tbaa !29
  %t148 = load ptr, ptr %l9, !tbaa !29
  %t150 = getelementptr %"compiler/ast:Case", ptr %t148, i32 0, i32 5
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  br i1 %t153, label %bb39, label %bb40
bb39:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t155, %"compiler/source:Span" %t156, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  %t163 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t159, %"compiler/source:Span" %t160)
  store ptr %t163, ptr %l86
  br label %bb42
bb42:
  %t164 = load ptr, ptr %l86, !tbaa !29
  store ptr %t164, ptr %rv
  br label %ret
bb43:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l9, !tbaa !29
  %t168 = getelementptr %"compiler/ast:Case", ptr %t166, i32 0, i32 5
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t170 = load i32, ptr %l3, !tbaa !23
  %t174 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t165, ptr %t169, i32 %t170)
  store ptr %t174, ptr %l91
  br label %bb44
bb44:
  %t175 = load ptr, ptr %l91, !tbaa !29
  store ptr %t175, ptr %rv
  br label %ret
bb45:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load %"compiler/source:Span", ptr %l1
  %t178 = load ptr, ptr %l2, !tbaa !29
  %t179 = load i32, ptr %l3, !tbaa !23
  %t184 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t176, %"compiler/source:Span" %t177, ptr %t178, i1 true, i32 %t179)
  store ptr %t184, ptr %l96
  br label %bb46
bb46:
  %t185 = load ptr, ptr %l96, !tbaa !29
  store ptr %t185, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emeets(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i1
  %l10 = alloca i1
  %l16 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l39 = alloca i32
  %l46 = alloca i1
  %l47 = alloca i1
  %l52 = alloca i32
  %l60 = alloca i1
  %l61 = alloca i1
  %l66 = alloca i32
  %l71 = alloca i1
  %l72 = alloca i1
  %l75 = alloca i1
  %l76 = alloca ptr
  %l79 = alloca i32
  %l82 = alloca i32
  %l83 = alloca i1
  %l84 = alloca i1
  %l87 = alloca i1
  %l90 = alloca i1
  %l92 = alloca i1
  %l93 = alloca ptr
  %l96 = alloca i32
  %l99 = alloca i32
  %l100 = alloca i1
  %l101 = alloca i1
  %l102 = alloca ptr
  %l105 = alloca i32
  %l108 = alloca i32
  %l109 = alloca i1
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
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l6, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb7
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t21 = load i32, ptr %l2, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t19, i32 %t20, i32 %t21)
  store i1 %t25, ptr %l16
  br label %bb6
bb6:
  %t26 = load i1, ptr %l16, !tbaa !21
  store i1 %t26, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t27 = load i1, ptr %l10, !tbaa !21
  br i1 %t27, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t31 = load i32, ptr %l2, !tbaa !23
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t29, i32 %t30, i32 %t31)
  store i1 %t35, ptr %l21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb15
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t39 = load i32, ptr %l1, !tbaa !23
  %t43 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t37, i32 %t38, i32 %t39)
  store i1 %t43, ptr %l26
  br label %bb14
bb14:
  %t44 = load i1, ptr %l26, !tbaa !21
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb15
bb15:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l30
  br label %bb19
bb19:
  %t52 = load i1, ptr %l30, !tbaa !21
  br i1 %t52, label %bb20, label %bb21
bb20:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l2, !tbaa !23
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l34
  br label %bb22
bb21:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb23
bb22:
  %t58 = load i1, ptr %l34, !tbaa !21
  store i1 %t58, ptr %l31, !tbaa !21
  br label %bb23
bb23:
  %t59 = load i1, ptr %l31, !tbaa !21
  br i1 %t59, label %bb24, label %bb25
bb24:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l1, !tbaa !23
  %t65 = load i32, ptr %l2, !tbaa !23
  %t69 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t63, i32 %t64, i32 %t65)
  store i32 %t69, ptr %l39
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t70 = load i32, ptr %l39, !tbaa !23
  %t71 = icmp sge i32 %t70, 0
  store i1 %t71, ptr %rv
  br label %ret
bb27:
  %t73 = load i32, ptr %l1, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb28, label %bb29
bb28:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l2, !tbaa !23
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l46
  br label %bb30
bb29:
  br label %bb35
bb30:
  %t84 = load i1, ptr %l46, !tbaa !21
  br i1 %t84, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb34
bb32:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l2, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l52
  br label %bb33
bb33:
  %t95 = load i32, ptr %l52, !range !{i32 0, i32 33}
  %t97 = trunc i64 21 to i32
  %t98 = icmp eq i32 %t95, %t97
  store i1 %t98, ptr %l47, !tbaa !21
  br label %bb34
bb34:
  %t100 = load i1, ptr %l47, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
bb35:
  %t101 = load i32, ptr %l2, !tbaa !23
  %t102 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t105 = icmp eq i32 %t101, %t102
  br i1 %t105, label %bb36, label %bb37
bb36:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l60
  br label %bb38
bb37:
  br label %bb43
bb38:
  %t112 = load i1, ptr %l60, !tbaa !21
  br i1 %t112, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb42
bb40:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l1, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t122, ptr %l66
  br label %bb41
bb41:
  %t123 = load i32, ptr %l66, !range !{i32 0, i32 33}
  %t125 = trunc i64 21 to i32
  %t126 = icmp eq i32 %t123, %t125
  store i1 %t126, ptr %l61, !tbaa !21
  br label %bb42
bb42:
  %t128 = load i1, ptr %l61, !tbaa !21
  store i1 %t128, ptr %rv
  br label %ret
bb43:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l1, !tbaa !23
  %t133 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t129, i32 %t130)
  store i1 %t133, ptr %l71
  br label %bb44
bb44:
  %t134 = load i1, ptr %l71, !tbaa !21
  br i1 %t134, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb48
bb46:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr %l2, !tbaa !23
  %t139 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t135, i32 %t136)
  store i1 %t139, ptr %l75
  br label %bb47
bb47:
  %t140 = load i1, ptr %l75, !tbaa !21
  store i1 %t140, ptr %l72, !tbaa !21
  br label %bb48
bb48:
  %t141 = load i1, ptr %l72, !tbaa !21
  br i1 %t141, label %bb49, label %bb50
bb49:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l76, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l1, !tbaa !23
  %t147 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l79
  br label %bb51
bb50:
  br label %bb71
bb51:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l2, !tbaa !23
  %t152 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l82
  br label %bb52
bb52:
  %t153 = load ptr, ptr %l76, !tbaa !29
  %t154 = load i32, ptr %l79, !tbaa !23
  %t155 = load i32, ptr %l82, !tbaa !23
  %t156 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emeets(ptr %v0, ptr %t153, i32 %t154, i32 %t155)
  store i1 %t156, ptr %l83
  br label %bb53
bb53:
  %t157 = load i1, ptr %l83, !tbaa !21
  br i1 %t157, label %bb54, label %bb55
bb54:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l1, !tbaa !23
  %t162 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t158, i32 %t159)
  store i1 %t162, ptr %l87
  br label %bb56
bb55:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb70
bb56:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l2, !tbaa !23
  %t167 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t167, ptr %l90
  br label %bb57
bb57:
  %t168 = load i1, ptr %l87, !tbaa !21
  %t169 = load i1, ptr %l90, !tbaa !21
  %t170 = icmp eq i1 %t168, %t169
  br i1 %t170, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb63
bb59:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l93, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i32, ptr %l1, !tbaa !23
  %t177 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t173, i32 %t174)
  store i32 %t177, ptr %l96
  br label %bb60
bb60:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l2, !tbaa !23
  %t182 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t178, i32 %t179)
  store i32 %t182, ptr %l99
  br label %bb61
bb61:
  %t183 = load ptr, ptr %l93, !tbaa !29
  %t184 = load i32, ptr %l96, !tbaa !23
  %t185 = load i32, ptr %l99, !tbaa !23
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t183, i32 %t184, i32 %t185)
  store i1 %t186, ptr %l100
  br label %bb62
bb62:
  %t187 = load i1, ptr %l100, !tbaa !21
  store i1 %t187, ptr %l92, !tbaa !21
  br label %bb63
bb63:
  %t188 = load i1, ptr %l92, !tbaa !21
  br i1 %t188, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l101, !tbaa !21
  br label %bb69
bb65:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l102, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l2, !tbaa !23
  %t194 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t190, i32 %t191)
  store i32 %t194, ptr %l105
  br label %bb66
bb66:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l1, !tbaa !23
  %t199 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t195, i32 %t196)
  store i32 %t199, ptr %l108
  br label %bb67
bb67:
  %t200 = load ptr, ptr %l102, !tbaa !29
  %t201 = load i32, ptr %l105, !tbaa !23
  %t202 = load i32, ptr %l108, !tbaa !23
  %t203 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t200, i32 %t201, i32 %t202)
  store i1 %t203, ptr %l109
  br label %bb68
bb68:
  %t204 = load i1, ptr %l109, !tbaa !21
  store i1 %t204, ptr %l101, !tbaa !21
  br label %bb69
bb69:
  %t205 = load i1, ptr %l101, !tbaa !21
  store i1 %t205, ptr %l84, !tbaa !21
  br label %bb70
bb70:
  %t206 = load i1, ptr %l84, !tbaa !21
  store i1 %t206, ptr %rv
  br label %ret
bb71:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a1, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb3
bb3:
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t3, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutGlobalsValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/load:Import"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l40 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l73 = alloca ptr
  %l78 = alloca i1
  %l84 = alloca i64
  %l87 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i32
  %l97 = alloca ptr
  %l100 = alloca i64
  %l102 = alloca i64
  %l107 = alloca %"compiler/load:Import"
  %l114 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca i64
  %l121 = alloca i64
  %l126 = alloca i64
  %l127 = alloca ptr
  %l128 = alloca i64
  %l134 = alloca { i64, ptr }
  %l140 = alloca %"std/prelude/text:StringBuilder"
  %l141 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l147 = alloca i64
  %l151 = alloca i64
  %l154 = alloca i64
  %l174 = alloca ptr
  %l178 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l184 = alloca ptr
  %l189 = alloca { i64, ptr }
  %l193 = alloca ptr
  %l206 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l29
  br label %bb1
bb1:
  %t4 = load i64, ptr %l29, !tbaa !24
  %t5 = icmp eq i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t7, ptr %l32, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l33, !tbaa !24
  %t10 = load i64, ptr %l33, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l34, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l33, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t21, ptr %l32, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l32, !tbaa !27
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
  store ptr %t31, ptr %l2, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l40
  br label %bb5
bb5:
  %t36 = load i64, ptr %l40, !tbaa !24
  %t37 = icmp sge i64 %t36, 0
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load i64, ptr %l40, !tbaa !24
  %t40 = mul i64 %t39, 1
  %t41 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l3, !tbaa !27
  %t45 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l43
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_d0f72ce45fbcaa4b_31766cde14dc3f8f)
  unreachable
bb8:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l45
  br label %bb9
bb9:
  %t50 = load i64, ptr %l45, !tbaa !24
  store i64 %t50, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp sgt i64 %t51, %t52
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t59 = icmp sgt i64 %t57, 0
  br i1 %t59, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb15
bb12:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = sub i64 %t61, %t62
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = add i64 %t65, %t66
  %t71 = sub i64 %t69, 1
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = sdiv i64 %t71, %t72
  store i64 %t75, ptr %l52, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb14
bb14:
  %t77 = load i64, ptr %l52, !tbaa !24
  store i64 %t77, ptr %l49, !tbaa !24
  br label %bb15
bb15:
  %t78 = load i64, ptr %l49, !tbaa !24
  store i64 %t78, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  br label %bb19
bb19:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = mul i64 %t88, %t89
  %t95 = add i64 %t87, %t92
  store i64 %t95, ptr %l10, !tbaa !24
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t99 = load i64, ptr %l10, !tbaa !24
  %t102 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t97, i64 %t99)
  store ptr %t102, ptr %l73
  br label %bb20
bb20:
  %t103 = load ptr, ptr %l73, !tbaa !29
  %t105 = getelementptr %"compiler/load:Module", ptr %t103, i32 0, i32 4
  %t106 = load i64, ptr %t105, !tbaa !24
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t112 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t108, i64 %t106)
  store i1 %t112, ptr %l78
  br label %bb21
bb21:
  %t113 = load i1, ptr %l78, !tbaa !21
  br i1 %t113, label %bb22, label %bb23
bb22:
  %t114 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l4, i64 %t114)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l9, !tbaa !24
  br label %bb16
bb27:
  br label %bb28
bb28:
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t122, ptr %l84
  br label %bb29
bb29:
  %t123 = load i64, ptr %l84, !tbaa !24
  %t124 = icmp sgt i64 %t123, 0
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb30, label %bb31
bb30:
  br label %bb54
bb31:
  br label %bb32
bb32:
  %t129 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l4)
  %t130 = extractvalue { i32, i64 } %t129, 1
  %t131 = extractvalue { i32, i64 } %t129, 0
  store i32 %t131, ptr %l90
  %t132 = icmp ne i32 %t131, 0
  br i1 %t132, label %bb34, label %ok.133, !prof !99
ok.133:
  store i64 %t130, ptr %l89
  br label %bb33
bb33:
  %t134 = load i64, ptr %l89, !tbaa !24
  store i64 %t134, ptr %l87, !tbaa !24
  br label %bb36
bb34:
  br label %bb35
bb35:
  br label %bb54
bb36:
  %t135 = load i64, ptr %l87, !tbaa !24
  store i64 %t135, ptr %l12, !tbaa !24
  %t136 = load i64, ptr %l12, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i1, ptr %t139, i64 %t136
  %t141 = load i1, ptr %t140, !tbaa !31
  br i1 %t141, label %bb37, label %bb38
bb37:
  br label %bb53
bb38:
  br label %bb39
bb39:
  %t143 = load i64, ptr %l12, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i1, ptr %t146, i64 %t143
  store i1 true, ptr %t147, !tbaa !31
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t150 = load i64, ptr %l12, !tbaa !24
  %t153 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t148, i64 %t150)
  store ptr %t153, ptr %l97
  br label %bb40
bb40:
  %t154 = load ptr, ptr %l97, !tbaa !29
  %t156 = getelementptr %"compiler/load:Module", ptr %t154, i32 0, i32 11
  store ptr %t156, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb41
bb41:
  %t158 = load i64, ptr %l14, !tbaa !24
  store i64 %t158, ptr %l100, !tbaa !24
  %t159 = load ptr, ptr %l13, !tbaa !29
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l102
  br label %bb42
bb42:
  %t162 = load i64, ptr %l100, !tbaa !24
  %t163 = load i64, ptr %l102, !tbaa !24
  %t164 = icmp slt i64 %t162, %t163
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb43, label %bb44
bb43:
  br label %bb52
bb44:
  br label %bb45
bb45:
  %t168 = load ptr, ptr %l13, !tbaa !29
  %t169 = load i64, ptr %l14, !tbaa !24
  %t172 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t168, i64 %t169)
  store %"compiler/load:Import" %t172, ptr %l107
  br label %bb46
bb46:
  %t173 = load %"compiler/load:Import", ptr %l107
  store %"compiler/load:Import" %t173, ptr %l15
  %t174 = getelementptr %"compiler/load:Import", ptr %l15, i32 0, i32 5
  %t175 = load i64, ptr %t174, !tbaa !24
  %t177 = icmp sge i64 %t175, 0
  br i1 %t177, label %bb47, label %bb48
bb47:
  %t179 = getelementptr %"compiler/load:Import", ptr %l15, i32 0, i32 5
  %t180 = load i64, ptr %t179, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l4, i64 %t180)
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t183 = load i64, ptr %l14, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l14, !tbaa !24
  br label %bb41
bb52:
  br label %bb53
bb53:
  br label %bb28
bb54:
  %t187 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l114
  br label %bb55
bb55:
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l16
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 0
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = getelementptr %"compiler/load:Loader", ptr %t195, i32 0, i32 9
  store ptr %t197, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb56
bb56:
  %t199 = load i64, ptr %l18, !tbaa !24
  store i64 %t199, ptr %l119, !tbaa !24
  %t200 = load ptr, ptr %l17, !tbaa !29
  %t202 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t200)
  store i64 %t202, ptr %l121
  br label %bb57
bb57:
  %t203 = load i64, ptr %l119, !tbaa !24
  %t204 = load i64, ptr %l121, !tbaa !24
  %t205 = icmp slt i64 %t203, %t204
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb58, label %bb59
bb58:
  br label %bb67
bb59:
  br label %bb60
bb60:
  %t209 = load ptr, ptr %l17, !tbaa !29
  %t210 = load i64, ptr %l18, !tbaa !24
  %t213 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t209, i64 %t210)
  store i64 %t213, ptr %l126
  br label %bb61
bb61:
  %t214 = load i64, ptr %l126, !tbaa !24
  store i64 %t214, ptr %l19, !tbaa !24
  store ptr %l16, ptr %l127, !tbaa !29
  %t215 = ptrtoint ptr %s0 to i64
  store i64 %t215, ptr %l128, !tbaa !24
  %t216 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t216, label %bb62, label %bb63
bb62:
  %t218 = call ptr @__olang_region_make(ptr %s0)
  %t219 = ptrtoint ptr %t218 to i64
  store i64 %t219, ptr %l128, !tbaa !24
  br label %bb63
bb63:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i64, ptr %l19, !tbaa !24
  %t223 = trunc i64 %t221 to i32
  %t225 = load i64, ptr %l128
  %t226 = inttoptr i64 %t225 to ptr
  %t229 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %t226, ptr %t220, i32 %t223)
  store { i64, ptr } %t229, ptr %l134
  br label %bb64
bb64:
  %t230 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t231 = load i64, ptr %l128
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = extractvalue { i64, ptr } %t230, 0
  %t234 = extractvalue { i64, ptr } %t230, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %t232, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t239 = load ptr, ptr %l127, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t239, { i64, ptr } %t238)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t241 = load i64, ptr %l18, !tbaa !24
  %t243 = add i64 %t241, 1
  store i64 %t243, ptr %l18, !tbaa !24
  br label %bb56
bb67:
  %t245 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_21, 0
  %t246 = insertvalue { ptr, ptr } %t245, ptr null, 1
  %t249 = extractvalue { ptr, ptr } %t246, 0
  %t250 = extractvalue { ptr, ptr } %t246, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l16, ptr %t249, ptr %t250)
  br label %bb68
bb68:
  %t251 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t251, ptr %l140
  br label %bb69
bb69:
  %t252 = load %"std/prelude/text:StringBuilder", ptr %l140
  store %"std/prelude/text:StringBuilder" %t252, ptr %l20
  store ptr %l20, ptr %l141, !tbaa !29
  %t254 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l16, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store { i64, ptr } %t254, ptr %l143
  br label %bb70
bb70:
  %t255 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t259 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t260 = add i64 %t257, %t259
  %t261 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t260)
  call void @olang_textcopy(ptr %t261, ptr %t256, i64 %t257)
  %t262 = getelementptr i8, ptr %t261, i64 %t257
  call void @olang_textcopy(ptr %t262, ptr %t258, i64 %t259)
  %t263 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t261, 1
  %t266 = extractvalue { i64, ptr } %t264, 0
  %t267 = extractvalue { i64, ptr } %t264, 1
  %t268 = mul i64 %t266, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t268)
  call void @llvm.memcpy.p0.p0.i64(ptr %t269, ptr %t267, i64 %t268, i1 false)
  %t270 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  %t272 = load ptr, ptr %l141, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t272, { i64, ptr } %t271)
  br label %bb71
bb71:
  store i64 0, ptr %l21, !tbaa !24
  %t274 = load ptr, ptr %l2, !tbaa !29
  %t276 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t274)
  store i64 %t276, ptr %l147
  br label %bb72
bb72:
  %t277 = load i64, ptr %l147, !tbaa !24
  store i64 %t277, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t278 = load i64, ptr %l22, !tbaa !24
  %t279 = load i64, ptr %l21, !tbaa !24
  %t282 = icmp sgt i64 %t278, %t279
  br i1 %t282, label %bb73, label %bb74
bb73:
  %t284 = load i64, ptr %l23, !tbaa !24
  %t286 = icmp sgt i64 %t284, 0
  br i1 %t286, label %bb75, label %bb76
bb74:
  store i64 0, ptr %l151, !tbaa !24
  br label %bb78
bb75:
  %t288 = load i64, ptr %l22, !tbaa !24
  %t289 = load i64, ptr %l21, !tbaa !24
  %t292 = sub i64 %t288, %t289
  %t293 = load i64, ptr %l23, !tbaa !24
  %t296 = add i64 %t292, %t293
  %t298 = sub i64 %t296, 1
  %t299 = load i64, ptr %l23, !tbaa !24
  %t302 = sdiv i64 %t298, %t299
  store i64 %t302, ptr %l154, !tbaa !24
  br label %bb77
bb76:
  store i64 0, ptr %l154, !tbaa !24
  br label %bb77
bb77:
  %t304 = load i64, ptr %l154, !tbaa !24
  store i64 %t304, ptr %l151, !tbaa !24
  br label %bb78
bb78:
  %t305 = load i64, ptr %l151, !tbaa !24
  store i64 %t305, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb79
bb79:
  %t306 = load i64, ptr %l25, !tbaa !24
  %t307 = load i64, ptr %l24, !tbaa !24
  %t310 = icmp slt i64 %t306, %t307
  %t312 = xor i1 %t310, true
  br i1 %t312, label %bb80, label %bb81
bb80:
  br label %bb97
bb81:
  br label %bb82
bb82:
  %t314 = load i64, ptr %l21, !tbaa !24
  %t315 = load i64, ptr %l25, !tbaa !24
  %t316 = load i64, ptr %l23, !tbaa !24
  %t319 = mul i64 %t315, %t316
  %t322 = add i64 %t314, %t319
  store i64 %t322, ptr %l26, !tbaa !24
  %t324 = load i64, ptr %l26, !tbaa !24
  %t326 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr i1, ptr %t327, i64 %t324
  %t329 = load i1, ptr %t328, !tbaa !31
  br i1 %t329, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s19
  store ptr %l20, ptr %l174, !tbaa !29
  %t331 = load ptr, ptr %l2, !tbaa !29
  %t333 = load i64, ptr %l26, !tbaa !24
  %t336 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t331, i64 %t333)
  store ptr %t336, ptr %l178
  br label %bb85
bb84:
  br label %bb95
bb85:
  %t337 = load ptr, ptr %l178, !tbaa !29
  %t339 = getelementptr %"compiler/load:Module", ptr %t337, i32 0, i32 2
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  store { i64, ptr } %t340, ptr %l180, !tbaa !27
  %t341 = load ptr, ptr %l2, !tbaa !29
  %t343 = load i64, ptr %l26, !tbaa !24
  %t346 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t341, i64 %t343)
  store ptr %t346, ptr %l184
  br label %bb86
bb86:
  %t347 = load ptr, ptr %l184, !tbaa !29
  %t349 = getelementptr %"compiler/load:Module", ptr %t347, i32 0, i32 6
  %t350 = load ptr, ptr %t349, !tbaa !29
  %t352 = icmp eq ptr %t350, null
  %t354 = xor i1 %t352, true
  br i1 %t354, label %bb87, label %bb88
bb87:
  %t356 = load ptr, ptr %l2, !tbaa !29
  %t358 = load i64, ptr %l26, !tbaa !24
  %t361 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t356, i64 %t358)
  store ptr %t361, ptr %l193
  br label %bb89
bb88:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l189, !tbaa !27
  br label %bb93
bb89:
  %t362 = load ptr, ptr %l193, !tbaa !29
  %t364 = getelementptr %"compiler/load:Module", ptr %t362, i32 0, i32 6
  %t365 = load ptr, ptr %t364, !tbaa !29
  store ptr %t365, ptr %l27, !tbaa !29
  %t367 = load ptr, ptr %l27, !tbaa !29
  %t369 = icmp eq ptr %t367, null
  br i1 %t369, label %bb90, label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_108bcd44a7d76d1e_c10b21813ea4a0da)
  unreachable
bb91:
  br label %bb92
bb92:
  %t371 = load ptr, ptr %l27, !tbaa !29
  %t374 = getelementptr %"compiler/source:Source", ptr %t371, i32 0, i32 1
  %t375 = load { i64, ptr }, ptr %t374, !tbaa !27
  store { i64, ptr } %t375, ptr %l189, !tbaa !27
  br label %bb93
bb93:
  %t377 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t377, 1
  %t379 = extractvalue { i64, ptr } %t377, 0
  %t380 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t381 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t382 = add i64 %t379, %t381
  %t383 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t383, 1
  %t385 = extractvalue { i64, ptr } %t383, 0
  %t386 = add i64 %t382, %t385
  %t387 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t388 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t389 = add i64 %t386, %t388
  %t390 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t389)
  call void @olang_textcopy(ptr %t390, ptr %t378, i64 %t379)
  %t391 = getelementptr i8, ptr %t390, i64 %t379
  call void @olang_textcopy(ptr %t391, ptr %t380, i64 %t381)
  %t392 = getelementptr i8, ptr %t391, i64 %t381
  call void @olang_textcopy(ptr %t392, ptr %t384, i64 %t385)
  %t393 = getelementptr i8, ptr %t392, i64 %t385
  call void @olang_textcopy(ptr %t393, ptr %t387, i64 %t388)
  %t394 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t390, 1
  %t397 = extractvalue { i64, ptr } %t395, 0
  %t398 = extractvalue { i64, ptr } %t395, 1
  %t399 = mul i64 %t397, 1
  %t400 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t400, ptr %t398, i64 %t399, i1 false)
  %t401 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  %t403 = load ptr, ptr %l174, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s19, ptr %t403, { i64, ptr } %t402)
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s19)
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t405 = load i64, ptr %l25, !tbaa !24
  %t407 = add i64 %t405, 1
  store i64 %t407, ptr %l25, !tbaa !24
  br label %bb79
bb97:
  %t410 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l20)
  store { i64, ptr } %t410, ptr %l206
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s0)
  %t411 = load { i64, ptr }, ptr %l206, !tbaa !27
  store { i64, ptr } %t411, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l4
  %t3 = load i32, ptr %l2, !tbaa !23
  store i32 %t3, ptr %l5, !tbaa !23
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb4
bb3:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l4
  %t17 = load i32, ptr %l5, !tbaa !23
  %t18 = load i64, ptr %l11, !tbaa !24
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t15, %"compiler/source:Span" %t16, i32 %t17, i64 %t18)
  store ptr %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l12, !tbaa !29
  store ptr %t20, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca i8
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
  %t2 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t3 = load ptr, ptr %t2, !tbaa !27
  %t4 = getelementptr i8, ptr %t3, i64 0
  %t5 = load i8, ptr %t4, !tbaa !32
  %t7 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %t5)
  store i8 %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t9, 0
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l9, !tbaa !24
  %t15 = icmp sge i64 1, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = icmp sle i64 1, %t17
  br i1 %t18, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8ba315a61b976e68_980c0dda48bb0a1c)
  unreachable
bb4:
  %t20 = load i64, ptr %l8, !tbaa !24
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8ba315a61b976e68_980c0dda48bb0a1c)
  unreachable
bb6:
  %t24 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l8, !tbaa !24
  %t27 = getelementptr i8, ptr %t25, i64 1
  %t28 = sub i64 %t26, 1
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t31 = load i8, ptr %l4, !tbaa !22
  %t33 = extractvalue { i64, ptr } %t30, 1
  %t34 = extractvalue { i64, ptr } %t30, 0
  %t35 = add i64 1, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t35)
  store i8 %t31, ptr %t36
  %t37 = getelementptr i8, ptr %t36, i64 1
  call void @olang_textcopy(ptr %t37, ptr %t33, i64 %t34)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t36, 1
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_8ba315a61b976e68_980c0dda48bb0a1c)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l8 = alloca i64
  %l10 = alloca i32
  %l11 = alloca %"compiler/generic:Origin"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Origin"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 2
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l5, !tbaa !24
  store %"compiler/source:Span" %a1, ptr %l6
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecurInst(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorInstance(ptr %v0, ptr %t12)
  store i32 %t14, ptr %l10
  br label %bb3
bb3:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load %"compiler/source:Span", ptr %l6
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = load i32, ptr %l10, !tbaa !23
  %t19 = call %"compiler/generic:Origin" @compiler_2fgeneric_3aOrigin_2ector(ptr %s0, i64 %t15, %"compiler/source:Span" %t16, i64 %t17, i32 %t18)
  store %"compiler/generic:Origin" %t19, ptr %l11
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load %"compiler/generic:Origin", ptr %l11
  store %"compiler/generic:Origin" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Origin", ptr %rv
  ret %"compiler/generic:Origin" %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownBuffer(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i32
  %l28 = alloca i32
  %l31 = alloca i1
  %l36 = alloca i32
  %l38 = alloca i32
  %l43 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 13
  %t7 = load i1, ptr %t6, !tbaa !21
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb6
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  store ptr %t16, ptr %l11, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t17)
  store ptr %t19, ptr %l13
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t22 = getelementptr %"compiler/check:frame", ptr %t20, i32 0, i32 14
  %t23 = load i32, ptr %t22, !tbaa !23
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %t24, i32 %t23)
  store i1 %t26, ptr %l16
  br label %bb5
bb5:
  %t27 = load i1, ptr %l16, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l8, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load i32, ptr %l1, !tbaa !23
  store i32 %t31, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l23
  br label %bb10
bb10:
  %t43 = load i32, ptr %l23, !tbaa !23
  store i32 %t43, ptr %l2, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l28
  br label %bb11
bb11:
  %t54 = load i32, ptr %l28, !range !{i32 0, i32 33}
  %t56 = trunc i64 19 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb12, label %bb13
bb12:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l36
  br label %bb14
bb13:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb15
bb14:
  %t69 = load i32, ptr %l36, !tbaa !23
  %t70 = icmp eq i32 %t69, 0
  store i1 %t70, ptr %l31, !tbaa !21
  br label %bb15
bb15:
  %t72 = load i1, ptr %l31, !tbaa !21
  br i1 %t72, label %bb16, label %bb17
bb16:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l2, !tbaa !23
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t82, ptr %l43
  br label %bb18
bb17:
  %t83 = load i32, ptr %l1, !tbaa !23
  store i32 %t83, ptr %l38, !tbaa !23
  br label %bb19
bb18:
  %t85 = load i32, ptr %l43, !tbaa !23
  store i32 %t85, ptr %l38, !tbaa !23
  br label %bb19
bb19:
  %t86 = load i32, ptr %l38, !tbaa !23
  store i32 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca ptr
  %l22 = alloca %"compiler/typed:Local"
  %l26 = alloca i1
  %l30 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l42 = alloca i1
  %rv = alloca i1
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
  store ptr %t14, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t15 = load ptr, ptr %l10, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l10, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 8}
  %t21 = icmp eq i64 %t19, 0
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l11, !tbaa !21
  store i1 %t22, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 1
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l2, !tbaa !23
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb25
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t40)
  store ptr %t42, ptr %l20
  br label %bb11
bb11:
  %t43 = load i32, ptr %l3, !tbaa !23
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t46 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t44, i32 %t43)
  store %"compiler/typed:Local" %t46, ptr %l22
  br label %bb12
bb12:
  %t47 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 4
  %t48 = load i32, ptr %t47, !range !{i32 0, i32 7}
  %t50 = trunc i64 1 to i32
  %t51 = icmp eq i32 %t48, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb16
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i32, ptr %l2, !tbaa !23
  %t62 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l30
  br label %bb15
bb15:
  %t63 = load i1, ptr %l30, !tbaa !21
  store i1 %t63, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t64 = load i1, ptr %l26, !tbaa !21
  br i1 %t64, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t71, i32 %t72)
  store i1 %t75, ptr %l36
  br label %bb20
bb20:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t82, i32 %t83)
  store i1 %t86, ptr %l42
  br label %bb23
bb23:
  %t87 = load i1, ptr %l42, !tbaa !21
  store i1 %t87, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t88 = load i1, ptr %l37, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  call void @__olang_check_failed(ptr @olang_loc_4e588e9eb703ca58_549acb49cdd076c4)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:Desc"
  %l2 = alloca %"compiler/generic:Desc"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l9 = alloca i32
  %l16 = alloca %"compiler/generic:Desc"
  %l23 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/generic:Desc" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t8 = load i32, ptr %t7, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t14 = trunc i64 21 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t21, i32 %t23)
  store %"compiler/generic:Desc" %t26, ptr %l16
  br label %bb5
bb5:
  %t27 = load %"compiler/generic:Desc", ptr %l16
  store %"compiler/generic:Desc" %t27, ptr %l2
  %t28 = getelementptr %"compiler/generic:Desc", ptr %l2, i32 0, i32 0
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t33 = icmp eq i64 %t29, %t30
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Desc", ptr %l2, i32 0, i32 2
  %t40 = load i64, ptr %t39, !tbaa !24
  %t43 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t38, i64 %t40)
  store ptr %t43, ptr %l23
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Func", ptr %t44, i32 0, i32 3
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Sig", ptr %t47, i32 0, i32 0
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l3, !tbaa !27
  %t52 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t59 = icmp slt i64 %t53, %t56
  br i1 %t59, label %bb9, label %bb10
bb9:
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t61, ptr %l32, !tbaa !27
  %t62 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t63 = load i64, ptr %t62, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr ptr, ptr %t66, i64 %t63
  %t68 = load ptr, ptr %t67, !tbaa !39
  %t70 = getelementptr %"compiler/ast:Param", ptr %t68, i32 0, i32 3
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l31, !tbaa !29
  br label %bb11
bb10:
  store ptr null, ptr %l31, !tbaa !29
  br label %bb11
bb11:
  %t73 = load ptr, ptr %l31, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
bb12:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t79 = load i32, ptr %t78, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %v1, ptr %t77, i32 %t79)
  store { i64, ptr } %t82, ptr %l39
  br label %bb13
bb13:
  %t83 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t83, ptr %l4, !tbaa !27
  %t84 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t85 = load i64, ptr %t84, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t91 = icmp sge i64 %t85, %t88
  br i1 %t91, label %bb14, label %bb15
bb14:
  store ptr null, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t94, ptr %l45, !tbaa !27
  %t95 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t96 = load i64, ptr %t95, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr ptr, ptr %t99, i64 %t96
  %t101 = load ptr, ptr %t100, !tbaa !39
  %t103 = getelementptr %"compiler/ast:Param", ptr %t101, i32 0, i32 3
  %t104 = load ptr, ptr %t103, !tbaa !29
  store ptr %t104, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBad(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l31 = alloca i32
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %t1, i32 %t2, i64 0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l5, !tbaa !27
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
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l13
  br label %bb5
bb5:
  %t33 = load i1, ptr %l13, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t34, ptr %l15, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l16, !tbaa !24
  %t37 = load i64, ptr %l16, !tbaa !24
  %t38 = mul i64 %t37, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l17, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l16, !tbaa !24
  %t47 = mul i64 %t46, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %t45, i64 %t47, i1 false)
  %t48 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t48, ptr %l15, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t49, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t55, i32 %t56)
  store i1 %t59, ptr %l22
  br label %bb9
bb9:
  %t60 = load i1, ptr %l22, !tbaa !21
  br i1 %t60, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t61, ptr %l24, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l25, !tbaa !24
  %t64 = load i64, ptr %l25, !tbaa !24
  %t65 = mul i64 %t64, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l26, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l25, !tbaa !24
  %t74 = mul i64 %t73, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  %t75 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t75, ptr %l24, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t76, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l1, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l31
  br label %bb13
bb13:
  %t87 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t89 = trunc i64 21 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t92, ptr %l35, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  store i64 %t94, ptr %l36, !tbaa !24
  %t95 = load i64, ptr %l36, !tbaa !24
  %t96 = mul i64 %t95, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t96)
  %t98 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %l37, !tbaa !27
  %t100 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = load i64, ptr %l36, !tbaa !24
  %t105 = mul i64 %t104, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t101, ptr %t103, i64 %t105, i1 false)
  %t106 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t106, ptr %l35, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t107, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t108, ptr %l39, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  store i64 %t110, ptr %l40, !tbaa !24
  %t111 = load i64, ptr %l40, !tbaa !24
  %t112 = mul i64 %t111, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l41, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = load i64, ptr %l40, !tbaa !24
  %t121 = mul i64 %t120, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t117, ptr %t119, i64 %t121, i1 false)
  %t122 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t122, ptr %l39, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t123, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBinds(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/check:payloadItem"
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %lp14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca { i64, ptr }
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca %"compiler/check:payloadItem"
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca i64
  %l54 = alloca i32
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l60 = alloca %"compiler/source:Span"
  %l63 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l74 = alloca %"compiler/ast:VarDecl"
  %l85 = alloca i64
  %l97 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t93 = alloca i64
  %t118 = alloca i64
  %t135 = alloca { i64, [4 x i64] }, align 8
  %t173 = alloca { i64, [4 x i64] }, align 8
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Case", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %bb45
bb4:
  br label %bb5
bb5:
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t22, ptr %l28, !tbaa !27
  %t23 = load i64, ptr %l5, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store %olang.scope zeroinitializer, ptr %s3
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v2, ptr %s3, ptr %a0, ptr %t28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l33
  br label %bb6
bb6:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t36 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  store ptr %t36, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l9, !tbaa !24
  store i64 %t38, ptr %l35, !tbaa !24
  %t39 = load ptr, ptr %l8, !tbaa !29
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eLe_Hf8109b64a4e45220d0da36a987cf38b1(ptr %s3, ptr %t39)
  store i64 %t41, ptr %l37
  br label %bb8
bb8:
  %t42 = load i64, ptr %l35, !tbaa !24
  %t43 = load i64, ptr %l37, !tbaa !24
  %t44 = icmp slt i64 %t42, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  br label %bb43
bb10:
  br label %bb11
bb11:
  %t48 = load ptr, ptr %l8, !tbaa !29
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = call %"compiler/check:payloadItem" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eAt_H64f851f610dd8566f1d7651b626ec99d(ptr %s3, ptr %s3, ptr %t48, i64 %t49)
  store %"compiler/check:payloadItem" %t52, ptr %l42
  br label %bb12
bb12:
  %t53 = load %"compiler/check:payloadItem", ptr %l42
  store %"compiler/check:payloadItem" %t53, ptr %l10
  %t54 = getelementptr %"compiler/check:payloadItem", ptr %l10, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l11, !tbaa !29
  %t57 = load ptr, ptr %l11, !tbaa !29
  store ptr %t57, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t58 = load ptr, ptr %l44, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb13, label %bb14
bb13:
  %t61 = load ptr, ptr %l44, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 9}
  %t64 = icmp eq i64 %t62, 3
  store i1 %t64, ptr %l45, !tbaa !21
  br label %bb14
bb14:
  %t65 = load i1, ptr %l45, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l11, !tbaa !29
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32 }, ptr %t68, i32 0, i32 0
  %t70 = load %"compiler/source:Span", ptr %t69
  store %"compiler/source:Span" %t70, ptr %l12
  %t72 = load ptr, ptr %l11, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32 }, ptr %t74, i32 0, i32 1
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l13, !tbaa !23
  br label %bb17
bb16:
  br label %bb36
bb17:
  %t78 = ptrtoint ptr %v3 to i64
  store i64 %t78, ptr %l52, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e0
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = call ptr @__olang_region_make(ptr %v3)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l52, !tbaa !24
  br label %bb19
bb19:
  %t83 = load i32, ptr %l13, !tbaa !23
  store i32 %t83, ptr %l54, !tbaa !23
  %t84 = icmp sge i64 1, 0
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t86 = icmp sle i64 1, 2305843009213693951
  br i1 %t86, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_ef67712bb7c765b2_469536f01dc7df7e)
  unreachable
bb22:
  %t88 = mul i64 1, 4
  %t89 = load i64, ptr %l52
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t88)
  %t92 = load i32, ptr %l54, !tbaa !23
  store i64 0, ptr %t93
  br label %fill.94
fill.94:
  %t97 = load i64, ptr %t93
  %t98 = icmp slt i64 %t97, 1
  br i1 %t98, label %fillb.95, label %filld.96
fillb.95:
  %t99 = getelementptr i32, ptr %t91, i64 %t97
  store i32 %t92, ptr %t99
  %t100 = add i64 %t97, 1
  store i64 %t100, ptr %t93
  br label %fill.94
filld.96:
  %t101 = insertvalue { i64, ptr } undef, i64 1, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t91, 1
  store { i64, ptr } %t102, ptr %l57, !tbaa !27
  %t103 = ptrtoint ptr %v3 to i64
  store i64 %t103, ptr %l58, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e1
  br i1 %t104, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_ef67712bb7c765b2_469536f01dc7df7e)
  unreachable
bb24:
  %t106 = call ptr @__olang_region_make(ptr %v3)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l58, !tbaa !24
  br label %bb25
bb25:
  %t108 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t108, ptr %l60
  %t109 = icmp sge i64 1, 0
  br i1 %t109, label %bb26, label %bb27
bb26:
  %t111 = icmp sle i64 1, 1152921504606846975
  br i1 %t111, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_ef67712bb7c765b2_469536f01dc7df7e)
  unreachable
bb28:
  %t113 = mul i64 1, 8
  %t114 = load i64, ptr %l58
  %t115 = inttoptr i64 %t114 to ptr
  %t116 = call ptr @__olang_scope_alloc(ptr %t115, i64 %t113)
  %t117 = load %"compiler/source:Span", ptr %l60
  store i64 0, ptr %t118
  br label %fill.119
fill.119:
  %t122 = load i64, ptr %t118
  %t123 = icmp slt i64 %t122, 1
  br i1 %t123, label %fillb.120, label %filld.121
fillb.120:
  %t124 = getelementptr %"compiler/source:Span", ptr %t116, i64 %t122
  store %"compiler/source:Span" %t117, ptr %t124
  %t125 = add i64 %t122, 1
  store i64 %t125, ptr %t118
  br label %fill.119
filld.121:
  %t126 = insertvalue { i64, ptr } undef, i64 1, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t116, 1
  store { i64, ptr } %t127, ptr %l63, !tbaa !27
  %t128 = load %"compiler/source:Span", ptr %l12
  %t131 = getelementptr %"compiler/ast:Match", ptr %a1, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t133 = getelementptr %"compiler/check:payloadItem", ptr %l10, i32 0, i32 0
  %t134 = load i32, ptr %t133, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t135
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t135, i32 0, i32 0
  store i64 14, ptr %t136
  %t138 = insertvalue { %"compiler/source:Span", ptr, i32 } undef, %"compiler/source:Span" %t128, 0
  %t140 = insertvalue { %"compiler/source:Span", ptr, i32 } %t138, ptr %t132, 1
  %t142 = insertvalue { %"compiler/source:Span", ptr, i32 } %t140, i32 %t134, 2
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t135, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32 } %t142, ptr %t143
  %t144 = load { i64, [4 x i64] }, ptr %t135
  %t146 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t144, ptr %t146
  %t147 = mul i64 1, 8
  %t148 = call ptr @__olang_scope_alloc_zeroed(ptr %v3, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 1, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l70, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr ptr, ptr %t153, i64 0
  store ptr %t146, ptr %t154, !tbaa !39
  %t155 = icmp sge i64 0, 0
  br i1 %t155, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_ef67712bb7c765b2_469536f01dc7df7e)
  unreachable
bb30:
  %t157 = icmp sle i64 0, 1152921504606846975
  br i1 %t157, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_e0afa9bfb34681a7_a7ad1d10060634b3)
  unreachable
bb32:
  %t159 = mul i64 0, 8
  %t160 = insertvalue { i64, ptr } undef, i64 0, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t162 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t166 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, { i64, ptr } %t162, { i64, ptr } %t163, ptr null, { i64, ptr } %t164, i1 true, i1 false, { i64, ptr } %t161, i1 false)
  store %"compiler/ast:VarDecl" %t166, ptr %l74
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_e0afa9bfb34681a7_a7ad1d10060634b3)
  unreachable
bb34:
  %t167 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 88, i64 8)
  store ptr %t167, ptr %lp14
  %t168 = load %"compiler/ast:VarDecl", ptr %l74
  %t169 = load ptr, ptr %lp14
  store %"compiler/ast:VarDecl" %t168, ptr %t169
  %t170 = load ptr, ptr %lp3
  %t171 = load %"compiler/source:Span", ptr %l12
  %t172 = load ptr, ptr %lp14
  store { i64, [4 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 0
  store i64 1, ptr %t174
  %t176 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t171, 0
  %t178 = insertvalue { %"compiler/source:Span", ptr } %t176, ptr %t172, 1
  %t179 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t178, ptr %t179
  %t180 = load { i64, [4 x i64] }, ptr %t173
  %t182 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t180, ptr %t182
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v3, ptr %v3, ptr %t170, ptr %t182)
  br label %bb35
bb35:
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_fdd9c5eb69dbaaab_bc593bef1c0c73cf)
  unreachable
bb41:
  br label %bb42
bb42:
  %t185 = load i64, ptr %l9, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l9, !tbaa !24
  br label %bb7
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb44:
  %t189 = load i64, ptr %l5, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l5, !tbaa !24
  br label %bb2
bb45:
  %t193 = load ptr, ptr %lp3
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v3, ptr %t193)
  store i64 %t195, ptr %l85
  br label %bb46
bb46:
  %t196 = load i64, ptr %l85, !tbaa !24
  %t197 = icmp eq i64 %t196, 0
  br i1 %t197, label %bb47, label %bb48
bb47:
  %t199 = load ptr, ptr %l2, !tbaa !29
  %t201 = getelementptr %"compiler/ast:Case", ptr %t199, i32 0, i32 4
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  store { i64, ptr } %t202, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t204 = load ptr, ptr %l2, !tbaa !29
  %t206 = getelementptr %"compiler/ast:Case", ptr %t204, i32 0, i32 4
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  store i64 %t211, ptr %l17, !tbaa !24
  br label %bb50
bb50:
  %t213 = load i64, ptr %l16, !tbaa !24
  %t214 = load i64, ptr %l17, !tbaa !24
  %t217 = icmp slt i64 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb51, label %bb52
bb51:
  br label %bb56
bb52:
  br label %bb53
bb53:
  %t221 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t221, ptr %l97, !tbaa !27
  %t222 = load i64, ptr %l16, !tbaa !24
  %t224 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr ptr, ptr %t225, i64 %t222
  %t227 = load ptr, ptr %t226, !tbaa !39
  %t229 = load ptr, ptr %lp3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v3, ptr %v2, ptr %t229, ptr %t227)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t233 = load i64, ptr %l16, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l16, !tbaa !24
  br label %bb50
bb56:
  %t237 = load ptr, ptr %lp3
  %t239 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eToArray_3ccompiler_2fast_3aStmt_26_3e(ptr %v3, ptr %v3, ptr %t237)
  store { i64, ptr } %t239, ptr %l105
  br label %bb57
bb57:
  %t240 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t240, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushPayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %lp12 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca i32
  %l15 = alloca ptr
  %l20 = alloca i32
  %l25 = alloca { i64, ptr }
  %l28 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l36 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l46 = alloca %"compiler/diagmsg:Msg"
  %l47 = alloca i64
  %l51 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
  %l65 = alloca i32
  %l71 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l88 = alloca %"compiler/diagmsg:Msg"
  %l89 = alloca i64
  %l92 = alloca [0 x ptr]
  %l93 = alloca { i64, ptr }
  %l97 = alloca i1
  %l103 = alloca { i64, ptr }
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l117 = alloca i1
  %l126 = alloca i1
  %l132 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l135 = alloca i64
  %l137 = alloca i64
  %l138 = alloca { i64, ptr }
  %l146 = alloca i1
  %l151 = alloca i1
  %l156 = alloca i1
  %l160 = alloca i32
  %l165 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l168 = alloca i64
  %l170 = alloca i64
  %l171 = alloca { i64, ptr }
  %l175 = alloca i32
  %l179 = alloca ptr
  %l180 = alloca %"compiler/source:Span"
  %l181 = alloca %"compiler/source:Span"
  %l182 = alloca i32
  %l186 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l193 = alloca ptr
  %l196 = alloca i32
  %l199 = alloca ptr
  %l200 = alloca %"compiler/source:Span"
  %l206 = alloca ptr
  %s0 = alloca %olang.scope
  %t451 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l20
  br label %bb1
bb1:
  %t11 = load i32, ptr %l20, !tbaa !23
  store i32 %t11, ptr %l6, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l6, !tbaa !23
  %t17 = load i64, ptr %l4, !tbaa !24
  %t21 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v0, ptr %t15, i32 %t16, i64 %t17)
  store { i64, ptr } %t21, ptr %l25
  br label %bb2
bb2:
  %t22 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t22, ptr %l7, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t27 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %t23, ptr %t24, i64 0)
  store %"compiler/source:Span" %t27, ptr %l28
  br label %bb3
bb3:
  %t28 = load %"compiler/source:Span", ptr %l28
  store %"compiler/source:Span" %t28, ptr %l8
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t31 = load i64, ptr %l4, !tbaa !24
  %t35 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s0, ptr %t29, i32 %t30, i64 %t31)
  store { i64, ptr } %t35, ptr %l32
  br label %bb4
bb4:
  %t36 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t36, ptr %l9, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb5, label %bb6
bb5:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t47 = icmp eq i64 %t45, %t46
  %t48 = extractvalue { i64, ptr } %t43, 1
  %t49 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t50 = icmp eq ptr %t48, %t49
  %t51 = and i1 %t47, %t50
  store i1 %t51, ptr %l36, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb7
bb7:
  %t53 = load i1, ptr %l36, !tbaa !21
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l39, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t55, ptr %l40
  %t56 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t56, ptr %l41, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t61 = call { i64, ptr } @compiler_2fcheck_2efieldNames(ptr %v0, ptr %v0, ptr %v0, ptr %t57, { i64, ptr } %t58)
  store { i64, ptr } %t61, ptr %l44
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t62 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t71 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadWordBare(ptr %s0, ptr %v0, ptr %v0, { i64, ptr } %t69, { i64, ptr } %t68)
  store %"compiler/diagmsg:Msg" %t71, ptr %l46
  br label %bb11
bb11:
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l40
  %t74 = load %"compiler/diagmsg:Msg", ptr %l46
  %t75 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t72, %"compiler/source:Span" %t73, %"compiler/diagmsg:Msg" %t74)
  store i64 %t75, ptr %l47
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  %t76 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t80 = icmp eq i64 %t78, 0
  br i1 %t80, label %bb14, label %bb15
bb14:
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t86 = icmp eq i64 %t84, %t85
  %t87 = extractvalue { i64, ptr } %t82, 1
  %t88 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t89 = icmp eq ptr %t87, %t88
  %t90 = and i1 %t86, %t89
  %t92 = xor i1 %t90, true
  store i1 %t92, ptr %l51, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb16
bb16:
  %t94 = load i1, ptr %l51, !tbaa !21
  br i1 %t94, label %bb17, label %bb18
bb17:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l55, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t96, ptr %l56
  %t97 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %s0, ptr %v0, { i64, ptr } %t97)
  store %"compiler/diagmsg:Msg" %t99, ptr %l58
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t100 = load ptr, ptr %l55, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l56
  %t102 = load %"compiler/diagmsg:Msg", ptr %l58
  %t103 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t100, %"compiler/source:Span" %t101, %"compiler/diagmsg:Msg" %t102)
  store i64 %t103, ptr %l59
  br label %bb20
bb20:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t104, { i64, ptr } %t105)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i32, ptr %l3, !tbaa !23
  %t115 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l65
  br label %bb23
bb23:
  %t116 = load i32, ptr %l65, !tbaa !23
  store i32 %t116, ptr %l10, !tbaa !23
  %t117 = load i32, ptr %l10, !tbaa !23
  %t118 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t121 = icmp eq i32 %t117, %t118
  br i1 %t121, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  %t123 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t127 = icmp eq i64 %t125, %t126
  %t128 = extractvalue { i64, ptr } %t123, 1
  %t129 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t130 = icmp eq ptr %t128, %t129
  %t131 = and i1 %t127, %t130
  br i1 %t131, label %bb27, label %bb28
bb27:
  %t133 = icmp sge i64 0, 0
  br i1 %t133, label %bb29, label %bb30
bb28:
  %t135 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t135, ptr %l71, !tbaa !27
  br label %bb33
bb29:
  %t137 = icmp sle i64 0, 1152921504606846975
  br i1 %t137, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_97f728d69fa9714_fb4d660b7b54b10)
  unreachable
bb31:
  %t139 = mul i64 0, 8
  %t140 = insertvalue { i64, ptr } undef, i64 0, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t141, ptr %l71, !tbaa !27
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_97f728d69fa9714_fb4d660b7b54b10)
  unreachable
bb33:
  %t143 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t143, ptr %l11, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t152 = icmp ne i64 %t146, %t149
  br i1 %t152, label %bb34, label %bb35
bb34:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l81, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t155, ptr %l82
  %t156 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t166 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadArgs(ptr %s0, ptr %v0, { i64, ptr } %t156, i64 %t159, i64 %t162)
  store %"compiler/diagmsg:Msg" %t166, ptr %l88
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t167 = load ptr, ptr %l81, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l82
  %t169 = load %"compiler/diagmsg:Msg", ptr %l88
  %t170 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t167, %"compiler/source:Span" %t168, %"compiler/diagmsg:Msg" %t169)
  store i64 %t170, ptr %l89
  br label %bb37
bb37:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t171, { i64, ptr } %t172)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb39:
  store [0 x ptr] zeroinitializer, ptr %l92
  %t175 = mul i64 0, 8
  %t176 = insertvalue { i64, ptr } undef, i64 0, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t177, ptr %l93, !tbaa !27
  %t178 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t179, ptr %l92, i64 %t180, i1 false)
  %t181 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t181, ptr %lp12
  %t182 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t183 = load ptr, ptr %lp12
  store { i64, ptr } %t182, ptr %t183, !tbaa !27
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t188 = load i32, ptr %l6, !tbaa !23
  %t191 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t187, i32 %t188)
  store i1 %t191, ptr %l97
  br label %bb40
bb40:
  %t192 = load i1, ptr %l97, !tbaa !21
  br i1 %t192, label %bb41, label %bb42
bb41:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l8
  %t195 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t196 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t203 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraisedArgs(ptr %v0, ptr %s0, ptr %v0, ptr %v2, ptr %v0, ptr %t193, %"compiler/source:Span" %t194, { i64, ptr } %t195, { i64, ptr } %t196, { i64, ptr } %t197)
  store { i64, ptr } %t203, ptr %l103
  br label %bb43
bb42:
  br label %bb82
bb43:
  %t204 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t204, ptr %l11, !tbaa !27
  %t205 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t208 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t213 = icmp ne i64 %t207, %t210
  br i1 %t213, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  br label %bb46
bb46:
  %t215 = load ptr, ptr %l2, !tbaa !29
  %t217 = getelementptr %"compiler/ast:Path", ptr %t215, i32 0, i32 0
  %t218 = load %"compiler/source:Span", ptr %t217
  store %"compiler/source:Span" %t218, ptr %l110
  store ptr %l110, ptr %l111, !tbaa !29
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t223 = load i32, ptr %l6, !tbaa !23
  %t226 = call %"compiler/source:Span" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedAt(ptr %v0, ptr %t222, i32 %t223)
  store %"compiler/source:Span" %t226, ptr %l115
  br label %bb47
bb47:
  %t227 = load ptr, ptr %l111, !tbaa !29
  %t229 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %t227, ptr %l115)
  store i1 %t229, ptr %l117
  br label %bb48
bb48:
  %t230 = load i1, ptr %l117, !tbaa !21
  store i1 %t230, ptr %l13, !tbaa !21
  %t231 = load i1, ptr %l13, !tbaa !21
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb49, label %bb50
bb49:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load i32, ptr %l3, !tbaa !23
  %t237 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleRaised(ptr %v0, ptr %t235, i32 %t236, i32 %t237)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/check:Checker", ptr %t241, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t245 = load i32, ptr %l10, !tbaa !23
  %t248 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedSettled(ptr %v0, ptr %t244, i32 %t245)
  store i1 %t248, ptr %l126
  br label %bb53
bb53:
  %t249 = load i1, ptr %l126, !tbaa !21
  %t250 = xor i1 %t249, true
  br i1 %t250, label %bb54, label %bb55
bb54:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load i32, ptr %l10, !tbaa !23
  %t254 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t255 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t260 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleBy(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t252, i32 %t253, { i64, ptr } %t254, { i64, ptr } %t255)
  store { i64, ptr } %t260, ptr %l132
  br label %bb56
bb55:
  %t261 = load i1, ptr %l13, !tbaa !21
  br i1 %t261, label %bb64, label %bb65
bb56:
  %t263 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t263, ptr %l133, !tbaa !27
  %t264 = load ptr, ptr %lp12
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 0
  %t267 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 0
  store i64 %t268, ptr %l135, !tbaa !24
  %t270 = load i64, ptr %l135, !tbaa !24
  %t271 = icmp eq i64 %t266, %t270
  br i1 %t271, label %bb57, label %bb58
bb57:
  %t273 = load ptr, ptr %lp12
  %t274 = getelementptr { i64, ptr }, ptr %t273, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = load i64, ptr %l135, !tbaa !24
  %t279 = mul i64 %t278, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t275, ptr %t277, i64 %t279, i1 false)
  br label %bb59
bb58:
  %t280 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 0
  store i64 %t281, ptr %l137, !tbaa !24
  %t282 = load i64, ptr %l137, !tbaa !24
  %t283 = mul i64 %t282, 8
  %t284 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t283)
  %t285 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  store { i64, ptr } %t286, ptr %l138, !tbaa !27
  %t287 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = load i64, ptr %l137, !tbaa !24
  %t292 = mul i64 %t291, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t288, ptr %t290, i64 %t292, i1 false)
  %t293 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t294 = load ptr, ptr %lp12
  store { i64, ptr } %t293, ptr %t294, !tbaa !27
  br label %bb59
bb59:
  %t295 = load i1, ptr %l13, !tbaa !21
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb60, label %bb61
bb60:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 63
  %t302 = load i32, ptr %l6, !tbaa !23
  %t304 = sext i32 %t302 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t301, i64 %t304, i1 true)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb81
bb64:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 63
  %t310 = load i32, ptr %l6, !tbaa !23
  %t312 = sext i32 %t310 to i64
  %t315 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t309, i64 %t312)
  store i1 %t315, ptr %l151
  br label %bb66
bb65:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb67
bb66:
  %t316 = load i1, ptr %l151, !tbaa !21
  store i1 %t316, ptr %l146, !tbaa !21
  br label %bb67
bb67:
  %t317 = load i1, ptr %l146, !tbaa !21
  br i1 %t317, label %bb68, label %bb69
bb68:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/check:Checker", ptr %t318, i32 0, i32 63
  %t321 = load i32, ptr %l6, !tbaa !23
  %t323 = sext i32 %t321 to i64
  %t326 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eRemove_3cI64_2c_20Bool_3e(ptr %v0, ptr %t320, i64 %t323)
  store i1 %t326, ptr %l156
  br label %bb70
bb69:
  br label %bb80
bb70:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/check:Checker", ptr %t327, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !29
  %t331 = load i32, ptr %l10, !tbaa !23
  %t334 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedFields(ptr %v0, ptr %t330, i32 %t331)
  store i32 %t334, ptr %l160
  br label %bb71
bb71:
  %t335 = load i32, ptr %l160, !tbaa !23
  store i32 %t335, ptr %l14, !tbaa !23
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load i32, ptr %l10, !tbaa !23
  %t338 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t339 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t344 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleBy(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t336, i32 %t337, { i64, ptr } %t338, { i64, ptr } %t339)
  store { i64, ptr } %t344, ptr %l165
  br label %bb72
bb72:
  %t345 = load { i64, ptr }, ptr %l165, !tbaa !27
  store { i64, ptr } %t345, ptr %l166, !tbaa !27
  %t346 = load ptr, ptr %lp12
  %t347 = load { i64, ptr }, ptr %t346, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t347, 0
  %t349 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t349, 0
  store i64 %t350, ptr %l168, !tbaa !24
  %t352 = load i64, ptr %l168, !tbaa !24
  %t353 = icmp eq i64 %t348, %t352
  br i1 %t353, label %bb73, label %bb74
bb73:
  %t355 = load ptr, ptr %lp12
  %t356 = getelementptr { i64, ptr }, ptr %t355, i32 0, i32 1
  %t357 = load ptr, ptr %t356, !tbaa !27
  %t358 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = load i64, ptr %l168, !tbaa !24
  %t361 = mul i64 %t360, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t357, ptr %t359, i64 %t361, i1 false)
  br label %bb75
bb74:
  %t362 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t363 = extractvalue { i64, ptr } %t362, 0
  store i64 %t363, ptr %l170, !tbaa !24
  %t364 = load i64, ptr %l170, !tbaa !24
  %t365 = mul i64 %t364, 8
  %t366 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t365)
  %t367 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t366, 1
  store { i64, ptr } %t368, ptr %l171, !tbaa !27
  %t369 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = load i64, ptr %l170, !tbaa !24
  %t374 = mul i64 %t373, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t370, ptr %t372, i64 %t374, i1 false)
  %t375 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t376 = load ptr, ptr %lp12
  store { i64, ptr } %t375, ptr %t376, !tbaa !27
  br label %bb75
bb75:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t377, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t381 = load i32, ptr %l10, !tbaa !23
  %t384 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedFields(ptr %v0, ptr %t380, i32 %t381)
  store i32 %t384, ptr %l175
  br label %bb76
bb76:
  %t385 = load i32, ptr %l14, !tbaa !23
  %t386 = load i32, ptr %l175, !tbaa !23
  %t388 = icmp ne i32 %t386, %t385
  br i1 %t388, label %bb77, label %bb78
bb77:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = getelementptr %"compiler/check:Checker", ptr %t390, i32 0, i32 64
  store i1 true, ptr %t392, !tbaa !21
  br label %bb79
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l179, !tbaa !29
  %t394 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t394, ptr %l180
  %t395 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t395, ptr %l181
  %t396 = load i32, ptr %l10, !tbaa !23
  store i32 %t396, ptr %l182, !tbaa !23
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t401 = load i32, ptr %l6, !tbaa !23
  %t404 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t400, i32 %t401)
  store { i64, ptr } %t404, ptr %l186
  br label %bb83
bb83:
  %t405 = load { i64, ptr }, ptr %l186, !tbaa !27
  store { i64, ptr } %t405, ptr %l187, !tbaa !27
  %t406 = load i64, ptr %l4, !tbaa !24
  %t408 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = getelementptr i32, ptr %t409, i64 %t406
  %t411 = load i32, ptr %t410, !tbaa !33
  %t412 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t412, ptr %l190, !tbaa !27
  %t413 = load ptr, ptr %lp12
  %t414 = load { i64, ptr }, ptr %t413, !tbaa !27
  %t415 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t416 = extractvalue { i64, ptr } %t415, 1
  %t417 = call ptr @__olang_scope_of(ptr %t416, ptr null)
  %t418 = ptrtoint ptr %t417 to i64
  %t420 = inttoptr i64 %t418 to ptr
  %t421 = load ptr, ptr %l179, !tbaa !29
  %t422 = load %"compiler/source:Span", ptr %l180
  %t423 = load %"compiler/source:Span", ptr %l181
  %t424 = load i32, ptr %l182, !tbaa !23
  %t426 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t428 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %t420, ptr %v0, ptr %v0, ptr %t421, %"compiler/source:Span" %t422, %"compiler/source:Span" %t423, i32 %t424, i32 %t411, { i64, ptr } %t426, { i64, ptr } %t414)
  store ptr %t428, ptr %l193
  br label %bb84
bb84:
  %t429 = load ptr, ptr %l193, !tbaa !29
  store ptr %t429, ptr %l15, !tbaa !29
  %t430 = load ptr, ptr %l15, !tbaa !29
  %t433 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t430)
  store i32 %t433, ptr %l196
  br label %bb85
bb85:
  %t434 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t435 = load i32, ptr %l196, !tbaa !23
  %t437 = icmp eq i32 %t435, %t434
  br i1 %t437, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb87:
  br label %bb88
bb88:
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l199, !tbaa !29
  %t440 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t440, ptr %l200
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load %"compiler/source:Span", ptr %l1
  %t443 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t444 = load ptr, ptr %l15, !tbaa !29
  %t450 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t441, %"compiler/source:Span" %t442, i32 %t443, i32 45, ptr %t444, ptr null)
  store ptr %t450, ptr %l206
  br label %bb89
bb89:
  store { i64, [3 x i64] } zeroinitializer, ptr %t451
  %t452 = getelementptr { i64, [3 x i64] }, ptr %t451, i32 0, i32 0
  store i64 2, ptr %t452
  %t453 = load %"compiler/source:Span", ptr %l200
  %t454 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t453, 0
  %t455 = load ptr, ptr %l206, !tbaa !29
  %t456 = insertvalue { %"compiler/source:Span", ptr } %t454, ptr %t455, 1
  %t457 = getelementptr { i64, [3 x i64] }, ptr %t451, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t456, ptr %t457
  %t458 = load { i64, [3 x i64] }, ptr %t451
  %t460 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t458, ptr %t460
  %t461 = load ptr, ptr %l199, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t461, ptr %t460)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawEnum(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i1
  %lp5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i1
  %l12 = alloca i64
  %lp13 = alloca ptr
  %lp14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/check:litv"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca %"compiler/check:litv"
  %l33 = alloca %"compiler/check:signMag"
  %l34 = alloca i1
  %l35 = alloca i128
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i32
  %l43 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l53 = alloca %"compiler/check:rawTable"
  %l64 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l77 = alloca %"compiler/source:Span"
  %l78 = alloca %"compiler/diagmsg:Msg"
  %l79 = alloca i64
  %l84 = alloca ptr
  %l88 = alloca %"compiler/generic:Context"
  %l92 = alloca i32
  %l99 = alloca ptr
  %l100 = alloca i32
  %l102 = alloca i32
  %l103 = alloca i1
  %l106 = alloca i1
  %l109 = alloca i1
  %l112 = alloca ptr
  %l114 = alloca %"compiler/source:Span"
  %l117 = alloca { i64, ptr }
  %l119 = alloca %"compiler/diagmsg:Msg"
  %l120 = alloca i64
  %l124 = alloca i64
  %l128 = alloca i64
  %l130 = alloca { i64, ptr }
  %l134 = alloca i64
  %l137 = alloca %"compiler/check:litv"
  %l142 = alloca i64
  %l145 = alloca i64
  %l163 = alloca { i64, ptr }
  %l167 = alloca i1
  %l171 = alloca { i64, ptr }
  %l172 = alloca i1
  %l173 = alloca ptr
  %l176 = alloca %"compiler/source:Span"
  %l177 = alloca %"compiler/diagmsg:Msg"
  %l178 = alloca i64
  %l182 = alloca %"compiler/source:Span"
  %l185 = alloca %"compiler/source:Span"
  %l191 = alloca %"compiler/source:Span"
  %l196 = alloca i64
  %l197 = alloca i64
  %l202 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l205 = alloca %"compiler/source:Span"
  %l206 = alloca ptr
  %l212 = alloca %"compiler/source:Span"
  %l213 = alloca i32
  %l215 = alloca i1
  %l217 = alloca ptr
  %l218 = alloca %"compiler/source:Span"
  %l221 = alloca { i64, ptr }
  %l223 = alloca %"compiler/diagmsg:Msg"
  %l224 = alloca i64
  %l225 = alloca i64
  %l226 = alloca i64
  %l230 = alloca { i64, ptr }
  %l236 = alloca i64
  %l239 = alloca i64
  %l259 = alloca i1
  %l261 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l266 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca %"compiler/source:Span"
  %l273 = alloca { i64, ptr }
  %l276 = alloca { i64, ptr }
  %l277 = alloca i64
  %l278 = alloca { i64, ptr }
  %l281 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l288 = alloca %"compiler/diagmsg:Msg"
  %l289 = alloca i64
  %l292 = alloca %"compiler/check:litv"
  %l297 = alloca %"compiler/check:signMag"
  %l301 = alloca %"compiler/check:litv"
  %l304 = alloca %"compiler/check:litv"
  %l305 = alloca %"compiler/check:litv"
  %l312 = alloca i1
  %l313 = alloca i1
  %l319 = alloca i1
  %l320 = alloca ptr
  %l326 = alloca %"compiler/check:litv"
  %l329 = alloca i1
  %l332 = alloca ptr
  %l333 = alloca %"compiler/source:Span"
  %l338 = alloca %"compiler/diagmsg:Msg"
  %l341 = alloca { i64, ptr }
  %l343 = alloca %"compiler/diagmsg:Msg"
  %l346 = alloca { i64, ptr }
  %l348 = alloca %"compiler/diagmsg:Msg"
  %l349 = alloca i64
  %l350 = alloca %"compiler/check:litv"
  %l355 = alloca i1
  %l358 = alloca ptr
  %l359 = alloca %"compiler/source:Span"
  %l361 = alloca { i64, ptr }
  %l362 = alloca { i64, ptr }
  %l365 = alloca { i64, ptr }
  %l367 = alloca %"compiler/diagmsg:Msg"
  %l368 = alloca i64
  %l376 = alloca i64
  %l379 = alloca i64
  %l399 = alloca i1
  %l406 = alloca ptr
  %l407 = alloca %"compiler/source:Span"
  %l411 = alloca { i64, ptr }
  %l413 = alloca { i64, ptr }
  %l414 = alloca { i64, ptr }
  %l416 = alloca { i64, ptr }
  %l420 = alloca { i64, ptr }
  %l421 = alloca %"compiler/diagmsg:Msg"
  %l422 = alloca i64
  %l431 = alloca %"compiler/check:rawTable"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca ptr
  %t108 = alloca %"compiler/generic:Context", align 8
  %t216 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1, ptr %l42, !tbaa !23
  %t2 = ptrtoint ptr %v3 to i64
  store i64 %t2, ptr %l43, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3arawTable_2e2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v3)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l43, !tbaa !24
  br label %bb2
bb2:
  %t7 = icmp sge i64 0, 0
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = icmp sle i64 0, 1152921504606846975
  br i1 %t9, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_ff4549fd04ada907_b78a4102fd7994db)
  unreachable
bb5:
  %t11 = mul i64 0, 8
  %t12 = load i64, ptr %l43
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = insertvalue { i64, ptr } undef, i64 0, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t15, ptr %l47, !tbaa !27
  %t16 = ptrtoint ptr %v3 to i64
  store i64 %t16, ptr %l48, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3arawTable_2e3
  br i1 %t17, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_ff4549fd04ada907_b78a4102fd7994db)
  unreachable
bb7:
  %t19 = call ptr @__olang_region_make(ptr %v3)
  %t20 = ptrtoint ptr %t19 to i64
  store i64 %t20, ptr %l48, !tbaa !24
  br label %bb8
bb8:
  %t21 = icmp sge i64 0, 0
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = icmp sle i64 0, 576460752303423487
  br i1 %t23, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ff4549fd04ada907_b78a4102fd7994db)
  unreachable
bb11:
  %t25 = mul i64 0, 16
  %t26 = load i64, ptr %l48
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = insertvalue { i64, ptr } undef, i64 0, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t30 = load i32, ptr %l42, !tbaa !23
  %t31 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t33 = call %"compiler/check:rawTable" @compiler_2fcheck_3arawTable_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t30, i1 false, { i64, ptr } %t31, { i64, ptr } %t29)
  store %"compiler/check:rawTable" %t33, ptr %l53
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_ff4549fd04ada907_b78a4102fd7994db)
  unreachable
bb13:
  %t34 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store ptr %t34, ptr %lp5
  %t35 = load %"compiler/check:rawTable", ptr %l53
  %t36 = load ptr, ptr %lp5
  store %"compiler/check:rawTable" %t35, ptr %t36
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t41 = load i1, ptr %l4, !tbaa !21
  br i1 %t41, label %bb16, label %bb17
bb15:
  br label %bb34
bb16:
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t43, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l8, !tbaa !24
  br label %bb18
bb17:
  br label %bb33
bb18:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb19, label %bb20
bb19:
  br label %bb32
bb20:
  br label %bb21
bb21:
  %t57 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t57, ptr %l64, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  store ptr %t63, ptr %l9, !tbaa !29
  %t65 = load ptr, ptr %l9, !tbaa !29
  %t67 = getelementptr %"compiler/ast:CaseDecl", ptr %t65, i32 0, i32 4
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = icmp eq ptr %t68, null
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l71, !tbaa !29
  %t75 = load ptr, ptr %l9, !tbaa !29
  %t77 = getelementptr %"compiler/ast:CaseDecl", ptr %t75, i32 0, i32 4
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  br i1 %t80, label %bb24, label %bb25
bb23:
  br label %bb30
bb24:
  call void @__olang_check_failed(ptr @olang_loc_674ca34a4d5f8d72_a138681dd06a86e)
  unreachable
bb25:
  br label %bb26
bb26:
  %t82 = load ptr, ptr %l9, !tbaa !29
  %t84 = getelementptr %"compiler/ast:CaseDecl", ptr %t82, i32 0, i32 4
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t85)
  store %"compiler/source:Span" %t87, ptr %l77
  br label %bb27
bb27:
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawWithoutType(ptr %v0)
  store %"compiler/diagmsg:Msg" %t88, ptr %l78
  br label %bb28
bb28:
  %t89 = load ptr, ptr %l71, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l77
  %t91 = load %"compiler/diagmsg:Msg", ptr %l78
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t89, %"compiler/source:Span" %t90, %"compiler/diagmsg:Msg" %t91)
  store i64 %t92, ptr %l79
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb18
bb32:
  br label %bb33
bb33:
  %t97 = load ptr, ptr %lp5
  call void @__olang_scope_close(ptr %s0)
  store ptr %t97, ptr %rv
  br label %ret
bb34:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  store ptr %t102, ptr %l84, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %t108, ptr %v0, ptr %s0, ptr %t106, i32 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t108, i64 160, i1 false)
  br label %bb35
bb35:
  %t111 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t111, ptr %l88, i64 160, i1 false)
  %t112 = load ptr, ptr %l3, !tbaa !29
  %t114 = load ptr, ptr %l84, !tbaa !29
  %t117 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v2, ptr %t114, ptr %t111, ptr %t112)
  store i32 %t117, ptr %l92
  br label %bb36
bb36:
  %t118 = load i32, ptr %l92, !tbaa !23
  store i32 %t118, ptr %l10, !tbaa !23
  %t119 = load i32, ptr %l10, !tbaa !23
  %t120 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t123 = icmp eq i32 %t119, %t120
  br i1 %t123, label %bb37, label %bb38
bb37:
  %t125 = load ptr, ptr %lp5
  call void @__olang_scope_close(ptr %s0)
  store ptr %t125, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  store ptr %t132, ptr %l99, !tbaa !29
  %t133 = load i32, ptr %l10, !tbaa !23
  store i32 %t133, ptr %l100, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t134)
  store i32 %t136, ptr %l102
  br label %bb40
bb40:
  %t137 = load ptr, ptr %l99, !tbaa !29
  %t138 = load i32, ptr %l100, !tbaa !23
  %t139 = load i32, ptr %l102, !tbaa !23
  %t140 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t137, i32 %t138, i32 %t139)
  store i1 %t140, ptr %l103
  br label %bb41
bb41:
  %t141 = load i1, ptr %l103, !tbaa !21
  store i1 %t141, ptr %l11, !tbaa !21
  %t142 = load i1, ptr %l11, !tbaa !21
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb42, label %bb43
bb42:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l10, !tbaa !23
  %t150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l109
  br label %bb44
bb43:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb45
bb44:
  %t151 = load i1, ptr %l109, !tbaa !21
  %t152 = xor i1 %t151, true
  store i1 %t152, ptr %l106, !tbaa !21
  br label %bb45
bb45:
  %t154 = load i1, ptr %l106, !tbaa !21
  br i1 %t154, label %bb46, label %bb47
bb46:
  %t155 = load i1, ptr %l4, !tbaa !21
  br i1 %t155, label %bb48, label %bb49
bb47:
  br label %bb55
bb48:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l112, !tbaa !29
  %t158 = load ptr, ptr %l3, !tbaa !29
  %t160 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t158)
  store %"compiler/source:Span" %t160, ptr %l114
  br label %bb50
bb49:
  br label %bb54
bb50:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i32, ptr %l10, !tbaa !23
  %t165 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t161, i32 %t162)
  store { i64, ptr } %t165, ptr %l117
  br label %bb51
bb51:
  %t166 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 0
  %t168 = extractvalue { i64, ptr } %t166, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  %t174 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawType(ptr %v0, ptr %v0, { i64, ptr } %t172)
  store %"compiler/diagmsg:Msg" %t174, ptr %l119
  br label %bb52
bb52:
  %t175 = load ptr, ptr %l112, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l114
  %t177 = load %"compiler/diagmsg:Msg", ptr %l119
  %t178 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t175, %"compiler/source:Span" %t176, %"compiler/diagmsg:Msg" %t177)
  store i64 %t178, ptr %l120
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t179 = load ptr, ptr %lp5
  call void @__olang_scope_close(ptr %s0)
  store ptr %t179, ptr %rv
  br label %ret
bb55:
  %t181 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  store i64 %t183, ptr %l12, !tbaa !24
  %t185 = load i64, ptr %l12, !tbaa !24
  store i64 %t185, ptr %l124, !tbaa !24
  %t186 = load i64, ptr %l124, !tbaa !24
  %t187 = icmp sge i64 %t186, 0
  br i1 %t187, label %bb56, label %bb57
bb56:
  %t189 = load i64, ptr %l124, !tbaa !24
  %t190 = icmp sle i64 %t189, 1152921504606846975
  br i1 %t190, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_5479af00bceefeb1_f5b0eb753f441165)
  unreachable
bb58:
  %t192 = load i64, ptr %l124, !tbaa !24
  %t193 = mul i64 %t192, 8
  %t194 = call ptr @__olang_scope_alloc_zeroed(ptr %v3, i64 %t193)
  %t195 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t197 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t197, ptr %lp13
  %t199 = load ptr, ptr %lp13
  store { i64, ptr } %t196, ptr %t199, !tbaa !27
  %t200 = load i64, ptr %l12, !tbaa !24
  store i64 %t200, ptr %l128, !tbaa !24
  %t201 = icmp sge i64 0, 0
  br i1 %t201, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_5479af00bceefeb1_f5b0eb753f441165)
  unreachable
bb60:
  %t203 = mul i64 0, 1
  %t204 = insertvalue { i64, ptr } undef, i64 0, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t205, ptr %l130, !tbaa !27
  %t206 = load i64, ptr %l128, !tbaa !24
  %t207 = icmp sge i64 %t206, 0
  br i1 %t207, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_4e17f4aa3948dea4_42025b20baf190f8)
  unreachable
bb62:
  %t209 = load i64, ptr %l128, !tbaa !24
  %t210 = icmp sle i64 %t209, 576460752303423487
  br i1 %t210, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_4e17f4aa3948dea4_42025b20baf190f8)
  unreachable
bb64:
  %t212 = load i64, ptr %l128, !tbaa !24
  %t213 = mul i64 %t212, 16
  %t214 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t213)
  %t215 = load { i64, ptr }, ptr %l130, !tbaa !27
  store i64 0, ptr %t216
  br label %fill.217
fill.217:
  %t220 = load i64, ptr %t216
  %t221 = icmp slt i64 %t220, %t212
  br i1 %t221, label %fillb.218, label %filld.219
fillb.218:
  %t222 = getelementptr { i64, ptr }, ptr %t214, i64 %t220
  store { i64, ptr } %t215, ptr %t222
  %t223 = add i64 %t220, 1
  store i64 %t223, ptr %t216
  br label %fill.217
filld.219:
  %t224 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t214, 1
  %t226 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t226, ptr %lp14
  %t228 = load ptr, ptr %lp14
  store { i64, ptr } %t225, ptr %t228, !tbaa !27
  %t229 = load i64, ptr %l12, !tbaa !24
  store i64 %t229, ptr %l134, !tbaa !24
  %t230 = load i64, ptr %l134, !tbaa !24
  %t231 = icmp sge i64 %t230, 0
  br i1 %t231, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_4e17f4aa3948dea4_42025b20baf190f8)
  unreachable
bb66:
  %t233 = load i64, ptr %l134, !tbaa !24
  %t234 = mul i64 %t233, 1
  %t235 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t234)
  %t236 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t235, 1
  store { i64, ptr } %t237, ptr %l15, !tbaa !27
  %t239 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 -1)
  store %"compiler/check:litv" %t239, ptr %l137
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_15162faa0a6b8e7b_16d808b76471f267)
  unreachable
bb68:
  %t240 = load %"compiler/check:litv", ptr %l137
  store %"compiler/check:litv" %t240, ptr %l16
  store i64 0, ptr %l17, !tbaa !24
  %t241 = load i64, ptr %l12, !tbaa !24
  store i64 %t241, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t243 = load i64, ptr %l18, !tbaa !24
  %t244 = load i64, ptr %l17, !tbaa !24
  %t247 = icmp sgt i64 %t243, %t244
  br i1 %t247, label %bb69, label %bb70
bb69:
  %t249 = load i64, ptr %l19, !tbaa !24
  %t251 = icmp sgt i64 %t249, 0
  br i1 %t251, label %bb71, label %bb72
bb70:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb74
bb71:
  %t253 = load i64, ptr %l18, !tbaa !24
  %t254 = load i64, ptr %l17, !tbaa !24
  %t257 = sub i64 %t253, %t254
  %t258 = load i64, ptr %l19, !tbaa !24
  %t261 = add i64 %t257, %t258
  %t263 = sub i64 %t261, 1
  %t264 = load i64, ptr %l19, !tbaa !24
  %t267 = sdiv i64 %t263, %t264
  store i64 %t267, ptr %l145, !tbaa !24
  br label %bb73
bb72:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb73
bb73:
  %t269 = load i64, ptr %l145, !tbaa !24
  store i64 %t269, ptr %l142, !tbaa !24
  br label %bb74
bb74:
  %t270 = load i64, ptr %l142, !tbaa !24
  store i64 %t270, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb75
bb75:
  store %olang.scope zeroinitializer, ptr %s11
  %t271 = load i64, ptr %l21, !tbaa !24
  %t272 = load i64, ptr %l20, !tbaa !24
  %t275 = icmp slt i64 %t271, %t272
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s11)
  br label %bb234
bb77:
  br label %bb78
bb78:
  %t279 = load i64, ptr %l17, !tbaa !24
  %t280 = load i64, ptr %l21, !tbaa !24
  %t281 = load i64, ptr %l19, !tbaa !24
  %t284 = mul i64 %t280, %t281
  %t287 = add i64 %t279, %t284
  store i64 %t287, ptr %l22, !tbaa !24
  %t289 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t289, ptr %l163, !tbaa !27
  %t290 = load i64, ptr %l22, !tbaa !24
  %t292 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr ptr, ptr %t293, i64 %t290
  %t295 = load ptr, ptr %t294, !tbaa !39
  store ptr %t295, ptr %l23, !tbaa !29
  %t297 = load i1, ptr %l4, !tbaa !21
  br i1 %t297, label %bb79, label %bb80
bb79:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load ptr, ptr %l23, !tbaa !29
  %t302 = getelementptr %"compiler/ast:CaseDecl", ptr %t300, i32 0, i32 1
  %t303 = load i32, ptr %t302, !tbaa !23
  %t306 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t299, i32 %t303)
  store { i64, ptr } %t306, ptr %l171
  br label %bb81
bb80:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb83
bb81:
  %t307 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t308 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s11, { i64, ptr } %t307, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t308, ptr %l172
  br label %bb82
bb82:
  %t309 = load i1, ptr %l172, !tbaa !21
  store i1 %t309, ptr %l167, !tbaa !21
  br label %bb83
bb83:
  %t310 = load i1, ptr %l167, !tbaa !21
  br i1 %t310, label %bb84, label %bb85
bb84:
  %t311 = load ptr, ptr %l0, !tbaa !29
  store ptr %t311, ptr %l173, !tbaa !29
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load ptr, ptr %l23, !tbaa !29
  %t316 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseNameSpan(ptr %v0, ptr %v1, ptr %t312, ptr %t313)
  store %"compiler/source:Span" %t316, ptr %l176
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t317 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromCaseName(ptr %v0)
  store %"compiler/diagmsg:Msg" %t317, ptr %l177
  br label %bb87
bb87:
  %t318 = load ptr, ptr %l173, !tbaa !29
  %t319 = load %"compiler/source:Span", ptr %l176
  %t320 = load %"compiler/diagmsg:Msg", ptr %l177
  %t321 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t318, %"compiler/source:Span" %t319, %"compiler/diagmsg:Msg" %t320)
  store i64 %t321, ptr %l178
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t322 = load ptr, ptr %l23, !tbaa !29
  %t324 = getelementptr %"compiler/ast:CaseDecl", ptr %t322, i32 0, i32 4
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t327 = icmp eq ptr %t325, null
  br i1 %t327, label %bb90, label %bb91
bb90:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load ptr, ptr %l23, !tbaa !29
  %t333 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseNameSpan(ptr %v0, ptr %v1, ptr %t329, ptr %t330)
  store %"compiler/source:Span" %t333, ptr %l185
  br label %bb92
bb91:
  %t334 = load ptr, ptr %l23, !tbaa !29
  %t336 = getelementptr %"compiler/ast:CaseDecl", ptr %t334, i32 0, i32 4
  %t337 = load ptr, ptr %t336, !tbaa !29
  %t339 = icmp eq ptr %t337, null
  br i1 %t339, label %bb93, label %bb94
bb92:
  %t341 = load %"compiler/source:Span", ptr %l185
  store %"compiler/source:Span" %t341, ptr %l182
  br label %bb97
bb93:
  call void @__olang_check_failed(ptr @olang_loc_c9b25feecc9d128e_1218ffeebcd03452)
  unreachable
bb94:
  br label %bb95
bb95:
  %t342 = load ptr, ptr %l23, !tbaa !29
  %t344 = getelementptr %"compiler/ast:CaseDecl", ptr %t342, i32 0, i32 4
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t347 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t345)
  store %"compiler/source:Span" %t347, ptr %l191
  br label %bb96
bb96:
  %t348 = load %"compiler/source:Span", ptr %l191
  store %"compiler/source:Span" %t348, ptr %l182
  br label %bb97
bb97:
  %t349 = load %"compiler/source:Span", ptr %l182
  store %"compiler/source:Span" %t349, ptr %l24
  %t350 = load i1, ptr %l11, !tbaa !21
  br i1 %t350, label %bb98, label %bb99
bb98:
  %t352 = load ptr, ptr %l23, !tbaa !29
  %t354 = getelementptr %"compiler/ast:CaseDecl", ptr %t352, i32 0, i32 4
  %t355 = load ptr, ptr %t354, !tbaa !29
  %t357 = icmp eq ptr %t355, null
  br i1 %t357, label %bb100, label %bb101
bb99:
  br label %bb149
bb100:
  %t359 = load i64, ptr %l22, !tbaa !24
  store i64 %t359, ptr %l196, !tbaa !24
  %t360 = ptrtoint ptr %v3 to i64
  store i64 %t360, ptr %l197, !tbaa !24
  %t361 = load i1, ptr @olang_2esole_2eArray_3cArray_3cU8_3e_26_3e_2e_2d1
  br i1 %t361, label %bb102, label %bb103
bb101:
  %t363 = load ptr, ptr %l0, !tbaa !29
  store ptr %t363, ptr %l206, !tbaa !29
  %t364 = load ptr, ptr %l23, !tbaa !29
  %t366 = getelementptr %"compiler/ast:CaseDecl", ptr %t364, i32 0, i32 4
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t369 = icmp eq ptr %t367, null
  br i1 %t369, label %bb106, label %bb107
bb102:
  %t371 = call ptr @__olang_region_make(ptr %v3)
  %t372 = ptrtoint ptr %t371 to i64
  store i64 %t372, ptr %l197, !tbaa !24
  br label %bb103
bb103:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load ptr, ptr %l23, !tbaa !29
  %t376 = getelementptr %"compiler/ast:CaseDecl", ptr %t374, i32 0, i32 1
  %t377 = load i32, ptr %t376, !tbaa !23
  %t380 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t373, i32 %t377)
  store { i64, ptr } %t380, ptr %l202
  br label %bb104
bb104:
  %t381 = load i64, ptr %l197
  %t382 = inttoptr i64 %t381 to ptr
  %t383 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t384 = call { i64, ptr } @compiler_2fcheck_2etextBytes(ptr %v0, ptr %t382, { i64, ptr } %t383)
  store { i64, ptr } %t384, ptr %l203
  br label %bb105
bb105:
  %t385 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t386 = load i64, ptr %l197
  %t387 = inttoptr i64 %t386 to ptr
  %t388 = extractvalue { i64, ptr } %t385, 0
  %t389 = extractvalue { i64, ptr } %t385, 1
  %t390 = mul i64 %t388, 1
  %t391 = call ptr @__olang_scope_alloc(ptr %t387, i64 %t390)
  call void @llvm.memcpy.p0.p0.i64(ptr %t391, ptr %t389, i64 %t390, i1 false)
  %t392 = insertvalue { i64, ptr } undef, i64 %t388, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t391, 1
  %t395 = load ptr, ptr %lp14
  %t396 = load i64, ptr %l196, !tbaa !24
  %t397 = getelementptr { i64, ptr }, ptr %t395, i32 0, i32 1
  %t398 = load ptr, ptr %t397, !tbaa !27
  %t399 = getelementptr { i64, ptr }, ptr %t398, i64 %t396
  store { i64, ptr } %t393, ptr %t399, !tbaa !37
  br label %bb122
bb106:
  call void @__olang_check_failed(ptr @olang_loc_7a0bf9c228cd53f_3b674c8d006cd93)
  unreachable
bb107:
  br label %bb108
bb108:
  %t400 = load ptr, ptr %l23, !tbaa !29
  %t402 = getelementptr %"compiler/ast:CaseDecl", ptr %t400, i32 0, i32 4
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t404 = load ptr, ptr %l206, !tbaa !29
  %t406 = call { i32, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextValue(ptr %v0, ptr %v1, ptr %t404, ptr %t403)
  %t407 = extractvalue { i32, %"compiler/source:Span" } %t406, 1
  %t408 = extractvalue { i32, %"compiler/source:Span" } %t406, 0
  store i32 %t408, ptr %l213
  %t409 = icmp ne i32 %t408, 0
  br i1 %t409, label %bb110, label %ok.410, !prof !99
ok.410:
  store %"compiler/source:Span" %t407, ptr %l212
  br label %bb109
bb109:
  %t411 = load %"compiler/source:Span", ptr %l212
  store %"compiler/source:Span" %t411, ptr %l205
  br label %bb118
bb110:
  %t412 = load i32, ptr %l213, !tbaa !23
  %t413 = ashr i32 %t412, 16
  %t415 = icmp eq i32 %t413, 1
  store i1 %t415, ptr %l215, !tbaa !21
  br label %bb111
bb111:
  %t416 = load i1, ptr %l4, !tbaa !21
  br i1 %t416, label %bb112, label %bb113
bb112:
  %t418 = load ptr, ptr %l0, !tbaa !29
  store ptr %t418, ptr %l217, !tbaa !29
  %t419 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t419, ptr %l218
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t421 = load i32, ptr %l10, !tbaa !23
  %t424 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t420, i32 %t421)
  store { i64, ptr } %t424, ptr %l221
  br label %bb114
bb113:
  br label %bb117
bb114:
  %t425 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t426 = extractvalue { i64, ptr } %t425, 0
  %t427 = extractvalue { i64, ptr } %t425, 1
  %t428 = mul i64 %t426, 1
  %t429 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t428)
  call void @llvm.memcpy.p0.p0.i64(ptr %t429, ptr %t427, i64 %t428, i1 false)
  %t430 = insertvalue { i64, ptr } undef, i64 %t426, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t429, 1
  %t433 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNotLiteral(ptr %v0, ptr %v0, { i64, ptr } %t431)
  store %"compiler/diagmsg:Msg" %t433, ptr %l223
  br label %bb115
bb115:
  %t434 = load ptr, ptr %l217, !tbaa !29
  %t435 = load %"compiler/source:Span", ptr %l218
  %t436 = load %"compiler/diagmsg:Msg", ptr %l223
  %t437 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t434, %"compiler/source:Span" %t435, %"compiler/diagmsg:Msg" %t436)
  store i64 %t437, ptr %l224
  br label %bb116
bb116:
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s11)
  br label %bb233
bb118:
  %t438 = load %"compiler/source:Span", ptr %l205
  store %"compiler/source:Span" %t438, ptr %l25
  %t439 = load i64, ptr %l22, !tbaa !24
  store i64 %t439, ptr %l225, !tbaa !24
  %t440 = ptrtoint ptr %v3 to i64
  store i64 %t440, ptr %l226, !tbaa !24
  %t441 = load i1, ptr @olang_2esole_2eArray_3cArray_3cU8_3e_26_3e_2e_2d1
  br i1 %t441, label %bb119, label %bb120
bb119:
  %t443 = call ptr @__olang_region_make(ptr %v3)
  %t444 = ptrtoint ptr %t443 to i64
  store i64 %t444, ptr %l226, !tbaa !24
  br label %bb120
bb120:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load %"compiler/source:Span", ptr %l25
  %t447 = load i64, ptr %l226
  %t448 = inttoptr i64 %t447 to ptr
  %t451 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %t448, ptr %t445, %"compiler/source:Span" %t446)
  store { i64, ptr } %t451, ptr %l230
  br label %bb121
bb121:
  %t452 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t453 = load ptr, ptr %lp14
  %t454 = load i64, ptr %l225, !tbaa !24
  %t455 = getelementptr { i64, ptr }, ptr %t453, i32 0, i32 1
  %t456 = load ptr, ptr %t455, !tbaa !27
  %t457 = getelementptr { i64, ptr }, ptr %t456, i64 %t454
  store { i64, ptr } %t452, ptr %t457, !tbaa !37
  br label %bb122
bb122:
  %t458 = load i64, ptr %l22, !tbaa !24
  %t460 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t461 = load ptr, ptr %t460, !tbaa !27
  %t462 = getelementptr i1, ptr %t461, i64 %t458
  store i1 true, ptr %t462, !tbaa !31
  store i64 0, ptr %l26, !tbaa !24
  %t463 = load i64, ptr %l22, !tbaa !24
  store i64 %t463, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t465 = load i64, ptr %l27, !tbaa !24
  %t466 = load i64, ptr %l26, !tbaa !24
  %t469 = icmp sgt i64 %t465, %t466
  br i1 %t469, label %bb123, label %bb124
bb123:
  %t471 = load i64, ptr %l28, !tbaa !24
  %t473 = icmp sgt i64 %t471, 0
  br i1 %t473, label %bb125, label %bb126
bb124:
  store i64 0, ptr %l236, !tbaa !24
  br label %bb128
bb125:
  %t475 = load i64, ptr %l27, !tbaa !24
  %t476 = load i64, ptr %l26, !tbaa !24
  %t479 = sub i64 %t475, %t476
  %t480 = load i64, ptr %l28, !tbaa !24
  %t483 = add i64 %t479, %t480
  %t485 = sub i64 %t483, 1
  %t486 = load i64, ptr %l28, !tbaa !24
  %t489 = sdiv i64 %t485, %t486
  store i64 %t489, ptr %l239, !tbaa !24
  br label %bb127
bb126:
  store i64 0, ptr %l239, !tbaa !24
  br label %bb127
bb127:
  %t491 = load i64, ptr %l239, !tbaa !24
  store i64 %t491, ptr %l236, !tbaa !24
  br label %bb128
bb128:
  %t492 = load i64, ptr %l236, !tbaa !24
  store i64 %t492, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb129
bb129:
  %t493 = load i64, ptr %l30, !tbaa !24
  %t494 = load i64, ptr %l29, !tbaa !24
  %t497 = icmp slt i64 %t493, %t494
  %t499 = xor i1 %t497, true
  br i1 %t499, label %bb130, label %bb131
bb130:
  br label %bb148
bb131:
  br label %bb132
bb132:
  %t501 = load i64, ptr %l26, !tbaa !24
  %t502 = load i64, ptr %l30, !tbaa !24
  %t503 = load i64, ptr %l28, !tbaa !24
  %t506 = mul i64 %t502, %t503
  %t509 = add i64 %t501, %t506
  store i64 %t509, ptr %l31, !tbaa !24
  %t511 = load i64, ptr %l31, !tbaa !24
  %t513 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t514 = load ptr, ptr %t513, !tbaa !27
  %t515 = getelementptr i1, ptr %t514, i64 %t511
  %t516 = load i1, ptr %t515, !tbaa !31
  br i1 %t516, label %bb133, label %bb134
bb133:
  %t518 = load i64, ptr %l31, !tbaa !24
  %t519 = load ptr, ptr %lp14
  %t521 = getelementptr { i64, ptr }, ptr %t519, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr { i64, ptr }, ptr %t522, i64 %t518
  %t524 = load { i64, ptr }, ptr %t523, !tbaa !37
  store { i64, ptr } %t524, ptr %l261, !tbaa !27
  %t525 = load i64, ptr %l22, !tbaa !24
  %t526 = load ptr, ptr %lp14
  %t528 = getelementptr { i64, ptr }, ptr %t526, i32 0, i32 1
  %t529 = load ptr, ptr %t528, !tbaa !27
  %t530 = getelementptr { i64, ptr }, ptr %t529, i64 %t525
  %t531 = load { i64, ptr }, ptr %t530, !tbaa !37
  store { i64, ptr } %t531, ptr %l264, !tbaa !27
  %t534 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cU8_3e_26(ptr %l261, ptr %l264)
  store i1 %t534, ptr %l266
  br label %bb135
bb134:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb136
bb135:
  %t535 = load i1, ptr %l266, !tbaa !21
  store i1 %t535, ptr %l259, !tbaa !21
  br label %bb136
bb136:
  %t536 = load i1, ptr %l259, !tbaa !21
  br i1 %t536, label %bb137, label %bb138
bb137:
  %t537 = load i1, ptr %l4, !tbaa !21
  br i1 %t537, label %bb139, label %bb140
bb138:
  br label %bb146
bb139:
  store %olang.scope zeroinitializer, ptr %s21
  %t539 = load ptr, ptr %l0, !tbaa !29
  store ptr %t539, ptr %l268, !tbaa !29
  %t540 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t540, ptr %l269
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load ptr, ptr %l23, !tbaa !29
  %t544 = getelementptr %"compiler/ast:CaseDecl", ptr %t542, i32 0, i32 1
  %t545 = load i32, ptr %t544, !tbaa !23
  %t548 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t541, i32 %t545)
  store { i64, ptr } %t548, ptr %l273
  br label %bb141
bb140:
  br label %bb145
bb141:
  %t549 = load i64, ptr %l22, !tbaa !24
  %t550 = load ptr, ptr %lp14
  %t552 = getelementptr { i64, ptr }, ptr %t550, i32 0, i32 1
  %t553 = load ptr, ptr %t552, !tbaa !27
  %t554 = getelementptr { i64, ptr }, ptr %t553, i64 %t549
  %t555 = load { i64, ptr }, ptr %t554, !tbaa !37
  store { i64, ptr } %t555, ptr %l276, !tbaa !27
  %t557 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t558 = extractvalue { i64, ptr } %t557, 0
  store i64 %t558, ptr %l277, !tbaa !24
  %t559 = load i64, ptr %l277, !tbaa !24
  %t560 = mul i64 %t559, 1
  %t561 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t560)
  %t562 = insertvalue { i64, ptr } undef, i64 %t559, 0
  %t563 = insertvalue { i64, ptr } %t562, ptr %t561, 1
  store { i64, ptr } %t563, ptr %l278, !tbaa !27
  %t564 = getelementptr { i64, ptr }, ptr %l278, i32 0, i32 1
  %t565 = load ptr, ptr %t564, !tbaa !27
  %t566 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !27
  %t568 = load i64, ptr %l277, !tbaa !24
  %t569 = mul i64 %t568, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t565, ptr %t567, i64 %t569, i1 false)
  %t570 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t571 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t572 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t574 = extractvalue { i64, ptr } %t570, 1
  %t575 = extractvalue { i64, ptr } %t570, 0
  %t576 = add i64 %t572, %t575
  %t577 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t578 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t579 = add i64 %t576, %t578
  %t580 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t579)
  call void @olang_textcopy(ptr %t580, ptr %t571, i64 %t572)
  %t581 = getelementptr i8, ptr %t580, i64 %t572
  call void @olang_textcopy(ptr %t581, ptr %t574, i64 %t575)
  %t582 = getelementptr i8, ptr %t581, i64 %t575
  call void @olang_textcopy(ptr %t582, ptr %t577, i64 %t578)
  %t583 = insertvalue { i64, ptr } undef, i64 %t579, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t580, 1
  %t586 = extractvalue { i64, ptr } %t584, 0
  %t587 = extractvalue { i64, ptr } %t584, 1
  %t588 = mul i64 %t586, 1
  %t589 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t588)
  call void @llvm.memcpy.p0.p0.i64(ptr %t589, ptr %t587, i64 %t588, i1 false)
  %t590 = insertvalue { i64, ptr } undef, i64 %t586, 0
  %t591 = insertvalue { i64, ptr } %t590, ptr %t589, 1
  store { i64, ptr } %t591, ptr %l281, !tbaa !27
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t593 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t593, ptr %l283, !tbaa !27
  %t594 = load i64, ptr %l31, !tbaa !24
  %t596 = getelementptr { i64, ptr }, ptr %l283, i32 0, i32 1
  %t597 = load ptr, ptr %t596, !tbaa !27
  %t598 = getelementptr ptr, ptr %t597, i64 %t594
  %t599 = load ptr, ptr %t598, !tbaa !39
  %t601 = getelementptr %"compiler/ast:CaseDecl", ptr %t599, i32 0, i32 1
  %t602 = load i32, ptr %t601, !tbaa !23
  %t605 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t592, i32 %t602)
  store { i64, ptr } %t605, ptr %l287
  br label %bb142
bb142:
  %t606 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t607 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t608 = load { i64, ptr }, ptr %l287, !tbaa !27
  %t609 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawRepeated(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t606, { i64, ptr } %t607, { i64, ptr } %t608)
  store %"compiler/diagmsg:Msg" %t609, ptr %l288
  br label %bb143
bb143:
  %t610 = load ptr, ptr %l268, !tbaa !29
  %t611 = load %"compiler/source:Span", ptr %l269
  %t612 = load %"compiler/diagmsg:Msg", ptr %l288
  %t613 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t610, %"compiler/source:Span" %t611, %"compiler/diagmsg:Msg" %t612)
  store i64 %t613, ptr %l289
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s21)
  br label %bb145
bb145:
  br label %bb148
bb146:
  br label %bb147
bb147:
  %t614 = load i64, ptr %l30, !tbaa !24
  %t616 = add i64 %t614, 1
  store i64 %t616, ptr %l30, !tbaa !24
  br label %bb129
bb148:
  call void @__olang_scope_close(ptr %s11)
  br label %bb233
bb149:
  %t618 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t618, ptr %l292
  br label %bb150
bb150:
  %t619 = load %"compiler/check:litv", ptr %l292
  store %"compiler/check:litv" %t619, ptr %l32
  %t620 = load ptr, ptr %l23, !tbaa !29
  %t622 = getelementptr %"compiler/ast:CaseDecl", ptr %t620, i32 0, i32 4
  %t623 = load ptr, ptr %t622, !tbaa !29
  %t625 = icmp eq ptr %t623, null
  br i1 %t625, label %bb151, label %bb152
bb151:
  %t627 = load %"compiler/check:litv", ptr %l16
  %t629 = call %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %t627)
  store %"compiler/check:signMag" %t629, ptr %l297
  br label %bb153
bb152:
  %t630 = load ptr, ptr %l23, !tbaa !29
  %t632 = getelementptr %"compiler/ast:CaseDecl", ptr %t630, i32 0, i32 4
  %t633 = load ptr, ptr %t632, !tbaa !29
  %t635 = icmp eq ptr %t633, null
  br i1 %t635, label %bb159, label %bb160
bb153:
  %t637 = load %"compiler/check:signMag", ptr %l297
  store %"compiler/check:signMag" %t637, ptr %l33
  %t638 = getelementptr %"compiler/check:signMag", ptr %l33, i32 0, i32 0
  %t639 = load i1, ptr %t638, !tbaa !21
  store i1 %t639, ptr %l34, !tbaa !21
  %t641 = getelementptr %"compiler/check:signMag", ptr %l33, i32 0, i32 1
  %t642 = load i128, ptr %t641
  store i128 %t642, ptr %l35
  %t644 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t645 = load i1, ptr %t644, !tbaa !21
  br i1 %t645, label %bb154, label %bb155
bb154:
  %t647 = load i1, ptr %l34, !tbaa !21
  %t648 = load i128, ptr %l35
  %t651 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eaddMag(i1 %t647, i128 %t648, i1 false, i128 1)
  store %"compiler/check:litv" %t651, ptr %l304
  br label %bb156
bb155:
  %t652 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t652, ptr %l305
  br label %bb157
bb156:
  %t653 = load %"compiler/check:litv", ptr %l304
  store %"compiler/check:litv" %t653, ptr %l301
  br label %bb158
bb157:
  %t654 = load %"compiler/check:litv", ptr %l305
  store %"compiler/check:litv" %t654, ptr %l301
  br label %bb158
bb158:
  %t655 = load %"compiler/check:litv", ptr %l301
  store %"compiler/check:litv" %t655, ptr %l32
  br label %bb177
bb159:
  call void @__olang_check_failed(ptr @olang_loc_bdfafd86356a320_3271504b736459c4)
  unreachable
bb160:
  br label %bb161
bb161:
  %t656 = load ptr, ptr %l23, !tbaa !29
  %t658 = getelementptr %"compiler/ast:CaseDecl", ptr %t656, i32 0, i32 4
  %t659 = load ptr, ptr %t658, !tbaa !29
  %t662 = call i1 @compiler_2fcheck_2enumberLitsOnly(ptr %v1, ptr %t659)
  store i1 %t662, ptr %l312
  br label %bb162
bb162:
  %t663 = load i1, ptr %l312, !tbaa !21
  br i1 %t663, label %bb163, label %bb164
bb163:
  store i1 true, ptr %l313, !tbaa !21
  br label %bb169
bb164:
  %t664 = load ptr, ptr %l23, !tbaa !29
  %t666 = getelementptr %"compiler/ast:CaseDecl", ptr %t664, i32 0, i32 4
  %t667 = load ptr, ptr %t666, !tbaa !29
  %t669 = icmp eq ptr %t667, null
  br i1 %t669, label %bb165, label %bb166
bb165:
  call void @__olang_check_failed(ptr @olang_loc_bdfafd86356a320_3271504b736459c4)
  unreachable
bb166:
  br label %bb167
bb167:
  %t671 = load ptr, ptr %l23, !tbaa !29
  %t673 = getelementptr %"compiler/ast:CaseDecl", ptr %t671, i32 0, i32 4
  %t674 = load ptr, ptr %t673, !tbaa !29
  %t676 = call i1 @compiler_2fcheck_2eisCharLit(ptr %v1, ptr %t674)
  store i1 %t676, ptr %l319
  br label %bb168
bb168:
  %t677 = load i1, ptr %l319, !tbaa !21
  store i1 %t677, ptr %l313, !tbaa !21
  br label %bb169
bb169:
  %t678 = load i1, ptr %l313, !tbaa !21
  br i1 %t678, label %bb170, label %bb171
bb170:
  %t679 = load ptr, ptr %l0, !tbaa !29
  store ptr %t679, ptr %l320, !tbaa !29
  %t680 = load ptr, ptr %l23, !tbaa !29
  %t682 = getelementptr %"compiler/ast:CaseDecl", ptr %t680, i32 0, i32 4
  %t683 = load ptr, ptr %t682, !tbaa !29
  %t685 = icmp eq ptr %t683, null
  br i1 %t685, label %bb172, label %bb173
bb171:
  br label %bb176
bb172:
  call void @__olang_check_failed(ptr @olang_loc_cf3f79d848e44ed1_488edda033e9ba8d)
  unreachable
bb173:
  br label %bb174
bb174:
  %t687 = load ptr, ptr %l23, !tbaa !29
  %t689 = getelementptr %"compiler/ast:CaseDecl", ptr %t687, i32 0, i32 4
  %t690 = load ptr, ptr %t689, !tbaa !29
  %t691 = load ptr, ptr %l320, !tbaa !29
  %t693 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %t691, ptr %t690)
  store %"compiler/check:litv" %t693, ptr %l326
  br label %bb175
bb175:
  %t694 = load %"compiler/check:litv", ptr %l326
  store %"compiler/check:litv" %t694, ptr %l32
  br label %bb176
bb176:
  br label %bb177
bb177:
  %t695 = getelementptr %"compiler/check:litv", ptr %l32, i32 0, i32 0
  %t696 = load i1, ptr %t695, !tbaa !21
  %t698 = xor i1 %t696, true
  br i1 %t698, label %bb178, label %bb179
bb178:
  store i1 true, ptr %l329, !tbaa !21
  br label %bb180
bb179:
  %t700 = getelementptr %"compiler/check:litv", ptr %l32, i32 0, i32 1
  %t701 = load i1, ptr %t700, !tbaa !21
  store i1 %t701, ptr %l329, !tbaa !21
  br label %bb180
bb180:
  %t703 = load i1, ptr %l329, !tbaa !21
  br i1 %t703, label %bb181, label %bb182
bb181:
  %t704 = load i1, ptr %l4, !tbaa !21
  br i1 %t704, label %bb183, label %bb184
bb182:
  br label %bb195
bb183:
  %t706 = load ptr, ptr %l0, !tbaa !29
  store ptr %t706, ptr %l332, !tbaa !29
  %t707 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t707, ptr %l333
  %t708 = load ptr, ptr %l23, !tbaa !29
  %t710 = getelementptr %"compiler/ast:CaseDecl", ptr %t708, i32 0, i32 4
  %t711 = load ptr, ptr %t710, !tbaa !29
  %t713 = icmp eq ptr %t711, null
  %t715 = xor i1 %t713, true
  br i1 %t715, label %bb185, label %bb186
bb184:
  br label %bb193
bb185:
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t718 = load i32, ptr %l10, !tbaa !23
  %t721 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t717, i32 %t718)
  store { i64, ptr } %t721, ptr %l341
  br label %bb187
bb186:
  %t722 = load ptr, ptr %l0, !tbaa !29
  %t723 = load i32, ptr %l10, !tbaa !23
  %t726 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t722, i32 %t723)
  store { i64, ptr } %t726, ptr %l346
  br label %bb189
bb187:
  %t727 = load { i64, ptr }, ptr %l341, !tbaa !27
  %t728 = extractvalue { i64, ptr } %t727, 0
  %t729 = extractvalue { i64, ptr } %t727, 1
  %t730 = mul i64 %t728, 1
  %t731 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t730)
  call void @llvm.memcpy.p0.p0.i64(ptr %t731, ptr %t729, i64 %t730, i1 false)
  %t732 = insertvalue { i64, ptr } undef, i64 %t728, 0
  %t733 = insertvalue { i64, ptr } %t732, ptr %t731, 1
  %t735 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNotLiteral(ptr %v0, ptr %v0, { i64, ptr } %t733)
  store %"compiler/diagmsg:Msg" %t735, ptr %l343
  br label %bb188
bb188:
  %t736 = load %"compiler/diagmsg:Msg", ptr %l343
  store %"compiler/diagmsg:Msg" %t736, ptr %l338
  br label %bb191
bb189:
  %t737 = load { i64, ptr }, ptr %l346, !tbaa !27
  %t738 = extractvalue { i64, ptr } %t737, 0
  %t739 = extractvalue { i64, ptr } %t737, 1
  %t740 = mul i64 %t738, 1
  %t741 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t740)
  call void @llvm.memcpy.p0.p0.i64(ptr %t741, ptr %t739, i64 %t740, i1 false)
  %t742 = insertvalue { i64, ptr } undef, i64 %t738, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t741, 1
  %t745 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNoFit(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d33, i32 0, i32 1) }, { i64, ptr } %t743)
  store %"compiler/diagmsg:Msg" %t745, ptr %l348
  br label %bb190
bb190:
  %t746 = load %"compiler/diagmsg:Msg", ptr %l348
  store %"compiler/diagmsg:Msg" %t746, ptr %l338
  br label %bb191
bb191:
  %t747 = load ptr, ptr %l332, !tbaa !29
  %t748 = load %"compiler/source:Span", ptr %l333
  %t749 = load %"compiler/diagmsg:Msg", ptr %l338
  %t750 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t747, %"compiler/source:Span" %t748, %"compiler/diagmsg:Msg" %t749)
  store i64 %t750, ptr %l349
  br label %bb192
bb192:
  br label %bb193
bb193:
  %t751 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t751, ptr %l350
  br label %bb194
bb194:
  %t752 = load %"compiler/check:litv", ptr %l350
  store %"compiler/check:litv" %t752, ptr %l16
  call void @__olang_scope_close(ptr %s11)
  br label %bb233
bb195:
  %t753 = load %"compiler/check:litv", ptr %l32
  store %"compiler/check:litv" %t753, ptr %l16
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t756 = load %"compiler/check:litv", ptr %l32
  %t757 = load i32, ptr %l10, !tbaa !23
  %t761 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawFits(ptr %v0, ptr %t755, %"compiler/check:litv" %t756, i32 %t757)
  store i1 %t761, ptr %l355
  br label %bb196
bb196:
  %t762 = load i1, ptr %l355, !tbaa !21
  %t763 = xor i1 %t762, true
  br i1 %t763, label %bb197, label %bb198
bb197:
  %t765 = load i1, ptr %l4, !tbaa !21
  br i1 %t765, label %bb199, label %bb200
bb198:
  br label %bb206
bb199:
  %t767 = load ptr, ptr %l0, !tbaa !29
  store ptr %t767, ptr %l358, !tbaa !29
  %t768 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t768, ptr %l359
  %t769 = load %"compiler/check:litv", ptr %l32
  %t771 = call { i64, ptr } @compiler_2fcheck_2elitText(ptr %v0, %"compiler/check:litv" %t769)
  store { i64, ptr } %t771, ptr %l361
  br label %bb201
bb200:
  br label %bb205
bb201:
  %t772 = load { i64, ptr }, ptr %l361, !tbaa !27
  %t773 = extractvalue { i64, ptr } %t772, 0
  %t774 = extractvalue { i64, ptr } %t772, 1
  %t775 = mul i64 %t773, 1
  %t776 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t775)
  call void @llvm.memcpy.p0.p0.i64(ptr %t776, ptr %t774, i64 %t775, i1 false)
  %t777 = insertvalue { i64, ptr } undef, i64 %t773, 0
  %t778 = insertvalue { i64, ptr } %t777, ptr %t776, 1
  store { i64, ptr } %t778, ptr %l362, !tbaa !27
  %t779 = load ptr, ptr %l0, !tbaa !29
  %t780 = load i32, ptr %l10, !tbaa !23
  %t783 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t779, i32 %t780)
  store { i64, ptr } %t783, ptr %l365
  br label %bb202
bb202:
  %t784 = load { i64, ptr }, ptr %l365, !tbaa !27
  %t785 = extractvalue { i64, ptr } %t784, 0
  %t786 = extractvalue { i64, ptr } %t784, 1
  %t787 = mul i64 %t785, 1
  %t788 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t787)
  call void @llvm.memcpy.p0.p0.i64(ptr %t788, ptr %t786, i64 %t787, i1 false)
  %t789 = insertvalue { i64, ptr } undef, i64 %t785, 0
  %t790 = insertvalue { i64, ptr } %t789, ptr %t788, 1
  %t791 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t793 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNoFit(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t791, { i64, ptr } %t790)
  store %"compiler/diagmsg:Msg" %t793, ptr %l367
  br label %bb203
bb203:
  %t794 = load ptr, ptr %l358, !tbaa !29
  %t795 = load %"compiler/source:Span", ptr %l359
  %t796 = load %"compiler/diagmsg:Msg", ptr %l367
  %t797 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t794, %"compiler/source:Span" %t795, %"compiler/diagmsg:Msg" %t796)
  store i64 %t797, ptr %l368
  br label %bb204
bb204:
  br label %bb205
bb205:
  call void @__olang_scope_close(ptr %s11)
  br label %bb233
bb206:
  %t798 = load i64, ptr %l22, !tbaa !24
  %t799 = getelementptr %"compiler/check:litv", ptr %l32, i32 0, i32 3
  %t800 = load i64, ptr %t799, !tbaa !24
  %t802 = load ptr, ptr %lp13
  %t804 = getelementptr { i64, ptr }, ptr %t802, i32 0, i32 1
  %t805 = load ptr, ptr %t804, !tbaa !27
  %t806 = getelementptr i64, ptr %t805, i64 %t798
  store i64 %t800, ptr %t806, !tbaa !34
  %t807 = load i64, ptr %l22, !tbaa !24
  %t809 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t810 = load ptr, ptr %t809, !tbaa !27
  %t811 = getelementptr i1, ptr %t810, i64 %t807
  store i1 true, ptr %t811, !tbaa !31
  store i64 0, ptr %l36, !tbaa !24
  %t812 = load i64, ptr %l22, !tbaa !24
  store i64 %t812, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t814 = load i64, ptr %l37, !tbaa !24
  %t815 = load i64, ptr %l36, !tbaa !24
  %t818 = icmp sgt i64 %t814, %t815
  br i1 %t818, label %bb207, label %bb208
bb207:
  %t820 = load i64, ptr %l38, !tbaa !24
  %t822 = icmp sgt i64 %t820, 0
  br i1 %t822, label %bb209, label %bb210
bb208:
  store i64 0, ptr %l376, !tbaa !24
  br label %bb212
bb209:
  %t824 = load i64, ptr %l37, !tbaa !24
  %t825 = load i64, ptr %l36, !tbaa !24
  %t828 = sub i64 %t824, %t825
  %t829 = load i64, ptr %l38, !tbaa !24
  %t832 = add i64 %t828, %t829
  %t834 = sub i64 %t832, 1
  %t835 = load i64, ptr %l38, !tbaa !24
  %t838 = sdiv i64 %t834, %t835
  store i64 %t838, ptr %l379, !tbaa !24
  br label %bb211
bb210:
  store i64 0, ptr %l379, !tbaa !24
  br label %bb211
bb211:
  %t840 = load i64, ptr %l379, !tbaa !24
  store i64 %t840, ptr %l376, !tbaa !24
  br label %bb212
bb212:
  %t841 = load i64, ptr %l376, !tbaa !24
  store i64 %t841, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb213
bb213:
  %t842 = load i64, ptr %l40, !tbaa !24
  %t843 = load i64, ptr %l39, !tbaa !24
  %t846 = icmp slt i64 %t842, %t843
  %t848 = xor i1 %t846, true
  br i1 %t848, label %bb214, label %bb215
bb214:
  br label %bb232
bb215:
  br label %bb216
bb216:
  %t850 = load i64, ptr %l36, !tbaa !24
  %t851 = load i64, ptr %l40, !tbaa !24
  %t852 = load i64, ptr %l38, !tbaa !24
  %t855 = mul i64 %t851, %t852
  %t858 = add i64 %t850, %t855
  store i64 %t858, ptr %l41, !tbaa !24
  %t860 = load i64, ptr %l41, !tbaa !24
  %t862 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t863 = load ptr, ptr %t862, !tbaa !27
  %t864 = getelementptr i1, ptr %t863, i64 %t860
  %t865 = load i1, ptr %t864, !tbaa !31
  br i1 %t865, label %bb217, label %bb218
bb217:
  %t867 = load i64, ptr %l41, !tbaa !24
  %t868 = load ptr, ptr %lp13
  %t870 = getelementptr { i64, ptr }, ptr %t868, i32 0, i32 1
  %t871 = load ptr, ptr %t870, !tbaa !27
  %t872 = getelementptr i64, ptr %t871, i64 %t867
  %t873 = load i64, ptr %t872, !tbaa !34
  %t874 = load i64, ptr %l22, !tbaa !24
  %t875 = load ptr, ptr %lp13
  %t877 = getelementptr { i64, ptr }, ptr %t875, i32 0, i32 1
  %t878 = load ptr, ptr %t877, !tbaa !27
  %t879 = getelementptr i64, ptr %t878, i64 %t874
  %t880 = load i64, ptr %t879, !tbaa !34
  %t883 = icmp eq i64 %t873, %t880
  store i1 %t883, ptr %l399, !tbaa !21
  br label %bb219
bb218:
  store i1 false, ptr %l399, !tbaa !21
  br label %bb219
bb219:
  %t885 = load i1, ptr %l399, !tbaa !21
  br i1 %t885, label %bb220, label %bb221
bb220:
  %t886 = load i1, ptr %l4, !tbaa !21
  br i1 %t886, label %bb222, label %bb223
bb221:
  br label %bb230
bb222:
  %t888 = load ptr, ptr %l0, !tbaa !29
  store ptr %t888, ptr %l406, !tbaa !29
  %t889 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t889, ptr %l407
  %t890 = load ptr, ptr %l0, !tbaa !29
  %t891 = load ptr, ptr %l23, !tbaa !29
  %t893 = getelementptr %"compiler/ast:CaseDecl", ptr %t891, i32 0, i32 1
  %t894 = load i32, ptr %t893, !tbaa !23
  %t897 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t890, i32 %t894)
  store { i64, ptr } %t897, ptr %l411
  br label %bb224
bb223:
  br label %bb229
bb224:
  %t898 = load %"compiler/check:litv", ptr %l32
  %t900 = call { i64, ptr } @compiler_2fcheck_2elitText(ptr %v0, %"compiler/check:litv" %t898)
  store { i64, ptr } %t900, ptr %l413
  br label %bb225
bb225:
  %t901 = load { i64, ptr }, ptr %l413, !tbaa !27
  %t902 = extractvalue { i64, ptr } %t901, 0
  %t903 = extractvalue { i64, ptr } %t901, 1
  %t904 = mul i64 %t902, 1
  %t905 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t904)
  call void @llvm.memcpy.p0.p0.i64(ptr %t905, ptr %t903, i64 %t904, i1 false)
  %t906 = insertvalue { i64, ptr } undef, i64 %t902, 0
  %t907 = insertvalue { i64, ptr } %t906, ptr %t905, 1
  store { i64, ptr } %t907, ptr %l414, !tbaa !27
  %t908 = load ptr, ptr %l0, !tbaa !29
  %t909 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t909, ptr %l416, !tbaa !27
  %t910 = load i64, ptr %l41, !tbaa !24
  %t912 = getelementptr { i64, ptr }, ptr %l416, i32 0, i32 1
  %t913 = load ptr, ptr %t912, !tbaa !27
  %t914 = getelementptr ptr, ptr %t913, i64 %t910
  %t915 = load ptr, ptr %t914, !tbaa !39
  %t917 = getelementptr %"compiler/ast:CaseDecl", ptr %t915, i32 0, i32 1
  %t918 = load i32, ptr %t917, !tbaa !23
  %t921 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t908, i32 %t918)
  store { i64, ptr } %t921, ptr %l420
  br label %bb226
bb226:
  %t922 = load { i64, ptr }, ptr %l411, !tbaa !27
  %t923 = load { i64, ptr }, ptr %l414, !tbaa !27
  %t924 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t925 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawRepeated(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t922, { i64, ptr } %t923, { i64, ptr } %t924)
  store %"compiler/diagmsg:Msg" %t925, ptr %l421
  br label %bb227
bb227:
  %t926 = load ptr, ptr %l406, !tbaa !29
  %t927 = load %"compiler/source:Span", ptr %l407
  %t928 = load %"compiler/diagmsg:Msg", ptr %l421
  %t929 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t926, %"compiler/source:Span" %t927, %"compiler/diagmsg:Msg" %t928)
  store i64 %t929, ptr %l422
  br label %bb228
bb228:
  br label %bb229
bb229:
  br label %bb232
bb230:
  br label %bb231
bb231:
  %t930 = load i64, ptr %l40, !tbaa !24
  %t932 = add i64 %t930, 1
  store i64 %t932, ptr %l40, !tbaa !24
  br label %bb213
bb232:
  call void @__olang_scope_close(ptr %s11)
  br label %bb233
bb233:
  %t934 = load i64, ptr %l21, !tbaa !24
  %t936 = add i64 %t934, 1
  store i64 %t936, ptr %l21, !tbaa !24
  br label %bb75
bb234:
  %t938 = load i32, ptr %l10, !tbaa !23
  %t939 = load i1, ptr %l11, !tbaa !21
  %t940 = load ptr, ptr %lp13
  %t941 = load { i64, ptr }, ptr %t940, !tbaa !27
  %t942 = load ptr, ptr %lp14
  %t943 = load { i64, ptr }, ptr %t942, !tbaa !27
  %t948 = call %"compiler/check:rawTable" @compiler_2fcheck_3arawTable_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t938, i1 %t939, { i64, ptr } %t941, { i64, ptr } %t943)
  store %"compiler/check:rawTable" %t948, ptr %l431
  br label %bb235
bb235:
  %t949 = load %"compiler/check:rawTable", ptr %l431
  %t950 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store %"compiler/check:rawTable" %t949, ptr %t950
  call void @__olang_scope_close(ptr %s0)
  store ptr %t950, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l45 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i1
  %l53 = alloca i1
  %l57 = alloca i1
  %l58 = alloca i1
  %l62 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Call", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i64, ptr %l13, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Call", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb7:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l26, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l26, !tbaa !24
  store i64 %t48, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l23, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  br label %bb29
bb13:
  br label %bb14
bb14:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l8, !tbaa !24
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Call", ptr %t68, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l45, !tbaa !27
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr ptr, ptr %t75, i64 %t72
  %t77 = load ptr, ptr %t76, !tbaa !39
  store ptr %t77, ptr %l9, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l48, !tbaa !29
  %t80 = load ptr, ptr %l9, !tbaa !29
  %t83 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t80)
  store i32 %t83, ptr %l51
  br label %bb15
bb15:
  %t84 = load ptr, ptr %l48, !tbaa !29
  %t85 = load i32, ptr %l51, !tbaa !23
  %t86 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t86, ptr %l52
  br label %bb16
bb16:
  %t87 = load i1, ptr %l52, !tbaa !21
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t94 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %t88, i64 %t89, i64 %t90)
  store i1 %t94, ptr %l57
  br label %bb19
bb18:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb20
bb19:
  %t95 = load i1, ptr %l57, !tbaa !21
  store i1 %t95, ptr %l53, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l53, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l9, !tbaa !29
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t97, ptr %t98)
  store i1 %t102, ptr %l62
  br label %bb23
bb22:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb24
bb23:
  %t103 = load i1, ptr %l62, !tbaa !21
  store i1 %t103, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t104 = load i1, ptr %l58, !tbaa !21
  br i1 %t104, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t106 = load i64, ptr %l7, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l7, !tbaa !24
  br label %bb11
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, { i64, ptr } %a4, ptr %a5, i32 %a6, ptr %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca ptr
  %l24 = alloca i32
  %l31 = alloca ptr
  %l36 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l56 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i32
  %l68 = alloca i1
  %l72 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca i1
  %l85 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca i32
  %l91 = alloca i32
  %l95 = alloca ptr
  %l99 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca ptr
  %l103 = alloca %"compiler/source:Span"
  %l104 = alloca i32
  %l108 = alloca ptr
  %l116 = alloca i64
  %l119 = alloca i64
  %l137 = alloca { i64, ptr }
  %l140 = alloca i1
  %l141 = alloca { i64, ptr }
  %l144 = alloca %"compiler/source:Span"
  %l148 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l167 = alloca ptr
  %l168 = alloca ptr
  %l170 = alloca i32
  %l173 = alloca ptr
  %l174 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t181 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a5, ptr %l5
  store i32 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l6, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load i32, ptr %l24, !tbaa !23
  store i32 %t6, ptr %l9, !tbaa !23
  %t7 = load i32, ptr %l9, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t13, %"compiler/source:Span" %t14, i32 %t15, i64 0)
  store ptr %t19, ptr %l31
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load ptr, ptr %l31, !tbaa !29
  store ptr %t20, ptr %rv
  br label %ret
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l9, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPatOf(ptr %v0, ptr %v1, ptr %t21, ptr %t22, i32 %a3, i32 %t24)
  store i1 %t29, ptr %l36
  br label %bb6
bb6:
  %t30 = load i1, ptr %l36, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l38, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t34)
  store %"compiler/source:Span" %t36, ptr %l40
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l9, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t37, i32 %t38)
  store { i64, ptr } %t41, ptr %l43
  br label %bb10
bb10:
  %t42 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l44, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l45, !tbaa !29
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t50)
  store %"compiler/source:Span" %t52, ptr %l47
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l45, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l47
  %t55 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t53, %"compiler/source:Span" %t54)
  store { i64, ptr } %t55, ptr %l48
  br label %bb12
bb12:
  %t56 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t57 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t56)
  store { i64, ptr } %t57, ptr %l49
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t65 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t67 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatType(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t65, { i64, ptr } %t64)
  store %"compiler/diagmsg:Msg" %t67, ptr %l51
  br label %bb14
bb14:
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l40
  %t70 = load %"compiler/diagmsg:Msg", ptr %l51
  %t71 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t68, %"compiler/source:Span" %t69, %"compiler/diagmsg:Msg" %t70)
  store i64 %t71, ptr %l52
  br label %bb15
bb15:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l1
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t72, %"compiler/source:Span" %t73, i32 %t74, i64 0)
  store ptr %t78, ptr %l56
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t79 = load ptr, ptr %l56, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l9, !tbaa !23
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructFields(ptr %v0, ptr %s0, ptr %t80, i32 %t81)
  store ptr %t84, ptr %l59
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l59, !tbaa !29
  store ptr %t85, ptr %l10, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l1
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t94 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v2, ptr %s0, ptr %v5, ptr %t86, %"compiler/source:Span" %t87, { i64, ptr } %a4, ptr %t89, i1 true)
  %t95 = extractvalue { i32, { i64, ptr } } %t94, 1
  %t96 = extractvalue { i32, { i64, ptr } } %t94, 0
  store i32 %t96, ptr %l66
  %t97 = icmp ne i32 %t96, 0
  br i1 %t97, label %bb20, label %ok.98, !prof !99
ok.98:
  store { i64, ptr } %t95, ptr %l65
  br label %bb19
bb19:
  %t99 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t99, ptr %l60, !tbaa !27
  br label %bb23
bb20:
  %t100 = load i32, ptr %l66, !tbaa !23
  %t101 = ashr i32 %t100, 16
  %t103 = icmp eq i32 %t101, 1
  store i1 %t103, ptr %l68, !tbaa !21
  br label %bb21
bb21:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l1
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t110 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t104, %"compiler/source:Span" %t105, i32 %t106, i64 0)
  store ptr %t110, ptr %l72
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load ptr, ptr %l72, !tbaa !29
  store ptr %t111, ptr %rv
  br label %ret
bb23:
  %t112 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t112, ptr %l11, !tbaa !27
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l1
  %t115 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t113, %"compiler/source:Span" %t114, i32 %t115, i64 1)
  store ptr %t119, ptr %l76
  br label %bb24
bb24:
  %t120 = load ptr, ptr %l76, !tbaa !29
  store ptr %t120, ptr %l12, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  store ptr %t121, ptr %l13, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l6, !tbaa !23
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t123, i32 %t124)
  store i1 %t127, ptr %l80
  br label %bb25
bb25:
  %t128 = load i1, ptr %l80, !tbaa !21
  br i1 %t128, label %bb26, label %bb27
bb26:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 2
  %t135 = load i32, ptr %l6, !tbaa !23
  %t138 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t134, i32 %t135)
  store i1 %t138, ptr %l85
  br label %bb28
bb27:
  br label %bb37
bb28:
  %t139 = load i1, ptr %l85, !tbaa !21
  br i1 %t139, label %bb29, label %bb30
bb29:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l86, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t141, ptr %l87
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l88, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t143, ptr %l89
  %t144 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t144, ptr %l90, !tbaa !23
  store i32 19, ptr %l91
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l1
  %t147 = load ptr, ptr %l5, !tbaa !29
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t145, %"compiler/source:Span" %t146, ptr %t147)
  store ptr %t151, ptr %l95
  br label %bb31
bb30:
  br label %bb35
bb31:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l1
  %t154 = load i32, ptr %l6, !tbaa !23
  %t158 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t152, %"compiler/source:Span" %t153, i32 %t154)
  store ptr %t158, ptr %l99
  br label %bb32
bb32:
  %t159 = load ptr, ptr %l99, !tbaa !29
  %t160 = load ptr, ptr %l88, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l89
  %t162 = load i32, ptr %l90, !tbaa !23
  %t163 = load i32, ptr %l91, !range !{i32 0, i32 52}
  %t164 = load ptr, ptr %l95, !tbaa !29
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %t160, %"compiler/source:Span" %t161, i32 %t162, i32 %t163, ptr %t164, ptr %t159)
  store ptr %t166, ptr %l101
  br label %bb33
bb33:
  %t167 = load ptr, ptr %l86, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l87
  %t169 = load ptr, ptr %l101, !tbaa !29
  %t170 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v0, ptr %v5, ptr %t167, %"compiler/source:Span" %t168, ptr %t169)
  store ptr %t170, ptr %l102
  br label %bb34
bb34:
  %t171 = load ptr, ptr %l102, !tbaa !29
  store ptr %t171, ptr %l12, !tbaa !29
  br label %bb35
bb35:
  %t172 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t172, ptr %l103
  %t173 = load i32, ptr %l9, !tbaa !23
  store i32 %t173, ptr %l104, !tbaa !23
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l1
  %t176 = load ptr, ptr %l5, !tbaa !29
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v5, ptr %t174, %"compiler/source:Span" %t175, ptr %t176)
  store ptr %t180, ptr %l108
  br label %bb36
bb36:
  store { i64, [4 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 0
  store i64 2, ptr %t182
  %t183 = load %"compiler/source:Span", ptr %l103
  %t184 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t183, 0
  %t185 = load i32, ptr %l104, !tbaa !23
  %t186 = insertvalue { %"compiler/source:Span", i32, ptr } %t184, i32 %t185, 1
  %t187 = load ptr, ptr %l108, !tbaa !29
  %t188 = insertvalue { %"compiler/source:Span", i32, ptr } %t186, ptr %t187, 2
  %t189 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t188, ptr %t189
  %t190 = load { i64, [4 x i64] }, ptr %t181
  %t192 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store { i64, [4 x i64] } %t190, ptr %t192
  store ptr %t192, ptr %l13, !tbaa !29
  br label %bb37
bb37:
  store i64 0, ptr %l14, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 0
  store i64 %t196, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t198 = load i64, ptr %l15, !tbaa !24
  %t199 = load i64, ptr %l14, !tbaa !24
  %t202 = icmp sgt i64 %t198, %t199
  br i1 %t202, label %bb38, label %bb39
bb38:
  %t204 = load i64, ptr %l16, !tbaa !24
  %t206 = icmp sgt i64 %t204, 0
  br i1 %t206, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb43
bb40:
  %t208 = load i64, ptr %l15, !tbaa !24
  %t209 = load i64, ptr %l14, !tbaa !24
  %t212 = sub i64 %t208, %t209
  %t213 = load i64, ptr %l16, !tbaa !24
  %t216 = add i64 %t212, %t213
  %t218 = sub i64 %t216, 1
  %t219 = load i64, ptr %l16, !tbaa !24
  %t222 = sdiv i64 %t218, %t219
  store i64 %t222, ptr %l119, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l119, !tbaa !24
  br label %bb42
bb42:
  %t224 = load i64, ptr %l119, !tbaa !24
  store i64 %t224, ptr %l116, !tbaa !24
  br label %bb43
bb43:
  %t225 = load i64, ptr %l116, !tbaa !24
  store i64 %t225, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  %t226 = load i64, ptr %l18, !tbaa !24
  %t227 = load i64, ptr %l17, !tbaa !24
  %t230 = icmp slt i64 %t226, %t227
  %t232 = xor i1 %t230, true
  br i1 %t232, label %bb45, label %bb46
bb45:
  br label %bb62
bb46:
  br label %bb47
bb47:
  %t234 = load i64, ptr %l14, !tbaa !24
  %t235 = load i64, ptr %l18, !tbaa !24
  %t236 = load i64, ptr %l16, !tbaa !24
  %t239 = mul i64 %t235, %t236
  %t242 = add i64 %t234, %t239
  store i64 %t242, ptr %l19, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t244, ptr %l137, !tbaa !27
  %t245 = load i64, ptr %l19, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr ptr, ptr %t248, i64 %t245
  %t250 = load ptr, ptr %t249, !tbaa !39
  %t252 = call i1 @compiler_2fcheck_2eisWild(ptr %v5, ptr %t250)
  store i1 %t252, ptr %l140
  br label %bb48
bb48:
  %t253 = load i1, ptr %l140, !tbaa !21
  br i1 %t253, label %bb49, label %bb50
bb49:
  br label %bb61
bb50:
  br label %bb51
bb51:
  %t254 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t254, ptr %l141, !tbaa !27
  %t255 = load i64, ptr %l19, !tbaa !24
  %t257 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr ptr, ptr %t258, i64 %t255
  %t260 = load ptr, ptr %t259, !tbaa !39
  %t262 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v5, ptr %t260)
  store %"compiler/source:Span" %t262, ptr %l144
  br label %bb52
bb52:
  %t263 = load %"compiler/source:Span", ptr %l144
  store %"compiler/source:Span" %t263, ptr %l20
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l20
  %t266 = load %"compiler/source:Span", ptr %l20
  %t267 = load ptr, ptr %l13, !tbaa !29
  store ptr %t267, ptr %l148, !tbaa !29
  %t268 = load ptr, ptr %l10, !tbaa !29
  %t270 = getelementptr %"compiler/check:fieldSet", ptr %t268, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  store { i64, ptr } %t271, ptr %l150, !tbaa !27
  %t272 = load i64, ptr %l19, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i32, ptr %t275, i64 %t272
  %t277 = load i32, ptr %t276, !tbaa !33
  %t278 = load ptr, ptr %l148, !tbaa !29
  %t279 = call ptr @__olang_scope_of(ptr %t278, ptr null)
  %t280 = ptrtoint ptr %t279 to i64
  %t282 = inttoptr i64 %t280 to ptr
  %t286 = load ptr, ptr %l148, !tbaa !29
  %t288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %t282, ptr %v5, ptr %t264, %"compiler/source:Span" %t265, %"compiler/source:Span" %t266, ptr %t286, i32 %t277)
  store ptr %t288, ptr %l154
  br label %bb53
bb53:
  %t289 = load ptr, ptr %l154, !tbaa !29
  store ptr %t289, ptr %l21, !tbaa !29
  %t290 = load ptr, ptr %l21, !tbaa !29
  %t292 = icmp eq ptr %t290, null
  br i1 %t292, label %bb54, label %bb55
bb54:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l1
  %t296 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t300 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t294, %"compiler/source:Span" %t295, i32 %t296, i64 0)
  store ptr %t300, ptr %l160
  br label %bb56
bb55:
  br label %bb57
bb56:
  call void @__olang_scope_close(ptr %s0)
  %t301 = load ptr, ptr %l160, !tbaa !29
  store ptr %t301, ptr %rv
  br label %ret
bb57:
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l161, !tbaa !29
  %t303 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t303, ptr %l162
  %t304 = load ptr, ptr %l12, !tbaa !29
  store ptr %t304, ptr %l163, !tbaa !29
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l164, !tbaa !29
  %t306 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t306, ptr %l165, !tbaa !27
  %t307 = load i64, ptr %l19, !tbaa !24
  %t309 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr ptr, ptr %t310, i64 %t307
  %t312 = load ptr, ptr %t311, !tbaa !39
  store ptr %t312, ptr %l167, !tbaa !29
  %t313 = load ptr, ptr %l21, !tbaa !29
  store ptr %t313, ptr %l168, !tbaa !29
  %t314 = load ptr, ptr %l21, !tbaa !29
  %t316 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v5, ptr %t314)
  store i32 %t316, ptr %l170
  br label %bb58
bb58:
  %t319 = load ptr, ptr %l164, !tbaa !29
  %t320 = load ptr, ptr %l167, !tbaa !29
  %t321 = load ptr, ptr %l168, !tbaa !29
  %t322 = load i32, ptr %l170, !tbaa !23
  %t325 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v5, ptr %v5, ptr %v4, ptr %v5, ptr %t319, ptr %t320, ptr %t321, i32 %t322, ptr %a7, i64 %a8)
  store ptr %t325, ptr %l173
  br label %bb59
bb59:
  %t326 = load ptr, ptr %l161, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l162
  %t328 = load ptr, ptr %l163, !tbaa !29
  %t329 = load ptr, ptr %l173, !tbaa !29
  %t330 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v5, ptr %v5, ptr %v5, ptr %t326, %"compiler/source:Span" %t327, ptr %t328, ptr %t329)
  store ptr %t330, ptr %l174
  br label %bb60
bb60:
  %t331 = load ptr, ptr %l174, !tbaa !29
  store ptr %t331, ptr %l12, !tbaa !29
  br label %bb61
bb61:
  %t332 = load i64, ptr %l18, !tbaa !24
  %t334 = add i64 %t332, 1
  store i64 %t334, ptr %l18, !tbaa !24
  br label %bb44
bb62:
  %t336 = load ptr, ptr %l12, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t336, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestTarget(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca %"compiler/names:Entry"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca %"compiler/names:Entry"
  %l26 = alloca i1
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca %"compiler/names:Entry"
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca %"compiler/names:Entry"
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l60 = alloca %"std/prelude/text:StringBuilder"
  %l69 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l94 = alloca i1
  %l95 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l99 = alloca { i64, ptr }
  %l101 = alloca %"compiler/diagmsg:Msg"
  %l102 = alloca i64
  %l112 = alloca ptr
  %l118 = alloca i64
  %l120 = alloca i64
  %l125 = alloca %"compiler/names:Entry"
  %l127 = alloca { i64, ptr }
  %l132 = alloca i1
  %l142 = alloca i64
  %l146 = alloca i64
  %l149 = alloca i64
  %l175 = alloca ptr
  %l178 = alloca i64
  %l180 = alloca i64
  %l185 = alloca %"compiler/names:Entry"
  %l187 = alloca { i64, ptr }
  %l190 = alloca i1
  %l193 = alloca i1
  %l196 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l200 = alloca %"compiler/diagmsg:Msg"
  %l201 = alloca i64
  %l214 = alloca i64
  %l218 = alloca i64
  %l221 = alloca i64
  %l242 = alloca ptr
  %l244 = alloca i1
  %l245 = alloca i1
  %l248 = alloca { i64, ptr }
  %l251 = alloca i1
  %l257 = alloca { i64, ptr }
  %l258 = alloca { i64, ptr }
  %l260 = alloca { i64, ptr }
  %l262 = alloca { i64, ptr }
  %l263 = alloca i1
  %l267 = alloca i64
  %l274 = alloca i1
  %l277 = alloca { i64, ptr }
  %l282 = alloca ptr
  %l285 = alloca ptr
  %l289 = alloca i32
  %l290 = alloca i32
  %l291 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l298 = alloca i32
  %l301 = alloca i1
  %l302 = alloca i1
  %l305 = alloca ptr
  %l310 = alloca i32
  %l311 = alloca i32
  %l312 = alloca { i64, ptr }
  %l317 = alloca i1
  %l320 = alloca i1
  %l321 = alloca i1
  %l327 = alloca { i64, ptr }
  %l328 = alloca { i64, ptr }
  %l330 = alloca { i64, ptr }
  %l332 = alloca { i64, ptr }
  %l333 = alloca i1
  %l338 = alloca i64
  %l346 = alloca i64
  %l348 = alloca i64
  %l353 = alloca %"compiler/names:Entry"
  %l355 = alloca { i64, ptr }
  %l358 = alloca i1
  %l364 = alloca ptr
  %l366 = alloca %"compiler/source:Span"
  %l368 = alloca %"compiler/diagmsg:Msg"
  %l369 = alloca i64
  %l372 = alloca %"compiler/msgs:Nearest"
  %l376 = alloca i64
  %l378 = alloca i64
  %l383 = alloca %"compiler/names:Entry"
  %l386 = alloca i1
  %l389 = alloca i1
  %l392 = alloca { i64, ptr }
  %l394 = alloca { i64, ptr }
  %l395 = alloca i1
  %l397 = alloca ptr
  %l400 = alloca { i64, ptr }
  %l407 = alloca i64
  %l411 = alloca i64
  %l414 = alloca i64
  %l435 = alloca ptr
  %l437 = alloca i1
  %l438 = alloca i1
  %l442 = alloca i64
  %l445 = alloca ptr
  %l446 = alloca i64
  %l453 = alloca { i64, ptr }
  %l457 = alloca { i64, ptr }
  %l463 = alloca i1
  %l467 = alloca i64
  %l472 = alloca ptr
  %l475 = alloca ptr
  %l479 = alloca i32
  %l480 = alloca i32
  %l481 = alloca { i64, ptr }
  %l485 = alloca ptr
  %l487 = alloca { i64, ptr }
  %l489 = alloca i32
  %l490 = alloca i1
  %l491 = alloca ptr
  %l492 = alloca i64
  %l494 = alloca ptr
  %l497 = alloca ptr
  %l500 = alloca ptr
  %l502 = alloca { i64, ptr }
  %l504 = alloca i32
  %l505 = alloca i32
  %l506 = alloca i32
  %l507 = alloca { i64, ptr }
  %l511 = alloca { i64, ptr }
  %l519 = alloca { i64, ptr }
  %l521 = alloca i1
  %l523 = alloca ptr
  %l524 = alloca i64
  %l531 = alloca { i64, ptr }
  %l535 = alloca { i64, ptr }
  %l544 = alloca ptr
  %l546 = alloca %"compiler/source:Span"
  %l550 = alloca %"compiler/diagmsg:Msg"
  %l551 = alloca i64
  %l552 = alloca ptr
  %l554 = alloca %"compiler/source:Span"
  %l556 = alloca %"compiler/diagmsg:Msg"
  %l557 = alloca i64
  %s0 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s56 = alloca %olang.scope
  %s60 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s63 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t5, i64 -1, i64 %t6, i32 %t7, i32 0)
  store ptr %t11, ptr %l57
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Path", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l4, !tbaa !27
  %t17 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t17, ptr %l60
  br label %bb5
bb5:
  %t18 = load %"std/prelude/text:StringBuilder", ptr %l60
  store %"std/prelude/text:StringBuilder" %t18, ptr %l5
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t25 = load i64, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t35, ptr %l69, !tbaa !27
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i32, ptr %t39, i64 %t36
  %t41 = load i32, ptr %t40, !tbaa !33
  store i32 %t41, ptr %l10, !tbaa !23
  %t45 = icmp sgt i64 %t33, 0
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l5, i8 46)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  store ptr %l5, ptr %l75, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l10, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t48, i32 %t49)
  store { i64, ptr } %t52, ptr %l78
  br label %bb14
bb14:
  %t53 = load ptr, ptr %l75, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l78, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t53, { i64, ptr } %t54)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l7, !tbaa !24
  br label %bb6
bb17:
  %t60 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t60, ptr %l82
  br label %bb18
bb18:
  %t61 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t61, ptr %l11, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t62, ptr %l83, !tbaa !27
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s0, ptr %t63, %"compiler/source:Span" %a2)
  store { i64, ptr } %t67, ptr %l86
  br label %bb19
bb19:
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t70 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = add i64 %t69, %t72
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t76 = add i64 %t73, %t75
  %t77 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = add i64 %t76, %t79
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t83 = add i64 %t80, %t82
  %t84 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t68, i64 %t69)
  %t85 = getelementptr i8, ptr %t84, i64 %t69
  call void @olang_textcopy(ptr %t85, ptr %t71, i64 %t72)
  %t86 = getelementptr i8, ptr %t85, i64 %t72
  call void @olang_textcopy(ptr %t86, ptr %t74, i64 %t75)
  %t87 = getelementptr i8, ptr %t86, i64 %t75
  call void @olang_textcopy(ptr %t87, ptr %t78, i64 %t79)
  %t88 = getelementptr i8, ptr %t87, i64 %t79
  call void @olang_textcopy(ptr %t88, ptr %t81, i64 %t82)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t84, 1
  store { i64, ptr } %t90, ptr %l12, !tbaa !27
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 152
  %t96 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t94)
  store { i64, ptr } %t96, ptr %l90
  br label %bb20
bb20:
  %t97 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = extractvalue { i64, ptr } %t97, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t108 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t104, { i64, ptr } %t105)
  store i1 %t108, ptr %l94
  br label %bb21
bb21:
  %t109 = load i1, ptr %l94, !tbaa !21
  br i1 %t109, label %bb22, label %bb23
bb22:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l95, !tbaa !29
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t113 = getelementptr %"compiler/ast:Path", ptr %t111, i32 0, i32 0
  %t114 = load %"compiler/source:Span", ptr %t113
  store %"compiler/source:Span" %t114, ptr %l97
  %t115 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t117 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %v0, { i64, ptr } %t115)
  store { i64, ptr } %t117, ptr %l99
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t118 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  %t120 = extractvalue { i64, ptr } %t118, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetTwice(ptr %v0, ptr %v0, { i64, ptr } %t124)
  store %"compiler/diagmsg:Msg" %t126, ptr %l101
  br label %bb25
bb25:
  %t127 = load ptr, ptr %l95, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l97
  %t129 = load %"compiler/diagmsg:Msg", ptr %l101
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128, %"compiler/diagmsg:Msg" %t129)
  store i64 %t130, ptr %l102
  br label %bb26
bb26:
  %t131 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t131)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb28:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 152
  %t136 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t135, { i64, ptr } %t136)
  br label %bb29
bb29:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/names:Resolver", ptr %t145, i32 0, i32 1
  %t148 = load i64, ptr %l1, !tbaa !24
  %t151 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t147, i64 %t148)
  store ptr %t151, ptr %l112
  br label %bb30
bb30:
  %t152 = load ptr, ptr %l112, !tbaa !29
  store ptr %t152, ptr %l13, !tbaa !29
  %t153 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t157 = icmp eq i64 %t155, 1
  br i1 %t157, label %bb31, label %bb32
bb31:
  %t159 = load ptr, ptr %l13, !tbaa !29
  %t161 = getelementptr %"compiler/names:Table", ptr %t159, i32 0, i32 0
  store ptr %t161, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb33
bb32:
  %t163 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t167 = icmp eq i64 %t165, 2
  br i1 %t167, label %bb88, label %bb89
bb33:
  %t169 = load i64, ptr %l15, !tbaa !24
  store i64 %t169, ptr %l118, !tbaa !24
  %t170 = load ptr, ptr %l14, !tbaa !29
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l120
  br label %bb34
bb34:
  %t173 = load i64, ptr %l118, !tbaa !24
  %t174 = load i64, ptr %l120, !tbaa !24
  %t175 = icmp slt i64 %t173, %t174
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb35, label %bb36
bb35:
  br label %bb50
bb36:
  br label %bb37
bb37:
  %t179 = load ptr, ptr %l14, !tbaa !29
  %t180 = load i64, ptr %l15, !tbaa !24
  %t183 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t179, i64 %t180)
  store %"compiler/names:Entry" %t183, ptr %l125
  br label %bb38
bb38:
  %t184 = load %"compiler/names:Entry", ptr %l125
  store %"compiler/names:Entry" %t184, ptr %l16
  %t185 = getelementptr %"compiler/names:Entry", ptr %l16, i32 0, i32 0
  %t186 = load i32, ptr %t185, !tbaa !23
  %t187 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t187, ptr %l127, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i32, ptr %t189, i64 0
  %t191 = load i32, ptr %t190, !tbaa !33
  %t194 = icmp ne i32 %t186, %t191
  br i1 %t194, label %bb39, label %bb40
bb39:
  br label %bb49
bb40:
  br label %bb41
bb41:
  %t196 = getelementptr %"compiler/names:Entry", ptr %l16, i32 0, i32 2
  %t197 = load i32, ptr %t196, !range !{i32 0, i32 9}
  %t199 = trunc i64 3 to i32
  %t200 = icmp eq i32 %t197, %t199
  br i1 %t200, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb44
bb43:
  %t202 = getelementptr %"compiler/names:Entry", ptr %l16, i32 0, i32 2
  %t203 = load i32, ptr %t202, !range !{i32 0, i32 9}
  %t205 = trunc i64 4 to i32
  %t206 = icmp eq i32 %t203, %t205
  store i1 %t206, ptr %l132, !tbaa !21
  br label %bb44
bb44:
  %t208 = load i1, ptr %l132, !tbaa !21
  br i1 %t208, label %bb45, label %bb46
bb45:
  %t209 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t209)
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb48:
  br label %bb49
bb49:
  %t211 = load i64, ptr %l15, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l15, !tbaa !24
  br label %bb33
bb50:
  store i64 0, ptr %l17, !tbaa !24
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 0
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = getelementptr %"compiler/load:Loader", ptr %t221, i32 0, i32 10
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t223)
  store i64 %t225, ptr %l142
  br label %bb51
bb51:
  %t226 = load i64, ptr %l142, !tbaa !24
  store i64 %t226, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t227 = load i64, ptr %l18, !tbaa !24
  %t228 = load i64, ptr %l17, !tbaa !24
  %t231 = icmp sgt i64 %t227, %t228
  br i1 %t231, label %bb52, label %bb53
bb52:
  %t233 = load i64, ptr %l19, !tbaa !24
  %t235 = icmp sgt i64 %t233, 0
  br i1 %t235, label %bb54, label %bb55
bb53:
  store i64 0, ptr %l146, !tbaa !24
  br label %bb57
bb54:
  %t237 = load i64, ptr %l18, !tbaa !24
  %t238 = load i64, ptr %l17, !tbaa !24
  %t241 = sub i64 %t237, %t238
  %t242 = load i64, ptr %l19, !tbaa !24
  %t245 = add i64 %t241, %t242
  %t247 = sub i64 %t245, 1
  %t248 = load i64, ptr %l19, !tbaa !24
  %t251 = sdiv i64 %t247, %t248
  store i64 %t251, ptr %l149, !tbaa !24
  br label %bb56
bb55:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb56
bb56:
  %t253 = load i64, ptr %l149, !tbaa !24
  store i64 %t253, ptr %l146, !tbaa !24
  br label %bb57
bb57:
  %t254 = load i64, ptr %l146, !tbaa !24
  store i64 %t254, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb58
bb58:
  %t255 = load i64, ptr %l21, !tbaa !24
  %t256 = load i64, ptr %l20, !tbaa !24
  %t259 = icmp slt i64 %t255, %t256
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb59, label %bb60
bb59:
  br label %bb87
bb60:
  br label %bb61
bb61:
  %t263 = load i64, ptr %l17, !tbaa !24
  %t264 = load i64, ptr %l21, !tbaa !24
  %t265 = load i64, ptr %l19, !tbaa !24
  %t268 = mul i64 %t264, %t265
  %t271 = add i64 %t263, %t268
  store i64 %t271, ptr %l22, !tbaa !24
  %t273 = load i64, ptr %l22, !tbaa !24
  %t274 = load i64, ptr %l1, !tbaa !24
  %t277 = icmp eq i64 %t273, %t274
  br i1 %t277, label %bb62, label %bb63
bb62:
  br label %bb86
bb63:
  br label %bb64
bb64:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/check:Checker", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = getelementptr %"compiler/generic:Program", ptr %t282, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = getelementptr %"compiler/names:Resolver", ptr %t285, i32 0, i32 1
  %t288 = load i64, ptr %l22, !tbaa !24
  %t291 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t287, i64 %t288)
  store ptr %t291, ptr %l175
  br label %bb65
bb65:
  %t292 = load ptr, ptr %l175, !tbaa !29
  %t294 = getelementptr %"compiler/names:Table", ptr %t292, i32 0, i32 0
  store ptr %t294, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb66
bb66:
  %t296 = load i64, ptr %l24, !tbaa !24
  store i64 %t296, ptr %l178, !tbaa !24
  %t297 = load ptr, ptr %l23, !tbaa !29
  %t299 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t297)
  store i64 %t299, ptr %l180
  br label %bb67
bb67:
  %t300 = load i64, ptr %l178, !tbaa !24
  %t301 = load i64, ptr %l180, !tbaa !24
  %t302 = icmp slt i64 %t300, %t301
  %t304 = xor i1 %t302, true
  br i1 %t304, label %bb68, label %bb69
bb68:
  br label %bb85
bb69:
  br label %bb70
bb70:
  %t306 = load ptr, ptr %l23, !tbaa !29
  %t307 = load i64, ptr %l24, !tbaa !24
  %t310 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t306, i64 %t307)
  store %"compiler/names:Entry" %t310, ptr %l185
  br label %bb71
bb71:
  %t311 = load %"compiler/names:Entry", ptr %l185
  store %"compiler/names:Entry" %t311, ptr %l25
  %t312 = getelementptr %"compiler/names:Entry", ptr %l25, i32 0, i32 0
  %t313 = load i32, ptr %t312, !tbaa !23
  %t314 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t314, ptr %l187, !tbaa !27
  %t315 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = getelementptr i32, ptr %t316, i64 0
  %t318 = load i32, ptr %t317, !tbaa !33
  %t321 = icmp eq i32 %t313, %t318
  br i1 %t321, label %bb72, label %bb73
bb72:
  %t323 = getelementptr %"compiler/names:Entry", ptr %l25, i32 0, i32 2
  %t324 = load i32, ptr %t323, !range !{i32 0, i32 9}
  %t326 = trunc i64 3 to i32
  %t327 = icmp eq i32 %t324, %t326
  br i1 %t327, label %bb74, label %bb75
bb73:
  store i1 false, ptr %l190, !tbaa !21
  br label %bb77
bb74:
  store i1 true, ptr %l193, !tbaa !21
  br label %bb76
bb75:
  %t329 = getelementptr %"compiler/names:Entry", ptr %l25, i32 0, i32 2
  %t330 = load i32, ptr %t329, !range !{i32 0, i32 9}
  %t332 = trunc i64 4 to i32
  %t333 = icmp eq i32 %t330, %t332
  store i1 %t333, ptr %l193, !tbaa !21
  br label %bb76
bb76:
  %t335 = load i1, ptr %l193, !tbaa !21
  store i1 %t335, ptr %l190, !tbaa !21
  br label %bb77
bb77:
  %t336 = load i1, ptr %l190, !tbaa !21
  br i1 %t336, label %bb78, label %bb79
bb78:
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l196, !tbaa !29
  %t338 = load ptr, ptr %l3, !tbaa !29
  %t340 = getelementptr %"compiler/ast:Path", ptr %t338, i32 0, i32 0
  %t341 = load %"compiler/source:Span", ptr %t340
  store %"compiler/source:Span" %t341, ptr %l198
  %t342 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t344 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetElsewhere(ptr %s0, ptr %v0, { i64, ptr } %t342)
  store %"compiler/diagmsg:Msg" %t344, ptr %l200
  br label %bb80
bb79:
  br label %bb83
bb80:
  %t345 = load ptr, ptr %l196, !tbaa !29
  %t346 = load %"compiler/source:Span", ptr %l198
  %t347 = load %"compiler/diagmsg:Msg", ptr %l200
  %t348 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t345, %"compiler/source:Span" %t346, %"compiler/diagmsg:Msg" %t347)
  store i64 %t348, ptr %l201
  br label %bb81
bb81:
  %t349 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t349)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb83:
  br label %bb84
bb84:
  %t351 = load i64, ptr %l24, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l24, !tbaa !24
  br label %bb66
bb85:
  br label %bb86
bb86:
  %t355 = load i64, ptr %l21, !tbaa !24
  %t357 = add i64 %t355, 1
  store i64 %t357, ptr %l21, !tbaa !24
  br label %bb58
bb87:
  br label %bb181
bb88:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/check:Checker", ptr %t359, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t362)
  br label %bb90
bb89:
  br label %bb180
bb90:
  store i1 false, ptr %l26, !tbaa !21
  store i64 0, ptr %l27, !tbaa !24
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t369 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t367)
  store i64 %t369, ptr %l214
  br label %bb91
bb91:
  %t370 = load i64, ptr %l214, !tbaa !24
  store i64 %t370, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t371 = load i64, ptr %l28, !tbaa !24
  %t372 = load i64, ptr %l27, !tbaa !24
  %t375 = icmp sgt i64 %t371, %t372
  br i1 %t375, label %bb92, label %bb93
bb92:
  %t377 = load i64, ptr %l29, !tbaa !24
  %t379 = icmp sgt i64 %t377, 0
  br i1 %t379, label %bb94, label %bb95
bb93:
  store i64 0, ptr %l218, !tbaa !24
  br label %bb97
bb94:
  %t381 = load i64, ptr %l28, !tbaa !24
  %t382 = load i64, ptr %l27, !tbaa !24
  %t385 = sub i64 %t381, %t382
  %t386 = load i64, ptr %l29, !tbaa !24
  %t389 = add i64 %t385, %t386
  %t391 = sub i64 %t389, 1
  %t392 = load i64, ptr %l29, !tbaa !24
  %t395 = sdiv i64 %t391, %t392
  store i64 %t395, ptr %l221, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l221, !tbaa !24
  br label %bb96
bb96:
  %t397 = load i64, ptr %l221, !tbaa !24
  store i64 %t397, ptr %l218, !tbaa !24
  br label %bb97
bb97:
  %t398 = load i64, ptr %l218, !tbaa !24
  store i64 %t398, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb98
bb98:
  store %olang.scope zeroinitializer, ptr %s31
  %t399 = load i64, ptr %l31, !tbaa !24
  %t400 = load i64, ptr %l30, !tbaa !24
  %t403 = icmp slt i64 %t399, %t400
  %t405 = xor i1 %t403, true
  br i1 %t405, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s31)
  br label %bb159
bb100:
  br label %bb101
bb101:
  %t407 = load i64, ptr %l27, !tbaa !24
  %t408 = load i64, ptr %l31, !tbaa !24
  %t409 = load i64, ptr %l29, !tbaa !24
  %t412 = mul i64 %t408, %t409
  %t415 = add i64 %t407, %t412
  store i64 %t415, ptr %l32, !tbaa !24
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/check:Checker", ptr %t417, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t421 = load i64, ptr %l32, !tbaa !24
  %t424 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t420, i64 %t421)
  store ptr %t424, ptr %l242
  br label %bb102
bb102:
  %t425 = load ptr, ptr %l242, !tbaa !29
  store ptr %t425, ptr %l33, !tbaa !29
  %t426 = load ptr, ptr %l33, !tbaa !29
  %t428 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t426)
  store i1 %t428, ptr %l244
  br label %bb103
bb103:
  %t429 = load i1, ptr %l244, !tbaa !21
  br i1 %t429, label %bb104, label %bb105
bb104:
  %t430 = load ptr, ptr %l33, !tbaa !29
  %t432 = getelementptr %"compiler/ast:Func", ptr %t430, i32 0, i32 10
  %t433 = load i32, ptr %t432, !tbaa !23
  %t434 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t434, ptr %l248, !tbaa !27
  %t435 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !27
  %t437 = getelementptr i32, ptr %t436, i64 1
  %t438 = load i32, ptr %t437, !tbaa !33
  %t441 = icmp eq i32 %t433, %t438
  store i1 %t441, ptr %l245, !tbaa !21
  br label %bb106
bb105:
  store i1 false, ptr %l245, !tbaa !21
  br label %bb106
bb106:
  %t443 = load i1, ptr %l245, !tbaa !21
  br i1 %t443, label %bb107, label %bb108
bb107:
  %t444 = load ptr, ptr %l33, !tbaa !29
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/check:Checker", ptr %t445, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !29
  %t450 = getelementptr %"compiler/generic:Program", ptr %t448, i32 0, i32 0
  %t451 = load ptr, ptr %t450, !tbaa !29
  %t453 = getelementptr %"compiler/load:Loader", ptr %t451, i32 0, i32 3
  %t454 = load ptr, ptr %t453, !tbaa !29
  %t457 = call { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v0, ptr %s31, ptr %t444, ptr %t454)
  store { i64, ptr } %t457, ptr %l257
  br label %bb109
bb108:
  store i1 false, ptr %l251, !tbaa !21
  br label %bb112
bb109:
  %t458 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t459 = extractvalue { i64, ptr } %t458, 0
  %t460 = extractvalue { i64, ptr } %t458, 1
  %t461 = mul i64 %t459, 1
  %t462 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t461)
  call void @llvm.memcpy.p0.p0.i64(ptr %t462, ptr %t460, i64 %t461, i1 false)
  %t463 = insertvalue { i64, ptr } undef, i64 %t459, 0
  %t464 = insertvalue { i64, ptr } %t463, ptr %t462, 1
  store { i64, ptr } %t464, ptr %l258, !tbaa !27
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t466 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t466, ptr %l260, !tbaa !27
  %t467 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !27
  %t469 = getelementptr i32, ptr %t468, i64 0
  %t470 = load i32, ptr %t469, !tbaa !33
  %t473 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t465, i32 %t470)
  store { i64, ptr } %t473, ptr %l262
  br label %bb110
bb110:
  %t474 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t475 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t476 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %v0, { i64, ptr } %t474, { i64, ptr } %t475)
  store i1 %t476, ptr %l263
  br label %bb111
bb111:
  %t477 = load i1, ptr %l263, !tbaa !21
  store i1 %t477, ptr %l251, !tbaa !21
  br label %bb112
bb112:
  %t478 = load i1, ptr %l251, !tbaa !21
  br i1 %t478, label %bb113, label %bb114
bb113:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/check:Checker", ptr %t479, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t483 = load i64, ptr %l32, !tbaa !24
  %t486 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t482, i64 %t483)
  store i64 %t486, ptr %l267
  br label %bb115
bb114:
  br label %bb120
bb115:
  %t487 = load i64, ptr %l1, !tbaa !24
  %t488 = load i64, ptr %l267, !tbaa !24
  %t490 = icmp eq i64 %t488, %t487
  br i1 %t490, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s31)
  %t492 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t492)
  br label %bb118
bb117:
  br label %bb119
bb118:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb119:
  store i1 true, ptr %l26, !tbaa !21
  call void @__olang_scope_close(ptr %s31)
  br label %bb158
bb120:
  %t494 = load ptr, ptr %l33, !tbaa !29
  %t496 = getelementptr %"compiler/ast:Func", ptr %t494, i32 0, i32 1
  %t497 = load ptr, ptr %t496, !tbaa !29
  %t499 = icmp eq ptr %t497, null
  br i1 %t499, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l274, !tbaa !21
  br label %bb123
bb122:
  %t501 = load ptr, ptr %l33, !tbaa !29
  %t503 = getelementptr %"compiler/ast:Func", ptr %t501, i32 0, i32 2
  %t504 = load i32, ptr %t503, !tbaa !23
  %t505 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t505, ptr %l277, !tbaa !27
  %t506 = getelementptr { i64, ptr }, ptr %l277, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !27
  %t508 = getelementptr i32, ptr %t507, i64 1
  %t509 = load i32, ptr %t508, !tbaa !33
  %t512 = icmp ne i32 %t504, %t509
  store i1 %t512, ptr %l274, !tbaa !21
  br label %bb123
bb123:
  %t514 = load i1, ptr %l274, !tbaa !21
  br i1 %t514, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s31)
  br label %bb158
bb125:
  br label %bb126
bb126:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t517 = getelementptr %"compiler/check:Checker", ptr %t515, i32 0, i32 1
  %t518 = load ptr, ptr %t517, !tbaa !29
  %t520 = getelementptr %"compiler/generic:Program", ptr %t518, i32 0, i32 2
  store ptr %t520, ptr %l282, !tbaa !29
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/check:Checker", ptr %t521, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !29
  %t526 = getelementptr %"compiler/generic:Program", ptr %t524, i32 0, i32 2
  store ptr %t526, ptr %l285, !tbaa !29
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t529 = getelementptr %"compiler/check:Checker", ptr %t527, i32 0, i32 1
  %t530 = load ptr, ptr %t529, !tbaa !29
  %t531 = load i64, ptr %l32, !tbaa !24
  %t534 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t530, i64 %t531)
  store i32 %t534, ptr %l289
  br label %bb127
bb127:
  %t535 = load ptr, ptr %l285, !tbaa !29
  %t536 = load i32, ptr %l289, !tbaa !23
  %t537 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t535, i32 %t536)
  store i32 %t537, ptr %l290
  br label %bb128
bb128:
  %t538 = load ptr, ptr %l282, !tbaa !29
  %t539 = load i32, ptr %l290, !tbaa !23
  %t540 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t538, i32 %t539)
  store { i64, ptr } %t540, ptr %l291
  br label %bb129
bb129:
  %t541 = load { i64, ptr }, ptr %l291, !tbaa !27
  store { i64, ptr } %t541, ptr %l34, !tbaa !27
  %t542 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t544 = extractvalue { i64, ptr } %t542, 0
  %t546 = icmp eq i64 %t544, 0
  br i1 %t546, label %bb130, label %bb131
bb130:
  call void @__olang_scope_close(ptr %s31)
  br label %bb158
bb131:
  br label %bb132
bb132:
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t549, ptr %l296, !tbaa !27
  %t550 = getelementptr { i64, ptr }, ptr %l296, i32 0, i32 1
  %t551 = load ptr, ptr %t550, !tbaa !27
  %t552 = getelementptr i32, ptr %t551, i64 0
  %t553 = load i32, ptr %t552, !tbaa !33
  %t556 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t548, i32 %t553)
  store i32 %t556, ptr %l298
  br label %bb133
bb133:
  %t557 = load i32, ptr %l298, !tbaa !23
  store i32 %t557, ptr %l35, !tbaa !23
  %t558 = load ptr, ptr %l0, !tbaa !29
  %t559 = load i32, ptr %l35, !tbaa !23
  %t562 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t558, i32 %t559)
  store i1 %t562, ptr %l301
  br label %bb134
bb134:
  %t563 = load i1, ptr %l301, !tbaa !21
  br i1 %t563, label %bb135, label %bb136
bb135:
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t566 = getelementptr %"compiler/check:Checker", ptr %t564, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !29
  %t569 = getelementptr %"compiler/generic:Program", ptr %t567, i32 0, i32 2
  store ptr %t569, ptr %l305, !tbaa !29
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/check:Checker", ptr %t570, i32 0, i32 1
  %t573 = load ptr, ptr %t572, !tbaa !29
  %t575 = getelementptr %"compiler/generic:Program", ptr %t573, i32 0, i32 2
  %t576 = load i32, ptr %l35, !tbaa !23
  %t579 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t575, i32 %t576)
  store i32 %t579, ptr %l310
  br label %bb137
bb136:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb139
bb137:
  %t580 = load ptr, ptr %l305, !tbaa !29
  %t581 = load i32, ptr %l310, !tbaa !23
  %t582 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t580, i32 %t581)
  store i32 %t582, ptr %l311
  br label %bb138
bb138:
  %t583 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t583, ptr %l312, !tbaa !27
  %t584 = getelementptr { i64, ptr }, ptr %l312, i32 0, i32 1
  %t585 = load ptr, ptr %t584, !tbaa !27
  %t586 = getelementptr i32, ptr %t585, i64 0
  %t587 = load i32, ptr %t586, !tbaa !33
  %t588 = load i32, ptr %l311, !tbaa !23
  %t590 = icmp eq i32 %t588, %t587
  store i1 %t590, ptr %l302, !tbaa !21
  br label %bb139
bb139:
  %t592 = load i1, ptr %l302, !tbaa !21
  %t595 = xor i1 %t592, true
  br i1 %t595, label %bb140, label %bb141
bb140:
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t598 = load i32, ptr %l35, !tbaa !23
  %t601 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t597, i32 %t598)
  store i1 %t601, ptr %l320
  br label %bb142
bb141:
  store i1 false, ptr %l317, !tbaa !21
  br label %bb149
bb142:
  %t602 = load i1, ptr %l320, !tbaa !21
  br i1 %t602, label %bb143, label %bb144
bb143:
  store i1 true, ptr %l321, !tbaa !21
  br label %bb148
bb144:
  %t603 = load ptr, ptr %l33, !tbaa !29
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/check:Checker", ptr %t604, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !29
  %t609 = getelementptr %"compiler/generic:Program", ptr %t607, i32 0, i32 0
  %t610 = load ptr, ptr %t609, !tbaa !29
  %t612 = getelementptr %"compiler/load:Loader", ptr %t610, i32 0, i32 3
  %t613 = load ptr, ptr %t612, !tbaa !29
  %t616 = call { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v0, ptr %s31, ptr %t603, ptr %t613)
  store { i64, ptr } %t616, ptr %l327
  br label %bb145
bb145:
  %t617 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t618 = extractvalue { i64, ptr } %t617, 0
  %t619 = extractvalue { i64, ptr } %t617, 1
  %t620 = mul i64 %t618, 1
  %t621 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t620)
  call void @llvm.memcpy.p0.p0.i64(ptr %t621, ptr %t619, i64 %t620, i1 false)
  %t622 = insertvalue { i64, ptr } undef, i64 %t618, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t621, 1
  store { i64, ptr } %t623, ptr %l328, !tbaa !27
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t625 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t625, ptr %l330, !tbaa !27
  %t626 = getelementptr { i64, ptr }, ptr %l330, i32 0, i32 1
  %t627 = load ptr, ptr %t626, !tbaa !27
  %t628 = getelementptr i32, ptr %t627, i64 0
  %t629 = load i32, ptr %t628, !tbaa !33
  %t632 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t624, i32 %t629)
  store { i64, ptr } %t632, ptr %l332
  br label %bb146
bb146:
  %t633 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t634 = load { i64, ptr }, ptr %l332, !tbaa !27
  %t635 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %v0, { i64, ptr } %t633, { i64, ptr } %t634)
  store i1 %t635, ptr %l333
  br label %bb147
bb147:
  %t636 = load i1, ptr %l333, !tbaa !21
  %t637 = xor i1 %t636, true
  store i1 %t637, ptr %l321, !tbaa !21
  br label %bb148
bb148:
  %t639 = load i1, ptr %l321, !tbaa !21
  store i1 %t639, ptr %l317, !tbaa !21
  br label %bb149
bb149:
  %t640 = load i1, ptr %l317, !tbaa !21
  br i1 %t640, label %bb150, label %bb151
bb150:
  call void @__olang_scope_close(ptr %s31)
  br label %bb158
bb151:
  br label %bb152
bb152:
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t643 = getelementptr %"compiler/check:Checker", ptr %t641, i32 0, i32 1
  %t644 = load ptr, ptr %t643, !tbaa !29
  %t645 = load i64, ptr %l32, !tbaa !24
  %t648 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t644, i64 %t645)
  store i64 %t648, ptr %l338
  br label %bb153
bb153:
  %t649 = load i64, ptr %l1, !tbaa !24
  %t650 = load i64, ptr %l338, !tbaa !24
  %t652 = icmp eq i64 %t650, %t649
  br i1 %t652, label %bb154, label %bb155
bb154:
  call void @__olang_scope_close(ptr %s31)
  %t654 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t654)
  br label %bb156
bb155:
  br label %bb157
bb156:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb157:
  store i1 true, ptr %l26, !tbaa !21
  call void @__olang_scope_close(ptr %s31)
  br label %bb158
bb158:
  %t656 = load i64, ptr %l31, !tbaa !24
  %t658 = add i64 %t656, 1
  store i64 %t658, ptr %l31, !tbaa !24
  br label %bb98
bb159:
  %t660 = load ptr, ptr %l13, !tbaa !29
  %t662 = getelementptr %"compiler/names:Table", ptr %t660, i32 0, i32 0
  store ptr %t662, ptr %l37, !tbaa !29
  store i64 0, ptr %l38, !tbaa !24
  br label %bb160
bb160:
  %t664 = load i64, ptr %l38, !tbaa !24
  store i64 %t664, ptr %l346, !tbaa !24
  %t665 = load ptr, ptr %l37, !tbaa !29
  %t667 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t665)
  store i64 %t667, ptr %l348
  br label %bb161
bb161:
  %t668 = load i64, ptr %l346, !tbaa !24
  %t669 = load i64, ptr %l348, !tbaa !24
  %t670 = icmp slt i64 %t668, %t669
  %t672 = xor i1 %t670, true
  br i1 %t672, label %bb162, label %bb163
bb162:
  br label %bb173
bb163:
  br label %bb164
bb164:
  %t674 = load ptr, ptr %l37, !tbaa !29
  %t675 = load i64, ptr %l38, !tbaa !24
  %t678 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t674, i64 %t675)
  store %"compiler/names:Entry" %t678, ptr %l353
  br label %bb165
bb165:
  %t679 = load %"compiler/names:Entry", ptr %l353
  store %"compiler/names:Entry" %t679, ptr %l39
  %t680 = getelementptr %"compiler/names:Entry", ptr %l39, i32 0, i32 0
  %t681 = load i32, ptr %t680, !tbaa !23
  %t682 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t682, ptr %l355, !tbaa !27
  %t683 = getelementptr { i64, ptr }, ptr %l355, i32 0, i32 1
  %t684 = load ptr, ptr %t683, !tbaa !27
  %t685 = getelementptr i32, ptr %t684, i64 0
  %t686 = load i32, ptr %t685, !tbaa !33
  %t689 = icmp eq i32 %t681, %t686
  br i1 %t689, label %bb166, label %bb167
bb166:
  %t691 = getelementptr %"compiler/names:Entry", ptr %l39, i32 0, i32 2
  %t692 = load i32, ptr %t691, !range !{i32 0, i32 9}
  %t694 = trunc i64 5 to i32
  %t695 = icmp eq i32 %t692, %t694
  store i1 %t695, ptr %l358, !tbaa !21
  br label %bb168
bb167:
  store i1 false, ptr %l358, !tbaa !21
  br label %bb168
bb168:
  %t697 = load i1, ptr %l358, !tbaa !21
  br i1 %t697, label %bb169, label %bb170
bb169:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb171
bb170:
  br label %bb171
bb171:
  br label %bb172
bb172:
  %t698 = load i64, ptr %l38, !tbaa !24
  %t700 = add i64 %t698, 1
  store i64 %t700, ptr %l38, !tbaa !24
  br label %bb160
bb173:
  %t702 = load i1, ptr %l26, !tbaa !21
  br i1 %t702, label %bb174, label %bb175
bb174:
  %t704 = load ptr, ptr %l0, !tbaa !29
  store ptr %t704, ptr %l364, !tbaa !29
  %t705 = load ptr, ptr %l3, !tbaa !29
  %t707 = getelementptr %"compiler/ast:Path", ptr %t705, i32 0, i32 0
  %t708 = load %"compiler/source:Span", ptr %t707
  store %"compiler/source:Span" %t708, ptr %l366
  %t709 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t711 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetElsewhere(ptr %s0, ptr %v0, { i64, ptr } %t709)
  store %"compiler/diagmsg:Msg" %t711, ptr %l368
  br label %bb176
bb175:
  br label %bb179
bb176:
  %t712 = load ptr, ptr %l364, !tbaa !29
  %t713 = load %"compiler/source:Span", ptr %l366
  %t714 = load %"compiler/diagmsg:Msg", ptr %l368
  %t715 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t712, %"compiler/source:Span" %t713, %"compiler/diagmsg:Msg" %t714)
  store i64 %t715, ptr %l369
  br label %bb177
bb177:
  %t716 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t716)
  br label %bb178
bb178:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb179:
  br label %bb180
bb180:
  br label %bb181
bb181:
  %t718 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t720 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %s0, ptr %s0, { i64, ptr } %t718)
  store %"compiler/msgs:Nearest" %t720, ptr %l372
  br label %bb182
bb182:
  %t721 = load %"compiler/msgs:Nearest", ptr %l372
  %t722 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t721, ptr %t722
  store ptr %t722, ptr %l40, !tbaa !29
  %t724 = load ptr, ptr %l13, !tbaa !29
  %t726 = getelementptr %"compiler/names:Table", ptr %t724, i32 0, i32 0
  store ptr %t726, ptr %l41, !tbaa !29
  store i64 0, ptr %l42, !tbaa !24
  br label %bb183
bb183:
  store %olang.scope zeroinitializer, ptr %s51
  %t728 = load i64, ptr %l42, !tbaa !24
  store i64 %t728, ptr %l376, !tbaa !24
  %t729 = load ptr, ptr %l41, !tbaa !29
  %t731 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t729)
  store i64 %t731, ptr %l378
  br label %bb184
bb184:
  %t732 = load i64, ptr %l376, !tbaa !24
  %t733 = load i64, ptr %l378, !tbaa !24
  %t734 = icmp slt i64 %t732, %t733
  %t736 = xor i1 %t734, true
  br i1 %t736, label %bb185, label %bb186
bb185:
  call void @__olang_scope_close(ptr %s51)
  br label %bb203
bb186:
  br label %bb187
bb187:
  %t738 = load ptr, ptr %l41, !tbaa !29
  %t739 = load i64, ptr %l42, !tbaa !24
  %t742 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t738, i64 %t739)
  store %"compiler/names:Entry" %t742, ptr %l383
  br label %bb188
bb188:
  %t743 = load %"compiler/names:Entry", ptr %l383
  store %"compiler/names:Entry" %t743, ptr %l43
  %t744 = getelementptr %"compiler/names:Entry", ptr %l43, i32 0, i32 2
  %t745 = load i32, ptr %t744, !range !{i32 0, i32 9}
  %t747 = trunc i64 3 to i32
  %t748 = icmp eq i32 %t745, %t747
  br i1 %t748, label %bb189, label %bb190
bb189:
  store i1 true, ptr %l386, !tbaa !21
  br label %bb191
bb190:
  %t750 = getelementptr %"compiler/names:Entry", ptr %l43, i32 0, i32 2
  %t751 = load i32, ptr %t750, !range !{i32 0, i32 9}
  %t753 = trunc i64 4 to i32
  %t754 = icmp eq i32 %t751, %t753
  store i1 %t754, ptr %l386, !tbaa !21
  br label %bb191
bb191:
  %t756 = load i1, ptr %l386, !tbaa !21
  br i1 %t756, label %bb192, label %bb193
bb192:
  %t757 = load ptr, ptr %l0, !tbaa !29
  %t758 = getelementptr %"compiler/names:Entry", ptr %l43, i32 0, i32 0
  %t759 = load i32, ptr %t758, !tbaa !23
  %t762 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s51, ptr %t757, i32 %t759)
  store { i64, ptr } %t762, ptr %l392
  br label %bb194
bb193:
  store i1 false, ptr %l389, !tbaa !21
  br label %bb196
bb194:
  %t763 = load { i64, ptr }, ptr %l392, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l394, !tbaa !27
  %t765 = load { i64, ptr }, ptr %l394, !tbaa !27
  %t766 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s51, ptr %s51, { i64, ptr } %t763, { i64, ptr } %t765)
  store i1 %t766, ptr %l395
  br label %bb195
bb195:
  %t767 = load i1, ptr %l395, !tbaa !21
  %t768 = xor i1 %t767, true
  store i1 %t768, ptr %l389, !tbaa !21
  br label %bb196
bb196:
  %t770 = load i1, ptr %l389, !tbaa !21
  br i1 %t770, label %bb197, label %bb198
bb197:
  %t771 = load ptr, ptr %l40, !tbaa !29
  store ptr %t771, ptr %l397, !tbaa !29
  %t772 = load ptr, ptr %l0, !tbaa !29
  %t773 = getelementptr %"compiler/names:Entry", ptr %l43, i32 0, i32 0
  %t774 = load i32, ptr %t773, !tbaa !23
  %t777 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t772, i32 %t774)
  store { i64, ptr } %t777, ptr %l400
  br label %bb199
bb198:
  br label %bb201
bb199:
  %t778 = load ptr, ptr %l397, !tbaa !29
  %t779 = load { i64, ptr }, ptr %l400, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t778, { i64, ptr } %t779)
  br label %bb200
bb200:
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s51)
  br label %bb202
bb202:
  %t780 = load i64, ptr %l42, !tbaa !24
  %t782 = add i64 %t780, 1
  store i64 %t782, ptr %l42, !tbaa !24
  br label %bb183
bb203:
  %t784 = load ptr, ptr %l0, !tbaa !29
  %t786 = getelementptr %"compiler/check:Checker", ptr %t784, i32 0, i32 1
  %t787 = load ptr, ptr %t786, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t787)
  br label %bb204
bb204:
  store i64 0, ptr %l44, !tbaa !24
  %t789 = load ptr, ptr %l0, !tbaa !29
  %t791 = getelementptr %"compiler/check:Checker", ptr %t789, i32 0, i32 1
  %t792 = load ptr, ptr %t791, !tbaa !29
  %t794 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t792)
  store i64 %t794, ptr %l407
  br label %bb205
bb205:
  %t795 = load i64, ptr %l407, !tbaa !24
  store i64 %t795, ptr %l45, !tbaa !24
  store i64 1, ptr %l46, !tbaa !24
  %t796 = load i64, ptr %l45, !tbaa !24
  %t797 = load i64, ptr %l44, !tbaa !24
  %t800 = icmp sgt i64 %t796, %t797
  br i1 %t800, label %bb206, label %bb207
bb206:
  %t802 = load i64, ptr %l46, !tbaa !24
  %t804 = icmp sgt i64 %t802, 0
  br i1 %t804, label %bb208, label %bb209
bb207:
  store i64 0, ptr %l411, !tbaa !24
  br label %bb211
bb208:
  %t806 = load i64, ptr %l45, !tbaa !24
  %t807 = load i64, ptr %l44, !tbaa !24
  %t810 = sub i64 %t806, %t807
  %t811 = load i64, ptr %l46, !tbaa !24
  %t814 = add i64 %t810, %t811
  %t816 = sub i64 %t814, 1
  %t817 = load i64, ptr %l46, !tbaa !24
  %t820 = sdiv i64 %t816, %t817
  store i64 %t820, ptr %l414, !tbaa !24
  br label %bb210
bb209:
  store i64 0, ptr %l414, !tbaa !24
  br label %bb210
bb210:
  %t822 = load i64, ptr %l414, !tbaa !24
  store i64 %t822, ptr %l411, !tbaa !24
  br label %bb211
bb211:
  %t823 = load i64, ptr %l411, !tbaa !24
  store i64 %t823, ptr %l47, !tbaa !24
  store i64 0, ptr %l48, !tbaa !24
  br label %bb212
bb212:
  %t824 = load i64, ptr %l48, !tbaa !24
  %t825 = load i64, ptr %l47, !tbaa !24
  %t828 = icmp slt i64 %t824, %t825
  %t830 = xor i1 %t828, true
  br i1 %t830, label %bb213, label %bb214
bb213:
  br label %bb267
bb214:
  br label %bb215
bb215:
  %t832 = load i64, ptr %l44, !tbaa !24
  %t833 = load i64, ptr %l48, !tbaa !24
  %t834 = load i64, ptr %l46, !tbaa !24
  %t837 = mul i64 %t833, %t834
  %t840 = add i64 %t832, %t837
  store i64 %t840, ptr %l49, !tbaa !24
  %t842 = load ptr, ptr %l0, !tbaa !29
  %t844 = getelementptr %"compiler/check:Checker", ptr %t842, i32 0, i32 1
  %t845 = load ptr, ptr %t844, !tbaa !29
  %t846 = load i64, ptr %l49, !tbaa !24
  %t849 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t845, i64 %t846)
  store ptr %t849, ptr %l435
  br label %bb216
bb216:
  %t850 = load ptr, ptr %l435, !tbaa !29
  store ptr %t850, ptr %l50, !tbaa !29
  %t851 = load ptr, ptr %l50, !tbaa !29
  %t853 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t851)
  store i1 %t853, ptr %l437
  br label %bb217
bb217:
  %t854 = load i1, ptr %l437, !tbaa !21
  br i1 %t854, label %bb218, label %bb219
bb218:
  %t855 = load ptr, ptr %l0, !tbaa !29
  %t857 = getelementptr %"compiler/check:Checker", ptr %t855, i32 0, i32 1
  %t858 = load ptr, ptr %t857, !tbaa !29
  %t859 = load i64, ptr %l49, !tbaa !24
  %t862 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t858, i64 %t859)
  store i64 %t862, ptr %l442
  br label %bb220
bb219:
  store i1 false, ptr %l438, !tbaa !21
  br label %bb221
bb220:
  %t863 = load i64, ptr %l1, !tbaa !24
  %t864 = load i64, ptr %l442, !tbaa !24
  %t866 = icmp eq i64 %t864, %t863
  store i1 %t866, ptr %l438, !tbaa !21
  br label %bb221
bb221:
  %t868 = load i1, ptr %l438, !tbaa !21
  br i1 %t868, label %bb222, label %bb223
bb222:
  store %olang.scope zeroinitializer, ptr %s56
  %t869 = load ptr, ptr %l40, !tbaa !29
  store ptr %t869, ptr %l445, !tbaa !29
  %t870 = ptrtoint ptr %s0 to i64
  store i64 %t870, ptr %l446, !tbaa !24
  %t871 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t871, label %bb224, label %bb225
bb223:
  br label %bb229
bb224:
  %t873 = call ptr @__olang_region_make(ptr %s0)
  %t874 = ptrtoint ptr %t873 to i64
  store i64 %t874, ptr %l446, !tbaa !24
  br label %bb225
bb225:
  %t875 = load ptr, ptr %l50, !tbaa !29
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t878 = getelementptr %"compiler/check:Checker", ptr %t876, i32 0, i32 1
  %t879 = load ptr, ptr %t878, !tbaa !29
  %t881 = getelementptr %"compiler/generic:Program", ptr %t879, i32 0, i32 0
  %t882 = load ptr, ptr %t881, !tbaa !29
  %t884 = getelementptr %"compiler/load:Loader", ptr %t882, i32 0, i32 3
  %t885 = load ptr, ptr %t884, !tbaa !29
  %t888 = call { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v0, ptr %s56, ptr %t875, ptr %t885)
  store { i64, ptr } %t888, ptr %l453
  br label %bb226
bb226:
  %t889 = load ptr, ptr %l0, !tbaa !29
  %t890 = load ptr, ptr %l50, !tbaa !29
  %t892 = getelementptr %"compiler/ast:Func", ptr %t890, i32 0, i32 10
  %t893 = load i32, ptr %t892, !tbaa !23
  %t896 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s56, ptr %t889, i32 %t893)
  store { i64, ptr } %t896, ptr %l457
  br label %bb227
bb227:
  %t897 = load { i64, ptr }, ptr %l453, !tbaa !27
  %t898 = extractvalue { i64, ptr } %t897, 1
  %t899 = extractvalue { i64, ptr } %t897, 0
  %t900 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t901 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t902 = add i64 %t899, %t901
  %t903 = load { i64, ptr }, ptr %l457, !tbaa !27
  %t904 = extractvalue { i64, ptr } %t903, 1
  %t905 = extractvalue { i64, ptr } %t903, 0
  %t906 = add i64 %t902, %t905
  %t907 = load i64, ptr %l446
  %t908 = inttoptr i64 %t907 to ptr
  %t909 = call ptr @__olang_scope_alloc(ptr %t908, i64 %t906)
  call void @olang_textcopy(ptr %t909, ptr %t898, i64 %t899)
  %t910 = getelementptr i8, ptr %t909, i64 %t899
  call void @olang_textcopy(ptr %t910, ptr %t900, i64 %t901)
  %t911 = getelementptr i8, ptr %t910, i64 %t901
  call void @olang_textcopy(ptr %t911, ptr %t904, i64 %t905)
  %t912 = insertvalue { i64, ptr } undef, i64 %t906, 0
  %t913 = insertvalue { i64, ptr } %t912, ptr %t909, 1
  %t915 = load i64, ptr %l446
  %t916 = inttoptr i64 %t915 to ptr
  %t917 = extractvalue { i64, ptr } %t913, 0
  %t918 = extractvalue { i64, ptr } %t913, 1
  %t919 = mul i64 %t917, 1
  %t920 = call ptr @__olang_scope_alloc(ptr %t916, i64 %t919)
  call void @llvm.memcpy.p0.p0.i64(ptr %t920, ptr %t918, i64 %t919, i1 false)
  %t921 = insertvalue { i64, ptr } undef, i64 %t917, 0
  %t922 = insertvalue { i64, ptr } %t921, ptr %t920, 1
  %t923 = load ptr, ptr %l445, !tbaa !29
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %s0, ptr %t923, { i64, ptr } %t922)
  br label %bb228
bb228:
  call void @__olang_scope_close(ptr %s56)
  br label %bb229
bb229:
  %t925 = load ptr, ptr %l50, !tbaa !29
  %t927 = getelementptr %"compiler/ast:Func", ptr %t925, i32 0, i32 1
  %t928 = load ptr, ptr %t927, !tbaa !29
  %t930 = icmp eq ptr %t928, null
  br i1 %t930, label %bb230, label %bb231
bb230:
  store i1 true, ptr %l463, !tbaa !21
  br label %bb233
bb231:
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t934 = getelementptr %"compiler/check:Checker", ptr %t932, i32 0, i32 1
  %t935 = load ptr, ptr %t934, !tbaa !29
  %t936 = load i64, ptr %l49, !tbaa !24
  %t939 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t935, i64 %t936)
  store i64 %t939, ptr %l467
  br label %bb232
bb232:
  %t940 = load i64, ptr %l1, !tbaa !24
  %t941 = load i64, ptr %l467, !tbaa !24
  %t943 = icmp ne i64 %t941, %t940
  store i1 %t943, ptr %l463, !tbaa !21
  br label %bb233
bb233:
  %t945 = load i1, ptr %l463, !tbaa !21
  br i1 %t945, label %bb234, label %bb235
bb234:
  br label %bb266
bb235:
  br label %bb236
bb236:
  %t946 = load ptr, ptr %l0, !tbaa !29
  %t948 = getelementptr %"compiler/check:Checker", ptr %t946, i32 0, i32 1
  %t949 = load ptr, ptr %t948, !tbaa !29
  %t951 = getelementptr %"compiler/generic:Program", ptr %t949, i32 0, i32 2
  store ptr %t951, ptr %l472, !tbaa !29
  %t952 = load ptr, ptr %l0, !tbaa !29
  %t954 = getelementptr %"compiler/check:Checker", ptr %t952, i32 0, i32 1
  %t955 = load ptr, ptr %t954, !tbaa !29
  %t957 = getelementptr %"compiler/generic:Program", ptr %t955, i32 0, i32 2
  store ptr %t957, ptr %l475, !tbaa !29
  %t958 = load ptr, ptr %l0, !tbaa !29
  %t960 = getelementptr %"compiler/check:Checker", ptr %t958, i32 0, i32 1
  %t961 = load ptr, ptr %t960, !tbaa !29
  %t962 = load i64, ptr %l49, !tbaa !24
  %t965 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t961, i64 %t962)
  store i32 %t965, ptr %l479
  br label %bb237
bb237:
  %t966 = load ptr, ptr %l475, !tbaa !29
  %t967 = load i32, ptr %l479, !tbaa !23
  %t968 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t966, i32 %t967)
  store i32 %t968, ptr %l480
  br label %bb238
bb238:
  %t969 = load ptr, ptr %l472, !tbaa !29
  %t970 = load i32, ptr %l480, !tbaa !23
  %t971 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t969, i32 %t970)
  store { i64, ptr } %t971, ptr %l481
  br label %bb239
bb239:
  %t972 = load { i64, ptr }, ptr %l481, !tbaa !27
  store { i64, ptr } %t972, ptr %l51, !tbaa !27
  %t973 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t975 = extractvalue { i64, ptr } %t973, 0
  %t977 = icmp eq i64 %t975, 0
  br i1 %t977, label %bb240, label %bb241
bb240:
  br label %bb266
bb241:
  br label %bb242
bb242:
  %t979 = load ptr, ptr %l0, !tbaa !29
  store ptr %t979, ptr %l485, !tbaa !29
  %t980 = load ptr, ptr %l0, !tbaa !29
  %t981 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t981, ptr %l487, !tbaa !27
  %t982 = getelementptr { i64, ptr }, ptr %l487, i32 0, i32 1
  %t983 = load ptr, ptr %t982, !tbaa !27
  %t984 = getelementptr i32, ptr %t983, i64 0
  %t985 = load i32, ptr %t984, !tbaa !33
  %t988 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t980, i32 %t985)
  store i32 %t988, ptr %l489
  br label %bb243
bb243:
  %t989 = load ptr, ptr %l485, !tbaa !29
  %t990 = load i32, ptr %l489, !tbaa !23
  %t991 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t989, i32 %t990)
  store i1 %t991, ptr %l490
  br label %bb244
bb244:
  %t992 = load i1, ptr %l490, !tbaa !21
  br i1 %t992, label %bb245, label %bb246
bb245:
  store %olang.scope zeroinitializer, ptr %s60
  %t993 = load ptr, ptr %l40, !tbaa !29
  store ptr %t993, ptr %l491, !tbaa !29
  %t994 = ptrtoint ptr %s0 to i64
  store i64 %t994, ptr %l492, !tbaa !24
  %t995 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t995, label %bb247, label %bb248
bb246:
  store %olang.scope zeroinitializer, ptr %s62
  %t997 = load ptr, ptr %l50, !tbaa !29
  %t998 = load ptr, ptr %l0, !tbaa !29
  %t1000 = getelementptr %"compiler/check:Checker", ptr %t998, i32 0, i32 1
  %t1001 = load ptr, ptr %t1000, !tbaa !29
  %t1003 = getelementptr %"compiler/generic:Program", ptr %t1001, i32 0, i32 0
  %t1004 = load ptr, ptr %t1003, !tbaa !29
  %t1006 = getelementptr %"compiler/load:Loader", ptr %t1004, i32 0, i32 3
  %t1007 = load ptr, ptr %t1006, !tbaa !29
  %t1010 = call { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v0, ptr %s62, ptr %t997, ptr %t1007)
  store { i64, ptr } %t1010, ptr %l519
  br label %bb255
bb247:
  %t1011 = call ptr @__olang_region_make(ptr %s0)
  %t1012 = ptrtoint ptr %t1011 to i64
  store i64 %t1012, ptr %l492, !tbaa !24
  br label %bb248
bb248:
  %t1013 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1013, ptr %l494, !tbaa !29
  %t1014 = load ptr, ptr %l0, !tbaa !29
  %t1016 = getelementptr %"compiler/check:Checker", ptr %t1014, i32 0, i32 1
  %t1017 = load ptr, ptr %t1016, !tbaa !29
  %t1019 = getelementptr %"compiler/generic:Program", ptr %t1017, i32 0, i32 2
  store ptr %t1019, ptr %l497, !tbaa !29
  %t1020 = load ptr, ptr %l0, !tbaa !29
  %t1022 = getelementptr %"compiler/check:Checker", ptr %t1020, i32 0, i32 1
  %t1023 = load ptr, ptr %t1022, !tbaa !29
  %t1025 = getelementptr %"compiler/generic:Program", ptr %t1023, i32 0, i32 2
  store ptr %t1025, ptr %l500, !tbaa !29
  %t1026 = load ptr, ptr %l0, !tbaa !29
  %t1027 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t1027, ptr %l502, !tbaa !27
  %t1028 = getelementptr { i64, ptr }, ptr %l502, i32 0, i32 1
  %t1029 = load ptr, ptr %t1028, !tbaa !27
  %t1030 = getelementptr i32, ptr %t1029, i64 0
  %t1031 = load i32, ptr %t1030, !tbaa !33
  %t1034 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1026, i32 %t1031)
  store i32 %t1034, ptr %l504
  br label %bb249
bb249:
  %t1035 = load ptr, ptr %l500, !tbaa !29
  %t1036 = load i32, ptr %l504, !tbaa !23
  %t1037 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t1035, i32 %t1036)
  store i32 %t1037, ptr %l505
  br label %bb250
bb250:
  %t1038 = load ptr, ptr %l497, !tbaa !29
  %t1039 = load i32, ptr %l505, !tbaa !23
  %t1040 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t1038, i32 %t1039)
  store i32 %t1040, ptr %l506
  br label %bb251
bb251:
  %t1041 = load ptr, ptr %l494, !tbaa !29
  %t1042 = load i32, ptr %l506, !tbaa !23
  %t1043 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s60, ptr %t1041, i32 %t1042)
  store { i64, ptr } %t1043, ptr %l507
  br label %bb252
bb252:
  %t1044 = load ptr, ptr %l0, !tbaa !29
  %t1045 = load ptr, ptr %l50, !tbaa !29
  %t1047 = getelementptr %"compiler/ast:Func", ptr %t1045, i32 0, i32 2
  %t1048 = load i32, ptr %t1047, !tbaa !23
  %t1051 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s60, ptr %t1044, i32 %t1048)
  store { i64, ptr } %t1051, ptr %l511
  br label %bb253
bb253:
  %t1052 = load { i64, ptr }, ptr %l507, !tbaa !27
  %t1053 = extractvalue { i64, ptr } %t1052, 1
  %t1054 = extractvalue { i64, ptr } %t1052, 0
  %t1055 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t1056 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t1057 = add i64 %t1054, %t1056
  %t1058 = load { i64, ptr }, ptr %l511, !tbaa !27
  %t1059 = extractvalue { i64, ptr } %t1058, 1
  %t1060 = extractvalue { i64, ptr } %t1058, 0
  %t1061 = add i64 %t1057, %t1060
  %t1062 = load i64, ptr %l492
  %t1063 = inttoptr i64 %t1062 to ptr
  %t1064 = call ptr @__olang_scope_alloc(ptr %t1063, i64 %t1061)
  call void @olang_textcopy(ptr %t1064, ptr %t1053, i64 %t1054)
  %t1065 = getelementptr i8, ptr %t1064, i64 %t1054
  call void @olang_textcopy(ptr %t1065, ptr %t1055, i64 %t1056)
  %t1066 = getelementptr i8, ptr %t1065, i64 %t1056
  call void @olang_textcopy(ptr %t1066, ptr %t1059, i64 %t1060)
  %t1067 = insertvalue { i64, ptr } undef, i64 %t1061, 0
  %t1068 = insertvalue { i64, ptr } %t1067, ptr %t1064, 1
  %t1070 = load i64, ptr %l492
  %t1071 = inttoptr i64 %t1070 to ptr
  %t1072 = extractvalue { i64, ptr } %t1068, 0
  %t1073 = extractvalue { i64, ptr } %t1068, 1
  %t1074 = mul i64 %t1072, 1
  %t1075 = call ptr @__olang_scope_alloc(ptr %t1071, i64 %t1074)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1075, ptr %t1073, i64 %t1074, i1 false)
  %t1076 = insertvalue { i64, ptr } undef, i64 %t1072, 0
  %t1077 = insertvalue { i64, ptr } %t1076, ptr %t1075, 1
  %t1078 = load ptr, ptr %l491, !tbaa !29
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %s0, ptr %t1078, { i64, ptr } %t1077)
  br label %bb254
bb254:
  call void @__olang_scope_close(ptr %s60)
  br label %bb265
bb255:
  %t1080 = load { i64, ptr }, ptr %l519, !tbaa !27
  %t1081 = extractvalue { i64, ptr } %t1080, 0
  %t1082 = extractvalue { i64, ptr } %t1080, 1
  %t1083 = mul i64 %t1081, 1
  %t1084 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1083)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1084, ptr %t1082, i64 %t1083, i1 false)
  %t1085 = insertvalue { i64, ptr } undef, i64 %t1081, 0
  %t1086 = insertvalue { i64, ptr } %t1085, ptr %t1084, 1
  %t1088 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s62, ptr %s62, { i64, ptr } %t1086, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t1088, ptr %l521
  br label %bb256
bb256:
  %t1089 = load i1, ptr %l521, !tbaa !21
  %t1090 = xor i1 %t1089, true
  br i1 %t1090, label %bb257, label %bb258
bb257:
  store %olang.scope zeroinitializer, ptr %s63
  %t1092 = load ptr, ptr %l40, !tbaa !29
  store ptr %t1092, ptr %l523, !tbaa !29
  %t1093 = ptrtoint ptr %s0 to i64
  store i64 %t1093, ptr %l524, !tbaa !24
  %t1094 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t1094, label %bb259, label %bb260
bb258:
  br label %bb264
bb259:
  %t1096 = call ptr @__olang_region_make(ptr %s0)
  %t1097 = ptrtoint ptr %t1096 to i64
  store i64 %t1097, ptr %l524, !tbaa !24
  br label %bb260
bb260:
  %t1098 = load ptr, ptr %l50, !tbaa !29
  %t1099 = load ptr, ptr %l0, !tbaa !29
  %t1101 = getelementptr %"compiler/check:Checker", ptr %t1099, i32 0, i32 1
  %t1102 = load ptr, ptr %t1101, !tbaa !29
  %t1104 = getelementptr %"compiler/generic:Program", ptr %t1102, i32 0, i32 0
  %t1105 = load ptr, ptr %t1104, !tbaa !29
  %t1107 = getelementptr %"compiler/load:Loader", ptr %t1105, i32 0, i32 3
  %t1108 = load ptr, ptr %t1107, !tbaa !29
  %t1111 = call { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v0, ptr %s63, ptr %t1098, ptr %t1108)
  store { i64, ptr } %t1111, ptr %l531
  br label %bb261
bb261:
  %t1112 = load ptr, ptr %l0, !tbaa !29
  %t1113 = load ptr, ptr %l50, !tbaa !29
  %t1115 = getelementptr %"compiler/ast:Func", ptr %t1113, i32 0, i32 2
  %t1116 = load i32, ptr %t1115, !tbaa !23
  %t1119 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s63, ptr %t1112, i32 %t1116)
  store { i64, ptr } %t1119, ptr %l535
  br label %bb262
bb262:
  %t1120 = load { i64, ptr }, ptr %l531, !tbaa !27
  %t1121 = extractvalue { i64, ptr } %t1120, 1
  %t1122 = extractvalue { i64, ptr } %t1120, 0
  %t1123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t1124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t1125 = add i64 %t1122, %t1124
  %t1126 = load { i64, ptr }, ptr %l535, !tbaa !27
  %t1127 = extractvalue { i64, ptr } %t1126, 1
  %t1128 = extractvalue { i64, ptr } %t1126, 0
  %t1129 = add i64 %t1125, %t1128
  %t1130 = load i64, ptr %l524
  %t1131 = inttoptr i64 %t1130 to ptr
  %t1132 = call ptr @__olang_scope_alloc(ptr %t1131, i64 %t1129)
  call void @olang_textcopy(ptr %t1132, ptr %t1121, i64 %t1122)
  %t1133 = getelementptr i8, ptr %t1132, i64 %t1122
  call void @olang_textcopy(ptr %t1133, ptr %t1123, i64 %t1124)
  %t1134 = getelementptr i8, ptr %t1133, i64 %t1124
  call void @olang_textcopy(ptr %t1134, ptr %t1127, i64 %t1128)
  %t1135 = insertvalue { i64, ptr } undef, i64 %t1129, 0
  %t1136 = insertvalue { i64, ptr } %t1135, ptr %t1132, 1
  %t1138 = load i64, ptr %l524
  %t1139 = inttoptr i64 %t1138 to ptr
  %t1140 = extractvalue { i64, ptr } %t1136, 0
  %t1141 = extractvalue { i64, ptr } %t1136, 1
  %t1142 = mul i64 %t1140, 1
  %t1143 = call ptr @__olang_scope_alloc(ptr %t1139, i64 %t1142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1143, ptr %t1141, i64 %t1142, i1 false)
  %t1144 = insertvalue { i64, ptr } undef, i64 %t1140, 0
  %t1145 = insertvalue { i64, ptr } %t1144, ptr %t1143, 1
  %t1146 = load ptr, ptr %l523, !tbaa !29
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %s0, ptr %t1146, { i64, ptr } %t1145)
  br label %bb263
bb263:
  call void @__olang_scope_close(ptr %s63)
  br label %bb264
bb264:
  call void @__olang_scope_close(ptr %s62)
  br label %bb265
bb265:
  br label %bb266
bb266:
  %t1148 = load i64, ptr %l48, !tbaa !24
  %t1150 = add i64 %t1148, 1
  store i64 %t1150, ptr %l48, !tbaa !24
  br label %bb212
bb267:
  %t1152 = load ptr, ptr %l40, !tbaa !29
  %t1154 = getelementptr %"compiler/msgs:Nearest", ptr %t1152, i32 0, i32 1
  %t1155 = load { i64, ptr }, ptr %t1154, !tbaa !27
  %t1157 = extractvalue { i64, ptr } %t1155, 0
  %t1159 = icmp sgt i64 %t1157, 0
  br i1 %t1159, label %bb268, label %bb269
bb268:
  %t1161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1161, ptr %l544, !tbaa !29
  %t1162 = load ptr, ptr %l3, !tbaa !29
  %t1164 = getelementptr %"compiler/ast:Path", ptr %t1162, i32 0, i32 0
  %t1165 = load %"compiler/source:Span", ptr %t1164
  store %"compiler/source:Span" %t1165, ptr %l546
  %t1166 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t1167 = load ptr, ptr %l40, !tbaa !29
  %t1169 = getelementptr %"compiler/msgs:Nearest", ptr %t1167, i32 0, i32 1
  %t1170 = load { i64, ptr }, ptr %t1169, !tbaa !27
  %t1173 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetUnknownMeant(ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t1166, { i64, ptr } %t1170)
  store %"compiler/diagmsg:Msg" %t1173, ptr %l550
  br label %bb270
bb269:
  %t1174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1174, ptr %l552, !tbaa !29
  %t1175 = load ptr, ptr %l3, !tbaa !29
  %t1177 = getelementptr %"compiler/ast:Path", ptr %t1175, i32 0, i32 0
  %t1178 = load %"compiler/source:Span", ptr %t1177
  store %"compiler/source:Span" %t1178, ptr %l554
  %t1179 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t1181 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetUnknown(ptr %s0, ptr %v0, { i64, ptr } %t1179)
  store %"compiler/diagmsg:Msg" %t1181, ptr %l556
  br label %bb272
bb270:
  %t1182 = load ptr, ptr %l544, !tbaa !29
  %t1183 = load %"compiler/source:Span", ptr %l546
  %t1184 = load %"compiler/diagmsg:Msg", ptr %l550
  %t1185 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1182, %"compiler/source:Span" %t1183, %"compiler/diagmsg:Msg" %t1184)
  store i64 %t1185, ptr %l551
  br label %bb271
bb271:
  br label %bb274
bb272:
  %t1186 = load ptr, ptr %l552, !tbaa !29
  %t1187 = load %"compiler/source:Span", ptr %l554
  %t1188 = load %"compiler/diagmsg:Msg", ptr %l556
  %t1189 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1186, %"compiler/source:Span" %t1187, %"compiler/diagmsg:Msg" %t1188)
  store i64 %t1189, ptr %l557
  br label %bb273
bb273:
  br label %bb274
bb274:
  %t1190 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t1190)
  br label %bb275
bb275:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i1
  %l24 = alloca i32
  %l33 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %t13, i32 %t14)
  store i64 %t17, ptr %l13
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = icmp ne i64 %t18, -1
  store i1 %t19, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l18
  br label %bb10
bb10:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l24
  br label %bb13
bb12:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb14
bb13:
  %t39 = load i32, ptr %l24, !range !{i32 0, i32 33}
  %t41 = trunc i64 19 to i32
  %t42 = icmp eq i32 %t39, %t41
  %t44 = xor i1 %t42, true
  store i1 %t44, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l19, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = add i64 %a2, 1
  %t56 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %t48, i32 %t49, i64 %t52)
  store i1 %t56, ptr %l33
  br label %bb18
bb18:
  %t57 = load i1, ptr %l33, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l22 = alloca i32
  %l25 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l36 = alloca i32
  %l44 = alloca i32
  %l52 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a1, ptr %l6, !tbaa !23
  store i32 %a2, ptr %l7, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l6, !tbaa !23
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l12
  br label %bb1
bb1:
  %t10 = load i1, ptr %l12, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l7, !tbaa !23
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l16
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb5
bb4:
  %t16 = load i1, ptr %l16, !tbaa !21
  %t17 = xor i1 %t16, true
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l13, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l6, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l22
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t30 = load i32, ptr %l22, !tbaa !23
  store i32 %t30, ptr %l6, !tbaa !23
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l7, !tbaa !23
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l25
  br label %bb10
bb10:
  %t36 = load i1, ptr %l25, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l6, !tbaa !23
  %t41 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t41, ptr %l29
  br label %bb13
bb12:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb14
bb13:
  %t42 = load i1, ptr %l29, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t45 = load i1, ptr %l26, !tbaa !21
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l6, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l36
  br label %bb17
bb16:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb18
bb17:
  %t56 = load i32, ptr %l36, !range !{i32 0, i32 33}
  %t58 = trunc i64 25 to i32
  %t59 = icmp eq i32 %t56, %t58
  %t61 = xor i1 %t59, true
  store i1 %t61, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t63 = load i1, ptr %l31, !tbaa !21
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l7, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l44
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t74 = load i32, ptr %l44, !tbaa !23
  store i32 %t74, ptr %l7, !tbaa !23
  br label %bb22
bb22:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i32, ptr %l6, !tbaa !23
  %t80 = load i32, ptr %l7, !tbaa !23
  %t90 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %t78, i32 %t79, i32 %t80, ptr %a3, i1 %a4, i1 %a5)
  store i32 %t90, ptr %l52
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb24, label %ok.92, !prof !99
ok.92:
  br label %bb23
bb23:
  br label %bb26
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca i1
  %s0 = alloca %olang.scope
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
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
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
  br label %ret
bb7:
  br label %bb8
bb8:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t14)
  store ptr %t16, ptr %l11
  br label %bb9
bb9:
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t19 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 4
  %t20 = getelementptr %"compiler/generic:Context", ptr %t19, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H2c4b9eb360b9a0ada2008890a467b28d(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l15
  br label %bb10
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %t25, i32 %t26, i32 %a2)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunspreadAll(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i32
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l14, !tbaa !24
  %t12 = load i64, ptr %l14, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l14, !tbaa !24
  %t16 = icmp sle i64 %t15, 2305843009213693951
  br i1 %t16, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_b692ddd8e2182d13_c763079e5a61942f)
  unreachable
bb6:
  %t18 = load i64, ptr %l14, !tbaa !24
  %t19 = mul i64 %t18, 4
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t23, ptr %lp2
  %t25 = load ptr, ptr %lp2
  store { i64, ptr } %t22, ptr %t25, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_b692ddd8e2182d13_c763079e5a61942f)
  unreachable
bb8:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb13
bb10:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l26, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb12
bb12:
  %t56 = load i64, ptr %l26, !tbaa !24
  store i64 %t56, ptr %l23, !tbaa !24
  br label %bb13
bb13:
  %t57 = load i64, ptr %l23, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb15, label %bb16
bb15:
  br label %bb20
bb16:
  br label %bb17
bb17:
  %t66 = load i64, ptr %l3, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  store i64 %t76, ptr %l44, !tbaa !24
  %t79 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t83, ptr %l48, !tbaa !27
  %t84 = load i64, ptr %l8, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i32, ptr %t87, i64 %t84
  %t89 = load i32, ptr %t88, !tbaa !33
  %t92 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnspread(ptr %v0, ptr %t82, i32 %t89)
  store i32 %t92, ptr %l51
  br label %bb18
bb18:
  %t93 = load i32, ptr %l51, !tbaa !23
  %t94 = load ptr, ptr %lp2
  %t95 = load i64, ptr %l44, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t95
  store i32 %t93, ptr %t98, !tbaa !33
  br label %bb19
bb19:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l7, !tbaa !24
  br label %bb14
bb20:
  %t103 = load ptr, ptr %lp2
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkRuns(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i64 %a4, ptr %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, i64, i64 }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca { i64, i64, i64 }
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l43 = alloca i32
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l49 = alloca i32
  %l50 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  %l53 = alloca i32
  %l54 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l63 = alloca i32
  %l64 = alloca i64
  %l65 = alloca ptr
  %l66 = alloca %"compiler/source:Span"
  %l69 = alloca i32
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l73 = alloca i32
  %l74 = alloca ptr
  %l79 = alloca i64
  %l83 = alloca { i64, i64, i64 }
  %l88 = alloca ptr
  %l93 = alloca ptr
  %l97 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l99 = alloca i64
  %l103 = alloca ptr
  %l104 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l113 = alloca i32
  %l117 = alloca i64
  %l118 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l122 = alloca i32
  %l127 = alloca ptr
  %l130 = alloca ptr
  %l131 = alloca %"compiler/source:Span"
  %l133 = alloca i32
  %l134 = alloca i64
  %l135 = alloca ptr
  %l136 = alloca %"compiler/source:Span"
  %l139 = alloca i32
  %l140 = alloca ptr
  %l141 = alloca %"compiler/source:Span"
  %l143 = alloca i32
  %l144 = alloca i32
  %l148 = alloca ptr
  %l149 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca %"compiler/source:Span"
  %l155 = alloca i32
  %l156 = alloca i64
  %l157 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l161 = alloca i32
  %l162 = alloca ptr
  %l163 = alloca %"compiler/source:Span"
  %l165 = alloca i32
  %l166 = alloca ptr
  %l171 = alloca i64
  %l175 = alloca { i64, i64, i64 }
  %l179 = alloca i64
  %l181 = alloca ptr
  %l184 = alloca i64
  %l185 = alloca i32
  %l187 = alloca ptr
  %l191 = alloca ptr
  %l192 = alloca ptr
  %l193 = alloca %"compiler/source:Span"
  %l194 = alloca ptr
  %l195 = alloca %"compiler/source:Span"
  %l196 = alloca i32
  %l197 = alloca i32
  %l201 = alloca ptr
  %l205 = alloca ptr
  %l207 = alloca ptr
  %l209 = alloca ptr
  %l212 = alloca i32
  %l213 = alloca %"compiler/source:Span"
  %l216 = alloca i32
  %l220 = alloca ptr
  %l223 = alloca ptr
  %l224 = alloca %"compiler/source:Span"
  %l225 = alloca %"compiler/source:Span"
  %l230 = alloca i32
  %l231 = alloca ptr
  %l235 = alloca ptr
  %l237 = alloca %"compiler/typed:Elem"
  %l241 = alloca ptr
  %l251 = alloca i64
  %l253 = alloca ptr
  %l256 = alloca i64
  %l257 = alloca i32
  %l258 = alloca i64
  %l260 = alloca ptr
  %l263 = alloca i64
  %l264 = alloca i32
  %l270 = alloca ptr
  %l273 = alloca i64
  %l277 = alloca { i64, i64, i64 }
  %l281 = alloca ptr
  %l282 = alloca ptr
  %l283 = alloca %"compiler/source:Span"
  %l284 = alloca i64
  %l285 = alloca ptr
  %l286 = alloca %"compiler/source:Span"
  %l288 = alloca i32
  %l289 = alloca ptr
  %l290 = alloca ptr
  %l293 = alloca ptr
  %l294 = alloca ptr
  %l295 = alloca %"compiler/source:Span"
  %l296 = alloca i64
  %l297 = alloca ptr
  %l298 = alloca %"compiler/source:Span"
  %l300 = alloca i32
  %l301 = alloca ptr
  %l302 = alloca ptr
  %l308 = alloca ptr
  %l316 = alloca ptr
  %l317 = alloca ptr
  %l318 = alloca %"compiler/source:Span"
  %l319 = alloca i64
  %l323 = alloca ptr
  %l324 = alloca ptr
  %l330 = alloca ptr
  %t34 = alloca { i64, [3 x i64] }, align 8
  %t80 = alloca { i64, [3 x i64] }, align 8
  %t190 = alloca { i64, [3 x i64] }, align 8
  %t238 = alloca { i64, [3 x i64] }, align 8
  %t277 = alloca { i64, [3 x i64] }, align 8
  %t390 = alloca { i64, [4 x i64] }, align 8
  %t430 = alloca { i64, [4 x i64] }, align 8
  %t586 = alloca { i64, [3 x i64] }, align 8
  %t633 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t7 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v2, ptr %t1, %"compiler/source:Span" %t2, ptr %a3)
  store i64 %t7, ptr %l39
  br label %bb1
bb1:
  %t8 = load i64, ptr %l39, !tbaa !24
  store i64 %t8, ptr %l7, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l40, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t10, ptr %l41
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t11)
  store i32 %t13, ptr %l43
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l40, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l41
  %t16 = load i32, ptr %l43, !tbaa !23
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t14, %"compiler/source:Span" %t15, i32 %t16)
  store i64 %t17, ptr %l44
  br label %bb3
bb3:
  %t18 = load i64, ptr %l44, !tbaa !24
  store i64 %t18, ptr %l8, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l45, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t20, ptr %l46
  %t21 = load i64, ptr %l8, !tbaa !24
  %t23 = trunc i64 %t21 to i32
  store i32 %t23, ptr %l49, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l50, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t26, ptr %l51
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t27)
  store i32 %t29, ptr %l53
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l50, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l51
  %t32 = load i32, ptr %l53, !tbaa !23
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t30, %"compiler/source:Span" %t31, i32 %t32, i64 0)
  store ptr %t33, ptr %l54
  br label %bb5
bb5:
  store { i64, [3 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 0
  store i64 0, ptr %t35
  %t36 = load %"compiler/source:Span", ptr %l46
  %t37 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t36, 0
  %t38 = load i32, ptr %l49, !tbaa !23
  %t39 = insertvalue { %"compiler/source:Span", i32, ptr } %t37, i32 %t38, 1
  %t40 = load ptr, ptr %l54, !tbaa !29
  %t41 = insertvalue { %"compiler/source:Span", i32, ptr } %t39, ptr %t40, 2
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t41, ptr %t42
  %t43 = load { i64, [3 x i64] }, ptr %t34
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t43, ptr %t45
  %t46 = load ptr, ptr %l45, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t46, ptr %t45)
  br label %bb6
bb6:
  store i64 -1, ptr %l9, !tbaa !24
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/ast:ForIn", ptr %t48, i32 0, i32 0
  %t51 = load i32, ptr %t50, !tbaa !23
  %t53 = icmp ne i32 %t51, 0
  br i1 %t53, label %bb7, label %bb8
bb7:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l60, !tbaa !29
  %t56 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t56, ptr %l61
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t57)
  store i32 %t59, ptr %l63
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t60 = load ptr, ptr %l60, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l61
  %t62 = load i32, ptr %l63, !tbaa !23
  %t63 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t60, %"compiler/source:Span" %t61, i32 %t62)
  store i64 %t63, ptr %l64
  br label %bb10
bb10:
  %t64 = load i64, ptr %l64, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l65, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t66, ptr %l66
  %t67 = load i64, ptr %l9, !tbaa !24
  %t69 = trunc i64 %t67 to i32
  store i32 %t69, ptr %l69, !tbaa !23
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l70, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t72, ptr %l71
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t73)
  store i32 %t75, ptr %l73
  br label %bb11
bb11:
  %t76 = load ptr, ptr %l70, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l71
  %t78 = load i32, ptr %l73, !tbaa !23
  %t79 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t76, %"compiler/source:Span" %t77, i32 %t78, i64 0)
  store ptr %t79, ptr %l74
  br label %bb12
bb12:
  store { i64, [3 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 0
  store i64 0, ptr %t81
  %t82 = load %"compiler/source:Span", ptr %l66
  %t83 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t82, 0
  %t84 = load i32, ptr %l69, !tbaa !23
  %t85 = insertvalue { %"compiler/source:Span", i32, ptr } %t83, i32 %t84, 1
  %t86 = load ptr, ptr %l74, !tbaa !29
  %t87 = insertvalue { %"compiler/source:Span", i32, ptr } %t85, ptr %t86, 2
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t87, ptr %t88
  %t89 = load { i64, [3 x i64] }, ptr %t80
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t89, ptr %t91
  %t92 = load ptr, ptr %l65, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t92, ptr %t91)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 37
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l79
  br label %bb15
bb15:
  %t99 = load i64, ptr %l79, !tbaa !24
  store i64 %t99, ptr %l10, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l1
  %t105 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t100, i32 2, %"compiler/source:Span" %t101)
  store { i64, i64, i64 } %t105, ptr %l83
  br label %bb16
bb16:
  %t106 = load { i64, i64, i64 }, ptr %l83
  store { i64, i64, i64 } %t106, ptr %l11
  %t107 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  store i64 %t108, ptr %l12, !tbaa !24
  %t110 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %l13, !tbaa !24
  %t113 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 2
  %t114 = load i64, ptr %t113, !tbaa !24
  store i64 %t114, ptr %l14, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t116)
  store ptr %t118, ptr %l88
  br label %bb17
bb17:
  %t119 = load ptr, ptr %l88, !tbaa !29
  %t121 = getelementptr %"compiler/check:frame", ptr %t119, i32 0, i32 10
  %t122 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t121, i64 %t122)
  br label %bb18
bb18:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t125)
  store ptr %t127, ptr %l93
  br label %bb19
bb19:
  %t128 = load ptr, ptr %l93, !tbaa !29
  %t130 = getelementptr %"compiler/check:frame", ptr %t128, i32 0, i32 11
  %t131 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t130, i64 %t131)
  br label %bb20
bb20:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l97, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t135, ptr %l98
  store i64 %a4, ptr %l99, !tbaa !24
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l1
  %t139 = load i64, ptr %l7, !tbaa !24
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t137, %"compiler/source:Span" %t138, i64 %t139)
  store ptr %t143, ptr %l103
  br label %bb21
bb21:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l104, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l1
  %t147 = load i64, ptr %l8, !tbaa !24
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t145, %"compiler/source:Span" %t146, i64 %t147)
  store ptr %t151, ptr %l108
  br label %bb22
bb22:
  %t152 = load ptr, ptr %l104, !tbaa !29
  %t153 = load ptr, ptr %l108, !tbaa !29
  %t154 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v0, ptr %v0, ptr %t152, ptr %t153)
  store { i64, ptr } %t154, ptr %l109
  br label %bb23
bb23:
  %t155 = load ptr, ptr %l97, !tbaa !29
  %t156 = load %"compiler/source:Span", ptr %l98
  %t157 = load i64, ptr %l99, !tbaa !24
  %t158 = load ptr, ptr %l103, !tbaa !29
  %t159 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t160 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopCall(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t155, %"compiler/source:Span" %t156, i64 %t157, ptr %t158, { i64, ptr } %t159)
  store ptr %t160, ptr %l110
  br label %bb24
bb24:
  %t161 = load ptr, ptr %l110, !tbaa !29
  store ptr %t161, ptr %l15, !tbaa !29
  %t162 = load ptr, ptr %l15, !tbaa !29
  %t165 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t162)
  store i32 %t165, ptr %l113
  br label %bb25
bb25:
  %t166 = load i32, ptr %l113, !tbaa !23
  store i32 %t166, ptr %l16, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l1
  %t169 = load i32, ptr %l16, !tbaa !23
  %t173 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t167, %"compiler/source:Span" %t168, i32 %t169)
  store i64 %t173, ptr %l117
  br label %bb26
bb26:
  %t174 = load i64, ptr %l117, !tbaa !24
  store i64 %t174, ptr %l17, !tbaa !24
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l118, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t176, ptr %l119
  %t177 = load i64, ptr %l17, !tbaa !24
  %t179 = trunc i64 %t177 to i32
  store i32 %t179, ptr %l122, !tbaa !23
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load %"compiler/source:Span", ptr %l1
  %t183 = load ptr, ptr %l15, !tbaa !29
  %t184 = load i64, ptr %l12, !tbaa !24
  %t189 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexhaustedOrBreak(ptr %v0, ptr %v0, ptr %v0, ptr %t181, %"compiler/source:Span" %t182, ptr %t183, i64 %t184)
  store ptr %t189, ptr %l127
  br label %bb27
bb27:
  store { i64, [3 x i64] } zeroinitializer, ptr %t190
  %t191 = getelementptr { i64, [3 x i64] }, ptr %t190, i32 0, i32 0
  store i64 0, ptr %t191
  %t192 = load %"compiler/source:Span", ptr %l119
  %t193 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t192, 0
  %t194 = load i32, ptr %l122, !tbaa !23
  %t195 = insertvalue { %"compiler/source:Span", i32, ptr } %t193, i32 %t194, 1
  %t196 = load ptr, ptr %l127, !tbaa !29
  %t197 = insertvalue { %"compiler/source:Span", i32, ptr } %t195, ptr %t196, 2
  %t198 = getelementptr { i64, [3 x i64] }, ptr %t190, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t197, ptr %t198
  %t199 = load { i64, [3 x i64] }, ptr %t190
  %t201 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t199, ptr %t201
  %t202 = load ptr, ptr %l118, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t202, ptr %t201)
  br label %bb28
bb28:
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l130, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t205, ptr %l131
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t206)
  store i32 %t208, ptr %l133
  br label %bb29
bb29:
  %t209 = load ptr, ptr %l130, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l131
  %t211 = load i32, ptr %l133, !tbaa !23
  %t212 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t209, %"compiler/source:Span" %t210, i32 %t211)
  store i64 %t212, ptr %l134
  br label %bb30
bb30:
  %t213 = load i64, ptr %l134, !tbaa !24
  store i64 %t213, ptr %l18, !tbaa !24
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l135, !tbaa !29
  %t215 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t215, ptr %l136
  %t216 = load i64, ptr %l18, !tbaa !24
  %t218 = trunc i64 %t216 to i32
  store i32 %t218, ptr %l139, !tbaa !23
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l140, !tbaa !29
  %t221 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t221, ptr %l141
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t222)
  store i32 %t224, ptr %l143
  br label %bb31
bb31:
  store i32 22, ptr %l144
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l1
  %t227 = load i64, ptr %l17, !tbaa !24
  %t231 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t225, %"compiler/source:Span" %t226, i64 %t227)
  store ptr %t231, ptr %l148
  br label %bb32
bb32:
  %t232 = load ptr, ptr %l140, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l141
  %t234 = load i32, ptr %l143, !tbaa !23
  %t235 = load i32, ptr %l144, !range !{i32 0, i32 52}
  %t236 = load ptr, ptr %l148, !tbaa !29
  %t237 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t232, %"compiler/source:Span" %t233, i32 %t234, i32 %t235, ptr %t236, ptr null)
  store ptr %t237, ptr %l149
  br label %bb33
bb33:
  store { i64, [3 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [3 x i64] }, ptr %t238, i32 0, i32 0
  store i64 0, ptr %t239
  %t240 = load %"compiler/source:Span", ptr %l136
  %t241 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t240, 0
  %t242 = load i32, ptr %l139, !tbaa !23
  %t243 = insertvalue { %"compiler/source:Span", i32, ptr } %t241, i32 %t242, 1
  %t244 = load ptr, ptr %l149, !tbaa !29
  %t245 = insertvalue { %"compiler/source:Span", i32, ptr } %t243, ptr %t244, 2
  %t246 = getelementptr { i64, [3 x i64] }, ptr %t238, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t245, ptr %t246
  %t247 = load { i64, [3 x i64] }, ptr %t238
  %t249 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t247, ptr %t249
  %t250 = load ptr, ptr %l135, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t250, ptr %t249)
  br label %bb34
bb34:
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l152, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t253, ptr %l153
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t254)
  store i32 %t256, ptr %l155
  br label %bb35
bb35:
  %t257 = load ptr, ptr %l152, !tbaa !29
  %t258 = load %"compiler/source:Span", ptr %l153
  %t259 = load i32, ptr %l155, !tbaa !23
  %t260 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t257, %"compiler/source:Span" %t258, i32 %t259)
  store i64 %t260, ptr %l156
  br label %bb36
bb36:
  %t261 = load i64, ptr %l156, !tbaa !24
  store i64 %t261, ptr %l19, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l157, !tbaa !29
  %t263 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t263, ptr %l158
  %t264 = load i64, ptr %l19, !tbaa !24
  %t266 = trunc i64 %t264 to i32
  store i32 %t266, ptr %l161, !tbaa !23
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l162, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t269, ptr %l163
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t270)
  store i32 %t272, ptr %l165
  br label %bb37
bb37:
  %t273 = load ptr, ptr %l162, !tbaa !29
  %t274 = load %"compiler/source:Span", ptr %l163
  %t275 = load i32, ptr %l165, !tbaa !23
  %t276 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t273, %"compiler/source:Span" %t274, i32 %t275, i64 0)
  store ptr %t276, ptr %l166
  br label %bb38
bb38:
  store { i64, [3 x i64] } zeroinitializer, ptr %t277
  %t278 = getelementptr { i64, [3 x i64] }, ptr %t277, i32 0, i32 0
  store i64 0, ptr %t278
  %t279 = load %"compiler/source:Span", ptr %l158
  %t280 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t279, 0
  %t281 = load i32, ptr %l161, !tbaa !23
  %t282 = insertvalue { %"compiler/source:Span", i32, ptr } %t280, i32 %t281, 1
  %t283 = load ptr, ptr %l166, !tbaa !29
  %t284 = insertvalue { %"compiler/source:Span", i32, ptr } %t282, ptr %t283, 2
  %t285 = getelementptr { i64, [3 x i64] }, ptr %t277, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t284, ptr %t285
  %t286 = load { i64, [3 x i64] }, ptr %t277
  %t288 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t286, ptr %t288
  %t289 = load ptr, ptr %l157, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t289, ptr %t288)
  br label %bb39
bb39:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 37
  %t295 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t293)
  store i64 %t295, ptr %l171
  br label %bb40
bb40:
  %t296 = load i64, ptr %l171, !tbaa !24
  store i64 %t296, ptr %l20, !tbaa !24
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load %"compiler/source:Span", ptr %l1
  %t302 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t297, i32 2, %"compiler/source:Span" %t298)
  store { i64, i64, i64 } %t302, ptr %l175
  br label %bb41
bb41:
  %t303 = load { i64, i64, i64 }, ptr %l175
  store { i64, i64, i64 } %t303, ptr %l21
  %t304 = getelementptr { i64, i64, i64 }, ptr %l21, i32 0, i32 0
  %t305 = load i64, ptr %t304, !tbaa !24
  store i64 %t305, ptr %l22, !tbaa !24
  %t307 = getelementptr { i64, i64, i64 }, ptr %l21, i32 0, i32 1
  %t308 = load i64, ptr %t307, !tbaa !24
  store i64 %t308, ptr %l23, !tbaa !24
  %t310 = getelementptr { i64, i64, i64 }, ptr %l21, i32 0, i32 2
  %t311 = load i64, ptr %t310, !tbaa !24
  store i64 %t311, ptr %l24, !tbaa !24
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t313)
  store ptr %t315, ptr %l181
  br label %bb42
bb42:
  %t316 = load ptr, ptr %l181, !tbaa !29
  %t318 = getelementptr %"compiler/check:frame", ptr %t316, i32 0, i32 10
  %t320 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t318)
  %t321 = extractvalue { i32, i64 } %t320, 1
  %t322 = extractvalue { i32, i64 } %t320, 0
  store i32 %t322, ptr %l185
  %t323 = icmp ne i32 %t322, 0
  br i1 %t323, label %bb44, label %ok.324, !prof !99
ok.324:
  store i64 %t321, ptr %l184
  br label %bb43
bb43:
  %t325 = load i64, ptr %l184, !tbaa !24
  store i64 %t325, ptr %l179, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t326)
  store ptr %t328, ptr %l187
  br label %bb47
bb47:
  %t329 = load ptr, ptr %l187, !tbaa !29
  %t331 = getelementptr %"compiler/check:frame", ptr %t329, i32 0, i32 10
  %t332 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t331, i64 %t332)
  br label %bb48
bb48:
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l191, !tbaa !29
  %t336 = load ptr, ptr %l0, !tbaa !29
  store ptr %t336, ptr %l192, !tbaa !29
  %t337 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t337, ptr %l193
  %t338 = load ptr, ptr %l0, !tbaa !29
  store ptr %t338, ptr %l194, !tbaa !29
  %t339 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t339, ptr %l195
  %t340 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t340, ptr %l196, !tbaa !23
  store i32 15, ptr %l197
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load %"compiler/source:Span", ptr %l1
  %t343 = load i64, ptr %l19, !tbaa !24
  %t347 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t341, %"compiler/source:Span" %t342, i64 %t343)
  store ptr %t347, ptr %l201
  br label %bb49
bb49:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load %"compiler/source:Span", ptr %l1
  %t350 = load i64, ptr %l18, !tbaa !24
  %t354 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t348, %"compiler/source:Span" %t349, i64 %t350)
  store ptr %t354, ptr %l205
  br label %bb50
bb50:
  %t355 = load ptr, ptr %l205, !tbaa !29
  %t356 = load ptr, ptr %l194, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l195
  %t358 = load i32, ptr %l196, !tbaa !23
  %t359 = load i32, ptr %l197, !range !{i32 0, i32 52}
  %t360 = load ptr, ptr %l201, !tbaa !29
  %t362 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t356, %"compiler/source:Span" %t357, i32 %t358, i32 %t359, ptr %t360, ptr %t355)
  store ptr %t362, ptr %l207
  br label %bb51
bb51:
  %t363 = load i64, ptr %l22, !tbaa !24
  %t364 = load ptr, ptr %l192, !tbaa !29
  %t365 = load %"compiler/source:Span", ptr %l193
  %t366 = load ptr, ptr %l207, !tbaa !29
  %t368 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t364, %"compiler/source:Span" %t365, ptr %t366, i64 %t363)
  store ptr %t368, ptr %l209
  br label %bb52
bb52:
  %t369 = load ptr, ptr %l191, !tbaa !29
  %t370 = load ptr, ptr %l209, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t369, ptr %t370)
  br label %bb53
bb53:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load i32, ptr %l16, !tbaa !23
  %t375 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t371, i32 %t372)
  store i32 %t375, ptr %l212
  br label %bb54
bb54:
  %t376 = load i32, ptr %l212, !tbaa !23
  store i32 %t376, ptr %l25, !tbaa !23
  %t377 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t377, ptr %l213
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i32, ptr %l16, !tbaa !23
  %t382 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t378, i32 %t379)
  store i32 %t382, ptr %l216
  br label %bb55
bb55:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l1
  %t385 = load i64, ptr %l17, !tbaa !24
  %t389 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t383, %"compiler/source:Span" %t384, i64 %t385)
  store ptr %t389, ptr %l220
  br label %bb56
bb56:
  store { i64, [4 x i64] } zeroinitializer, ptr %t390
  %t391 = getelementptr { i64, [4 x i64] }, ptr %t390, i32 0, i32 0
  store i64 2, ptr %t391
  %t392 = load %"compiler/source:Span", ptr %l213
  %t393 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t392, 0
  %t394 = load i32, ptr %l216, !tbaa !23
  %t395 = insertvalue { %"compiler/source:Span", i32, ptr } %t393, i32 %t394, 1
  %t396 = load ptr, ptr %l220, !tbaa !29
  %t397 = insertvalue { %"compiler/source:Span", i32, ptr } %t395, ptr %t396, 2
  %t398 = getelementptr { i64, [4 x i64] }, ptr %t390, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t397, ptr %t398
  %t399 = load { i64, [4 x i64] }, ptr %t390
  %t401 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t399, ptr %t401
  store ptr %t401, ptr %l26, !tbaa !29
  %t403 = load ptr, ptr %l0, !tbaa !29
  store ptr %t403, ptr %l223, !tbaa !29
  %t404 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t404, ptr %l224
  %t405 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t405, ptr %l225
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr %"compiler/check:Checker", ptr %t406, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !29
  %t411 = getelementptr %"compiler/generic:Program", ptr %t409, i32 0, i32 2
  %t412 = load i32, ptr %l25, !tbaa !23
  %t415 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t411, i32 %t412)
  store i32 %t415, ptr %l230
  br label %bb57
bb57:
  %t416 = load ptr, ptr %l26, !tbaa !29
  store ptr %t416, ptr %l231, !tbaa !29
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load %"compiler/source:Span", ptr %l1
  %t419 = load i64, ptr %l19, !tbaa !24
  %t423 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t417, %"compiler/source:Span" %t418, i64 %t419)
  store ptr %t423, ptr %l235
  br label %bb58
bb58:
  %t424 = load ptr, ptr %l231, !tbaa !29
  %t425 = load ptr, ptr %l235, !tbaa !29
  %t427 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t424, ptr %t425, i32 0)
  store %"compiler/typed:Elem" %t427, ptr %l237
  br label %bb59
bb59:
  %t428 = load %"compiler/typed:Elem", ptr %l237
  %t429 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Elem" %t428, ptr %t429
  store { i64, [4 x i64] } zeroinitializer, ptr %t430
  %t431 = getelementptr { i64, [4 x i64] }, ptr %t430, i32 0, i32 0
  store i64 4, ptr %t431
  %t432 = load %"compiler/source:Span", ptr %l225
  %t433 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t432, 0
  %t434 = load i32, ptr %l230, !tbaa !23
  %t435 = insertvalue { %"compiler/source:Span", i32, ptr } %t433, i32 %t434, 1
  %t437 = insertvalue { %"compiler/source:Span", i32, ptr } %t435, ptr %t429, 2
  %t438 = getelementptr { i64, [4 x i64] }, ptr %t430, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t437, ptr %t438
  %t439 = load { i64, [4 x i64] }, ptr %t430
  %t441 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t439, ptr %t441
  %t442 = load ptr, ptr %l223, !tbaa !29
  %t443 = load %"compiler/source:Span", ptr %l224
  %t445 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t442, %"compiler/source:Span" %t443, ptr %t441)
  store ptr %t445, ptr %l241
  br label %bb60
bb60:
  %t446 = load ptr, ptr %l241, !tbaa !29
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load %"compiler/source:Span", ptr %l1
  %t449 = load ptr, ptr %l2, !tbaa !29
  %t450 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v0, ptr %t447, %"compiler/source:Span" %t448, ptr %t449, i64 %t450, ptr %t446)
  br label %bb61
bb61:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v3, ptr %t457, ptr %t458, ptr %a5, i32 %a6)
  br label %bb62
bb62:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t465)
  store ptr %t467, ptr %l253
  br label %bb63
bb63:
  %t468 = load ptr, ptr %l253, !tbaa !29
  %t470 = getelementptr %"compiler/check:frame", ptr %t468, i32 0, i32 10
  %t472 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t470)
  %t473 = extractvalue { i32, i64 } %t472, 1
  %t474 = extractvalue { i32, i64 } %t472, 0
  store i32 %t474, ptr %l257
  %t475 = icmp ne i32 %t474, 0
  br i1 %t475, label %bb65, label %ok.476, !prof !99
ok.476:
  store i64 %t473, ptr %l256
  br label %bb64
bb64:
  %t477 = load i64, ptr %l256, !tbaa !24
  store i64 %t477, ptr %l251, !tbaa !24
  br label %bb67
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t478)
  store ptr %t480, ptr %l260
  br label %bb68
bb68:
  %t481 = load ptr, ptr %l260, !tbaa !29
  %t483 = getelementptr %"compiler/check:frame", ptr %t481, i32 0, i32 11
  %t485 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t483)
  %t486 = extractvalue { i32, i64 } %t485, 1
  %t487 = extractvalue { i32, i64 } %t485, 0
  store i32 %t487, ptr %l264
  %t488 = icmp ne i32 %t487, 0
  br i1 %t488, label %bb70, label %ok.489, !prof !99
ok.489:
  store i64 %t486, ptr %l263
  br label %bb69
bb69:
  %t490 = load i64, ptr %l263, !tbaa !24
  store i64 %t490, ptr %l258, !tbaa !24
  br label %bb72
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i64, ptr %l22, !tbaa !24
  %t493 = load i64, ptr %l23, !tbaa !24
  %t494 = load i64, ptr %l24, !tbaa !24
  %t495 = load i64, ptr %l20, !tbaa !24
  %t501 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t491, i64 %t492, i64 %t493, i64 %t494, i64 %t495)
  store ptr %t501, ptr %l270
  br label %bb73
bb73:
  %t502 = load ptr, ptr %l270, !tbaa !29
  store ptr %t502, ptr %l28, !tbaa !29
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = getelementptr %"compiler/check:Checker", ptr %t503, i32 0, i32 37
  %t507 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t505)
  store i64 %t507, ptr %l273
  br label %bb74
bb74:
  %t508 = load i64, ptr %l273, !tbaa !24
  store i64 %t508, ptr %l29, !tbaa !24
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load %"compiler/source:Span", ptr %l1
  %t514 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t509, i32 3, %"compiler/source:Span" %t510)
  store { i64, i64, i64 } %t514, ptr %l277
  br label %bb75
bb75:
  %t515 = load { i64, i64, i64 }, ptr %l277
  store { i64, i64, i64 } %t515, ptr %l30
  %t516 = getelementptr { i64, i64, i64 }, ptr %l30, i32 0, i32 0
  %t517 = load i64, ptr %t516, !tbaa !24
  store i64 %t517, ptr %l31, !tbaa !24
  %t519 = getelementptr { i64, i64, i64 }, ptr %l30, i32 0, i32 1
  %t520 = load i64, ptr %t519, !tbaa !24
  store i64 %t520, ptr %l32, !tbaa !24
  %t522 = getelementptr { i64, i64, i64 }, ptr %l30, i32 0, i32 2
  %t523 = load i64, ptr %t522, !tbaa !24
  store i64 %t523, ptr %l33, !tbaa !24
  %t525 = load ptr, ptr %l0, !tbaa !29
  store ptr %t525, ptr %l281, !tbaa !29
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l282, !tbaa !29
  %t527 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t527, ptr %l283
  %t528 = load i64, ptr %l19, !tbaa !24
  store i64 %t528, ptr %l284, !tbaa !24
  %t529 = load ptr, ptr %l0, !tbaa !29
  store ptr %t529, ptr %l285, !tbaa !29
  %t530 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t530, ptr %l286
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t533 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t531)
  store i32 %t533, ptr %l288
  br label %bb76
bb76:
  %t534 = load ptr, ptr %l285, !tbaa !29
  %t535 = load %"compiler/source:Span", ptr %l286
  %t536 = load i32, ptr %l288, !tbaa !23
  %t537 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t534, %"compiler/source:Span" %t535, i32 %t536, i64 1)
  store ptr %t537, ptr %l289
  br label %bb77
bb77:
  %t538 = load ptr, ptr %l282, !tbaa !29
  %t539 = load %"compiler/source:Span", ptr %l283
  %t540 = load i64, ptr %l284, !tbaa !24
  %t541 = load ptr, ptr %l289, !tbaa !29
  %t542 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v0, ptr %v0, ptr %t538, %"compiler/source:Span" %t539, i64 %t540, ptr %t541)
  store ptr %t542, ptr %l290
  br label %bb78
bb78:
  %t543 = load ptr, ptr %l281, !tbaa !29
  %t544 = load ptr, ptr %l290, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t543, ptr %t544)
  br label %bb79
bb79:
  %t545 = load i64, ptr %l9, !tbaa !24
  %t547 = icmp sge i64 %t545, 0
  br i1 %t547, label %bb80, label %bb81
bb80:
  %t549 = load ptr, ptr %l0, !tbaa !29
  store ptr %t549, ptr %l293, !tbaa !29
  %t550 = load ptr, ptr %l0, !tbaa !29
  store ptr %t550, ptr %l294, !tbaa !29
  %t551 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t551, ptr %l295
  %t552 = load i64, ptr %l9, !tbaa !24
  store i64 %t552, ptr %l296, !tbaa !24
  %t553 = load ptr, ptr %l0, !tbaa !29
  store ptr %t553, ptr %l297, !tbaa !29
  %t554 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t554, ptr %l298
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t555)
  store i32 %t557, ptr %l300
  br label %bb82
bb81:
  br label %bb86
bb82:
  %t558 = load ptr, ptr %l297, !tbaa !29
  %t559 = load %"compiler/source:Span", ptr %l298
  %t560 = load i32, ptr %l300, !tbaa !23
  %t561 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t558, %"compiler/source:Span" %t559, i32 %t560, i64 1)
  store ptr %t561, ptr %l301
  br label %bb83
bb83:
  %t562 = load ptr, ptr %l294, !tbaa !29
  %t563 = load %"compiler/source:Span", ptr %l295
  %t564 = load i64, ptr %l296, !tbaa !24
  %t565 = load ptr, ptr %l301, !tbaa !29
  %t566 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v0, ptr %v0, ptr %t562, %"compiler/source:Span" %t563, i64 %t564, ptr %t565)
  store ptr %t566, ptr %l302
  br label %bb84
bb84:
  %t567 = load ptr, ptr %l293, !tbaa !29
  %t568 = load ptr, ptr %l302, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t567, ptr %t568)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t570 = load i64, ptr %l31, !tbaa !24
  %t571 = load i64, ptr %l32, !tbaa !24
  %t572 = load i64, ptr %l33, !tbaa !24
  %t573 = load i64, ptr %l29, !tbaa !24
  %t579 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t569, i64 %t570, i64 %t571, i64 %t572, i64 %t573)
  store ptr %t579, ptr %l308
  br label %bb87
bb87:
  %t580 = load ptr, ptr %l308, !tbaa !29
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = load %"compiler/source:Span", ptr %l1
  %t583 = load ptr, ptr %l28, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t586
  %t587 = getelementptr { i64, [3 x i64] }, ptr %t586, i32 0, i32 0
  store i64 4, ptr %t587
  %t589 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t582, 0
  %t591 = insertvalue { %"compiler/source:Span", ptr, ptr } %t589, ptr %t583, 1
  %t593 = insertvalue { %"compiler/source:Span", ptr, ptr } %t591, ptr %t580, 2
  %t594 = getelementptr { i64, [3 x i64] }, ptr %t586, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t593, ptr %t594
  %t595 = load { i64, [3 x i64] }, ptr %t586
  %t597 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t595, ptr %t597
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t581, ptr %t597)
  br label %bb88
bb88:
  %t600 = load ptr, ptr %l0, !tbaa !29
  store ptr %t600, ptr %l316, !tbaa !29
  %t601 = load ptr, ptr %l0, !tbaa !29
  store ptr %t601, ptr %l317, !tbaa !29
  %t602 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t602, ptr %l318
  %t603 = load i64, ptr %l8, !tbaa !24
  store i64 %t603, ptr %l319, !tbaa !24
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load %"compiler/source:Span", ptr %l1
  %t606 = load i64, ptr %l18, !tbaa !24
  %t610 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t604, %"compiler/source:Span" %t605, i64 %t606)
  store ptr %t610, ptr %l323
  br label %bb89
bb89:
  %t611 = load ptr, ptr %l317, !tbaa !29
  %t612 = load %"compiler/source:Span", ptr %l318
  %t613 = load i64, ptr %l319, !tbaa !24
  %t614 = load ptr, ptr %l323, !tbaa !29
  %t615 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v0, ptr %v0, ptr %t611, %"compiler/source:Span" %t612, i64 %t613, ptr %t614)
  store ptr %t615, ptr %l324
  br label %bb90
bb90:
  %t616 = load ptr, ptr %l316, !tbaa !29
  %t617 = load ptr, ptr %l324, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t616, ptr %t617)
  br label %bb91
bb91:
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t619 = load i64, ptr %l12, !tbaa !24
  %t620 = load i64, ptr %l13, !tbaa !24
  %t621 = load i64, ptr %l14, !tbaa !24
  %t622 = load i64, ptr %l10, !tbaa !24
  %t628 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t618, i64 %t619, i64 %t620, i64 %t621, i64 %t622)
  store ptr %t628, ptr %l330
  br label %bb92
bb92:
  %t629 = load ptr, ptr %l330, !tbaa !29
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t631 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t633
  %t634 = getelementptr { i64, [3 x i64] }, ptr %t633, i32 0, i32 0
  store i64 4, ptr %t634
  %t636 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t631, 0
  %t638 = insertvalue { %"compiler/source:Span", ptr, ptr } %t636, ptr %t629, 1
  %t639 = insertvalue { %"compiler/source:Span", ptr, ptr } %t638, ptr null, 2
  %t640 = getelementptr { i64, [3 x i64] }, ptr %t633, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t639, ptr %t640
  %t641 = load { i64, [3 x i64] }, ptr %t633
  %t643 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t641, ptr %t643
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t630, ptr %t643)
  br label %bb93
bb93:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalksAny(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca i32
  %l30 = alloca i32
  %l33 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l10, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t22 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %t16, i64 %t17, i32 %a2)
  store i32 %t22, ptr %l15
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l16
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l7, !tbaa !29
  %t27 = load i32, ptr %l16, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l17
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp eq i64 %t32, 0
  br i1 %t34, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t38, ptr %l23, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i32, ptr %t40, i64 0
  %t42 = load i32, ptr %t41, !tbaa !33
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t37, i32 %t42)
  store i32 %t45, ptr %l25
  br label %bb7
bb7:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %l4, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l4, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l30
  br label %bb8
bb8:
  %t57 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t59 = trunc i64 25 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb9, label %bb10
bb9:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t71, ptr %l38
  br label %bb11
bb10:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb13
bb11:
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t72)
  store i64 %t74, ptr %l40
  br label %bb12
bb12:
  %t75 = load i64, ptr %l38, !tbaa !24
  %t76 = load i64, ptr %l40, !tbaa !24
  %t77 = icmp eq i64 %t75, %t76
  store i1 %t77, ptr %l33, !tbaa !21
  br label %bb13
bb13:
  %t79 = load i1, ptr %l33, !tbaa !21
  store i1 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakMet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l17 = alloca %"compiler/diagmsg:Msg"
  %l18 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca i1
  %l26 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca { i64, ptr }
  %l35 = alloca %"compiler/diagmsg:Msg"
  %l36 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t2)
  store %"compiler/source:Span" %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l8
  %t7 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t5, %"compiler/source:Span" %t6)
  store { i64, ptr } %t7, ptr %l9
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t11 = xor i1 %a3, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l12, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t18 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakWord(ptr %v0, ptr %v1, ptr %t14, ptr %t15)
  store %"compiler/source:Span" %t18, ptr %l15
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t21 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakPlace(ptr %v0, ptr %v0, { i64, ptr } %t19)
  store %"compiler/diagmsg:Msg" %t21, ptr %l17
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l15
  %t24 = load %"compiler/diagmsg:Msg", ptr %l17
  %t25 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t22, %"compiler/source:Span" %t23, %"compiler/diagmsg:Msg" %t24)
  store i64 %t25, ptr %l18
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t31 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakTargetWhat(ptr %v0, ptr %v2, ptr %s0, ptr %t27, ptr %t28)
  store { i64, ptr } %t31, ptr %l22
  br label %bb9
bb9:
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t35, ptr %l24
  br label %bb10
bb10:
  %t36 = load i1, ptr %l24, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l26, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t43 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakWord(ptr %v0, ptr %v1, ptr %t39, ptr %t40)
  store %"compiler/source:Span" %t43, ptr %l29
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l30, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t45)
  store %"compiler/source:Span" %t47, ptr %l32
  br label %bb15
bb15:
  %t48 = load ptr, ptr %l30, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l32
  %t50 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t48, %"compiler/source:Span" %t49)
  store { i64, ptr } %t50, ptr %l33
  br label %bb16
bb16:
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakTarget(ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t52, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l35
  br label %bb17
bb17:
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load %"compiler/source:Span", ptr %l29
  %t57 = load %"compiler/diagmsg:Msg", ptr %l35
  %t58 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t55, %"compiler/source:Span" %t56, %"compiler/diagmsg:Msg" %t57)
  store i64 %t58, ptr %l36
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteBackNoNumber(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l28 = alloca i64
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca i64
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l51 = alloca i64
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca i64
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l66 = alloca { i64, ptr }
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca i64
  %l71 = alloca i32
  %l74 = alloca i1
  %l75 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca i64
  %l88 = alloca i64
  %l89 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l97 = alloca i32
  %l100 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca %"compiler/source:Span"
  %l104 = alloca i32
  %l111 = alloca ptr
  %l113 = alloca ptr
  %l117 = alloca ptr
  %l118 = alloca %"compiler/source:Span"
  %l121 = alloca { i64, ptr }
  %l126 = alloca %"compiler/diagmsg:Msg"
  %l127 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t253 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t3 = trunc i64 81 to i32
  %t4 = icmp eq i32 %t1, %t3
  store i1 %t4, ptr %l6, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t6, ptr %l13, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l14, !tbaa !24
  %t9 = load i64, ptr %l14, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l15, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l14, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t20, ptr %l7, !tbaa !27
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  br i1 %t23, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l20
  br label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s6
  %t30 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t32 = call i32 @compiler_2fcheck_2ecompoundOp(i32 %t30)
  store i32 %t32, ptr %l71
  br label %bb37
bb3:
  %t33 = load i1, ptr %l20, !tbaa !21
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t34 = load i1, ptr %l6, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb5:
  br label %bb29
bb6:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  br label %bb8
bb8:
  %t40 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  %t42 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l28, !tbaa !24
  %t45 = load i64, ptr %l28, !tbaa !24
  %t46 = icmp eq i64 %t41, %t45
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l28, !tbaa !24
  %t53 = mul i64 %t52, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t49, ptr %t51, i64 %t53, i1 false)
  br label %bb11
bb10:
  %t54 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l30, !tbaa !24
  %t56 = load i64, ptr %l30, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l31, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l30, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t67, ptr %l7, !tbaa !27
  br label %bb11
bb11:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l3, !tbaa !23
  %t70 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t74 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t68, i32 %t69, { i64, ptr } %t70, i64 0)
  store i64 %t74, ptr %l35
  br label %bb12
bb12:
  %t75 = load i64, ptr %l35, !tbaa !24
  %t76 = icmp slt i64 %t75, 0
  br i1 %t76, label %bb13, label %bb14
bb13:
  %t78 = load i1, ptr %l6, !tbaa !21
  br i1 %t78, label %bb15, label %bb16
bb14:
  br label %bb28
bb15:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t80, ptr %l38, !tbaa !27
  br label %bb17
bb16:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t82, ptr %l38, !tbaa !27
  br label %bb17
bb17:
  %t84 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t86 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  store i64 %t87, ptr %l44, !tbaa !24
  %t89 = load i64, ptr %l44, !tbaa !24
  %t90 = icmp eq i64 %t85, %t89
  br i1 %t90, label %bb18, label %bb19
bb18:
  %t92 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l44, !tbaa !24
  %t97 = mul i64 %t96, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t93, ptr %t95, i64 %t97, i1 false)
  br label %bb20
bb19:
  %t98 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l46, !tbaa !24
  %t100 = load i64, ptr %l46, !tbaa !24
  %t101 = mul i64 %t100, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l47, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l46, !tbaa !24
  %t110 = mul i64 %t109, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t106, ptr %t108, i64 %t110, i1 false)
  %t111 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t111, ptr %l7, !tbaa !27
  br label %bb20
bb20:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l3, !tbaa !23
  %t114 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t112, i32 %t113, { i64, ptr } %t114, i64 1)
  store i64 %t118, ptr %l51
  br label %bb21
bb21:
  %t119 = load i64, ptr %l51, !tbaa !24
  %t120 = icmp slt i64 %t119, 0
  br i1 %t120, label %bb22, label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l53, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t122, ptr %l54, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  %t125 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  store i64 %t126, ptr %l56, !tbaa !24
  %t128 = load i64, ptr %l56, !tbaa !24
  %t129 = icmp eq i64 %t124, %t128
  br i1 %t129, label %bb24, label %bb25
bb23:
  br label %bb27
bb24:
  %t131 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = load i64, ptr %l56, !tbaa !24
  %t136 = mul i64 %t135, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t132, ptr %t134, i64 %t136, i1 false)
  br label %bb26
bb25:
  %t137 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  store i64 %t138, ptr %l58, !tbaa !24
  %t139 = load i64, ptr %l58, !tbaa !24
  %t140 = mul i64 %t139, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t140)
  %t142 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  store { i64, ptr } %t143, ptr %l59, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = load i64, ptr %l58, !tbaa !24
  %t149 = mul i64 %t148, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t145, ptr %t147, i64 %t149, i1 false)
  %t150 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t150, ptr %l7, !tbaa !27
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t151 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t153 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s1, { i64, ptr } %t151, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t153, ptr %l61
  br label %bb30
bb30:
  %t154 = load i1, ptr %l61, !tbaa !21
  br i1 %t154, label %bb31, label %bb32
bb31:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l62, !tbaa !29
  %t156 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t156, ptr %l63
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i32, ptr %l3, !tbaa !23
  %t161 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t157, i32 %t158)
  store { i64, ptr } %t161, ptr %l66
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t162 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 0
  %t164 = extractvalue { i64, ptr } %t162, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t170 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStepNotNumber(ptr %v0, ptr %v0, { i64, ptr } %t168)
  store %"compiler/diagmsg:Msg" %t170, ptr %l68
  br label %bb34
bb34:
  %t171 = load ptr, ptr %l62, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l63
  %t173 = load %"compiler/diagmsg:Msg", ptr %l68
  %t174 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t171, %"compiler/source:Span" %t172, %"compiler/diagmsg:Msg" %t173)
  store i64 %t174, ptr %l69
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb36:
  call void @__olang_scope_close(ptr %s1)
  br label %bb62
bb37:
  %t175 = load i32, ptr %l71, !range !{i32 0, i32 114}
  store i32 %t175, ptr %l8
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l3, !tbaa !23
  %t180 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t176, i32 %t177)
  store i1 %t180, ptr %l74
  br label %bb38
bb38:
  %t181 = load i1, ptr %l74, !tbaa !21
  br i1 %t181, label %bb39, label %bb40
bb39:
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l76, !tbaa !29
  %t183 = load i32, ptr %l3, !tbaa !23
  store i32 %t183, ptr %l77, !tbaa !23
  %t184 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t186 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s6, i32 %t184)
  store { i64, ptr } %t186, ptr %l79
  br label %bb41
bb40:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb43
bb41:
  %t187 = load ptr, ptr %l76, !tbaa !29
  %t188 = load i32, ptr %l77, !tbaa !23
  %t189 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t190 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s6, ptr %t187, i32 %t188, { i64, ptr } %t189, i64 1)
  store i64 %t190, ptr %l80
  br label %bb42
bb42:
  %t191 = load i64, ptr %l80, !tbaa !24
  %t192 = icmp sge i64 %t191, 0
  store i1 %t192, ptr %l75, !tbaa !21
  br label %bb43
bb43:
  %t194 = load i1, ptr %l75, !tbaa !21
  br i1 %t194, label %bb44, label %bb45
bb44:
  %t195 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t197 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s0, i32 %t195)
  store { i64, ptr } %t197, ptr %l83
  br label %bb46
bb45:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l4, !tbaa !29
  %t201 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t205 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t198, ptr %t199, i32 %t201)
  store ptr %t205, ptr %l94
  br label %bb50
bb46:
  %t206 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t206, ptr %l84, !tbaa !27
  %t207 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 0
  %t209 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l86, !tbaa !24
  %t212 = load i64, ptr %l86, !tbaa !24
  %t213 = icmp eq i64 %t208, %t212
  br i1 %t213, label %bb47, label %bb48
bb47:
  %t215 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = load i64, ptr %l86, !tbaa !24
  %t220 = mul i64 %t219, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t216, ptr %t218, i64 %t220, i1 false)
  br label %bb49
bb48:
  %t221 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  store i64 %t222, ptr %l88, !tbaa !24
  %t223 = load i64, ptr %l88, !tbaa !24
  %t224 = mul i64 %t223, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t224)
  %t226 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  store { i64, ptr } %t227, ptr %l89, !tbaa !27
  %t228 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = load i64, ptr %l88, !tbaa !24
  %t233 = mul i64 %t232, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t229, ptr %t231, i64 %t233, i1 false)
  %t234 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t234, ptr %l7, !tbaa !27
  br label %bb49
bb49:
  br label %bb61
bb50:
  %t235 = load ptr, ptr %l94, !tbaa !29
  store ptr %t235, ptr %l9, !tbaa !29
  %t236 = load ptr, ptr %l9, !tbaa !29
  %t239 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t236)
  store i32 %t239, ptr %l97
  br label %bb51
bb51:
  %t240 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t241 = load i32, ptr %l97, !tbaa !23
  %t243 = icmp ne i32 %t241, %t240
  br i1 %t243, label %bb52, label %bb53
bb52:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l101, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t246, ptr %l102
  %t247 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t247, ptr %l103
  %t248 = load i32, ptr %l8, !range !{i32 0, i32 114}
  store i32 %t248, ptr %l104
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load %"compiler/source:Span", ptr %l1
  %t251 = load %"compiler/source:Span", ptr %l1
  %t252 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t253, i32 0, i32 0
  store i64 7, ptr %t254
  %t256 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t251, 0
  %t258 = insertvalue { %"compiler/source:Span", i32 } %t256, i32 %t252, 1
  %t259 = getelementptr { i64, [4 x i64] }, ptr %t253, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t258, ptr %t259
  %t260 = load { i64, [4 x i64] }, ptr %t253
  %t262 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t260, ptr %t262
  %t266 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t249, %"compiler/source:Span" %t250, ptr %t262)
  store ptr %t266, ptr %l111
  br label %bb54
bb53:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb56
bb54:
  %t267 = load ptr, ptr %l9, !tbaa !29
  %t268 = load ptr, ptr %l101, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l102
  %t270 = load %"compiler/source:Span", ptr %l103
  %t271 = load i32, ptr %l104, !range !{i32 0, i32 114}
  %t272 = load ptr, ptr %l111, !tbaa !29
  %t274 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t268, %"compiler/source:Span" %t269, %"compiler/source:Span" %t270, i32 %t271, ptr %t272, ptr %t267)
  store ptr %t274, ptr %l113
  br label %bb55
bb55:
  %t275 = load ptr, ptr %l113, !tbaa !29
  %t276 = icmp eq ptr %t275, null
  store i1 %t276, ptr %l100, !tbaa !21
  br label %bb56
bb56:
  %t278 = load i1, ptr %l100, !tbaa !21
  br i1 %t278, label %bb57, label %bb58
bb57:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t279, %"compiler/source:Span" %t280, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb61:
  call void @__olang_scope_close(ptr %s6)
  br label %bb62
bb62:
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l117, !tbaa !29
  %t284 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t284, ptr %l118
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load i32, ptr %l3, !tbaa !23
  %t289 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t285, i32 %t286)
  store { i64, ptr } %t289, ptr %l121
  br label %bb63
bb63:
  %t290 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t290, 0
  %t292 = extractvalue { i64, ptr } %t290, 1
  %t293 = mul i64 %t291, 1
  %t294 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t293)
  call void @llvm.memcpy.p0.p0.i64(ptr %t294, ptr %t292, i64 %t293, i1 false)
  %t295 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t294, 1
  %t297 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t298 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t299 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t301 = extractvalue { i64, ptr } %t297, 1
  %t302 = extractvalue { i64, ptr } %t297, 0
  %t303 = add i64 %t299, %t302
  %t304 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t307 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t306)
  call void @olang_textcopy(ptr %t307, ptr %t298, i64 %t299)
  %t308 = getelementptr i8, ptr %t307, i64 %t299
  call void @olang_textcopy(ptr %t308, ptr %t301, i64 %t302)
  %t309 = getelementptr i8, ptr %t308, i64 %t302
  call void @olang_textcopy(ptr %t309, ptr %t304, i64 %t305)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t307, 1
  %t313 = extractvalue { i64, ptr } %t311, 0
  %t314 = extractvalue { i64, ptr } %t311, 1
  %t315 = mul i64 %t313, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t316, ptr %t314, i64 %t315, i1 false)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  %t321 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtOperator(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t296, { i64, ptr } %t318)
  store %"compiler/diagmsg:Msg" %t321, ptr %l126
  br label %bb64
bb64:
  %t322 = load ptr, ptr %l117, !tbaa !29
  %t323 = load %"compiler/source:Span", ptr %l118
  %t324 = load %"compiler/diagmsg:Msg", ptr %l126
  %t325 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t322, %"compiler/source:Span" %t323, %"compiler/diagmsg:Msg" %t324)
  store i64 %t325, ptr %l127
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenRefOrVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l16 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i32
  %l28 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i32 %t26, ptr %l16
  br label %bb9
bb9:
  %t27 = load i32, ptr %l16, !tbaa !23
  store i32 %t27, ptr %l3, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l19
  br label %bb10
bb10:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb14
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l25
  br label %bb13
bb13:
  %t44 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t46 = trunc i64 25 to i32
  %t47 = icmp eq i32 %t44, %t46
  store i1 %t47, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l20, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb17
bb16:
  %t50 = load i32, ptr %l3, !tbaa !23
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t54 = icmp eq i32 %t50, %t51
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l28, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_712f9e4ca30bc6cb_a93275977373a857)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eintOnly(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 101 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 102 to i32
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
  %t14 = trunc i64 103 to i32
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
  %t20 = trunc i64 73 to i32
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
  %t26 = trunc i64 106 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t32 = trunc i64 107 to i32
  %t33 = icmp eq i32 %t30, %t32
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisBind(ptr %v0, ptr %a0) #0 {
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
  %t8 = icmp eq i64 %t6, 3
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
  call void @__olang_check_failed(ptr @olang_loc_a4a9e3d1ce4f287a_3905f5d0b0eda75e)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @compiler_2fcheck_2elimitIndex(ptr %v0, { i64, ptr } %a0)
  store i64 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2erebased(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l25 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %rv = alloca ptr
  %t42 = alloca { i64, [4 x i64] }, align 8
  %t81 = alloca { i64, [4 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 3
  %t32 = load i64, ptr %t31
  store i64 %t32, ptr %l5, !tbaa !24
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t34 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t34, ptr %l21
  %t35 = load i32, ptr %l3, !tbaa !23
  store i32 %t35, ptr %l22, !tbaa !23
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t40 = call ptr @compiler_2fcheck_2erebased(ptr %v0, ptr %v1, ptr %v0, ptr %t36, ptr %t37)
  store ptr %t40, ptr %l25
  br label %bb6
bb6:
  %t41 = load i64, ptr %l5, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t42
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 0
  store i64 3, ptr %t43
  %t44 = load %"compiler/source:Span", ptr %l21
  %t45 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t44, 0
  %t46 = load i32, ptr %l22, !tbaa !23
  %t47 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t45, i32 %t46, 1
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t49 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t47, ptr %t48, 2
  %t51 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t49, i64 %t41, 3
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t51, ptr %t52
  %t53 = load { i64, [4 x i64] }, ptr %t42
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t53, ptr %t55
  store ptr %t55, ptr %l8, !tbaa !29
  br label %bb18
bb7:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t58 = load ptr, ptr %l29, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb8, label %bb9
bb8:
  %t61 = load ptr, ptr %l29, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 8}
  %t64 = icmp eq i64 %t62, 6
  store i1 %t64, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t65 = load i1, ptr %l30, !tbaa !21
  br i1 %t65, label %bb10, label %bb11
bb10:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t68, i32 0, i32 0
  %t70 = load %"compiler/source:Span", ptr %t69
  store %"compiler/source:Span" %t70, ptr %l6
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t74, i32 0, i32 1
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l7, !tbaa !23
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t78 = load %"compiler/source:Span", ptr %l6
  %t79 = load i32, ptr %l7, !tbaa !23
  %t80 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 0
  store i64 2, ptr %t82
  %t84 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t78, 0
  %t86 = insertvalue { %"compiler/source:Span", i32, ptr } %t84, i32 %t79, 1
  %t88 = insertvalue { %"compiler/source:Span", i32, ptr } %t86, ptr %t80, 2
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t88, ptr %t89
  %t90 = load { i64, [4 x i64] }, ptr %t81
  %t92 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t90, ptr %t92
  store ptr %t92, ptr %l8, !tbaa !29
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l8, !tbaa !29
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_241a90e95a4894c9_a3a560eaba438c2d)
  unreachable
bb18:
  %t96 = load ptr, ptr %l8, !tbaa !29
  store ptr %t96, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@__olang_empty_array = external constant [16 x i64]
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"a type of this kind called" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
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
@olang_2esole_2ecompiler_2fcheck_3ainPlaceRead_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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

@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Some" }>, align 8
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Every" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"()'" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Sum" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Some" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Every" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Some" }>, align 8
@.d12 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"std/prelude/array" }>, align 8
@.d13 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ArrayError" }>, align 8
@.d14 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Empty" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d16 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"a match on a type leaving from its chosen case (G15)" }>, align 8
@.d17 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"a match on a length leaving from its chosen case (G30)" }>, align 8
@.d18 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"an unreachable's" }>, align 8
@.d19 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"an assert's" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
define internal i1 @olang_lambda_21(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
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

@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d26 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a reference" }>, align 8
@.d27 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a unique value" }>, align 8
@.d28 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a value with destructors to run" }>, align 8
@.d29 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"a function value" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e1 = weak hidden constant i1 false
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

declare ptr @__olang_scope_of(ptr, ptr) noinline
@olang_2esole_2ecompiler_2fcheck_3arawTable_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3arawTable_2e3 = weak hidden constant i1 false
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"From" }>, align 8
@olang_2esole_2eArray_3cArray_3cU8_3e_26_3e_2e_2d1 = weak hidden constant i1 false
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cU8_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cU8_3e({ i64, ptr } %t2, { i64, ptr } %t4)
  store i1 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i1, ptr %l6, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d33 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"18446744073709551616" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"$" }>, align 8
@olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1 = weak hidden constant i1 false
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Inc" }>, align 8
@.d46 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Dec" }>, align 8
@.d47 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d48 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Minus" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"a compound assignment to what has no operator method (E31)" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cU8_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l6 = alloca i64
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 0
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb7
bb2:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t13
  %t17 = load i8, ptr %t16, !tbaa !32
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t18
  %t22 = load i8, ptr %t21, !tbaa !32
  %t25 = icmp eq i8 %t17, %t22
  br i1 %t25, label %bb6, label %bb1
bb5:
  br label %bb7
bb6:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = add i64 %t27, 1
  store i64 %t28, ptr %l6, !tbaa !24
  br label %bb3
bb7:
  %t29 = load i1, ptr %l2, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_loc_b418a15f1455a8e1_40cdd11b1c753e15 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %v0, i32 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, %"compiler/typed:Item" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
@olang_loc_514ceade83978a4d_1843f44cd2570191 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8bbd92ac148fb220_5a9ba8c1b178084 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eSetAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5, ptr %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eTrunca_Hdac151ce4e73ec212dc55b02b0b7e7d0(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecommutative(i32 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignBuilt(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etwinCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_77e9ca8727c07af9_ddc1fd4e636ee49d = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadOver(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etoDeclaredFunc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_5759851fa91ce76c_a0f65aa07f0891f0 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaidAlike(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHasNoConstructor(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleRaised(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_66d3d1d20fd502cf_cd668d3b10c2a493 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunadapted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
@olang_loc_55099d59d3c2415d_7883b81e4d83cfd9 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderFactInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_c361d907896d08d5_2eb86c98dc279551 = external constant [0 x i8]
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldOffset(ptr %v0, ptr %a0, %"compiler/generic:Desc" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6)
@olang_loc_887bfd43d66eb550_32ec45221345c514 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
@olang_loc_ca4f5f5b23e45e3_6d800cc55c15839f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatColls(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/check:collWalk" @compiler_2fcheck_3acollWalk_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2ereaches(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_5aa7d4de030be559_fd07d6902576424d = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatIndices(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceCopied(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceBodies(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/check:inPlaceRead" @compiler_2fcheck_3ainPlaceRead_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i64 %a2, %"compiler/source:Span" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2ePu_H042bb738a6b40c55f43b8576e2e1347e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:inPlaceRead" %a1)
declare ptr @compiler_2fcheck_2epastAway(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2d42dd0dd97e7bd9_d37ae78aca20ab55 = external constant [0 x i8]
@olang_loc_63e5c37ccccdf7af_ebbfa2ab6c880643 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldFirst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_4a75f471ea948b24_16ed41ec7c1e5db8 = external constant [0 x i8]
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneMaskBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneCount(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2, i1 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtMatchValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchOnType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindCase(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunbindCase(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elenMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueNone(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3, i32 %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d0f72ce45fbcaa4b_31766cde14dc3f8f = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_108bcd44a7d76d1e_c10b21813ea4a0da = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %a0)
@olang_loc_8ba315a61b976e68_980c0dda48bb0a1c = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecurInst(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorInstance(ptr %v0, ptr %a0)
declare %"compiler/generic:Origin" @compiler_2fgeneric_3aOrigin_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4e588e9eb703ca58_549acb49cdd076c4 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eLe_Hf8109b64a4e45220d0da36a987cf38b1(ptr %v0, ptr %a0)
declare %"compiler/check:payloadItem" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eAt_H64f851f610dd8566f1d7651b626ec99d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ef67712bb7c765b2_469536f01dc7df7e = external constant [0 x i8]
@olang_loc_e0afa9bfb34681a7_a7ad1d10060634b3 = external constant [0 x i8]
declare %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_fdd9c5eb69dbaaab_bc593bef1c0c73cf = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eToArray_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2efieldNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadWordBare(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_97f728d69fa9714_fb4d660b7b54b10 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadArgs(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraisedArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/source:Span" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedAt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedSettled(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleBy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eRemove_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ff4549fd04ada907_b78a4102fd7994db = external constant [0 x i8]
declare %"compiler/check:rawTable" @compiler_2fcheck_3arawTable_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i1 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@olang_loc_674ca34a4d5f8d72_a138681dd06a86e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawWithoutType(ptr %v0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawType(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_5479af00bceefeb1_f5b0eb753f441165 = external constant [0 x i8]
@olang_loc_4e17f4aa3948dea4_42025b20baf190f8 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %a0)
@olang_loc_15162faa0a6b8e7b_16d808b76471f267 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseNameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromCaseName(ptr %v0)
@olang_loc_c9b25feecc9d128e_1218ffeebcd03452 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2etextBytes(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7a0bf9c228cd53f_3b674c8d006cd93 = external constant [0 x i8]
declare { i32, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNotLiteral(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawRepeated(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
declare %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eaddMag(i1 %a0, i128 %a1, i1 %a2, i128 %a3)
@olang_loc_bdfafd86356a320_3271504b736459c4 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2enumberLitsOnly(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eisCharLit(ptr %v0, ptr %a0)
@olang_loc_cf3f79d848e44ed1_488edda033e9ba8d = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNoFit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2elitText(ptr %v0, %"compiler/check:litv" %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPatOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3, i1 %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetElsewhere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetUnknownMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetUnknown(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H2c4b9eb360b9a0ada2008890a467b28d(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_b692ddd8e2182d13_c763079e5a61942f = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnspread(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexhaustedOrBreak(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, ptr %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakPlace(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakTargetWhat(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakTarget(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompoundOp(i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStepNotNumber(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtOperator(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_712f9e4ca30bc6cb_a93275977373a857 = external constant [0 x i8]
@olang_loc_a4a9e3d1ce4f287a_3905f5d0b0eda75e = external constant [0 x i8]
declare i64 @compiler_2fcheck_2elimitIndex(ptr %v0, { i64, ptr } %a0)
@olang_loc_241a90e95a4894c9_a3a560eaba438c2d = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)

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
