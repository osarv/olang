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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/check:errBind" = type { i32, i64, i32, %"compiler/source:Span" }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:ValueAsk" = type { i32, i64, %"compiler/source:Span", i32, i64, { i64, [3 x i64] }, i1, { i64, [3 x i64] } }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/check:unsetCand" = type { i64, i64, i64, i1, i64, %"compiler/source:Span", i32, i1 }
define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatColls(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v1, ptr %t5, ptr %a1)
  store { i64, ptr } %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = icmp eq i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %lp2
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %lp2
  store ptr %t21, ptr %l17, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l19, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 0
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t30 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t27)
  store i32 %t30, ptr %l22
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l18, !tbaa !29
  %t32 = load i32, ptr %l22, !tbaa !23
  %t33 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t33, ptr %l23
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load i32, ptr %l23, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t34, i32 %t35)
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l25, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 0
  %t41 = load ptr, ptr %t40, !tbaa !39
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v1, ptr %v1, ptr %t36, ptr %t41)
  store ptr %t44, ptr %l27
  br label %bb9
bb9:
  %t45 = load ptr, ptr %l27, !tbaa !29
  store ptr %t45, ptr %l4, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatColls(ptr %v0, ptr %v1, ptr %s3, ptr %t52, ptr %t53)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l33
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t58 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %t58
  store ptr %t58, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l6, !tbaa !24
  store i64 %t60, ptr %l35, !tbaa !24
  %t61 = load ptr, ptr %l5, !tbaa !29
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %t61)
  store i64 %t63, ptr %l37
  br label %bb14
bb14:
  %t64 = load i64, ptr %l35, !tbaa !24
  %t65 = load i64, ptr %l37, !tbaa !24
  %t66 = icmp slt i64 %t64, %t65
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  br label %bb21
bb16:
  br label %bb17
bb17:
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %t70, i64 %t71)
  store i32 %t74, ptr %l42
  br label %bb18
bb18:
  %t75 = load i32, ptr %l42, !tbaa !23
  %t76 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t76, i32 %t75)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb13
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t84 = load ptr, ptr %lp2
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v1, ptr %a0, i1 %a1, %"compiler/source:Span" %a2, ptr %a3) #0 {
entry:
  %l9 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a1, label %bb1, label %bb2
bb1:
  %t7 = load %"compiler/diagmsg:Msg", ptr %a3
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a2, %"compiler/diagmsg:Msg" %t7)
  store i64 %t11, ptr %l9
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyKey(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l17 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l27 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l28 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l9, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l2
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i64 }, ptr %t18, i32 0, i32 0
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t22, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t24, ptr %l17
  br label %bb5
bb5:
  %t25 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t25, ptr %l12
  br label %bb17
bb6:
  %t26 = load { i64, [2 x i64] }, ptr %l2
  %t28 = extractvalue { i64, [2 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 1
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t32 = getelementptr { i32, i32 }, ptr %t31, i32 0, i32 0
  %t33 = load i32, ptr %t32
  store i32 %t33, ptr %l4, !tbaa !23
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t36 = getelementptr { i32, i32 }, ptr %t35, i32 0, i32 1
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %l5, !tbaa !23
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t39 = load i32, ptr %l4, !tbaa !23
  %t41 = sext i32 %t39 to i64
  %t43 = sub i64 -2, %t41
  %t44 = load i32, ptr %l5, !tbaa !23
  %t46 = sext i32 %t44 to i64
  %t49 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t43, i64 %t46)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t49, ptr %l27
  br label %bb10
bb10:
  %t50 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l27
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t50, ptr %l12
  br label %bb17
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t51 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 -1, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t51, ptr %l28
  br label %bb15
bb15:
  %t52 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l28
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t52, ptr %l12
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_f6343df54e321530_17a07bfc25de31ec)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t53, ptr %rv
  br label %ret
ret:
  %rr = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %rv
  ret %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebufferField(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l14 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca i1
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t24 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l14, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t28)
  store i32 %t30, ptr %l16
  br label %bb6
bb6:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t32 = load ptr, ptr %l14, !tbaa !29
  %t33 = load i32, ptr %l16, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFieldHolds(ptr %v0, ptr %t32, i32 %t33, i32 %t31)
  store i1 %t35, ptr %l18
  br label %bb7
bb7:
  %t36 = load i1, ptr %l18, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %rv
  br label %ret
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_656971ecbb067a73_942081a116b7a267)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderRules(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l24 = alloca i64
  %l28 = alloca i32
  %l38 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca i32
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i1
  %l57 = alloca i32
  %l62 = alloca i32
  %l68 = alloca i1
  %l72 = alloca i1
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l91 = alloca %"compiler/source:Span"
  %l94 = alloca { i64, ptr }
  %l97 = alloca %"compiler/diagmsg:Msg"
  %l98 = alloca i64
  %l110 = alloca { i64, ptr }
  %l115 = alloca ptr
  %l120 = alloca i32
  %l121 = alloca { i64, ptr }
  %l126 = alloca i1
  %l128 = alloca { i64, ptr }
  %l132 = alloca i1
  %l133 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l138 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l144 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca i64
  %l153 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l161 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %l175 = alloca i64
  %l178 = alloca ptr
  %l179 = alloca %"compiler/source:Span"
  %l182 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l189 = alloca %"compiler/diagmsg:Msg"
  %l190 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
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
  store ptr %t8, ptr %l20
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l20, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l24, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t22, i64 %t23)
  store i32 %t26, ptr %l28
  br label %bb3
bb3:
  %t27 = load i32, ptr %l28, !tbaa !23
  store i32 %t27, ptr %l4, !tbaa !23
  %t28 = load i32, ptr %l4, !tbaa !23
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = icmp eq i32 %t28, %t29
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebareOwner(ptr %v0, ptr %t34, i64 %t35, i64 %t36)
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t46 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t40, i64 -1, i64 %t41, i32 %t42, i32 0)
  store ptr %t46, ptr %l38
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t51 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t47, ptr %t48)
  store %"compiler/source:Span" %t51, ptr %l41
  br label %bb9
bb9:
  %t52 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t52, ptr %l5
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l42, !tbaa !29
  %t54 = load i64, ptr %l1, !tbaa !24
  store i64 %t54, ptr %l43, !tbaa !24
  %t55 = load i32, ptr %l4, !tbaa !23
  store i32 %t55, ptr %l44, !tbaa !23
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Func", ptr %t56, i32 0, i32 9
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  br i1 %t61, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_69849388ef8c3582_e74200ba7d497546)
  unreachable
bb11:
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Func", ptr %t63, i32 0, i32 9
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t66)
  store %"compiler/source:Span" %t68, ptr %l50
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l42, !tbaa !29
  %t70 = load i64, ptr %l43, !tbaa !24
  %t71 = load i32, ptr %l44, !tbaa !23
  %t72 = load %"compiler/source:Span", ptr %l50
  %t73 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderOwnerOk(ptr %v0, ptr %t69, i64 %t70, i32 %t71, %"compiler/source:Span" %t72)
  store i1 %t73, ptr %l51
  br label %bb14
bb14:
  %t74 = load i1, ptr %l51, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t77)
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i64, ptr %l1, !tbaa !24
  %t86 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t82, i64 %t83)
  store i32 %t86, ptr %l57
  br label %bb19
bb19:
  %t87 = load i32, ptr %l57, !tbaa !23
  store i32 %t87, ptr %l6, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l6, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l62
  br label %bb20
bb20:
  %t98 = load i32, ptr %l62, !tbaa !23
  store i32 %t98, ptr %l7, !tbaa !23
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Func", ptr %t99, i32 0, i32 3
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/ast:Sig", ptr %t102, i32 0, i32 1
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t109 = icmp ne i64 %t107, 1
  br i1 %t109, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb24
bb22:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l7, !tbaa !23
  %t113 = load i32, ptr %l4, !tbaa !23
  %t117 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emakesOwner(ptr %v0, ptr %t111, i32 %t112, i32 %t113)
  store i1 %t117, ptr %l72
  br label %bb23
bb23:
  %t118 = load i1, ptr %l72, !tbaa !21
  %t119 = xor i1 %t118, true
  store i1 %t119, ptr %l68, !tbaa !21
  br label %bb24
bb24:
  %t121 = load i1, ptr %l68, !tbaa !21
  br i1 %t121, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t122 = load ptr, ptr %l2, !tbaa !29
  %t124 = getelementptr %"compiler/ast:Func", ptr %t122, i32 0, i32 3
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/ast:Sig", ptr %t125, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t132 = icmp eq i64 %t130, 1
  br i1 %t132, label %bb27, label %bb28
bb26:
  br label %bb38
bb27:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l7, !tbaa !23
  %t138 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t134, i32 %t135)
  store { i64, ptr } %t138, ptr %l82
  br label %bb29
bb28:
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t141 = getelementptr %"compiler/ast:Func", ptr %t139, i32 0, i32 3
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/ast:Sig", ptr %t142, i32 0, i32 1
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t149 = icmp eq i64 %t147, 0
  br i1 %t149, label %bb30, label %bb31
bb29:
  %t151 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t151, 0
  %t153 = extractvalue { i64, ptr } %t151, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  store { i64, ptr } %t157, ptr %l79, !tbaa !27
  br label %bb33
bb30:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l89, !tbaa !27
  br label %bb32
bb31:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l89, !tbaa !27
  br label %bb32
bb32:
  %t159 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t159, ptr %l79, !tbaa !27
  br label %bb33
bb33:
  %t160 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t160, ptr %l8, !tbaa !27
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l90, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t162, ptr %l91
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l4, !tbaa !23
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t163, i32 %t164)
  store { i64, ptr } %t167, ptr %l94
  br label %bb34
bb34:
  %t168 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t178 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderResult(ptr %v0, ptr %s4, ptr %v0, { i64, ptr } %t174, { i64, ptr } %t175)
  store %"compiler/diagmsg:Msg" %t178, ptr %l97
  br label %bb35
bb35:
  %t179 = load ptr, ptr %l90, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l91
  %t181 = load %"compiler/diagmsg:Msg", ptr %l97
  %t182 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t179, %"compiler/source:Span" %t180, %"compiler/diagmsg:Msg" %t181)
  store i64 %t182, ptr %l98
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s4)
  %t183 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t183)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb38:
  %t185 = load ptr, ptr %l2, !tbaa !29
  %t187 = getelementptr %"compiler/ast:Func", ptr %t185, i32 0, i32 3
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/ast:Sig", ptr %t188, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t193, 0
  store i64 %t195, ptr %l11, !tbaa !24
  br label %bb39
bb39:
  %t197 = load i64, ptr %l10, !tbaa !24
  %t198 = load i64, ptr %l11, !tbaa !24
  %t201 = icmp slt i64 %t197, %t198
  %t203 = xor i1 %t201, true
  br i1 %t203, label %bb40, label %bb41
bb40:
  br label %bb58
bb41:
  br label %bb42
bb42:
  %t205 = load i64, ptr %l10, !tbaa !24
  store i64 %t205, ptr %l12, !tbaa !24
  %t207 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t207, ptr %l110, !tbaa !27
  %t208 = load i64, ptr %l10, !tbaa !24
  %t210 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr ptr, ptr %t211, i64 %t208
  %t213 = load ptr, ptr %t212, !tbaa !39
  store ptr %t213, ptr %l13, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 2
  store ptr %t220, ptr %l115, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/check:Checker", ptr %t221, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %l6, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l120
  br label %bb43
bb43:
  %t231 = load ptr, ptr %l115, !tbaa !29
  %t232 = load i32, ptr %l120, !tbaa !23
  %t233 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t231, i32 %t232)
  store { i64, ptr } %t233, ptr %l121
  br label %bb44
bb44:
  %t234 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t234, ptr %l14, !tbaa !27
  %t235 = load i64, ptr %l12, !tbaa !24
  %t236 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t241 = icmp slt i64 %t235, %t238
  br i1 %t241, label %bb45, label %bb46
bb45:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t244, ptr %l128, !tbaa !27
  %t245 = load i64, ptr %l12, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i32, ptr %t248, i64 %t245
  %t250 = load i32, ptr %t249, !tbaa !33
  %t251 = load i32, ptr %l4, !tbaa !23
  %t255 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t243, i32 %t250, i32 %t251, i64 0)
  store i1 %t255, ptr %l132
  br label %bb47
bb46:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb48
bb47:
  %t256 = load i1, ptr %l132, !tbaa !21
  store i1 %t256, ptr %l126, !tbaa !21
  br label %bb48
bb48:
  %t257 = load i1, ptr %l126, !tbaa !21
  br i1 %t257, label %bb49, label %bb50
bb49:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l133, !tbaa !29
  %t259 = load ptr, ptr %l13, !tbaa !29
  %t261 = getelementptr %"compiler/ast:Param", ptr %t259, i32 0, i32 0
  %t262 = load %"compiler/source:Span", ptr %t261
  store %"compiler/source:Span" %t262, ptr %l135
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i32, ptr %l4, !tbaa !23
  %t267 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t263, i32 %t264)
  store { i64, ptr } %t267, ptr %l138
  br label %bb51
bb50:
  br label %bb56
bb51:
  %t268 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t268, 0
  %t270 = extractvalue { i64, ptr } %t268, 1
  %t271 = mul i64 %t269, 1
  %t272 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t271)
  call void @llvm.memcpy.p0.p0.i64(ptr %t272, ptr %t270, i64 %t271, i1 false)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  store { i64, ptr } %t274, ptr %l139, !tbaa !27
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l13, !tbaa !29
  %t278 = getelementptr %"compiler/ast:Param", ptr %t276, i32 0, i32 1
  %t279 = load i32, ptr %t278, !tbaa !23
  %t282 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t275, i32 %t279)
  store { i64, ptr } %t282, ptr %l143
  br label %bb52
bb52:
  %t283 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t284 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t285 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderTakesOwner(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t283, { i64, ptr } %t284)
  store %"compiler/diagmsg:Msg" %t285, ptr %l144
  br label %bb53
bb53:
  %t286 = load ptr, ptr %l133, !tbaa !29
  %t287 = load %"compiler/source:Span", ptr %l135
  %t288 = load %"compiler/diagmsg:Msg", ptr %l144
  %t289 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t286, %"compiler/source:Span" %t287, %"compiler/diagmsg:Msg" %t288)
  store i64 %t289, ptr %l145
  br label %bb54
bb54:
  %t290 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t290)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb56:
  br label %bb57
bb57:
  %t292 = load i64, ptr %l10, !tbaa !24
  %t294 = add i64 %t292, 1
  store i64 %t294, ptr %l10, !tbaa !24
  br label %bb39
bb58:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load i32, ptr %l4, !tbaa !23
  %t298 = load ptr, ptr %l2, !tbaa !29
  %t300 = getelementptr %"compiler/ast:Func", ptr %t298, i32 0, i32 10
  %t301 = load i32, ptr %t300, !tbaa !23
  %t305 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderNameTaken(ptr %v0, ptr %s0, ptr %t296, i32 %t297, i32 %t301)
  store { i64, ptr } %t305, ptr %l153
  br label %bb59
bb59:
  %t306 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t306, ptr %l15, !tbaa !27
  %t307 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t309 = extractvalue { i64, ptr } %t307, 0
  %t311 = icmp sgt i64 %t309, 0
  br i1 %t311, label %bb60, label %bb61
bb60:
  %t313 = load ptr, ptr %l0, !tbaa !29
  store ptr %t313, ptr %l157, !tbaa !29
  %t314 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t314, ptr %l158
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load i32, ptr %l4, !tbaa !23
  %t319 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t315, i32 %t316)
  store { i64, ptr } %t319, ptr %l161
  br label %bb62
bb61:
  br label %bb67
bb62:
  %t320 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t320, 0
  %t322 = extractvalue { i64, ptr } %t320, 1
  %t323 = mul i64 %t321, 1
  %t324 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t323)
  call void @llvm.memcpy.p0.p0.i64(ptr %t324, ptr %t322, i64 %t323, i1 false)
  %t325 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t324, 1
  store { i64, ptr } %t326, ptr %l162, !tbaa !27
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %l2, !tbaa !29
  %t330 = getelementptr %"compiler/ast:Func", ptr %t328, i32 0, i32 10
  %t331 = load i32, ptr %t330, !tbaa !23
  %t334 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t327, i32 %t331)
  store { i64, ptr } %t334, ptr %l166
  br label %bb63
bb63:
  %t335 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 0
  %t337 = extractvalue { i64, ptr } %t335, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  %t342 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t343 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t346 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNameTaken(ptr %v0, ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t343, { i64, ptr } %t341, { i64, ptr } %t342)
  store %"compiler/diagmsg:Msg" %t346, ptr %l169
  br label %bb64
bb64:
  %t347 = load ptr, ptr %l157, !tbaa !29
  %t348 = load %"compiler/source:Span", ptr %l158
  %t349 = load %"compiler/diagmsg:Msg", ptr %l169
  %t350 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t347, %"compiler/source:Span" %t348, %"compiler/diagmsg:Msg" %t349)
  store i64 %t350, ptr %l170
  br label %bb65
bb65:
  %t351 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t351)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb67:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = getelementptr %"compiler/check:Checker", ptr %t353, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !29
  %t357 = load i64, ptr %l1, !tbaa !24
  %t360 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOverlap(ptr %v0, ptr %t356, i64 %t357)
  store i64 %t360, ptr %l175
  br label %bb68
bb68:
  %t361 = load i64, ptr %l175, !tbaa !24
  %t364 = icmp sge i64 %t361, 0
  br i1 %t364, label %bb69, label %bb70
bb69:
  %t366 = load ptr, ptr %l0, !tbaa !29
  store ptr %t366, ptr %l178, !tbaa !29
  %t367 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t367, ptr %l179
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load i32, ptr %l4, !tbaa !23
  %t372 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t368, i32 %t369)
  store { i64, ptr } %t372, ptr %l182
  br label %bb71
bb70:
  br label %bb75
bb71:
  %t373 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t373, 0
  %t375 = extractvalue { i64, ptr } %t373, 1
  %t376 = mul i64 %t374, 1
  %t377 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t376)
  call void @llvm.memcpy.p0.p0.i64(ptr %t377, ptr %t375, i64 %t376, i1 false)
  %t378 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t377, 1
  store { i64, ptr } %t379, ptr %l183, !tbaa !27
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load ptr, ptr %l2, !tbaa !29
  %t383 = getelementptr %"compiler/ast:Func", ptr %t381, i32 0, i32 10
  %t384 = load i32, ptr %t383, !tbaa !23
  %t387 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t380, i32 %t384)
  store { i64, ptr } %t387, ptr %l187
  br label %bb72
bb72:
  %t388 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t389 = extractvalue { i64, ptr } %t388, 0
  %t390 = extractvalue { i64, ptr } %t388, 1
  %t391 = mul i64 %t389, 1
  %t392 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t391)
  call void @llvm.memcpy.p0.p0.i64(ptr %t392, ptr %t390, i64 %t391, i1 false)
  %t393 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  %t395 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t397 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderTwice(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t395, { i64, ptr } %t394)
  store %"compiler/diagmsg:Msg" %t397, ptr %l189
  br label %bb73
bb73:
  %t398 = load ptr, ptr %l178, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l179
  %t400 = load %"compiler/diagmsg:Msg", ptr %l189
  %t401 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t398, %"compiler/source:Span" %t399, %"compiler/diagmsg:Msg" %t400)
  store i64 %t401, ptr %l190
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t402 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t402)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyFieldRow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca %"compiler/source:Span"
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l16 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca { i64, ptr }
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l7, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t2, ptr %l8, !tbaa !27
  %t3 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !27
  %t5 = getelementptr ptr, ptr %t4, i64 0
  %t6 = load ptr, ptr %t5, !tbaa !39
  %t8 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v2, ptr %t6)
  store %"compiler/source:Span" %t8, ptr %l10
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l10
  %t15 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v3, ptr %v4, ptr %v3, ptr %t11, %"compiler/source:Span" %t12, { i64, ptr } %a3, ptr %a4, i1 false)
  %t16 = extractvalue { i32, { i64, ptr } } %t15, 1
  %t17 = extractvalue { i32, { i64, ptr } } %t15, 0
  store i32 %t17, ptr %l14
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store { i64, ptr } %t16, ptr %l13
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t20, ptr %l6, !tbaa !27
  br label %bb5
bb3:
  %t21 = load i32, ptr %l14, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb4
bb4:
  br label %ret
bb5:
  %t25 = load { i64, ptr }, ptr %l6, !tbaa !27
  store ptr %a1, ptr %l17, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v2, ptr %v3, ptr %v1, { i64, ptr } %t27, { i64, ptr } %t25, i64 0)
  store { i64, ptr } %t31, ptr %l20
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l17, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v1, ptr %v1, ptr %t32, { i64, ptr } %t33)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i64
  %l26 = alloca %"compiler/check:errBind"
  store ptr %a0, ptr %l0
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
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb20
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 16
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l15
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l15, !tbaa !29
  store ptr %t22, ptr %l3, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/check:frame", ptr %t23, i32 0, i32 57
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l18
  br label %bb7
bb7:
  %t28 = load i64, ptr %l18, !tbaa !24
  %t29 = sub i64 %t28, 1
  store i64 %t29, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sge i64 %t31, 0
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/check:frame", ptr %t37, i32 0, i32 57
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call %"compiler/check:errBind" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eAt_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t39, i64 %t40)
  store %"compiler/check:errBind" %t43, ptr %l26
  br label %bb12
bb12:
  %t44 = getelementptr %"compiler/check:errBind", ptr %l26, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t49 = icmp eq i32 %t45, %a1
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr %"compiler/check:frame", ptr %t51, i32 0, i32 58
  %t54 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t53, i64 %t54, i1 true)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = sub i64 %t57, 1
  store i64 %t59, ptr %l4, !tbaa !24
  br label %bb8
bb18:
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/check:frame", ptr %t61, i32 0, i32 19
  %t64 = load i64, ptr %t63, !tbaa !24
  store i64 %t64, ptr %l2, !tbaa !24
  br label %bb19
bb19:
  br label %bb2
bb20:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseHandler(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %lp26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l30 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l49 = alloca i1
  %l52 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca i64
  %l61 = alloca i32
  %l68 = alloca i32
  %l70 = alloca ptr
  %l73 = alloca i64
  %l86 = alloca i64
  %l95 = alloca ptr
  %l96 = alloca ptr
  %l97 = alloca i64
  %l100 = alloca %"compiler/generic:Context"
  %l102 = alloca %"compiler/generic:Context"
  %l104 = alloca %"compiler/generic:Context"
  %l110 = alloca ptr
  %l114 = alloca i32
  %l116 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l124 = alloca i64
  %l134 = alloca { i64, ptr }
  %l145 = alloca i1
  %l150 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l155 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l166 = alloca i32
  %l169 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l177 = alloca i32
  %l178 = alloca { i64, ptr }
  %l188 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l196 = alloca %"compiler/diagmsg:Msg"
  %l197 = alloca i64
  %l200 = alloca i64
  %l206 = alloca i64
  %l209 = alloca i64
  %l228 = alloca ptr
  %l231 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l237 = alloca ptr
  %l243 = alloca { i64, ptr }
  %l244 = alloca ptr
  %l246 = alloca %"compiler/source:Span"
  %l248 = alloca %"compiler/source:Span"
  %l249 = alloca i32
  %l253 = alloca %"compiler/typed:Make"
  %l262 = alloca { i64, ptr }
  %l263 = alloca %"compiler/typed:Block"
  %l265 = alloca ptr
  %l270 = alloca i1
  %l273 = alloca i1
  %l275 = alloca ptr
  %l279 = alloca i1
  %l281 = alloca i1
  %l283 = alloca ptr
  %l285 = alloca %"compiler/source:Span"
  %l286 = alloca %"compiler/diagmsg:Msg"
  %l287 = alloca i64
  %l289 = alloca ptr
  %l292 = alloca { i64, ptr }
  %l298 = alloca %"compiler/source:Span"
  %l299 = alloca i32
  %l302 = alloca i32
  %l303 = alloca { i64, ptr }
  %l308 = alloca i32
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca ptr
  %t99 = alloca { i64, [2 x i64] }, align 8
  %t149 = alloca %"compiler/generic:Context", align 8
  %t375 = alloca { i64, [3 x i64] }, align 8
  %t567 = alloca { i64, [5 x i64] }, align 8
  %t579 = alloca { i64, [3 x i64] }, align 8
  %t684 = alloca { i64, [4 x i64] }, align 8
  %t696 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Catch", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/ast:Catch", ptr %t6, i32 0, i32 2
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = icmp sgt i64 %t11, 0
  store i1 %t13, ptr %l30, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l30, !tbaa !21
  store i1 %t15, ptr %l4, !tbaa !21
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Catch", ptr %t16, i32 0, i32 3
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp sgt i64 %t21, 0
  store i1 %t23, ptr %l5, !tbaa !21
  %t25 = load i1, ptr %l4, !tbaa !21
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = load i1, ptr %l5, !tbaa !21
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l41, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l41, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp eq i64 %t34, 0
  store i1 %t36, ptr %l44, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l44, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t40 = load i1, ptr %l5, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = icmp eq i64 %t42, 0
  store i1 %t44, ptr %l49, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb15
bb15:
  %t46 = load i1, ptr %l49, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l52, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t52 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store %"compiler/source:Span" %t52, ptr %l55
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t53 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskDefaultInStatement(ptr %v0)
  store %"compiler/diagmsg:Msg" %t53, ptr %l56
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l52, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l55
  %t56 = load %"compiler/diagmsg:Msg", ptr %l56
  %t57 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t54, %"compiler/source:Span" %t55, %"compiler/diagmsg:Msg" %t56)
  store i64 %t57, ptr %l57
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb21:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load i32, ptr %l2, !tbaa !23
  store i32 %t63, ptr %l61, !tbaa !23
  br label %bb24
bb23:
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t65, ptr %l61, !tbaa !23
  br label %bb24
bb24:
  %t67 = load i32, ptr %l61, !tbaa !23
  store i32 %t67, ptr %l6, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l6, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t73, i32 0, i32 %t74, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t77, ptr %l68
  br label %bb25
bb25:
  %t78 = load i32, ptr %l68, !tbaa !23
  store i32 %t78, ptr %l7, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t79)
  store ptr %t81, ptr %l70
  br label %bb26
bb26:
  %t82 = load ptr, ptr %l70, !tbaa !29
  store ptr %t82, ptr %l8, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 16
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l73
  br label %bb27
bb27:
  %t88 = load i64, ptr %l73, !tbaa !24
  %t89 = sub i64 %t88, 1
  store i64 %t89, ptr %l9, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l8, !tbaa !29
  %t94 = getelementptr %"compiler/check:frame", ptr %t92, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t97 = trunc i64 %t95 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t99
  %t100 = getelementptr { i64, [2 x i64] }, ptr %t99, i32 0, i32 0
  store i64 4, ptr %t100
  %t102 = insertvalue { i32 } undef, i32 %t97, 0
  %t103 = getelementptr { i64, [2 x i64] }, ptr %t99, i32 0, i32 1
  store { i32 } %t102, ptr %t103
  %t104 = load { i64, [2 x i64] }, ptr %t99
  %t105 = load i32, ptr %l7, !tbaa !23
  %t106 = load ptr, ptr %l8, !tbaa !29
  %t108 = getelementptr %"compiler/check:frame", ptr %t106, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Catch", ptr %t110, i32 0, i32 0
  %t113 = load %"compiler/source:Span", ptr %t112
  %t119 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t91, { i64, [2 x i64] } %t104, i32 %t105, i64 %t109, %"compiler/source:Span" %t113)
  store i64 %t119, ptr %l86
  br label %bb28
bb28:
  %t120 = load i64, ptr %l86, !tbaa !24
  store i64 %t120, ptr %l10, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 19
  %t124 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t123, i64 %t124, i64 1)
  br label %bb29
bb29:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i64, ptr %l10, !tbaa !24
  %t129 = load ptr, ptr %l8, !tbaa !29
  %t131 = getelementptr %"compiler/check:frame", ptr %t129, i32 0, i32 1
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i32, ptr %l6, !tbaa !23
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t127, i64 %t128, i64 %t132, i32 %t133, i32 0)
  store ptr %t138, ptr %l95
  br label %bb30
bb30:
  %t139 = load ptr, ptr %l95, !tbaa !29
  store ptr %t139, ptr %l11, !tbaa !29
  %t140 = load ptr, ptr %l11, !tbaa !29
  store ptr %t140, ptr %l96, !tbaa !29
  %t141 = ptrtoint ptr %v0 to i64
  store i64 %t141, ptr %l97, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t142, label %bb31, label %bb32
bb31:
  %t144 = call ptr @__olang_region_make(ptr %v0)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l97, !tbaa !24
  br label %bb32
bb32:
  %t146 = load ptr, ptr %l8, !tbaa !29
  %t148 = getelementptr %"compiler/check:frame", ptr %t146, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l100, ptr %t148, i64 160, i1 false)
  %t150 = load i64, ptr %l97
  %t151 = inttoptr i64 %t150 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t149, ptr %t151, ptr %l100)
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t149, i64 160, i1 false)
  br label %bb33
bb33:
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t153, label %bb34, label %bb35
bb34:
  %t155 = load i64, ptr %l97
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 3
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t157, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr null
  %t164 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 3
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t164, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr %t163
  %t171 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 3
  %t172 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t171, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = icmp ne ptr %t175, null
  %t177 = select i1 %t176, ptr %t175, ptr %t170
  %t178 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 2
  %t179 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t178, i32 0, i32 2
  %t180 = load { i64, ptr }, ptr %t179
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = call ptr @__olang_region_or(ptr %t181, ptr null)
  %t183 = icmp ne ptr %t182, null
  %t184 = select i1 %t183, ptr %t182, ptr %t177
  %t185 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 2
  %t186 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t185, i32 0, i32 1
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = icmp ne ptr %t189, null
  %t191 = select i1 %t190, ptr %t189, ptr %t184
  %t192 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 2
  %t193 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t192, i32 0, i32 0
  %t194 = load { i64, ptr }, ptr %t193
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = call ptr @__olang_region_or(ptr %t195, ptr null)
  %t197 = icmp ne ptr %t196, null
  %t198 = select i1 %t197, ptr %t196, ptr %t191
  %t199 = icmp eq ptr %t198, %t156
  call void @__olang_region_settle(ptr %t156, i1 %t199)
  br label %bb35
bb35:
  %t200 = load ptr, ptr %l96, !tbaa !29
  %t201 = getelementptr %"compiler/check:frame", ptr %t200, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l104, ptr %t201, i64 160, i1 false)
  %t202 = load ptr, ptr %l96, !tbaa !29
  %t203 = getelementptr %"compiler/check:frame", ptr %t202, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t203, ptr %l102, i64 160, i1 false)
  %t204 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t204, label %bb36, label %bb37
bb36:
  %t206 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t206, i32 0, i32 2
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = icmp ne ptr %t210, null
  %t212 = select i1 %t211, ptr %t210, ptr null
  %t213 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t214 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t213, i32 0, i32 1
  %t215 = load { i64, ptr }, ptr %t214
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = call ptr @__olang_region_or(ptr %t216, ptr null)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr %t212
  %t220 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t221 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t220, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr %t219
  %t227 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t228 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t227, i32 0, i32 2
  %t229 = load { i64, ptr }, ptr %t228
  %t230 = extractvalue { i64, ptr } %t229, 1
  %t231 = call ptr @__olang_region_or(ptr %t230, ptr null)
  %t232 = icmp ne ptr %t231, null
  %t233 = select i1 %t232, ptr %t231, ptr %t226
  %t234 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t235 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t234, i32 0, i32 1
  %t236 = load { i64, ptr }, ptr %t235
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = call ptr @__olang_region_or(ptr %t237, ptr null)
  %t239 = icmp ne ptr %t238, null
  %t240 = select i1 %t239, ptr %t238, ptr %t233
  %t241 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t242 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t241, i32 0, i32 0
  %t243 = load { i64, ptr }, ptr %t242
  %t244 = extractvalue { i64, ptr } %t243, 1
  %t245 = call ptr @__olang_region_or(ptr %t244, ptr null)
  %t246 = icmp ne ptr %t245, null
  %t247 = select i1 %t246, ptr %t245, ptr %t240
  call void @__olang_region_drop(ptr %t247)
  store %"compiler/generic:Context" zeroinitializer, ptr %l104
  br label %bb37
bb37:
  %t248 = load ptr, ptr %l11, !tbaa !29
  %t249 = load i64, ptr %l9, !tbaa !24
  %t252 = getelementptr %"compiler/check:frame", ptr %t248, i32 0, i32 19
  store i64 %t249, ptr %t252, !tbaa !24
  %t253 = load ptr, ptr %l11, !tbaa !29
  %t255 = getelementptr %"compiler/check:frame", ptr %t253, i32 0, i32 32
  store i1 true, ptr %t255, !tbaa !21
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t256)
  store ptr %t258, ptr %l110
  br label %bb38
bb38:
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = getelementptr %"compiler/ast:Catch", ptr %t259, i32 0, i32 0
  %t262 = load %"compiler/source:Span", ptr %t261
  %t263 = load ptr, ptr %l110, !tbaa !29
  %t266 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t263, i32 -1, i32 0, %"compiler/source:Span" %t262)
  store i32 %t266, ptr %l114
  br label %bb39
bb39:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t267)
  store ptr %t269, ptr %l116
  br label %bb40
bb40:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/check:Checker", ptr %t270, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t274 = load i32, ptr %l7, !tbaa !23
  %t277 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t273, i32 %t274)
  store { i64, ptr } %t277, ptr %l120
  br label %bb41
bb41:
  %t278 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 0
  %t280 = extractvalue { i64, ptr } %t278, 1
  %t281 = mul i64 %t279, 8
  %t282 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t281)
  call void @llvm.memcpy.p0.p0.i64(ptr %t282, ptr %t280, i64 %t281, i1 false)
  %t283 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  %t285 = load ptr, ptr %l116, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t285, { i64, ptr } %t284)
  br label %bb42
bb42:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 37
  %t291 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t289)
  store i64 %t291, ptr %l124
  br label %bb43
bb43:
  %t292 = load i64, ptr %l124, !tbaa !24
  store i64 %t292, ptr %l12, !tbaa !24
  %t293 = load i1, ptr %l4, !tbaa !21
  br i1 %t293, label %bb44, label %bb45
bb44:
  %t295 = load ptr, ptr %l1, !tbaa !29
  %t297 = getelementptr %"compiler/ast:Catch", ptr %t295, i32 0, i32 2
  %t298 = load { i64, ptr }, ptr %t297, !tbaa !27
  store { i64, ptr } %t298, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t300 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  store i64 %t302, ptr %l15, !tbaa !24
  br label %bb46
bb45:
  br label %bb53
bb46:
  %t304 = load i64, ptr %l14, !tbaa !24
  %t305 = load i64, ptr %l15, !tbaa !24
  %t308 = icmp slt i64 %t304, %t305
  %t310 = xor i1 %t308, true
  br i1 %t310, label %bb47, label %bb48
bb47:
  br label %bb52
bb48:
  br label %bb49
bb49:
  %t312 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t312, ptr %l134, !tbaa !27
  %t313 = load i64, ptr %l14, !tbaa !24
  %t315 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = getelementptr ptr, ptr %t316, i64 %t313
  %t318 = load ptr, ptr %t317, !tbaa !39
  %t320 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t320, ptr %t318)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t325 = load i64, ptr %l14, !tbaa !24
  %t327 = add i64 %t325, 1
  store i64 %t327, ptr %l14, !tbaa !24
  br label %bb46
bb52:
  br label %bb53
bb53:
  %t329 = load i1, ptr %l5, !tbaa !21
  br i1 %t329, label %bb54, label %bb55
bb54:
  %t331 = load i64, ptr %l3, !tbaa !24
  %t333 = icmp eq i64 %t331, 1
  br i1 %t333, label %bb56, label %bb57
bb55:
  br label %bb97
bb56:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb58
bb57:
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t337 = getelementptr %"compiler/ast:Catch", ptr %t335, i32 0, i32 3
  %t338 = load { i64, ptr }, ptr %t337, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t342 = icmp eq i64 %t340, 1
  store i1 %t342, ptr %l145, !tbaa !21
  br label %bb58
bb58:
  %t344 = load i1, ptr %l145, !tbaa !21
  br i1 %t344, label %bb59, label %bb60
bb59:
  %t345 = load ptr, ptr %l0, !tbaa !29
  store ptr %t345, ptr %l150, !tbaa !29
  %t346 = load ptr, ptr %l1, !tbaa !29
  %t348 = getelementptr %"compiler/ast:Catch", ptr %t346, i32 0, i32 0
  %t349 = load %"compiler/source:Span", ptr %t348
  store %"compiler/source:Span" %t349, ptr %l152
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load ptr, ptr %l1, !tbaa !29
  %t353 = getelementptr %"compiler/ast:Catch", ptr %t351, i32 0, i32 3
  %t354 = load { i64, ptr }, ptr %t353, !tbaa !27
  store { i64, ptr } %t354, ptr %l155, !tbaa !27
  %t355 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr ptr, ptr %t356, i64 0
  %t358 = load ptr, ptr %t357, !tbaa !39
  %t359 = load i32, ptr %l2, !tbaa !23
  %t363 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v0, ptr %t350, ptr %t358, i32 %t359)
  store ptr %t363, ptr %l158
  br label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s9
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t369 = getelementptr %"compiler/generic:Program", ptr %t367, i32 0, i32 2
  %t370 = load i32, ptr %l2, !tbaa !23
  %t373 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t369, i32 %t370)
  store i32 %t373, ptr %l166
  br label %bb63
bb61:
  %t374 = load ptr, ptr %l158, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t375
  %t376 = getelementptr { i64, [3 x i64] }, ptr %t375, i32 0, i32 0
  store i64 6, ptr %t376
  %t377 = load %"compiler/source:Span", ptr %l152
  %t378 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t377, 0
  %t380 = insertvalue { %"compiler/source:Span", ptr } %t378, ptr %t374, 1
  %t381 = getelementptr { i64, [3 x i64] }, ptr %t375, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t380, ptr %t381
  %t382 = load { i64, [3 x i64] }, ptr %t375
  %t384 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t382, ptr %t384
  %t385 = load ptr, ptr %l150, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t385, ptr %t384)
  br label %bb62
bb62:
  br label %bb96
bb63:
  %t387 = load i32, ptr %l166, !range !{i32 0, i32 33}
  %t389 = trunc i64 22 to i32
  %t390 = icmp eq i32 %t387, %t389
  br i1 %t390, label %bb64, label %bb65
bb64:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/check:Checker", ptr %t392, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !29
  %t397 = getelementptr %"compiler/generic:Program", ptr %t395, i32 0, i32 2
  store ptr %t397, ptr %l172, !tbaa !29
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr %"compiler/check:Checker", ptr %t398, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !29
  %t403 = getelementptr %"compiler/generic:Program", ptr %t401, i32 0, i32 2
  %t404 = load i32, ptr %l2, !tbaa !23
  %t407 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t403, i32 %t404)
  store i32 %t407, ptr %l177
  br label %bb66
bb65:
  %t408 = icmp sge i64 0, 0
  br i1 %t408, label %bb68, label %bb69
bb66:
  %t410 = load ptr, ptr %l172, !tbaa !29
  %t411 = load i32, ptr %l177, !tbaa !23
  %t412 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s9, ptr %t410, i32 %t411)
  store { i64, ptr } %t412, ptr %l178
  br label %bb67
bb67:
  %t413 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t413, ptr %l169, !tbaa !27
  br label %bb72
bb68:
  %t414 = icmp sle i64 0, 2305843009213693951
  br i1 %t414, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_b7a62f2efaadd4af_1b278ceebf7ddf33)
  unreachable
bb70:
  %t416 = mul i64 0, 4
  %t417 = insertvalue { i64, ptr } undef, i64 0, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t418, ptr %l169, !tbaa !27
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_b7a62f2efaadd4af_1b278ceebf7ddf33)
  unreachable
bb72:
  %t420 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t420, ptr %l17, !tbaa !27
  %t421 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t421, 0
  %t424 = load ptr, ptr %l1, !tbaa !29
  %t426 = getelementptr %"compiler/ast:Catch", ptr %t424, i32 0, i32 3
  %t427 = load { i64, ptr }, ptr %t426, !tbaa !27
  %t429 = extractvalue { i64, ptr } %t427, 0
  %t432 = icmp ne i64 %t423, %t429
  br i1 %t432, label %bb73, label %bb74
bb73:
  %t434 = load ptr, ptr %l0, !tbaa !29
  store ptr %t434, ptr %l188, !tbaa !29
  %t435 = load ptr, ptr %l1, !tbaa !29
  %t437 = getelementptr %"compiler/ast:Catch", ptr %t435, i32 0, i32 0
  %t438 = load %"compiler/source:Span", ptr %t437
  store %"compiler/source:Span" %t438, ptr %l190
  %t439 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t439, 0
  %t442 = load ptr, ptr %l1, !tbaa !29
  %t444 = getelementptr %"compiler/ast:Catch", ptr %t442, i32 0, i32 3
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t445, 0
  %t450 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %t441, i64 %t447)
  store %"compiler/diagmsg:Msg" %t450, ptr %l196
  br label %bb75
bb74:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/check:Checker", ptr %t451, i32 0, i32 36
  %t455 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t453)
  store i64 %t455, ptr %l200
  br label %bb77
bb75:
  %t456 = load ptr, ptr %l188, !tbaa !29
  %t457 = load %"compiler/source:Span", ptr %l190
  %t458 = load %"compiler/diagmsg:Msg", ptr %l196
  %t459 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t456, %"compiler/source:Span" %t457, %"compiler/diagmsg:Msg" %t458)
  store i64 %t459, ptr %l197
  br label %bb76
bb76:
  br label %bb95
bb77:
  %t460 = load i64, ptr %l200, !tbaa !24
  store i64 %t460, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t461 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t463 = extractvalue { i64, ptr } %t461, 0
  store i64 %t463, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t465 = load i64, ptr %l20, !tbaa !24
  %t466 = load i64, ptr %l19, !tbaa !24
  %t469 = icmp sgt i64 %t465, %t466
  br i1 %t469, label %bb78, label %bb79
bb78:
  %t471 = load i64, ptr %l21, !tbaa !24
  %t473 = icmp sgt i64 %t471, 0
  br i1 %t473, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l206, !tbaa !24
  br label %bb83
bb80:
  %t475 = load i64, ptr %l20, !tbaa !24
  %t476 = load i64, ptr %l19, !tbaa !24
  %t479 = sub i64 %t475, %t476
  %t480 = load i64, ptr %l21, !tbaa !24
  %t483 = add i64 %t479, %t480
  %t485 = sub i64 %t483, 1
  %t486 = load i64, ptr %l21, !tbaa !24
  %t489 = sdiv i64 %t485, %t486
  store i64 %t489, ptr %l209, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l209, !tbaa !24
  br label %bb82
bb82:
  %t491 = load i64, ptr %l209, !tbaa !24
  store i64 %t491, ptr %l206, !tbaa !24
  br label %bb83
bb83:
  %t492 = load i64, ptr %l206, !tbaa !24
  store i64 %t492, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb84
bb84:
  %t493 = load i64, ptr %l23, !tbaa !24
  %t494 = load i64, ptr %l22, !tbaa !24
  %t497 = icmp slt i64 %t493, %t494
  %t499 = xor i1 %t497, true
  br i1 %t499, label %bb85, label %bb86
bb85:
  br label %bb91
bb86:
  br label %bb87
bb87:
  %t501 = load i64, ptr %l19, !tbaa !24
  %t502 = load i64, ptr %l23, !tbaa !24
  %t503 = load i64, ptr %l21, !tbaa !24
  %t506 = mul i64 %t502, %t503
  %t509 = add i64 %t501, %t506
  store i64 %t509, ptr %l24, !tbaa !24
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t513 = getelementptr %"compiler/check:Checker", ptr %t511, i32 0, i32 36
  store ptr %t513, ptr %l228, !tbaa !29
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load ptr, ptr %l1, !tbaa !29
  %t517 = getelementptr %"compiler/ast:Catch", ptr %t515, i32 0, i32 3
  %t518 = load { i64, ptr }, ptr %t517, !tbaa !27
  store { i64, ptr } %t518, ptr %l231, !tbaa !27
  %t519 = load i64, ptr %l24, !tbaa !24
  %t521 = getelementptr { i64, ptr }, ptr %l231, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr ptr, ptr %t522, i64 %t519
  %t524 = load ptr, ptr %t523, !tbaa !39
  %t525 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t525, ptr %l234, !tbaa !27
  %t526 = load i64, ptr %l24, !tbaa !24
  %t528 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t529 = load ptr, ptr %t528, !tbaa !27
  %t530 = getelementptr i32, ptr %t529, i64 %t526
  %t531 = load i32, ptr %t530, !tbaa !33
  %t535 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v0, ptr %t514, ptr %t524, i32 %t531)
  store ptr %t535, ptr %l237
  br label %bb88
bb88:
  %t536 = load ptr, ptr %l228, !tbaa !29
  %t537 = load ptr, ptr %l237, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t536, ptr %t537)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t538 = load i64, ptr %l23, !tbaa !24
  %t540 = add i64 %t538, 1
  store i64 %t540, ptr %l23, !tbaa !24
  br label %bb84
bb91:
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t544 = getelementptr %"compiler/check:Checker", ptr %t542, i32 0, i32 36
  %t545 = load i64, ptr %l18, !tbaa !24
  %t548 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t544, i64 %t545)
  store { i64, ptr } %t548, ptr %l243
  br label %bb92
bb92:
  %t549 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t550 = load ptr, ptr %l0, !tbaa !29
  store ptr %t550, ptr %l244, !tbaa !29
  %t551 = load ptr, ptr %l1, !tbaa !29
  %t553 = getelementptr %"compiler/ast:Catch", ptr %t551, i32 0, i32 0
  %t554 = load %"compiler/source:Span", ptr %t553
  store %"compiler/source:Span" %t554, ptr %l246
  %t555 = load ptr, ptr %l1, !tbaa !29
  %t557 = getelementptr %"compiler/ast:Catch", ptr %t555, i32 0, i32 0
  %t558 = load %"compiler/source:Span", ptr %t557
  store %"compiler/source:Span" %t558, ptr %l248
  %t559 = load i32, ptr %l2, !tbaa !23
  store i32 %t559, ptr %l249, !tbaa !23
  %t564 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 0, i64 0, { i64, ptr } %t549, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t564, ptr %l253
  br label %bb93
bb93:
  %t565 = load %"compiler/typed:Make", ptr %l253
  %t566 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t565, ptr %t566
  store { i64, [5 x i64] } zeroinitializer, ptr %t567
  %t568 = getelementptr { i64, [5 x i64] }, ptr %t567, i32 0, i32 0
  store i64 7, ptr %t568
  %t569 = load %"compiler/source:Span", ptr %l248
  %t570 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t569, 0
  %t571 = load i32, ptr %l249, !tbaa !23
  %t572 = insertvalue { %"compiler/source:Span", i32, ptr } %t570, i32 %t571, 1
  %t574 = insertvalue { %"compiler/source:Span", i32, ptr } %t572, ptr %t566, 2
  %t575 = getelementptr { i64, [5 x i64] }, ptr %t567, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t574, ptr %t575
  %t576 = load { i64, [5 x i64] }, ptr %t567
  %t578 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t576, ptr %t578
  store { i64, [3 x i64] } zeroinitializer, ptr %t579
  %t580 = getelementptr { i64, [3 x i64] }, ptr %t579, i32 0, i32 0
  store i64 6, ptr %t580
  %t581 = load %"compiler/source:Span", ptr %l246
  %t582 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t581, 0
  %t584 = insertvalue { %"compiler/source:Span", ptr } %t582, ptr %t578, 1
  %t585 = getelementptr { i64, [3 x i64] }, ptr %t579, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t584, ptr %t585
  %t586 = load { i64, [3 x i64] }, ptr %t579
  %t588 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t586, ptr %t588
  %t589 = load ptr, ptr %l244, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t589, ptr %t588)
  br label %bb94
bb94:
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s9)
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t591 = load ptr, ptr %l0, !tbaa !29
  %t593 = getelementptr %"compiler/check:Checker", ptr %t591, i32 0, i32 37
  %t594 = load i64, ptr %l12, !tbaa !24
  %t597 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t593, i64 %t594)
  store { i64, ptr } %t597, ptr %l262
  br label %bb98
bb98:
  %t598 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t599 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t598)
  store %"compiler/typed:Block" %t599, ptr %l263
  br label %bb99
bb99:
  %t600 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store ptr %t600, ptr %lp26
  %t601 = load %"compiler/typed:Block", ptr %l263
  %t602 = load ptr, ptr %lp26
  store %"compiler/typed:Block" %t601, ptr %t602
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t605 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t603)
  store ptr %t605, ptr %l265
  br label %bb100
bb100:
  %t606 = load ptr, ptr %l265, !tbaa !29
  %t607 = load ptr, ptr %lp26
  %t610 = getelementptr %"compiler/typed:Body", ptr %t606, i32 0, i32 11
  store ptr %t607, ptr %t610, !tbaa !29
  %t611 = load i64, ptr %l3, !tbaa !24
  %t613 = icmp sgt i64 %t611, 0
  br i1 %t613, label %bb101, label %bb102
bb101:
  %t615 = load i1, ptr %l5, !tbaa !21
  %t617 = xor i1 %t615, true
  store i1 %t617, ptr %l270, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l270, !tbaa !21
  br label %bb103
bb103:
  %t619 = load i1, ptr %l270, !tbaa !21
  br i1 %t619, label %bb104, label %bb105
bb104:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t620)
  store ptr %t622, ptr %l275
  br label %bb106
bb105:
  store i1 false, ptr %l273, !tbaa !21
  br label %bb107
bb106:
  %t623 = load ptr, ptr %l275, !tbaa !29
  %t625 = getelementptr %"compiler/check:frame", ptr %t623, i32 0, i32 18
  %t626 = load i1, ptr %t625, !tbaa !21
  %t628 = xor i1 %t626, true
  store i1 %t628, ptr %l273, !tbaa !21
  br label %bb107
bb107:
  %t630 = load i1, ptr %l273, !tbaa !21
  br i1 %t630, label %bb108, label %bb109
bb108:
  %t631 = load ptr, ptr %lp26
  %t633 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t631)
  store i1 %t633, ptr %l281
  br label %bb110
bb109:
  store i1 false, ptr %l279, !tbaa !21
  br label %bb111
bb110:
  %t634 = load i1, ptr %l281, !tbaa !21
  %t635 = xor i1 %t634, true
  store i1 %t635, ptr %l279, !tbaa !21
  br label %bb111
bb111:
  %t637 = load i1, ptr %l279, !tbaa !21
  br i1 %t637, label %bb112, label %bb113
bb112:
  %t638 = load ptr, ptr %l0, !tbaa !29
  store ptr %t638, ptr %l283, !tbaa !29
  %t639 = load ptr, ptr %l1, !tbaa !29
  %t641 = getelementptr %"compiler/ast:Catch", ptr %t639, i32 0, i32 0
  %t642 = load %"compiler/source:Span", ptr %t641
  store %"compiler/source:Span" %t642, ptr %l285
  %t643 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseNeedsDefault(ptr %v0)
  store %"compiler/diagmsg:Msg" %t643, ptr %l286
  br label %bb114
bb113:
  br label %bb116
bb114:
  %t644 = load ptr, ptr %l283, !tbaa !29
  %t645 = load %"compiler/source:Span", ptr %l285
  %t646 = load %"compiler/diagmsg:Msg", ptr %l286
  %t647 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t644, %"compiler/source:Span" %t645, %"compiler/diagmsg:Msg" %t646)
  store i64 %t647, ptr %l287
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t650 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t648)
  store ptr %t650, ptr %l289
  br label %bb117
bb117:
  %t651 = load ptr, ptr %l289, !tbaa !29
  %t653 = getelementptr %"compiler/check:frame", ptr %t651, i32 0, i32 30
  %t655 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v2, ptr %t653)
  store { i64, ptr } %t655, ptr %l292
  br label %bb118
bb118:
  %t656 = load { i64, ptr }, ptr %l292, !tbaa !27
  store { i64, ptr } %t656, ptr %l27, !tbaa !27
  %t657 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t657)
  br label %bb119
bb119:
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t661 = getelementptr %"compiler/check:Checker", ptr %t659, i32 0, i32 19
  %t662 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t661, i64 %t662, i64 2)
  br label %bb120
bb120:
  %t665 = load ptr, ptr %l1, !tbaa !29
  %t667 = getelementptr %"compiler/ast:Catch", ptr %t665, i32 0, i32 0
  %t668 = load %"compiler/source:Span", ptr %t667
  store %"compiler/source:Span" %t668, ptr %l298
  %t669 = load i32, ptr %l7, !tbaa !23
  store i32 %t669, ptr %l299, !tbaa !23
  %t670 = load i64, ptr %l10, !tbaa !24
  %t672 = trunc i64 %t670 to i32
  store i32 %t672, ptr %l302, !tbaa !23
  %t674 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t674, ptr %l303, !tbaa !27
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t676 = load ptr, ptr %l1, !tbaa !29
  %t678 = getelementptr %"compiler/ast:Catch", ptr %t676, i32 0, i32 0
  %t679 = load %"compiler/source:Span", ptr %t678
  %t683 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t675, i32 5, %"compiler/source:Span" %t679)
  store i32 %t683, ptr %l308
  br label %bb121
bb121:
  store { i64, [4 x i64] } zeroinitializer, ptr %t684
  %t685 = getelementptr { i64, [4 x i64] }, ptr %t684, i32 0, i32 0
  store i64 1, ptr %t685
  %t686 = load i32, ptr %l302, !tbaa !23
  %t687 = insertvalue { i32, { i64, ptr }, i32 } undef, i32 %t686, 0
  %t688 = load { i64, ptr }, ptr %l303, !tbaa !27
  %t689 = insertvalue { i32, { i64, ptr }, i32 } %t687, { i64, ptr } %t688, 1
  %t690 = load i32, ptr %l308, !tbaa !23
  %t691 = insertvalue { i32, { i64, ptr }, i32 } %t689, i32 %t690, 2
  %t692 = getelementptr { i64, [4 x i64] }, ptr %t684, i32 0, i32 1
  store { i32, { i64, ptr }, i32 } %t691, ptr %t692
  %t693 = load { i64, [4 x i64] }, ptr %t684
  %t695 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t693, ptr %t695
  store { i64, [5 x i64] } zeroinitializer, ptr %t696
  %t697 = getelementptr { i64, [5 x i64] }, ptr %t696, i32 0, i32 0
  store i64 15, ptr %t697
  %t698 = load %"compiler/source:Span", ptr %l298
  %t699 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t698, 0
  %t700 = load i32, ptr %l299, !tbaa !23
  %t701 = insertvalue { %"compiler/source:Span", i32, ptr } %t699, i32 %t700, 1
  %t703 = insertvalue { %"compiler/source:Span", i32, ptr } %t701, ptr %t695, 2
  %t704 = getelementptr { i64, [5 x i64] }, ptr %t696, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t703, ptr %t704
  %t705 = load { i64, [5 x i64] }, ptr %t696
  %t707 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t705, ptr %t707
  call void @__olang_scope_close(ptr %s0)
  store ptr %t707, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca i32
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i1
  %l92 = alloca %"compiler/source:Span"
  %l93 = alloca i32
  %l97 = alloca ptr
  %l101 = alloca i32
  %l104 = alloca ptr
  %l105 = alloca i1
  %l114 = alloca %"compiler/source:Span"
  %l115 = alloca i32
  %l119 = alloca ptr
  %l122 = alloca ptr
  %l123 = alloca i1
  %l132 = alloca %"compiler/source:Span"
  %l133 = alloca i32
  %l138 = alloca ptr
  %l143 = alloca i32
  %l144 = alloca %"compiler/typed:Promote"
  %l148 = alloca ptr
  %l149 = alloca i1
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca i32
  %l161 = alloca ptr
  %l166 = alloca { i64, ptr }
  %l171 = alloca i32
  %l174 = alloca %"compiler/typed:Call"
  %l178 = alloca ptr
  %l179 = alloca i1
  %l192 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l204 = alloca ptr
  %l206 = alloca %"compiler/source:Span"
  %l207 = alloca i32
  %l209 = alloca i32
  %l211 = alloca i64
  %l212 = alloca { i64, ptr }
  %l213 = alloca ptr
  %l218 = alloca i32
  %l221 = alloca %"compiler/typed:Make"
  %l225 = alloca ptr
  %l226 = alloca i1
  %l239 = alloca %"compiler/source:Span"
  %l240 = alloca i32
  %l241 = alloca i32
  %l242 = alloca i32
  %l246 = alloca { i64, ptr }
  %l249 = alloca ptr
  %l250 = alloca i1
  %l259 = alloca %"compiler/source:Span"
  %l260 = alloca i32
  %l265 = alloca ptr
  %l270 = alloca ptr
  %l275 = alloca ptr
  %l278 = alloca %"compiler/typed:Slice"
  %l282 = alloca ptr
  %l283 = alloca i1
  %l296 = alloca ptr
  %l303 = alloca ptr
  %l305 = alloca %"compiler/source:Span"
  %l306 = alloca i32
  %l311 = alloca ptr
  %l312 = alloca ptr
  %l317 = alloca ptr
  %l318 = alloca %"compiler/typed:Cond"
  %l322 = alloca ptr
  %l323 = alloca i1
  %l332 = alloca %"compiler/source:Span"
  %l333 = alloca i64
  %l337 = alloca ptr
  %l340 = alloca ptr
  %l341 = alloca i1
  %l350 = alloca ptr
  %l351 = alloca i1
  %l363 = alloca ptr
  %l365 = alloca %"compiler/source:Span"
  %l366 = alloca ptr
  %rv = alloca ptr
  %t31 = alloca { i64, [5 x i64] }, align 8
  %t81 = alloca { i64, [5 x i64] }, align 8
  %t145 = alloca { i64, [5 x i64] }, align 8
  %t196 = alloca { i64, [5 x i64] }, align 8
  %t263 = alloca { i64, [5 x i64] }, align 8
  %t340 = alloca { i64, [5 x i64] }, align 8
  %t454 = alloca { i64, [5 x i64] }, align 8
  %t517 = alloca { i64, [5 x i64] }, align 8
  %t604 = alloca { i64, [5 x i64] }, align 8
  %t701 = alloca { i64, [5 x i64] }, align 8
  %t750 = alloca { i64, [5 x i64] }, align 8
  %t808 = alloca { i64, [4 x i64] }, align 8
  %t816 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t2 = load ptr, ptr %l47, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l47, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l48, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l48, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t24, i32 0, i32 2
  %t26 = load i64, ptr %t25
  store i64 %t26, ptr %l5, !tbaa !24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t28 = load %"compiler/source:Span", ptr %l3
  %t29 = load i32, ptr %l4, !tbaa !23
  %t30 = load i64, ptr %l5, !tbaa !24
  store { i64, [5 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 0
  store i64 0, ptr %t32
  %t34 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t28, 0
  %t36 = insertvalue { %"compiler/source:Span", i32, i64 } %t34, i32 %t29, 1
  %t38 = insertvalue { %"compiler/source:Span", i32, i64 } %t36, i64 %t30, 2
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t38, ptr %t39
  %t40 = load { i64, [5 x i64] }, ptr %t31
  %t42 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t40, ptr %t42
  store ptr %t42, ptr %rv
  br label %ret
bb6:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t45 = load ptr, ptr %l62, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t48 = load ptr, ptr %l62, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 1
  store i1 %t51, ptr %l63, !tbaa !21
  br label %bb8
bb8:
  %t52 = load i1, ptr %l63, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  store %"compiler/source:Span" %t57, ptr %l6
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l7, !tbaa !23
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t67, i32 0, i32 2
  %t69 = load i64, ptr %t68
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t73, i32 0, i32 3
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l9, !tbaa !29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t77 = load %"compiler/source:Span", ptr %l6
  %t78 = load i32, ptr %l7, !tbaa !23
  %t79 = load i64, ptr %l8, !tbaa !24
  %t80 = load ptr, ptr %l9, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 0
  store i64 1, ptr %t82
  %t84 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t77, 0
  %t86 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t84, i32 %t78, 1
  %t88 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t86, i64 %t79, 2
  %t90 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t88, ptr %t80, 3
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t90, ptr %t91
  %t92 = load { i64, [5 x i64] }, ptr %t81
  %t94 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t92, ptr %t94
  store ptr %t94, ptr %rv
  br label %ret
bb12:
  %t96 = load ptr, ptr %l1, !tbaa !29
  store ptr %t96, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t97 = load ptr, ptr %l80, !tbaa !29
  %t98 = icmp ne ptr %t97, null
  br i1 %t98, label %bb13, label %bb14
bb13:
  %t100 = load ptr, ptr %l80, !tbaa !29
  %t101 = load i64, ptr %t100, !range !{i64 0, i64 18}
  %t103 = icmp eq i64 %t101, 2
  store i1 %t103, ptr %l81, !tbaa !21
  br label %bb14
bb14:
  %t104 = load i1, ptr %l81, !tbaa !21
  br i1 %t104, label %bb15, label %bb16
bb15:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t107, i32 0, i32 0
  %t109 = load %"compiler/source:Span", ptr %t108
  store %"compiler/source:Span" %t109, ptr %l10
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [5 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t113, i32 0, i32 1
  %t115 = load i32, ptr %t114
  store i32 %t115, ptr %l11, !tbaa !23
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [5 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t119, i32 0, i32 2
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l12, !tbaa !29
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [5 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t125, i32 0, i32 3
  %t127 = load i32, ptr %t126
  store i32 %t127, ptr %l13, !tbaa !23
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t129 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t129, ptr %l92
  %t130 = load i32, ptr %l11, !tbaa !23
  store i32 %t130, ptr %l93, !tbaa !23
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l12, !tbaa !29
  %t133 = load i64, ptr %l2, !tbaa !24
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t131, ptr %t132, i64 %t133)
  store ptr %t137, ptr %l97
  br label %bb18
bb18:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i32, ptr %l13, !tbaa !23
  %t140 = load i64, ptr %l2, !tbaa !24
  %t144 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %t138, i32 %t139, i64 %t140)
  store i32 %t144, ptr %l101
  br label %bb19
bb19:
  store { i64, [5 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [5 x i64] }, ptr %t145, i32 0, i32 0
  store i64 2, ptr %t146
  %t147 = load %"compiler/source:Span", ptr %l92
  %t148 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t147, 0
  %t149 = load i32, ptr %l93, !tbaa !23
  %t150 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t148, i32 %t149, 1
  %t151 = load ptr, ptr %l97, !tbaa !29
  %t152 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t150, ptr %t151, 2
  %t153 = load i32, ptr %l101, !tbaa !23
  %t154 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t152, i32 %t153, 3
  %t155 = getelementptr { i64, [5 x i64] }, ptr %t145, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t154, ptr %t155
  %t156 = load { i64, [5 x i64] }, ptr %t145
  %t158 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t156, ptr %t158
  store ptr %t158, ptr %rv
  br label %ret
bb20:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t161 = load ptr, ptr %l104, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb21, label %bb22
bb21:
  %t164 = load ptr, ptr %l104, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 18}
  %t167 = icmp eq i64 %t165, 3
  store i1 %t167, ptr %l105, !tbaa !21
  br label %bb22
bb22:
  %t168 = load i1, ptr %l105, !tbaa !21
  br i1 %t168, label %bb23, label %bb24
bb23:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr { i64, [5 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t171, i32 0, i32 0
  %t173 = load %"compiler/source:Span", ptr %t172
  store %"compiler/source:Span" %t173, ptr %l14
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr { i64, [5 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t177, i32 0, i32 1
  %t179 = load i32, ptr %t178
  store i32 %t179, ptr %l15, !tbaa !23
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t183, i32 0, i32 2
  %t185 = load ptr, ptr %t184
  store ptr %t185, ptr %l16, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t187 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t187, ptr %l114
  %t188 = load i32, ptr %l15, !tbaa !23
  store i32 %t188, ptr %l115, !tbaa !23
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l16, !tbaa !29
  %t191 = load i64, ptr %l2, !tbaa !24
  %t195 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t189, ptr %t190, i64 %t191)
  store ptr %t195, ptr %l119
  br label %bb26
bb26:
  store { i64, [5 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 0
  store i64 3, ptr %t197
  %t198 = load %"compiler/source:Span", ptr %l114
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t198, 0
  %t200 = load i32, ptr %l115, !tbaa !23
  %t201 = insertvalue { %"compiler/source:Span", i32, ptr } %t199, i32 %t200, 1
  %t202 = load ptr, ptr %l119, !tbaa !29
  %t203 = insertvalue { %"compiler/source:Span", i32, ptr } %t201, ptr %t202, 2
  %t204 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t203, ptr %t204
  %t205 = load { i64, [5 x i64] }, ptr %t196
  %t207 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t205, ptr %t207
  store ptr %t207, ptr %rv
  br label %ret
bb27:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t210 = load ptr, ptr %l122, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb28, label %bb29
bb28:
  %t213 = load ptr, ptr %l122, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 18}
  %t216 = icmp eq i64 %t214, 5
  store i1 %t216, ptr %l123, !tbaa !21
  br label %bb29
bb29:
  %t217 = load i1, ptr %l123, !tbaa !21
  br i1 %t217, label %bb30, label %bb31
bb30:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [5 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t220, i32 0, i32 0
  %t222 = load %"compiler/source:Span", ptr %t221
  store %"compiler/source:Span" %t222, ptr %l17
  %t224 = load ptr, ptr %l1, !tbaa !29
  %t226 = getelementptr { i64, [5 x i64] }, ptr %t224, i32 0, i32 1
  %t227 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t226, i32 0, i32 1
  %t228 = load i32, ptr %t227
  store i32 %t228, ptr %l18, !tbaa !23
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr { i64, [5 x i64] }, ptr %t230, i32 0, i32 1
  %t233 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t232, i32 0, i32 2
  %t234 = load ptr, ptr %t233
  store ptr %t234, ptr %l19, !tbaa !29
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t236 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t236, ptr %l132
  %t237 = load i32, ptr %l18, !tbaa !23
  store i32 %t237, ptr %l133, !tbaa !23
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l19, !tbaa !29
  %t241 = getelementptr %"compiler/typed:Promote", ptr %t239, i32 0, i32 0
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t243 = load i64, ptr %l2, !tbaa !24
  %t247 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t238, ptr %t242, i64 %t243)
  store ptr %t247, ptr %l138
  br label %bb33
bb33:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l19, !tbaa !29
  %t251 = getelementptr %"compiler/typed:Promote", ptr %t249, i32 0, i32 1
  %t252 = load i32, ptr %t251, !tbaa !23
  %t253 = load i64, ptr %l2, !tbaa !24
  %t257 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %t248, i32 %t252, i64 %t253)
  store i32 %t257, ptr %l143
  br label %bb34
bb34:
  %t258 = load ptr, ptr %l138, !tbaa !29
  %t259 = load i32, ptr %l143, !tbaa !23
  %t260 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v0, ptr %v2, ptr %t258, i32 %t259)
  store %"compiler/typed:Promote" %t260, ptr %l144
  br label %bb35
bb35:
  %t261 = load %"compiler/typed:Promote", ptr %l144
  %t262 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t261, ptr %t262
  store { i64, [5 x i64] } zeroinitializer, ptr %t263
  %t264 = getelementptr { i64, [5 x i64] }, ptr %t263, i32 0, i32 0
  store i64 5, ptr %t264
  %t265 = load %"compiler/source:Span", ptr %l132
  %t266 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t265, 0
  %t267 = load i32, ptr %l133, !tbaa !23
  %t268 = insertvalue { %"compiler/source:Span", i32, ptr } %t266, i32 %t267, 1
  %t270 = insertvalue { %"compiler/source:Span", i32, ptr } %t268, ptr %t262, 2
  %t271 = getelementptr { i64, [5 x i64] }, ptr %t263, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t270, ptr %t271
  %t272 = load { i64, [5 x i64] }, ptr %t263
  %t274 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t272, ptr %t274
  store ptr %t274, ptr %rv
  br label %ret
bb36:
  %t276 = load ptr, ptr %l1, !tbaa !29
  store ptr %t276, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t277 = load ptr, ptr %l148, !tbaa !29
  %t278 = icmp ne ptr %t277, null
  br i1 %t278, label %bb37, label %bb38
bb37:
  %t280 = load ptr, ptr %l148, !tbaa !29
  %t281 = load i64, ptr %t280, !range !{i64 0, i64 18}
  %t283 = icmp eq i64 %t281, 6
  store i1 %t283, ptr %l149, !tbaa !21
  br label %bb38
bb38:
  %t284 = load i1, ptr %l149, !tbaa !21
  br i1 %t284, label %bb39, label %bb40
bb39:
  %t285 = load ptr, ptr %l1, !tbaa !29
  %t287 = getelementptr { i64, [5 x i64] }, ptr %t285, i32 0, i32 1
  %t288 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t287, i32 0, i32 0
  %t289 = load %"compiler/source:Span", ptr %t288
  store %"compiler/source:Span" %t289, ptr %l20
  %t291 = load ptr, ptr %l1, !tbaa !29
  %t293 = getelementptr { i64, [5 x i64] }, ptr %t291, i32 0, i32 1
  %t294 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t293, i32 0, i32 1
  %t295 = load i32, ptr %t294
  store i32 %t295, ptr %l21, !tbaa !23
  %t297 = load ptr, ptr %l1, !tbaa !29
  %t299 = getelementptr { i64, [5 x i64] }, ptr %t297, i32 0, i32 1
  %t300 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t299, i32 0, i32 2
  %t301 = load ptr, ptr %t300
  store ptr %t301, ptr %l22, !tbaa !29
  br label %bb41
bb40:
  br label %bb45
bb41:
  %t303 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t303, ptr %l158
  %t304 = load i32, ptr %l21, !tbaa !23
  store i32 %t304, ptr %l159, !tbaa !23
  %t305 = load ptr, ptr %l22, !tbaa !29
  %t307 = getelementptr %"compiler/typed:Call", ptr %t305, i32 0, i32 0
  %t308 = load ptr, ptr %t307, !tbaa !29
  store ptr %t308, ptr %l161, !tbaa !29
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load ptr, ptr %l22, !tbaa !29
  %t312 = getelementptr %"compiler/typed:Call", ptr %t310, i32 0, i32 1
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  %t314 = load i64, ptr %l2, !tbaa !24
  %t318 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyAll(ptr %v0, ptr %v1, ptr %v0, ptr %t309, { i64, ptr } %t313, i64 %t314)
  store { i64, ptr } %t318, ptr %l166
  br label %bb42
bb42:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load ptr, ptr %l22, !tbaa !29
  %t322 = getelementptr %"compiler/typed:Call", ptr %t320, i32 0, i32 2
  %t323 = load i32, ptr %t322, !tbaa !23
  %t324 = load i64, ptr %l2, !tbaa !24
  %t328 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %t319, i32 %t323, i64 %t324)
  store i32 %t328, ptr %l171
  br label %bb43
bb43:
  %t329 = load ptr, ptr %l22, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Call", ptr %t329, i32 0, i32 3
  %t332 = load i1, ptr %t331, !tbaa !21
  %t333 = load ptr, ptr %l161, !tbaa !29
  %t334 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t335 = load i32, ptr %l171, !tbaa !23
  %t337 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v1, ptr %v0, ptr %v2, ptr %t333, { i64, ptr } %t334, i32 %t335, i1 %t332, i1 false)
  store %"compiler/typed:Call" %t337, ptr %l174
  br label %bb44
bb44:
  %t338 = load %"compiler/typed:Call", ptr %l174
  %t339 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Call" %t338, ptr %t339
  store { i64, [5 x i64] } zeroinitializer, ptr %t340
  %t341 = getelementptr { i64, [5 x i64] }, ptr %t340, i32 0, i32 0
  store i64 6, ptr %t341
  %t342 = load %"compiler/source:Span", ptr %l158
  %t343 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t342, 0
  %t344 = load i32, ptr %l159, !tbaa !23
  %t345 = insertvalue { %"compiler/source:Span", i32, ptr } %t343, i32 %t344, 1
  %t347 = insertvalue { %"compiler/source:Span", i32, ptr } %t345, ptr %t339, 2
  %t348 = getelementptr { i64, [5 x i64] }, ptr %t340, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t347, ptr %t348
  %t349 = load { i64, [5 x i64] }, ptr %t340
  %t351 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t349, ptr %t351
  store ptr %t351, ptr %rv
  br label %ret
bb45:
  %t353 = load ptr, ptr %l1, !tbaa !29
  store ptr %t353, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t354 = load ptr, ptr %l178, !tbaa !29
  %t355 = icmp ne ptr %t354, null
  br i1 %t355, label %bb46, label %bb47
bb46:
  %t357 = load ptr, ptr %l178, !tbaa !29
  %t358 = load i64, ptr %t357, !range !{i64 0, i64 18}
  %t360 = icmp eq i64 %t358, 7
  store i1 %t360, ptr %l179, !tbaa !21
  br label %bb47
bb47:
  %t361 = load i1, ptr %l179, !tbaa !21
  br i1 %t361, label %bb48, label %bb49
bb48:
  %t362 = load ptr, ptr %l1, !tbaa !29
  %t364 = getelementptr { i64, [5 x i64] }, ptr %t362, i32 0, i32 1
  %t365 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t364, i32 0, i32 0
  %t366 = load %"compiler/source:Span", ptr %t365
  store %"compiler/source:Span" %t366, ptr %l23
  %t368 = load ptr, ptr %l1, !tbaa !29
  %t370 = getelementptr { i64, [5 x i64] }, ptr %t368, i32 0, i32 1
  %t371 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t370, i32 0, i32 1
  %t372 = load i32, ptr %t371
  store i32 %t372, ptr %l24, !tbaa !23
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t376 = getelementptr { i64, [5 x i64] }, ptr %t374, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t376, i32 0, i32 2
  %t378 = load ptr, ptr %t377
  store ptr %t378, ptr %l25, !tbaa !29
  br label %bb50
bb49:
  br label %bb61
bb50:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load ptr, ptr %l25, !tbaa !29
  %t383 = getelementptr %"compiler/typed:Make", ptr %t381, i32 0, i32 2
  %t384 = load { i64, ptr }, ptr %t383, !tbaa !27
  %t385 = load i64, ptr %l2, !tbaa !24
  %t389 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyAll(ptr %v0, ptr %v1, ptr %v2, ptr %t380, { i64, ptr } %t384, i64 %t385)
  store { i64, ptr } %t389, ptr %l192
  br label %bb51
bb51:
  %t390 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t390, ptr %l26, !tbaa !27
  store ptr null, ptr %l27, !tbaa !29
  %t391 = load ptr, ptr %l25, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Make", ptr %t391, i32 0, i32 3
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t396 = icmp eq ptr %t394, null
  %t398 = xor i1 %t396, true
  br i1 %t398, label %bb52, label %bb53
bb52:
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l197, !tbaa !29
  %t401 = load ptr, ptr %l25, !tbaa !29
  %t403 = getelementptr %"compiler/typed:Make", ptr %t401, i32 0, i32 3
  %t404 = load ptr, ptr %t403, !tbaa !29
  %t406 = icmp eq ptr %t404, null
  br i1 %t406, label %bb54, label %bb55
bb53:
  br label %bb58
bb54:
  call void @__olang_check_failed(ptr @olang_loc_4aef7e9433005aa6_9cd0eb13e1392442)
  unreachable
bb55:
  br label %bb56
bb56:
  %t408 = load ptr, ptr %l25, !tbaa !29
  %t410 = getelementptr %"compiler/typed:Make", ptr %t408, i32 0, i32 3
  %t411 = load ptr, ptr %t410, !tbaa !29
  %t412 = load i64, ptr %l2, !tbaa !24
  %t413 = load ptr, ptr %l197, !tbaa !29
  %t416 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t413, ptr %t411, i64 %t412)
  store ptr %t416, ptr %l204
  br label %bb57
bb57:
  %t417 = load ptr, ptr %l204, !tbaa !29
  store ptr %t417, ptr %l27, !tbaa !29
  br label %bb58
bb58:
  %t419 = load %"compiler/source:Span", ptr %l23
  store %"compiler/source:Span" %t419, ptr %l206
  %t420 = load i32, ptr %l24, !tbaa !23
  store i32 %t420, ptr %l207, !tbaa !23
  %t421 = load ptr, ptr %l25, !tbaa !29
  %t423 = getelementptr %"compiler/typed:Make", ptr %t421, i32 0, i32 0
  %t424 = load i32, ptr %t423, !range !{i32 0, i32 5}
  store i32 %t424, ptr %l209
  %t425 = load ptr, ptr %l25, !tbaa !29
  %t427 = getelementptr %"compiler/typed:Make", ptr %t425, i32 0, i32 1
  %t428 = load i64, ptr %t427, !tbaa !24
  store i64 %t428, ptr %l211, !tbaa !24
  %t429 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t429, ptr %l212, !tbaa !27
  %t430 = load ptr, ptr %l27, !tbaa !29
  store ptr %t430, ptr %l213, !tbaa !29
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load ptr, ptr %l25, !tbaa !29
  %t434 = getelementptr %"compiler/typed:Make", ptr %t432, i32 0, i32 4
  %t435 = load i32, ptr %t434, !tbaa !23
  %t436 = load i64, ptr %l2, !tbaa !24
  %t440 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %t431, i32 %t435, i64 %t436)
  store i32 %t440, ptr %l218
  br label %bb59
bb59:
  %t441 = load ptr, ptr %l25, !tbaa !29
  %t443 = getelementptr %"compiler/typed:Make", ptr %t441, i32 0, i32 5
  %t444 = load i32, ptr %t443, !range !{i32 0, i32 3}
  %t445 = load i32, ptr %l209, !range !{i32 0, i32 5}
  %t446 = load i64, ptr %l211, !tbaa !24
  %t447 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t448 = load ptr, ptr %l213, !tbaa !29
  %t449 = load i32, ptr %l218, !tbaa !23
  %t451 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t445, i64 %t446, { i64, ptr } %t447, ptr %t448, i32 %t449, i32 %t444, i1 false)
  store %"compiler/typed:Make" %t451, ptr %l221
  br label %bb60
bb60:
  %t452 = load %"compiler/typed:Make", ptr %l221
  %t453 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t452, ptr %t453
  store { i64, [5 x i64] } zeroinitializer, ptr %t454
  %t455 = getelementptr { i64, [5 x i64] }, ptr %t454, i32 0, i32 0
  store i64 7, ptr %t455
  %t456 = load %"compiler/source:Span", ptr %l206
  %t457 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t456, 0
  %t458 = load i32, ptr %l207, !tbaa !23
  %t459 = insertvalue { %"compiler/source:Span", i32, ptr } %t457, i32 %t458, 1
  %t461 = insertvalue { %"compiler/source:Span", i32, ptr } %t459, ptr %t453, 2
  %t462 = getelementptr { i64, [5 x i64] }, ptr %t454, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t461, ptr %t462
  %t463 = load { i64, [5 x i64] }, ptr %t454
  %t465 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t463, ptr %t465
  store ptr %t465, ptr %rv
  br label %ret
bb61:
  %t467 = load ptr, ptr %l1, !tbaa !29
  store ptr %t467, ptr %l225, !tbaa !29
  store i1 false, ptr %l226, !tbaa !21
  %t468 = load ptr, ptr %l225, !tbaa !29
  %t469 = icmp ne ptr %t468, null
  br i1 %t469, label %bb62, label %bb63
bb62:
  %t471 = load ptr, ptr %l225, !tbaa !29
  %t472 = load i64, ptr %t471, !range !{i64 0, i64 18}
  %t474 = icmp eq i64 %t472, 9
  store i1 %t474, ptr %l226, !tbaa !21
  br label %bb63
bb63:
  %t475 = load i1, ptr %l226, !tbaa !21
  br i1 %t475, label %bb64, label %bb65
bb64:
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr { i64, [5 x i64] }, ptr %t476, i32 0, i32 1
  %t479 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t478, i32 0, i32 0
  %t480 = load %"compiler/source:Span", ptr %t479
  store %"compiler/source:Span" %t480, ptr %l28
  %t482 = load ptr, ptr %l1, !tbaa !29
  %t484 = getelementptr { i64, [5 x i64] }, ptr %t482, i32 0, i32 1
  %t485 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t484, i32 0, i32 1
  %t486 = load i32, ptr %t485
  store i32 %t486, ptr %l29, !tbaa !23
  %t488 = load ptr, ptr %l1, !tbaa !29
  %t490 = getelementptr { i64, [5 x i64] }, ptr %t488, i32 0, i32 1
  %t491 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t490, i32 0, i32 2
  %t492 = load i32, ptr %t491, !range !{i32 0, i32 52}
  store i32 %t492, ptr %l30
  %t494 = load ptr, ptr %l1, !tbaa !29
  %t496 = getelementptr { i64, [5 x i64] }, ptr %t494, i32 0, i32 1
  %t497 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t496, i32 0, i32 3
  %t498 = load i32, ptr %t497, !range !{i32 0, i32 3}
  store i32 %t498, ptr %l31
  %t500 = load ptr, ptr %l1, !tbaa !29
  %t502 = getelementptr { i64, [5 x i64] }, ptr %t500, i32 0, i32 1
  %t503 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t502, i32 0, i32 4
  %t504 = load { i64, ptr }, ptr %t503
  store { i64, ptr } %t504, ptr %l32, !tbaa !27
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t506 = load %"compiler/source:Span", ptr %l28
  store %"compiler/source:Span" %t506, ptr %l239
  %t507 = load i32, ptr %l29, !tbaa !23
  store i32 %t507, ptr %l240, !tbaa !23
  %t508 = load i32, ptr %l30, !range !{i32 0, i32 52}
  store i32 %t508, ptr %l241
  %t509 = load i32, ptr %l31, !range !{i32 0, i32 3}
  store i32 %t509, ptr %l242
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t512 = load i64, ptr %l2, !tbaa !24
  %t516 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyAll(ptr %v0, ptr %v1, ptr %v2, ptr %t510, { i64, ptr } %t511, i64 %t512)
  store { i64, ptr } %t516, ptr %l246
  br label %bb67
bb67:
  store { i64, [5 x i64] } zeroinitializer, ptr %t517
  %t518 = getelementptr { i64, [5 x i64] }, ptr %t517, i32 0, i32 0
  store i64 9, ptr %t518
  %t519 = load %"compiler/source:Span", ptr %l239
  %t520 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t519, 0
  %t521 = load i32, ptr %l240, !tbaa !23
  %t522 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t520, i32 %t521, 1
  %t523 = load i32, ptr %l241, !range !{i32 0, i32 52}
  %t524 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t522, i32 %t523, 2
  %t525 = load i32, ptr %l242, !range !{i32 0, i32 3}
  %t526 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t524, i32 %t525, 3
  %t527 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t528 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t526, { i64, ptr } %t527, 4
  %t529 = getelementptr { i64, [5 x i64] }, ptr %t517, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t528, ptr %t529
  %t530 = load { i64, [5 x i64] }, ptr %t517
  %t532 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t530, ptr %t532
  store ptr %t532, ptr %rv
  br label %ret
bb68:
  %t534 = load ptr, ptr %l1, !tbaa !29
  store ptr %t534, ptr %l249, !tbaa !29
  store i1 false, ptr %l250, !tbaa !21
  %t535 = load ptr, ptr %l249, !tbaa !29
  %t536 = icmp ne ptr %t535, null
  br i1 %t536, label %bb69, label %bb70
bb69:
  %t538 = load ptr, ptr %l249, !tbaa !29
  %t539 = load i64, ptr %t538, !range !{i64 0, i64 18}
  %t541 = icmp eq i64 %t539, 10
  store i1 %t541, ptr %l250, !tbaa !21
  br label %bb70
bb70:
  %t542 = load i1, ptr %l250, !tbaa !21
  br i1 %t542, label %bb71, label %bb72
bb71:
  %t543 = load ptr, ptr %l1, !tbaa !29
  %t545 = getelementptr { i64, [5 x i64] }, ptr %t543, i32 0, i32 1
  %t546 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t545, i32 0, i32 0
  %t547 = load %"compiler/source:Span", ptr %t546
  store %"compiler/source:Span" %t547, ptr %l33
  %t549 = load ptr, ptr %l1, !tbaa !29
  %t551 = getelementptr { i64, [5 x i64] }, ptr %t549, i32 0, i32 1
  %t552 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t551, i32 0, i32 1
  %t553 = load i32, ptr %t552
  store i32 %t553, ptr %l34, !tbaa !23
  %t555 = load ptr, ptr %l1, !tbaa !29
  %t557 = getelementptr { i64, [5 x i64] }, ptr %t555, i32 0, i32 1
  %t558 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t557, i32 0, i32 2
  %t559 = load ptr, ptr %t558
  store ptr %t559, ptr %l35, !tbaa !29
  br label %bb73
bb72:
  br label %bb78
bb73:
  %t561 = load %"compiler/source:Span", ptr %l33
  store %"compiler/source:Span" %t561, ptr %l259
  %t562 = load i32, ptr %l34, !tbaa !23
  store i32 %t562, ptr %l260, !tbaa !23
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load ptr, ptr %l35, !tbaa !29
  %t566 = getelementptr %"compiler/typed:Slice", ptr %t564, i32 0, i32 0
  %t567 = load ptr, ptr %t566, !tbaa !29
  %t568 = load i64, ptr %l2, !tbaa !24
  %t572 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v0, ptr %t563, ptr %t567, i64 %t568)
  store ptr %t572, ptr %l265
  br label %bb74
bb74:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = load ptr, ptr %l35, !tbaa !29
  %t576 = getelementptr %"compiler/typed:Slice", ptr %t574, i32 0, i32 1
  %t577 = load ptr, ptr %t576, !tbaa !29
  %t578 = load i64, ptr %l2, !tbaa !24
  %t582 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t573, ptr %t577, i64 %t578)
  store ptr %t582, ptr %l270
  br label %bb75
bb75:
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t584 = load ptr, ptr %l35, !tbaa !29
  %t586 = getelementptr %"compiler/typed:Slice", ptr %t584, i32 0, i32 2
  %t587 = load ptr, ptr %t586, !tbaa !29
  %t588 = load i64, ptr %l2, !tbaa !24
  %t592 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t583, ptr %t587, i64 %t588)
  store ptr %t592, ptr %l275
  br label %bb76
bb76:
  %t593 = load ptr, ptr %l35, !tbaa !29
  %t595 = getelementptr %"compiler/typed:Slice", ptr %t593, i32 0, i32 3
  %t596 = load i32, ptr %t595, !range !{i32 0, i32 3}
  %t597 = load ptr, ptr %l265, !tbaa !29
  %t598 = load ptr, ptr %l270, !tbaa !29
  %t599 = load ptr, ptr %l275, !tbaa !29
  %t601 = call %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t597, ptr %t598, ptr %t599, i32 %t596)
  store %"compiler/typed:Slice" %t601, ptr %l278
  br label %bb77
bb77:
  %t602 = load %"compiler/typed:Slice", ptr %l278
  %t603 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Slice" %t602, ptr %t603
  store { i64, [5 x i64] } zeroinitializer, ptr %t604
  %t605 = getelementptr { i64, [5 x i64] }, ptr %t604, i32 0, i32 0
  store i64 10, ptr %t605
  %t606 = load %"compiler/source:Span", ptr %l259
  %t607 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t606, 0
  %t608 = load i32, ptr %l260, !tbaa !23
  %t609 = insertvalue { %"compiler/source:Span", i32, ptr } %t607, i32 %t608, 1
  %t611 = insertvalue { %"compiler/source:Span", i32, ptr } %t609, ptr %t603, 2
  %t612 = getelementptr { i64, [5 x i64] }, ptr %t604, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t611, ptr %t612
  %t613 = load { i64, [5 x i64] }, ptr %t604
  %t615 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t613, ptr %t615
  store ptr %t615, ptr %rv
  br label %ret
bb78:
  %t617 = load ptr, ptr %l1, !tbaa !29
  store ptr %t617, ptr %l282, !tbaa !29
  store i1 false, ptr %l283, !tbaa !21
  %t618 = load ptr, ptr %l282, !tbaa !29
  %t619 = icmp ne ptr %t618, null
  br i1 %t619, label %bb79, label %bb80
bb79:
  %t621 = load ptr, ptr %l282, !tbaa !29
  %t622 = load i64, ptr %t621, !range !{i64 0, i64 18}
  %t624 = icmp eq i64 %t622, 11
  store i1 %t624, ptr %l283, !tbaa !21
  br label %bb80
bb80:
  %t625 = load i1, ptr %l283, !tbaa !21
  br i1 %t625, label %bb81, label %bb82
bb81:
  %t626 = load ptr, ptr %l1, !tbaa !29
  %t628 = getelementptr { i64, [5 x i64] }, ptr %t626, i32 0, i32 1
  %t629 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t628, i32 0, i32 0
  %t630 = load %"compiler/source:Span", ptr %t629
  store %"compiler/source:Span" %t630, ptr %l36
  %t632 = load ptr, ptr %l1, !tbaa !29
  %t634 = getelementptr { i64, [5 x i64] }, ptr %t632, i32 0, i32 1
  %t635 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t634, i32 0, i32 1
  %t636 = load i32, ptr %t635
  store i32 %t636, ptr %l37, !tbaa !23
  %t638 = load ptr, ptr %l1, !tbaa !29
  %t640 = getelementptr { i64, [5 x i64] }, ptr %t638, i32 0, i32 1
  %t641 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t640, i32 0, i32 2
  %t642 = load ptr, ptr %t641
  store ptr %t642, ptr %l38, !tbaa !29
  br label %bb83
bb82:
  br label %bb94
bb83:
  store ptr null, ptr %l39, !tbaa !29
  %t644 = load ptr, ptr %l38, !tbaa !29
  %t646 = getelementptr %"compiler/typed:Cond", ptr %t644, i32 0, i32 1
  %t647 = load ptr, ptr %t646, !tbaa !29
  %t649 = icmp eq ptr %t647, null
  %t651 = xor i1 %t649, true
  br i1 %t651, label %bb84, label %bb85
bb84:
  %t653 = load ptr, ptr %l0, !tbaa !29
  store ptr %t653, ptr %l296, !tbaa !29
  %t654 = load ptr, ptr %l38, !tbaa !29
  %t656 = getelementptr %"compiler/typed:Cond", ptr %t654, i32 0, i32 1
  %t657 = load ptr, ptr %t656, !tbaa !29
  %t659 = icmp eq ptr %t657, null
  br i1 %t659, label %bb86, label %bb87
bb85:
  br label %bb90
bb86:
  call void @__olang_check_failed(ptr @olang_loc_89a248f11218248d_cad7b116269b1029)
  unreachable
bb87:
  br label %bb88
bb88:
  %t661 = load ptr, ptr %l38, !tbaa !29
  %t663 = getelementptr %"compiler/typed:Cond", ptr %t661, i32 0, i32 1
  %t664 = load ptr, ptr %t663, !tbaa !29
  %t665 = load i64, ptr %l2, !tbaa !24
  %t666 = load ptr, ptr %l296, !tbaa !29
  %t669 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t666, ptr %t664, i64 %t665)
  store ptr %t669, ptr %l303
  br label %bb89
bb89:
  %t670 = load ptr, ptr %l303, !tbaa !29
  store ptr %t670, ptr %l39, !tbaa !29
  br label %bb90
bb90:
  %t672 = load %"compiler/source:Span", ptr %l36
  store %"compiler/source:Span" %t672, ptr %l305
  %t673 = load i32, ptr %l37, !tbaa !23
  store i32 %t673, ptr %l306, !tbaa !23
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load ptr, ptr %l38, !tbaa !29
  %t677 = getelementptr %"compiler/typed:Cond", ptr %t675, i32 0, i32 0
  %t678 = load ptr, ptr %t677, !tbaa !29
  %t679 = load i64, ptr %l2, !tbaa !24
  %t683 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t674, ptr %t678, i64 %t679)
  store ptr %t683, ptr %l311
  br label %bb91
bb91:
  %t684 = load ptr, ptr %l39, !tbaa !29
  store ptr %t684, ptr %l312, !tbaa !29
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t686 = load ptr, ptr %l38, !tbaa !29
  %t688 = getelementptr %"compiler/typed:Cond", ptr %t686, i32 0, i32 2
  %t689 = load ptr, ptr %t688, !tbaa !29
  %t690 = load i64, ptr %l2, !tbaa !24
  %t694 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t685, ptr %t689, i64 %t690)
  store ptr %t694, ptr %l317
  br label %bb92
bb92:
  %t695 = load ptr, ptr %l311, !tbaa !29
  %t696 = load ptr, ptr %l312, !tbaa !29
  %t697 = load ptr, ptr %l317, !tbaa !29
  %t698 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v2, ptr %v0, ptr %v2, ptr %t695, ptr %t696, ptr %t697)
  store %"compiler/typed:Cond" %t698, ptr %l318
  br label %bb93
bb93:
  %t699 = load %"compiler/typed:Cond", ptr %l318
  %t700 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Cond" %t699, ptr %t700
  store { i64, [5 x i64] } zeroinitializer, ptr %t701
  %t702 = getelementptr { i64, [5 x i64] }, ptr %t701, i32 0, i32 0
  store i64 11, ptr %t702
  %t703 = load %"compiler/source:Span", ptr %l305
  %t704 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t703, 0
  %t705 = load i32, ptr %l306, !tbaa !23
  %t706 = insertvalue { %"compiler/source:Span", i32, ptr } %t704, i32 %t705, 1
  %t708 = insertvalue { %"compiler/source:Span", i32, ptr } %t706, ptr %t700, 2
  %t709 = getelementptr { i64, [5 x i64] }, ptr %t701, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t708, ptr %t709
  %t710 = load { i64, [5 x i64] }, ptr %t701
  %t712 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t710, ptr %t712
  store ptr %t712, ptr %rv
  br label %ret
bb94:
  %t714 = load ptr, ptr %l1, !tbaa !29
  store ptr %t714, ptr %l322, !tbaa !29
  store i1 false, ptr %l323, !tbaa !21
  %t715 = load ptr, ptr %l322, !tbaa !29
  %t716 = icmp ne ptr %t715, null
  br i1 %t716, label %bb95, label %bb96
bb95:
  %t718 = load ptr, ptr %l322, !tbaa !29
  %t719 = load i64, ptr %t718, !range !{i64 0, i64 18}
  %t721 = icmp eq i64 %t719, 17
  store i1 %t721, ptr %l323, !tbaa !21
  br label %bb96
bb96:
  %t722 = load i1, ptr %l323, !tbaa !21
  br i1 %t722, label %bb97, label %bb98
bb97:
  %t723 = load ptr, ptr %l1, !tbaa !29
  %t725 = getelementptr { i64, [5 x i64] }, ptr %t723, i32 0, i32 1
  %t726 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t725, i32 0, i32 0
  %t727 = load %"compiler/source:Span", ptr %t726
  store %"compiler/source:Span" %t727, ptr %l40
  %t729 = load ptr, ptr %l1, !tbaa !29
  %t731 = getelementptr { i64, [5 x i64] }, ptr %t729, i32 0, i32 1
  %t732 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t731, i32 0, i32 1
  %t733 = load i64, ptr %t732
  store i64 %t733, ptr %l41, !tbaa !24
  %t735 = load ptr, ptr %l1, !tbaa !29
  %t737 = getelementptr { i64, [5 x i64] }, ptr %t735, i32 0, i32 1
  %t738 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t737, i32 0, i32 2
  %t739 = load ptr, ptr %t738
  store ptr %t739, ptr %l42, !tbaa !29
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t741 = load %"compiler/source:Span", ptr %l40
  store %"compiler/source:Span" %t741, ptr %l332
  %t742 = load i64, ptr %l41, !tbaa !24
  store i64 %t742, ptr %l333, !tbaa !24
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t744 = load ptr, ptr %l42, !tbaa !29
  %t745 = load i64, ptr %l2, !tbaa !24
  %t749 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t743, ptr %t744, i64 %t745)
  store ptr %t749, ptr %l337
  br label %bb100
bb100:
  store { i64, [5 x i64] } zeroinitializer, ptr %t750
  %t751 = getelementptr { i64, [5 x i64] }, ptr %t750, i32 0, i32 0
  store i64 17, ptr %t751
  %t752 = load %"compiler/source:Span", ptr %l332
  %t753 = insertvalue { %"compiler/source:Span", i64, ptr } undef, %"compiler/source:Span" %t752, 0
  %t754 = load i64, ptr %l333, !tbaa !24
  %t755 = insertvalue { %"compiler/source:Span", i64, ptr } %t753, i64 %t754, 1
  %t756 = load ptr, ptr %l337, !tbaa !29
  %t757 = insertvalue { %"compiler/source:Span", i64, ptr } %t755, ptr %t756, 2
  %t758 = getelementptr { i64, [5 x i64] }, ptr %t750, i32 0, i32 1
  store { %"compiler/source:Span", i64, ptr } %t757, ptr %t758
  %t759 = load { i64, [5 x i64] }, ptr %t750
  %t761 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t759, ptr %t761
  store ptr %t761, ptr %rv
  br label %ret
bb101:
  %t763 = load ptr, ptr %l1, !tbaa !29
  store ptr %t763, ptr %l340, !tbaa !29
  store i1 false, ptr %l341, !tbaa !21
  %t764 = load ptr, ptr %l340, !tbaa !29
  %t765 = icmp ne ptr %t764, null
  br i1 %t765, label %bb102, label %bb103
bb102:
  %t767 = load ptr, ptr %l340, !tbaa !29
  %t768 = load i64, ptr %t767, !range !{i64 0, i64 18}
  %t770 = icmp eq i64 %t768, 15
  store i1 %t770, ptr %l341, !tbaa !21
  br label %bb103
bb103:
  %t771 = load i1, ptr %l341, !tbaa !21
  br i1 %t771, label %bb104, label %bb105
bb104:
  %t772 = load ptr, ptr %l1, !tbaa !29
  %t774 = getelementptr { i64, [5 x i64] }, ptr %t772, i32 0, i32 1
  %t775 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t774, i32 0, i32 0
  %t776 = load %"compiler/source:Span", ptr %t775
  store %"compiler/source:Span" %t776, ptr %l43
  %t778 = load ptr, ptr %l1, !tbaa !29
  %t780 = getelementptr { i64, [5 x i64] }, ptr %t778, i32 0, i32 1
  %t781 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t780, i32 0, i32 1
  %t782 = load i32, ptr %t781
  store i32 %t782, ptr %l44, !tbaa !23
  %t784 = load ptr, ptr %l1, !tbaa !29
  %t786 = getelementptr { i64, [5 x i64] }, ptr %t784, i32 0, i32 1
  %t787 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t786, i32 0, i32 2
  %t788 = load ptr, ptr %t787
  store ptr %t788, ptr %l45, !tbaa !29
  br label %bb106
bb105:
  br label %bb118
bb106:
  %t790 = load ptr, ptr %l45, !tbaa !29
  store ptr %t790, ptr %l350, !tbaa !29
  store i1 false, ptr %l351, !tbaa !21
  %t791 = load ptr, ptr %l350, !tbaa !29
  %t792 = icmp ne ptr %t791, null
  br i1 %t792, label %bb107, label %bb108
bb107:
  %t794 = load ptr, ptr %l350, !tbaa !29
  %t795 = load i64, ptr %t794, !range !{i64 0, i64 3}
  %t797 = icmp eq i64 %t795, 0
  store i1 %t797, ptr %l351, !tbaa !21
  br label %bb108
bb108:
  %t798 = load i1, ptr %l351, !tbaa !21
  br i1 %t798, label %bb109, label %bb110
bb109:
  %t799 = load ptr, ptr %l45, !tbaa !29
  %t801 = getelementptr { i64, [4 x i64] }, ptr %t799, i32 0, i32 1
  %t802 = getelementptr { i32 }, ptr %t801, i32 0, i32 0
  %t803 = load i32, ptr %t802
  store i32 %t803, ptr %l46, !tbaa !23
  br label %bb111
bb110:
  br label %bb112
bb111:
  %t805 = load %"compiler/source:Span", ptr %l43
  %t806 = load i32, ptr %l44, !tbaa !23
  %t807 = load i32, ptr %l46, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t808
  %t809 = getelementptr { i64, [4 x i64] }, ptr %t808, i32 0, i32 0
  store i64 0, ptr %t809
  %t811 = insertvalue { i32 } undef, i32 %t807, 0
  %t812 = getelementptr { i64, [4 x i64] }, ptr %t808, i32 0, i32 1
  store { i32 } %t811, ptr %t812
  %t813 = load { i64, [4 x i64] }, ptr %t808
  %t815 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t813, ptr %t815
  store { i64, [5 x i64] } zeroinitializer, ptr %t816
  %t817 = getelementptr { i64, [5 x i64] }, ptr %t816, i32 0, i32 0
  store i64 15, ptr %t817
  %t819 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t805, 0
  %t821 = insertvalue { %"compiler/source:Span", i32, ptr } %t819, i32 %t806, 1
  %t823 = insertvalue { %"compiler/source:Span", i32, ptr } %t821, ptr %t815, 2
  %t824 = getelementptr { i64, [5 x i64] }, ptr %t816, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t823, ptr %t824
  %t825 = load { i64, [5 x i64] }, ptr %t816
  %t827 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t825, ptr %t827
  store ptr %t827, ptr %rv
  br label %ret
bb112:
  br i1 true, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  call void @__olang_check_failed(ptr @olang_loc_eb46e205ba3ff6f_6cc0aaf3953c4d5b)
  unreachable
bb117:
  br label %bb123
bb118:
  br i1 true, label %bb119, label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_b8f4ea1c8ca382ae_7341728a048bae5a)
  unreachable
bb123:
  %t829 = load ptr, ptr %l0, !tbaa !29
  store ptr %t829, ptr %l363, !tbaa !29
  %t830 = load ptr, ptr %l1, !tbaa !29
  %t832 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t830)
  store %"compiler/source:Span" %t832, ptr %l365
  br label %bb124
bb124:
  %t833 = load ptr, ptr %l363, !tbaa !29
  %t834 = load %"compiler/source:Span", ptr %l365
  %t835 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t833, %"compiler/source:Span" %t834)
  store ptr %t835, ptr %l366
  br label %bb125
bb125:
  %t836 = load ptr, ptr %l366, !tbaa !29
  store ptr %t836, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecounted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, i64 %a4, i64 %a5, i32 %a6, i64 %a7, i64 %a8, ptr %a9, i32 %a10) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i1
  %l19 = alloca i64
  %l20 = alloca { i64, i64, i64 }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca { i64, i64, i64 }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l41 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i32
  %l62 = alloca ptr
  %l64 = alloca i32
  %l67 = alloca i32
  %l68 = alloca i32
  %l72 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l77 = alloca i32
  %l81 = alloca ptr
  %l86 = alloca ptr
  %l90 = alloca ptr
  %l106 = alloca i64
  %l110 = alloca { i64, i64, i64 }
  %l115 = alloca ptr
  %l120 = alloca ptr
  %l127 = alloca ptr
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l133 = alloca %"compiler/source:Span"
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l136 = alloca i32
  %l137 = alloca i32
  %l141 = alloca ptr
  %l145 = alloca ptr
  %l147 = alloca ptr
  %l149 = alloca ptr
  %l152 = alloca i32
  %l163 = alloca i64
  %l164 = alloca ptr
  %l165 = alloca %"compiler/source:Span"
  %l168 = alloca i32
  %l172 = alloca ptr
  %l179 = alloca i32
  %l180 = alloca %"compiler/source:Span"
  %l185 = alloca i32
  %l189 = alloca ptr
  %l192 = alloca ptr
  %l193 = alloca %"compiler/source:Span"
  %l194 = alloca %"compiler/source:Span"
  %l199 = alloca i32
  %l200 = alloca ptr
  %l204 = alloca ptr
  %l206 = alloca %"compiler/typed:Elem"
  %l210 = alloca ptr
  %l215 = alloca ptr
  %l217 = alloca ptr
  %l218 = alloca %"compiler/source:Span"
  %l219 = alloca i32
  %l220 = alloca i32
  %l224 = alloca ptr
  %l225 = alloca ptr
  %l226 = alloca %"compiler/source:Span"
  %l227 = alloca i32
  %l228 = alloca i32
  %l232 = alloca ptr
  %l236 = alloca ptr
  %l238 = alloca ptr
  %l240 = alloca ptr
  %l242 = alloca ptr
  %l244 = alloca i32
  %l245 = alloca %"compiler/source:Span"
  %l247 = alloca i32
  %l250 = alloca i64
  %l255 = alloca ptr
  %l257 = alloca ptr
  %l261 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l267 = alloca ptr
  %l269 = alloca ptr
  %l273 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l275 = alloca ptr
  %l277 = alloca ptr
  %l281 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l282 = alloca ptr
  %l283 = alloca %"compiler/source:Span"
  %l284 = alloca ptr
  %l285 = alloca i64
  %l289 = alloca ptr
  %l290 = alloca %"compiler/source:Span"
  %l293 = alloca i32
  %l303 = alloca i64
  %l305 = alloca ptr
  %l308 = alloca i64
  %l309 = alloca i32
  %l310 = alloca i64
  %l312 = alloca ptr
  %l315 = alloca i64
  %l316 = alloca i32
  %l322 = alloca ptr
  %l325 = alloca i64
  %l329 = alloca { i64, i64, i64 }
  %l333 = alloca ptr
  %l334 = alloca %"compiler/source:Span"
  %l335 = alloca i32
  %l336 = alloca i32
  %l340 = alloca ptr
  %l344 = alloca ptr
  %l346 = alloca ptr
  %l364 = alloca ptr
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %t91 = alloca { i64, [3 x i64] }, align 8
  %t253 = alloca { i64, [1 x i64] }, align 8
  %t277 = alloca { i64, [3 x i64] }, align 8
  %t329 = alloca { i64, [4 x i64] }, align 8
  %t369 = alloca { i64, [4 x i64] }, align 8
  %t440 = alloca { i64, [1 x i64] }, align 8
  %t543 = alloca { i64, [3 x i64] }, align 8
  %t659 = alloca { i64, [4 x i64] }, align 8
  %t672 = alloca { i64, [3 x i64] }, align 8
  %t703 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a5, ptr %l5
  store ptr %a9, ptr %l9
  store i32 %a10, ptr %l10
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  %t5 = xor i1 %t3, true
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 117
  %t10 = load i64, ptr %t9, !tbaa !24
  %t12 = icmp eq i64 %t10, 1
  store i1 %t12, ptr %l41, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l41, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Compr", ptr %t15, i32 0, i32 5
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb6, label %bb7
bb5:
  br label %bb24
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 124
  %t25 = load i64, ptr %t24, !tbaa !24
  %t27 = icmp sge i64 %t25, 0
  store i1 %t27, ptr %l48, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l48, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load i32, ptr %l10, !tbaa !23
  %t31 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = icmp ne i32 %t30, %t31
  store i1 %t34, ptr %l52, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l52, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l58, !tbaa !29
  %t43 = load i32, ptr %l10, !tbaa !23
  store i32 %t43, ptr %l59, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l62, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t50)
  store i32 %t52, ptr %l64
  br label %bb14
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprOpen(ptr %v0, ptr %t53, %"compiler/source:Span" %t54)
  br label %bb22
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 124
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = load ptr, ptr %l62, !tbaa !29
  %t62 = load i32, ptr %l64, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t61, i32 %t62, i64 %t60)
  store i32 %t64, ptr %l67
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l58, !tbaa !29
  %t66 = load i32, ptr %l59, !tbaa !23
  %t67 = load i32, ptr %l67, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t65, i32 %t66, i32 %t67)
  store i32 %t68, ptr %l68
  br label %bb16
bb16:
  %t69 = load i32, ptr %l68, !tbaa !23
  store i32 %t69, ptr %l11, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l1
  %t72 = load i32, ptr %l11, !tbaa !23
  %t76 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t70, %"compiler/source:Span" %t71, i32 %t72)
  store i64 %t76, ptr %l72
  br label %bb17
bb17:
  %t77 = load i64, ptr %l72, !tbaa !24
  store i64 %t77, ptr %l12, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l73, !tbaa !29
  %t79 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t79, ptr %l74
  %t80 = load i64, ptr %l12, !tbaa !24
  %t82 = trunc i64 %t80 to i32
  store i32 %t82, ptr %l77, !tbaa !23
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  %t86 = load i32, ptr %l11, !tbaa !23
  %t90 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t84, %"compiler/source:Span" %t85, i32 %t86, i64 0)
  store ptr %t90, ptr %l81
  br label %bb18
bb18:
  store { i64, [3 x i64] } zeroinitializer, ptr %t91
  %t92 = getelementptr { i64, [3 x i64] }, ptr %t91, i32 0, i32 0
  store i64 0, ptr %t92
  %t93 = load %"compiler/source:Span", ptr %l74
  %t94 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t93, 0
  %t95 = load i32, ptr %l77, !tbaa !23
  %t96 = insertvalue { %"compiler/source:Span", i32, ptr } %t94, i32 %t95, 1
  %t97 = load ptr, ptr %l81, !tbaa !29
  %t98 = insertvalue { %"compiler/source:Span", i32, ptr } %t96, ptr %t97, 2
  %t99 = getelementptr { i64, [3 x i64] }, ptr %t91, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t98, ptr %t99
  %t100 = load { i64, [3 x i64] }, ptr %t91
  %t102 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t100, ptr %t102
  %t103 = load ptr, ptr %l73, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t103, ptr %t102)
  br label %bb19
bb19:
  %t105 = load i64, ptr %l12, !tbaa !24
  store i64 %t105, ptr %l13, !tbaa !24
  store i1 true, ptr %l14, !tbaa !21
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t107)
  store ptr %t109, ptr %l86
  br label %bb20
bb20:
  %t110 = load ptr, ptr %l86, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Body", ptr %t110, i32 0, i32 7
  %t113 = load i64, ptr %l13, !tbaa !24
  %t116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  store ptr %t116, ptr %l90
  br label %bb21
bb21:
  %t117 = load ptr, ptr %l90, !tbaa !29
  %t119 = load i1, ptr %l14, !tbaa !21
  %t122 = getelementptr %"compiler/typed:Local", ptr %t117, i32 0, i32 6
  store i1 %t119, ptr %t122, !tbaa !21
  %t123 = load i64, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l3, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 122
  store i64 %t123, ptr %t131, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 123
  store i64 %t125, ptr %t136, !tbaa !24
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 117
  store i64 3, ptr %t141, !tbaa !24
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 124
  store i64 -1, ptr %t144, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 37
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t147)
  store i64 %t149, ptr %l106
  br label %bb25
bb25:
  %t150 = load i64, ptr %l106, !tbaa !24
  store i64 %t150, ptr %l19, !tbaa !24
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l1
  %t156 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t151, i32 2, %"compiler/source:Span" %t152)
  store { i64, i64, i64 } %t156, ptr %l110
  br label %bb26
bb26:
  %t157 = load { i64, i64, i64 }, ptr %l110
  store { i64, i64, i64 } %t157, ptr %l20
  %t158 = getelementptr { i64, i64, i64 }, ptr %l20, i32 0, i32 0
  %t159 = load i64, ptr %t158, !tbaa !24
  store i64 %t159, ptr %l21, !tbaa !24
  %t161 = getelementptr { i64, i64, i64 }, ptr %l20, i32 0, i32 1
  %t162 = load i64, ptr %t161, !tbaa !24
  store i64 %t162, ptr %l22, !tbaa !24
  %t164 = getelementptr { i64, i64, i64 }, ptr %l20, i32 0, i32 2
  %t165 = load i64, ptr %t164, !tbaa !24
  store i64 %t165, ptr %l23, !tbaa !24
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t167)
  store ptr %t169, ptr %l115
  br label %bb27
bb27:
  %t170 = load ptr, ptr %l115, !tbaa !29
  %t172 = getelementptr %"compiler/check:frame", ptr %t170, i32 0, i32 10
  %t173 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t172, i64 %t173)
  br label %bb28
bb28:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t176)
  store ptr %t178, ptr %l120
  br label %bb29
bb29:
  %t179 = load ptr, ptr %l120, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Body", ptr %t179, i32 0, i32 19
  %t182 = load i64, ptr %l21, !tbaa !24
  %t184 = trunc i64 %t182 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t181, i32 %t184)
  br label %bb30
bb30:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t188)
  store ptr %t190, ptr %l127
  br label %bb31
bb31:
  %t191 = load ptr, ptr %l127, !tbaa !29
  %t193 = getelementptr %"compiler/check:frame", ptr %t191, i32 0, i32 11
  %t194 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t193, i64 %t194)
  br label %bb32
bb32:
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l131, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l132, !tbaa !29
  %t199 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t199, ptr %l133
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l134, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t201, ptr %l135
  %t202 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t202, ptr %l136, !tbaa !23
  store i32 15, ptr %l137
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l1
  %t205 = load i64, ptr %l3, !tbaa !24
  %t209 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t203, %"compiler/source:Span" %t204, i64 %t205)
  store ptr %t209, ptr %l141
  br label %bb33
bb33:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load %"compiler/source:Span", ptr %l1
  %t216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t210, %"compiler/source:Span" %t211, i64 %a4)
  store ptr %t216, ptr %l145
  br label %bb34
bb34:
  %t217 = load ptr, ptr %l145, !tbaa !29
  %t218 = load ptr, ptr %l134, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l135
  %t220 = load i32, ptr %l136, !tbaa !23
  %t221 = load i32, ptr %l137, !range !{i32 0, i32 52}
  %t222 = load ptr, ptr %l141, !tbaa !29
  %t224 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t218, %"compiler/source:Span" %t219, i32 %t220, i32 %t221, ptr %t222, ptr %t217)
  store ptr %t224, ptr %l147
  br label %bb35
bb35:
  %t225 = load i64, ptr %l21, !tbaa !24
  %t226 = load ptr, ptr %l132, !tbaa !29
  %t227 = load %"compiler/source:Span", ptr %l133
  %t228 = load ptr, ptr %l147, !tbaa !29
  %t230 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t226, %"compiler/source:Span" %t227, ptr %t228, i64 %t225)
  store ptr %t230, ptr %l149
  br label %bb36
bb36:
  %t231 = load ptr, ptr %l131, !tbaa !29
  %t232 = load ptr, ptr %l149, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t231, ptr %t232)
  br label %bb37
bb37:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l3, !tbaa !24
  %t237 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t233, i64 %t234)
  store i32 %t237, ptr %l152
  br label %bb38
bb38:
  %t238 = load i32, ptr %l152, !tbaa !23
  store i32 %t238, ptr %l24, !tbaa !23
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr %"compiler/ast:ForIn", ptr %t239, i32 0, i32 0
  %t242 = load i32, ptr %t241, !tbaa !23
  %t244 = icmp ne i32 %t242, 0
  br i1 %t244, label %bb39, label %bb40
bb39:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l2, !tbaa !29
  %t249 = getelementptr %"compiler/ast:ForIn", ptr %t247, i32 0, i32 0
  %t250 = load i32, ptr %t249, !tbaa !23
  %t251 = load %"compiler/source:Span", ptr %l1
  %t252 = load i32, ptr %l24, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [1 x i64] }, ptr %t253, i32 0, i32 0
  store i64 0, ptr %t254
  %t255 = load { i64, [1 x i64] }, ptr %t253
  %t262 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t246, i32 %t250, %"compiler/source:Span" %t251, i32 %t252, i32 1, { i64, [1 x i64] } %t255)
  store i64 %t262, ptr %l163
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t263 = load i64, ptr %l163, !tbaa !24
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l164, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t265, ptr %l165
  %t268 = trunc i64 %t263 to i32
  store i32 %t268, ptr %l168, !tbaa !23
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load %"compiler/source:Span", ptr %l1
  %t272 = load i64, ptr %l3, !tbaa !24
  %t276 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t270, %"compiler/source:Span" %t271, i64 %t272)
  store ptr %t276, ptr %l172
  br label %bb42
bb42:
  store { i64, [3 x i64] } zeroinitializer, ptr %t277
  %t278 = getelementptr { i64, [3 x i64] }, ptr %t277, i32 0, i32 0
  store i64 0, ptr %t278
  %t279 = load %"compiler/source:Span", ptr %l165
  %t280 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t279, 0
  %t281 = load i32, ptr %l168, !tbaa !23
  %t282 = insertvalue { %"compiler/source:Span", i32, ptr } %t280, i32 %t281, 1
  %t283 = load ptr, ptr %l172, !tbaa !29
  %t284 = insertvalue { %"compiler/source:Span", i32, ptr } %t282, ptr %t283, 2
  %t285 = getelementptr { i64, [3 x i64] }, ptr %t277, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t284, ptr %t285
  %t286 = load { i64, [3 x i64] }, ptr %t277
  %t288 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t286, ptr %t288
  %t289 = load ptr, ptr %l164, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t289, ptr %t288)
  br label %bb43
bb43:
  br label %bb44
bb44:
  store ptr null, ptr %l26, !tbaa !29
  %t291 = load i64, ptr %l5, !tbaa !24
  %t293 = icmp sge i64 %t291, 0
  br i1 %t293, label %bb45, label %bb46
bb45:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i64, ptr %l5, !tbaa !24
  %t299 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t295, i64 %t296)
  store i32 %t299, ptr %l179
  br label %bb47
bb46:
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l217, !tbaa !29
  %t301 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t301, ptr %l218
  %t302 = load i32, ptr %l24, !tbaa !23
  store i32 %t302, ptr %l219, !tbaa !23
  store i32 3, ptr %l220
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l1
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t303, %"compiler/source:Span" %t304, i64 %a7)
  store ptr %t309, ptr %l224
  br label %bb55
bb47:
  %t310 = load i32, ptr %l179, !tbaa !23
  %t311 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t311, ptr %l180
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/check:Checker", ptr %t312, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t317, i32 %t310)
  store i32 %t321, ptr %l185
  br label %bb48
bb48:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load %"compiler/source:Span", ptr %l1
  %t324 = load i64, ptr %l5, !tbaa !24
  %t328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t322, %"compiler/source:Span" %t323, i64 %t324)
  store ptr %t328, ptr %l189
  br label %bb49
bb49:
  store { i64, [4 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 0
  store i64 2, ptr %t330
  %t331 = load %"compiler/source:Span", ptr %l180
  %t332 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t331, 0
  %t333 = load i32, ptr %l185, !tbaa !23
  %t334 = insertvalue { %"compiler/source:Span", i32, ptr } %t332, i32 %t333, 1
  %t335 = load ptr, ptr %l189, !tbaa !29
  %t336 = insertvalue { %"compiler/source:Span", i32, ptr } %t334, ptr %t335, 2
  %t337 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t336, ptr %t337
  %t338 = load { i64, [4 x i64] }, ptr %t329
  %t340 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t338, ptr %t340
  store ptr %t340, ptr %l28, !tbaa !29
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l192, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t343, ptr %l193
  %t344 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t344, ptr %l194
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/check:Checker", ptr %t345, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = getelementptr %"compiler/generic:Program", ptr %t348, i32 0, i32 2
  %t354 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t350, i32 %a6)
  store i32 %t354, ptr %l199
  br label %bb50
bb50:
  %t355 = load ptr, ptr %l28, !tbaa !29
  store ptr %t355, ptr %l200, !tbaa !29
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l1
  %t358 = load i64, ptr %l3, !tbaa !24
  %t362 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t356, %"compiler/source:Span" %t357, i64 %t358)
  store ptr %t362, ptr %l204
  br label %bb51
bb51:
  %t363 = load ptr, ptr %l200, !tbaa !29
  %t364 = load ptr, ptr %l204, !tbaa !29
  %t366 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t363, ptr %t364, i32 0)
  store %"compiler/typed:Elem" %t366, ptr %l206
  br label %bb52
bb52:
  %t367 = load %"compiler/typed:Elem", ptr %l206
  %t368 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Elem" %t367, ptr %t368
  store { i64, [4 x i64] } zeroinitializer, ptr %t369
  %t370 = getelementptr { i64, [4 x i64] }, ptr %t369, i32 0, i32 0
  store i64 4, ptr %t370
  %t371 = load %"compiler/source:Span", ptr %l194
  %t372 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t371, 0
  %t373 = load i32, ptr %l199, !tbaa !23
  %t374 = insertvalue { %"compiler/source:Span", i32, ptr } %t372, i32 %t373, 1
  %t376 = insertvalue { %"compiler/source:Span", i32, ptr } %t374, ptr %t368, 2
  %t377 = getelementptr { i64, [4 x i64] }, ptr %t369, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t376, ptr %t377
  %t378 = load { i64, [4 x i64] }, ptr %t369
  %t380 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t378, ptr %t380
  %t381 = load ptr, ptr %l192, !tbaa !29
  %t382 = load %"compiler/source:Span", ptr %l193
  %t384 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t381, %"compiler/source:Span" %t382, ptr %t380)
  store ptr %t384, ptr %l210
  br label %bb53
bb53:
  %t385 = load ptr, ptr %l210, !tbaa !29
  store ptr %t385, ptr %l26, !tbaa !29
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l26, !tbaa !29
  %t389 = load %"compiler/source:Span", ptr %l1
  %t393 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v0, ptr %v0, ptr %t387, ptr %t388, %"compiler/source:Span" %t389, i1 false)
  store ptr %t393, ptr %l215
  br label %bb54
bb54:
  %t394 = load ptr, ptr %l215, !tbaa !29
  store ptr %t394, ptr %l26, !tbaa !29
  br label %bb60
bb55:
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l225, !tbaa !29
  %t397 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t397, ptr %l226
  %t398 = load i32, ptr %l24, !tbaa !23
  store i32 %t398, ptr %l227, !tbaa !23
  store i32 5, ptr %l228
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load %"compiler/source:Span", ptr %l1
  %t401 = load i64, ptr %l3, !tbaa !24
  %t405 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t399, %"compiler/source:Span" %t400, i64 %t401)
  store ptr %t405, ptr %l232
  br label %bb56
bb56:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load %"compiler/source:Span", ptr %l1
  %t412 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t406, %"compiler/source:Span" %t407, i64 %a8)
  store ptr %t412, ptr %l236
  br label %bb57
bb57:
  %t413 = load ptr, ptr %l236, !tbaa !29
  %t414 = load ptr, ptr %l225, !tbaa !29
  %t415 = load %"compiler/source:Span", ptr %l226
  %t416 = load i32, ptr %l227, !tbaa !23
  %t417 = load i32, ptr %l228, !range !{i32 0, i32 52}
  %t418 = load ptr, ptr %l232, !tbaa !29
  %t420 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t414, %"compiler/source:Span" %t415, i32 %t416, i32 %t417, ptr %t418, ptr %t413)
  store ptr %t420, ptr %l238
  br label %bb58
bb58:
  %t421 = load ptr, ptr %l238, !tbaa !29
  %t422 = load ptr, ptr %l217, !tbaa !29
  %t423 = load %"compiler/source:Span", ptr %l218
  %t424 = load i32, ptr %l219, !tbaa !23
  %t425 = load i32, ptr %l220, !range !{i32 0, i32 52}
  %t426 = load ptr, ptr %l224, !tbaa !29
  %t428 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t422, %"compiler/source:Span" %t423, i32 %t424, i32 %t425, ptr %t426, ptr %t421)
  store ptr %t428, ptr %l240
  br label %bb59
bb59:
  %t429 = load ptr, ptr %l240, !tbaa !29
  store ptr %t429, ptr %l26, !tbaa !29
  br label %bb60
bb60:
  %t431 = load ptr, ptr %l0, !tbaa !29
  store ptr %t431, ptr %l242, !tbaa !29
  %t432 = load ptr, ptr %l2, !tbaa !29
  %t434 = getelementptr %"compiler/ast:ForIn", ptr %t432, i32 0, i32 1
  %t435 = load i32, ptr %t434, !tbaa !23
  store i32 %t435, ptr %l244, !tbaa !23
  %t436 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t436, ptr %l245
  %t437 = load ptr, ptr %l26, !tbaa !29
  %t439 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t437)
  store i32 %t439, ptr %l247
  br label %bb61
bb61:
  store { i64, [1 x i64] } zeroinitializer, ptr %t440
  %t441 = getelementptr { i64, [1 x i64] }, ptr %t440, i32 0, i32 0
  store i64 4, ptr %t441
  %t442 = load { i64, [1 x i64] }, ptr %t440
  %t443 = load ptr, ptr %l242, !tbaa !29
  %t444 = load i32, ptr %l244, !tbaa !23
  %t445 = load %"compiler/source:Span", ptr %l245
  %t446 = load i32, ptr %l247, !tbaa !23
  %t449 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t443, i32 %t444, %"compiler/source:Span" %t445, i32 %t446, i32 1, { i64, [1 x i64] } %t442)
  store i64 %t449, ptr %l250
  br label %bb62
bb62:
  %t450 = load i64, ptr %l250, !tbaa !24
  store i64 %t450, ptr %l29, !tbaa !24
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/check:Checker", ptr %t451, i32 0, i32 34
  %t454 = getelementptr %"compiler/source:Span", ptr %t453, i32 0, i32 0
  %t455 = load i32, ptr %t454, !tbaa !23
  %t457 = icmp sge i32 %t455, 0
  br i1 %t457, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s7
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr %"compiler/check:Checker", ptr %t459, i32 0, i32 32
  store ptr %t461, ptr %l255, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t462)
  store ptr %t464, ptr %l257
  br label %bb65
bb64:
  br label %bb78
bb65:
  %t465 = load ptr, ptr %l257, !tbaa !29
  %t467 = getelementptr %"compiler/check:frame", ptr %t465, i32 0, i32 0
  %t468 = load i64, ptr %t467, !tbaa !24
  %t469 = load i64, ptr %l29, !tbaa !24
  %t472 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s7, i64 %t468, i64 %t469)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t472, ptr %l261
  br label %bb66
bb66:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/check:Checker", ptr %t473, i32 0, i32 34
  %t476 = load %"compiler/source:Span", ptr %t475
  %t477 = load ptr, ptr %l255, !tbaa !29
  %t478 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l261
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_He56f4e53267726fe8dffcfd34146d8e6(ptr %v0, ptr %t477, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t478, %"compiler/source:Span" %t476)
  br label %bb67
bb67:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t482 = getelementptr %"compiler/check:Checker", ptr %t480, i32 0, i32 35
  %t483 = load i1, ptr %t482, !tbaa !21
  br i1 %t483, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s8
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/check:Checker", ptr %t485, i32 0, i32 31
  store ptr %t487, ptr %l267, !tbaa !29
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t488)
  store ptr %t490, ptr %l269
  br label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s9
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t493 = getelementptr %"compiler/check:Checker", ptr %t491, i32 0, i32 33
  store ptr %t493, ptr %l275, !tbaa !29
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t494)
  store ptr %t496, ptr %l277
  br label %bb73
bb70:
  %t497 = load ptr, ptr %l269, !tbaa !29
  %t499 = getelementptr %"compiler/check:frame", ptr %t497, i32 0, i32 0
  %t500 = load i64, ptr %t499, !tbaa !24
  %t501 = load i64, ptr %l29, !tbaa !24
  %t504 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s8, i64 %t500, i64 %t501)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t504, ptr %l273
  br label %bb71
bb71:
  %t505 = load ptr, ptr %l267, !tbaa !29
  %t506 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l273
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t505, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t506, i1 true)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s8)
  br label %bb76
bb73:
  %t507 = load ptr, ptr %l277, !tbaa !29
  %t509 = getelementptr %"compiler/check:frame", ptr %t507, i32 0, i32 0
  %t510 = load i64, ptr %t509, !tbaa !24
  %t511 = load i64, ptr %l29, !tbaa !24
  %t514 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s9, i64 %t510, i64 %t511)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t514, ptr %l281
  br label %bb74
bb74:
  %t515 = load ptr, ptr %l275, !tbaa !29
  %t516 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l281
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t515, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t516, i1 true)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s9)
  br label %bb76
bb76:
  %t517 = load ptr, ptr %l0, !tbaa !29
  store ptr %t517, ptr %l282, !tbaa !29
  %t518 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s7, i32 -1, i32 -1)
  store %"compiler/source:Span" %t518, ptr %l283
  br label %bb77
bb77:
  %t519 = load %"compiler/source:Span", ptr %l283
  %t520 = load ptr, ptr %l282, !tbaa !29
  %t521 = getelementptr %"compiler/check:Checker", ptr %t520, i32 0, i32 34
  store %"compiler/source:Span" %t519, ptr %t521
  call void @__olang_scope_close(ptr %s7)
  br label %bb78
bb78:
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l284, !tbaa !29
  %t523 = load i64, ptr %l29, !tbaa !24
  store i64 %t523, ptr %l285, !tbaa !24
  %t524 = load ptr, ptr %l26, !tbaa !29
  %t526 = icmp eq ptr %t524, null
  br i1 %t526, label %bb79, label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_8ffd1bc2c5314d3c_1a7e454980bc5230)
  unreachable
bb80:
  br label %bb81
bb81:
  %t528 = load ptr, ptr %l26, !tbaa !29
  %t529 = load ptr, ptr %l284, !tbaa !29
  %t530 = load i64, ptr %l285, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v0, ptr %t529, i64 %t530, ptr %t528)
  br label %bb82
bb82:
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l289, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t533, ptr %l290
  %t534 = load i64, ptr %l29, !tbaa !24
  %t536 = trunc i64 %t534 to i32
  store i32 %t536, ptr %l293, !tbaa !23
  %t538 = load ptr, ptr %l26, !tbaa !29
  %t540 = icmp eq ptr %t538, null
  br i1 %t540, label %bb83, label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_6754b7d1e64b38ab_d9cb88888f730d0f)
  unreachable
bb84:
  br label %bb85
bb85:
  %t542 = load ptr, ptr %l26, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t543
  %t544 = getelementptr { i64, [3 x i64] }, ptr %t543, i32 0, i32 0
  store i64 0, ptr %t544
  %t545 = load %"compiler/source:Span", ptr %l290
  %t546 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t545, 0
  %t547 = load i32, ptr %l293, !tbaa !23
  %t548 = insertvalue { %"compiler/source:Span", i32, ptr } %t546, i32 %t547, 1
  %t550 = insertvalue { %"compiler/source:Span", i32, ptr } %t548, ptr %t542, 2
  %t551 = getelementptr { i64, [3 x i64] }, ptr %t543, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t550, ptr %t551
  %t552 = load { i64, [3 x i64] }, ptr %t543
  %t554 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t552, ptr %t554
  %t555 = load ptr, ptr %l289, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t555, ptr %t554)
  br label %bb86
bb86:
  %t557 = load ptr, ptr %l0, !tbaa !29
  %t558 = load ptr, ptr %l2, !tbaa !29
  %t559 = load ptr, ptr %l9, !tbaa !29
  %t560 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v2, ptr %t557, ptr %t558, ptr %t559, i32 %t560)
  br label %bb87
bb87:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t565)
  store ptr %t567, ptr %l305
  br label %bb88
bb88:
  %t568 = load ptr, ptr %l305, !tbaa !29
  %t570 = getelementptr %"compiler/check:frame", ptr %t568, i32 0, i32 10
  %t572 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t570)
  %t573 = extractvalue { i32, i64 } %t572, 1
  %t574 = extractvalue { i32, i64 } %t572, 0
  store i32 %t574, ptr %l309
  %t575 = icmp ne i32 %t574, 0
  br i1 %t575, label %bb90, label %ok.576, !prof !99
ok.576:
  store i64 %t573, ptr %l308
  br label %bb89
bb89:
  %t577 = load i64, ptr %l308, !tbaa !24
  store i64 %t577, ptr %l303, !tbaa !24
  br label %bb92
bb90:
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t578)
  store ptr %t580, ptr %l312
  br label %bb93
bb93:
  %t581 = load ptr, ptr %l312, !tbaa !29
  %t583 = getelementptr %"compiler/check:frame", ptr %t581, i32 0, i32 11
  %t585 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t583)
  %t586 = extractvalue { i32, i64 } %t585, 1
  %t587 = extractvalue { i32, i64 } %t585, 0
  store i32 %t587, ptr %l316
  %t588 = icmp ne i32 %t587, 0
  br i1 %t588, label %bb95, label %ok.589, !prof !99
ok.589:
  store i64 %t586, ptr %l315
  br label %bb94
bb94:
  %t590 = load i64, ptr %l315, !tbaa !24
  store i64 %t590, ptr %l310, !tbaa !24
  br label %bb97
bb95:
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t591 = load ptr, ptr %l0, !tbaa !29
  %t592 = load i64, ptr %l21, !tbaa !24
  %t593 = load i64, ptr %l22, !tbaa !24
  %t594 = load i64, ptr %l23, !tbaa !24
  %t595 = load i64, ptr %l19, !tbaa !24
  %t601 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t591, i64 %t592, i64 %t593, i64 %t594, i64 %t595)
  store ptr %t601, ptr %l322
  br label %bb98
bb98:
  %t602 = load ptr, ptr %l322, !tbaa !29
  store ptr %t602, ptr %l30, !tbaa !29
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t605 = getelementptr %"compiler/check:Checker", ptr %t603, i32 0, i32 37
  %t607 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t605)
  store i64 %t607, ptr %l325
  br label %bb99
bb99:
  %t608 = load i64, ptr %l325, !tbaa !24
  store i64 %t608, ptr %l31, !tbaa !24
  %t609 = load ptr, ptr %l0, !tbaa !29
  %t610 = load %"compiler/source:Span", ptr %l1
  %t614 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t609, i32 3, %"compiler/source:Span" %t610)
  store { i64, i64, i64 } %t614, ptr %l329
  br label %bb100
bb100:
  %t615 = load { i64, i64, i64 }, ptr %l329
  store { i64, i64, i64 } %t615, ptr %l32
  %t616 = getelementptr { i64, i64, i64 }, ptr %l32, i32 0, i32 0
  %t617 = load i64, ptr %t616, !tbaa !24
  store i64 %t617, ptr %l33, !tbaa !24
  %t619 = getelementptr { i64, i64, i64 }, ptr %l32, i32 0, i32 1
  %t620 = load i64, ptr %t619, !tbaa !24
  store i64 %t620, ptr %l34, !tbaa !24
  %t622 = getelementptr { i64, i64, i64 }, ptr %l32, i32 0, i32 2
  %t623 = load i64, ptr %t622, !tbaa !24
  store i64 %t623, ptr %l35, !tbaa !24
  %t625 = load ptr, ptr %l0, !tbaa !29
  store ptr %t625, ptr %l333, !tbaa !29
  %t626 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t626, ptr %l334
  %t627 = load i32, ptr %l24, !tbaa !23
  store i32 %t627, ptr %l335, !tbaa !23
  store i32 3, ptr %l336
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load %"compiler/source:Span", ptr %l1
  %t630 = load i64, ptr %l3, !tbaa !24
  %t634 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t628, %"compiler/source:Span" %t629, i64 %t630)
  store ptr %t634, ptr %l340
  br label %bb101
bb101:
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t636 = load %"compiler/source:Span", ptr %l1
  %t637 = load i32, ptr %l24, !tbaa !23
  %t641 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t635, %"compiler/source:Span" %t636, i32 %t637, i64 1)
  store ptr %t641, ptr %l344
  br label %bb102
bb102:
  %t642 = load ptr, ptr %l344, !tbaa !29
  %t643 = load ptr, ptr %l333, !tbaa !29
  %t644 = load %"compiler/source:Span", ptr %l334
  %t645 = load i32, ptr %l335, !tbaa !23
  %t646 = load i32, ptr %l336, !range !{i32 0, i32 52}
  %t647 = load ptr, ptr %l340, !tbaa !29
  %t649 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t643, %"compiler/source:Span" %t644, i32 %t645, i32 %t646, ptr %t647, ptr %t642)
  store ptr %t649, ptr %l346
  br label %bb103
bb103:
  %t650 = load ptr, ptr %l346, !tbaa !29
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t652 = load %"compiler/source:Span", ptr %l1
  %t653 = load %"compiler/source:Span", ptr %l1
  %t654 = load i32, ptr %l24, !tbaa !23
  %t655 = load i64, ptr %l3, !tbaa !24
  %t657 = trunc i64 %t655 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t659
  %t660 = getelementptr { i64, [4 x i64] }, ptr %t659, i32 0, i32 0
  store i64 0, ptr %t660
  %t662 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t653, 0
  %t664 = insertvalue { %"compiler/source:Span", i32, i32 } %t662, i32 %t654, 1
  %t666 = insertvalue { %"compiler/source:Span", i32, i32 } %t664, i32 %t657, 2
  %t667 = getelementptr { i64, [4 x i64] }, ptr %t659, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t666, ptr %t667
  %t668 = load { i64, [4 x i64] }, ptr %t659
  %t670 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t668, ptr %t670
  store { i64, [3 x i64] } zeroinitializer, ptr %t672
  %t673 = getelementptr { i64, [3 x i64] }, ptr %t672, i32 0, i32 0
  store i64 1, ptr %t673
  %t675 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t652, 0
  %t677 = insertvalue { %"compiler/source:Span", ptr, ptr } %t675, ptr %t670, 1
  %t679 = insertvalue { %"compiler/source:Span", ptr, ptr } %t677, ptr %t650, 2
  %t680 = getelementptr { i64, [3 x i64] }, ptr %t672, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t679, ptr %t680
  %t681 = load { i64, [3 x i64] }, ptr %t672
  %t683 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t681, ptr %t683
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t651, ptr %t683)
  br label %bb104
bb104:
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t687 = load i64, ptr %l33, !tbaa !24
  %t688 = load i64, ptr %l34, !tbaa !24
  %t689 = load i64, ptr %l35, !tbaa !24
  %t690 = load i64, ptr %l31, !tbaa !24
  %t696 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t686, i64 %t687, i64 %t688, i64 %t689, i64 %t690)
  store ptr %t696, ptr %l364
  br label %bb105
bb105:
  %t697 = load ptr, ptr %l364, !tbaa !29
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t699 = load %"compiler/source:Span", ptr %l1
  %t700 = load ptr, ptr %l30, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t703
  %t704 = getelementptr { i64, [3 x i64] }, ptr %t703, i32 0, i32 0
  store i64 4, ptr %t704
  %t706 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t699, 0
  %t708 = insertvalue { %"compiler/source:Span", ptr, ptr } %t706, ptr %t700, 1
  %t710 = insertvalue { %"compiler/source:Span", ptr, ptr } %t708, ptr %t697, 2
  %t711 = getelementptr { i64, [3 x i64] }, ptr %t703, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t710, ptr %t711
  %t712 = load { i64, [3 x i64] }, ptr %t703
  %t714 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t712, ptr %t714
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t698, ptr %t714)
  br label %bb106
bb106:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclareUnknown(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i1
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l32 = alloca i32
  %l35 = alloca ptr
  %s2 = alloca %olang.scope
  %t40 = alloca { i64, [1 x i64] }, align 8
  %t62 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = xor i1 %a2, true
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 30}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32 }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l3
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32 }, ptr %t22, i32 0, i32 1
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb17
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l4, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t30, ptr %l18
  br label %bb9
bb9:
  %t31 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t31, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t32, ptr %l19
  br label %bb10
bb10:
  %t33 = load i1, ptr %l19, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l4, !tbaa !23
  %t38 = load %"compiler/source:Span", ptr %l3
  %t39 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 0
  store i64 4, ptr %t41
  %t42 = load { i64, [1 x i64] }, ptr %t40
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t36, i32 %t37, %"compiler/source:Span" %t38, i32 %t39, i32 1, { i64, [1 x i64] } %t42)
  store i64 %t49, ptr %l27
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t50 = load i64, ptr %l27, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l28, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t52, ptr %l29
  %t55 = trunc i64 %t50 to i32
  store i32 %t55, ptr %l32, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l3
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v0, ptr %t57, %"compiler/source:Span" %t58)
  store ptr %t61, ptr %l35
  br label %bb14
bb14:
  store { i64, [3 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 0
  store i64 0, ptr %t63
  %t64 = load %"compiler/source:Span", ptr %l29
  %t65 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t64, 0
  %t66 = load i32, ptr %l32, !tbaa !23
  %t67 = insertvalue { %"compiler/source:Span", i32, ptr } %t65, i32 %t66, 1
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = insertvalue { %"compiler/source:Span", i32, ptr } %t67, ptr %t68, 2
  %t70 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t69, ptr %t70
  %t71 = load { i64, [3 x i64] }, ptr %t62
  %t73 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t71, ptr %t73
  %t74 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t74, ptr %t73)
  br label %bb15
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_7e44f5428cde099f_6973e730479eef7b)
  unreachable
bb22:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHolds(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 99
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4, i1 true)
  br label %bb1
bb1:
  %t9 = xor i1 %a3, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 6
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %s0, ptr %t16, i64 %t17)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l16
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb6, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l15
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l17, !tbaa !24
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l17, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t38, ptr %l10, !tbaa !27
  br label %bb8
bb6:
  br label %bb7
bb7:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t39, ptr %l10, !tbaa !27
  br label %bb8
bb8:
  %t41 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l21, !tbaa !24
  %t43 = load i64, ptr %l21, !tbaa !24
  %t44 = mul i64 %t43, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  %t46 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l22, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l21, !tbaa !24
  %t53 = mul i64 %t52, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t49, ptr %t51, i64 %t53, i1 false)
  %t54 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t54, ptr %l4, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %v1, { i64, ptr } %t55, { i64, ptr } %t56)
  store i1 %t60, ptr %l26
  br label %bb9
bb9:
  %t61 = load i1, ptr %l26, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 6
  store ptr %t69, ptr %l30, !tbaa !29
  %t70 = load i64, ptr %l1, !tbaa !24
  store i64 %t70, ptr %l31, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t73, ptr %l33
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t74 = load i1, ptr %l33, !tbaa !21
  br i1 %t74, label %bb13, label %bb14
bb13:
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t75, ptr %l34, !tbaa !27
  br label %bb15
bb14:
  %t78 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t78, 1
  %t82 = extractvalue { i64, ptr } %t78, 0
  %t83 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t87 = extractvalue { i64, ptr } %t79, 1
  %t88 = extractvalue { i64, ptr } %t79, 0
  %t89 = add i64 %t85, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t81, i64 %t82)
  %t91 = getelementptr i8, ptr %t90, i64 %t82
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = getelementptr i8, ptr %t91, i64 %t84
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t90, 1
  store { i64, ptr } %t94, ptr %l34, !tbaa !27
  br label %bb15
bb15:
  %t96 = load ptr, ptr %l30, !tbaa !29
  %t97 = load i64, ptr %l31, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l34, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H7dde68908c71339667eba96ae7e6565c(ptr %v0, ptr %t96, i64 %t97, { i64, ptr } %t98)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l21 = alloca i32
  %l27 = alloca i1
  %l32 = alloca i32
  %l35 = alloca ptr
  %l40 = alloca i32
  %l43 = alloca i1
  %l46 = alloca ptr
  %l51 = alloca i32
  %l54 = alloca i1
  %l57 = alloca ptr
  %l62 = alloca i32
  %l66 = alloca i1
  %l74 = alloca i32
  %l77 = alloca ptr
  %l82 = alloca i32
  %l86 = alloca i1
  %l91 = alloca ptr
  %l96 = alloca i32
  %l99 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l8, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load i32, ptr %l1, !tbaa !23
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = icmp eq i32 %t13, %t14
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l21
  br label %bb10
bb10:
  %t30 = load i32, ptr %l21, !range !{i32 0, i32 33}
  store i32 %t30, ptr %l4
  %t31 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t33 = trunc i64 18 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb34
bb13:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l27
  br label %bb14
bb14:
  %t44 = load i1, ptr %l27, !tbaa !21
  %t45 = xor i1 %t44, true
  br i1 %t45, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l32
  br label %bb18
bb18:
  %t53 = load i32, ptr %l32, !range !{i32 0, i32 6}
  store i32 %t53, ptr %l5
  %t54 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t56 = trunc i64 0 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l40
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t70 = load i32, ptr %l2, !tbaa !23
  %t71 = load i64, ptr %l3, !tbaa !24
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = load i32, ptr %l40, !tbaa !23
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsInst(ptr %v0, ptr %t72, i32 %t73, i32 %t70, i64 %t71)
  store i1 %t76, ptr %l43
  br label %bb22
bb22:
  %t77 = load i1, ptr %l43, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
bb23:
  %t78 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t80 = trunc i64 1 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb24, label %bb25
bb24:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l46, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l1, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l51
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t94 = load i32, ptr %l2, !tbaa !23
  %t95 = load i64, ptr %l3, !tbaa !24
  %t96 = load ptr, ptr %l46, !tbaa !29
  %t97 = load i32, ptr %l51, !tbaa !23
  %t100 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsInst(ptr %v0, ptr %t96, i32 %t97, i32 %t94, i64 %t95)
  store i1 %t100, ptr %l54
  br label %bb27
bb27:
  %t101 = load i1, ptr %l54, !tbaa !21
  store i1 %t101, ptr %rv
  br label %ret
bb28:
  %t102 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t104 = trunc i64 4 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb29, label %bb30
bb29:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l57, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l1, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l62
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t118 = load i32, ptr %l2, !tbaa !23
  %t119 = load i64, ptr %l3, !tbaa !24
  %t121 = add i64 %t119, 1
  %t122 = load ptr, ptr %l57, !tbaa !29
  %t123 = load i32, ptr %l62, !tbaa !23
  %t126 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %t122, i32 %t123, i32 %t118, i64 %t121)
  store i1 %t126, ptr %l66
  br label %bb32
bb32:
  %t127 = load i1, ptr %l66, !tbaa !21
  store i1 %t127, ptr %rv
  br label %ret
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  %t129 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t131 = trunc i64 19 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb44
bb37:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  %t140 = load i32, ptr %l1, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t143, ptr %l74
  br label %bb38
bb38:
  %t144 = load i32, ptr %l74, !tbaa !23
  %t145 = icmp eq i32 %t144, 0
  br i1 %t145, label %bb39, label %bb40
bb39:
  store i1 false, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l77, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l1, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l82
  br label %bb42
bb42:
  %t159 = load i32, ptr %l2, !tbaa !23
  %t160 = load i64, ptr %l3, !tbaa !24
  %t162 = add i64 %t160, 1
  %t163 = load ptr, ptr %l77, !tbaa !29
  %t164 = load i32, ptr %l82, !tbaa !23
  %t167 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %t163, i32 %t164, i32 %t159, i64 %t162)
  store i1 %t167, ptr %l86
  br label %bb43
bb43:
  %t168 = load i1, ptr %l86, !tbaa !21
  store i1 %t168, ptr %rv
  br label %ret
bb44:
  %t169 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t171 = trunc i64 22 to i32
  %t172 = icmp eq i32 %t169, %t171
  br i1 %t172, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  %t174 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t176 = trunc i64 23 to i32
  %t177 = icmp eq i32 %t174, %t176
  br i1 %t177, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb52
bb49:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l91, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l1, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t189, ptr %l96
  br label %bb50
bb50:
  %t190 = load i32, ptr %l2, !tbaa !23
  %t191 = load i64, ptr %l3, !tbaa !24
  %t192 = load ptr, ptr %l91, !tbaa !29
  %t193 = load i32, ptr %l96, !tbaa !23
  %t196 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsInst(ptr %v0, ptr %t192, i32 %t193, i32 %t190, i64 %t191)
  store i1 %t196, ptr %l99
  br label %bb51
bb51:
  %t197 = load i1, ptr %l99, !tbaa !21
  store i1 %t197, ptr %rv
  br label %ret
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store i1 false, ptr %rv
  br label %ret
bb56:
  call void @__olang_check_failed(ptr @olang_loc_aed268118a11ee23_4542719cec09658f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneType(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/check:laneNode"
  %l6 = alloca %"compiler/check:laneNode"
  %l13 = alloca ptr
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca ptr
  %l22 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 39
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/check:laneNode" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load %"compiler/check:laneNode", ptr %l6
  store %"compiler/check:laneNode" %t8, ptr %l2
  %t9 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 10
  %t10 = load i32, ptr %t9, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp ne i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 10
  %t17 = load i32, ptr %t16, !tbaa !23
  store i32 %t17, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l13, !tbaa !29
  %t25 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 8
  %t26 = load i32, ptr %t25, !tbaa !23
  store i32 %t26, ptr %l14, !tbaa !23
  %t27 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 9
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = icmp sge i64 %t28, 0
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  store ptr %t37, ptr %l20, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l22
  br label %bb7
bb6:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb9
bb7:
  %t41 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 9
  %t42 = load i64, ptr %t41, !tbaa !24
  %t43 = load ptr, ptr %l20, !tbaa !29
  %t44 = load i32, ptr %l22, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t43, i32 %t44, i64 %t42)
  store i32 %t46, ptr %l24
  br label %bb8
bb8:
  %t47 = load i32, ptr %l24, !tbaa !23
  store i32 %t47, ptr %l17, !tbaa !23
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l13, !tbaa !29
  %t49 = load i32, ptr %l14, !tbaa !23
  %t50 = load i32, ptr %l17, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t48, i32 %t49, i32 %t50)
  store i32 %t51, ptr %l25
  br label %bb10
bb10:
  %t52 = load i32, ptr %l25, !tbaa !23
  store i32 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleak(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t14 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t10, i32 %a1)
  store { i64, ptr } %t14, ptr %l13
  br label %bb2
bb2:
  %t15 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t15, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t28, ptr %l20, !tbaa !27
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 %t29
  %t34 = load i32, ptr %t33, !tbaa !33
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/check:frame", ptr %t36, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t38, i32 %t34)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb3
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i1
  %l15 = alloca i32
  %l20 = alloca i1
  %l25 = alloca i64
  %l30 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca i1
  %l40 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l54 = alloca i32
  %l56 = alloca i1
  %l59 = alloca ptr
  %l64 = alloca i32
  %l66 = alloca i1
  %l69 = alloca ptr
  %l74 = alloca i32
  %l76 = alloca i1
  %l77 = alloca i1
  %l78 = alloca ptr
  %l83 = alloca i32
  %l85 = alloca i1
  %l86 = alloca i1
  %l87 = alloca ptr
  %l92 = alloca i32
  %l94 = alloca i1
  %l99 = alloca ptr
  %l104 = alloca i32
  %l106 = alloca i1
  %l109 = alloca ptr
  %l114 = alloca i32
  %l116 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
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
  %t26 = trunc i64 25 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  br i1 %t31, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb14
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t38, i32 %t39)
  store i64 %t42, ptr %l25
  br label %bb13
bb13:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l25, !tbaa !24
  %t46 = icmp eq i64 %t44, %t43
  store i1 %t46, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l20, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
bb15:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t51 = trunc i64 18 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l1, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l35
  br label %bb19
bb19:
  %t65 = load i64, ptr %l2, !tbaa !24
  %t66 = load ptr, ptr %l30, !tbaa !29
  %t67 = load i32, ptr %l35, !tbaa !23
  %t69 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %t66, i32 %t67, i64 %t65)
  store i1 %t69, ptr %l37
  br label %bb20
bb20:
  %t70 = load i1, ptr %l37, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
bb21:
  %t71 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t73 = trunc i64 19 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb32
bb24:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l40, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l1, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l45
  br label %bb25
bb25:
  %t87 = load i64, ptr %l2, !tbaa !24
  %t88 = load ptr, ptr %l40, !tbaa !29
  %t89 = load i32, ptr %l45, !tbaa !23
  %t91 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t88, i32 %t89, i64 %t87)
  store i1 %t91, ptr %l47
  br label %bb26
bb26:
  %t92 = load i1, ptr %l47, !tbaa !21
  br i1 %t92, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb31
bb28:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l49, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  %t100 = load i32, ptr %l1, !tbaa !23
  %t103 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t99, i32 %t100)
  store i32 %t103, ptr %l54
  br label %bb29
bb29:
  %t104 = load i64, ptr %l2, !tbaa !24
  %t105 = load ptr, ptr %l49, !tbaa !29
  %t106 = load i32, ptr %l54, !tbaa !23
  %t108 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t105, i32 %t106, i64 %t104)
  store i1 %t108, ptr %l56
  br label %bb30
bb30:
  %t109 = load i1, ptr %l56, !tbaa !21
  store i1 %t109, ptr %l48, !tbaa !21
  br label %bb31
bb31:
  %t110 = load i1, ptr %l48, !tbaa !21
  store i1 %t110, ptr %rv
  br label %ret
bb32:
  %t111 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t113 = trunc i64 20 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l59, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l1, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l64
  br label %bb36
bb36:
  %t127 = load i64, ptr %l2, !tbaa !24
  %t128 = load ptr, ptr %l59, !tbaa !29
  %t129 = load i32, ptr %l64, !tbaa !23
  %t131 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t128, i32 %t129, i64 %t127)
  store i1 %t131, ptr %l66
  br label %bb37
bb37:
  %t132 = load i1, ptr %l66, !tbaa !21
  store i1 %t132, ptr %rv
  br label %ret
bb38:
  %t133 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t135 = trunc i64 21 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb54
bb41:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l69, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l1, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l74
  br label %bb42
bb42:
  %t149 = load i64, ptr %l2, !tbaa !24
  %t150 = load ptr, ptr %l69, !tbaa !29
  %t151 = load i32, ptr %l74, !tbaa !23
  %t153 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %t150, i32 %t151, i64 %t149)
  store i1 %t153, ptr %l76
  br label %bb43
bb43:
  %t154 = load i1, ptr %l76, !tbaa !21
  br i1 %t154, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb48
bb45:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l78, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  %t162 = load i32, ptr %l1, !tbaa !23
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t161, i32 %t162)
  store i32 %t165, ptr %l83
  br label %bb46
bb46:
  %t166 = load i64, ptr %l2, !tbaa !24
  %t167 = load ptr, ptr %l78, !tbaa !29
  %t168 = load i32, ptr %l83, !tbaa !23
  %t170 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t167, i32 %t168, i64 %t166)
  store i1 %t170, ptr %l85
  br label %bb47
bb47:
  %t171 = load i1, ptr %l85, !tbaa !21
  store i1 %t171, ptr %l77, !tbaa !21
  br label %bb48
bb48:
  %t172 = load i1, ptr %l77, !tbaa !21
  br i1 %t172, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb53
bb50:
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l87, !tbaa !29
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/generic:Program", ptr %t177, i32 0, i32 2
  %t180 = load i32, ptr %l1, !tbaa !23
  %t183 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t179, i32 %t180)
  store i32 %t183, ptr %l92
  br label %bb51
bb51:
  %t184 = load i64, ptr %l2, !tbaa !24
  %t185 = load ptr, ptr %l87, !tbaa !29
  %t186 = load i32, ptr %l92, !tbaa !23
  %t188 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %t185, i32 %t186, i64 %t184)
  store i1 %t188, ptr %l94
  br label %bb52
bb52:
  %t189 = load i1, ptr %l94, !tbaa !21
  store i1 %t189, ptr %l86, !tbaa !21
  br label %bb53
bb53:
  %t190 = load i1, ptr %l86, !tbaa !21
  store i1 %t190, ptr %rv
  br label %ret
bb54:
  %t191 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t193 = trunc i64 22 to i32
  %t194 = icmp eq i32 %t191, %t193
  br i1 %t194, label %bb55, label %bb56
bb55:
  br label %bb59
bb56:
  %t196 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t198 = trunc i64 23 to i32
  %t199 = icmp eq i32 %t196, %t198
  br i1 %t199, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l99, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/check:Checker", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t208 = load i32, ptr %l1, !tbaa !23
  %t211 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t211, ptr %l104
  br label %bb60
bb60:
  %t212 = load i64, ptr %l2, !tbaa !24
  %t213 = load ptr, ptr %l99, !tbaa !29
  %t214 = load i32, ptr %l104, !tbaa !23
  %t216 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %t213, i32 %t214, i64 %t212)
  store i1 %t216, ptr %l106
  br label %bb61
bb61:
  %t217 = load i1, ptr %l106, !tbaa !21
  store i1 %t217, ptr %rv
  br label %ret
bb62:
  %t218 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t220 = trunc i64 29 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l109, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/check:Checker", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = getelementptr %"compiler/generic:Program", ptr %t227, i32 0, i32 2
  %t230 = load i32, ptr %l1, !tbaa !23
  %t233 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t229, i32 %t230)
  store i32 %t233, ptr %l114
  br label %bb66
bb66:
  %t234 = load i64, ptr %l2, !tbaa !24
  %t235 = load ptr, ptr %l109, !tbaa !29
  %t236 = load i32, ptr %l114, !tbaa !23
  %t238 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t235, i32 %t236, i64 %t234)
  store i1 %t238, ptr %l116
  br label %bb67
bb67:
  %t239 = load i1, ptr %l116, !tbaa !21
  store i1 %t239, ptr %rv
  br label %ret
bb68:
  br i1 true, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  store i1 false, ptr %rv
  br label %ret
bb72:
  call void @__olang_check_failed(ptr @olang_loc_d8c36506bebb6839_82dbce7e68d1cca5)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i1
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %lp36 = alloca ptr
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i1
  %l50 = alloca i64
  %l54 = alloca i64
  %l58 = alloca i64
  %l66 = alloca i64
  %l69 = alloca i64
  %l87 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l91 = alloca i1
  %l104 = alloca i64
  %l107 = alloca i64
  %l125 = alloca { i64, ptr }
  %l134 = alloca i32
  %l135 = alloca i32
  %l138 = alloca { i64, ptr }
  %l142 = alloca %"compiler/source:Span"
  %l150 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l156 = alloca %"compiler/source:Span"
  %l159 = alloca { i64, ptr }
  %l161 = alloca %"compiler/diagmsg:Msg"
  %l162 = alloca i64
  %l167 = alloca ptr
  %l168 = alloca %"compiler/source:Span"
  %l171 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca { i64, ptr }
  %l176 = alloca %"compiler/diagmsg:Msg"
  %l179 = alloca { i64, ptr }
  %l181 = alloca %"compiler/diagmsg:Msg"
  %l182 = alloca i64
  %l190 = alloca ptr
  %l192 = alloca %"compiler/source:Span"
  %l193 = alloca %"compiler/diagmsg:Msg"
  %l194 = alloca i64
  %l210 = alloca ptr
  %l211 = alloca { i64, ptr }
  %l214 = alloca %"compiler/source:Span"
  %l215 = alloca i64
  %l218 = alloca { i64, ptr }
  %l220 = alloca %"compiler/diagmsg:Msg"
  %l221 = alloca i64
  %l229 = alloca i64
  %l232 = alloca i64
  %l257 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l265 = alloca i64
  %l268 = alloca i64
  %l290 = alloca ptr
  %l291 = alloca { i64, ptr }
  %l293 = alloca %"compiler/source:Span"
  %l305 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t38 = alloca i64
  %t582 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @compiler_2fcheck_2ehasNamed(ptr %v2, { i64, ptr } %t1)
  store i1 %t3, ptr %l45
  br label %bb1
bb1:
  %t4 = load i1, ptr %l45, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t7, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  store i1 false, ptr %l7, !tbaa !21
  %t13 = load i64, ptr %l4, !tbaa !24
  store i64 %t13, ptr %l50, !tbaa !24
  %t14 = load i64, ptr %l50, !tbaa !24
  %t15 = icmp sge i64 %t14, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i64, ptr %l50, !tbaa !24
  %t18 = icmp sle i64 %t17, 1152921504606846975
  br i1 %t18, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_2a22705e3675cc6a_15625908cbc104fe)
  unreachable
bb7:
  %t20 = load i64, ptr %l50, !tbaa !24
  %t21 = mul i64 %t20, 8
  %t22 = call ptr @__olang_scope_alloc_zeroed(ptr %v4, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t25 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t25, ptr %lp8
  %t27 = load ptr, ptr %lp8
  store { i64, ptr } %t24, ptr %t27, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %l54, !tbaa !24
  %t29 = load i64, ptr %l54, !tbaa !24
  %t30 = icmp sge i64 %t29, 0
  br i1 %t30, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_2a22705e3675cc6a_15625908cbc104fe)
  unreachable
bb9:
  %t32 = load i64, ptr %l54, !tbaa !24
  %t33 = icmp sle i64 %t32, 1152921504606846975
  br i1 %t33, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e03e15fa1ad8573f_767a3f28b3ff5a33)
  unreachable
bb11:
  %t35 = load i64, ptr %l54, !tbaa !24
  %t36 = mul i64 %t35, 8
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  store i64 0, ptr %t38
  br label %fill.39
fill.39:
  %t42 = load i64, ptr %t38
  %t43 = icmp slt i64 %t42, %t35
  br i1 %t43, label %fillb.40, label %filld.41
fillb.40:
  %t44 = getelementptr i64, ptr %t37, i64 %t42
  store i64 -1, ptr %t44
  %t45 = add i64 %t42, 1
  store i64 %t45, ptr %t38
  br label %fill.39
filld.41:
  %t46 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t37, 1
  store { i64, ptr } %t47, ptr %l9, !tbaa !27
  %t49 = load i64, ptr %l4, !tbaa !24
  store i64 %t49, ptr %l58, !tbaa !24
  %t50 = load i64, ptr %l58, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e03e15fa1ad8573f_767a3f28b3ff5a33)
  unreachable
bb13:
  %t53 = load i64, ptr %l58, !tbaa !24
  %t54 = mul i64 %t53, 1
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  store i64 %t61, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t63 = load i64, ptr %l12, !tbaa !24
  %t64 = load i64, ptr %l11, !tbaa !24
  %t67 = icmp sgt i64 %t63, %t64
  br i1 %t67, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_f1d5d3b2155f2ddc_ad13ea37e14bc210)
  unreachable
bb15:
  %t69 = load i64, ptr %l13, !tbaa !24
  %t71 = icmp sgt i64 %t69, 0
  br i1 %t71, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb20
bb17:
  %t73 = load i64, ptr %l12, !tbaa !24
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = sub i64 %t73, %t74
  %t78 = load i64, ptr %l13, !tbaa !24
  %t81 = add i64 %t77, %t78
  %t83 = sub i64 %t81, 1
  %t84 = load i64, ptr %l13, !tbaa !24
  %t87 = sdiv i64 %t83, %t84
  store i64 %t87, ptr %l69, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb19
bb19:
  %t89 = load i64, ptr %l69, !tbaa !24
  store i64 %t89, ptr %l66, !tbaa !24
  br label %bb20
bb20:
  %t90 = load i64, ptr %l66, !tbaa !24
  store i64 %t90, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb21
bb21:
  %t91 = load i64, ptr %l15, !tbaa !24
  %t92 = load i64, ptr %l14, !tbaa !24
  %t95 = icmp slt i64 %t91, %t92
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb22, label %bb23
bb22:
  br label %bb84
bb23:
  br label %bb24
bb24:
  %t99 = load i64, ptr %l11, !tbaa !24
  %t100 = load i64, ptr %l15, !tbaa !24
  %t101 = load i64, ptr %l13, !tbaa !24
  %t104 = mul i64 %t100, %t101
  %t107 = add i64 %t99, %t104
  store i64 %t107, ptr %l16, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t109, ptr %l87, !tbaa !27
  %t110 = load i64, ptr %l16, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr ptr, ptr %t113, i64 %t110
  %t115 = load ptr, ptr %t114, !tbaa !39
  store ptr %t115, ptr %l17, !tbaa !29
  %t117 = load ptr, ptr %l17, !tbaa !29
  store ptr %t117, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t118 = load ptr, ptr %l90, !tbaa !29
  %t119 = icmp ne ptr %t118, null
  br i1 %t119, label %bb25, label %bb26
bb25:
  %t121 = load ptr, ptr %l90, !tbaa !29
  %t122 = load i64, ptr %t121, !range !{i64 0, i64 30}
  %t124 = icmp eq i64 %t122, 26
  store i1 %t124, ptr %l91, !tbaa !21
  br label %bb26
bb26:
  %t125 = load i1, ptr %l91, !tbaa !21
  br i1 %t125, label %bb27, label %bb28
bb27:
  %t126 = load ptr, ptr %l17, !tbaa !29
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t128, i32 0, i32 0
  %t130 = load %"compiler/source:Span", ptr %t129
  store %"compiler/source:Span" %t130, ptr %l18
  %t132 = load ptr, ptr %l17, !tbaa !29
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t134, i32 0, i32 1
  %t136 = load i32, ptr %t135
  store i32 %t136, ptr %l19, !tbaa !23
  %t138 = load ptr, ptr %l17, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t140, i32 0, i32 2
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l20, !tbaa !29
  br label %bb29
bb28:
  br label %bb68
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  store i1 true, ptr %l6, !tbaa !21
  store i64 -1, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  %t144 = load i64, ptr %l4, !tbaa !24
  store i64 %t144, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t146 = load i64, ptr %l23, !tbaa !24
  %t147 = load i64, ptr %l22, !tbaa !24
  %t150 = icmp sgt i64 %t146, %t147
  br i1 %t150, label %bb30, label %bb31
bb30:
  %t152 = load i64, ptr %l24, !tbaa !24
  %t154 = icmp sgt i64 %t152, 0
  br i1 %t154, label %bb32, label %bb33
bb31:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb35
bb32:
  %t156 = load i64, ptr %l23, !tbaa !24
  %t157 = load i64, ptr %l22, !tbaa !24
  %t160 = sub i64 %t156, %t157
  %t161 = load i64, ptr %l24, !tbaa !24
  %t164 = add i64 %t160, %t161
  %t166 = sub i64 %t164, 1
  %t167 = load i64, ptr %l24, !tbaa !24
  %t170 = sdiv i64 %t166, %t167
  store i64 %t170, ptr %l107, !tbaa !24
  br label %bb34
bb33:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb34
bb34:
  %t172 = load i64, ptr %l107, !tbaa !24
  store i64 %t172, ptr %l104, !tbaa !24
  br label %bb35
bb35:
  %t173 = load i64, ptr %l104, !tbaa !24
  store i64 %t173, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb36
bb36:
  %t174 = load i64, ptr %l26, !tbaa !24
  %t175 = load i64, ptr %l25, !tbaa !24
  %t178 = icmp slt i64 %t174, %t175
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb37, label %bb38
bb37:
  br label %bb44
bb38:
  br label %bb39
bb39:
  %t182 = load i64, ptr %l22, !tbaa !24
  %t183 = load i64, ptr %l26, !tbaa !24
  %t184 = load i64, ptr %l24, !tbaa !24
  %t187 = mul i64 %t183, %t184
  %t190 = add i64 %t182, %t187
  store i64 %t190, ptr %l27, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t192, ptr %l125, !tbaa !27
  %t193 = load i64, ptr %l27, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr ptr, ptr %t196, i64 %t193
  %t198 = load ptr, ptr %t197, !tbaa !39
  %t200 = getelementptr %"compiler/ast:Param", ptr %t198, i32 0, i32 1
  %t201 = load i32, ptr %t200, !tbaa !23
  %t202 = load i32, ptr %l19, !tbaa !23
  %t205 = icmp eq i32 %t201, %t202
  br i1 %t205, label %bb40, label %bb41
bb40:
  %t207 = load i64, ptr %l27, !tbaa !24
  store i64 %t207, ptr %l21, !tbaa !24
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t209 = load i64, ptr %l26, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l26, !tbaa !24
  br label %bb36
bb44:
  %t213 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 0
  %t214 = load i32, ptr %t213, !tbaa !23
  store i32 %t214, ptr %l134, !tbaa !23
  %t215 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 0
  %t216 = load i32, ptr %t215, !tbaa !23
  store i32 %t216, ptr %l135, !tbaa !23
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l19, !tbaa !23
  %t221 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t217, i32 %t218)
  store { i64, ptr } %t221, ptr %l138
  br label %bb45
bb45:
  %t222 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  %t225 = trunc i64 %t223 to i32
  %t226 = load i32, ptr %l135, !tbaa !23
  %t228 = add i32 %t226, %t225
  %t229 = load i32, ptr %l134, !tbaa !23
  %t231 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t229, i32 %t228)
  store %"compiler/source:Span" %t231, ptr %l142
  br label %bb46
bb46:
  %t232 = load %"compiler/source:Span", ptr %l142
  store %"compiler/source:Span" %t232, ptr %l28
  %t233 = load i64, ptr %l21, !tbaa !24
  %t235 = icmp slt i64 %t233, 0
  br i1 %t235, label %bb47, label %bb48
bb47:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l28
  %t239 = load i32, ptr %l19, !tbaa !23
  %t240 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgUnknown(ptr %v0, ptr %v1, ptr %v3, ptr %t237, %"compiler/source:Span" %t238, i32 %t239, { i64, ptr } %t240, { i64, ptr } %a3)
  br label %bb49
bb48:
  %t247 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t247, ptr %l150, !tbaa !27
  %t248 = load i64, ptr %l21, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr ptr, ptr %t251, i64 %t248
  %t253 = load ptr, ptr %t252, !tbaa !39
  %t255 = getelementptr %"compiler/ast:Param", ptr %t253, i32 0, i32 3
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t258 = icmp eq ptr %t256, null
  br i1 %t258, label %bb50, label %bb51
bb49:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb67
bb50:
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l155, !tbaa !29
  %t261 = load %"compiler/source:Span", ptr %l28
  store %"compiler/source:Span" %t261, ptr %l156
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i32, ptr %l19, !tbaa !23
  %t266 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t262, i32 %t263)
  store { i64, ptr } %t266, ptr %l159
  br label %bb52
bb51:
  %t267 = load i64, ptr %l21, !tbaa !24
  %t268 = load ptr, ptr %lp8
  %t270 = getelementptr { i64, ptr }, ptr %t268, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr ptr, ptr %t271, i64 %t267
  %t273 = load ptr, ptr %t272, !tbaa !39
  %t275 = icmp eq ptr %t273, null
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb55, label %bb56
bb52:
  %t279 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 0
  %t281 = extractvalue { i64, ptr } %t279, 1
  %t282 = mul i64 %t280, 1
  %t283 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t282)
  call void @llvm.memcpy.p0.p0.i64(ptr %t283, ptr %t281, i64 %t282, i1 false)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  %t287 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgRequired(ptr %v0, ptr %v0, { i64, ptr } %t285)
  store %"compiler/diagmsg:Msg" %t287, ptr %l161
  br label %bb53
bb53:
  %t288 = load ptr, ptr %l155, !tbaa !29
  %t289 = load %"compiler/source:Span", ptr %l156
  %t290 = load %"compiler/diagmsg:Msg", ptr %l161
  %t291 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t288, %"compiler/source:Span" %t289, %"compiler/diagmsg:Msg" %t290)
  store i64 %t291, ptr %l162
  br label %bb54
bb54:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb66
bb55:
  %t292 = load ptr, ptr %l0, !tbaa !29
  store ptr %t292, ptr %l167, !tbaa !29
  %t293 = load %"compiler/source:Span", ptr %l28
  store %"compiler/source:Span" %t293, ptr %l168
  %t294 = load i64, ptr %l21, !tbaa !24
  %t296 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr i1, ptr %t297, i64 %t294
  %t299 = load i1, ptr %t298, !tbaa !31
  br i1 %t299, label %bb57, label %bb58
bb56:
  %t301 = load i64, ptr %l21, !tbaa !24
  %t302 = load ptr, ptr %l20, !tbaa !29
  %t305 = load ptr, ptr %lp8
  %t307 = getelementptr { i64, ptr }, ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr ptr, ptr %t308, i64 %t301
  store ptr %t302, ptr %t309, !tbaa !39
  %t310 = load i64, ptr %l21, !tbaa !24
  %t311 = load i64, ptr %l16, !tbaa !24
  %t314 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !27
  %t316 = getelementptr i64, ptr %t315, i64 %t310
  store i64 %t311, ptr %t316, !tbaa !34
  %t317 = load i64, ptr %l21, !tbaa !24
  %t319 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !27
  %t321 = getelementptr i1, ptr %t320, i64 %t317
  store i1 true, ptr %t321, !tbaa !31
  br label %bb65
bb57:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load i32, ptr %l19, !tbaa !23
  %t326 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t322, i32 %t323)
  store { i64, ptr } %t326, ptr %l174
  br label %bb59
bb58:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load i32, ptr %l19, !tbaa !23
  %t331 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t327, i32 %t328)
  store { i64, ptr } %t331, ptr %l179
  br label %bb61
bb59:
  %t332 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  %t334 = extractvalue { i64, ptr } %t332, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  %t340 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgTwice(ptr %v0, ptr %v0, { i64, ptr } %t338)
  store %"compiler/diagmsg:Msg" %t340, ptr %l176
  br label %bb60
bb60:
  %t341 = load %"compiler/diagmsg:Msg", ptr %l176
  store %"compiler/diagmsg:Msg" %t341, ptr %l171
  br label %bb63
bb61:
  %t342 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 0
  %t344 = extractvalue { i64, ptr } %t342, 1
  %t345 = mul i64 %t343, 1
  %t346 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t345)
  call void @llvm.memcpy.p0.p0.i64(ptr %t346, ptr %t344, i64 %t345, i1 false)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  %t350 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgAlsoPositional(ptr %v0, ptr %v0, { i64, ptr } %t348)
  store %"compiler/diagmsg:Msg" %t350, ptr %l181
  br label %bb62
bb62:
  %t351 = load %"compiler/diagmsg:Msg", ptr %l181
  store %"compiler/diagmsg:Msg" %t351, ptr %l171
  br label %bb63
bb63:
  %t352 = load ptr, ptr %l167, !tbaa !29
  %t353 = load %"compiler/source:Span", ptr %l168
  %t354 = load %"compiler/diagmsg:Msg", ptr %l171
  %t355 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t352, %"compiler/source:Span" %t353, %"compiler/diagmsg:Msg" %t354)
  store i64 %t355, ptr %l182
  br label %bb64
bb64:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb65
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s4)
  br label %bb82
bb68:
  br i1 true, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb81
bb71:
  %t356 = load i1, ptr %l6, !tbaa !21
  br i1 %t356, label %bb72, label %bb73
bb72:
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l190, !tbaa !29
  %t359 = load ptr, ptr %l17, !tbaa !29
  %t361 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t359)
  store %"compiler/source:Span" %t361, ptr %l192
  br label %bb74
bb73:
  %t362 = load i64, ptr %l5, !tbaa !24
  %t363 = load i64, ptr %l4, !tbaa !24
  %t366 = icmp slt i64 %t362, %t363
  br i1 %t366, label %bb77, label %bb78
bb74:
  %t368 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePositionalAfterNamed(ptr %v0)
  store %"compiler/diagmsg:Msg" %t368, ptr %l193
  br label %bb75
bb75:
  %t369 = load ptr, ptr %l190, !tbaa !29
  %t370 = load %"compiler/source:Span", ptr %l192
  %t371 = load %"compiler/diagmsg:Msg", ptr %l193
  %t372 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t369, %"compiler/source:Span" %t370, %"compiler/diagmsg:Msg" %t371)
  store i64 %t372, ptr %l194
  br label %bb76
bb76:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb80
bb77:
  %t373 = load i64, ptr %l5, !tbaa !24
  %t374 = load ptr, ptr %l17, !tbaa !29
  %t377 = load ptr, ptr %lp8
  %t379 = getelementptr { i64, ptr }, ptr %t377, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !27
  %t381 = getelementptr ptr, ptr %t380, i64 %t373
  store ptr %t374, ptr %t381, !tbaa !39
  %t382 = load i64, ptr %l5, !tbaa !24
  %t383 = load i64, ptr %l16, !tbaa !24
  %t386 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = getelementptr i64, ptr %t387, i64 %t382
  store i64 %t383, ptr %t388, !tbaa !34
  br label %bb79
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t389 = load i64, ptr %l5, !tbaa !24
  %t391 = add i64 %t389, 1
  store i64 %t391, ptr %l5, !tbaa !24
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_6a354e0ae5aa0db2_42d5d79e5424950e)
  unreachable
bb82:
  br label %bb83
bb83:
  %t393 = load i64, ptr %l15, !tbaa !24
  %t395 = add i64 %t393, 1
  store i64 %t395, ptr %l15, !tbaa !24
  br label %bb21
bb84:
  %t397 = load i64, ptr %l5, !tbaa !24
  %t398 = load i64, ptr %l4, !tbaa !24
  %t401 = icmp sgt i64 %t397, %t398
  br i1 %t401, label %bb85, label %bb86
bb85:
  %t403 = load ptr, ptr %l0, !tbaa !29
  store ptr %t403, ptr %l210, !tbaa !29
  %t404 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t404, ptr %l211, !tbaa !27
  %t405 = load i64, ptr %l4, !tbaa !24
  %t407 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !27
  %t409 = getelementptr ptr, ptr %t408, i64 %t405
  %t410 = load ptr, ptr %t409, !tbaa !39
  %t412 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t410)
  store %"compiler/source:Span" %t412, ptr %l214
  br label %bb87
bb86:
  br label %bb93
bb87:
  %t413 = load i64, ptr %l4, !tbaa !24
  store i64 %t413, ptr %l215, !tbaa !24
  %t414 = load i64, ptr %l4, !tbaa !24
  %t416 = icmp eq i64 %t414, 1
  br i1 %t416, label %bb88, label %bb89
bb88:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l218, !tbaa !27
  br label %bb90
bb89:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l218, !tbaa !27
  br label %bb90
bb90:
  %t418 = load i64, ptr %l5, !tbaa !24
  %t419 = load i64, ptr %l215, !tbaa !24
  %t420 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t422 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 %t419, { i64, ptr } %t420, i64 %t418)
  store %"compiler/diagmsg:Msg" %t422, ptr %l220
  br label %bb91
bb91:
  %t423 = load ptr, ptr %l210, !tbaa !29
  %t424 = load %"compiler/source:Span", ptr %l214
  %t425 = load %"compiler/diagmsg:Msg", ptr %l220
  %t426 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t423, %"compiler/source:Span" %t424, %"compiler/diagmsg:Msg" %t425)
  store i64 %t426, ptr %l221
  br label %bb92
bb92:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb93
bb93:
  %t427 = load i1, ptr %l7, !tbaa !21
  br i1 %t427, label %bb94, label %bb95
bb94:
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/check:Checker", ptr %t429, i32 0, i32 153
  store i1 true, ptr %t431, !tbaa !21
  %t432 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t432, ptr %rv
  br label %ret
bb95:
  br label %bb96
bb96:
  store i64 -1, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  %t434 = load i64, ptr %l4, !tbaa !24
  store i64 %t434, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t436 = load i64, ptr %l31, !tbaa !24
  %t437 = load i64, ptr %l30, !tbaa !24
  %t440 = icmp sgt i64 %t436, %t437
  br i1 %t440, label %bb97, label %bb98
bb97:
  %t442 = load i64, ptr %l32, !tbaa !24
  %t444 = icmp sgt i64 %t442, 0
  br i1 %t444, label %bb99, label %bb100
bb98:
  store i64 0, ptr %l229, !tbaa !24
  br label %bb102
bb99:
  %t446 = load i64, ptr %l31, !tbaa !24
  %t447 = load i64, ptr %l30, !tbaa !24
  %t450 = sub i64 %t446, %t447
  %t451 = load i64, ptr %l32, !tbaa !24
  %t454 = add i64 %t450, %t451
  %t456 = sub i64 %t454, 1
  %t457 = load i64, ptr %l32, !tbaa !24
  %t460 = sdiv i64 %t456, %t457
  store i64 %t460, ptr %l232, !tbaa !24
  br label %bb101
bb100:
  store i64 0, ptr %l232, !tbaa !24
  br label %bb101
bb101:
  %t462 = load i64, ptr %l232, !tbaa !24
  store i64 %t462, ptr %l229, !tbaa !24
  br label %bb102
bb102:
  %t463 = load i64, ptr %l229, !tbaa !24
  store i64 %t463, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb103
bb103:
  %t464 = load i64, ptr %l34, !tbaa !24
  %t465 = load i64, ptr %l33, !tbaa !24
  %t468 = icmp slt i64 %t464, %t465
  %t470 = xor i1 %t468, true
  br i1 %t470, label %bb104, label %bb105
bb104:
  br label %bb111
bb105:
  br label %bb106
bb106:
  %t472 = load i64, ptr %l30, !tbaa !24
  %t473 = load i64, ptr %l34, !tbaa !24
  %t474 = load i64, ptr %l32, !tbaa !24
  %t477 = mul i64 %t473, %t474
  %t480 = add i64 %t472, %t477
  store i64 %t480, ptr %l35, !tbaa !24
  %t482 = load i64, ptr %l35, !tbaa !24
  %t483 = load ptr, ptr %lp8
  %t485 = getelementptr { i64, ptr }, ptr %t483, i32 0, i32 1
  %t486 = load ptr, ptr %t485, !tbaa !27
  %t487 = getelementptr ptr, ptr %t486, i64 %t482
  %t488 = load ptr, ptr %t487, !tbaa !39
  %t490 = icmp eq ptr %t488, null
  %t492 = xor i1 %t490, true
  br i1 %t492, label %bb107, label %bb108
bb107:
  %t494 = load i64, ptr %l35, !tbaa !24
  store i64 %t494, ptr %l29, !tbaa !24
  br label %bb109
bb108:
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t496 = load i64, ptr %l34, !tbaa !24
  %t498 = add i64 %t496, 1
  store i64 %t498, ptr %l34, !tbaa !24
  br label %bb103
bb111:
  %t500 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t500, ptr %l257
  br label %bb112
bb112:
  %t501 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t501, ptr %lp36
  %t502 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257
  %t503 = load ptr, ptr %lp36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t502, ptr %t503
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/check:Checker", ptr %t504, i32 0, i32 154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t506)
  br label %bb113
bb113:
  store i64 0, ptr %l37, !tbaa !24
  %t508 = load i64, ptr %l29, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t512 = load i64, ptr %l38, !tbaa !24
  %t513 = load i64, ptr %l37, !tbaa !24
  %t516 = icmp sgt i64 %t512, %t513
  br i1 %t516, label %bb114, label %bb115
bb114:
  %t518 = load i64, ptr %l39, !tbaa !24
  %t520 = icmp sgt i64 %t518, 0
  br i1 %t520, label %bb116, label %bb117
bb115:
  store i64 0, ptr %l265, !tbaa !24
  br label %bb119
bb116:
  %t522 = load i64, ptr %l38, !tbaa !24
  %t523 = load i64, ptr %l37, !tbaa !24
  %t526 = sub i64 %t522, %t523
  %t527 = load i64, ptr %l39, !tbaa !24
  %t530 = add i64 %t526, %t527
  %t532 = sub i64 %t530, 1
  %t533 = load i64, ptr %l39, !tbaa !24
  %t536 = sdiv i64 %t532, %t533
  store i64 %t536, ptr %l268, !tbaa !24
  br label %bb118
bb117:
  store i64 0, ptr %l268, !tbaa !24
  br label %bb118
bb118:
  %t538 = load i64, ptr %l268, !tbaa !24
  store i64 %t538, ptr %l265, !tbaa !24
  br label %bb119
bb119:
  %t539 = load i64, ptr %l265, !tbaa !24
  store i64 %t539, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb120
bb120:
  %t540 = load i64, ptr %l41, !tbaa !24
  %t541 = load i64, ptr %l40, !tbaa !24
  %t544 = icmp slt i64 %t540, %t541
  %t546 = xor i1 %t544, true
  br i1 %t546, label %bb121, label %bb122
bb121:
  br label %bb132
bb122:
  br label %bb123
bb123:
  %t548 = load i64, ptr %l37, !tbaa !24
  %t549 = load i64, ptr %l41, !tbaa !24
  %t550 = load i64, ptr %l39, !tbaa !24
  %t553 = mul i64 %t549, %t550
  %t556 = add i64 %t548, %t553
  store i64 %t556, ptr %l42, !tbaa !24
  %t558 = load i64, ptr %l42, !tbaa !24
  %t559 = load ptr, ptr %lp8
  %t561 = getelementptr { i64, ptr }, ptr %t559, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !27
  %t563 = getelementptr ptr, ptr %t562, i64 %t558
  %t564 = load ptr, ptr %t563, !tbaa !39
  store ptr %t564, ptr %l43, !tbaa !29
  %t566 = load ptr, ptr %l43, !tbaa !29
  %t568 = icmp eq ptr %t566, null
  br i1 %t568, label %bb124, label %bb125
bb124:
  %t570 = load ptr, ptr %lp36
  store ptr %t570, ptr %l290, !tbaa !29
  %t571 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t571, ptr %l291, !tbaa !27
  %t572 = getelementptr { i64, ptr }, ptr %l291, i32 0, i32 1
  %t573 = load ptr, ptr %t572, !tbaa !27
  %t574 = getelementptr ptr, ptr %t573, i64 0
  %t575 = load ptr, ptr %t574, !tbaa !39
  %t577 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t575)
  store %"compiler/source:Span" %t577, ptr %l293
  br label %bb126
bb125:
  %t578 = load ptr, ptr %lp36
  %t579 = load ptr, ptr %l43, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v4, ptr %t578, ptr %t579)
  br label %bb128
bb126:
  store { i64, [4 x i64] } zeroinitializer, ptr %t582
  %t583 = getelementptr { i64, [4 x i64] }, ptr %t582, i32 0, i32 0
  store i64 25, ptr %t583
  %t584 = load %"compiler/source:Span", ptr %l293
  %t585 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t584, 0
  %t586 = getelementptr { i64, [4 x i64] }, ptr %t582, i32 0, i32 1
  store { %"compiler/source:Span" } %t585, ptr %t586
  %t587 = load { i64, [4 x i64] }, ptr %t582
  %t589 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t587, ptr %t589
  %t590 = load ptr, ptr %l290, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v4, ptr %t590, ptr %t589)
  br label %bb127
bb127:
  br label %bb129
bb128:
  br label %bb129
bb129:
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t594 = getelementptr %"compiler/check:Checker", ptr %t592, i32 0, i32 154
  %t595 = load i64, ptr %l42, !tbaa !24
  %t597 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t598 = load ptr, ptr %t597, !tbaa !27
  %t599 = getelementptr i64, ptr %t598, i64 %t595
  %t600 = load i64, ptr %t599, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t594, i64 %t600)
  br label %bb130
bb130:
  br label %bb131
bb131:
  %t603 = load i64, ptr %l41, !tbaa !24
  %t605 = add i64 %t603, 1
  store i64 %t605, ptr %l41, !tbaa !24
  br label %bb120
bb132:
  %t607 = load ptr, ptr %lp36
  %t609 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v4, ptr %t607)
  store { i64, ptr } %t609, ptr %l305
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s0)
  %t610 = load { i64, ptr }, ptr %l305, !tbaa !27
  store { i64, ptr } %t610, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca %"compiler/typed:Body"
  %rv = alloca i64
  %t34 = alloca %"compiler/typed:Body", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 14
  store ptr %t9, ptr %l10, !tbaa !29
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = trunc i64 %t10 to i32
  store i32 %t12, ptr %l13, !tbaa !23
  store { i64, [2 x i64] } %a1, ptr %l14
  store i32 %a2, ptr %l15, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 10
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t24, i64 %a3)
  store ptr %t28, ptr %l21
  br label %bb2
bb2:
  %t29 = load ptr, ptr %l21, !tbaa !29
  %t31 = getelementptr %"compiler/load:Module", ptr %t29, i32 0, i32 4
  %t32 = load i64, ptr %t31, !tbaa !24
  %t35 = load i32, ptr %l13, !tbaa !23
  %t36 = load { i64, [2 x i64] }, ptr %l14
  %t37 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2ftyped_3aBody_2ector(ptr %t34, ptr %v0, i32 %t35, { i64, [2 x i64] } %t36, i32 %t37, i64 %t32, %"compiler/source:Span" %a4)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %t34, i64 408, i1 false)
  br label %bb3
bb3:
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 408, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %l25, i64 408, i1 false)
  %t41 = load ptr, ptr %l10, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Hb4635a51dd989c2102029bfb32ae3a2f(ptr %v0, ptr %v0, ptr %t41, ptr %t40)
  br label %bb4
bb4:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t45, i64 0)
  br label %bb5
bb5:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 17
  %t50 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t49, i64 %t50)
  br label %bb6
bb6:
  %t53 = load i64, ptr %l5, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"compiler/msgs:Nearest"
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l63 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s0, ptr %t12, i32 %t13)
  store { i64, ptr } %t16, ptr %l17
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t20 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t18)
  store %"compiler/msgs:Nearest" %t20, ptr %l19
  br label %bb3
bb3:
  %t21 = load %"compiler/msgs:Nearest", ptr %l19
  %t22 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t21, ptr %t22
  store ptr %t22, ptr %l5, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t30, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  store i64 %t34, ptr %l8, !tbaa !24
  br label %bb6
bb5:
  br label %bb14
bb6:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l8, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t44 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t44, ptr %l31, !tbaa !27
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i32, ptr %t48, i64 %t45
  %t50 = load i32, ptr %t49, !tbaa !33
  %t52 = load ptr, ptr %l5, !tbaa !29
  store ptr %t52, ptr %l34, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t57 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t53, i32 %t50)
  store { i64, ptr } %t57, ptr %l37
  br label %bb10
bb10:
  %t58 = load ptr, ptr %l34, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l37, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t58, { i64, ptr } %t59)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l7, !tbaa !24
  br label %bb6
bb13:
  br label %bb14
bb14:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t66 = getelementptr %"compiler/msgs:Nearest", ptr %t64, i32 0, i32 1
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp sgt i64 %t69, 0
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l46
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t78 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l47, !tbaa !27
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l2, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %t85, i32 %t86)
  store { i64, ptr } %t89, ptr %l50
  br label %bb18
bb18:
  %t90 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t99 = getelementptr %"compiler/msgs:Nearest", ptr %t97, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t104 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchCaseMeant(ptr %v1, ptr %v1, ptr %s0, ptr %v1, { i64, ptr } %t101, { i64, ptr } %t96, { i64, ptr } %t100)
  store %"compiler/diagmsg:Msg" %t104, ptr %l54
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t105 = load %"compiler/diagmsg:Msg", ptr %l54
  store %"compiler/diagmsg:Msg" %t105, ptr %rv
  br label %ret
bb20:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l1, !tbaa !23
  %t110 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %t106, i32 %t107)
  store { i64, ptr } %t110, ptr %l57
  br label %bb21
bb21:
  %t111 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  store { i64, ptr } %t117, ptr %l58, !tbaa !27
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i32, ptr %l2, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %t118, i32 %t119)
  store { i64, ptr } %t122, ptr %l61
  br label %bb22
bb22:
  %t123 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  %t125 = extractvalue { i64, ptr } %t123, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t132 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchCase(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t130, { i64, ptr } %t129)
  store %"compiler/diagmsg:Msg" %t132, ptr %l63
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t133 = load %"compiler/diagmsg:Msg", ptr %l63
  store %"compiler/diagmsg:Msg" %t133, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainField(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l23 = alloca i32
  %l28 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %l38 = alloca ptr
  %l43 = alloca i32
  %l46 = alloca i1
  %l50 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t17 = icmp eq i32 %t13, %t14
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l10, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l17
  br label %bb8
bb8:
  %t25 = load i1, ptr %l17, !tbaa !21
  store i1 %t25, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l14, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l23
  br label %bb13
bb13:
  %t38 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t40 = trunc i64 19 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  store ptr %t48, ptr %l28, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l33
  br label %bb16
bb15:
  br label %bb23
bb16:
  %t59 = load ptr, ptr %l28, !tbaa !29
  %t60 = load i32, ptr %l33, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t61, ptr %l34
  br label %bb17
bb17:
  %t62 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t64 = trunc i64 26 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l38, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l3, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l43
  br label %bb20
bb19:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb22
bb20:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t80 = add i64 %t78, 1
  %t81 = load ptr, ptr %l38, !tbaa !29
  %t82 = load i32, ptr %l43, !tbaa !23
  %t84 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainField(ptr %v0, ptr %t81, i32 %t82, i64 %t80)
  store i1 %t84, ptr %l46
  br label %bb21
bb21:
  %t85 = load i1, ptr %l46, !tbaa !21
  store i1 %t85, ptr %l37, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l37, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
bb23:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l1, !tbaa !23
  %t89 = load i64, ptr %l2, !tbaa !24
  %t93 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t87, i32 %t88, i64 %t89)
  store i1 %t93, ptr %l50
  br label %bb24
bb24:
  %t94 = load i1, ptr %l50, !tbaa !21
  store i1 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i64
  %l23 = alloca { i64, i32 }
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca i32
  %l36 = alloca i1
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i64
  %l50 = alloca i64
  %l68 = alloca ptr
  %l72 = alloca i32
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l104 = alloca i64
  %l111 = alloca i32
  %l115 = alloca ptr
  %l116 = alloca i64
  %l120 = alloca { i64, i32 }
  %l129 = alloca i1
  %l130 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca i64
  %l138 = alloca i64
  %l143 = alloca i32
  %l147 = alloca i1
  %l151 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca ptr
  %l158 = alloca i64
  %l162 = alloca %"compiler/source:Span"
  %l165 = alloca { i64, ptr }
  %l167 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca i64
  %l171 = alloca i64
  %l173 = alloca i64
  %l178 = alloca i32
  %l183 = alloca i32
  %l192 = alloca ptr
  %l193 = alloca ptr
  %l194 = alloca i64
  %l196 = alloca ptr
  %l197 = alloca ptr
  %l200 = alloca i64
  %l201 = alloca %"compiler/source:Span"
  %l204 = alloca { i64, ptr }
  %l206 = alloca %"compiler/diagmsg:Msg"
  %l207 = alloca i64
  %l210 = alloca i1
  %l213 = alloca i1
  %l218 = alloca i64
  %l219 = alloca i64
  %l223 = alloca ptr
  %l224 = alloca ptr
  %l225 = alloca i64
  %l229 = alloca %"compiler/source:Span"
  %l230 = alloca ptr
  %l235 = alloca i64
  %l237 = alloca i32
  %l238 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l242 = alloca { i64, ptr }
  %l244 = alloca %"compiler/diagmsg:Msg"
  %l245 = alloca i64
  %s0 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %t7)
  store i1 %t9, ptr %l38
  br label %bb3
bb3:
  %t10 = load i1, ptr %l38, !tbaa !21
  store i1 %t10, ptr %l36, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l36, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t12)
  store ptr %t14, ptr %l40
  br label %bb8
bb8:
  %t15 = load ptr, ptr %l40, !tbaa !29
  store ptr %t15, ptr %l4, !tbaa !29
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l41
  br label %bb9
bb9:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l5
  store i64 %a2, ptr %l6, !tbaa !24
  store i64 %a3, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load i64, ptr %l8, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb15
bb12:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l8, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l50, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb14
bb14:
  %t48 = load i64, ptr %l50, !tbaa !24
  store i64 %t48, ptr %l47, !tbaa !24
  br label %bb15
bb15:
  %t49 = load i64, ptr %l47, !tbaa !24
  store i64 %t49, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t50 = load i64, ptr %l10, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l10, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store ptr %l5, ptr %l68, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/check:frame", ptr %t68, i32 0, i32 28
  %t74 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t70, i64 %t66)
  store i32 %t74, ptr %l72
  br label %bb20
bb20:
  %t75 = load ptr, ptr %l68, !tbaa !29
  %t76 = load i32, ptr %l72, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t75, i32 %t76)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb16
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %s0, ptr %t81, ptr %l5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l77
  br label %bb24
bb24:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l12
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t86, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  store i64 %t90, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  %t92 = load i64, ptr %l14, !tbaa !24
  %t93 = load i64, ptr %l15, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  br label %bb123
bb27:
  br label %bb28
bb28:
  %t100 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t100, ptr %l85, !tbaa !27
  %t101 = load i64, ptr %l14, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr ptr, ptr %t104, i64 %t101
  %t106 = load ptr, ptr %t105, !tbaa !39
  store ptr %t106, ptr %l16, !tbaa !29
  %t108 = load ptr, ptr %l16, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Catch", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t115 = icmp eq i64 %t113, 0
  br i1 %t115, label %bb29, label %bb30
bb29:
  br label %bb122
bb30:
  br label %bb31
bb31:
  %t117 = load ptr, ptr %l16, !tbaa !29
  %t119 = getelementptr %"compiler/ast:Catch", ptr %t117, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  store i64 %t124, ptr %l19, !tbaa !24
  br label %bb32
bb32:
  %t126 = load i64, ptr %l18, !tbaa !24
  %t127 = load i64, ptr %l19, !tbaa !24
  %t130 = icmp slt i64 %t126, %t127
  %t132 = xor i1 %t130, true
  br i1 %t132, label %bb33, label %bb34
bb33:
  br label %bb121
bb34:
  br label %bb35
bb35:
  %t134 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t134, ptr %l100, !tbaa !27
  %t135 = load i64, ptr %l18, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr ptr, ptr %t138, i64 %t135
  %t140 = load ptr, ptr %t139, !tbaa !39
  store ptr %t140, ptr %l20, !tbaa !29
  %t142 = load ptr, ptr %l20, !tbaa !29
  store ptr %t142, ptr %l103, !tbaa !29
  %t143 = ptrtoint ptr %v1 to i64
  store i64 %t143, ptr %l104, !tbaa !24
  %t144 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t144, label %bb36, label %bb37
bb36:
  %t146 = load ptr, ptr %l103, !tbaa !29
  %t147 = call ptr @__olang_region_or(ptr %t146, ptr %v1)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l104, !tbaa !24
  br label %bb37
bb37:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t153 = load ptr, ptr %l4, !tbaa !29
  %t155 = getelementptr %"compiler/check:frame", ptr %t153, i32 0, i32 4
  %t156 = load ptr, ptr %l20, !tbaa !29
  %t157 = load i64, ptr %l104
  %t158 = inttoptr i64 %t157 to ptr
  %t162 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %t158, ptr %t152, ptr %t155, ptr %t156)
  store i32 %t162, ptr %l111
  br label %bb38
bb38:
  %t163 = load i32, ptr %l111, !tbaa !23
  store i32 %t163, ptr %l21, !tbaa !23
  store i64 -1, ptr %l22, !tbaa !24
  %t164 = load i32, ptr %l21, !tbaa !23
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = icmp eq i32 %t164, %t165
  br i1 %t168, label %bb39, label %bb40
bb39:
  %t170 = load ptr, ptr %l20, !tbaa !29
  store ptr %t170, ptr %l115, !tbaa !29
  %t171 = ptrtoint ptr %v1 to i64
  store i64 %t171, ptr %l116, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t172, label %bb41, label %bb42
bb40:
  br label %bb44
bb41:
  %t174 = load ptr, ptr %l115, !tbaa !29
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr %v1)
  %t176 = ptrtoint ptr %t175 to i64
  store i64 %t176, ptr %l116, !tbaa !24
  br label %bb42
bb42:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l20, !tbaa !29
  %t179 = load i64, ptr %l116
  %t180 = inttoptr i64 %t179 to ptr
  %t183 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %t180, ptr %t177, ptr %t178)
  store { i64, i32 } %t183, ptr %l120
  br label %bb43
bb43:
  %t184 = load { i64, i32 }, ptr %l120
  store { i64, i32 } %t184, ptr %l23
  %t185 = getelementptr { i64, i32 }, ptr %l23, i32 0, i32 0
  %t186 = load i64, ptr %t185, !tbaa !24
  store i64 %t186, ptr %l22, !tbaa !24
  %t188 = getelementptr { i64, i32 }, ptr %l23, i32 0, i32 1
  %t189 = load i32, ptr %t188, !tbaa !23
  store i32 %t189, ptr %l21, !tbaa !23
  br label %bb44
bb44:
  %t191 = load i32, ptr %l21, !tbaa !23
  %t192 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t195 = icmp eq i32 %t191, %t192
  br i1 %t195, label %bb45, label %bb46
bb45:
  br label %bb120
bb46:
  br label %bb47
bb47:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t201 = load i32, ptr %l21, !tbaa !23
  %t204 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %t200, i32 %t201)
  store i1 %t204, ptr %l129
  br label %bb48
bb48:
  %t205 = load i1, ptr %l129, !tbaa !21
  br i1 %t205, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s12
  %t206 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s12, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, ptr %l130
  br label %bb51
bb50:
  br label %bb77
bb51:
  %t207 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t207, ptr %l24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t212 = load i32, ptr %l21, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %s12, ptr %t211, i32 %t212, ptr %l24)
  br label %bb52
bb52:
  store i1 false, ptr %l25, !tbaa !21
  store ptr %l24, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb53
bb53:
  %t217 = load i64, ptr %l27, !tbaa !24
  store i64 %t217, ptr %l136, !tbaa !24
  %t218 = load ptr, ptr %l26, !tbaa !29
  %t220 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s12, ptr %t218)
  store i64 %t220, ptr %l138
  br label %bb54
bb54:
  %t221 = load i64, ptr %l136, !tbaa !24
  %t222 = load i64, ptr %l138, !tbaa !24
  %t223 = icmp slt i64 %t221, %t222
  %t225 = xor i1 %t223, true
  br i1 %t225, label %bb55, label %bb56
bb55:
  br label %bb67
bb56:
  br label %bb57
bb57:
  %t227 = load ptr, ptr %l26, !tbaa !29
  %t228 = load i64, ptr %l27, !tbaa !24
  %t231 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s12, ptr %t227, i64 %t228)
  store i32 %t231, ptr %l143
  br label %bb58
bb58:
  %t232 = load i32, ptr %l143, !tbaa !23
  store i32 %t232, ptr %l28, !tbaa !23
  %t233 = load i32, ptr %l28, !tbaa !23
  %t234 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t237 = icmp ne i32 %t233, %t234
  br i1 %t237, label %bb59, label %bb60
bb59:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l28, !tbaa !23
  %t244 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrAmong(ptr %v0, ptr %s0, ptr %t239, i32 %t240, ptr %l12)
  store i1 %t244, ptr %l151
  br label %bb61
bb60:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb62
bb61:
  %t245 = load i1, ptr %l151, !tbaa !21
  store i1 %t245, ptr %l147, !tbaa !21
  br label %bb62
bb62:
  %t246 = load i1, ptr %l147, !tbaa !21
  br i1 %t246, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb65
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t247 = load i64, ptr %l27, !tbaa !24
  %t249 = add i64 %t247, 1
  store i64 %t249, ptr %l27, !tbaa !24
  br label %bb53
bb67:
  %t251 = load i1, ptr %l25, !tbaa !21
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb68, label %bb69
bb68:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l156, !tbaa !29
  %t256 = load ptr, ptr %l20, !tbaa !29
  store ptr %t256, ptr %l157, !tbaa !29
  %t257 = ptrtoint ptr %v1 to i64
  store i64 %t257, ptr %l158, !tbaa !24
  %t258 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t258, label %bb70, label %bb71
bb69:
  br label %bb76
bb70:
  %t260 = load ptr, ptr %l157, !tbaa !29
  %t261 = call ptr @__olang_region_or(ptr %t260, ptr %v1)
  %t262 = ptrtoint ptr %t261 to i64
  store i64 %t262, ptr %l158, !tbaa !24
  br label %bb71
bb71:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l20, !tbaa !29
  %t265 = load i64, ptr %l158
  %t266 = inttoptr i64 %t265 to ptr
  %t269 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %t266, ptr %t263, ptr %t264, i64 0)
  store %"compiler/source:Span" %t269, ptr %l162
  br label %bb72
bb72:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load i32, ptr %l21, !tbaa !23
  %t274 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t270, i32 %t271)
  store { i64, ptr } %t274, ptr %l165
  br label %bb73
bb73:
  %t275 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 0
  %t277 = extractvalue { i64, ptr } %t275, 1
  %t278 = mul i64 %t276, 1
  %t279 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t278)
  call void @llvm.memcpy.p0.p0.i64(ptr %t279, ptr %t277, i64 %t278, i1 false)
  %t280 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t279, 1
  %t283 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNotProduced(ptr %v0, ptr %v0, { i64, ptr } %t281)
  store %"compiler/diagmsg:Msg" %t283, ptr %l167
  br label %bb74
bb74:
  %t284 = load ptr, ptr %l156, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l162
  %t286 = load %"compiler/diagmsg:Msg", ptr %l167
  %t287 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t284, %"compiler/source:Span" %t285, %"compiler/diagmsg:Msg" %t286)
  store i64 %t287, ptr %l168
  br label %bb75
bb75:
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s12)
  br label %bb120
bb77:
  %t288 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t288, ptr %l29, !tbaa !23
  store ptr %l12, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb78
bb78:
  %t291 = load i64, ptr %l31, !tbaa !24
  store i64 %t291, ptr %l171, !tbaa !24
  %t292 = load ptr, ptr %l30, !tbaa !29
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t292)
  store i64 %t294, ptr %l173
  br label %bb79
bb79:
  %t295 = load i64, ptr %l171, !tbaa !24
  %t296 = load i64, ptr %l173, !tbaa !24
  %t297 = icmp slt i64 %t295, %t296
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb80, label %bb81
bb80:
  br label %bb89
bb81:
  br label %bb82
bb82:
  %t301 = load ptr, ptr %l30, !tbaa !29
  %t302 = load i64, ptr %l31, !tbaa !24
  %t305 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t301, i64 %t302)
  store i32 %t305, ptr %l178
  br label %bb83
bb83:
  %t306 = load i32, ptr %l178, !tbaa !23
  store i32 %t306, ptr %l32, !tbaa !23
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = getelementptr %"compiler/generic:Program", ptr %t310, i32 0, i32 2
  %t313 = load i32, ptr %l32, !tbaa !23
  %t316 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t312, i32 %t313)
  store i32 %t316, ptr %l183
  br label %bb84
bb84:
  %t317 = load i32, ptr %l21, !tbaa !23
  %t318 = load i32, ptr %l183, !tbaa !23
  %t320 = icmp eq i32 %t318, %t317
  br i1 %t320, label %bb85, label %bb86
bb85:
  %t322 = load i32, ptr %l32, !tbaa !23
  store i32 %t322, ptr %l29, !tbaa !23
  br label %bb87
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t324 = load i64, ptr %l31, !tbaa !24
  %t326 = add i64 %t324, 1
  store i64 %t326, ptr %l31, !tbaa !24
  br label %bb78
bb89:
  %t328 = load i32, ptr %l29, !tbaa !23
  %t329 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t332 = icmp eq i32 %t328, %t329
  br i1 %t332, label %bb90, label %bb91
bb90:
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l192, !tbaa !29
  %t335 = load ptr, ptr %l20, !tbaa !29
  store ptr %t335, ptr %l193, !tbaa !29
  %t336 = ptrtoint ptr %v1 to i64
  store i64 %t336, ptr %l194, !tbaa !24
  %t337 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t337, label %bb92, label %bb93
bb91:
  %t339 = load i64, ptr %l22, !tbaa !24
  %t341 = icmp sge i64 %t339, 0
  br i1 %t341, label %bb101, label %bb102
bb92:
  %t343 = load ptr, ptr %l193, !tbaa !29
  %t344 = call ptr @__olang_region_or(ptr %t343, ptr %v1)
  %t345 = ptrtoint ptr %t344 to i64
  store i64 %t345, ptr %l194, !tbaa !24
  br label %bb93
bb93:
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l196, !tbaa !29
  %t347 = load ptr, ptr %l20, !tbaa !29
  store ptr %t347, ptr %l197, !tbaa !29
  %t348 = load i64, ptr %l22, !tbaa !24
  %t350 = icmp sge i64 %t348, 0
  br i1 %t350, label %bb94, label %bb95
bb94:
  store i64 1, ptr %l200, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb96
bb96:
  %t352 = load i64, ptr %l194
  %t353 = inttoptr i64 %t352 to ptr
  %t354 = load ptr, ptr %l196, !tbaa !29
  %t355 = load ptr, ptr %l197, !tbaa !29
  %t356 = load i64, ptr %l200, !tbaa !24
  %t357 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %t353, ptr %t354, ptr %t355, i64 %t356)
  store %"compiler/source:Span" %t357, ptr %l201
  br label %bb97
bb97:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load i32, ptr %l21, !tbaa !23
  %t362 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t358, i32 %t359)
  store { i64, ptr } %t362, ptr %l204
  br label %bb98
bb98:
  %t363 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t363, 0
  %t365 = extractvalue { i64, ptr } %t363, 1
  %t366 = mul i64 %t364, 1
  %t367 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t366)
  call void @llvm.memcpy.p0.p0.i64(ptr %t367, ptr %t365, i64 %t366, i1 false)
  %t368 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr %t367, 1
  %t371 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNotProduced(ptr %v0, ptr %v0, { i64, ptr } %t369)
  store %"compiler/diagmsg:Msg" %t371, ptr %l206
  br label %bb99
bb99:
  %t372 = load ptr, ptr %l192, !tbaa !29
  %t373 = load %"compiler/source:Span", ptr %l201
  %t374 = load %"compiler/diagmsg:Msg", ptr %l206
  %t375 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t372, %"compiler/source:Span" %t373, %"compiler/diagmsg:Msg" %t374)
  store i64 %t375, ptr %l207
  br label %bb100
bb100:
  br label %bb119
bb101:
  %t376 = load i64, ptr %l22, !tbaa !24
  %t378 = icmp slt i64 %t376, 64
  store i1 %t378, ptr %l210, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb103
bb103:
  %t380 = load i1, ptr %l210, !tbaa !21
  br i1 %t380, label %bb104, label %bb105
bb104:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/check:Checker", ptr %t381, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 2
  %t387 = load i32, ptr %l29, !tbaa !23
  %t390 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t386, i32 %t387)
  store i64 %t390, ptr %l218
  br label %bb106
bb105:
  store i1 false, ptr %l213, !tbaa !21
  br label %bb107
bb106:
  %t391 = load i64, ptr %l22, !tbaa !24
  store i64 %t391, ptr %l219, !tbaa !24
  %t392 = load i64, ptr %l219, !tbaa !24
  %t393 = load i64, ptr %l219, !tbaa !24
  %t394 = shl i64 1, %t393
  %t395 = load i64, ptr %l218, !tbaa !65
  %t397 = and i64 %t395, %t394
  %t399 = icmp eq i64 %t397, 0
  store i1 %t399, ptr %l213, !tbaa !21
  br label %bb107
bb107:
  %t401 = load i1, ptr %l213, !tbaa !21
  br i1 %t401, label %bb108, label %bb109
bb108:
  %t402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t402, ptr %l223, !tbaa !29
  %t403 = load ptr, ptr %l20, !tbaa !29
  store ptr %t403, ptr %l224, !tbaa !29
  %t404 = ptrtoint ptr %v1 to i64
  store i64 %t404, ptr %l225, !tbaa !24
  %t405 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t405, label %bb110, label %bb111
bb109:
  br label %bb118
bb110:
  %t407 = load ptr, ptr %l224, !tbaa !29
  %t408 = call ptr @__olang_region_or(ptr %t407, ptr %v1)
  %t409 = ptrtoint ptr %t408 to i64
  store i64 %t409, ptr %l225, !tbaa !24
  br label %bb111
bb111:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l20, !tbaa !29
  %t412 = load i64, ptr %l225
  %t413 = inttoptr i64 %t412 to ptr
  %t416 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %t413, ptr %t410, ptr %t411, i64 0)
  store %"compiler/source:Span" %t416, ptr %l229
  br label %bb112
bb112:
  %t417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t417, ptr %l230, !tbaa !29
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"compiler/check:Checker", ptr %t418, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !29
  %t423 = getelementptr %"compiler/generic:Program", ptr %t421, i32 0, i32 2
  %t424 = load i32, ptr %l21, !tbaa !23
  %t425 = load i64, ptr %l22, !tbaa !24
  store i64 %t425, ptr %l235, !tbaa !24
  %t426 = load i64, ptr %l235, !tbaa !24
  %t427 = load i64, ptr %l235, !tbaa !24
  %t428 = shl i64 1, %t427
  %t432 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t423, i32 %t424, i64 %t428)
  store i32 %t432, ptr %l237
  br label %bb113
bb113:
  %t433 = load ptr, ptr %l230, !tbaa !29
  %t434 = load i32, ptr %l237, !tbaa !23
  %t435 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t433, i32 %t434)
  store { i64, ptr } %t435, ptr %l238
  br label %bb114
bb114:
  %t436 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t437 = extractvalue { i64, ptr } %t436, 0
  %t438 = extractvalue { i64, ptr } %t436, 1
  %t439 = mul i64 %t437, 1
  %t440 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t439)
  call void @llvm.memcpy.p0.p0.i64(ptr %t440, ptr %t438, i64 %t439, i1 false)
  %t441 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr %t440, 1
  store { i64, ptr } %t442, ptr %l239, !tbaa !27
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load i32, ptr %l29, !tbaa !23
  %t447 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t443, i32 %t444)
  store { i64, ptr } %t447, ptr %l242
  br label %bb115
bb115:
  %t448 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t449 = extractvalue { i64, ptr } %t448, 0
  %t450 = extractvalue { i64, ptr } %t448, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  %t455 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t457 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchWordNotProduced(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t455, { i64, ptr } %t454)
  store %"compiler/diagmsg:Msg" %t457, ptr %l244
  br label %bb116
bb116:
  %t458 = load ptr, ptr %l223, !tbaa !29
  %t459 = load %"compiler/source:Span", ptr %l229
  %t460 = load %"compiler/diagmsg:Msg", ptr %l244
  %t461 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t458, %"compiler/source:Span" %t459, %"compiler/diagmsg:Msg" %t460)
  store i64 %t461, ptr %l245
  br label %bb117
bb117:
  br label %bb118
bb118:
  br label %bb119
bb119:
  br label %bb120
bb120:
  %t462 = load i64, ptr %l18, !tbaa !24
  %t464 = add i64 %t462, 1
  store i64 %t464, ptr %l18, !tbaa !24
  br label %bb32
bb121:
  br label %bb122
bb122:
  %t466 = load i64, ptr %l14, !tbaa !24
  %t468 = add i64 %t466, 1
  store i64 %t468, ptr %l14, !tbaa !24
  br label %bb25
bb123:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 148
  %t10 = load i1, ptr %t9, !tbaa !21
  store i1 %t10, ptr %l2, !tbaa !21
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 148
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
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 148
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i1, ptr %l2, !tbaa !21
  %t33 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 148
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroBorrowedFrom(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l12 = alloca i64
  %l15 = alloca i1
  %l18 = alloca i1
  %l27 = alloca i64
  %l30 = alloca i64
  %l51 = alloca i1
  %l52 = alloca i1
  %l56 = alloca i1
  %rv = alloca i64
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
  store i64 %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load i64, ptr %l12, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t14, i64 %t15)
  store i1 %t18, ptr %l18
  br label %bb4
bb4:
  %t19 = load i1, ptr %l18, !tbaa !21
  %t20 = xor i1 %t19, true
  store i1 %t20, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l15, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i64 0, ptr %l3, !tbaa !24
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb14
bb11:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = sub i64 %t41, %t42
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = sub i64 %t49, 1
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = sdiv i64 %t51, %t52
  store i64 %t55, ptr %l30, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb13
bb13:
  %t57 = load i64, ptr %l30, !tbaa !24
  store i64 %t57, ptr %l27, !tbaa !24
  br label %bb14
bb14:
  %t58 = load i64, ptr %l27, !tbaa !24
  store i64 %t58, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb16, label %bb17
bb16:
  br label %bb28
bb17:
  br label %bb18
bb18:
  %t67 = load i64, ptr %l3, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t67, %t72
  store i64 %t75, ptr %l8, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l2, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %t77, i64 %t78, i64 %t79)
  store i1 %t83, ptr %l51
  br label %bb19
bb19:
  %t84 = load i1, ptr %l51, !tbaa !21
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t91 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %t85, i64 %t86, i64 %t87)
  store i1 %t91, ptr %l56
  br label %bb22
bb21:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb23
bb22:
  %t92 = load i1, ptr %l56, !tbaa !21
  store i1 %t92, ptr %l52, !tbaa !21
  br label %bb23
bb23:
  %t93 = load i1, ptr %l52, !tbaa !21
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t94 = load i64, ptr %l8, !tbaa !24
  store i64 %t94, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l7, !tbaa !24
  br label %bb15
bb28:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotCall(ptr %v0, ptr %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i64
  %l8 = alloca { i64, ptr }
  %l15 = alloca i64
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca { i64, [3 x i64] }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t4, i32 %t5)
  store { i64, ptr } %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  %t12 = icmp eq i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t23 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %t17, i32 %t18, i64 %a2)
  store i64 %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load i64, ptr %l15, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 156
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load i1, ptr %l19, !tbaa !21
  %t33 = xor i1 %t32, true
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 156
  store ptr %t37, ptr %l22, !tbaa !29
  %t38 = load i64, ptr %l4, !tbaa !24
  store i64 %t38, ptr %l23, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t43 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t39, %"compiler/source:Span" %a3)
  store { i64, [3 x i64] } %t43, ptr %l26
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = load { i64, [3 x i64] }, ptr %l26
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %t44, i64 %t45, { i64, [3 x i64] } %t46)
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrReceivers(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l50 = alloca i64
  %l52 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l57 = alloca i1
  %l62 = alloca ptr
  %l71 = alloca i64
  %l75 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l83 = alloca i1
  %l85 = alloca i1
  %l87 = alloca i1
  %l89 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l100 = alloca i64
  %l106 = alloca ptr
  %l122 = alloca i64
  %l123 = alloca { i64, ptr }
  %l124 = alloca i64
  %l127 = alloca i64
  %l128 = alloca i64
  %l134 = alloca i64
  %l135 = alloca i32
  %l138 = alloca i64
  %l148 = alloca ptr
  %l154 = alloca ptr
  %l162 = alloca { i64, [3 x i64] }
  %l163 = alloca %"compiler/diagmsg:Msg"
  %l164 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t306 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 14
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l22
  br label %bb2
bb2:
  %t8 = load i64, ptr %l22, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l29, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l29, !tbaa !24
  store i64 %t35, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l26, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb76
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 19
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l50
  br label %bb13
bb13:
  %t62 = load i64, ptr %l50, !tbaa !24
  %t63 = icmp ne i64 %t62, 2
  br i1 %t63, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 83
  store ptr %t67, ptr %l54, !tbaa !29
  %t68 = load i64, ptr %l7, !tbaa !24
  %t70 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t68, i64 0)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t70, ptr %l56
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l54, !tbaa !29
  %t72 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l56
  %t73 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t71, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t72)
  store i1 %t73, ptr %l57
  br label %bb17
bb17:
  %t74 = load i1, ptr %l57, !tbaa !21
  %t75 = xor i1 %t74, true
  store i1 %t75, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t77 = load i1, ptr %l52, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb75
bb20:
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 14
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t80, i64 %t81)
  store ptr %t84, ptr %l62
  br label %bb22
bb22:
  %t85 = load ptr, ptr %l62, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Body", ptr %t85, i32 0, i32 1
  %t88 = load { i64, [2 x i64] }, ptr %t87
  store { i64, [2 x i64] } %t88, ptr %l8
  %t90 = load { i64, [2 x i64] }, ptr %l8
  %t92 = extractvalue { i64, [2 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 0
  br i1 %t93, label %bb23, label %bb24
bb23:
  %t95 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t96 = getelementptr { i64 }, ptr %t95, i32 0, i32 0
  %t97 = load i64, ptr %t96
  store i64 %t97, ptr %l9, !tbaa !24
  br label %bb25
bb24:
  br label %bb69
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i64, ptr %l9, !tbaa !24
  %t106 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t102, i64 %t103)
  store i64 %t106, ptr %l71
  br label %bb26
bb26:
  %t107 = load i64, ptr %l71, !tbaa !24
  store i64 %t107, ptr %l10, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i64, ptr %l10, !tbaa !24
  %t115 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t111, i64 %t112)
  store ptr %t115, ptr %l75
  br label %bb27
bb27:
  %t116 = load ptr, ptr %l75, !tbaa !29
  store ptr %t116, ptr %l11, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l11, !tbaa !29
  %t120 = getelementptr %"compiler/ast:Func", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %t120, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t117, i32 %t121)
  store { i64, ptr } %t124, ptr %l79
  br label %bb28
bb28:
  %t125 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t125, ptr %l12, !tbaa !27
  %t126 = load ptr, ptr %l11, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Func", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = icmp eq ptr %t129, null
  br i1 %t131, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb36
bb30:
  %t133 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t133, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t135, ptr %l85
  br label %bb31
bb31:
  %t136 = load i1, ptr %l85, !tbaa !21
  %t137 = xor i1 %t136, true
  br i1 %t137, label %bb32, label %bb33
bb32:
  %t139 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t141 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t139, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t141, ptr %l89
  br label %bb34
bb33:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb35
bb34:
  %t142 = load i1, ptr %l89, !tbaa !21
  %t143 = xor i1 %t142, true
  store i1 %t143, ptr %l87, !tbaa !21
  br label %bb35
bb35:
  %t145 = load i1, ptr %l87, !tbaa !21
  store i1 %t145, ptr %l83, !tbaa !21
  br label %bb36
bb36:
  %t146 = load i1, ptr %l83, !tbaa !21
  br i1 %t146, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb40
bb38:
  %t147 = load i64, ptr %l10, !tbaa !24
  %t150 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t147)
  store i1 %t150, ptr %l94
  br label %bb39
bb39:
  %t151 = load i1, ptr %l94, !tbaa !21
  store i1 %t151, ptr %l91, !tbaa !21
  br label %bb40
bb40:
  %t152 = load i1, ptr %l91, !tbaa !21
  br i1 %t152, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb75
bb42:
  br label %bb43
bb43:
  %t153 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t153, i1 true)
  br label %bb44
bb44:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i64, ptr %l10, !tbaa !24
  %t163 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t159, i64 %t160)
  store i64 %t163, ptr %l100
  br label %bb45
bb45:
  %t164 = load i64, ptr %l100, !tbaa !24
  store i64 %t164, ptr %l13, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 0
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/load:Loader", ptr %t171, i32 0, i32 10
  %t174 = load i64, ptr %l13, !tbaa !24
  %t177 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t173, i64 %t174)
  store ptr %t177, ptr %l106
  br label %bb46
bb46:
  %t178 = load ptr, ptr %l106, !tbaa !29
  %t180 = getelementptr %"compiler/load:Module", ptr %t178, i32 0, i32 6
  %t181 = load ptr, ptr %t180, !tbaa !29
  store ptr %t181, ptr %l14, !tbaa !29
  %t183 = load ptr, ptr %l14, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb47, label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_7cf0066f219391e3_f59e2f38f1229917)
  unreachable
bb48:
  br label %bb49
bb49:
  %t187 = load ptr, ptr %l14, !tbaa !29
  %t190 = getelementptr %"compiler/source:Source", ptr %t187, i32 0, i32 1
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %l15, !tbaa !27
  %t193 = load ptr, ptr %l11, !tbaa !29
  %t195 = getelementptr %"compiler/ast:Func", ptr %t193, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !29
  %t198 = icmp eq ptr %t196, null
  br i1 %t198, label %bb50, label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_93e3a02800d00d4_2c47855b6b12ccf8)
  unreachable
bb51:
  br label %bb52
bb52:
  %t200 = load ptr, ptr %l11, !tbaa !29
  %t202 = getelementptr %"compiler/ast:Func", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t206 = getelementptr %"compiler/ast:Param", ptr %t203, i32 0, i32 0
  %t207 = getelementptr %"compiler/source:Span", ptr %t206, i32 0, i32 1
  %t208 = load i32, ptr %t207, !tbaa !23
  %t210 = sext i32 %t208 to i64
  store i64 %t210, ptr %l16, !tbaa !24
  %t212 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t212, ptr %l123, !tbaa !27
  %t213 = load i64, ptr %l16, !tbaa !24
  store i64 %t213, ptr %l124, !tbaa !24
  %t214 = load ptr, ptr %l11, !tbaa !29
  %t216 = getelementptr %"compiler/ast:Func", ptr %t214, i32 0, i32 0
  %t217 = getelementptr %"compiler/source:Span", ptr %t216, i32 0, i32 1
  %t218 = load i32, ptr %t217, !tbaa !23
  %t220 = sext i32 %t218 to i64
  store i64 %t220, ptr %l127, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  store i64 %t222, ptr %l128, !tbaa !24
  %t223 = load i64, ptr %l124, !tbaa !24
  %t224 = icmp sge i64 %t223, 0
  br i1 %t224, label %bb53, label %bb54
bb53:
  %t226 = load i64, ptr %l124, !tbaa !24
  %t227 = load i64, ptr %l127, !tbaa !24
  %t228 = icmp sle i64 %t226, %t227
  br i1 %t228, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb)
  unreachable
bb55:
  %t230 = load i64, ptr %l127, !tbaa !24
  %t231 = load i64, ptr %l128, !tbaa !24
  %t232 = icmp sle i64 %t230, %t231
  br i1 %t232, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb)
  unreachable
bb57:
  %t234 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = load i64, ptr %l124, !tbaa !24
  %t237 = load i64, ptr %l127, !tbaa !24
  %t238 = getelementptr i8, ptr %t235, i64 %t236
  %t239 = sub i64 %t237, %t236
  %t240 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t238, 1
  %t242 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t245 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v0, { i64, ptr } %t241, { i64, ptr } %t242)
  %t246 = extractvalue { i32, i64 } %t245, 1
  %t247 = extractvalue { i32, i64 } %t245, 0
  store i32 %t247, ptr %l135
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb60, label %ok.249, !prof !99
ok.249:
  store i64 %t246, ptr %l134
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb)
  unreachable
bb59:
  %t250 = load i64, ptr %l134, !tbaa !24
  store i64 %t250, ptr %l122, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 -1, ptr %l122, !tbaa !24
  br label %bb62
bb62:
  %t251 = load i64, ptr %l122, !tbaa !24
  store i64 %t251, ptr %l17, !tbaa !24
  %t252 = load i64, ptr %l17, !tbaa !24
  %t254 = icmp slt i64 %t252, 0
  br i1 %t254, label %bb63, label %bb64
bb63:
  %t256 = load ptr, ptr %l11, !tbaa !29
  %t258 = getelementptr %"compiler/ast:Func", ptr %t256, i32 0, i32 0
  %t259 = getelementptr %"compiler/source:Span", ptr %t258, i32 0, i32 0
  %t260 = load i32, ptr %t259, !tbaa !23
  %t262 = sext i32 %t260 to i64
  store i64 %t262, ptr %l138, !tbaa !24
  br label %bb65
bb64:
  %t264 = load i64, ptr %l16, !tbaa !24
  %t265 = load i64, ptr %l17, !tbaa !24
  %t268 = add i64 %t264, %t265
  store i64 %t268, ptr %l138, !tbaa !24
  br label %bb65
bb65:
  %t270 = load i64, ptr %l138, !tbaa !24
  store i64 %t270, ptr %l18, !tbaa !24
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/check:Checker", ptr %t271, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = getelementptr %"compiler/generic:Program", ptr %t274, i32 0, i32 0
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/load:Loader", ptr %t277, i32 0, i32 4
  %t280 = load ptr, ptr %t279, !tbaa !29
  store ptr %t280, ptr %l148, !tbaa !29
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/check:Checker", ptr %t281, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t286 = getelementptr %"compiler/generic:Program", ptr %t284, i32 0, i32 0
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = getelementptr %"compiler/load:Loader", ptr %t287, i32 0, i32 10
  %t290 = load i64, ptr %l13, !tbaa !24
  %t293 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t289, i64 %t290)
  store ptr %t293, ptr %l154
  br label %bb66
bb66:
  %t294 = load ptr, ptr %l154, !tbaa !29
  %t296 = getelementptr %"compiler/load:Module", ptr %t294, i32 0, i32 4
  %t297 = load i64, ptr %t296, !tbaa !24
  %t298 = load i64, ptr %l18, !tbaa !24
  %t299 = load i64, ptr %l18, !tbaa !24
  %t300 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t305 = add i64 %t299, %t302
  store { i64, [3 x i64] } zeroinitializer, ptr %t306
  %t307 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 0
  store i64 3, ptr %t307
  %t309 = insertvalue { i64, i64, i64 } undef, i64 %t297, 0
  %t311 = insertvalue { i64, i64, i64 } %t309, i64 %t298, 1
  %t313 = insertvalue { i64, i64, i64 } %t311, i64 %t305, 2
  %t314 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 1
  store { i64, i64, i64 } %t313, ptr %t314
  %t315 = load { i64, [3 x i64] }, ptr %t306
  store { i64, [3 x i64] } %t315, ptr %l162
  %t316 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrReceiverWritable(ptr %v0)
  store %"compiler/diagmsg:Msg" %t316, ptr %l163
  br label %bb67
bb67:
  %t317 = load ptr, ptr %l148, !tbaa !29
  %t318 = load { i64, [3 x i64] }, ptr %l162
  %t319 = load %"compiler/diagmsg:Msg", ptr %l163
  %t320 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t317, { i64, [3 x i64] } %t318, %"compiler/diagmsg:Msg" %t319)
  store i64 %t320, ptr %l164
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s4)
  br label %bb74
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_4caebcac4cec7311_26f3d9a9847d99e5)
  unreachable
bb74:
  call void @__olang_scope_close(ptr %s2)
  br label %bb75
bb75:
  %t321 = load i64, ptr %l6, !tbaa !24
  %t323 = add i64 %t321, 1
  store i64 %t323, ptr %l6, !tbaa !24
  br label %bb9
bb76:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca ptr
  %l22 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i32
  %l28 = alloca i1
  %l37 = alloca { i64, ptr }
  %l44 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l49 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca %"compiler/check:fieldSet"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %wh2 = alloca ptr
  %wc2 = alloca ptr
  %ws2 = alloca i32
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l11, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l16
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i32, ptr %l16, !tbaa !23
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v0, ptr %t14, i32 %t15)
  store ptr %t16, ptr %l17
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l17, !tbaa !29
  store ptr %t17, ptr %l3, !tbaa !29
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %s2, ptr %t24)
  %t27 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t26, 0, 1
  %t28 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t26, 0, 0
  store ptr %t27, ptr %wh2
  store ptr %t28, ptr %wc2
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t26, ptr %l22
  br label %bb6
bb5:
  br label %bb21
bb6:
  %t29 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l22
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t29, ptr %l4
  br label %bb7
bb7:
  %t31 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s2, ptr %l4)
  %t32 = extractvalue { i32, ptr } %t31, 1
  %t33 = extractvalue { i32, ptr } %t31, 0
  store i32 %t33, ptr %l26
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb9, label %ok.35, !prof !99
ok.35:
  store ptr %t32, ptr %l25
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l25, !tbaa !29
  store ptr %t36, ptr %l23, !tbaa !29
  br label %bb11
bb9:
  %t37 = load i32, ptr %l26, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  store i1 %t40, ptr %l28, !tbaa !21
  br label %bb10
bb10:
  br label %bb20
bb11:
  %t41 = load ptr, ptr %l23, !tbaa !29
  %t44 = getelementptr %"compiler/ast:VarDecl", ptr %t41, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t59 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t59, ptr %l37, !tbaa !27
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i32, ptr %t63, i64 %t60
  %t65 = load i32, ptr %t64, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2, i32 %t65)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb12
bb18:
  br label %bb19
bb19:
  br label %bb7
bb20:
  store i32 0, ptr %ws2
  br label %wend2
wend2.c0:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  %t74 = ptrtoint ptr %v1 to i64
  store i64 %t74, ptr %l44, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afieldSet_2e0
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t77 = call ptr @__olang_region_make(ptr %v1)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l44, !tbaa !24
  br label %bb23
bb23:
  %t79 = load i64, ptr %l44
  %t80 = inttoptr i64 %t79 to ptr
  %t82 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %t80, ptr %l2)
  store { i64, ptr } %t82, ptr %l47
  br label %bb24
bb24:
  %t83 = load i32, ptr %l1, !tbaa !23
  store i32 %t83, ptr %l48, !tbaa !23
  %t84 = ptrtoint ptr %v1 to i64
  store i64 %t84, ptr %l49, !tbaa !24
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afieldSet_2e2
  br i1 %t85, label %bb25, label %bb26
bb25:
  %t87 = call ptr @__olang_region_make(ptr %v1)
  %t88 = ptrtoint ptr %t87 to i64
  store i64 %t88, ptr %l49, !tbaa !24
  br label %bb26
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l1, !tbaa !23
  %t91 = load i64, ptr %l49
  %t92 = inttoptr i64 %t91 to ptr
  %t95 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %t92, ptr %t89, i32 %t90)
  store { i64, ptr } %t95, ptr %l53
  br label %bb27
bb27:
  %t96 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t97 = load i64, ptr %l49
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = extractvalue { i64, ptr } %t96, 0
  %t100 = extractvalue { i64, ptr } %t96, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %t98, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t106 = load i32, ptr %l48, !tbaa !23
  %t108 = call %"compiler/check:fieldSet" @compiler_2fcheck_3afieldSet_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t105, i32 %t106, { i64, ptr } %t104, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store %"compiler/check:fieldSet" %t108, ptr %l55
  br label %bb28
bb28:
  %t109 = load %"compiler/check:fieldSet", ptr %l55
  %t110 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store %"compiler/check:fieldSet" %t109, ptr %t110
  call void @__olang_scope_close(ptr %s0)
  store ptr %t110, ptr %rv
  br label %ret
wend2:
  %t112 = load ptr, ptr %wh2
  %t113 = load ptr, ptr %wc2
  %t114 = call ptr @llvm.coro.promise(ptr %t112, i32 8, i1 false)
  %t115 = getelementptr { { i32, ptr }, i32 }, ptr %t114, i32 0, i32 1
  store i32 2, ptr %t115
  %t116 = call { i32, ptr } %t113(ptr %t112, ptr null)
  %t117 = load i32, ptr %ws2
  switch i32 %t117, label %wend2.c0 [ ]
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewBody(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca i64
  %l12 = alloca i1
  %l15 = alloca i64
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Body", ptr %t5, i32 0, i32 11
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb9
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewable(ptr %v0, ptr %v0, ptr %t12, ptr %t13)
  store i64 %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = icmp slt i64 %t17, 0
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v0, ptr %t20, ptr %t21)
  store i64 %t24, ptr %l15
  br label %bb7
bb6:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp slt i64 %t25, 0
  store i1 %t26, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l12, !tbaa !21
  store i1 %t28, ptr %l7, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l7, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 78
  store ptr %t32, ptr %l18, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t33)
  store ptr %t35, ptr %l20
  br label %bb13
bb13:
  %t36 = load ptr, ptr %l20, !tbaa !29
  %t38 = getelementptr %"compiler/check:frame", ptr %t36, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  store i64 %t39, ptr %l22, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t40)
  store ptr %t42, ptr %l24
  br label %bb14
bb14:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t45 = getelementptr %"compiler/check:frame", ptr %t43, i32 0, i32 2
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load i64, ptr %l22, !tbaa !24
  %t49 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t47, i64 %t46)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t49, ptr %l27
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l18, !tbaa !29
  %t51 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t50, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t51)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewElig(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca %"compiler/typed:Local"
  %l49 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l55 = alloca i1
  %l58 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t7 = load i64, ptr %l13, !tbaa !24
  %t9 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t7, i64 %t6)
  store i64 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l6, !tbaa !24
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
  store i64 %t38, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l9, !tbaa !24
  store i64 %a2, ptr %l40, !tbaa !24
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l41, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 5
  %t62 = load i64, ptr %l9, !tbaa !24
  %t65 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t61, i64 %t62)
  store i32 %t65, ptr %l45
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l41, !tbaa !29
  %t67 = load i32, ptr %l45, !tbaa !23
  %t68 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v1, ptr %t66, i32 %t67)
  store %"compiler/typed:Local" %t68, ptr %l46
  br label %bb14
bb14:
  %t69 = getelementptr %"compiler/typed:Local", ptr %l46, i32 0, i32 1
  %t70 = getelementptr %"compiler/source:Span", ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t74 = load i64, ptr %l40, !tbaa !24
  %t76 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t74, i64 %t73)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t76, ptr %l49
  br label %bb15
bb15:
  %t77 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l49
  %t80 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/load:Loader", ptr %t84, i32 0, i32 5
  %t90 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t86, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t77)
  store i1 %t90, ptr %l55
  br label %bb16
bb16:
  %t91 = load i1, ptr %l55, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb17, label %bb18
bb17:
  %t94 = load i64, ptr %l3, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  store i64 %t95, ptr %l58, !tbaa !24
  %t96 = load i64, ptr %l58, !tbaa !24
  %t97 = load i64, ptr %l58, !tbaa !24
  %t98 = shl i64 1, %t97
  %t101 = or i64 %t94, %t98
  store i64 %t101, ptr %l3, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l8, !tbaa !24
  br label %bb9
bb21:
  %t107 = load i64, ptr %l3, !tbaa !24
  store i64 %t107, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t4, i32 %a1)
  store { i64, ptr } %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t9, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb4:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l19, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb9, label %bb10
bb9:
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t60, ptr %l40, !tbaa !27
  %t61 = load i64, ptr %l9, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i32, ptr %t64, i64 %t61
  %t66 = load i32, ptr %t65, !tbaa !33
  %t70 = icmp eq i32 %t66, %a2
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t72 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t72, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t74 = load i64, ptr %l8, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l8, !tbaa !24
  br label %bb8
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l10 = alloca i64
  %rv = alloca i1
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
  %t16 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t12, i32 %t13)
  store i64 %t16, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t18 = load i64, ptr %l10, !tbaa !24
  %t20 = and i64 %t18, %t17
  %t22 = icmp ne i64 %t20, 0
  store i1 %t22, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l5, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ehasNamed(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb17
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t15, ptr %l12, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l15, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 30}
  %t30 = icmp eq i64 %t28, 26
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_563ec608ec426d3c_d7d09179516a0f40)
  unreachable
bb15:
  br label %bb16
bb16:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l2, !tbaa !24
  br label %bb1
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ematchAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca i1
  %l20 = alloca { i64, ptr }
  %l25 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Match", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t4, { i64, ptr } %t6)
  store i1 %t9, ptr %l10
  br label %bb1
bb1:
  %t10 = load i1, ptr %l10, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Match", ptr %t12, i32 0, i32 3
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t29, ptr %l20, !tbaa !27
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr ptr, ptr %t33, i64 %t30
  %t35 = load ptr, ptr %t34, !tbaa !39
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t41 = call i1 @compiler_2fcheck_2ecaseAssigns(ptr %v0, ptr %v1, ptr %t35, { i64, ptr } %t38)
  store i1 %t41, ptr %l25
  br label %bb9
bb9:
  %t42 = load i1, ptr %l25, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb5
bb14:
  store i1 false, ptr %rv
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

define dso_local ptr @compiler_2fcheck_2epastAway(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 17
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2epastAway(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l10
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l10, !tbaa !29
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_55e43ab8a3145b19_623cb1abd394c54d)
  unreachable
bb12:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2epatRow(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v1, ptr %v0, ptr %t5, ptr %a0)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v1, ptr %v1, ptr %t9)
  store { i64, ptr } %t11, ptr %l7
  br label %bb3
bb3:
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store ptr null, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_8d3b159055c7af2c_5997e8ea93888888)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:ValueAsk" @compiler_2fcheck_3aValueAsk_2ector(ptr %v0, i32 %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, { i64, [3 x i64] } %a5) #0 {
entry:
  %rv = alloca %"compiler/check:ValueAsk"
  %t13 = alloca { i64, [3 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [3 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [3 x i64] }, ptr %t13, i32 0, i32 0
  store i64 0, ptr %t14
  %t15 = load { i64, [3 x i64] }, ptr %t13
  %t18 = insertvalue %"compiler/check:ValueAsk" undef, i32 %a0, 0
  %t20 = insertvalue %"compiler/check:ValueAsk" %t18, i64 %a1, 1
  %t22 = insertvalue %"compiler/check:ValueAsk" %t20, %"compiler/source:Span" %a2, 2
  %t24 = insertvalue %"compiler/check:ValueAsk" %t22, i32 %a3, 3
  %t26 = insertvalue %"compiler/check:ValueAsk" %t24, i64 %a4, 4
  %t28 = insertvalue %"compiler/check:ValueAsk" %t26, { i64, [3 x i64] } %a5, 5
  %t30 = insertvalue %"compiler/check:ValueAsk" %t28, i1 false, 6
  %t32 = insertvalue %"compiler/check:ValueAsk" %t30, { i64, [3 x i64] } %t15, 7
  store %"compiler/check:ValueAsk" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:ValueAsk", ptr %rv
  ret %"compiler/check:ValueAsk" %rr
}

define dso_local %"compiler/check:rawTable" @compiler_2fcheck_3arawTable_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i1 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/check:rawTable"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:rawTable" undef, i32 %a0, 0
  %t12 = insertvalue %"compiler/check:rawTable" %t10, i1 %a1, 1
  %t14 = insertvalue %"compiler/check:rawTable" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/check:rawTable" %t14, { i64, ptr } %a3, 3
  store %"compiler/check:rawTable" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:rawTable", ptr %rv
  ret %"compiler/check:rawTable" %rr
}

define dso_local %"compiler/check:unsetCand" @compiler_2fcheck_3aunsetCand_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i1 %a3, i64 %a4, %"compiler/source:Span" %a5, i32 %a6, i1 %a7) #0 {
entry:
  %rv = alloca %"compiler/check:unsetCand"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/check:unsetCand" undef, i64 %a0, 0
  %t20 = insertvalue %"compiler/check:unsetCand" %t18, i64 %a1, 1
  %t22 = insertvalue %"compiler/check:unsetCand" %t20, i64 %a2, 2
  %t24 = insertvalue %"compiler/check:unsetCand" %t22, i1 %a3, 3
  %t26 = insertvalue %"compiler/check:unsetCand" %t24, i64 %a4, 4
  %t28 = insertvalue %"compiler/check:unsetCand" %t26, %"compiler/source:Span" %a5, 5
  %t30 = insertvalue %"compiler/check:unsetCand" %t28, i32 %a6, 6
  %t32 = insertvalue %"compiler/check:unsetCand" %t30, i1 %a7, 7
  store %"compiler/check:unsetCand" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:unsetCand", ptr %rv
  ret %"compiler/check:unsetCand" %rr
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
@.d0 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"no result" }>, align 8
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"several" }>, align 8
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
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@__olang_empty_array = external constant [16 x i64]
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3afieldSet_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3afieldSet_2e2 = weak hidden constant i1 false
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @llvm.coro.promise(ptr, i32, i1)
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

declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_f6343df54e321530_17a07bfc25de31ec = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFieldHolds(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_656971ecbb067a73_942081a116b7a267 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebareOwner(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_69849388ef8c3582_e74200ba7d497546 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderOwnerOk(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emakesOwner(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderResult(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderTakesOwner(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderNameTaken(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNameTaken(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOverlap(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderTwice(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3, i1 %a4)
declare { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0)
declare %"compiler/check:errBind" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eAt_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskDefaultInStatement(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b7a62f2efaadd4af_1b278ceebf7ddf33 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseNeedsDefault(ptr %v0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyAll(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4)
@olang_loc_4aef7e9433005aa6_9cd0eb13e1392442 = external constant [0 x i8]
declare %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
@olang_loc_89a248f11218248d_cad7b116269b1029 = external constant [0 x i8]
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_eb46e205ba3ff6f_6cc0aaf3953c4d5b = external constant [0 x i8]
@olang_loc_b8f4ea1c8ca382ae_7341728a048bae5a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprOpen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_He56f4e53267726fe8dffcfd34146d8e6(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_8ffd1bc2c5314d3c_1a7e454980bc5230 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_6754b7d1e64b38ab_d9cb88888f730d0f = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7e44f5428cde099f_6973e730479eef7b = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H7dde68908c71339667eba96ae7e6565c(ptr %v0, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_aed268118a11ee23_4542719cec09658f = external constant [0 x i8]
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d8c36506bebb6839_82dbce7e68d1cca5 = external constant [0 x i8]
@olang_loc_2a22705e3675cc6a_15625908cbc104fe = external constant [0 x i8]
@olang_loc_e03e15fa1ad8573f_767a3f28b3ff5a33 = external constant [0 x i8]
@olang_loc_f1d5d3b2155f2ddc_ad13ea37e14bc210 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgUnknown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgRequired(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgAlsoPositional(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePositionalAfterNamed(ptr %v0)
@olang_loc_6a354e0ae5aa0db2_42d5d79e5424950e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_3aBody_2ector(ptr %out, ptr %v0, i32 %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Hb4635a51dd989c2102029bfb32ae3a2f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchCaseMeant(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchCase(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrAmong(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNotProduced(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchWordNotProduced(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
@olang_loc_9e01274f48f7ce6d_f4de7e29f0d3bc19 = external constant [0 x i8]
@olang_loc_67ebba1fc016fa85_5eca450ae3d6f0c1 = external constant [0 x i8]
@G_2ecompiler_2fcheck_2eRvText = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7cf0066f219391e3_f59e2f38f1229917 = external constant [0 x i8]
@olang_loc_93e3a02800d00d4_2c47855b6b12ccf8 = external constant [0 x i8]
@olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrReceiverWritable(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_4caebcac4cec7311_26f3d9a9847d99e5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/check:fieldSet" @compiler_2fcheck_3afieldSet_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2ftyped_2eViewBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\3E\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_563ec608ec426d3c_d7d09179516a0f40 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecaseAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_55e43ab8a3145b19_623cb1abd394c54d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_8d3b159055c7af2c_5997e8ea93888888 = external constant [0 x i8]

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
