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
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:roFn" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:AssertAsk" = type { i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:ownerAt" = type { i32, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/check:effectPlace" = type { i64, i64, %"compiler/source:Span", ptr, i32, i32 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:errNarrow" = type { i32, i32, i64, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/check:opShape" = type { { i64, ptr }, i64, i1, i1 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/check:ContractAsk" = type { i64, i64, %"compiler/source:Span", i64, %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr } }
define dso_local ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l6, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store ptr null, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/ast:TypeDecl", ptr %t14, i32 0, i32 3
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 5}
  %t26 = icmp eq i64 %t24, 1
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr { i64, [6 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { { i64, ptr }, ptr }, ptr %t30, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31
  store { i64, ptr } %t32, ptr %l3, !tbaa !27
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t34 = load i64, ptr %l1, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp slt i64 %t34, %t37
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t42, ptr %l24, !tbaa !27
  %t43 = load i64, ptr %l1, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr ptr, ptr %t46, i64 %t43
  %t48 = load ptr, ptr %t47, !tbaa !39
  store ptr %t48, ptr %l23, !tbaa !29
  br label %bb14
bb13:
  store ptr null, ptr %l23, !tbaa !29
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l23, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store ptr null, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_fe14b63572f1977b_411de5df8083206f)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eadapter(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l27 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i64
  %l52 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca i64
  %l57 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca i32
  %l63 = alloca %"compiler/source:Span"
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca i1
  %l73 = alloca i32
  %l77 = alloca i64
  %l81 = alloca i32
  %l84 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca { i64, ptr }
  %l112 = alloca i64
  %l115 = alloca i64
  %l135 = alloca ptr
  %l137 = alloca { i64, ptr }
  %l141 = alloca i32
  %l143 = alloca { i64, ptr }
  %l146 = alloca i32
  %l147 = alloca i1
  %l151 = alloca { i64, ptr }
  %l155 = alloca i1
  %l156 = alloca i1
  %l158 = alloca { i64, ptr }
  %l161 = alloca i1
  %l162 = alloca i1
  %l164 = alloca { i64, ptr }
  %l167 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca i32
  %l182 = alloca ptr
  %l187 = alloca i32
  %l188 = alloca i32
  %l189 = alloca i1
  %l194 = alloca i64
  %l197 = alloca i1
  %l198 = alloca i32
  %l201 = alloca i32
  %l206 = alloca i32
  %l207 = alloca i32
  %l212 = alloca i32
  %l214 = alloca i1
  %l219 = alloca { i64, ptr }
  %l220 = alloca ptr
  %l223 = alloca ptr
  %l228 = alloca i32
  %l229 = alloca { i64, ptr }
  %l231 = alloca i1
  %l237 = alloca { i64, ptr }
  %l240 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l244 = alloca ptr
  %l249 = alloca i32
  %l254 = alloca i32
  %l255 = alloca i32
  %l260 = alloca i32
  %l261 = alloca i32
  %l262 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l266 = alloca %"compiler/source:Span"
  %l269 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l273 = alloca { i64, ptr }
  %l274 = alloca { i64, ptr }
  %l275 = alloca ptr
  %l280 = alloca i32
  %l281 = alloca { i64, ptr }
  %l284 = alloca %"compiler/diagmsg:Msg"
  %l285 = alloca i64
  %l287 = alloca ptr
  %l288 = alloca i64
  %l291 = alloca { i64, [3 x i64] }
  %l292 = alloca i64
  %l294 = alloca ptr
  %l298 = alloca ptr
  %l301 = alloca { i64, ptr }
  %l304 = alloca %"compiler/check:roFn"
  %l307 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l311 = alloca %"compiler/source:Span"
  %l312 = alloca i32
  %l315 = alloca i32
  %l316 = alloca ptr
  %l320 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca ptr
  %t677 = alloca { i64, [4 x i64] }, align 8
  %t689 = alloca { i64, [5 x i64] }, align 8
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
  store ptr %t1, ptr %l20, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t2)
  store i32 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l20, !tbaa !29
  %t7 = load i32, ptr %l23, !tbaa !23
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t8, ptr %l24
  br label %bb2
bb2:
  %t9 = load i32, ptr %l24, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l4, !tbaa !23
  %t14 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l27
  br label %bb3
bb3:
  %t15 = load i1, ptr %l27, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l31, !tbaa !29
  %t23 = load i32, ptr %l4, !tbaa !23
  store i32 %t23, ptr %l32, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/load:Loader", ptr %t30, i32 0, i32 3
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t33, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t35, ptr %l37
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l31, !tbaa !29
  %t37 = load i32, ptr %l32, !tbaa !23
  %t38 = load i32, ptr %l37, !tbaa !23
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t36, i32 %t37, i32 %t38)
  store i64 %t39, ptr %l38
  br label %bb8
bb8:
  %t40 = load i64, ptr %l38, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l42, !tbaa !29
  %t49 = load i32, ptr %l4, !tbaa !23
  store i32 %t49, ptr %l43, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s2, ptr %t59, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t61, ptr %l48
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t62 = load ptr, ptr %l42, !tbaa !29
  %t63 = load i32, ptr %l43, !tbaa !23
  %t64 = load i32, ptr %l48, !tbaa !23
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t62, i32 %t63, i32 %t64)
  store i64 %t65, ptr %l49
  br label %bb12
bb12:
  %t66 = load i64, ptr %l49, !tbaa !24
  store i64 %t66, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = icmp slt i64 %t67, 0
  br i1 %t69, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  store ptr %t74, ptr %l54, !tbaa !29
  %t75 = load i64, ptr %l5, !tbaa !24
  %t77 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t75)
  store i64 %t77, ptr %l56
  br label %bb16
bb16:
  %t78 = load ptr, ptr %l54, !tbaa !29
  %t79 = load i64, ptr %l56, !tbaa !24
  %t80 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t80, ptr %l57
  br label %bb17
bb17:
  %t81 = load i64, ptr %l57, !tbaa !24
  %t82 = icmp sgt i64 %t81, 0
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l52, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l60, !tbaa !29
  %t87 = load i64, ptr %l5, !tbaa !24
  store i64 %t87, ptr %l61, !tbaa !24
  %t88 = load i32, ptr %l4, !tbaa !23
  store i32 %t88, ptr %l62, !tbaa !23
  %t89 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t89, ptr %l63
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load %"compiler/source:Span", ptr %l1
  %t94 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t90, %"compiler/source:Span" %t91)
  store { i64, ptr } %t94, ptr %l66
  br label %bb22
bb22:
  %t95 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t96 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s0, { i64, ptr } %t95)
  store { i64, ptr } %t96, ptr %l67
  br label %bb23
bb23:
  %t97 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = load ptr, ptr %l60, !tbaa !29
  %t105 = load i64, ptr %l61, !tbaa !24
  %t106 = load i32, ptr %l62, !tbaa !23
  %t107 = load %"compiler/source:Span", ptr %l63
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %s0, ptr %s0, ptr %t104, i64 %t105, i32 %t106, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, %"compiler/source:Span" %t107, { i64, ptr } %t103)
  store i1 %t109, ptr %l69
  br label %bb24
bb24:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t114 = load i64, ptr %l5, !tbaa !24
  %t117 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t113, i64 %t114)
  store i32 %t117, ptr %l73
  br label %bb25
bb25:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t122 = load i64, ptr %l5, !tbaa !24
  %t125 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t121, i64 %t122, i32 0)
  store i64 %t125, ptr %l77
  br label %bb26
bb26:
  %t126 = load i64, ptr %l77, !tbaa !24
  store i64 %t126, ptr %l6, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t131 = load i64, ptr %l6, !tbaa !24
  %t134 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t130, i64 %t131)
  store i32 %t134, ptr %l81
  br label %bb27
bb27:
  %t135 = load i32, ptr %l81, !tbaa !23
  store i32 %t135, ptr %l7, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  store ptr %t141, ptr %l84, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  %t148 = load i32, ptr %l7, !tbaa !23
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t147, i32 %t148)
  store i32 %t151, ptr %l89
  br label %bb28
bb28:
  %t152 = load ptr, ptr %l84, !tbaa !29
  %t153 = load i32, ptr %l89, !tbaa !23
  %t154 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t152, i32 %t153)
  store { i64, ptr } %t154, ptr %l90
  br label %bb29
bb29:
  %t155 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t155, ptr %l8, !tbaa !27
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  store ptr %t161, ptr %l93, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = getelementptr %"compiler/generic:Program", ptr %t165, i32 0, i32 2
  %t168 = load i32, ptr %l3, !tbaa !23
  %t171 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t167, i32 %t168)
  store i32 %t171, ptr %l98
  br label %bb30
bb30:
  %t172 = load ptr, ptr %l93, !tbaa !29
  %t173 = load i32, ptr %l98, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t172, i32 %t173)
  store { i64, ptr } %t174, ptr %l99
  br label %bb31
bb31:
  %t175 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t175, ptr %l9, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t183 = add i64 %t181, 1
  %t186 = icmp ne i64 %t178, %t183
  br i1 %t186, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  store i64 0, ptr %l10, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  store i64 %t191, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t193 = load i64, ptr %l11, !tbaa !24
  %t194 = load i64, ptr %l10, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb35, label %bb36
bb35:
  %t199 = load i64, ptr %l12, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb40
bb37:
  %t203 = load i64, ptr %l11, !tbaa !24
  %t204 = load i64, ptr %l10, !tbaa !24
  %t207 = sub i64 %t203, %t204
  %t208 = load i64, ptr %l12, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t213 = sub i64 %t211, 1
  %t214 = load i64, ptr %l12, !tbaa !24
  %t217 = sdiv i64 %t213, %t214
  store i64 %t217, ptr %l115, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb39
bb39:
  %t219 = load i64, ptr %l115, !tbaa !24
  store i64 %t219, ptr %l112, !tbaa !24
  br label %bb40
bb40:
  %t220 = load i64, ptr %l112, !tbaa !24
  store i64 %t220, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb41
bb41:
  %t221 = load i64, ptr %l14, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb42, label %bb43
bb42:
  br label %bb64
bb43:
  br label %bb44
bb44:
  %t229 = load i64, ptr %l10, !tbaa !24
  %t230 = load i64, ptr %l14, !tbaa !24
  %t231 = load i64, ptr %l12, !tbaa !24
  %t234 = mul i64 %t230, %t231
  %t237 = add i64 %t229, %t234
  store i64 %t237, ptr %l15, !tbaa !24
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/check:Checker", ptr %t239, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 2
  store ptr %t244, ptr %l135, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t246, ptr %l137, !tbaa !27
  %t247 = load i64, ptr %l15, !tbaa !24
  %t249 = add i64 %t247, 1
  %t251 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr i32, ptr %t252, i64 %t249
  %t254 = load i32, ptr %t253, !tbaa !33
  %t257 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t245, i32 %t254)
  store i32 %t257, ptr %l141
  br label %bb45
bb45:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t259, ptr %l143, !tbaa !27
  %t260 = load i64, ptr %l15, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr i32, ptr %t263, i64 %t260
  %t265 = load i32, ptr %t264, !tbaa !33
  %t268 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t258, i32 %t265)
  store i32 %t268, ptr %l146
  br label %bb46
bb46:
  %t269 = load ptr, ptr %l135, !tbaa !29
  %t270 = load i32, ptr %l141, !tbaa !23
  %t271 = load i32, ptr %l146, !tbaa !23
  %t272 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t269, i32 %t270, i32 %t271)
  store i1 %t272, ptr %l147
  br label %bb47
bb47:
  %t273 = load i1, ptr %l147, !tbaa !21
  %t274 = xor i1 %t273, true
  br i1 %t274, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t278, ptr %l151, !tbaa !27
  %t279 = load i64, ptr %l15, !tbaa !24
  %t281 = add i64 %t279, 1
  %t283 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr i32, ptr %t284, i64 %t281
  %t286 = load i32, ptr %t285, !tbaa !33
  %t289 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t277, i32 %t286)
  store i1 %t289, ptr %l155
  br label %bb51
bb51:
  %t290 = load i1, ptr %l155, !tbaa !21
  br i1 %t290, label %bb52, label %bb53
bb52:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t292, ptr %l158, !tbaa !27
  %t293 = load i64, ptr %l15, !tbaa !24
  %t295 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr i32, ptr %t296, i64 %t293
  %t298 = load i32, ptr %t297, !tbaa !33
  %t301 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t291, i32 %t298)
  store i1 %t301, ptr %l161
  br label %bb54
bb53:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb55
bb54:
  %t302 = load i1, ptr %l161, !tbaa !21
  store i1 %t302, ptr %l156, !tbaa !21
  br label %bb55
bb55:
  %t303 = load i1, ptr %l156, !tbaa !21
  br i1 %t303, label %bb56, label %bb57
bb56:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t305, ptr %l164, !tbaa !27
  %t306 = load i64, ptr %l15, !tbaa !24
  %t308 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !27
  %t310 = getelementptr i32, ptr %t309, i64 %t306
  %t311 = load i32, ptr %t310, !tbaa !33
  %t314 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t304, i32 %t311)
  store i1 %t314, ptr %l167
  br label %bb58
bb57:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb59
bb58:
  %t315 = load i1, ptr %l167, !tbaa !21
  %t316 = xor i1 %t315, true
  store i1 %t316, ptr %l162, !tbaa !21
  br label %bb59
bb59:
  %t318 = load i1, ptr %l162, !tbaa !21
  br i1 %t318, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t320 = load i64, ptr %l14, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l14, !tbaa !24
  br label %bb41
bb64:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/check:Checker", ptr %t324, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !29
  %t329 = getelementptr %"compiler/generic:Program", ptr %t327, i32 0, i32 2
  store ptr %t329, ptr %l174, !tbaa !29
  %t330 = load ptr, ptr %l0, !tbaa !29
  store ptr %t330, ptr %l175, !tbaa !29
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/check:Checker", ptr %t331, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !29
  %t336 = getelementptr %"compiler/generic:Program", ptr %t334, i32 0, i32 2
  %t337 = load i32, ptr %l7, !tbaa !23
  %t340 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t336, i32 %t337)
  store i32 %t340, ptr %l180
  br label %bb65
bb65:
  %t341 = load ptr, ptr %l175, !tbaa !29
  %t342 = load i32, ptr %l180, !tbaa !23
  %t343 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t341, i32 %t342)
  store i32 %t343, ptr %l181
  br label %bb66
bb66:
  %t344 = load ptr, ptr %l0, !tbaa !29
  store ptr %t344, ptr %l182, !tbaa !29
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/check:Checker", ptr %t345, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = getelementptr %"compiler/generic:Program", ptr %t348, i32 0, i32 2
  %t351 = load i32, ptr %l3, !tbaa !23
  %t354 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t350, i32 %t351)
  store i32 %t354, ptr %l187
  br label %bb67
bb67:
  %t355 = load ptr, ptr %l182, !tbaa !29
  %t356 = load i32, ptr %l187, !tbaa !23
  %t357 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t355, i32 %t356)
  store i32 %t357, ptr %l188
  br label %bb68
bb68:
  %t358 = load ptr, ptr %l174, !tbaa !29
  %t359 = load i32, ptr %l181, !tbaa !23
  %t360 = load i32, ptr %l188, !tbaa !23
  %t361 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t358, i32 %t359, i32 %t360)
  store i1 %t361, ptr %l189
  br label %bb69
bb69:
  %t362 = load i1, ptr %l189, !tbaa !21
  %t363 = xor i1 %t362, true
  br i1 %t363, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load i64, ptr %l6, !tbaa !24
  %t370 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t366, i64 %t367)
  store i64 %t370, ptr %l194
  br label %bb73
bb73:
  %t371 = load i64, ptr %l194, !tbaa !24
  store i64 %t371, ptr %l16, !tbaa !24
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l7, !tbaa !23
  %t376 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t372, i32 %t373)
  store i1 %t376, ptr %l197
  br label %bb74
bb74:
  %t377 = load i1, ptr %l197, !tbaa !21
  br i1 %t377, label %bb75, label %bb76
bb75:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i64, ptr %l16, !tbaa !24
  %t382 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t378, i64 %t379)
  store i32 %t382, ptr %l201
  br label %bb77
bb76:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/check:Checker", ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/generic:Program", ptr %t386, i32 0, i32 2
  %t389 = load i32, ptr %l7, !tbaa !23
  %t392 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t388, i32 %t389)
  store i32 %t392, ptr %l206
  br label %bb78
bb77:
  %t393 = load i32, ptr %l201, !tbaa !23
  store i32 %t393, ptr %l198, !tbaa !23
  br label %bb79
bb78:
  %t394 = load i32, ptr %l206, !tbaa !23
  store i32 %t394, ptr %l198, !tbaa !23
  br label %bb79
bb79:
  %t395 = load i32, ptr %l198, !tbaa !23
  store i32 %t395, ptr %l17, !tbaa !23
  %t396 = load i32, ptr %l17, !tbaa !23
  store i32 %t396, ptr %l207, !tbaa !23
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t402 = getelementptr %"compiler/generic:Program", ptr %t400, i32 0, i32 2
  %t403 = load i32, ptr %l3, !tbaa !23
  %t406 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t402, i32 %t403)
  store i32 %t406, ptr %l212
  br label %bb80
bb80:
  %t407 = load i32, ptr %l207, !tbaa !23
  %t408 = load i32, ptr %l212, !tbaa !23
  %t409 = icmp ne i32 %t407, %t408
  br i1 %t409, label %bb81, label %bb82
bb81:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/check:Checker", ptr %t411, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !29
  %t416 = getelementptr %"compiler/generic:Program", ptr %t414, i32 0, i32 2
  %t417 = load i32, ptr %l17, !tbaa !23
  %t420 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t416, i32 %t417)
  store { i64, ptr } %t420, ptr %l219
  br label %bb83
bb82:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb87
bb83:
  store ptr %l219, ptr %l220
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/check:Checker", ptr %t421, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !29
  %t426 = getelementptr %"compiler/generic:Program", ptr %t424, i32 0, i32 2
  store ptr %t426, ptr %l223, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 2
  %t433 = load i32, ptr %l3, !tbaa !23
  %t436 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t432, i32 %t433)
  store i32 %t436, ptr %l228
  br label %bb84
bb84:
  %t437 = load ptr, ptr %l223, !tbaa !29
  %t438 = load i32, ptr %l228, !tbaa !23
  %t439 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t437, i32 %t438)
  store { i64, ptr } %t439, ptr %l229
  br label %bb85
bb85:
  %t440 = load ptr, ptr %l220
  %t442 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e_26(ptr %t440, ptr %l229)
  store i1 %t442, ptr %l231
  br label %bb86
bb86:
  %t443 = load i1, ptr %l231, !tbaa !21
  %t444 = xor i1 %t443, true
  store i1 %t444, ptr %l214, !tbaa !21
  br label %bb87
bb87:
  %t446 = load i1, ptr %l214, !tbaa !21
  br i1 %t446, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s11
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !29
  %t452 = getelementptr %"compiler/generic:Program", ptr %t450, i32 0, i32 2
  %t453 = load i32, ptr %l17, !tbaa !23
  %t456 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s11, ptr %t452, i32 %t453)
  store { i64, ptr } %t456, ptr %l237
  br label %bb90
bb89:
  br label %bb105
bb90:
  %t457 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t458 = extractvalue { i64, ptr } %t457, 0
  %t460 = icmp sgt i64 %t458, 0
  br i1 %t460, label %bb91, label %bb92
bb91:
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l241, !tbaa !29
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/check:Checker", ptr %t463, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !29
  %t468 = getelementptr %"compiler/generic:Program", ptr %t466, i32 0, i32 2
  store ptr %t468, ptr %l244, !tbaa !29
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/check:Checker", ptr %t469, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !29
  %t474 = getelementptr %"compiler/generic:Program", ptr %t472, i32 0, i32 2
  %t475 = load i32, ptr %l3, !tbaa !23
  %t478 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t474, i32 %t475)
  store i32 %t478, ptr %l249
  br label %bb93
bb92:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l240, !tbaa !27
  br label %bb98
bb93:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/check:Checker", ptr %t479, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t484 = getelementptr %"compiler/generic:Program", ptr %t482, i32 0, i32 2
  %t485 = load i32, ptr %l3, !tbaa !23
  %t488 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t484, i32 %t485)
  store i32 %t488, ptr %l254
  br label %bb94
bb94:
  %t489 = load i32, ptr %l17, !tbaa !23
  store i32 %t489, ptr %l255, !tbaa !23
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/check:Checker", ptr %t490, i32 0, i32 1
  %t493 = load ptr, ptr %t492, !tbaa !29
  %t495 = getelementptr %"compiler/generic:Program", ptr %t493, i32 0, i32 2
  %t496 = load i32, ptr %l3, !tbaa !23
  %t499 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t495, i32 %t496)
  store i32 %t499, ptr %l260
  br label %bb95
bb95:
  %t500 = load ptr, ptr %l244, !tbaa !29
  %t501 = load i32, ptr %l249, !tbaa !23
  %t502 = load i32, ptr %l254, !tbaa !23
  %t503 = load i32, ptr %l255, !tbaa !23
  %t504 = load i32, ptr %l260, !tbaa !23
  %t505 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t500, i32 %t501, i32 %t502, i32 %t503, i32 %t504, i64 0, i1 false, i32 0, i64 0)
  store i32 %t505, ptr %l261
  br label %bb96
bb96:
  %t506 = load ptr, ptr %l241, !tbaa !29
  %t507 = load i32, ptr %l261, !tbaa !23
  %t508 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t506, i32 %t507)
  store { i64, ptr } %t508, ptr %l262
  br label %bb97
bb97:
  %t509 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t510 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t511 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 1
  %t513 = extractvalue { i64, ptr } %t511, 0
  %t514 = add i64 %t510, %t513
  %t515 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t516 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t517 = add i64 %t514, %t516
  %t518 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t517)
  call void @olang_textcopy(ptr %t518, ptr %t509, i64 %t510)
  %t519 = getelementptr i8, ptr %t518, i64 %t510
  call void @olang_textcopy(ptr %t519, ptr %t512, i64 %t513)
  %t520 = getelementptr i8, ptr %t519, i64 %t513
  call void @olang_textcopy(ptr %t520, ptr %t515, i64 %t516)
  %t521 = insertvalue { i64, ptr } undef, i64 %t517, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t518, 1
  %t524 = extractvalue { i64, ptr } %t522, 0
  %t525 = extractvalue { i64, ptr } %t522, 1
  %t526 = mul i64 %t524, 1
  %t527 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t526)
  call void @llvm.memcpy.p0.p0.i64(ptr %t527, ptr %t525, i64 %t526, i1 false)
  %t528 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t527, 1
  store { i64, ptr } %t529, ptr %l240, !tbaa !27
  br label %bb98
bb98:
  %t531 = load { i64, ptr }, ptr %l240, !tbaa !27
  store { i64, ptr } %t531, ptr %l18, !tbaa !27
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l265, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t533, ptr %l266
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t535 = load i32, ptr %l4, !tbaa !23
  %t538 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t534, i32 %t535)
  store { i64, ptr } %t538, ptr %l269
  br label %bb99
bb99:
  %t539 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t540 = extractvalue { i64, ptr } %t539, 0
  %t541 = extractvalue { i64, ptr } %t539, 1
  %t542 = mul i64 %t540, 1
  %t543 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t542)
  call void @llvm.memcpy.p0.p0.i64(ptr %t543, ptr %t541, i64 %t542, i1 false)
  %t544 = insertvalue { i64, ptr } undef, i64 %t540, 0
  %t545 = insertvalue { i64, ptr } %t544, ptr %t543, 1
  store { i64, ptr } %t545, ptr %l270, !tbaa !27
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load i32, ptr %l17, !tbaa !23
  %t550 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %s11, ptr %t546, i32 %t547)
  store { i64, ptr } %t550, ptr %l273
  br label %bb100
bb100:
  %t551 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t552 = extractvalue { i64, ptr } %t551, 0
  %t553 = extractvalue { i64, ptr } %t551, 1
  %t554 = mul i64 %t552, 1
  %t555 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t554)
  call void @llvm.memcpy.p0.p0.i64(ptr %t555, ptr %t553, i64 %t554, i1 false)
  %t556 = insertvalue { i64, ptr } undef, i64 %t552, 0
  %t557 = insertvalue { i64, ptr } %t556, ptr %t555, 1
  store { i64, ptr } %t557, ptr %l274, !tbaa !27
  %t558 = load ptr, ptr %l0, !tbaa !29
  store ptr %t558, ptr %l275, !tbaa !29
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = getelementptr %"compiler/check:Checker", ptr %t559, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t564 = getelementptr %"compiler/generic:Program", ptr %t562, i32 0, i32 2
  %t565 = load i32, ptr %l3, !tbaa !23
  %t568 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t564, i32 %t565)
  store i32 %t568, ptr %l280
  br label %bb101
bb101:
  %t569 = load ptr, ptr %l275, !tbaa !29
  %t570 = load i32, ptr %l280, !tbaa !23
  %t571 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %s11, ptr %t569, i32 %t570)
  store { i64, ptr } %t571, ptr %l281
  br label %bb102
bb102:
  %t572 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t573 = extractvalue { i64, ptr } %t572, 0
  %t574 = extractvalue { i64, ptr } %t572, 1
  %t575 = mul i64 %t573, 1
  %t576 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t575)
  call void @llvm.memcpy.p0.p0.i64(ptr %t576, ptr %t574, i64 %t575, i1 false)
  %t577 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t576, 1
  %t579 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t580 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t581 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t584 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueErrors(ptr %s11, ptr %s11, ptr %s11, ptr %s11, ptr %s11, { i64, ptr } %t580, { i64, ptr } %t581, { i64, ptr } %t578, { i64, ptr } %t579)
  store %"compiler/diagmsg:Msg" %t584, ptr %l284
  br label %bb103
bb103:
  %t585 = load ptr, ptr %l265, !tbaa !29
  %t586 = load %"compiler/source:Span", ptr %l266
  %t587 = load %"compiler/diagmsg:Msg", ptr %l284
  %t588 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s11, ptr %t585, %"compiler/source:Span" %t586, %"compiler/diagmsg:Msg" %t587)
  store i64 %t588, ptr %l285
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s11)
  br label %bb105
bb105:
  %t589 = load ptr, ptr %l0, !tbaa !29
  %t591 = getelementptr %"compiler/check:Checker", ptr %t589, i32 0, i32 86
  store ptr %t591, ptr %l287, !tbaa !29
  %t592 = load i64, ptr %l16, !tbaa !24
  store i64 %t592, ptr %l288, !tbaa !24
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load %"compiler/source:Span", ptr %l1
  %t597 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t593, %"compiler/source:Span" %t594)
  store { i64, [3 x i64] } %t597, ptr %l291
  br label %bb106
bb106:
  %t598 = ptrtoint ptr %v0 to i64
  store i64 %t598, ptr %l292, !tbaa !24
  %t599 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aroFn_2e3
  br i1 %t599, label %bb107, label %bb108
bb107:
  %t601 = call ptr @__olang_region_make(ptr %v0)
  %t602 = ptrtoint ptr %t601 to i64
  store i64 %t602, ptr %l292, !tbaa !24
  br label %bb108
bb108:
  %t603 = load ptr, ptr %l0, !tbaa !29
  store ptr %t603, ptr %l294, !tbaa !29
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/check:Checker", ptr %t604, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !29
  %t608 = load i64, ptr %l5, !tbaa !24
  %t611 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t607, i64 %t608)
  store ptr %t611, ptr %l298
  br label %bb109
bb109:
  %t612 = load ptr, ptr %l298, !tbaa !29
  %t614 = getelementptr %"compiler/ast:Func", ptr %t612, i32 0, i32 2
  %t615 = load i32, ptr %t614, !tbaa !23
  %t616 = load ptr, ptr %l294, !tbaa !29
  %t618 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t616, i32 %t615)
  store { i64, ptr } %t618, ptr %l301
  br label %bb110
bb110:
  %t619 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t620 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t621 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t622 = extractvalue { i64, ptr } %t621, 1
  %t623 = extractvalue { i64, ptr } %t621, 0
  %t624 = add i64 %t620, %t623
  %t625 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t626 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t627 = add i64 %t624, %t626
  %t628 = load i64, ptr %l292
  %t629 = inttoptr i64 %t628 to ptr
  %t630 = call ptr @__olang_scope_alloc(ptr %t629, i64 %t627)
  call void @olang_textcopy(ptr %t630, ptr %t619, i64 %t620)
  %t631 = getelementptr i8, ptr %t630, i64 %t620
  call void @olang_textcopy(ptr %t631, ptr %t622, i64 %t623)
  %t632 = getelementptr i8, ptr %t631, i64 %t623
  call void @olang_textcopy(ptr %t632, ptr %t625, i64 %t626)
  %t633 = insertvalue { i64, ptr } undef, i64 %t627, 0
  %t634 = insertvalue { i64, ptr } %t633, ptr %t630, 1
  %t636 = load i64, ptr %l292
  %t637 = inttoptr i64 %t636 to ptr
  %t638 = extractvalue { i64, ptr } %t634, 0
  %t639 = extractvalue { i64, ptr } %t634, 1
  %t640 = mul i64 %t638, 1
  %t641 = call ptr @__olang_scope_alloc(ptr %t637, i64 %t640)
  call void @llvm.memcpy.p0.p0.i64(ptr %t641, ptr %t639, i64 %t640, i1 false)
  %t642 = insertvalue { i64, ptr } undef, i64 %t638, 0
  %t643 = insertvalue { i64, ptr } %t642, ptr %t641, 1
  %t644 = load i64, ptr %l288, !tbaa !24
  %t645 = load { i64, [3 x i64] }, ptr %l291
  %t647 = call %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v0, i64 %t644, i64 1, { i64, [3 x i64] } %t645, { i64, ptr } %t643)
  store %"compiler/check:roFn" %t647, ptr %l304
  br label %bb111
bb111:
  %t648 = load ptr, ptr %l287, !tbaa !29
  %t649 = load %"compiler/check:roFn", ptr %l304
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t648, %"compiler/check:roFn" %t649)
  br label %bb112
bb112:
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t651 = load ptr, ptr %l2, !tbaa !29
  %t652 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t652, ptr %l307, !tbaa !27
  %t653 = getelementptr { i64, ptr }, ptr %l307, i32 0, i32 1
  %t654 = load ptr, ptr %t653, !tbaa !27
  %t655 = getelementptr i32, ptr %t654, i64 0
  %t656 = load i32, ptr %t655, !tbaa !33
  %t657 = load %"compiler/source:Span", ptr %l1
  %t662 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t650, ptr %t651, i32 %t656, %"compiler/source:Span" %t657)
  store ptr %t662, ptr %l310
  br label %bb113
bb113:
  %t663 = load ptr, ptr %l310, !tbaa !29
  %t664 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t664, ptr %l311
  %t665 = load i32, ptr %l3, !tbaa !23
  store i32 %t665, ptr %l312, !tbaa !23
  %t666 = load i64, ptr %l16, !tbaa !24
  %t668 = trunc i64 %t666 to i32
  store i32 %t668, ptr %l315, !tbaa !23
  store ptr %t663, ptr %l316, !tbaa !29
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t672 = load %"compiler/source:Span", ptr %l1
  %t676 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t671, i32 5, %"compiler/source:Span" %t672)
  store i32 %t676, ptr %l320
  br label %bb114
bb114:
  store { i64, [4 x i64] } zeroinitializer, ptr %t677
  %t678 = getelementptr { i64, [4 x i64] }, ptr %t677, i32 0, i32 0
  store i64 2, ptr %t678
  %t679 = load i32, ptr %l315, !tbaa !23
  %t680 = insertvalue { i32, ptr, i32 } undef, i32 %t679, 0
  %t681 = load ptr, ptr %l316, !tbaa !29
  %t682 = insertvalue { i32, ptr, i32 } %t680, ptr %t681, 1
  %t683 = load i32, ptr %l320, !tbaa !23
  %t684 = insertvalue { i32, ptr, i32 } %t682, i32 %t683, 2
  %t685 = getelementptr { i64, [4 x i64] }, ptr %t677, i32 0, i32 1
  store { i32, ptr, i32 } %t684, ptr %t685
  %t686 = load { i64, [4 x i64] }, ptr %t677
  %t688 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t686, ptr %t688
  store { i64, [5 x i64] } zeroinitializer, ptr %t689
  %t690 = getelementptr { i64, [5 x i64] }, ptr %t689, i32 0, i32 0
  store i64 15, ptr %t690
  %t691 = load %"compiler/source:Span", ptr %l311
  %t692 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t691, 0
  %t693 = load i32, ptr %l312, !tbaa !23
  %t694 = insertvalue { %"compiler/source:Span", i32, ptr } %t692, i32 %t693, 1
  %t696 = insertvalue { %"compiler/source:Span", i32, ptr } %t694, ptr %t688, 2
  %t697 = getelementptr { i64, [5 x i64] }, ptr %t689, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t696, ptr %t697
  %t698 = load { i64, [5 x i64] }, ptr %t689
  %t700 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t698, ptr %t700
  call void @__olang_scope_close(ptr %s0)
  store ptr %t700, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallFixed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
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
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsFixed(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  store i1 %t35, ptr %l23
  br label %bb8
bb8:
  %t36 = load i1, ptr %l23, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"compiler/generic:Origin"
  %l10 = alloca ptr
  %l13 = alloca %"compiler/generic:Origin"
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l22 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 51
  %t7 = load %"compiler/generic:Origin", ptr %t6
  store %"compiler/generic:Origin" %t7, ptr %l4
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l10, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t17 = call %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %t13, %"compiler/source:Span" %a1)
  store %"compiler/generic:Origin" %t17, ptr %l13
  br label %bb1
bb1:
  %t18 = load %"compiler/generic:Origin", ptr %l13
  %t19 = load ptr, ptr %l10, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 51
  store %"compiler/generic:Origin" %t18, ptr %t20
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l15, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t25)
  store ptr %t27, ptr %l17
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t30 = getelementptr %"compiler/check:frame", ptr %t28, i32 0, i32 4
  %t33 = load ptr, ptr %l15, !tbaa !29
  %t37 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eApply(ptr %v0, ptr %v0, ptr %v1, ptr %t33, ptr %t30, i32 %a2, { i64, ptr } %a3)
  store i32 %t37, ptr %l22
  br label %bb3
bb3:
  %t38 = load i32, ptr %l22, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load %"compiler/generic:Origin", ptr %l4
  %t46 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 51
  store %"compiler/generic:Origin" %t43, ptr %t46
  store i32 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, i64 %a4, i1 %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/generic:AnySlot"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l55 = alloca i1
  %l58 = alloca i1
  %l65 = alloca i1
  %l68 = alloca { i64, ptr }
  %l76 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca i64
  %l86 = alloca { i64, ptr }
  %l88 = alloca %"compiler/diagmsg:Msg"
  %l89 = alloca i64
  %l92 = alloca ptr
  %l97 = alloca i32
  %l102 = alloca i64
  %l104 = alloca ptr
  %l108 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca i64
  %l121 = alloca %"compiler/generic:Context"
  %l123 = alloca %"compiler/generic:Context"
  %l128 = alloca ptr
  %l131 = alloca { i64, ptr }
  %l139 = alloca ptr
  %l144 = alloca ptr
  %l157 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca i64
  %l160 = alloca i64
  %l161 = alloca i1
  %l162 = alloca i32
  %l165 = alloca i32
  %l166 = alloca ptr
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  %t216 = alloca %"compiler/generic:Context", align 8
  %t377 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a4, ptr %l4
  store i32 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t2 = load ptr, ptr %l22, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l22, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l23, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l23, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32, i64, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { i32, i64, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l8, !tbaa !24
  br label %bb5
bb4:
  br label %bb55
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t26 = load i32, ptr %l7, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t25, i32 %t26)
  store { i64, ptr } %t29, ptr %l33
  br label %bb6
bb6:
  %t30 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t30, ptr %l9, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t31, ptr %l34, !tbaa !27
  %t32 = load i64, ptr %l8, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t38 = srem i64 %t32, %t35
  %t40 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr %"compiler/generic:AnySlot", ptr %t41, i64 %t38
  %t43 = load %"compiler/generic:AnySlot", ptr %t42
  store %"compiler/generic:AnySlot" %t43, ptr %l10
  %t45 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 2
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = icmp slt i64 %t46, 0
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l1
  %t52 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 3
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i32, ptr %l6, !tbaa !23
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v2, ptr %t50, %"compiler/source:Span" %t51, i64 %t53, i64 %t54, i1 true, i32 %t55, i32 0)
  store ptr %t61, ptr %l47
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t62 = load ptr, ptr %l47, !tbaa !29
  store ptr %t62, ptr %rv
  br label %ret
bb10:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load %"compiler/generic:AnySlot", ptr %l10
  %t67 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v2, ptr %t63, %"compiler/generic:AnySlot" %t64)
  store ptr %t67, ptr %l50
  br label %bb11
bb11:
  %t68 = load ptr, ptr %l50, !tbaa !29
  store ptr %t68, ptr %l11, !tbaa !29
  %t69 = load i64, ptr %l4, !tbaa !24
  %t71 = sub i64 %t69, 1
  store i64 %t71, ptr %l12, !tbaa !24
  %t73 = load ptr, ptr %l11, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  br i1 %t75, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb14
bb13:
  %t77 = load i64, ptr %l12, !tbaa !24
  %t79 = icmp slt i64 %t77, 0
  store i1 %t79, ptr %l55, !tbaa !21
  br label %bb14
bb14:
  %t81 = load i1, ptr %l55, !tbaa !21
  br i1 %t81, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb17
bb16:
  %t82 = load i64, ptr %l12, !tbaa !24
  %t83 = load ptr, ptr %l11, !tbaa !29
  %t85 = getelementptr %"compiler/ast:Func", ptr %t83, i32 0, i32 3
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/ast:Sig", ptr %t86, i32 0, i32 0
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t94 = icmp sge i64 %t82, %t91
  store i1 %t94, ptr %l58, !tbaa !21
  br label %bb17
bb17:
  %t96 = load i1, ptr %l58, !tbaa !21
  br i1 %t96, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb20
bb19:
  %t97 = load ptr, ptr %l11, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Func", ptr %t97, i32 0, i32 3
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/ast:Sig", ptr %t100, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l68, !tbaa !27
  %t104 = load i64, ptr %l12, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr ptr, ptr %t107, i64 %t104
  %t109 = load ptr, ptr %t108, !tbaa !39
  %t111 = getelementptr %"compiler/ast:Param", ptr %t109, i32 0, i32 3
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  store i1 %t114, ptr %l65, !tbaa !21
  br label %bb20
bb20:
  %t116 = load i1, ptr %l65, !tbaa !21
  br i1 %t116, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t117 = load ptr, ptr %l11, !tbaa !29
  %t119 = icmp eq ptr %t117, null
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb23, label %bb24
bb22:
  br label %bb32
bb23:
  %t123 = load ptr, ptr %l11, !tbaa !29
  %t125 = getelementptr %"compiler/ast:Func", ptr %t123, i32 0, i32 3
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Sig", ptr %t126, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l76, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb25
bb25:
  %t133 = load i64, ptr %l76, !tbaa !24
  store i64 %t133, ptr %l13, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l81, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t135, ptr %l82
  %t136 = load i64, ptr %l13, !tbaa !24
  store i64 %t136, ptr %l83, !tbaa !24
  %t137 = load i64, ptr %l13, !tbaa !24
  %t139 = icmp eq i64 %t137, 1
  br i1 %t139, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l86, !tbaa !27
  br label %bb28
bb27:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l86, !tbaa !27
  br label %bb28
bb28:
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr %l83, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t145 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s3, ptr %s3, i64 %t142, { i64, ptr } %t143, i64 %t141)
  store %"compiler/diagmsg:Msg" %t145, ptr %l88
  br label %bb29
bb29:
  %t146 = load ptr, ptr %l81, !tbaa !29
  %t147 = load %"compiler/source:Span", ptr %l82
  %t148 = load %"compiler/diagmsg:Msg", ptr %l88
  %t149 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t146, %"compiler/source:Span" %t147, %"compiler/diagmsg:Msg" %t148)
  store i64 %t149, ptr %l89
  br label %bb30
bb30:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load %"compiler/source:Span", ptr %l1
  %t154 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t150, %"compiler/source:Span" %t151)
  store ptr %t154, ptr %l92
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  %t155 = load ptr, ptr %l92, !tbaa !29
  store ptr %t155, ptr %rv
  br label %ret
bb32:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  %t162 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 1
  %t163 = load i32, ptr %t162, !tbaa !23
  %t166 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t161, i32 %t163)
  store i32 %t166, ptr %l97
  br label %bb33
bb33:
  %t167 = load i32, ptr %l97, !tbaa !23
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 2
  %t177 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t173, i32 %t167)
  store i64 %t177, ptr %l102
  br label %bb34
bb34:
  %t178 = load i64, ptr %l102, !tbaa !24
  store i64 %t178, ptr %l15, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t179)
  store ptr %t181, ptr %l104
  br label %bb35
bb35:
  %t182 = load ptr, ptr %l104, !tbaa !29
  %t184 = getelementptr %"compiler/check:frame", ptr %t182, i32 0, i32 2
  %t185 = load i64, ptr %t184, !tbaa !24
  store i64 %t185, ptr %l16, !tbaa !24
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t187)
  store ptr %t189, ptr %l108
  br label %bb36
bb36:
  %t190 = load ptr, ptr %l108, !tbaa !29
  store ptr %t190, ptr %l17, !tbaa !29
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load ptr, ptr %l17, !tbaa !29
  %t194 = getelementptr %"compiler/check:frame", ptr %t192, i32 0, i32 0
  %t195 = load i64, ptr %t194, !tbaa !24
  %t196 = load i64, ptr %l15, !tbaa !24
  %t197 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t202 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t191, i64 %t195, i64 %t196, i32 %t197, i32 0)
  store ptr %t202, ptr %l114
  br label %bb37
bb37:
  %t203 = load ptr, ptr %l114, !tbaa !29
  store ptr %t203, ptr %l18, !tbaa !29
  %t204 = load ptr, ptr %l18, !tbaa !29
  store ptr %t204, ptr %l115, !tbaa !29
  %t205 = ptrtoint ptr %v0 to i64
  store i64 %t205, ptr %l116, !tbaa !24
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t206, label %bb38, label %bb39
bb38:
  %t208 = call ptr @__olang_region_make(ptr %v0)
  %t209 = ptrtoint ptr %t208 to i64
  store i64 %t209, ptr %l116, !tbaa !24
  br label %bb39
bb39:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/check:Checker", ptr %t210, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t214 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 1
  %t215 = load i32, ptr %t214, !tbaa !23
  %t217 = load i64, ptr %l116
  %t218 = inttoptr i64 %t217 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %t216, ptr %v0, ptr %t218, ptr %t213, i32 %t215)
  call void @llvm.memmove.p0.p0.i64(ptr %l121, ptr %t216, i64 160, i1 false)
  br label %bb40
bb40:
  %t221 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t221, label %bb41, label %bb42
bb41:
  %t223 = load i64, ptr %l116
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = getelementptr %"compiler/generic:Context", ptr %l121, i32 0, i32 3
  %t226 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t225, i32 0, i32 2
  %t227 = load { i64, ptr }, ptr %t226
  %t228 = extractvalue { i64, ptr } %t227, 1
  %t229 = call ptr @__olang_region_or(ptr %t228, ptr null)
  %t230 = icmp ne ptr %t229, null
  %t231 = select i1 %t230, ptr %t229, ptr null
  %t232 = getelementptr %"compiler/generic:Context", ptr %l121, i32 0, i32 3
  %t233 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t232, i32 0, i32 1
  %t234 = load { i64, ptr }, ptr %t233
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = call ptr @__olang_region_or(ptr %t235, ptr null)
  %t237 = icmp ne ptr %t236, null
  %t238 = select i1 %t237, ptr %t236, ptr %t231
  %t239 = getelementptr %"compiler/generic:Context", ptr %l121, i32 0, i32 3
  %t240 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t239, i32 0, i32 0
  %t241 = load { i64, ptr }, ptr %t240
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = call ptr @__olang_region_or(ptr %t242, ptr null)
  %t244 = icmp ne ptr %t243, null
  %t245 = select i1 %t244, ptr %t243, ptr %t238
  %t246 = getelementptr %"compiler/generic:Context", ptr %l121, i32 0, i32 2
  %t247 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t246, i32 0, i32 2
  %t248 = load { i64, ptr }, ptr %t247
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = call ptr @__olang_region_or(ptr %t249, ptr null)
  %t251 = icmp ne ptr %t250, null
  %t252 = select i1 %t251, ptr %t250, ptr %t245
  %t253 = getelementptr %"compiler/generic:Context", ptr %l121, i32 0, i32 2
  %t254 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t253, i32 0, i32 1
  %t255 = load { i64, ptr }, ptr %t254
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = call ptr @__olang_region_or(ptr %t256, ptr null)
  %t258 = icmp ne ptr %t257, null
  %t259 = select i1 %t258, ptr %t257, ptr %t252
  %t260 = getelementptr %"compiler/generic:Context", ptr %l121, i32 0, i32 2
  %t261 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t260, i32 0, i32 0
  %t262 = load { i64, ptr }, ptr %t261
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr null)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr %t259
  %t267 = icmp eq ptr %t266, %t224
  call void @__olang_region_settle(ptr %t224, i1 %t267)
  br label %bb42
bb42:
  %t268 = load ptr, ptr %l115, !tbaa !29
  %t269 = getelementptr %"compiler/check:frame", ptr %t268, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l123, ptr %t269, i64 160, i1 false)
  %t270 = load ptr, ptr %l115, !tbaa !29
  %t271 = getelementptr %"compiler/check:frame", ptr %t270, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t271, ptr %l121, i64 160, i1 false)
  %t272 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t272, label %bb43, label %bb44
bb43:
  %t274 = getelementptr %"compiler/generic:Context", ptr %l123, i32 0, i32 3
  %t275 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t274, i32 0, i32 2
  %t276 = load { i64, ptr }, ptr %t275
  %t277 = extractvalue { i64, ptr } %t276, 1
  %t278 = call ptr @__olang_region_or(ptr %t277, ptr null)
  %t279 = icmp ne ptr %t278, null
  %t280 = select i1 %t279, ptr %t278, ptr null
  %t281 = getelementptr %"compiler/generic:Context", ptr %l123, i32 0, i32 3
  %t282 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t281, i32 0, i32 1
  %t283 = load { i64, ptr }, ptr %t282
  %t284 = extractvalue { i64, ptr } %t283, 1
  %t285 = call ptr @__olang_region_or(ptr %t284, ptr null)
  %t286 = icmp ne ptr %t285, null
  %t287 = select i1 %t286, ptr %t285, ptr %t280
  %t288 = getelementptr %"compiler/generic:Context", ptr %l123, i32 0, i32 3
  %t289 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t288, i32 0, i32 0
  %t290 = load { i64, ptr }, ptr %t289
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = call ptr @__olang_region_or(ptr %t291, ptr null)
  %t293 = icmp ne ptr %t292, null
  %t294 = select i1 %t293, ptr %t292, ptr %t287
  %t295 = getelementptr %"compiler/generic:Context", ptr %l123, i32 0, i32 2
  %t296 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t295, i32 0, i32 2
  %t297 = load { i64, ptr }, ptr %t296
  %t298 = extractvalue { i64, ptr } %t297, 1
  %t299 = call ptr @__olang_region_or(ptr %t298, ptr null)
  %t300 = icmp ne ptr %t299, null
  %t301 = select i1 %t300, ptr %t299, ptr %t294
  %t302 = getelementptr %"compiler/generic:Context", ptr %l123, i32 0, i32 2
  %t303 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t302, i32 0, i32 1
  %t304 = load { i64, ptr }, ptr %t303
  %t305 = extractvalue { i64, ptr } %t304, 1
  %t306 = call ptr @__olang_region_or(ptr %t305, ptr null)
  %t307 = icmp ne ptr %t306, null
  %t308 = select i1 %t307, ptr %t306, ptr %t301
  %t309 = getelementptr %"compiler/generic:Context", ptr %l123, i32 0, i32 2
  %t310 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t309, i32 0, i32 0
  %t311 = load { i64, ptr }, ptr %t310
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = call ptr @__olang_region_or(ptr %t312, ptr null)
  %t314 = icmp ne ptr %t313, null
  %t315 = select i1 %t314, ptr %t313, ptr %t308
  call void @__olang_region_drop(ptr %t315)
  store %"compiler/generic:Context" zeroinitializer, ptr %l123
  br label %bb44
bb44:
  %t316 = load ptr, ptr %l18, !tbaa !29
  %t317 = load ptr, ptr %l17, !tbaa !29
  %t319 = getelementptr %"compiler/check:frame", ptr %t317, i32 0, i32 7
  %t320 = load i64, ptr %t319, !tbaa !24
  %t323 = getelementptr %"compiler/check:frame", ptr %t316, i32 0, i32 7
  store i64 %t320, ptr %t323, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l128, !tbaa !29
  %t325 = load ptr, ptr %l11, !tbaa !29
  %t327 = getelementptr %"compiler/ast:Func", ptr %t325, i32 0, i32 3
  %t328 = load ptr, ptr %t327, !tbaa !29
  %t330 = getelementptr %"compiler/ast:Sig", ptr %t328, i32 0, i32 0
  %t331 = load { i64, ptr }, ptr %t330, !tbaa !27
  store { i64, ptr } %t331, ptr %l131, !tbaa !27
  %t332 = load i64, ptr %l12, !tbaa !24
  %t334 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr ptr, ptr %t335, i64 %t332
  %t337 = load ptr, ptr %t336, !tbaa !39
  %t339 = getelementptr %"compiler/ast:Param", ptr %t337, i32 0, i32 3
  %t340 = load ptr, ptr %t339, !tbaa !29
  store ptr %t340, ptr %l19, !tbaa !29
  %t342 = load ptr, ptr %l19, !tbaa !29
  %t344 = icmp eq ptr %t342, null
  br i1 %t344, label %bb45, label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_87950e0971945cd5_bece9ab6826c95c9)
  unreachable
bb46:
  br label %bb47
bb47:
  %t346 = load ptr, ptr %l19, !tbaa !29
  %t347 = load i32, ptr %l6, !tbaa !23
  %t348 = load ptr, ptr %l128, !tbaa !29
  %t351 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v2, ptr %t348, ptr %t346, i32 %t347)
  store ptr %t351, ptr %l139
  br label %bb48
bb48:
  %t352 = load ptr, ptr %l139, !tbaa !29
  store ptr %t352, ptr %l20, !tbaa !29
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultReads(ptr %v0, ptr %v2, ptr %t353, ptr %t354)
  br label %bb49
bb49:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t358)
  store ptr %t360, ptr %l144
  br label %bb50
bb50:
  %t361 = load ptr, ptr %l144, !tbaa !29
  %t363 = getelementptr %"compiler/check:frame", ptr %t361, i32 0, i32 2
  %t364 = load i64, ptr %t363, !tbaa !24
  store i64 %t364, ptr %l21, !tbaa !24
  %t366 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t366)
  br label %bb51
bb51:
  %t368 = load i64, ptr %l21, !tbaa !24
  %t369 = load i64, ptr %l16, !tbaa !24
  %t372 = icmp ne i64 %t368, %t369
  br i1 %t372, label %bb52, label %bb53
bb52:
  %t374 = load %"compiler/source:Span", ptr %l1
  %t375 = load i64, ptr %l21, !tbaa !24
  %t376 = load ptr, ptr %l20, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t377
  %t378 = getelementptr { i64, [5 x i64] }, ptr %t377, i32 0, i32 0
  store i64 17, ptr %t378
  %t380 = insertvalue { %"compiler/source:Span", i64, ptr } undef, %"compiler/source:Span" %t374, 0
  %t382 = insertvalue { %"compiler/source:Span", i64, ptr } %t380, i64 %t375, 1
  %t384 = insertvalue { %"compiler/source:Span", i64, ptr } %t382, ptr %t376, 2
  %t385 = getelementptr { i64, [5 x i64] }, ptr %t377, i32 0, i32 1
  store { %"compiler/source:Span", i64, ptr } %t384, ptr %t385
  %t386 = load { i64, [5 x i64] }, ptr %t377
  %t388 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t386, ptr %t388
  store ptr %t388, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t390 = load ptr, ptr %l20, !tbaa !29
  store ptr %t390, ptr %rv
  br label %ret
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb61
bb58:
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l157, !tbaa !29
  %t393 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t393, ptr %l158
  store i64 %a3, ptr %l159, !tbaa !24
  %t395 = load i64, ptr %l4, !tbaa !24
  store i64 %t395, ptr %l160, !tbaa !24
  store i1 %a5, ptr %l161, !tbaa !21
  %t397 = load i32, ptr %l6, !tbaa !23
  store i32 %t397, ptr %l162, !tbaa !23
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load ptr, ptr %l2, !tbaa !29
  %t402 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeArgs(ptr %v0, ptr %v1, ptr %t398, ptr %t399)
  store i32 %t402, ptr %l165
  br label %bb59
bb59:
  %t403 = load ptr, ptr %l157, !tbaa !29
  %t404 = load %"compiler/source:Span", ptr %l158
  %t405 = load i64, ptr %l159, !tbaa !24
  %t406 = load i64, ptr %l160, !tbaa !24
  %t407 = load i1, ptr %l161, !tbaa !21
  %t408 = load i32, ptr %l162, !tbaa !23
  %t409 = load i32, ptr %l165, !tbaa !23
  %t410 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v2, ptr %t403, %"compiler/source:Span" %t404, i64 %t405, i64 %t406, i1 %t407, i32 %t408, i32 %t409)
  store ptr %t410, ptr %l166
  br label %bb60
bb60:
  %t411 = load ptr, ptr %l166, !tbaa !29
  store ptr %t411, ptr %rv
  br label %ret
bb61:
  call void @__olang_check_failed(ptr @olang_loc_f8c90d07629b23d_673d56dd932bf211)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l48 = alloca i1
  %l50 = alloca { i64, ptr }
  %l52 = alloca %"compiler/source:Span"
  %l54 = alloca %"compiler/source:Span"
  %l56 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l67 = alloca i1
  %l71 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l82 = alloca i1
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
  store ptr %t6, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t7 = load ptr, ptr %l10, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l10, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 3
  store i1 %t13, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l11, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb10, label %bb11
bb10:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb12, label %bb13
bb12:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l2, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l23
  br label %bb15
bb15:
  %t36 = load i1, ptr %l23, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %rv
  br label %ret
bb16:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t40 = load ptr, ptr %l25, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb17, label %bb18
bb17:
  %t43 = load ptr, ptr %l25, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 5
  store i1 %t46, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t47 = load i1, ptr %l26, !tbaa !21
  br i1 %t47, label %bb19, label %bb20
bb19:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Promote", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t62 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %t54, ptr %t58)
  store i1 %t62, ptr %l35
  br label %bb22
bb22:
  %t63 = load i1, ptr %l35, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
bb23:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t65 = load ptr, ptr %l36, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l36, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 6
  store i1 %t71, ptr %l37, !tbaa !21
  br label %bb25
bb25:
  %t72 = load i1, ptr %l37, !tbaa !21
  br i1 %t72, label %bb26, label %bb27
bb26:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 0
  %t77 = load %"compiler/source:Span", ptr %t76
  store %"compiler/source:Span" %t77, ptr %l4
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [5 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb28
bb27:
  br label %bb34
bb28:
  %t85 = load ptr, ptr %l5, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Call", ptr %t85, i32 0, i32 1
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t92 = icmp sgt i64 %t90, 0
  br i1 %t92, label %bb29, label %bb30
bb29:
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Call", ptr %t94, i32 0, i32 1
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l50, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr ptr, ptr %t99, i64 0
  %t101 = load ptr, ptr %t100, !tbaa !39
  %t103 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t101)
  store %"compiler/source:Span" %t103, ptr %l52
  br label %bb31
bb30:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb33
bb31:
  %t104 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t104, ptr %l54
  %t107 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l52, ptr %l54)
  store i1 %t107, ptr %l56
  br label %bb32
bb32:
  %t108 = load i1, ptr %l56, !tbaa !21
  store i1 %t108, ptr %l48, !tbaa !21
  br label %bb33
bb33:
  %t109 = load i1, ptr %l48, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
bb34:
  %t110 = load ptr, ptr %l1, !tbaa !29
  store ptr %t110, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t111 = load ptr, ptr %l57, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb35, label %bb36
bb35:
  %t114 = load ptr, ptr %l57, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 18}
  %t117 = icmp eq i64 %t115, 14
  store i1 %t117, ptr %l58, !tbaa !21
  br label %bb36
bb36:
  %t118 = load i1, ptr %l58, !tbaa !21
  br i1 %t118, label %bb37, label %bb38
bb37:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr { i64, [5 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t121, i32 0, i32 2
  %t123 = load ptr, ptr %t122
  store ptr %t123, ptr %l6, !tbaa !29
  br label %bb39
bb38:
  br label %bb44
bb39:
  %t125 = load ptr, ptr %l6, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Try", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = icmp eq ptr %t128, null
  %t132 = xor i1 %t130, true
  br i1 %t132, label %bb40, label %bb41
bb40:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l6, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Try", ptr %t135, i32 0, i32 0
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t141 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earmPlace(ptr %v0, ptr %v1, ptr %t134, ptr %t138)
  store i1 %t141, ptr %l71
  br label %bb42
bb41:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb43
bb42:
  %t142 = load i1, ptr %l71, !tbaa !21
  store i1 %t142, ptr %l67, !tbaa !21
  br label %bb43
bb43:
  %t143 = load i1, ptr %l67, !tbaa !21
  store i1 %t143, ptr %rv
  br label %ret
bb44:
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t145 = load ptr, ptr %l72, !tbaa !29
  %t146 = icmp ne ptr %t145, null
  br i1 %t146, label %bb45, label %bb46
bb45:
  %t148 = load ptr, ptr %l72, !tbaa !29
  %t149 = load i64, ptr %t148, !range !{i64 0, i64 18}
  %t151 = icmp eq i64 %t149, 11
  store i1 %t151, ptr %l73, !tbaa !21
  br label %bb46
bb46:
  %t152 = load i1, ptr %l73, !tbaa !21
  br i1 %t152, label %bb47, label %bb48
bb47:
  br label %bb53
bb48:
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t154 = load ptr, ptr %l76, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb49, label %bb50
bb49:
  %t157 = load ptr, ptr %l76, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 18}
  %t160 = icmp eq i64 %t158, 13
  store i1 %t160, ptr %l77, !tbaa !21
  br label %bb50
bb50:
  %t161 = load i1, ptr %l77, !tbaa !21
  br i1 %t161, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t166 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdChoosesPlace(ptr %v0, ptr %v1, ptr %t162, ptr %t163)
  store i1 %t166, ptr %l82
  br label %bb54
bb54:
  %t167 = load i1, ptr %l82, !tbaa !21
  store i1 %t167, ptr %rv
  br label %ret
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  store i1 false, ptr %rv
  br label %ret
bb59:
  call void @__olang_check_failed(ptr @olang_loc_2fb1f9f5dda04b10_a3bd6c7ca1760a54)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassertStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l21 = alloca { i64, [3 x i64] }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca { i64, [3 x i64] }
  %l26 = alloca i1
  %l30 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l46 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l60 = alloca ptr
  %l64 = alloca i1
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca i64
  %l79 = alloca i64
  %l81 = alloca i64
  %l86 = alloca i64
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
  %l101 = alloca i1
  %l104 = alloca i1
  %l108 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l112 = alloca i32
  %l114 = alloca i1
  %l115 = alloca { i64, ptr }
  %l118 = alloca i64
  %l120 = alloca i64
  %l121 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l127 = alloca i64
  %l128 = alloca ptr
  %l131 = alloca ptr
  %l133 = alloca i32
  %l135 = alloca i32
  %l136 = alloca i64
  %l140 = alloca i64
  %l142 = alloca i64
  %l147 = alloca i64
  %l152 = alloca ptr
  %l154 = alloca %"compiler/source:Span"
  %l155 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l158 = alloca i64
  %l160 = alloca i64
  %l161 = alloca { i64, ptr }
  %l164 = alloca i1
  %l171 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l173 = alloca { i64, ptr }
  %l174 = alloca i64
  %l175 = alloca { i64, ptr }
  %l182 = alloca ptr
  %l185 = alloca i1
  %l189 = alloca i1
  %l191 = alloca i1
  %l194 = alloca i1
  %l196 = alloca i1
  %l200 = alloca i1
  %l203 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l206 = alloca i64
  %l208 = alloca i64
  %l209 = alloca { i64, ptr }
  %l212 = alloca %"compiler/source:Span"
  %l217 = alloca ptr
  %l220 = alloca { i64, [3 x i64] }
  %l221 = alloca i1
  %l223 = alloca i1
  %l225 = alloca i1
  %l228 = alloca { i64, [3 x i64] }
  %l231 = alloca i1
  %l236 = alloca ptr
  %l239 = alloca { i64, [3 x i64] }
  %l240 = alloca { i64, [3 x i64] }
  %l241 = alloca { i64, [3 x i64] }
  %l242 = alloca ptr
  %l245 = alloca { i64, [3 x i64] }
  %l247 = alloca i1
  %l250 = alloca ptr
  %l252 = alloca i64
  %l254 = alloca i64
  %l255 = alloca %"compiler/source:Span"
  %l256 = alloca %"compiler/source:Span"
  %l257 = alloca i64
  %l258 = alloca i64
  %l259 = alloca i64
  %l262 = alloca { i64, ptr }
  %l263 = alloca { i64, [3 x i64] }
  %l264 = alloca i64
  %l268 = alloca { i64, ptr }
  %l269 = alloca i1
  %l270 = alloca i64
  %l274 = alloca { i64, ptr }
  %l275 = alloca i64
  %l281 = alloca %"compiler/check:AssertAsk"
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %t26 = alloca { i64, [5 x i64] }, align 8
  %t49 = alloca { i64, [3 x i64] }, align 8
  %t460 = alloca { i64, [3 x i64] }, align 8
  %t533 = alloca { i64, [3 x i64] }, align 8
  %t633 = alloca %"compiler/check:AssertAsk", align 8
  %t648 = alloca %"compiler/check:AssertAsk", align 8
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
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t6, ptr %l30
  br label %bb1
bb1:
  %t7 = load i64, ptr %l30, !tbaa !24
  store i64 %t7, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t10 = icmp eq i64 %t8, 1
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t12, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v0, ptr %t16, ptr %t17)
  store ptr %t20, ptr %l38
  br label %bb7
bb6:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t21)
  store %"compiler/source:Span" %t23, ptr %l40
  br label %bb8
bb7:
  %t24 = load ptr, ptr %l38, !tbaa !29
  store ptr %t24, ptr %l35, !tbaa !29
  br label %bb9
bb8:
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 0
  store i64 0, ptr %t27
  %t28 = load %"compiler/source:Span", ptr %l40
  %t29 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t28, 0
  %t31 = insertvalue { %"compiler/source:Span", i32, i64 } %t29, i32 %t25, 1
  %t32 = insertvalue { %"compiler/source:Span", i32, i64 } %t31, i64 0, 2
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t32, ptr %t33
  %t34 = load { i64, [5 x i64] }, ptr %t26
  %t36 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t34, ptr %t36
  store ptr %t36, ptr %l35, !tbaa !29
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l35, !tbaa !29
  store ptr %t38, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t43 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v2, ptr %v0, ptr %t39, ptr %t40, i1 false)
  store ptr %t43, ptr %l46
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l46, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l1
  %t47 = load ptr, ptr %l5, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 0
  store i64 10, ptr %t50
  %t52 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t46, 0
  %t54 = insertvalue { %"compiler/source:Span", ptr, ptr } %t52, ptr %t47, 1
  %t56 = insertvalue { %"compiler/source:Span", ptr, ptr } %t54, ptr %t44, 2
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t56, ptr %t57
  %t58 = load { i64, [3 x i64] }, ptr %t49
  %t60 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t58, ptr %t60
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t45, ptr %t60)
  br label %bb11
bb11:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l53, !tbaa !29
  %t64 = load ptr, ptr %l2, !tbaa !29
  store ptr %t64, ptr %l54, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t65)
  store ptr %t67, ptr %l56
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l56, !tbaa !29
  %t70 = getelementptr %"compiler/check:frame", ptr %t68, i32 0, i32 7
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = load ptr, ptr %l53, !tbaa !29
  %t73 = load ptr, ptr %l54, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t72, ptr %t73, i1 true, i64 %t71)
  br label %bb13
bb13:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t75)
  store ptr %t77, ptr %l60
  br label %bb14
bb14:
  %t78 = load ptr, ptr %l60, !tbaa !29
  store ptr %t78, ptr %l7, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 2
  %t82 = load i1, ptr %t81, !tbaa !21
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb15, label %bb16
bb15:
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/check:frame", ptr %t86, i32 0, i32 12
  %t89 = load i1, ptr %t88, !tbaa !21
  store i1 %t89, ptr %l64, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb17
bb17:
  %t91 = load i1, ptr %l64, !tbaa !21
  br i1 %t91, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  br label %bb20
bb20:
  store i64 -1, ptr %l8, !tbaa !24
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l67
  br label %bb21
bb21:
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l9
  %t94 = load i64, ptr %l4, !tbaa !24
  %t96 = icmp slt i64 %t94, 0
  br i1 %t96, label %bb22, label %bb23
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 134
  store i1 true, ptr %t100, !tbaa !21
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = getelementptr %"compiler/check:frame", ptr %t102, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t110 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v0, ptr %v1, ptr %t101, i64 %t105, ptr %t106)
  store i64 %t110, ptr %l75
  br label %bb24
bb23:
  br label %bb34
bb24:
  %t111 = load i64, ptr %l75, !tbaa !24
  store i64 %t111, ptr %l8, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 134
  store i1 false, ptr %t114, !tbaa !21
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 143
  store ptr %t117, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb25
bb25:
  %t119 = load i64, ptr %l11, !tbaa !24
  store i64 %t119, ptr %l79, !tbaa !24
  %t120 = load ptr, ptr %l10, !tbaa !29
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t120)
  store i64 %t122, ptr %l81
  br label %bb26
bb26:
  %t123 = load i64, ptr %l79, !tbaa !24
  %t124 = load i64, ptr %l81, !tbaa !24
  %t125 = icmp slt i64 %t123, %t124
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  br label %bb29
bb29:
  %t129 = load ptr, ptr %l10, !tbaa !29
  %t130 = load i64, ptr %l11, !tbaa !24
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t129, i64 %t130)
  store i64 %t133, ptr %l86
  br label %bb30
bb30:
  %t134 = load i64, ptr %l86, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t134)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t138 = load i64, ptr %l11, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l11, !tbaa !24
  br label %bb25
bb33:
  br label %bb34
bb34:
  store i64 -1, ptr %l13, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l91, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t142, ptr %l92, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  store i64 %t144, ptr %l93, !tbaa !24
  %t145 = load i64, ptr %l93, !tbaa !24
  %t146 = mul i64 %t145, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t146)
  %t148 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  store { i64, ptr } %t149, ptr %l94, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = load i64, ptr %l93, !tbaa !24
  %t155 = mul i64 %t154, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t151, ptr %t153, i64 %t155, i1 false)
  %t156 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t156, ptr %l14, !tbaa !27
  store i1 false, ptr %l15, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t157, ptr %l96, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  store i64 %t159, ptr %l97, !tbaa !24
  %t160 = load i64, ptr %l97, !tbaa !24
  %t161 = mul i64 %t160, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t161)
  %t163 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  store { i64, ptr } %t164, ptr %l98, !tbaa !27
  %t165 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = load i64, ptr %l97, !tbaa !24
  %t170 = mul i64 %t169, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t166, ptr %t168, i64 %t170, i1 false)
  %t171 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t171, ptr %l16, !tbaa !27
  %t172 = load i64, ptr %l8, !tbaa !24
  %t174 = icmp sge i64 %t172, 0
  br i1 %t174, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l101, !tbaa !21
  br label %bb37
bb36:
  %t176 = load i64, ptr %l4, !tbaa !24
  %t178 = icmp eq i64 %t176, 0
  store i1 %t178, ptr %l101, !tbaa !21
  br label %bb37
bb37:
  %t180 = load i1, ptr %l101, !tbaa !21
  br i1 %t180, label %bb38, label %bb39
bb38:
  %t181 = load ptr, ptr %l3, !tbaa !29
  %t183 = icmp eq ptr %t181, null
  %t185 = xor i1 %t183, true
  store i1 %t185, ptr %l104, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb40
bb40:
  %t187 = load i1, ptr %l104, !tbaa !21
  br i1 %t187, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l15, !tbaa !21
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l3, !tbaa !29
  %t192 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflText(ptr %v0, ptr %v2, ptr %s0, ptr %t188, ptr %t189)
  %t193 = extractvalue { i32, { i64, ptr } } %t192, 1
  %t194 = extractvalue { i32, { i64, ptr } } %t192, 0
  store i32 %t194, ptr %l112
  %t195 = icmp ne i32 %t194, 0
  br i1 %t195, label %bb44, label %ok.196, !prof !99
ok.196:
  store { i64, ptr } %t193, ptr %l111
  br label %bb43
bb42:
  br label %bb70
bb43:
  %t197 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t197, ptr %l108, !tbaa !27
  br label %bb46
bb44:
  %t198 = load i32, ptr %l112, !tbaa !23
  %t199 = ashr i32 %t198, 16
  %t201 = icmp eq i32 %t199, 1
  store i1 %t201, ptr %l114, !tbaa !21
  br label %bb45
bb45:
  store i1 false, ptr %l15, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l115, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t202, ptr %l108, !tbaa !27
  br label %bb46
bb46:
  %t204 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 0
  %t206 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  store i64 %t207, ptr %l118, !tbaa !24
  %t209 = load i64, ptr %l118, !tbaa !24
  %t210 = icmp eq i64 %t205, %t209
  br i1 %t210, label %bb47, label %bb48
bb47:
  %t212 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = load i64, ptr %l118, !tbaa !24
  %t217 = mul i64 %t216, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t213, ptr %t215, i64 %t217, i1 false)
  br label %bb49
bb48:
  %t218 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  store i64 %t219, ptr %l120, !tbaa !24
  %t220 = load i64, ptr %l120, !tbaa !24
  %t221 = mul i64 %t220, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t221)
  %t223 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  store { i64, ptr } %t224, ptr %l121, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = load i64, ptr %l120, !tbaa !24
  %t230 = mul i64 %t229, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t226, ptr %t228, i64 %t230, i1 false)
  %t231 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t231, ptr %l14, !tbaa !27
  br label %bb49
bb49:
  %t232 = load i1, ptr %l15, !tbaa !21
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/check:Checker", ptr %t236, i32 0, i32 134
  store i1 true, ptr %t238, !tbaa !21
  %t239 = load ptr, ptr %l0, !tbaa !29
  store ptr %t239, ptr %l125, !tbaa !29
  %t240 = load ptr, ptr %l7, !tbaa !29
  %t242 = getelementptr %"compiler/check:frame", ptr %t240, i32 0, i32 1
  %t243 = load i64, ptr %t242, !tbaa !24
  store i64 %t243, ptr %l127, !tbaa !24
  %t244 = load ptr, ptr %l3, !tbaa !29
  store ptr %t244, ptr %l128, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t250 = getelementptr %"compiler/generic:Program", ptr %t248, i32 0, i32 2
  store ptr %t250, ptr %l131, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t251)
  store i32 %t253, ptr %l133
  br label %bb52
bb51:
  br label %bb69
bb52:
  %t254 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t255 = load ptr, ptr %l131, !tbaa !29
  %t256 = load i32, ptr %l133, !tbaa !23
  %t258 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t255, i32 %t256, i64 %t254)
  store i32 %t258, ptr %l135
  br label %bb53
bb53:
  %t259 = load ptr, ptr %l125, !tbaa !29
  %t260 = load i64, ptr %l127, !tbaa !24
  %t261 = load ptr, ptr %l128, !tbaa !29
  %t262 = load i32, ptr %l135, !tbaa !23
  %t263 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBody(ptr %v0, ptr %v2, ptr %t259, i64 %t260, ptr %t261, i32 %t262)
  store i64 %t263, ptr %l136
  br label %bb54
bb54:
  %t264 = load i64, ptr %l136, !tbaa !24
  store i64 %t264, ptr %l13, !tbaa !24
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/check:Checker", ptr %t265, i32 0, i32 134
  store i1 false, ptr %t267, !tbaa !21
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/check:Checker", ptr %t268, i32 0, i32 143
  store ptr %t270, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb55
bb55:
  %t272 = load i64, ptr %l18, !tbaa !24
  store i64 %t272, ptr %l140, !tbaa !24
  %t273 = load ptr, ptr %l17, !tbaa !29
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t273)
  store i64 %t275, ptr %l142
  br label %bb56
bb56:
  %t276 = load i64, ptr %l140, !tbaa !24
  %t277 = load i64, ptr %l142, !tbaa !24
  %t278 = icmp slt i64 %t276, %t277
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb57, label %bb58
bb57:
  br label %bb63
bb58:
  br label %bb59
bb59:
  %t282 = load ptr, ptr %l17, !tbaa !29
  %t283 = load i64, ptr %l18, !tbaa !24
  %t286 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t282, i64 %t283)
  store i64 %t286, ptr %l147
  br label %bb60
bb60:
  %t287 = load i64, ptr %l147, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t287)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t291 = load i64, ptr %l18, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l18, !tbaa !24
  br label %bb55
bb63:
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l152, !tbaa !29
  %t296 = load ptr, ptr %l3, !tbaa !29
  %t298 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t296)
  store %"compiler/source:Span" %t298, ptr %l154
  br label %bb64
bb64:
  %t299 = load ptr, ptr %l152, !tbaa !29
  %t300 = load %"compiler/source:Span", ptr %l154
  %t301 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s9, ptr %t299, %"compiler/source:Span" %t300)
  store { i64, ptr } %t301, ptr %l155
  br label %bb65
bb65:
  %t302 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t302, ptr %l156, !tbaa !27
  %t303 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 0
  %t305 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 0
  store i64 %t306, ptr %l158, !tbaa !24
  %t308 = load i64, ptr %l158, !tbaa !24
  %t309 = icmp eq i64 %t304, %t308
  br i1 %t309, label %bb66, label %bb67
bb66:
  %t311 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = load i64, ptr %l158, !tbaa !24
  %t316 = mul i64 %t315, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t312, ptr %t314, i64 %t316, i1 false)
  br label %bb68
bb67:
  %t317 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t317, 0
  store i64 %t318, ptr %l160, !tbaa !24
  %t319 = load i64, ptr %l160, !tbaa !24
  %t320 = mul i64 %t319, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t320)
  %t322 = insertvalue { i64, ptr } undef, i64 %t319, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  store { i64, ptr } %t323, ptr %l161, !tbaa !27
  %t324 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = load i64, ptr %l160, !tbaa !24
  %t329 = mul i64 %t328, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t325, ptr %t327, i64 %t329, i1 false)
  %t330 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t330, ptr %l16, !tbaa !27
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t331 = load i64, ptr %l8, !tbaa !24
  %t333 = icmp slt i64 %t331, 0
  br i1 %t333, label %bb71, label %bb72
bb71:
  %t335 = load i64, ptr %l4, !tbaa !24
  %t337 = icmp ne i64 %t335, 0
  store i1 %t337, ptr %l164, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb73
bb73:
  %t339 = load i1, ptr %l164, !tbaa !21
  br i1 %t339, label %bb74, label %bb75
bb74:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb75:
  br label %bb76
bb76:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/check:Checker", ptr %t340, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t345 = getelementptr %"compiler/generic:Program", ptr %t343, i32 0, i32 0
  %t346 = load ptr, ptr %t345, !tbaa !29
  %t348 = getelementptr %"compiler/load:Loader", ptr %t346, i32 0, i32 4
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t351 = call { { i64, [3 x i64] }, { i64, ptr } } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTopContext(ptr %v0, ptr %s0, ptr %t349)
  store { { i64, [3 x i64] }, { i64, ptr } } %t351, ptr %l171
  br label %bb77
bb77:
  %t352 = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %l171
  store { { i64, [3 x i64] }, { i64, ptr } } %t352, ptr %l20
  %t353 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l20, i32 0, i32 0
  %t354 = load { i64, [3 x i64] }, ptr %t353
  store { i64, [3 x i64] } %t354, ptr %l21
  %t356 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l20, i32 0, i32 1
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  store { i64, ptr } %t357, ptr %l173, !tbaa !27
  %t358 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 0
  store i64 %t359, ptr %l174, !tbaa !24
  %t360 = load i64, ptr %l174, !tbaa !24
  %t361 = mul i64 %t360, 1
  %t362 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t361)
  %t363 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  store { i64, ptr } %t364, ptr %l175, !tbaa !27
  %t365 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t368 = load ptr, ptr %t367, !tbaa !27
  %t369 = load i64, ptr %l174, !tbaa !24
  %t370 = mul i64 %t369, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t366, ptr %t368, i64 %t370, i1 false)
  %t371 = load { i64, ptr }, ptr %l175, !tbaa !27
  store { i64, ptr } %t371, ptr %l22, !tbaa !27
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/check:Checker", ptr %t372, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !29
  %t377 = getelementptr %"compiler/generic:Program", ptr %t375, i32 0, i32 0
  %t378 = load ptr, ptr %t377, !tbaa !29
  %t380 = getelementptr %"compiler/load:Loader", ptr %t378, i32 0, i32 10
  %t381 = load ptr, ptr %l7, !tbaa !29
  %t383 = getelementptr %"compiler/check:frame", ptr %t381, i32 0, i32 1
  %t384 = load i64, ptr %t383, !tbaa !24
  %t387 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t380, i64 %t384)
  store ptr %t387, ptr %l182
  br label %bb78
bb78:
  %t388 = load ptr, ptr %l182, !tbaa !29
  %t390 = getelementptr %"compiler/load:Module", ptr %t388, i32 0, i32 2
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  %t393 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t391, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t393, ptr %l185
  br label %bb79
bb79:
  %t394 = load i1, ptr %l185, !tbaa !21
  store i1 %t394, ptr %l23, !tbaa !21
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load ptr, ptr %l2, !tbaa !29
  %t400 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t395, ptr %t396)
  store i1 %t400, ptr %l189
  br label %bb80
bb80:
  %t401 = load i1, ptr %l189, !tbaa !21
  %t402 = xor i1 %t401, true
  br i1 %t402, label %bb81, label %bb82
bb81:
  %t404 = load i64, ptr %l4, !tbaa !24
  %t406 = icmp slt i64 %t404, 0
  store i1 %t406, ptr %l191, !tbaa !21
  br label %bb83
bb82:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb83
bb83:
  %t408 = load i1, ptr %l191, !tbaa !21
  br i1 %t408, label %bb84, label %bb85
bb84:
  %t409 = load i1, ptr %l15, !tbaa !21
  br i1 %t409, label %bb86, label %bb87
bb85:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb89
bb86:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/check:Checker", ptr %t411, i32 0, i32 149
  %t414 = load i1, ptr %t413, !tbaa !21
  store i1 %t414, ptr %l196, !tbaa !21
  br label %bb88
bb87:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb88
bb88:
  %t416 = load i1, ptr %l196, !tbaa !21
  %t417 = xor i1 %t416, true
  store i1 %t417, ptr %l194, !tbaa !21
  br label %bb89
bb89:
  %t419 = load i1, ptr %l194, !tbaa !21
  br i1 %t419, label %bb90, label %bb91
bb90:
  %t420 = load i1, ptr %l23, !tbaa !21
  %t422 = xor i1 %t420, true
  store i1 %t422, ptr %l200, !tbaa !21
  br label %bb92
bb91:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb92
bb92:
  %t424 = load i1, ptr %l200, !tbaa !21
  br i1 %t424, label %bb93, label %bb94
bb93:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l203, !tbaa !27
  %t425 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t425, ptr %l204, !tbaa !27
  %t426 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t426, 0
  %t428 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t429 = extractvalue { i64, ptr } %t428, 0
  store i64 %t429, ptr %l206, !tbaa !24
  %t431 = load i64, ptr %l206, !tbaa !24
  %t432 = icmp eq i64 %t427, %t431
  br i1 %t432, label %bb95, label %bb96
bb94:
  br label %bb98
bb95:
  %t434 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !27
  %t436 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = load i64, ptr %l206, !tbaa !24
  %t439 = mul i64 %t438, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t435, ptr %t437, i64 %t439, i1 false)
  br label %bb97
bb96:
  %t440 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t440, 0
  store i64 %t441, ptr %l208, !tbaa !24
  %t442 = load i64, ptr %l208, !tbaa !24
  %t443 = mul i64 %t442, 1
  %t444 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t443)
  %t445 = insertvalue { i64, ptr } undef, i64 %t442, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr %t444, 1
  store { i64, ptr } %t446, ptr %l209, !tbaa !27
  %t447 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !27
  %t451 = load i64, ptr %l208, !tbaa !24
  %t452 = mul i64 %t451, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t448, ptr %t450, i64 %t452, i1 false)
  %t453 = load { i64, ptr }, ptr %l209, !tbaa !27
  store { i64, ptr } %t453, ptr %l22, !tbaa !27
  br label %bb97
bb97:
  br label %bb98
bb98:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load ptr, ptr %l2, !tbaa !29
  %t458 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorOf(ptr %v0, ptr %v1, ptr %t454, ptr %t455)
  store %"compiler/source:Span" %t458, ptr %l212
  br label %bb99
bb99:
  %t459 = load %"compiler/source:Span", ptr %l212
  store %"compiler/source:Span" %t459, ptr %l24
  store { i64, [3 x i64] } zeroinitializer, ptr %t460
  %t461 = getelementptr { i64, [3 x i64] }, ptr %t460, i32 0, i32 0
  store i64 0, ptr %t461
  %t462 = load { i64, [3 x i64] }, ptr %t460
  store { i64, [3 x i64] } %t462, ptr %l25
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/check:Checker", ptr %t464, i32 0, i32 1
  %t467 = load ptr, ptr %t466, !tbaa !29
  %t469 = getelementptr %"compiler/generic:Program", ptr %t467, i32 0, i32 0
  %t470 = load ptr, ptr %t469, !tbaa !29
  %t472 = getelementptr %"compiler/load:Loader", ptr %t470, i32 0, i32 4
  %t473 = load ptr, ptr %t472, !tbaa !29
  store ptr %t473, ptr %l217, !tbaa !29
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t475 = load %"compiler/source:Span", ptr %l24
  %t478 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t474, %"compiler/source:Span" %t475)
  store { i64, [3 x i64] } %t478, ptr %l220
  br label %bb100
bb100:
  %t479 = load ptr, ptr %l217, !tbaa !29
  %t480 = load { i64, [3 x i64] }, ptr %l220
  %t481 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %t479, { i64, [3 x i64] } %t480)
  store i1 %t481, ptr %l221
  br label %bb101
bb101:
  %t482 = load i1, ptr %l221, !tbaa !21
  store i1 %t482, ptr %l26, !tbaa !21
  %t483 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t485 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t483, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t485, ptr %l223
  br label %bb102
bb102:
  %t486 = load i1, ptr %l223, !tbaa !21
  %t487 = xor i1 %t486, true
  br i1 %t487, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l225, !tbaa !21
  br label %bb105
bb104:
  %t489 = load i1, ptr %l26, !tbaa !21
  store i1 %t489, ptr %l225, !tbaa !21
  br label %bb105
bb105:
  %t491 = load i1, ptr %l225, !tbaa !21
  br i1 %t491, label %bb106, label %bb107
bb106:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t494 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprogramOrigin(ptr %v0, ptr %t492)
  store { i64, [3 x i64] } %t494, ptr %l228
  br label %bb108
bb107:
  br label %bb122
bb108:
  %t495 = load { i64, [3 x i64] }, ptr %l228
  store { i64, [3 x i64] } %t495, ptr %l25
  %t496 = load { i64, [3 x i64] }, ptr %l25
  %t498 = extractvalue { i64, [3 x i64] } %t496, 0
  %t499 = icmp eq i64 %t498, 0
  br i1 %t499, label %bb109, label %bb110
bb109:
  %t501 = load i1, ptr %l26, !tbaa !21
  store i1 %t501, ptr %l231, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb111
bb111:
  %t503 = load i1, ptr %l231, !tbaa !21
  br i1 %t503, label %bb112, label %bb113
bb112:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/check:Checker", ptr %t504, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !29
  %t509 = getelementptr %"compiler/generic:Program", ptr %t507, i32 0, i32 0
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t512 = getelementptr %"compiler/load:Loader", ptr %t510, i32 0, i32 4
  %t513 = load ptr, ptr %t512, !tbaa !29
  store ptr %t513, ptr %l236, !tbaa !29
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load %"compiler/source:Span", ptr %l24
  %t518 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t514, %"compiler/source:Span" %t515)
  store { i64, [3 x i64] } %t518, ptr %l239
  br label %bb114
bb113:
  br label %bb116
bb114:
  %t519 = load ptr, ptr %l236, !tbaa !29
  %t520 = load { i64, [3 x i64] }, ptr %l239
  %t521 = call { i64, [3 x i64] } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUseOf(ptr %v0, ptr %t519, { i64, [3 x i64] } %t520)
  store { i64, [3 x i64] } %t521, ptr %l240
  br label %bb115
bb115:
  %t522 = load { i64, [3 x i64] }, ptr %l240
  store { i64, [3 x i64] } %t522, ptr %l25
  br label %bb116
bb116:
  %t523 = load { i64, [3 x i64] }, ptr %l25
  store { i64, [3 x i64] } %t523, ptr %l241
  store ptr %l241, ptr %l242, !tbaa !29
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load %"compiler/source:Span", ptr %l24
  %t528 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t524, %"compiler/source:Span" %t525)
  store { i64, [3 x i64] } %t528, ptr %l245
  br label %bb117
bb117:
  %t529 = load ptr, ptr %l242, !tbaa !29
  %t531 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdiag_3aWhere(ptr %t529, ptr %l245)
  store i1 %t531, ptr %l247
  br label %bb118
bb118:
  %t532 = load i1, ptr %l247, !tbaa !21
  br i1 %t532, label %bb119, label %bb120
bb119:
  store { i64, [3 x i64] } zeroinitializer, ptr %t533
  %t534 = getelementptr { i64, [3 x i64] }, ptr %t533, i32 0, i32 0
  store i64 0, ptr %t534
  %t535 = load { i64, [3 x i64] }, ptr %t533
  store { i64, [3 x i64] } %t535, ptr %l25
  br label %bb121
bb120:
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t539 = getelementptr %"compiler/check:Checker", ptr %t537, i32 0, i32 108
  store ptr %t539, ptr %l250, !tbaa !29
  %t540 = load ptr, ptr %l7, !tbaa !29
  %t542 = getelementptr %"compiler/check:frame", ptr %t540, i32 0, i32 0
  %t543 = load i64, ptr %t542, !tbaa !24
  store i64 %t543, ptr %l252, !tbaa !24
  %t544 = load ptr, ptr %l7, !tbaa !29
  %t546 = getelementptr %"compiler/check:frame", ptr %t544, i32 0, i32 2
  %t547 = load i64, ptr %t546, !tbaa !24
  store i64 %t547, ptr %l254, !tbaa !24
  %t548 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t548, ptr %l255
  %t549 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t549, ptr %l256
  %t550 = load i64, ptr %l8, !tbaa !24
  store i64 %t550, ptr %l257, !tbaa !24
  %t551 = load i64, ptr %l13, !tbaa !24
  store i64 %t551, ptr %l258, !tbaa !24
  %t552 = ptrtoint ptr %v0 to i64
  store i64 %t552, ptr %l259, !tbaa !24
  %t553 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e10
  br i1 %t553, label %bb123, label %bb124
bb123:
  %t555 = call ptr @__olang_region_make(ptr %v0)
  %t556 = ptrtoint ptr %t555 to i64
  store i64 %t556, ptr %l259, !tbaa !24
  br label %bb124
bb124:
  %t557 = load i64, ptr %l259
  %t558 = inttoptr i64 %t557 to ptr
  %t560 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %t558, ptr %l9)
  store { i64, ptr } %t560, ptr %l262
  br label %bb125
bb125:
  %t561 = load { i64, [3 x i64] }, ptr %l21
  store { i64, [3 x i64] } %t561, ptr %l263
  %t562 = ptrtoint ptr %v0 to i64
  store i64 %t562, ptr %l264, !tbaa !24
  %t563 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e12
  br i1 %t563, label %bb126, label %bb127
bb126:
  %t565 = call ptr @__olang_region_make(ptr %v0)
  %t566 = ptrtoint ptr %t565 to i64
  store i64 %t566, ptr %l264, !tbaa !24
  br label %bb127
bb127:
  %t567 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t569 = extractvalue { i64, ptr } %t567, 1
  %t570 = extractvalue { i64, ptr } %t567, 0
  %t571 = load i64, ptr %l264
  %t572 = inttoptr i64 %t571 to ptr
  %t573 = call ptr @__olang_scope_alloc(ptr %t572, i64 %t570)
  call void @olang_textcopy(ptr %t573, ptr %t569, i64 %t570)
  %t574 = insertvalue { i64, ptr } undef, i64 %t570, 0
  %t575 = insertvalue { i64, ptr } %t574, ptr %t573, 1
  %t577 = load i64, ptr %l264
  %t578 = inttoptr i64 %t577 to ptr
  %t579 = extractvalue { i64, ptr } %t575, 0
  %t580 = extractvalue { i64, ptr } %t575, 1
  %t581 = mul i64 %t579, 1
  %t582 = call ptr @__olang_scope_alloc(ptr %t578, i64 %t581)
  call void @llvm.memcpy.p0.p0.i64(ptr %t582, ptr %t580, i64 %t581, i1 false)
  %t583 = insertvalue { i64, ptr } undef, i64 %t579, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t582, 1
  store { i64, ptr } %t584, ptr %l268, !tbaa !27
  %t585 = load i1, ptr %l15, !tbaa !21
  store i1 %t585, ptr %l269, !tbaa !21
  %t586 = ptrtoint ptr %v0 to i64
  store i64 %t586, ptr %l270, !tbaa !24
  %t587 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e7
  br i1 %t587, label %bb128, label %bb129
bb128:
  %t589 = call ptr @__olang_region_make(ptr %v0)
  %t590 = ptrtoint ptr %t589 to i64
  store i64 %t590, ptr %l270, !tbaa !24
  br label %bb129
bb129:
  %t591 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t593 = extractvalue { i64, ptr } %t591, 1
  %t594 = extractvalue { i64, ptr } %t591, 0
  %t595 = load i64, ptr %l270
  %t596 = inttoptr i64 %t595 to ptr
  %t597 = call ptr @__olang_scope_alloc(ptr %t596, i64 %t594)
  call void @olang_textcopy(ptr %t597, ptr %t593, i64 %t594)
  %t598 = insertvalue { i64, ptr } undef, i64 %t594, 0
  %t599 = insertvalue { i64, ptr } %t598, ptr %t597, 1
  %t601 = load i64, ptr %l270
  %t602 = inttoptr i64 %t601 to ptr
  %t603 = extractvalue { i64, ptr } %t599, 0
  %t604 = extractvalue { i64, ptr } %t599, 1
  %t605 = mul i64 %t603, 1
  %t606 = call ptr @__olang_scope_alloc(ptr %t602, i64 %t605)
  call void @llvm.memcpy.p0.p0.i64(ptr %t606, ptr %t604, i64 %t605, i1 false)
  %t607 = insertvalue { i64, ptr } undef, i64 %t603, 0
  %t608 = insertvalue { i64, ptr } %t607, ptr %t606, 1
  store { i64, ptr } %t608, ptr %l274, !tbaa !27
  %t609 = ptrtoint ptr %v0 to i64
  store i64 %t609, ptr %l275, !tbaa !24
  %t610 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e8
  br i1 %t610, label %bb130, label %bb131
bb130:
  %t612 = call ptr @__olang_region_make(ptr %v0)
  %t613 = ptrtoint ptr %t612 to i64
  store i64 %t613, ptr %l275, !tbaa !24
  br label %bb131
bb131:
  %t614 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t616 = extractvalue { i64, ptr } %t614, 1
  %t617 = extractvalue { i64, ptr } %t614, 0
  %t618 = load i64, ptr %l275
  %t619 = inttoptr i64 %t618 to ptr
  %t620 = call ptr @__olang_scope_alloc(ptr %t619, i64 %t617)
  call void @olang_textcopy(ptr %t620, ptr %t616, i64 %t617)
  %t621 = insertvalue { i64, ptr } undef, i64 %t617, 0
  %t622 = insertvalue { i64, ptr } %t621, ptr %t620, 1
  %t624 = load i64, ptr %l275
  %t625 = inttoptr i64 %t624 to ptr
  %t626 = extractvalue { i64, ptr } %t622, 0
  %t627 = extractvalue { i64, ptr } %t622, 1
  %t628 = mul i64 %t626, 1
  %t629 = call ptr @__olang_scope_alloc(ptr %t625, i64 %t628)
  call void @llvm.memcpy.p0.p0.i64(ptr %t629, ptr %t627, i64 %t628, i1 false)
  %t630 = insertvalue { i64, ptr } undef, i64 %t626, 0
  %t631 = insertvalue { i64, ptr } %t630, ptr %t629, 1
  %t632 = load { i64, [3 x i64] }, ptr %l25
  %t634 = load i64, ptr %l252, !tbaa !24
  %t635 = load i64, ptr %l254, !tbaa !24
  %t636 = load %"compiler/source:Span", ptr %l255
  %t637 = load %"compiler/source:Span", ptr %l256
  %t638 = load i64, ptr %l257, !tbaa !24
  %t639 = load i64, ptr %l258, !tbaa !24
  %t640 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t641 = load { i64, [3 x i64] }, ptr %l263
  %t642 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t643 = load i1, ptr %l269, !tbaa !21
  %t644 = load { i64, ptr }, ptr %l274, !tbaa !27
  call void @compiler_2fcheck_3aAssertAsk_2ector(ptr %t633, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i64 %t634, i64 %t635, %"compiler/source:Span" %t636, %"compiler/source:Span" %t637, i64 %t638, i64 %t639, { i64, ptr } %t640, { i64, [3 x i64] } %t641, { i64, ptr } %t642, i1 %t643, { i64, ptr } %t644, { i64, ptr } %t631, { i64, [3 x i64] } %t632)
  call void @llvm.memmove.p0.p0.i64(ptr %l281, ptr %t633, i64 184, i1 false)
  br label %bb132
bb132:
  %t647 = load ptr, ptr %l250, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t648, ptr %l281, i64 184, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2ePush_Hbdaad063a73077b3b5842d615b8c1d82(ptr %v0, ptr %v0, ptr %t647, ptr %t648)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatIndices(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t26 = alloca i64
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t2)
  store { i64, ptr } %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t10, i64 1)
  store i64 %t12, ptr %l16
  br label %bb2
bb2:
  %t13 = load i64, ptr %l16, !tbaa !24
  %t14 = sub i64 %t13, 1
  store i64 %t14, ptr %l17, !tbaa !24
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l18, !tbaa !29
  %t16 = load i64, ptr %l17, !tbaa !24
  %t17 = icmp sge i64 %t16, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l17, !tbaa !24
  %t20 = icmp sle i64 %t19, 1152921504606846975
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_3bfc508877dabbdc_ae4b6eee9a4b2328)
  unreachable
bb5:
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = mul i64 %t22, 8
  %t24 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t23)
  %t25 = load ptr, ptr %l18, !tbaa !29
  store i64 0, ptr %t26
  br label %fill.27
fill.27:
  %t30 = load i64, ptr %t26
  %t31 = icmp slt i64 %t30, %t22
  br i1 %t31, label %fillb.28, label %filld.29
fillb.28:
  %t32 = getelementptr ptr, ptr %t24, i64 %t30
  store ptr %t25, ptr %t32
  %t33 = add i64 %t30, 1
  store i64 %t33, ptr %t26
  br label %fill.27
filld.29:
  %t34 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t24, 1
  store { i64, ptr } %t35, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3bfc508877dabbdc_ae4b6eee9a4b2328)
  unreachable
bb7:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb12
bb9:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l30, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb11
bb11:
  %t67 = load i64, ptr %l30, !tbaa !24
  store i64 %t67, ptr %l27, !tbaa !24
  br label %bb12
bb12:
  %t68 = load i64, ptr %l27, !tbaa !24
  store i64 %t68, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l9, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t87, ptr %l48, !tbaa !27
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t89, ptr %l50, !tbaa !27
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = add i64 %t90, 1
  %t94 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t92
  %t97 = load ptr, ptr %t96, !tbaa !39
  %t100 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr ptr, ptr %t101, i64 %t88
  store ptr %t97, ptr %t102, !tbaa !39
  br label %bb17
bb17:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l8, !tbaa !24
  br label %bb13
bb18:
  %t107 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t107, ptr %l57, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  store i64 %t110, ptr %l58, !tbaa !24
  %t111 = load i64, ptr %l58, !tbaa !24
  %t112 = mul i64 %t111, 8
  %t113 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l59, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = load i64, ptr %l58, !tbaa !24
  %t121 = mul i64 %t120, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t117, ptr %t119, i64 %t121, i1 false)
  %t122 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t122, ptr %l57, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t123, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattempt(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
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
  %l13 = alloca { i64, ptr }
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i1
  %l45 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i64
  %l64 = alloca i1
  %l66 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca i1
  %l76 = alloca i1
  %l80 = alloca i64
  %l92 = alloca i1
  %l93 = alloca i1
  %l97 = alloca ptr
  %l103 = alloca i1
  %l107 = alloca i64
  %l116 = alloca i32
  %l120 = alloca ptr
  %l124 = alloca i1
  %l128 = alloca ptr
  %l132 = alloca ptr
  %l136 = alloca i64
  %l138 = alloca ptr
  %l139 = alloca ptr
  %l140 = alloca ptr
  %l144 = alloca ptr
  %l145 = alloca %"compiler/source:Span"
  %l146 = alloca ptr
  %l150 = alloca ptr
  %l153 = alloca { i64, ptr }
  %l155 = alloca %"compiler/diagmsg:Msg"
  %l156 = alloca i64
  %l161 = alloca ptr
  %l177 = alloca ptr
  %l178 = alloca i1
  %l184 = alloca ptr
  %l193 = alloca ptr
  %l195 = alloca i64
  %l196 = alloca i64
  %l198 = alloca ptr
  %l202 = alloca i64
  %l203 = alloca i64
  %l210 = alloca i64
  %l214 = alloca i64
  %l217 = alloca i64
  %l237 = alloca i1
  %l249 = alloca ptr
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l16
  br label %bb1
bb1:
  %t7 = load i64, ptr %l16, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l23, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l23, !tbaa !24
  store i64 %t34, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb101
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l6, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t57, i64 %t58)
  store i1 %t61, ptr %l44
  br label %bb12
bb12:
  %t62 = load i1, ptr %l44, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 3
  %t66 = load i1, ptr %t65, !tbaa !21
  br i1 %t66, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb19
bb15:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t72 = load i64, ptr %l6, !tbaa !24
  %t75 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t71, i64 %t72)
  store i64 %t75, ptr %l52
  br label %bb17
bb16:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb18
bb17:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/load:Loader", ptr %t82, i32 0, i32 12
  %t85 = load i64, ptr %t84, !tbaa !24
  %t86 = load i64, ptr %l52, !tbaa !24
  %t88 = icmp ne i64 %t86, %t85
  store i1 %t88, ptr %l48, !tbaa !21
  br label %bb18
bb18:
  %t90 = load i1, ptr %l48, !tbaa !21
  %t91 = xor i1 %t90, true
  store i1 %t91, ptr %l45, !tbaa !21
  br label %bb19
bb19:
  %t93 = load i1, ptr %l45, !tbaa !21
  br i1 %t93, label %bb20, label %bb21
bb20:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternRules(ptr %v0, ptr %t94, i64 %t95)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = load i64, ptr %l6, !tbaa !24
  %t105 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t101, i64 %t102)
  store i1 %t105, ptr %l64
  br label %bb24
bb24:
  %t106 = load i1, ptr %l64, !tbaa !21
  %t107 = xor i1 %t106, true
  br i1 %t107, label %bb25, label %bb26
bb25:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t113 = load i64, ptr %l6, !tbaa !24
  %t116 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t112, i64 %t113)
  store ptr %t116, ptr %l70
  br label %bb27
bb26:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb28
bb27:
  %t117 = load ptr, ptr %l70, !tbaa !29
  %t119 = getelementptr %"compiler/ast:Func", ptr %t117, i32 0, i32 7
  %t120 = load i1, ptr %t119, !tbaa !21
  store i1 %t120, ptr %l66, !tbaa !21
  br label %bb28
bb28:
  %t122 = load i1, ptr %l66, !tbaa !21
  br i1 %t122, label %bb29, label %bb30
bb29:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 3
  %t126 = load i1, ptr %t125, !tbaa !21
  br i1 %t126, label %bb31, label %bb32
bb30:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb35
bb31:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i64, ptr %l6, !tbaa !24
  %t135 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l80
  br label %bb33
bb32:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb34
bb33:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 0
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/load:Loader", ptr %t142, i32 0, i32 12
  %t145 = load i64, ptr %t144, !tbaa !24
  %t146 = load i64, ptr %l80, !tbaa !24
  %t148 = icmp ne i64 %t146, %t145
  store i1 %t148, ptr %l76, !tbaa !21
  br label %bb34
bb34:
  %t150 = load i1, ptr %l76, !tbaa !21
  %t151 = xor i1 %t150, true
  store i1 %t151, ptr %l73, !tbaa !21
  br label %bb35
bb35:
  %t153 = load i1, ptr %l73, !tbaa !21
  br i1 %t153, label %bb36, label %bb37
bb36:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportRules(ptr %v0, ptr %t154, i64 %t155)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load i64, ptr %l6, !tbaa !24
  %t165 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t161, i64 %t162)
  store i1 %t165, ptr %l92
  br label %bb40
bb40:
  %t166 = load i1, ptr %l92, !tbaa !21
  br i1 %t166, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb44
bb42:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t171 = load i64, ptr %l6, !tbaa !24
  %t174 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t170, i64 %t171)
  store ptr %t174, ptr %l97
  br label %bb43
bb43:
  %t175 = load ptr, ptr %l97, !tbaa !29
  %t177 = getelementptr %"compiler/ast:Func", ptr %t175, i32 0, i32 6
  %t178 = load i1, ptr %t177, !tbaa !21
  %t180 = xor i1 %t178, true
  store i1 %t180, ptr %l93, !tbaa !21
  br label %bb44
bb44:
  %t182 = load i1, ptr %l93, !tbaa !21
  br i1 %t182, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb46:
  br label %bb47
bb47:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 3
  %t186 = load i1, ptr %t185, !tbaa !21
  br i1 %t186, label %bb48, label %bb49
bb48:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t192 = load i64, ptr %l6, !tbaa !24
  %t195 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t191, i64 %t192)
  store i64 %t195, ptr %l107
  br label %bb50
bb49:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb51
bb50:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/check:Checker", ptr %t196, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t201 = getelementptr %"compiler/generic:Program", ptr %t199, i32 0, i32 0
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/load:Loader", ptr %t202, i32 0, i32 12
  %t205 = load i64, ptr %t204, !tbaa !24
  %t206 = load i64, ptr %l107, !tbaa !24
  %t208 = icmp ne i64 %t206, %t205
  store i1 %t208, ptr %l103, !tbaa !21
  br label %bb51
bb51:
  %t210 = load i1, ptr %l103, !tbaa !21
  br i1 %t210, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb53:
  br label %bb54
bb54:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t215 = load i64, ptr %l6, !tbaa !24
  %t218 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t214, i64 %t215)
  store i32 %t218, ptr %l116
  br label %bb55
bb55:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t223 = load i64, ptr %l6, !tbaa !24
  %t226 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t222, i64 %t223)
  store ptr %t226, ptr %l120
  br label %bb56
bb56:
  %t227 = load ptr, ptr %l120, !tbaa !29
  %t229 = getelementptr %"compiler/ast:Func", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = icmp eq ptr %t230, null
  br i1 %t232, label %bb57, label %bb58
bb57:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/check:Checker", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t238 = load i64, ptr %l6, !tbaa !24
  %t241 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t237, i64 %t238)
  store ptr %t241, ptr %l128
  br label %bb59
bb58:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb60
bb59:
  %t242 = load ptr, ptr %l128, !tbaa !29
  %t244 = getelementptr %"compiler/ast:Func", ptr %t242, i32 0, i32 3
  %t245 = load ptr, ptr %t244, !tbaa !29
  %t247 = getelementptr %"compiler/ast:Sig", ptr %t245, i32 0, i32 6
  %t248 = load i1, ptr %t247, !tbaa !21
  store i1 %t248, ptr %l124, !tbaa !21
  br label %bb60
bb60:
  %t250 = load i1, ptr %l124, !tbaa !21
  br i1 %t250, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s7
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l132, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load i64, ptr %l6, !tbaa !24
  %t259 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t255, i64 %t256)
  store i64 %t259, ptr %l136
  br label %bb63
bb62:
  br label %bb72
bb63:
  %t260 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t261 = load ptr, ptr %l132, !tbaa !29
  %t262 = load i64, ptr %l136, !tbaa !24
  %t264 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t261, i64 -1, i64 %t262, i32 %t260, i32 0)
  store ptr %t264, ptr %l138
  br label %bb64
bb64:
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l139, !tbaa !29
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l140, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t271 = load i64, ptr %l6, !tbaa !24
  %t274 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t270, i64 %t271)
  store ptr %t274, ptr %l144
  br label %bb65
bb65:
  %t275 = load ptr, ptr %l140, !tbaa !29
  %t276 = load ptr, ptr %l144, !tbaa !29
  %t277 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t275, ptr %t276)
  store %"compiler/source:Span" %t277, ptr %l145
  br label %bb66
bb66:
  %t278 = load ptr, ptr %l0, !tbaa !29
  store ptr %t278, ptr %l146, !tbaa !29
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/check:Checker", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t283 = load i64, ptr %l6, !tbaa !24
  %t286 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s7, ptr %t282, i64 %t283)
  store ptr %t286, ptr %l150
  br label %bb67
bb67:
  %t287 = load ptr, ptr %l150, !tbaa !29
  %t289 = getelementptr %"compiler/ast:Func", ptr %t287, i32 0, i32 2
  %t290 = load i32, ptr %t289, !tbaa !23
  %t291 = load ptr, ptr %l146, !tbaa !29
  %t293 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s7, ptr %t291, i32 %t290)
  store { i64, ptr } %t293, ptr %l153
  br label %bb68
bb68:
  %t294 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t294, 0
  %t296 = extractvalue { i64, ptr } %t294, 1
  %t297 = mul i64 %t295, 1
  %t298 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t297)
  call void @llvm.memcpy.p0.p0.i64(ptr %t298, ptr %t296, i64 %t297, i1 false)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  %t302 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesNotHere(ptr %s7, ptr %s7, { i64, ptr } %t300)
  store %"compiler/diagmsg:Msg" %t302, ptr %l155
  br label %bb69
bb69:
  %t303 = load ptr, ptr %l139, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l145
  %t305 = load %"compiler/diagmsg:Msg", ptr %l155
  %t306 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t303, %"compiler/source:Span" %t304, %"compiler/diagmsg:Msg" %t305)
  store i64 %t306, ptr %l156
  br label %bb70
bb70:
  %t307 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t307)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s7)
  br label %bb72
bb72:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/check:Checker", ptr %t309, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t313 = load i64, ptr %l6, !tbaa !24
  %t316 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t312, i64 %t313)
  store ptr %t316, ptr %l161
  br label %bb73
bb73:
  %t317 = load ptr, ptr %l161, !tbaa !29
  %t319 = getelementptr %"compiler/ast:Func", ptr %t317, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = icmp eq ptr %t320, null
  %t324 = xor i1 %t322, true
  br i1 %t324, label %bb74, label %bb75
bb74:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorMethod(ptr %v0, ptr %t326, i64 %t327)
  br label %bb76
bb75:
  br label %bb80
bb76:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einheritClash(ptr %v0, ptr %t330, i64 %t331)
  br label %bb77
bb77:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverrideClash(ptr %v0, ptr %t334, i64 %t335)
  br label %bb78
bb78:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodOverlap(ptr %v0, ptr %t338, i64 %t339)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/check:Checker", ptr %t342, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t346 = load i64, ptr %l6, !tbaa !24
  %t349 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t345, i64 %t346)
  store ptr %t349, ptr %l177
  br label %bb81
bb81:
  %t350 = load ptr, ptr %l177, !tbaa !29
  %t351 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t350)
  store i1 %t351, ptr %l178
  br label %bb82
bb82:
  %t352 = load i1, ptr %l178, !tbaa !21
  br i1 %t352, label %bb83, label %bb84
bb83:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderRules(ptr %v0, ptr %t353, i64 %t354)
  br label %bb85
bb84:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t361 = load i64, ptr %l6, !tbaa !24
  %t364 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t360, i64 %t361)
  store ptr %t364, ptr %l184
  br label %bb86
bb85:
  br label %bb91
bb86:
  %t365 = load ptr, ptr %l184, !tbaa !29
  %t367 = getelementptr %"compiler/ast:Func", ptr %t365, i32 0, i32 1
  %t368 = load ptr, ptr %t367, !tbaa !29
  %t370 = icmp eq ptr %t368, null
  br i1 %t370, label %bb87, label %bb88
bb87:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplacement(ptr %v0, ptr %t372, i64 %t373)
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnTypeParams(ptr %v0, ptr %t376, i64 %t377)
  br label %bb92
bb92:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  store ptr %t383, ptr %l193, !tbaa !29
  %t384 = load i64, ptr %l6, !tbaa !24
  %t386 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t384)
  store i64 %t386, ptr %l195
  br label %bb93
bb93:
  %t387 = load ptr, ptr %l193, !tbaa !29
  %t388 = load i64, ptr %l195, !tbaa !24
  %t389 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t387, i64 %t388)
  store i64 %t389, ptr %l196
  br label %bb94
bb94:
  %t390 = load i64, ptr %l196, !tbaa !24
  %t391 = icmp sgt i64 %t390, 0
  br i1 %t391, label %bb95, label %bb96
bb95:
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb96:
  br label %bb97
bb97:
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l198, !tbaa !29
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/check:Checker", ptr %t394, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !29
  %t398 = load i64, ptr %l6, !tbaa !24
  %t401 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t397, i64 %t398, i32 0)
  store i64 %t401, ptr %l202
  br label %bb98
bb98:
  %t402 = load ptr, ptr %l198, !tbaa !29
  %t403 = load i64, ptr %l202, !tbaa !24
  %t404 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t402, i64 %t403)
  store i64 %t404, ptr %l203
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb100:
  %t405 = load i64, ptr %l5, !tbaa !24
  %t407 = add i64 %t405, 1
  store i64 %t407, ptr %l5, !tbaa !24
  br label %bb8
bb101:
  store i64 0, ptr %l7, !tbaa !24
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/check:Checker", ptr %t409, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !29
  %t414 = getelementptr %"compiler/generic:Program", ptr %t412, i32 0, i32 0
  %t415 = load ptr, ptr %t414, !tbaa !29
  %t417 = getelementptr %"compiler/load:Loader", ptr %t415, i32 0, i32 10
  %t419 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t417)
  store i64 %t419, ptr %l210
  br label %bb102
bb102:
  %t420 = load i64, ptr %l210, !tbaa !24
  store i64 %t420, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t421 = load i64, ptr %l8, !tbaa !24
  %t422 = load i64, ptr %l7, !tbaa !24
  %t425 = icmp sgt i64 %t421, %t422
  br i1 %t425, label %bb103, label %bb104
bb103:
  %t427 = load i64, ptr %l9, !tbaa !24
  %t429 = icmp sgt i64 %t427, 0
  br i1 %t429, label %bb105, label %bb106
bb104:
  store i64 0, ptr %l214, !tbaa !24
  br label %bb108
bb105:
  %t431 = load i64, ptr %l8, !tbaa !24
  %t432 = load i64, ptr %l7, !tbaa !24
  %t435 = sub i64 %t431, %t432
  %t436 = load i64, ptr %l9, !tbaa !24
  %t439 = add i64 %t435, %t436
  %t441 = sub i64 %t439, 1
  %t442 = load i64, ptr %l9, !tbaa !24
  %t445 = sdiv i64 %t441, %t442
  store i64 %t445, ptr %l217, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l217, !tbaa !24
  br label %bb107
bb107:
  %t447 = load i64, ptr %l217, !tbaa !24
  store i64 %t447, ptr %l214, !tbaa !24
  br label %bb108
bb108:
  %t448 = load i64, ptr %l214, !tbaa !24
  store i64 %t448, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb109
bb109:
  %t449 = load i64, ptr %l11, !tbaa !24
  %t450 = load i64, ptr %l10, !tbaa !24
  %t453 = icmp slt i64 %t449, %t450
  %t455 = xor i1 %t453, true
  br i1 %t455, label %bb110, label %bb111
bb110:
  br label %bb129
bb111:
  br label %bb112
bb112:
  %t457 = load i64, ptr %l7, !tbaa !24
  %t458 = load i64, ptr %l11, !tbaa !24
  %t459 = load i64, ptr %l9, !tbaa !24
  %t462 = mul i64 %t458, %t459
  %t465 = add i64 %t457, %t462
  store i64 %t465, ptr %l12, !tbaa !24
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/check:Checker", ptr %t467, i32 0, i32 3
  %t470 = load i1, ptr %t469, !tbaa !21
  br i1 %t470, label %bb113, label %bb114
bb113:
  %t472 = load i64, ptr %l12, !tbaa !24
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/check:Checker", ptr %t473, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !29
  %t478 = getelementptr %"compiler/generic:Program", ptr %t476, i32 0, i32 0
  %t479 = load ptr, ptr %t478, !tbaa !29
  %t481 = getelementptr %"compiler/load:Loader", ptr %t479, i32 0, i32 12
  %t482 = load i64, ptr %t481, !tbaa !24
  %t485 = icmp ne i64 %t472, %t482
  store i1 %t485, ptr %l237, !tbaa !21
  br label %bb115
bb114:
  store i1 false, ptr %l237, !tbaa !21
  br label %bb115
bb115:
  %t487 = load i1, ptr %l237, !tbaa !21
  br i1 %t487, label %bb116, label %bb117
bb116:
  br label %bb128
bb117:
  br label %bb118
bb118:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/check:Checker", ptr %t488, i32 0, i32 1
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = getelementptr %"compiler/generic:Program", ptr %t491, i32 0, i32 0
  %t494 = load ptr, ptr %t493, !tbaa !29
  %t496 = getelementptr %"compiler/load:Loader", ptr %t494, i32 0, i32 10
  %t497 = load i64, ptr %l12, !tbaa !24
  %t500 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t496, i64 %t497)
  store ptr %t500, ptr %l249
  br label %bb119
bb119:
  %t501 = load ptr, ptr %l249, !tbaa !29
  %t503 = getelementptr %"compiler/load:Module", ptr %t501, i32 0, i32 8
  %t504 = load { i64, ptr }, ptr %t503, !tbaa !27
  store { i64, ptr } %t504, ptr %l13, !tbaa !27
  %t506 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t508 = extractvalue { i64, ptr } %t506, 0
  %t510 = icmp sgt i64 %t508, 0
  br i1 %t510, label %bb120, label %bb121
bb120:
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t513 = load i64, ptr %l12, !tbaa !24
  %t514 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v0, ptr %t512, i64 %t513, { i64, ptr } %t514)
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb123
bb123:
  %t518 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t520 = extractvalue { i64, ptr } %t518, 0
  %t522 = icmp sgt i64 %t520, 0
  br i1 %t522, label %bb124, label %bb125
bb124:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSets(ptr %v0, ptr %t524, i64 %t525)
  br label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t528 = load i64, ptr %l11, !tbaa !24
  %t530 = add i64 %t528, 1
  store i64 %t530, ptr %l11, !tbaa !24
  br label %bb109
bb129:
  %t532 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %t532)
  br label %bb130
bb130:
  %t534 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailForms(ptr %v0, ptr %t534)
  br label %bb131
bb131:
  %t536 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etailSets(ptr %v0, ptr %t536)
  br label %bb132
bb132:
  %t538 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettle(ptr %v0, ptr %t538)
  br label %bb133
bb133:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"compiler/check:ownerAt"
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l11 = alloca { i64, ptr }
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
  %l27 = alloca %"compiler/check:ownerAt"
  %l34 = alloca i1
  %l35 = alloca i1
  %l39 = alloca i1
  %l46 = alloca i64
  %l51 = alloca { i64, ptr }
  %l52 = alloca i1
  %l53 = alloca i1
  %l58 = alloca i1
  %l59 = alloca i1
  %l68 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l110 = alloca i64
  %l111 = alloca i32
  %l120 = alloca i64
  %l123 = alloca i64
  %l146 = alloca { i64, ptr }
  %l148 = alloca i64
  %l150 = alloca i64
  %l151 = alloca { i64, ptr }
  %l157 = alloca i64
  %l160 = alloca i64
  %l178 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l191 = alloca %"compiler/source:Span"
  %l192 = alloca i64
  %l193 = alloca { i64, ptr }
  %l198 = alloca ptr
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t201 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %t1, ptr %a3)
  store %"compiler/check:ownerAt" %t5, ptr %l27
  br label %bb1
bb1:
  %t6 = load %"compiler/check:ownerAt", ptr %l27
  store %"compiler/check:ownerAt" %t6, ptr %l8
  %t7 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t12 = icmp eq i32 %t8, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t15, i32 %t17)
  store i1 %t20, ptr %l34
  br label %bb5
bb5:
  %t21 = load i1, ptr %l34, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t25 = load i32, ptr %l4, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t22, i32 %t24, i32 %t25)
  store i1 %t29, ptr %l39
  br label %bb8
bb7:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb9
bb8:
  %t30 = load i1, ptr %l39, !tbaa !21
  store i1 %t30, ptr %l35, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l35, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store ptr null, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  %t39 = load i32, ptr %l4, !tbaa !23
  %t40 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 1
  %t41 = load i1, ptr %t40, !tbaa !21
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t36, i32 %t38, i32 %t39, i1 %t41)
  store i64 %t46, ptr %l46
  br label %bb13
bb13:
  %t47 = load i64, ptr %l46, !tbaa !24
  store i64 %t47, ptr %l9, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t50 = icmp slt i64 %t48, 0
  br i1 %t50, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l4, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t52, i32 %t53)
  store { i64, ptr } %t56, ptr %l51
  br label %bb16
bb15:
  br label %bb29
bb16:
  %t57 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t57, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t58, ptr %l52
  br label %bb17
bb17:
  %t59 = load i1, ptr %l52, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t67 = load i32, ptr %t66, !tbaa !23
  %t70 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t65, i32 %t67)
  store i1 %t70, ptr %l58
  br label %bb20
bb19:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb21
bb20:
  %t71 = load i1, ptr %l58, !tbaa !21
  store i1 %t71, ptr %l53, !tbaa !21
  br label %bb21
bb21:
  %t72 = load i1, ptr %l53, !tbaa !21
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t73 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t77 = icmp eq i64 %t75, 0
  store i1 %t77, ptr %l59, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb24
bb24:
  %t79 = load i1, ptr %l59, !tbaa !21
  br i1 %t79, label %bb25, label %bb26
bb25:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l1
  %t82 = load %"compiler/source:Span", ptr %l2
  %t83 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t84 = load i32, ptr %t83, !tbaa !23
  %t85 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromBits(ptr %v0, ptr %v2, ptr %v4, ptr %t80, %"compiler/source:Span" %t81, %"compiler/source:Span" %t82, i32 %t84, { i64, ptr } %t85)
  store ptr %t91, ptr %l68
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t92 = load ptr, ptr %l68, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  store ptr %t92, ptr %rv
  br label %ret
bb28:
  call void @__olang_scope_close(ptr %s3)
  store ptr null, ptr %rv
  br label %ret
bb29:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load %"compiler/source:Span", ptr %l2
  %t98 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %t95, i64 %t96, %"compiler/source:Span" %t97, i32 %t99)
  br label %bb30
bb30:
  %t104 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 1
  %t105 = load i1, ptr %t104, !tbaa !21
  br i1 %t105, label %bb31, label %bb32
bb31:
  %t107 = icmp sge i64 0, 0
  br i1 %t107, label %bb33, label %bb34
bb32:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t113 = load i64, ptr %l9, !tbaa !24
  %t114 = getelementptr %"compiler/check:ownerAt", ptr %l8, i32 0, i32 0
  %t115 = load i32, ptr %t114, !tbaa !23
  %t119 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v4, ptr %t112, i64 %t113, i32 %t115)
  store { i64, ptr } %t119, ptr %l84
  br label %bb37
bb33:
  %t120 = icmp sle i64 0, 2305843009213693951
  br i1 %t120, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d6f5282c3e1602eb_a812bdd43f0e87b7)
  unreachable
bb35:
  %t122 = mul i64 0, 4
  %t123 = insertvalue { i64, ptr } undef, i64 0, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t124, ptr %l76, !tbaa !27
  br label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_d6f5282c3e1602eb_a812bdd43f0e87b7)
  unreachable
bb37:
  %t126 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t126, ptr %l76, !tbaa !27
  br label %bb38
bb38:
  %t127 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  store i64 %t128, ptr %l85, !tbaa !24
  %t129 = load i64, ptr %l85, !tbaa !24
  %t130 = mul i64 %t129, 4
  %t131 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t130)
  %t132 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l86, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = load i64, ptr %l85, !tbaa !24
  %t139 = mul i64 %t138, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t135, ptr %t137, i64 %t139, i1 false)
  %t140 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t140, ptr %lp10
  %t141 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t142 = load ptr, ptr %lp10
  store { i64, ptr } %t141, ptr %t142, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t147 = icmp sgt i64 %t145, 0
  br i1 %t147, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s5
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i64, ptr %l9, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t157 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v3, ptr %s5, ptr %t149, i64 %t150, { i64, ptr } %t151, %"compiler/source:Span" %a7)
  store { i64, ptr } %t157, ptr %l94
  br label %bb41
bb40:
  br label %bb84
bb41:
  %t158 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t158, ptr %l11, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t163 = icmp eq i64 %t161, 0
  br i1 %t163, label %bb42, label %bb43
bb42:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t165, { i64, ptr } %t166)
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l1
  %t173 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t169, %"compiler/source:Span" %t170)
  store ptr %t173, ptr %l102
  br label %bb45
bb45:
  %t174 = load ptr, ptr %l102, !tbaa !29
  call void @__olang_scope_close(ptr %s5)
  store ptr %t174, ptr %rv
  br label %ret
bb46:
  %t176 = load ptr, ptr %lp10
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t185 = icmp slt i64 %t179, %t182
  br i1 %t185, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s7
  %t187 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  store i64 %t189, ptr %l110, !tbaa !24
  %t190 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t190, ptr %l111, !tbaa !23
  %t191 = load i64, ptr %l110, !tbaa !24
  %t192 = icmp sge i64 %t191, 0
  br i1 %t192, label %bb49, label %bb50
bb48:
  br label %bb68
bb49:
  %t194 = load i64, ptr %l110, !tbaa !24
  %t195 = icmp sle i64 %t194, 2305843009213693951
  br i1 %t195, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_8fa0026acd32add6_9f7d6b48cffeb302)
  unreachable
bb51:
  %t197 = load i64, ptr %l110, !tbaa !24
  %t198 = mul i64 %t197, 4
  %t199 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t198)
  %t200 = load i32, ptr %l111, !tbaa !23
  store i64 0, ptr %t201
  br label %fill.202
fill.202:
  %t205 = load i64, ptr %t201
  %t206 = icmp slt i64 %t205, %t197
  br i1 %t206, label %fillb.203, label %filld.204
fillb.203:
  %t207 = getelementptr i32, ptr %t199, i64 %t205
  store i32 %t200, ptr %t207
  %t208 = add i64 %t205, 1
  store i64 %t208, ptr %t201
  br label %fill.202
filld.204:
  %t209 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t199, 1
  store { i64, ptr } %t210, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t212 = load ptr, ptr %lp10
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 0
  store i64 %t215, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t217 = load i64, ptr %l14, !tbaa !24
  %t218 = load i64, ptr %l13, !tbaa !24
  %t221 = icmp sgt i64 %t217, %t218
  br i1 %t221, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_8fa0026acd32add6_9f7d6b48cffeb302)
  unreachable
bb53:
  %t223 = load i64, ptr %l15, !tbaa !24
  %t225 = icmp sgt i64 %t223, 0
  br i1 %t225, label %bb55, label %bb56
bb54:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb58
bb55:
  %t227 = load i64, ptr %l14, !tbaa !24
  %t228 = load i64, ptr %l13, !tbaa !24
  %t231 = sub i64 %t227, %t228
  %t232 = load i64, ptr %l15, !tbaa !24
  %t235 = add i64 %t231, %t232
  %t237 = sub i64 %t235, 1
  %t238 = load i64, ptr %l15, !tbaa !24
  %t241 = sdiv i64 %t237, %t238
  store i64 %t241, ptr %l123, !tbaa !24
  br label %bb57
bb56:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb57
bb57:
  %t243 = load i64, ptr %l123, !tbaa !24
  store i64 %t243, ptr %l120, !tbaa !24
  br label %bb58
bb58:
  %t244 = load i64, ptr %l120, !tbaa !24
  store i64 %t244, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb59
bb59:
  %t245 = load i64, ptr %l17, !tbaa !24
  %t246 = load i64, ptr %l16, !tbaa !24
  %t249 = icmp slt i64 %t245, %t246
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb60, label %bb61
bb60:
  br label %bb64
bb61:
  br label %bb62
bb62:
  %t253 = load i64, ptr %l13, !tbaa !24
  %t254 = load i64, ptr %l17, !tbaa !24
  %t255 = load i64, ptr %l15, !tbaa !24
  %t258 = mul i64 %t254, %t255
  %t261 = add i64 %t253, %t258
  store i64 %t261, ptr %l18, !tbaa !24
  %t263 = load i64, ptr %l18, !tbaa !24
  %t264 = load i64, ptr %l18, !tbaa !24
  %t265 = load ptr, ptr %lp10
  %t267 = getelementptr { i64, ptr }, ptr %t265, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr i32, ptr %t268, i64 %t264
  %t270 = load i32, ptr %t269, !tbaa !33
  %t273 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = getelementptr i32, ptr %t274, i64 %t263
  store i32 %t270, ptr %t275, !tbaa !33
  br label %bb63
bb63:
  %t276 = load i64, ptr %l17, !tbaa !24
  %t278 = add i64 %t276, 1
  store i64 %t278, ptr %l17, !tbaa !24
  br label %bb59
bb64:
  %t280 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t280, ptr %l146, !tbaa !27
  %t281 = load ptr, ptr %lp10
  %t282 = load { i64, ptr }, ptr %t281, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 0
  %t284 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 0
  store i64 %t285, ptr %l148, !tbaa !24
  %t287 = load i64, ptr %l148, !tbaa !24
  %t288 = icmp eq i64 %t283, %t287
  br i1 %t288, label %bb65, label %bb66
bb65:
  %t290 = load ptr, ptr %lp10
  %t291 = getelementptr { i64, ptr }, ptr %t290, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = load i64, ptr %l148, !tbaa !24
  %t296 = mul i64 %t295, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t292, ptr %t294, i64 %t296, i1 false)
  br label %bb67
bb66:
  %t297 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  store i64 %t298, ptr %l150, !tbaa !24
  %t299 = load i64, ptr %l150, !tbaa !24
  %t300 = mul i64 %t299, 4
  %t301 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t300)
  %t302 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  store { i64, ptr } %t303, ptr %l151, !tbaa !27
  %t304 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = load i64, ptr %l150, !tbaa !24
  %t309 = mul i64 %t308, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t305, ptr %t307, i64 %t309, i1 false)
  %t310 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t311 = load ptr, ptr %lp10
  store { i64, ptr } %t310, ptr %t311, !tbaa !27
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s7)
  br label %bb68
bb68:
  store i64 0, ptr %l19, !tbaa !24
  %t312 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t312, 0
  store i64 %t314, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t316 = load i64, ptr %l20, !tbaa !24
  %t317 = load i64, ptr %l19, !tbaa !24
  %t320 = icmp sgt i64 %t316, %t317
  br i1 %t320, label %bb69, label %bb70
bb69:
  %t322 = load i64, ptr %l21, !tbaa !24
  %t324 = icmp sgt i64 %t322, 0
  br i1 %t324, label %bb71, label %bb72
bb70:
  store i64 0, ptr %l157, !tbaa !24
  br label %bb74
bb71:
  %t326 = load i64, ptr %l20, !tbaa !24
  %t327 = load i64, ptr %l19, !tbaa !24
  %t330 = sub i64 %t326, %t327
  %t331 = load i64, ptr %l21, !tbaa !24
  %t334 = add i64 %t330, %t331
  %t336 = sub i64 %t334, 1
  %t337 = load i64, ptr %l21, !tbaa !24
  %t340 = sdiv i64 %t336, %t337
  store i64 %t340, ptr %l160, !tbaa !24
  br label %bb73
bb72:
  store i64 0, ptr %l160, !tbaa !24
  br label %bb73
bb73:
  %t342 = load i64, ptr %l160, !tbaa !24
  store i64 %t342, ptr %l157, !tbaa !24
  br label %bb74
bb74:
  %t343 = load i64, ptr %l157, !tbaa !24
  store i64 %t343, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb75
bb75:
  %t344 = load i64, ptr %l23, !tbaa !24
  %t345 = load i64, ptr %l22, !tbaa !24
  %t348 = icmp slt i64 %t344, %t345
  %t350 = xor i1 %t348, true
  br i1 %t350, label %bb76, label %bb77
bb76:
  br label %bb83
bb77:
  br label %bb78
bb78:
  %t352 = load i64, ptr %l19, !tbaa !24
  %t353 = load i64, ptr %l23, !tbaa !24
  %t354 = load i64, ptr %l21, !tbaa !24
  %t357 = mul i64 %t353, %t354
  %t360 = add i64 %t352, %t357
  store i64 %t360, ptr %l24, !tbaa !24
  %t362 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t362, ptr %l178, !tbaa !27
  %t363 = load i64, ptr %l24, !tbaa !24
  %t365 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr i32, ptr %t366, i64 %t363
  %t368 = load i32, ptr %t367, !tbaa !33
  %t369 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t372 = icmp ne i32 %t368, %t369
  br i1 %t372, label %bb79, label %bb80
bb79:
  %t374 = load i64, ptr %l24, !tbaa !24
  %t375 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t375, ptr %l184, !tbaa !27
  %t376 = load i64, ptr %l24, !tbaa !24
  %t378 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = getelementptr i32, ptr %t379, i64 %t376
  %t381 = load i32, ptr %t380, !tbaa !33
  %t383 = load ptr, ptr %lp10
  %t385 = getelementptr { i64, ptr }, ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr i32, ptr %t386, i64 %t374
  store i32 %t381, ptr %t387, !tbaa !33
  br label %bb81
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t388 = load i64, ptr %l23, !tbaa !24
  %t390 = add i64 %t388, 1
  store i64 %t390, ptr %l23, !tbaa !24
  br label %bb75
bb83:
  call void @__olang_scope_close(ptr %s5)
  br label %bb84
bb84:
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l189, !tbaa !29
  %t393 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t393, ptr %l190
  %t394 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t394, ptr %l191
  %t395 = load i64, ptr %l9, !tbaa !24
  store i64 %t395, ptr %l192, !tbaa !24
  %t396 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t396, ptr %l193, !tbaa !27
  %t397 = icmp sge i64 0, 0
  br i1 %t397, label %bb85, label %bb86
bb85:
  %t399 = icmp sle i64 0, 1152921504606846975
  br i1 %t399, label %bb87, label %bb88
bb86:
  call void @__olang_check_failed(ptr @olang_loc_abc0d27c00840bf5_5f6cad85e28cb021)
  unreachable
bb87:
  %t401 = mul i64 0, 8
  %t402 = insertvalue { i64, ptr } undef, i64 0, 0
  %t403 = insertvalue { i64, ptr } %t402, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t404 = load ptr, ptr %lp10
  %t405 = load { i64, ptr }, ptr %t404, !tbaa !27
  %t406 = load ptr, ptr %l189, !tbaa !29
  %t407 = load %"compiler/source:Span", ptr %l190
  %t408 = load %"compiler/source:Span", ptr %l191
  %t409 = load i64, ptr %l192, !tbaa !24
  %t410 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t413 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v2, ptr %v0, ptr %v4, ptr %v4, ptr %t406, %"compiler/source:Span" %t407, %"compiler/source:Span" %t408, i64 %t409, ptr null, { i64, ptr } %t410, { i64, ptr } %t403, { i64, ptr } %t405)
  store ptr %t413, ptr %l198
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_abc0d27c00840bf5_5f6cad85e28cb021)
  unreachable
bb89:
  %t414 = load ptr, ptr %l198, !tbaa !29
  store ptr %t414, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderFactInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:ownerAt"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca %"compiler/check:ownerAt"
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca %"compiler/check:ownerAt"
  %l25 = alloca i1
  %l32 = alloca { i64, ptr }
  %l34 = alloca i64
  %l36 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca i64
  %l49 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca i64
  %l65 = alloca i32
  %l66 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t3 = call %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %s0, i32 %t1, i1 false)
  store %"compiler/check:ownerAt" %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load %"compiler/check:ownerAt", ptr %l11
  store %"compiler/check:ownerAt" %t4, ptr %l3
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t6 = load ptr, ptr %l12, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l12, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 30}
  %t12 = icmp eq i64 %t10, 14
  store i1 %t12, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l13, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t24 = call %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store %"compiler/check:ownerAt" %t24, ptr %l20
  br label %bb7
bb7:
  %t25 = load %"compiler/check:ownerAt", ptr %l20
  store %"compiler/check:ownerAt" %t25, ptr %l3
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_9c3920f9822030fe_f04ee3e76f867a92)
  unreachable
bb13:
  %t27 = getelementptr %"compiler/check:ownerAt", ptr %l3, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = icmp eq i32 %t28, %t29
  br i1 %t32, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb16
bb15:
  %t34 = getelementptr %"compiler/check:ownerAt", ptr %l3, i32 0, i32 1
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t37 = load i1, ptr %l25, !tbaa !21
  br i1 %t37, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = getelementptr %"compiler/check:ownerAt", ptr %l3, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %s0, ptr %t42, i64 %t43, i32 %t45)
  store { i64, ptr } %t49, ptr %l32
  br label %bb20
bb20:
  %t50 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t50, ptr %l5, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l34, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  store ptr %t57, ptr %l36, !tbaa !29
  %t58 = load i64, ptr %l2, !tbaa !24
  %t60 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t58)
  store i64 %t60, ptr %l38
  br label %bb21
bb21:
  %t61 = load ptr, ptr %l36, !tbaa !29
  %t62 = load i64, ptr %l38, !tbaa !24
  %t63 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t63, ptr %l39
  br label %bb22
bb22:
  %t64 = load i64, ptr %l34, !tbaa !24
  %t65 = load i64, ptr %l39, !tbaa !24
  %t66 = icmp ne i64 %t64, %t65
  br i1 %t66, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t69 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t69, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l8, !tbaa !24
  br label %bb26
bb26:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb27, label %bb28
bb27:
  br label %bb34
bb28:
  br label %bb29
bb29:
  %t83 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t83, ptr %l49, !tbaa !27
  %t84 = load i64, ptr %l7, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i32, ptr %t87, i64 %t84
  %t89 = load i32, ptr %t88, !tbaa !33
  %t92 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t95 = icmp eq i32 %t89, %t92
  br i1 %t95, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l7, !tbaa !24
  br label %bb26
bb34:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  store ptr %t105, ptr %l59, !tbaa !29
  %t106 = load i64, ptr %l2, !tbaa !24
  store i64 %t106, ptr %l60, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t112, { i64, ptr } %t113)
  store i32 %t116, ptr %l65
  br label %bb35
bb35:
  %t117 = load ptr, ptr %l59, !tbaa !29
  %t118 = load i64, ptr %l60, !tbaa !24
  %t119 = load i32, ptr %l65, !tbaa !23
  %t120 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t117, i64 %t118, i32 %t119)
  store i64 %t120, ptr %l66
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t121 = load i64, ptr %l66, !tbaa !24
  store i64 %t121, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckThunk(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/generic:AnySlot"
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, [3 x i64] }
  %l36 = alloca ptr
  %l37 = alloca i64
  %l38 = alloca i32
  %l43 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i64
  %l71 = alloca i64
  %l76 = alloca i32
  %l81 = alloca i32
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca i64
  %l87 = alloca %"compiler/generic:Context"
  %l89 = alloca %"compiler/generic:Context"
  %l92 = alloca ptr
  %l96 = alloca ptr
  %l99 = alloca i32
  %l102 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca { i64, ptr }
  %l114 = alloca i64
  %l117 = alloca i64
  %l137 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l148 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l173 = alloca ptr
  %l176 = alloca i64
  %l182 = alloca i64
  %l185 = alloca i64
  %l204 = alloca ptr
  %l208 = alloca ptr
  %l214 = alloca { i64, ptr }
  %l215 = alloca ptr
  %l222 = alloca i64
  %l225 = alloca { i64, ptr }
  %l228 = alloca i1
  %l231 = alloca i1
  %l233 = alloca ptr
  %l239 = alloca i64
  %l240 = alloca i1
  %l242 = alloca ptr
  %l250 = alloca i64
  %l258 = alloca ptr
  %l259 = alloca ptr
  %l263 = alloca { i64, ptr }
  %l264 = alloca %"compiler/typed:Block"
  %l269 = alloca ptr
  %l270 = alloca %"compiler/source:Span"
  %l271 = alloca %"compiler/source:Span"
  %l272 = alloca i64
  %l274 = alloca ptr
  %l277 = alloca { i64, ptr }
  %l278 = alloca { i64, ptr }
  %l282 = alloca ptr
  %l286 = alloca { i64, [3 x i64] }
  %l288 = alloca ptr
  %l294 = alloca i64
  %l295 = alloca { i64, [3 x i64] }
  %l296 = alloca i32
  %l304 = alloca ptr
  %l305 = alloca { i64, [3 x i64] }
  %l306 = alloca { i64, ptr }
  %l310 = alloca { i64, ptr }
  %l313 = alloca { i64, ptr }
  %l316 = alloca ptr
  %l317 = alloca %"compiler/source:Span"
  %l318 = alloca %"compiler/source:Span"
  %l319 = alloca i64
  %l321 = alloca ptr
  %l324 = alloca { i64, ptr }
  %l325 = alloca { i64, ptr }
  %l329 = alloca ptr
  %l339 = alloca i1
  %l340 = alloca ptr
  %l341 = alloca %"compiler/source:Span"
  %l343 = alloca i32
  %l347 = alloca ptr
  %l348 = alloca ptr
  %l352 = alloca ptr
  %l353 = alloca { i64, ptr }
  %l354 = alloca ptr
  %l357 = alloca i1
  %l358 = alloca ptr
  %l359 = alloca %"compiler/source:Span"
  %l361 = alloca i32
  %l364 = alloca ptr
  %l367 = alloca i1
  %l368 = alloca ptr
  %l369 = alloca %"compiler/source:Span"
  %l374 = alloca i32
  %l375 = alloca i32
  %l379 = alloca ptr
  %l380 = alloca ptr
  %l386 = alloca ptr
  %l388 = alloca ptr
  %l396 = alloca ptr
  %l401 = alloca i32
  %l402 = alloca { i64, ptr }
  %l405 = alloca %"compiler/source:Span"
  %l408 = alloca i32
  %l410 = alloca ptr
  %l414 = alloca %"compiler/typed:Try"
  %l420 = alloca i64
  %l425 = alloca i32
  %l451 = alloca ptr
  %l452 = alloca %"compiler/source:Span"
  %l457 = alloca ptr
  %l462 = alloca ptr
  %l463 = alloca ptr
  %l467 = alloca { i64, ptr }
  %l468 = alloca %"compiler/typed:Block"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %t104 = alloca %"compiler/generic:Context", align 8
  %t344 = alloca { i64, [4 x i64] }, align 8
  %t369 = alloca { i64, [4 x i64] }, align 8
  %t557 = alloca { i64, [3 x i64] }, align 8
  %t658 = alloca { i64, [3 x i64] }, align 8
  %t798 = alloca { i64, [3 x i64] }, align 8
  %t942 = alloca { i64, [5 x i64] }, align 8
  %t983 = alloca { i64, [3 x i64] }, align 8
  %t1006 = alloca { i64, [3 x i64] }, align 8
  %t1035 = alloca { i64, [3 x i64] }, align 8
  %t1049 = alloca { i64, [3 x i64] }, align 8
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 61
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v0, ptr %t6, i64 %a2)
  store ptr %t10, ptr %l43
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l43, !tbaa !29
  store ptr %t11, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = getelementptr %"compiler/generic:AnyTable", ptr %t16, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t15, i32 %t19)
  store { i64, ptr } %t22, ptr %l48
  br label %bb2
bb2:
  %t23 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  %t30 = srem i64 %a3, %t24
  store i64 %t30, ptr %l6, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr %"compiler/generic:AnyTable", ptr %t36, i32 0, i32 1
  %t39 = load i32, ptr %t38, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t35, i32 %t39)
  store { i64, ptr } %t42, ptr %l57
  br label %bb3
bb3:
  %t43 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t43, ptr %l58, !tbaa !27
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr %"compiler/generic:AnySlot", ptr %t47, i64 %t44
  %t49 = load %"compiler/generic:AnySlot", ptr %t48
  store %"compiler/generic:AnySlot" %t49, ptr %l7
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur0(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l63
  br label %bb4
bb4:
  %t56 = load ptr, ptr %l63, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %t58, !tbaa !23
  store i32 %t59, ptr %l8, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ethunkModule(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l68
  br label %bb5
bb5:
  %t66 = load i64, ptr %l68, !tbaa !24
  store i64 %t66, ptr %l9, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l69, !tbaa !29
  %t68 = load i64, ptr %l1, !tbaa !24
  store i64 %t68, ptr %l70, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  store i64 %t69, ptr %l71, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l8, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l76
  br label %bb6
bb6:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t86 = load i32, ptr %l8, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t89, ptr %l81
  br label %bb7
bb7:
  %t90 = load ptr, ptr %l69, !tbaa !29
  %t91 = load i64, ptr %l70, !tbaa !24
  %t92 = load i64, ptr %l71, !tbaa !24
  %t93 = load i32, ptr %l76, !tbaa !23
  %t94 = load i32, ptr %l81, !tbaa !23
  %t95 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t90, i64 %t91, i64 %t92, i32 %t93, i32 %t94)
  store ptr %t95, ptr %l82
  br label %bb8
bb8:
  %t96 = load ptr, ptr %l82, !tbaa !29
  store ptr %t96, ptr %l10, !tbaa !29
  %t97 = load ptr, ptr %l10, !tbaa !29
  store ptr %t97, ptr %l83, !tbaa !29
  %t98 = ptrtoint ptr %v0 to i64
  store i64 %t98, ptr %l84, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t99, label %bb9, label %bb10
bb9:
  %t101 = call ptr @__olang_region_make(ptr %v0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l84, !tbaa !24
  br label %bb10
bb10:
  %t103 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l84
  %t106 = inttoptr i64 %t105 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t104, ptr %t106, i64 %t103, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l87, ptr %t104, i64 160, i1 false)
  br label %bb11
bb11:
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t108, label %bb12, label %bb13
bb12:
  %t110 = load i64, ptr %l84
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = getelementptr %"compiler/generic:Context", ptr %l87, i32 0, i32 3
  %t113 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr null
  %t119 = getelementptr %"compiler/generic:Context", ptr %l87, i32 0, i32 3
  %t120 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t119, i32 0, i32 1
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr %t118
  %t126 = getelementptr %"compiler/generic:Context", ptr %l87, i32 0, i32 3
  %t127 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t126, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr %t125
  %t133 = getelementptr %"compiler/generic:Context", ptr %l87, i32 0, i32 2
  %t134 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t133, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = icmp ne ptr %t137, null
  %t139 = select i1 %t138, ptr %t137, ptr %t132
  %t140 = getelementptr %"compiler/generic:Context", ptr %l87, i32 0, i32 2
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t140, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr %t139
  %t147 = getelementptr %"compiler/generic:Context", ptr %l87, i32 0, i32 2
  %t148 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t147, i32 0, i32 0
  %t149 = load { i64, ptr }, ptr %t148
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = call ptr @__olang_region_or(ptr %t150, ptr null)
  %t152 = icmp ne ptr %t151, null
  %t153 = select i1 %t152, ptr %t151, ptr %t146
  %t154 = icmp eq ptr %t153, %t111
  call void @__olang_region_settle(ptr %t111, i1 %t154)
  br label %bb13
bb13:
  %t155 = load ptr, ptr %l83, !tbaa !29
  %t156 = getelementptr %"compiler/check:frame", ptr %t155, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l89, ptr %t156, i64 160, i1 false)
  %t157 = load ptr, ptr %l83, !tbaa !29
  %t158 = getelementptr %"compiler/check:frame", ptr %t157, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t158, ptr %l87, i64 160, i1 false)
  %t159 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t159, label %bb14, label %bb15
bb14:
  %t161 = getelementptr %"compiler/generic:Context", ptr %l89, i32 0, i32 3
  %t162 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t161, i32 0, i32 2
  %t163 = load { i64, ptr }, ptr %t162
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = call ptr @__olang_region_or(ptr %t164, ptr null)
  %t166 = icmp ne ptr %t165, null
  %t167 = select i1 %t166, ptr %t165, ptr null
  %t168 = getelementptr %"compiler/generic:Context", ptr %l89, i32 0, i32 3
  %t169 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t168, i32 0, i32 1
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr %t167
  %t175 = getelementptr %"compiler/generic:Context", ptr %l89, i32 0, i32 3
  %t176 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t175, i32 0, i32 0
  %t177 = load { i64, ptr }, ptr %t176
  %t178 = extractvalue { i64, ptr } %t177, 1
  %t179 = call ptr @__olang_region_or(ptr %t178, ptr null)
  %t180 = icmp ne ptr %t179, null
  %t181 = select i1 %t180, ptr %t179, ptr %t174
  %t182 = getelementptr %"compiler/generic:Context", ptr %l89, i32 0, i32 2
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t182, i32 0, i32 2
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr %t181
  %t189 = getelementptr %"compiler/generic:Context", ptr %l89, i32 0, i32 2
  %t190 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t189, i32 0, i32 1
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = icmp ne ptr %t193, null
  %t195 = select i1 %t194, ptr %t193, ptr %t188
  %t196 = getelementptr %"compiler/generic:Context", ptr %l89, i32 0, i32 2
  %t197 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t196, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = icmp ne ptr %t200, null
  %t202 = select i1 %t201, ptr %t200, ptr %t195
  call void @__olang_region_drop(ptr %t202)
  store %"compiler/generic:Context" zeroinitializer, ptr %l89
  br label %bb15
bb15:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t203)
  store ptr %t205, ptr %l92
  br label %bb16
bb16:
  %t206 = load ptr, ptr %l92, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Body", ptr %t206, i32 0, i32 4
  %t209 = load %"compiler/source:Span", ptr %t208
  store %"compiler/source:Span" %t209, ptr %l11
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t211)
  store ptr %t213, ptr %l96
  br label %bb17
bb17:
  %t214 = load %"compiler/source:Span", ptr %l11
  %t215 = load ptr, ptr %l96, !tbaa !29
  %t218 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t215, i32 -1, i32 0, %"compiler/source:Span" %t214)
  store i32 %t218, ptr %l99
  br label %bb18
bb18:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t224 = getelementptr %"compiler/generic:Program", ptr %t222, i32 0, i32 2
  store ptr %t224, ptr %l102, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = load i32, ptr %l8, !tbaa !23
  %t234 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t230, i32 %t231)
  store i32 %t234, ptr %l107
  br label %bb19
bb19:
  %t235 = load ptr, ptr %l102, !tbaa !29
  %t236 = load i32, ptr %l107, !tbaa !23
  %t237 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t235, i32 %t236)
  store { i64, ptr } %t237, ptr %l108
  br label %bb20
bb20:
  %t238 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t238, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  store i64 %t241, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t243 = load i64, ptr %l14, !tbaa !24
  %t244 = load i64, ptr %l13, !tbaa !24
  %t247 = icmp sgt i64 %t243, %t244
  br i1 %t247, label %bb21, label %bb22
bb21:
  %t249 = load i64, ptr %l15, !tbaa !24
  %t251 = icmp sgt i64 %t249, 0
  br i1 %t251, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb26
bb23:
  %t253 = load i64, ptr %l14, !tbaa !24
  %t254 = load i64, ptr %l13, !tbaa !24
  %t257 = sub i64 %t253, %t254
  %t258 = load i64, ptr %l15, !tbaa !24
  %t261 = add i64 %t257, %t258
  %t263 = sub i64 %t261, 1
  %t264 = load i64, ptr %l15, !tbaa !24
  %t267 = sdiv i64 %t263, %t264
  store i64 %t267, ptr %l117, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb25
bb25:
  %t269 = load i64, ptr %l117, !tbaa !24
  store i64 %t269, ptr %l114, !tbaa !24
  br label %bb26
bb26:
  %t270 = load i64, ptr %l114, !tbaa !24
  store i64 %t270, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s2
  %t271 = load i64, ptr %l17, !tbaa !24
  %t272 = load i64, ptr %l16, !tbaa !24
  %t275 = icmp slt i64 %t271, %t272
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb29:
  br label %bb30
bb30:
  %t279 = load i64, ptr %l13, !tbaa !24
  %t280 = load i64, ptr %l17, !tbaa !24
  %t281 = load i64, ptr %l15, !tbaa !24
  %t284 = mul i64 %t280, %t281
  %t287 = add i64 %t279, %t284
  store i64 %t287, ptr %l18, !tbaa !24
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load %"compiler/source:Span", ptr %l11
  %t291 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t291, ptr %l137, !tbaa !27
  %t292 = load i64, ptr %l18, !tbaa !24
  %t294 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr i32, ptr %t295, i64 %t292
  %t297 = load i32, ptr %t296, !tbaa !33
  %t298 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %s2, ptr %t289, i32 0, %"compiler/source:Span" %t290, i32 %t297, i64 %t298, ptr null)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb32:
  %t303 = load i64, ptr %l17, !tbaa !24
  %t305 = add i64 %t303, 1
  store i64 %t305, ptr %l17, !tbaa !24
  br label %bb27
bb33:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t307)
  store ptr %t309, ptr %l144
  br label %bb34
bb34:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/check:Checker", ptr %t310, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t314 = load i32, ptr %l8, !tbaa !23
  %t317 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t313, i32 %t314)
  store { i64, ptr } %t317, ptr %l148
  br label %bb35
bb35:
  %t318 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t319 = extractvalue { i64, ptr } %t318, 0
  %t320 = extractvalue { i64, ptr } %t318, 1
  %t321 = mul i64 %t319, 8
  %t322 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t321)
  call void @llvm.memcpy.p0.p0.i64(ptr %t322, ptr %t320, i64 %t321, i1 false)
  %t323 = insertvalue { i64, ptr } undef, i64 %t319, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t322, 1
  %t325 = load ptr, ptr %l144, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t325, { i64, ptr } %t324)
  br label %bb36
bb36:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load %"compiler/source:Span", ptr %l11
  %t331 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t327, %"compiler/source:Span" %t328, i64 0)
  store ptr %t331, ptr %l152
  br label %bb37
bb37:
  %t332 = load ptr, ptr %l152, !tbaa !29
  %t333 = load ptr, ptr %l4, !tbaa !29
  %t335 = getelementptr %"compiler/generic:AnyTable", ptr %t333, i32 0, i32 0
  %t336 = load i32, ptr %t335, !tbaa !23
  store i32 %t336, ptr %l20, !tbaa !23
  %t338 = load %"compiler/source:Span", ptr %l11
  %t339 = load ptr, ptr %l4, !tbaa !29
  %t341 = getelementptr %"compiler/generic:AnyTable", ptr %t339, i32 0, i32 2
  %t342 = load i32, ptr %t341, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t344
  %t345 = getelementptr { i64, [4 x i64] }, ptr %t344, i32 0, i32 0
  store i64 2, ptr %t345
  %t347 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t338, 0
  %t349 = insertvalue { %"compiler/source:Span", i32, ptr } %t347, i32 %t342, 1
  %t351 = insertvalue { %"compiler/source:Span", i32, ptr } %t349, ptr %t332, 2
  %t352 = getelementptr { i64, [4 x i64] }, ptr %t344, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t351, ptr %t352
  %t353 = load { i64, [4 x i64] }, ptr %t344
  %t355 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t353, ptr %t355
  store ptr %t355, ptr %l21, !tbaa !29
  %t357 = load ptr, ptr %l4, !tbaa !29
  %t359 = getelementptr %"compiler/generic:AnyTable", ptr %t357, i32 0, i32 2
  %t360 = load i32, ptr %t359, !tbaa !23
  %t361 = load i32, ptr %l20, !tbaa !23
  %t364 = icmp ne i32 %t360, %t361
  br i1 %t364, label %bb38, label %bb39
bb38:
  %t366 = load %"compiler/source:Span", ptr %l11
  %t367 = load i32, ptr %l20, !tbaa !23
  %t368 = load ptr, ptr %l21, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t369
  %t370 = getelementptr { i64, [4 x i64] }, ptr %t369, i32 0, i32 0
  store i64 3, ptr %t370
  %t372 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t366, 0
  %t374 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t372, i32 %t367, 1
  %t376 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t374, ptr %t368, 2
  %t377 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t376, i64 0, 3
  %t378 = getelementptr { i64, [4 x i64] }, ptr %t369, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t377, ptr %t378
  %t379 = load { i64, [4 x i64] }, ptr %t369
  %t381 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t379, ptr %t381
  store ptr %t381, ptr %l21, !tbaa !29
  br label %bb40
bb39:
  br label %bb40
bb40:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l11
  %t385 = load ptr, ptr %l21, !tbaa !29
  %t389 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t383, %"compiler/source:Span" %t384, ptr %t385)
  store ptr %t389, ptr %l173
  br label %bb41
bb41:
  %t390 = load ptr, ptr %l173, !tbaa !29
  store ptr %t390, ptr %l22, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"compiler/check:Checker", ptr %t391, i32 0, i32 36
  %t395 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t393)
  store i64 %t395, ptr %l176
  br label %bb42
bb42:
  %t396 = load i64, ptr %l176, !tbaa !24
  store i64 %t396, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t397 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t399 = extractvalue { i64, ptr } %t397, 0
  store i64 %t399, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t401 = load i64, ptr %l25, !tbaa !24
  %t402 = load i64, ptr %l24, !tbaa !24
  %t405 = icmp sgt i64 %t401, %t402
  br i1 %t405, label %bb43, label %bb44
bb43:
  %t407 = load i64, ptr %l26, !tbaa !24
  %t409 = icmp sgt i64 %t407, 0
  br i1 %t409, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l182, !tbaa !24
  br label %bb48
bb45:
  %t411 = load i64, ptr %l25, !tbaa !24
  %t412 = load i64, ptr %l24, !tbaa !24
  %t415 = sub i64 %t411, %t412
  %t416 = load i64, ptr %l26, !tbaa !24
  %t419 = add i64 %t415, %t416
  %t421 = sub i64 %t419, 1
  %t422 = load i64, ptr %l26, !tbaa !24
  %t425 = sdiv i64 %t421, %t422
  store i64 %t425, ptr %l185, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l185, !tbaa !24
  br label %bb47
bb47:
  %t427 = load i64, ptr %l185, !tbaa !24
  store i64 %t427, ptr %l182, !tbaa !24
  br label %bb48
bb48:
  %t428 = load i64, ptr %l182, !tbaa !24
  store i64 %t428, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb49
bb49:
  %t429 = load i64, ptr %l28, !tbaa !24
  %t430 = load i64, ptr %l27, !tbaa !24
  %t433 = icmp slt i64 %t429, %t430
  %t435 = xor i1 %t433, true
  br i1 %t435, label %bb50, label %bb51
bb50:
  br label %bb56
bb51:
  br label %bb52
bb52:
  %t437 = load i64, ptr %l24, !tbaa !24
  %t438 = load i64, ptr %l28, !tbaa !24
  %t439 = load i64, ptr %l26, !tbaa !24
  %t442 = mul i64 %t438, %t439
  %t445 = add i64 %t437, %t442
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 36
  store ptr %t449, ptr %l204, !tbaa !29
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load %"compiler/source:Span", ptr %l11
  %t456 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t450, %"compiler/source:Span" %t451, i64 %t445)
  store ptr %t456, ptr %l208
  br label %bb53
bb53:
  %t457 = load ptr, ptr %l204, !tbaa !29
  %t458 = load ptr, ptr %l208, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t457, ptr %t458)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t459 = load i64, ptr %l28, !tbaa !24
  %t461 = add i64 %t459, 1
  store i64 %t461, ptr %l28, !tbaa !24
  br label %bb49
bb56:
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/check:Checker", ptr %t463, i32 0, i32 36
  %t466 = load i64, ptr %l23, !tbaa !24
  %t469 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t465, i64 %t466)
  store { i64, ptr } %t469, ptr %l214
  br label %bb57
bb57:
  %t470 = load { i64, ptr }, ptr %l214, !tbaa !27
  store { i64, ptr } %t470, ptr %l30, !tbaa !27
  %t471 = load ptr, ptr %l10, !tbaa !29
  store ptr %t471, ptr %l215, !tbaa !29
  %t472 = load ptr, ptr %l215, !tbaa !29
  %t473 = getelementptr %"compiler/check:frame", ptr %t472, i32 0, i32 15
  %t474 = load i64, ptr %t473, !tbaa !24
  %t476 = add i64 %t474, 1
  %t478 = load ptr, ptr %l215, !tbaa !29
  %t479 = getelementptr %"compiler/check:frame", ptr %t478, i32 0, i32 15
  store i64 %t476, ptr %t479, !tbaa !24
  store ptr null, ptr %l31, !tbaa !29
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t482 = getelementptr %"compiler/check:Checker", ptr %t480, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !29
  %t484 = load i32, ptr %l20, !tbaa !23
  %t485 = getelementptr %"compiler/generic:AnySlot", ptr %l7, i32 0, i32 0
  %t486 = load i32, ptr %t485, !tbaa !23
  %t490 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t483, i32 %t484, i32 %t486)
  store i64 %t490, ptr %l222
  br label %bb58
bb58:
  %t491 = load i64, ptr %l222, !tbaa !24
  store i64 %t491, ptr %l32, !tbaa !24
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = getelementptr %"compiler/generic:AnySlot", ptr %l7, i32 0, i32 0
  %t494 = load i32, ptr %t493, !tbaa !23
  %t497 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t492, i32 %t494)
  store { i64, ptr } %t497, ptr %l225
  br label %bb59
bb59:
  %t498 = load { i64, ptr }, ptr %l225, !tbaa !27
  store { i64, ptr } %t498, ptr %l33, !tbaa !27
  %t499 = load i64, ptr %l32, !tbaa !24
  %t501 = icmp slt i64 %t499, 0
  br i1 %t501, label %bb60, label %bb61
bb60:
  %t503 = getelementptr %"compiler/generic:AnySlot", ptr %l7, i32 0, i32 3
  %t504 = load i64, ptr %t503, !tbaa !24
  %t506 = icmp sge i64 %t504, 0
  store i1 %t506, ptr %l228, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l228, !tbaa !21
  br label %bb62
bb62:
  %t508 = load i1, ptr %l228, !tbaa !21
  br i1 %t508, label %bb63, label %bb64
bb63:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t511 = getelementptr %"compiler/check:Checker", ptr %t509, i32 0, i32 156
  store ptr %t511, ptr %l233, !tbaa !29
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t514 = getelementptr %"compiler/check:Checker", ptr %t512, i32 0, i32 1
  %t515 = load ptr, ptr %t514, !tbaa !29
  %t516 = load ptr, ptr %l4, !tbaa !29
  %t518 = getelementptr %"compiler/generic:AnyTable", ptr %t516, i32 0, i32 1
  %t519 = load i32, ptr %t518, !tbaa !23
  %t520 = load i64, ptr %l6, !tbaa !24
  %t524 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %t515, i32 %t519, i64 %t520)
  store i64 %t524, ptr %l239
  br label %bb65
bb64:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb67
bb65:
  %t525 = load ptr, ptr %l233, !tbaa !29
  %t526 = load i64, ptr %l239, !tbaa !24
  %t527 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %t525, i64 %t526)
  store i1 %t527, ptr %l240
  br label %bb66
bb66:
  %t528 = load i1, ptr %l240, !tbaa !21
  %t529 = xor i1 %t528, true
  store i1 %t529, ptr %l231, !tbaa !21
  br label %bb67
bb67:
  %t531 = load i1, ptr %l231, !tbaa !21
  br i1 %t531, label %bb68, label %bb69
bb68:
  %t532 = load ptr, ptr %l10, !tbaa !29
  store ptr %t532, ptr %l242, !tbaa !29
  %t533 = load ptr, ptr %l242, !tbaa !29
  %t534 = getelementptr %"compiler/check:frame", ptr %t533, i32 0, i32 15
  %t535 = load i64, ptr %t534, !tbaa !24
  %t537 = sub i64 %t535, 1
  %t539 = load ptr, ptr %l242, !tbaa !29
  %t540 = getelementptr %"compiler/check:frame", ptr %t539, i32 0, i32 15
  store i64 %t537, ptr %t540, !tbaa !24
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t543 = getelementptr %"compiler/check:Checker", ptr %t541, i32 0, i32 157
  %t544 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t543, i64 %t544)
  br label %bb70
bb69:
  br label %bb77
bb70:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/check:Checker", ptr %t547, i32 0, i32 37
  %t551 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t549)
  store i64 %t551, ptr %l250
  br label %bb71
bb71:
  %t552 = load i64, ptr %l250, !tbaa !24
  store i64 %t552, ptr %l34, !tbaa !24
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t555 = getelementptr %"compiler/check:Checker", ptr %t553, i32 0, i32 37
  %t556 = load %"compiler/source:Span", ptr %l11
  store { i64, [3 x i64] } zeroinitializer, ptr %t557
  %t558 = getelementptr { i64, [3 x i64] }, ptr %t557, i32 0, i32 0
  store i64 9, ptr %t558
  %t560 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t556, 0
  %t562 = insertvalue { %"compiler/source:Span", i32, ptr } %t560, i32 0, 1
  %t563 = insertvalue { %"compiler/source:Span", i32, ptr } %t562, ptr null, 2
  %t564 = getelementptr { i64, [3 x i64] }, ptr %t557, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t563, ptr %t564
  %t565 = load { i64, [3 x i64] }, ptr %t557
  %t567 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t565, ptr %t567
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t555, ptr %t567)
  br label %bb72
bb72:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t570)
  store ptr %t572, ptr %l258
  br label %bb73
bb73:
  %t573 = load ptr, ptr %l258, !tbaa !29
  store ptr %t573, ptr %l259, !tbaa !29
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t576 = getelementptr %"compiler/check:Checker", ptr %t574, i32 0, i32 37
  %t577 = load i64, ptr %l34, !tbaa !24
  %t580 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t576, i64 %t577)
  store { i64, ptr } %t580, ptr %l263
  br label %bb74
bb74:
  %t581 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t582 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t581)
  store %"compiler/typed:Block" %t582, ptr %l264
  br label %bb75
bb75:
  %t583 = load %"compiler/typed:Block", ptr %l264
  %t584 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t583, ptr %t584
  %t586 = load ptr, ptr %l259, !tbaa !29
  %t587 = getelementptr %"compiler/typed:Body", ptr %t586, i32 0, i32 11
  store ptr %t584, ptr %t587, !tbaa !29
  %t588 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t588)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb77:
  %t590 = load i64, ptr %l32, !tbaa !24
  %t592 = icmp sge i64 %t590, 0
  br i1 %t592, label %bb78, label %bb79
bb78:
  %t594 = load ptr, ptr %l0, !tbaa !29
  store ptr %t594, ptr %l269, !tbaa !29
  %t595 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t595, ptr %l270
  %t596 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t596, ptr %l271
  %t597 = load i64, ptr %l32, !tbaa !24
  store i64 %t597, ptr %l272, !tbaa !24
  %t598 = load ptr, ptr %l22, !tbaa !29
  store ptr %t598, ptr %l274, !tbaa !29
  %t600 = icmp sge i64 0, 0
  br i1 %t600, label %bb80, label %bb81
bb79:
  %t602 = getelementptr %"compiler/generic:AnySlot", ptr %l7, i32 0, i32 3
  %t603 = load i64, ptr %t602, !tbaa !24
  %t605 = icmp sge i64 %t603, 0
  br i1 %t605, label %bb89, label %bb90
bb80:
  %t607 = icmp sle i64 0, 1152921504606846975
  br i1 %t607, label %bb82, label %bb83
bb81:
  call void @__olang_check_failed(ptr @olang_loc_3c4a57751e7c3c44_a964a095ba0d8e8)
  unreachable
bb82:
  %t609 = mul i64 0, 8
  %t610 = insertvalue { i64, ptr } undef, i64 0, 0
  %t611 = insertvalue { i64, ptr } %t610, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t611, ptr %l277, !tbaa !27
  %t612 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t612, ptr %l278, !tbaa !27
  %t613 = icmp sge i64 0, 0
  br i1 %t613, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_3c4a57751e7c3c44_a964a095ba0d8e8)
  unreachable
bb84:
  %t615 = icmp sle i64 0, 2305843009213693951
  br i1 %t615, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_f96b0b1da9e56a51_6d335a1b9c4b88d5)
  unreachable
bb86:
  %t617 = mul i64 0, 4
  %t618 = insertvalue { i64, ptr } undef, i64 0, 0
  %t619 = insertvalue { i64, ptr } %t618, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t620 = load ptr, ptr %l269, !tbaa !29
  %t621 = load %"compiler/source:Span", ptr %l270
  %t622 = load %"compiler/source:Span", ptr %l271
  %t623 = load i64, ptr %l272, !tbaa !24
  %t624 = load ptr, ptr %l274, !tbaa !29
  %t625 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t626 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t628 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t620, %"compiler/source:Span" %t621, %"compiler/source:Span" %t622, i64 %t623, ptr %t624, { i64, ptr } %t625, { i64, ptr } %t626, { i64, ptr } %t619)
  store ptr %t628, ptr %l282
  br label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_f96b0b1da9e56a51_6d335a1b9c4b88d5)
  unreachable
bb88:
  %t629 = load ptr, ptr %l282, !tbaa !29
  store ptr %t629, ptr %l31, !tbaa !29
  br label %bb139
bb89:
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t633 = getelementptr %"compiler/check:Checker", ptr %t631, i32 0, i32 156
  store ptr %t633, ptr %l288, !tbaa !29
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t636 = getelementptr %"compiler/check:Checker", ptr %t634, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !29
  %t638 = load ptr, ptr %l4, !tbaa !29
  %t640 = getelementptr %"compiler/generic:AnyTable", ptr %t638, i32 0, i32 1
  %t641 = load i32, ptr %t640, !tbaa !23
  %t642 = load i64, ptr %l6, !tbaa !24
  %t646 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %t637, i32 %t641, i64 %t642)
  store i64 %t646, ptr %l294
  br label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s15
  %t647 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t649 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t647, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t649, ptr %l339
  br label %bb115
bb91:
  %t650 = load ptr, ptr %l288, !tbaa !29
  %t651 = load i64, ptr %l294, !tbaa !24
  %t652 = call { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %t650, i64 %t651)
  %t653 = extractvalue { i32, { i64, [3 x i64] } } %t652, 1
  %t654 = extractvalue { i32, { i64, [3 x i64] } } %t652, 0
  store i32 %t654, ptr %l296
  %t655 = icmp ne i32 %t654, 0
  br i1 %t655, label %bb93, label %ok.656, !prof !99
ok.656:
  store { i64, [3 x i64] } %t653, ptr %l295
  br label %bb92
bb92:
  %t657 = load { i64, [3 x i64] }, ptr %l295
  store { i64, [3 x i64] } %t657, ptr %l286
  br label %bb95
bb93:
  br label %bb94
bb94:
  store { i64, [3 x i64] } zeroinitializer, ptr %t658
  %t659 = getelementptr { i64, [3 x i64] }, ptr %t658, i32 0, i32 0
  store i64 0, ptr %t659
  %t660 = load { i64, [3 x i64] }, ptr %t658
  store { i64, [3 x i64] } %t660, ptr %l286
  br label %bb95
bb95:
  %t662 = load { i64, [3 x i64] }, ptr %l286
  store { i64, [3 x i64] } %t662, ptr %l35
  %t663 = load { i64, [3 x i64] }, ptr %l35
  %t665 = extractvalue { i64, [3 x i64] } %t663, 0
  %t666 = icmp eq i64 %t665, 0
  %t668 = xor i1 %t666, true
  br i1 %t668, label %bb96, label %bb97
bb96:
  store %olang.scope zeroinitializer, ptr %s12
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t672 = getelementptr %"compiler/check:Checker", ptr %t670, i32 0, i32 1
  %t673 = load ptr, ptr %t672, !tbaa !29
  %t675 = getelementptr %"compiler/generic:Program", ptr %t673, i32 0, i32 0
  %t676 = load ptr, ptr %t675, !tbaa !29
  %t678 = getelementptr %"compiler/load:Loader", ptr %t676, i32 0, i32 4
  %t679 = load ptr, ptr %t678, !tbaa !29
  store ptr %t679, ptr %l304, !tbaa !29
  %t680 = load { i64, [3 x i64] }, ptr %l35
  store { i64, [3 x i64] } %t680, ptr %l305
  %t681 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t681, ptr %l306, !tbaa !27
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t683 = load ptr, ptr %l4, !tbaa !29
  %t685 = getelementptr %"compiler/generic:AnyTable", ptr %t683, i32 0, i32 1
  %t686 = load i32, ptr %t685, !tbaa !23
  %t689 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t682, i32 %t686)
  store { i64, ptr } %t689, ptr %l310
  br label %bb98
bb97:
  br label %bb101
bb98:
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t691 = load i32, ptr %l20, !tbaa !23
  %t694 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t690, i32 %t691)
  store { i64, ptr } %t694, ptr %l313
  br label %bb99
bb99:
  %t695 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t696 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t697 = load { i64, ptr }, ptr %l306, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t697, 1
  %t699 = extractvalue { i64, ptr } %t697, 0
  %t700 = add i64 %t696, %t699
  %t701 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t702 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t703 = add i64 %t700, %t702
  %t704 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t705 = extractvalue { i64, ptr } %t704, 1
  %t706 = extractvalue { i64, ptr } %t704, 0
  %t707 = add i64 %t703, %t706
  %t708 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t709 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t710 = add i64 %t707, %t709
  %t711 = load { i64, ptr }, ptr %l313, !tbaa !27
  %t712 = extractvalue { i64, ptr } %t711, 1
  %t713 = extractvalue { i64, ptr } %t711, 0
  %t714 = add i64 %t710, %t713
  %t715 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t716 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t717 = add i64 %t714, %t716
  %t718 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t717)
  call void @olang_textcopy(ptr %t718, ptr %t695, i64 %t696)
  %t719 = getelementptr i8, ptr %t718, i64 %t696
  call void @olang_textcopy(ptr %t719, ptr %t698, i64 %t699)
  %t720 = getelementptr i8, ptr %t719, i64 %t699
  call void @olang_textcopy(ptr %t720, ptr %t701, i64 %t702)
  %t721 = getelementptr i8, ptr %t720, i64 %t702
  call void @olang_textcopy(ptr %t721, ptr %t705, i64 %t706)
  %t722 = getelementptr i8, ptr %t721, i64 %t706
  call void @olang_textcopy(ptr %t722, ptr %t708, i64 %t709)
  %t723 = getelementptr i8, ptr %t722, i64 %t709
  call void @olang_textcopy(ptr %t723, ptr %t712, i64 %t713)
  %t724 = getelementptr i8, ptr %t723, i64 %t713
  call void @olang_textcopy(ptr %t724, ptr %t715, i64 %t716)
  %t725 = insertvalue { i64, ptr } undef, i64 %t717, 0
  %t726 = insertvalue { i64, ptr } %t725, ptr %t718, 1
  %t728 = extractvalue { i64, ptr } %t726, 0
  %t729 = extractvalue { i64, ptr } %t726, 1
  %t730 = mul i64 %t728, 1
  %t731 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t730)
  call void @llvm.memcpy.p0.p0.i64(ptr %t731, ptr %t729, i64 %t730, i1 false)
  %t732 = insertvalue { i64, ptr } undef, i64 %t728, 0
  %t733 = insertvalue { i64, ptr } %t732, ptr %t731, 1
  %t734 = load ptr, ptr %l304, !tbaa !29
  %t735 = load { i64, [3 x i64] }, ptr %l305
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %s12, ptr %t734, { i64, [3 x i64] } %t735, { i64, ptr } %t733)
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s12)
  br label %bb101
bb101:
  %t737 = load ptr, ptr %l0, !tbaa !29
  store ptr %t737, ptr %l316, !tbaa !29
  %t738 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t738, ptr %l317
  %t739 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t739, ptr %l318
  %t740 = getelementptr %"compiler/generic:AnySlot", ptr %l7, i32 0, i32 3
  %t741 = load i64, ptr %t740, !tbaa !24
  store i64 %t741, ptr %l319, !tbaa !24
  %t742 = load ptr, ptr %l22, !tbaa !29
  store ptr %t742, ptr %l321, !tbaa !29
  %t744 = icmp sge i64 0, 0
  br i1 %t744, label %bb102, label %bb103
bb102:
  %t746 = icmp sle i64 0, 1152921504606846975
  br i1 %t746, label %bb104, label %bb105
bb103:
  call void @__olang_check_failed(ptr @olang_loc_f31fa7029241fd32_aa76ba41726a43b6)
  unreachable
bb104:
  %t748 = mul i64 0, 8
  %t749 = insertvalue { i64, ptr } undef, i64 0, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t750, ptr %l324, !tbaa !27
  %t751 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t751, ptr %l325, !tbaa !27
  %t752 = icmp sge i64 0, 0
  br i1 %t752, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_f31fa7029241fd32_aa76ba41726a43b6)
  unreachable
bb106:
  %t754 = icmp sle i64 0, 2305843009213693951
  br i1 %t754, label %bb108, label %bb109
bb107:
  call void @__olang_check_failed(ptr @olang_loc_f96b0b1da9e56a51_6d335a1b9c4b88d5)
  unreachable
bb108:
  %t756 = mul i64 0, 4
  %t757 = insertvalue { i64, ptr } undef, i64 0, 0
  %t758 = insertvalue { i64, ptr } %t757, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t759 = load ptr, ptr %l316, !tbaa !29
  %t760 = load %"compiler/source:Span", ptr %l317
  %t761 = load %"compiler/source:Span", ptr %l318
  %t762 = load i64, ptr %l319, !tbaa !24
  %t763 = load ptr, ptr %l321, !tbaa !29
  %t764 = load { i64, ptr }, ptr %l324, !tbaa !27
  %t765 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t767 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t759, %"compiler/source:Span" %t760, %"compiler/source:Span" %t761, i64 %t762, ptr %t763, { i64, ptr } %t764, { i64, ptr } %t765, { i64, ptr } %t758)
  store ptr %t767, ptr %l329
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_f96b0b1da9e56a51_6d335a1b9c4b88d5)
  unreachable
bb110:
  %t768 = load ptr, ptr %l329, !tbaa !29
  store ptr %t768, ptr %l31, !tbaa !29
  %t770 = load { i64, [3 x i64] }, ptr %l35
  %t772 = extractvalue { i64, [3 x i64] } %t770, 0
  %t773 = icmp eq i64 %t772, 0
  %t775 = xor i1 %t773, true
  br i1 %t775, label %bb111, label %bb112
bb111:
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t779 = getelementptr %"compiler/check:Checker", ptr %t777, i32 0, i32 1
  %t780 = load ptr, ptr %t779, !tbaa !29
  %t782 = getelementptr %"compiler/generic:Program", ptr %t780, i32 0, i32 0
  %t783 = load ptr, ptr %t782, !tbaa !29
  %t785 = getelementptr %"compiler/load:Loader", ptr %t783, i32 0, i32 4
  %t786 = load ptr, ptr %t785, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %t786)
  br label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb114
bb114:
  br label %bb138
bb115:
  %t788 = load i1, ptr %l339, !tbaa !21
  br i1 %t788, label %bb116, label %bb117
bb116:
  %t789 = load ptr, ptr %l0, !tbaa !29
  store ptr %t789, ptr %l340, !tbaa !29
  %t790 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t790, ptr %l341
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t793 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t791)
  store i32 %t793, ptr %l343
  br label %bb118
bb117:
  store %olang.scope zeroinitializer, ptr %s17
  %t794 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t796 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s17, { i64, ptr } %t794, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t796, ptr %l357
  br label %bb122
bb118:
  %t797 = load i32, ptr %l20, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t798
  %t799 = getelementptr { i64, [3 x i64] }, ptr %t798, i32 0, i32 0
  store i64 4, ptr %t799
  %t801 = insertvalue { i32, i32 } undef, i32 1, 0
  %t803 = insertvalue { i32, i32 } %t801, i32 %t797, 1
  %t804 = getelementptr { i64, [3 x i64] }, ptr %t798, i32 0, i32 1
  store { i32, i32 } %t803, ptr %t804
  %t805 = load { i64, [3 x i64] }, ptr %t798
  %t807 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t805, ptr %t807
  store ptr %t807, ptr %l347, !tbaa !29
  %t808 = load ptr, ptr %l0, !tbaa !29
  store ptr %t808, ptr %l348, !tbaa !29
  %t809 = load ptr, ptr %l0, !tbaa !29
  %t810 = load ptr, ptr %l22, !tbaa !29
  %t811 = load %"compiler/source:Span", ptr %l11
  %t815 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t809, ptr %t810, %"compiler/source:Span" %t811)
  store ptr %t815, ptr %l352
  br label %bb119
bb119:
  %t816 = load ptr, ptr %l348, !tbaa !29
  %t817 = load ptr, ptr %l352, !tbaa !29
  %t818 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v0, ptr %v0, ptr %t816, ptr %t817)
  store { i64, ptr } %t818, ptr %l353
  br label %bb120
bb120:
  %t819 = load ptr, ptr %l340, !tbaa !29
  %t820 = load %"compiler/source:Span", ptr %l341
  %t821 = load i32, ptr %l343, !tbaa !23
  %t822 = load ptr, ptr %l347, !tbaa !29
  %t823 = load { i64, ptr }, ptr %l353, !tbaa !27
  %t824 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t819, %"compiler/source:Span" %t820, i32 %t821, ptr %t822, { i64, ptr } %t823)
  store ptr %t824, ptr %l354
  br label %bb121
bb121:
  %t825 = load ptr, ptr %l354, !tbaa !29
  store ptr %t825, ptr %l31, !tbaa !29
  br label %bb137
bb122:
  %t827 = load i1, ptr %l357, !tbaa !21
  br i1 %t827, label %bb123, label %bb124
bb123:
  %t828 = load ptr, ptr %l0, !tbaa !29
  store ptr %t828, ptr %l358, !tbaa !29
  %t829 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t829, ptr %l359
  %t830 = load ptr, ptr %l0, !tbaa !29
  %t832 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t830)
  store i32 %t832, ptr %l361
  br label %bb125
bb124:
  store %olang.scope zeroinitializer, ptr %s19
  %t833 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t835 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s19, { i64, ptr } %t833, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t835, ptr %l367
  br label %bb127
bb125:
  %t836 = load ptr, ptr %l22, !tbaa !29
  %t837 = load ptr, ptr %l358, !tbaa !29
  %t838 = load %"compiler/source:Span", ptr %l359
  %t839 = load i32, ptr %l361, !tbaa !23
  %t842 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t837, %"compiler/source:Span" %t838, i32 %t839, i32 22, ptr %t836, ptr null)
  store ptr %t842, ptr %l364
  br label %bb126
bb126:
  %t843 = load ptr, ptr %l364, !tbaa !29
  store ptr %t843, ptr %l31, !tbaa !29
  br label %bb136
bb127:
  %t845 = load i1, ptr %l367, !tbaa !21
  br i1 %t845, label %bb128, label %bb129
bb128:
  %t846 = load ptr, ptr %l0, !tbaa !29
  store ptr %t846, ptr %l368, !tbaa !29
  %t847 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t847, ptr %l369
  %t848 = load ptr, ptr %l0, !tbaa !29
  %t850 = getelementptr %"compiler/check:Checker", ptr %t848, i32 0, i32 1
  %t851 = load ptr, ptr %t850, !tbaa !29
  %t853 = getelementptr %"compiler/generic:Program", ptr %t851, i32 0, i32 2
  %t854 = load i32, ptr %l8, !tbaa !23
  %t857 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t853, i32 %t854)
  store i32 %t857, ptr %l374
  br label %bb130
bb129:
  store %olang.scope zeroinitializer, ptr %s21
  %t858 = load ptr, ptr %l0, !tbaa !29
  %t859 = load %"compiler/source:Span", ptr %l11
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s21, ptr %t858, %"compiler/source:Span" %t859, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb133
bb130:
  store i32 21, ptr %l375
  %t862 = load ptr, ptr %l0, !tbaa !29
  %t863 = load ptr, ptr %l22, !tbaa !29
  %t864 = load %"compiler/source:Span", ptr %l11
  %t868 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t862, ptr %t863, %"compiler/source:Span" %t864)
  store ptr %t868, ptr %l379
  br label %bb131
bb131:
  %t869 = load ptr, ptr %l368, !tbaa !29
  %t870 = load %"compiler/source:Span", ptr %l369
  %t871 = load i32, ptr %l374, !tbaa !23
  %t872 = load i32, ptr %l375, !range !{i32 0, i32 52}
  %t873 = load ptr, ptr %l379, !tbaa !29
  %t874 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t869, %"compiler/source:Span" %t870, i32 %t871, i32 %t872, ptr %t873, ptr null)
  store ptr %t874, ptr %l380
  br label %bb132
bb132:
  %t875 = load ptr, ptr %l380, !tbaa !29
  store ptr %t875, ptr %l31, !tbaa !29
  br label %bb135
bb133:
  %t877 = load ptr, ptr %l0, !tbaa !29
  %t878 = load %"compiler/source:Span", ptr %l11
  %t881 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v0, ptr %t877, %"compiler/source:Span" %t878)
  store ptr %t881, ptr %l386
  br label %bb134
bb134:
  %t882 = load ptr, ptr %l386, !tbaa !29
  store ptr %t882, ptr %l31, !tbaa !29
  call void @__olang_scope_close(ptr %s21)
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s19)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s17)
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s15)
  br label %bb138
bb138:
  br label %bb139
bb139:
  %t884 = load ptr, ptr %l10, !tbaa !29
  store ptr %t884, ptr %l388, !tbaa !29
  %t885 = load ptr, ptr %l388, !tbaa !29
  %t886 = getelementptr %"compiler/check:frame", ptr %t885, i32 0, i32 15
  %t887 = load i64, ptr %t886, !tbaa !24
  %t889 = sub i64 %t887, 1
  %t891 = load ptr, ptr %l388, !tbaa !29
  %t892 = getelementptr %"compiler/check:frame", ptr %t891, i32 0, i32 15
  store i64 %t889, ptr %t892, !tbaa !24
  %t893 = load ptr, ptr %l31, !tbaa !29
  %t895 = icmp eq ptr %t893, null
  br i1 %t895, label %bb140, label %bb141
bb140:
  call void @__olang_check_failed(ptr @olang_loc_e17fa1ab378faab9_6d6fcc9fefe16fc5)
  unreachable
bb141:
  br label %bb142
bb142:
  %t897 = load ptr, ptr %l31, !tbaa !29
  store ptr %t897, ptr %l36, !tbaa !29
  %t899 = load ptr, ptr %l0, !tbaa !29
  %t901 = getelementptr %"compiler/check:Checker", ptr %t899, i32 0, i32 1
  %t902 = load ptr, ptr %t901, !tbaa !29
  %t904 = getelementptr %"compiler/generic:Program", ptr %t902, i32 0, i32 2
  store ptr %t904, ptr %l396, !tbaa !29
  %t905 = load ptr, ptr %l0, !tbaa !29
  %t907 = getelementptr %"compiler/check:Checker", ptr %t905, i32 0, i32 1
  %t908 = load ptr, ptr %t907, !tbaa !29
  %t910 = getelementptr %"compiler/generic:Program", ptr %t908, i32 0, i32 2
  %t911 = load i32, ptr %l8, !tbaa !23
  %t914 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t910, i32 %t911)
  store i32 %t914, ptr %l401
  br label %bb143
bb143:
  %t915 = load ptr, ptr %l396, !tbaa !29
  %t916 = load i32, ptr %l401, !tbaa !23
  %t917 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t915, i32 %t916)
  store { i64, ptr } %t917, ptr %l402
  br label %bb144
bb144:
  %t918 = load { i64, ptr }, ptr %l402, !tbaa !27
  %t919 = extractvalue { i64, ptr } %t918, 0
  %t921 = icmp sgt i64 %t919, 0
  br i1 %t921, label %bb145, label %bb146
bb145:
  %t923 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t923, ptr %l405
  %t924 = load ptr, ptr %l36, !tbaa !29
  %t927 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t924)
  store i32 %t927, ptr %l408
  br label %bb147
bb146:
  br label %bb153
bb147:
  %t928 = load ptr, ptr %l36, !tbaa !29
  store ptr %t928, ptr %l410, !tbaa !29
  %t930 = icmp sge i64 0, 0
  br i1 %t930, label %bb148, label %bb149
bb148:
  %t932 = icmp sle i64 0, 1152921504606846975
  br i1 %t932, label %bb150, label %bb151
bb149:
  call void @__olang_check_failed(ptr @olang_loc_cd555273ac5ad6b8_af09fb78e7087b4)
  unreachable
bb150:
  %t934 = mul i64 0, 8
  %t935 = insertvalue { i64, ptr } undef, i64 0, 0
  %t936 = insertvalue { i64, ptr } %t935, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t937 = load ptr, ptr %l410, !tbaa !29
  %t939 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t937, { i64, ptr } %t936, i1 false, i1 false, i1 true)
  store %"compiler/typed:Try" %t939, ptr %l414
  br label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_cd555273ac5ad6b8_af09fb78e7087b4)
  unreachable
bb152:
  %t940 = load %"compiler/typed:Try", ptr %l414
  %t941 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Try" %t940, ptr %t941
  store { i64, [5 x i64] } zeroinitializer, ptr %t942
  %t943 = getelementptr { i64, [5 x i64] }, ptr %t942, i32 0, i32 0
  store i64 14, ptr %t943
  %t944 = load %"compiler/source:Span", ptr %l405
  %t945 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t944, 0
  %t946 = load i32, ptr %l408, !tbaa !23
  %t947 = insertvalue { %"compiler/source:Span", i32, ptr } %t945, i32 %t946, 1
  %t949 = insertvalue { %"compiler/source:Span", i32, ptr } %t947, ptr %t941, 2
  %t950 = getelementptr { i64, [5 x i64] }, ptr %t942, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t949, ptr %t950
  %t951 = load { i64, [5 x i64] }, ptr %t942
  %t953 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t951, ptr %t953
  store ptr %t953, ptr %l36, !tbaa !29
  br label %bb153
bb153:
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t957 = getelementptr %"compiler/check:Checker", ptr %t955, i32 0, i32 37
  %t959 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t957)
  store i64 %t959, ptr %l420
  br label %bb154
bb154:
  %t960 = load i64, ptr %l420, !tbaa !24
  store i64 %t960, ptr %l37, !tbaa !24
  %t961 = load ptr, ptr %l0, !tbaa !29
  %t963 = getelementptr %"compiler/check:Checker", ptr %t961, i32 0, i32 1
  %t964 = load ptr, ptr %t963, !tbaa !29
  %t966 = getelementptr %"compiler/generic:Program", ptr %t964, i32 0, i32 2
  %t967 = load i32, ptr %l8, !tbaa !23
  %t970 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t966, i32 %t967)
  store i32 %t970, ptr %l425
  br label %bb155
bb155:
  %t971 = load i32, ptr %l425, !tbaa !23
  store i32 %t971, ptr %l38, !tbaa !23
  %t972 = load i32, ptr %l38, !tbaa !23
  %t973 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t976 = icmp eq i32 %t972, %t973
  br i1 %t976, label %bb156, label %bb157
bb156:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t980 = getelementptr %"compiler/check:Checker", ptr %t978, i32 0, i32 37
  %t981 = load %"compiler/source:Span", ptr %l11
  %t982 = load ptr, ptr %l36, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t983
  %t984 = getelementptr { i64, [3 x i64] }, ptr %t983, i32 0, i32 0
  store i64 2, ptr %t984
  %t986 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t981, 0
  %t988 = insertvalue { %"compiler/source:Span", ptr } %t986, ptr %t982, 1
  %t989 = getelementptr { i64, [3 x i64] }, ptr %t983, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t988, ptr %t989
  %t990 = load { i64, [3 x i64] }, ptr %t983
  %t992 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t990, ptr %t992
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t980, ptr %t992)
  br label %bb158
bb157:
  %t995 = load i32, ptr %l38, !tbaa !23
  %t996 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t999 = icmp eq i32 %t995, %t996
  br i1 %t999, label %bb159, label %bb160
bb158:
  br label %bb166
bb159:
  %t1001 = load ptr, ptr %l0, !tbaa !29
  %t1003 = getelementptr %"compiler/check:Checker", ptr %t1001, i32 0, i32 37
  %t1004 = load %"compiler/source:Span", ptr %l11
  %t1005 = load ptr, ptr %l36, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t1006
  %t1007 = getelementptr { i64, [3 x i64] }, ptr %t1006, i32 0, i32 0
  store i64 2, ptr %t1007
  %t1009 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1004, 0
  %t1011 = insertvalue { %"compiler/source:Span", ptr } %t1009, ptr %t1005, 1
  %t1012 = getelementptr { i64, [3 x i64] }, ptr %t1006, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1011, ptr %t1012
  %t1013 = load { i64, [3 x i64] }, ptr %t1006
  %t1015 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1013, ptr %t1015
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1003, ptr %t1015)
  br label %bb161
bb160:
  %t1018 = load ptr, ptr %l0, !tbaa !29
  %t1020 = getelementptr %"compiler/check:Checker", ptr %t1018, i32 0, i32 37
  store ptr %t1020, ptr %l451, !tbaa !29
  %t1021 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t1021, ptr %l452
  %t1022 = load ptr, ptr %l0, !tbaa !29
  %t1023 = load ptr, ptr %l36, !tbaa !29
  %t1024 = load i32, ptr %l38, !tbaa !23
  %t1025 = load %"compiler/source:Span", ptr %l11
  %t1030 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t1022, ptr %t1023, i32 %t1024, %"compiler/source:Span" %t1025)
  store ptr %t1030, ptr %l457
  br label %bb163
bb161:
  %t1031 = load ptr, ptr %l0, !tbaa !29
  %t1033 = getelementptr %"compiler/check:Checker", ptr %t1031, i32 0, i32 37
  %t1034 = load %"compiler/source:Span", ptr %l11
  store { i64, [3 x i64] } zeroinitializer, ptr %t1035
  %t1036 = getelementptr { i64, [3 x i64] }, ptr %t1035, i32 0, i32 0
  store i64 9, ptr %t1036
  %t1038 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1034, 0
  %t1040 = insertvalue { %"compiler/source:Span", i32, ptr } %t1038, i32 0, 1
  %t1041 = insertvalue { %"compiler/source:Span", i32, ptr } %t1040, ptr null, 2
  %t1042 = getelementptr { i64, [3 x i64] }, ptr %t1035, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1041, ptr %t1042
  %t1043 = load { i64, [3 x i64] }, ptr %t1035
  %t1045 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1043, ptr %t1045
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1033, ptr %t1045)
  br label %bb162
bb162:
  br label %bb165
bb163:
  %t1048 = load ptr, ptr %l457, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t1049
  %t1050 = getelementptr { i64, [3 x i64] }, ptr %t1049, i32 0, i32 0
  store i64 6, ptr %t1050
  %t1051 = load %"compiler/source:Span", ptr %l452
  %t1052 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1051, 0
  %t1054 = insertvalue { %"compiler/source:Span", ptr } %t1052, ptr %t1048, 1
  %t1055 = getelementptr { i64, [3 x i64] }, ptr %t1049, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1054, ptr %t1055
  %t1056 = load { i64, [3 x i64] }, ptr %t1049
  %t1058 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1056, ptr %t1058
  %t1059 = load ptr, ptr %l451, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1059, ptr %t1058)
  br label %bb164
bb164:
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t1061 = load ptr, ptr %l0, !tbaa !29
  %t1063 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1061)
  store ptr %t1063, ptr %l462
  br label %bb167
bb167:
  %t1064 = load ptr, ptr %l462, !tbaa !29
  store ptr %t1064, ptr %l463, !tbaa !29
  %t1065 = load ptr, ptr %l0, !tbaa !29
  %t1067 = getelementptr %"compiler/check:Checker", ptr %t1065, i32 0, i32 37
  %t1068 = load i64, ptr %l37, !tbaa !24
  %t1071 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1067, i64 %t1068)
  store { i64, ptr } %t1071, ptr %l467
  br label %bb168
bb168:
  %t1072 = load { i64, ptr }, ptr %l467, !tbaa !27
  %t1073 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t1072)
  store %"compiler/typed:Block" %t1073, ptr %l468
  br label %bb169
bb169:
  %t1074 = load %"compiler/typed:Block", ptr %l468
  %t1075 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t1074, ptr %t1075
  %t1077 = load ptr, ptr %l463, !tbaa !29
  %t1078 = getelementptr %"compiler/typed:Body", ptr %t1077, i32 0, i32 11
  store ptr %t1075, ptr %t1078, !tbaa !29
  %t1079 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t1079)
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprOpen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, i64, i64 }
  %l12 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca { i64, i64, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 117
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp ne i64 %t4, 1
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l12, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 37
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l15
  br label %bb4
bb4:
  %t14 = load i64, ptr %l15, !tbaa !24
  %t15 = load ptr, ptr %l12, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 121
  store i64 %t14, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t22 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t17, i32 9, %"compiler/source:Span" %a1)
  store { i64, i64, i64 } %t22, ptr %l19
  br label %bb5
bb5:
  %t23 = load { i64, i64, i64 }, ptr %l19
  store { i64, i64, i64 } %t23, ptr %l2
  %t24 = getelementptr { i64, i64, i64 }, ptr %l2, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t27 = getelementptr { i64, i64, i64 }, ptr %l2, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = getelementptr { i64, i64, i64 }, ptr %l2, i32 0, i32 2
  %t31 = load i64, ptr %t30, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 118
  store i64 %t25, ptr %t43, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 119
  store i64 %t28, ptr %t48, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 120
  store i64 %t31, ptr %t53, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 117
  store i64 2, ptr %t56, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclFact(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l10 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
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
  store ptr %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l7, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t12, ptr %l10
  br label %bb2
bb2:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Func", ptr %t14, i32 0, i32 3
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Sig", ptr %t17, i32 0, i32 4
  %t20 = load i1, ptr %t19, !tbaa !21
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb22
bb6:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t22, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t24, ptr %l15
  br label %bb7
bb7:
  %t25 = load i1, ptr %l15, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Func", ptr %t26, i32 0, i32 7
  %t29 = load i1, ptr %t28, !tbaa !21
  store i1 %t29, ptr %l8, !tbaa !21
  br label %bb22
bb11:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t33, ptr %l19
  br label %bb12
bb12:
  %t34 = load i1, ptr %l19, !tbaa !21
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t38, i64 %t39)
  store i1 %t42, ptr %l23
  br label %bb16
bb16:
  %t43 = load i1, ptr %l23, !tbaa !21
  store i1 %t43, ptr %l8, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Func", ptr %t44, i32 0, i32 3
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Sig", ptr %t47, i32 0, i32 6
  %t50 = load i1, ptr %t49, !tbaa !21
  store i1 %t50, ptr %l8, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bdeebae2e62e4381_d7e2b33750a898f5)
  unreachable
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t52 = load i1, ptr %l8, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaredCtor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i1
  %l13 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i1
  %l48 = alloca i64
  %l51 = alloca ptr
  %l54 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i32
  %l61 = alloca i64
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
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:TypeDecl", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp sgt i64 %t18, 0
  store i1 %t20, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
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
  store ptr %t28, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 5}
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr { i64, [6 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { ptr }, ptr %t39, i32 0, i32 0
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/ast:StructBody", ptr %t43, i32 0, i32 5
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb35
bb18:
  %t52 = load ptr, ptr %l3, !tbaa !29
  store ptr %t52, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb19, label %bb20
bb19:
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 5}
  %t59 = icmp eq i64 %t57, 3
  store i1 %t59, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb21, label %bb22
bb21:
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr { i64, [6 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { ptr, ptr }, ptr %t63, i32 0, i32 1
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb30
bb23:
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb26
bb25:
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Func", ptr %t71, i32 0, i32 5
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t78 = icmp sgt i64 %t76, 0
  store i1 %t78, ptr %l38, !tbaa !21
  br label %bb26
bb26:
  %t80 = load i1, ptr %l38, !tbaa !21
  br i1 %t80, label %bb27, label %bb28
bb27:
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
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_f558fce6a2b003e7_933c1b66dd113bdb)
  unreachable
bb35:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load i64, ptr %l1, !tbaa !24
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr %"compiler/ast:TypeDecl", ptr %t86, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t93 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t84, i64 %t85, i32 %t89)
  store i64 %t93, ptr %l48
  br label %bb36
bb36:
  %t94 = load i64, ptr %l48, !tbaa !24
  store i64 %t94, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = icmp slt i64 %t95, 0
  br i1 %t97, label %bb37, label %bb38
bb37:
  br label %ret
bb38:
  br label %bb39
bb39:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l51, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  store ptr %t105, ptr %l54, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l1, !tbaa !24
  %t111 = load i64, ptr %l6, !tbaa !24
  %t115 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t109, i64 %t110, i64 %t111)
  store i32 %t115, ptr %l59
  br label %bb40
bb40:
  %t116 = load ptr, ptr %l54, !tbaa !29
  %t117 = load i32, ptr %l59, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t116, i32 %t117, i32 0)
  store i32 %t118, ptr %l60
  br label %bb41
bb41:
  %t119 = load ptr, ptr %l51, !tbaa !29
  %t120 = load i32, ptr %l60, !tbaa !23
  %t121 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t119, i32 %t120)
  store i64 %t121, ptr %l61
  br label %bb42
bb42:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/names:Entry"
  %l11 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca %"compiler/names:Entry"
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/names:Resolver", ptr %t7, i32 0, i32 1
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t9, i64 %a1)
  store ptr %t13, ptr %l11
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t16 = getelementptr %"compiler/names:Table", ptr %t14, i32 0, i32 0
  store ptr %t16, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l4, !tbaa !24
  store i64 %t18, ptr %l14, !tbaa !24
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l16
  br label %bb3
bb3:
  %t22 = load i64, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %bb12
bb5:
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store %"compiler/names:Entry" %t32, ptr %l21
  br label %bb7
bb7:
  %t33 = load %"compiler/names:Entry", ptr %l21
  store %"compiler/names:Entry" %t33, ptr %l5
  %t34 = getelementptr %"compiler/names:Entry", ptr %l5, i32 0, i32 0
  %t35 = load i32, ptr %t34, !tbaa !23
  %t39 = icmp eq i32 %t35, %a2
  br i1 %t39, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb2
bb12:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrRecode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l9 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l15 = alloca ptr
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load i32, ptr %l2, !tbaa !23
  %t6 = load i32, ptr %l5, !tbaa !23
  %t8 = icmp eq i32 %t6, %t5
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store ptr %a0, ptr %l9, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t13)
  store %"compiler/source:Span" %t15, ptr %l11
  br label %bb5
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load ptr, ptr %l9, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l11
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t18, %"compiler/source:Span" %t19, i32 %t16, i32 20, ptr %t17, ptr null)
  store ptr %t23, ptr %l15
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l15, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca i1
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l16 = alloca i32
  %l19 = alloca i1
  %l22 = alloca i1
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
  %t3 = call ptr @compiler_2fcheck_2eexprPath(ptr %v1, ptr %s0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t15)
  store ptr %t17, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb4:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t20 = getelementptr %"compiler/check:frame", ptr %t18, i32 0, i32 4
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t25 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %s0, ptr %t22, ptr %t20, ptr %t21)
  store i32 %t25, ptr %l16
  br label %bb5
bb5:
  %t26 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t27 = load i32, ptr %l16, !tbaa !23
  %t29 = icmp eq i32 %t27, %t26
  store i1 %t29, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l8, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t36 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  store i1 %t36, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb9:
  %t37 = load i1, ptr %l22, !tbaa !21
  store i1 %t37, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load i1, ptr %l19, !tbaa !21
  store i1 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsDrop(ptr %v0, ptr %a0, %"compiler/check:factsMark" %a1) #0 {
entry:
  %l1 = alloca %"compiler/check:factsMark"
  %l2 = alloca ptr
  %l4 = alloca ptr
  store %"compiler/check:factsMark" %a1, ptr %l1
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
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 50
  %t8 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eTru_Hf06d897493074497da237c73fecd44cc(ptr %v0, ptr %t7, i64 %t9)
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 46
  %t15 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eTrunc_H529a97138f08f267b035acfeb838c9e0(ptr %v0, ptr %t14, i64 %t16)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 59
  %t22 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eTrun_Ha6093229c720e1f7d9f4f9cafee6beaf(ptr %v0, ptr %t21, i64 %t23)
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i32
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca i32
  %l49 = alloca i1
  %l53 = alloca i1
  %l60 = alloca i32
  %l63 = alloca i1
  %l66 = alloca i32
  %l73 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l86 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca i64
  %l103 = alloca ptr
  %l104 = alloca i64
  %l107 = alloca { i64, [3 x i64] }
  %l110 = alloca { i64, ptr }
  %l112 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i1
  %l123 = alloca i1
  %l126 = alloca i1
  %l127 = alloca i1
  %l132 = alloca i64
  %l139 = alloca i1
  %l149 = alloca i32
  %l154 = alloca i32
  %l157 = alloca i1
  %l161 = alloca ptr
  %l163 = alloca %"compiler/source:Span"
  %l165 = alloca ptr
  %l168 = alloca i1
  %l174 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca ptr
  %l180 = alloca ptr
  %l185 = alloca i32
  %l186 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l193 = alloca i32
  %l194 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l196 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l197 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l201 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l209 = alloca { i64, ptr }
  %l211 = alloca %"compiler/diagmsg:Msg"
  %l212 = alloca i64
  %l216 = alloca i1
  %l219 = alloca i1
  %l222 = alloca i1
  %l225 = alloca i1
  %l230 = alloca i1
  %l235 = alloca i1
  %l241 = alloca i1
  %l243 = alloca %"compiler/source:Span"
  %l244 = alloca ptr
  %l245 = alloca %"compiler/source:Span"
  %l248 = alloca { i64, ptr }
  %l251 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l256 = alloca { i64, ptr }
  %l259 = alloca { i64, ptr }
  %l260 = alloca { i64, ptr }
  %l262 = alloca %"compiler/diagmsg:Msg"
  %l263 = alloca i64
  %l265 = alloca ptr
  %l266 = alloca %"compiler/source:Span"
  %l267 = alloca ptr
  %l268 = alloca ptr
  %l273 = alloca i32
  %l275 = alloca ptr
  %l277 = alloca ptr
  %l282 = alloca i1
  %l283 = alloca i1
  %l287 = alloca i1
  %l292 = alloca i1
  %l293 = alloca i1
  %l296 = alloca ptr
  %l301 = alloca i32
  %l306 = alloca i32
  %l307 = alloca i1
  %l313 = alloca ptr
  %l318 = alloca i32
  %l322 = alloca i1
  %l325 = alloca ptr
  %l330 = alloca i32
  %l335 = alloca i32
  %l336 = alloca i1
  %l338 = alloca ptr
  %l339 = alloca ptr
  %l344 = alloca i32
  %l349 = alloca i32
  %l350 = alloca ptr
  %l358 = alloca ptr
  %l360 = alloca i1
  %l361 = alloca i1
  %l368 = alloca i32
  %l371 = alloca i32
  %l376 = alloca i32
  %l383 = alloca i1
  %l385 = alloca i1
  %l386 = alloca ptr
  %l387 = alloca i32
  %l390 = alloca i32
  %l391 = alloca i1
  %l395 = alloca ptr
  %l396 = alloca ptr
  %l397 = alloca %"compiler/source:Span"
  %l398 = alloca ptr
  %l401 = alloca ptr
  %l402 = alloca i32
  %l407 = alloca i64
  %l408 = alloca i32
  %l409 = alloca ptr
  %l412 = alloca ptr
  %l413 = alloca ptr
  %l414 = alloca %"compiler/source:Span"
  %l415 = alloca ptr
  %l418 = alloca ptr
  %l419 = alloca i32
  %l424 = alloca i64
  %l425 = alloca i32
  %l426 = alloca ptr
  %l429 = alloca i1
  %l432 = alloca ptr
  %l433 = alloca %"compiler/source:Span"
  %l436 = alloca ptr
  %l437 = alloca i32
  %l439 = alloca i32
  %l440 = alloca i1
  %l441 = alloca { i64, ptr }
  %l444 = alloca { i64, ptr }
  %l449 = alloca { i64, ptr }
  %l452 = alloca %"compiler/diagmsg:Msg"
  %l453 = alloca i64
  %l457 = alloca i32
  %l462 = alloca i32
  %l465 = alloca i1
  %l470 = alloca i32
  %l472 = alloca i1
  %l473 = alloca ptr
  %l476 = alloca ptr
  %l479 = alloca i32
  %l480 = alloca i32
  %l485 = alloca i32
  %l486 = alloca i1
  %l487 = alloca ptr
  %l488 = alloca ptr
  %l489 = alloca %"compiler/source:Span"
  %l490 = alloca i32
  %l493 = alloca ptr
  %l498 = alloca i32
  %l499 = alloca i64
  %l500 = alloca ptr
  %l507 = alloca i1
  %l509 = alloca i1
  %l512 = alloca i32
  %l515 = alloca i1
  %l516 = alloca i1
  %l519 = alloca ptr
  %l522 = alloca i32
  %l523 = alloca i32
  %l526 = alloca i1
  %l527 = alloca ptr
  %l532 = alloca i32
  %l535 = alloca ptr
  %l538 = alloca i32
  %l539 = alloca i32
  %l540 = alloca i1
  %l541 = alloca ptr
  %l542 = alloca %"compiler/source:Span"
  %l543 = alloca ptr
  %l544 = alloca ptr
  %l547 = alloca i32
  %l549 = alloca ptr
  %l551 = alloca ptr
  %l556 = alloca ptr
  %l559 = alloca i1
  %l562 = alloca i1
  %l567 = alloca i32
  %l572 = alloca i32
  %l574 = alloca i1
  %l579 = alloca i32
  %l582 = alloca i1
  %l587 = alloca i32
  %l590 = alloca ptr
  %l591 = alloca %"compiler/source:Span"
  %l594 = alloca { i64, ptr }
  %l595 = alloca { i64, ptr }
  %l598 = alloca { i64, ptr }
  %l599 = alloca { i64, ptr }
  %l600 = alloca ptr
  %l605 = alloca i32
  %l606 = alloca { i64, ptr }
  %l608 = alloca %"compiler/diagmsg:Msg"
  %l609 = alloca i64
  %l613 = alloca i1
  %l616 = alloca i1
  %l617 = alloca ptr
  %l618 = alloca i32
  %l619 = alloca i32
  %l621 = alloca i1
  %l622 = alloca i1
  %l627 = alloca i64
  %l629 = alloca i64
  %l634 = alloca i64
  %l639 = alloca ptr
  %l641 = alloca ptr
  %l643 = alloca i64
  %l645 = alloca ptr
  %l652 = alloca %"compiler/check:effectPlace"
  %l657 = alloca ptr
  %l660 = alloca i1
  %l664 = alloca i1
  %l672 = alloca ptr
  %l684 = alloca i1
  %l688 = alloca ptr
  %l693 = alloca i1
  %l694 = alloca ptr
  %l695 = alloca %"compiler/source:Span"
  %l696 = alloca ptr
  %l699 = alloca i32
  %l700 = alloca { i64, ptr }
  %l701 = alloca { i64, ptr }
  %l704 = alloca { i64, ptr }
  %l706 = alloca %"compiler/diagmsg:Msg"
  %l707 = alloca i64
  %l711 = alloca ptr
  %l714 = alloca i1
  %l717 = alloca ptr
  %l718 = alloca %"compiler/source:Span"
  %l721 = alloca { i64, ptr }
  %l722 = alloca { i64, ptr }
  %l723 = alloca ptr
  %l728 = alloca i32
  %l729 = alloca { i64, ptr }
  %l731 = alloca %"compiler/diagmsg:Msg"
  %l732 = alloca i64
  %l736 = alloca ptr
  %l737 = alloca %"compiler/source:Span"
  %l740 = alloca { i64, ptr }
  %l742 = alloca %"compiler/diagmsg:Msg"
  %l743 = alloca i64
  %l747 = alloca i1
  %l748 = alloca i1
  %l751 = alloca i1
  %l752 = alloca i1
  %l756 = alloca i1
  %l764 = alloca i1
  %l769 = alloca ptr
  %l770 = alloca ptr
  %l771 = alloca %"compiler/source:Span"
  %l774 = alloca { i64, ptr }
  %l775 = alloca { i64, ptr }
  %l778 = alloca { i64, ptr }
  %l779 = alloca { i64, ptr }
  %l782 = alloca { i64, ptr }
  %l784 = alloca %"compiler/diagmsg:Msg"
  %l785 = alloca i64
  %l786 = alloca ptr
  %l787 = alloca i64
  %l792 = alloca i64
  %l797 = alloca i1
  %l802 = alloca ptr
  %l806 = alloca i1
  %l811 = alloca i1
  %l812 = alloca i1
  %l815 = alloca ptr
  %l818 = alloca i32
  %l820 = alloca i1
  %l826 = alloca i32
  %l832 = alloca i1
  %l833 = alloca i1
  %l837 = alloca i1
  %l842 = alloca i1
  %l843 = alloca ptr
  %l845 = alloca %"compiler/source:Span"
  %l846 = alloca ptr
  %l848 = alloca %"compiler/source:Span"
  %l849 = alloca { i64, ptr }
  %l852 = alloca { i64, ptr }
  %l853 = alloca { i64, ptr }
  %l854 = alloca ptr
  %l856 = alloca %"compiler/source:Span"
  %l857 = alloca { i64, ptr }
  %l858 = alloca { i64, ptr }
  %l860 = alloca %"compiler/diagmsg:Msg"
  %l861 = alloca i64
  %l862 = alloca ptr
  %l870 = alloca ptr
  %l873 = alloca ptr
  %l876 = alloca i1
  %l884 = alloca i32
  %l890 = alloca i1
  %l895 = alloca ptr
  %l901 = alloca ptr
  %l905 = alloca i1
  %l909 = alloca i1
  %l910 = alloca %"compiler/source:Span"
  %l911 = alloca i32
  %l912 = alloca ptr
  %l916 = alloca i32
  %l917 = alloca %"compiler/typed:Promote"
  %l928 = alloca i64
  %l940 = alloca i64
  %l942 = alloca i64
  %l947 = alloca ptr
  %l951 = alloca i1
  %l952 = alloca %"compiler/source:Span"
  %l953 = alloca i32
  %l954 = alloca ptr
  %l958 = alloca i32
  %l959 = alloca %"compiler/typed:Promote"
  %l967 = alloca i1
  %l968 = alloca %"compiler/source:Span"
  %l969 = alloca i32
  %l970 = alloca ptr
  %l974 = alloca i32
  %l975 = alloca %"compiler/typed:Promote"
  %l988 = alloca i64
  %l994 = alloca %"compiler/source:Span"
  %l997 = alloca i1
  %l1000 = alloca i1
  %l1001 = alloca ptr
  %l1002 = alloca %"compiler/source:Span"
  %l1003 = alloca %"compiler/diagmsg:Msg"
  %l1004 = alloca i64
  %l1008 = alloca %"compiler/source:Span"
  %l1009 = alloca i32
  %l1010 = alloca ptr
  %l1014 = alloca i32
  %l1015 = alloca %"compiler/typed:Promote"
  %l1022 = alloca i1
  %l1023 = alloca i1
  %l1026 = alloca i1
  %l1027 = alloca i1
  %l1030 = alloca i1
  %l1031 = alloca i1
  %l1036 = alloca i1
  %l1038 = alloca ptr
  %l1042 = alloca i1
  %l1045 = alloca i1
  %l1050 = alloca i32
  %l1052 = alloca i1
  %l1056 = alloca i1
  %l1060 = alloca i1
  %l1061 = alloca %"compiler/source:Span"
  %l1062 = alloca i32
  %l1067 = alloca ptr
  %l1071 = alloca i32
  %l1072 = alloca %"compiler/typed:Promote"
  %l1080 = alloca i64
  %l1090 = alloca ptr
  %l1091 = alloca %"compiler/source:Span"
  %l1092 = alloca %"compiler/source:Span"
  %l1095 = alloca ptr
  %l1096 = alloca i32
  %l1101 = alloca i64
  %l1102 = alloca i32
  %l1107 = alloca ptr
  %l1111 = alloca ptr
  %l1120 = alloca ptr
  %l1124 = alloca i1
  %l1127 = alloca i1
  %l1128 = alloca i1
  %l1131 = alloca i1
  %l1136 = alloca i64
  %l1151 = alloca %"compiler/source:Span"
  %l1152 = alloca i32
  %l1153 = alloca ptr
  %l1157 = alloca i32
  %l1158 = alloca %"compiler/typed:Promote"
  %l1164 = alloca i1
  %l1171 = alloca i32
  %l1176 = alloca i32
  %l1182 = alloca i1
  %l1183 = alloca i1
  %l1187 = alloca i1
  %l1190 = alloca i1
  %l1191 = alloca i1
  %l1197 = alloca i1
  %l1202 = alloca i64
  %l1207 = alloca i64
  %l1209 = alloca ptr
  %l1214 = alloca ptr
  %l1220 = alloca i64
  %l1224 = alloca i1
  %l1229 = alloca i64
  %l1234 = alloca i1
  %l1235 = alloca ptr
  %l1243 = alloca ptr
  %l1246 = alloca ptr
  %l1247 = alloca %"compiler/source:Span"
  %l1248 = alloca i32
  %l1249 = alloca ptr
  %l1253 = alloca i32
  %l1254 = alloca %"compiler/typed:Promote"
  %l1261 = alloca i1
  %l1262 = alloca ptr
  %l1263 = alloca %"compiler/source:Span"
  %l1264 = alloca i32
  %l1266 = alloca i32
  %l1268 = alloca %"compiler/diagmsg:Msg"
  %l1269 = alloca %"compiler/diagmsg:Msg"
  %l1272 = alloca { i64, ptr }
  %l1274 = alloca %"compiler/diagmsg:Msg"
  %l1275 = alloca i64
  %l1277 = alloca ptr
  %l1278 = alloca %"compiler/source:Span"
  %l1279 = alloca %"compiler/diagmsg:Msg"
  %l1280 = alloca i64
  %l1286 = alloca i64
  %l1290 = alloca i1
  %l1294 = alloca i1
  %l1302 = alloca i1
  %l1308 = alloca ptr
  %l1312 = alloca i1
  %l1317 = alloca ptr
  %l1320 = alloca i1
  %l1325 = alloca i32
  %l1335 = alloca i32
  %l1343 = alloca ptr
  %l1346 = alloca i32
  %l1351 = alloca i32
  %l1354 = alloca i1
  %l1359 = alloca i32
  %l1361 = alloca i1
  %l1362 = alloca ptr
  %l1367 = alloca i32
  %l1372 = alloca i32
  %l1373 = alloca i1
  %l1376 = alloca ptr
  %l1381 = alloca i32
  %l1382 = alloca i32
  %l1385 = alloca ptr
  %l1386 = alloca %"compiler/source:Span"
  %l1389 = alloca ptr
  %l1394 = alloca i32
  %l1395 = alloca i64
  %l1396 = alloca %"compiler/diagmsg:Msg"
  %l1397 = alloca i64
  %l1401 = alloca i64
  %l1404 = alloca ptr
  %l1406 = alloca %"compiler/source:Span"
  %l1407 = alloca i32
  %l1408 = alloca i32
  %l1409 = alloca i32
  %l1413 = alloca { i64, ptr }
  %l1418 = alloca i1
  %l1421 = alloca i1
  %l1424 = alloca ptr
  %l1429 = alloca i32
  %l1434 = alloca i32
  %l1435 = alloca i1
  %l1436 = alloca i1
  %l1439 = alloca ptr
  %l1444 = alloca i32
  %l1445 = alloca i32
  %l1448 = alloca i1
  %l1451 = alloca ptr
  %l1456 = alloca i32
  %l1457 = alloca i32
  %l1460 = alloca ptr
  %l1461 = alloca %"compiler/source:Span"
  %l1464 = alloca ptr
  %l1469 = alloca i32
  %l1470 = alloca i64
  %l1473 = alloca ptr
  %l1478 = alloca i32
  %l1479 = alloca i64
  %l1480 = alloca %"compiler/diagmsg:Msg"
  %l1481 = alloca i64
  %l1485 = alloca { i64, ptr }
  %l1488 = alloca { i64, ptr }
  %l1491 = alloca i1
  %l1492 = alloca i1
  %l1493 = alloca ptr
  %l1496 = alloca i32
  %l1497 = alloca i1
  %l1498 = alloca i1
  %l1499 = alloca ptr
  %l1502 = alloca i32
  %l1503 = alloca i1
  %l1504 = alloca { i64, ptr }
  %l1508 = alloca ptr
  %l1511 = alloca ptr
  %l1514 = alloca ptr
  %l1517 = alloca i32
  %l1518 = alloca i32
  %l1519 = alloca i64
  %l1520 = alloca ptr
  %l1523 = alloca { i64, ptr }
  %l1525 = alloca i64
  %l1527 = alloca { i64, ptr }
  %l1531 = alloca ptr
  %l1534 = alloca ptr
  %l1537 = alloca ptr
  %l1540 = alloca i32
  %l1541 = alloca i32
  %l1542 = alloca i64
  %l1543 = alloca ptr
  %l1546 = alloca { i64, ptr }
  %l1548 = alloca i64
  %l1550 = alloca ptr
  %l1551 = alloca %"compiler/source:Span"
  %l1554 = alloca %"compiler/diagmsg:Msg"
  %l1555 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s65 = alloca %olang.scope
  %s67 = alloca %olang.scope
  %s74 = alloca %olang.scope
  %s75 = alloca %olang.scope
  %rv = alloca ptr
  %t1817 = alloca { i64, [4 x i64] }, align 8
  %t1929 = alloca { i64, [5 x i64] }, align 8
  %t2018 = alloca { i64, [5 x i64] }, align 8
  %t2055 = alloca { i64, [5 x i64] }, align 8
  %t2071 = alloca { i64, [5 x i64] }, align 8
  %t2146 = alloca { i64, [5 x i64] }, align 8
  %t2262 = alloca { i64, [5 x i64] }, align 8
  %t2328 = alloca { i64, [5 x i64] }, align 8
  %t2424 = alloca { i64, [5 x i64] }, align 8
  %t2451 = alloca { i64, [5 x i64] }, align 8
  %t2621 = alloca { i64, [4 x i64] }, align 8
  %t2659 = alloca { i64, [5 x i64] }, align 8
  %t2840 = alloca { i64, [4 x i64] }, align 8
  %t2998 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l45
  br label %bb1
bb1:
  %t5 = load i32, ptr %l45, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i32, ptr %l4, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  store i1 %t16, ptr %l49, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l49, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb7
bb6:
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t23 = icmp eq i32 %t19, %t20
  store i1 %t23, ptr %l53, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l53, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t26, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l60
  br label %bb11
bb11:
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = load i32, ptr %l60, !tbaa !23
  %t36 = icmp eq i32 %t34, %t33
  br i1 %t36, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb15
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l4, !tbaa !23
  %t42 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l66
  br label %bb14
bb14:
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t44 = load i32, ptr %l66, !tbaa !23
  %t46 = icmp eq i32 %t44, %t43
  store i1 %t46, ptr %l63, !tbaa !21
  br label %bb15
bb15:
  %t48 = load i1, ptr %l63, !tbaa !21
  br i1 %t48, label %bb16, label %bb17
bb16:
  %t49 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t49, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t51 = load i32, ptr %l4, !tbaa !23
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = icmp ne i32 %t51, %t52
  br i1 %t55, label %bb19, label %bb20
bb19:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l4, !tbaa !23
  %t64 = load i32, ptr %l2, !tbaa !23
  %t68 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t62, i32 %t63, i32 %t64)
  store i1 %t68, ptr %l79
  br label %bb21
bb20:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb22
bb21:
  %t69 = load i1, ptr %l79, !tbaa !21
  store i1 %t69, ptr %l73, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l73, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l4, !tbaa !23
  %t78 = load i32, ptr %l2, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t76, i32 %t77, i32 %t78)
  store i1 %t82, ptr %l86
  br label %bb25
bb24:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb26
bb25:
  %t83 = load i1, ptr %l86, !tbaa !21
  %t84 = xor i1 %t83, true
  store i1 %t84, ptr %l80, !tbaa !21
  br label %bb26
bb26:
  %t86 = load i1, ptr %l80, !tbaa !21
  br i1 %t86, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s3
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l88, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t88, ptr %l89
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l2, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t89, i32 %t90)
  store { i64, ptr } %t93, ptr %l92
  br label %bb29
bb28:
  br label %bb37
bb29:
  %t94 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  %t96 = extractvalue { i64, ptr } %t94, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l93, !tbaa !27
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i32, ptr %l4, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t101, i32 %t102)
  store { i64, ptr } %t105, ptr %l96
  br label %bb30
bb30:
  %t106 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  %t108 = extractvalue { i64, ptr } %t106, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t113 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t115 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t113, { i64, ptr } %t112)
  store %"compiler/diagmsg:Msg" %t115, ptr %l98
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l88, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l89
  %t118 = load %"compiler/diagmsg:Msg", ptr %l98
  %t119 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t116, %"compiler/source:Span" %t117, %"compiler/diagmsg:Msg" %t118)
  store i64 %t119, ptr %l99
  br label %bb32
bb32:
  %t120 = load i64, ptr %l99, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = getelementptr %"compiler/load:Loader", ptr %t127, i32 0, i32 4
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l103, !tbaa !29
  store i64 %t120, ptr %l104, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l3
  %t136 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t132, %"compiler/source:Span" %t133)
  store { i64, [3 x i64] } %t136, ptr %l107
  br label %bb33
bb33:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i32, ptr %l4, !tbaa !23
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t137, i32 %t138)
  store { i64, ptr } %t141, ptr %l110
  br label %bb34
bb34:
  %t142 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t150 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteFuncTypeScopes(ptr %s3, ptr %s3, { i64, ptr } %t148)
  store %"compiler/diagmsg:Msg" %t150, ptr %l112
  br label %bb35
bb35:
  %t151 = load ptr, ptr %l103, !tbaa !29
  %t152 = load i64, ptr %l104, !tbaa !24
  %t153 = load { i64, [3 x i64] }, ptr %l107
  %t154 = load %"compiler/diagmsg:Msg", ptr %l112
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s3, ptr %t151, i64 %t152, { i64, [3 x i64] } %t153, %"compiler/diagmsg:Msg" %t154)
  br label %bb36
bb36:
  %t155 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t155, ptr %rv
  br label %ret
bb37:
  %t157 = load i32, ptr %l4, !tbaa !23
  %t158 = load i32, ptr %l2, !tbaa !23
  %t161 = icmp eq i32 %t157, %t158
  br i1 %t161, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb41
bb39:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/generic:Program", ptr %t166, i32 0, i32 2
  %t169 = load i32, ptr %l4, !tbaa !23
  %t170 = load i32, ptr %l2, !tbaa !23
  %t174 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t168, i32 %t169, i32 %t170)
  store i1 %t174, ptr %l123
  br label %bb40
bb40:
  %t175 = load i1, ptr %l123, !tbaa !21
  store i1 %t175, ptr %l117, !tbaa !21
  br label %bb41
bb41:
  %t176 = load i1, ptr %l117, !tbaa !21
  br i1 %t176, label %bb42, label %bb43
bb42:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l2, !tbaa !23
  %t181 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t177, i32 %t178)
  store i1 %t181, ptr %l126
  br label %bb44
bb43:
  br label %bb53
bb44:
  %t182 = load i1, ptr %l126, !tbaa !21
  br i1 %t182, label %bb45, label %bb46
bb45:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  %t189 = load i32, ptr %l2, !tbaa !23
  %t192 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t188, i32 %t189)
  store i64 %t192, ptr %l132
  br label %bb47
bb46:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb48
bb47:
  %t193 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t194 = load i64, ptr %l132, !tbaa !24
  %t196 = and i64 %t194, %t193
  %t198 = icmp ne i64 %t196, 0
  store i1 %t198, ptr %l127, !tbaa !21
  br label %bb48
bb48:
  %t200 = load i1, ptr %l127, !tbaa !21
  br i1 %t200, label %bb49, label %bb50
bb49:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l1, !tbaa !29
  %t203 = load %"compiler/source:Span", ptr %l3
  %t207 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroWritableRef(ptr %v0, ptr %v1, ptr %t201, ptr %t202, %"compiler/source:Span" %t203)
  store i1 %t207, ptr %l139
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  %t208 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t208, ptr %rv
  br label %ret
bb53:
  %t210 = load i32, ptr %l4, !tbaa !23
  %t211 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t214 = icmp eq i32 %t210, %t211
  br i1 %t214, label %bb54, label %bb55
bb54:
  %t216 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t216, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/check:Checker", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = getelementptr %"compiler/generic:Program", ptr %t221, i32 0, i32 2
  %t224 = load i32, ptr %l4, !tbaa !23
  %t227 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t223, i32 %t224)
  store i32 %t227, ptr %l149
  br label %bb57
bb57:
  %t228 = load i32, ptr %l149, !range !{i32 0, i32 33}
  store i32 %t228, ptr %l6
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/check:Checker", ptr %t229, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t234 = getelementptr %"compiler/generic:Program", ptr %t232, i32 0, i32 2
  %t235 = load i32, ptr %l2, !tbaa !23
  %t238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t234, i32 %t235)
  store i32 %t238, ptr %l154
  br label %bb58
bb58:
  %t239 = load i32, ptr %l154, !range !{i32 0, i32 33}
  store i32 %t239, ptr %l7
  %t240 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t242 = trunc i64 32 to i32
  %t243 = icmp eq i32 %t240, %t242
  br i1 %t243, label %bb59, label %bb60
bb59:
  %t245 = load i32, ptr %l4, !tbaa !23
  %t246 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t249 = icmp eq i32 %t245, %t246
  store i1 %t249, ptr %l157, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb61
bb61:
  %t251 = load i1, ptr %l157, !tbaa !21
  br i1 %t251, label %bb62, label %bb63
bb62:
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l161, !tbaa !29
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t253)
  store %"compiler/source:Span" %t255, ptr %l163
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t256 = load i32, ptr %l2, !tbaa !23
  %t257 = load ptr, ptr %l161, !tbaa !29
  %t258 = load %"compiler/source:Span", ptr %l163
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t257, %"compiler/source:Span" %t258, i32 %t256, i64 0)
  store ptr %t260, ptr %l165
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t261 = load ptr, ptr %l165, !tbaa !29
  store ptr %t261, ptr %rv
  br label %ret
bb66:
  %t262 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t264 = trunc i64 32 to i32
  %t265 = icmp eq i32 %t262, %t264
  br i1 %t265, label %bb67, label %bb68
bb67:
  %t267 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t269 = trunc i64 32 to i32
  %t270 = icmp eq i32 %t267, %t269
  store i1 %t270, ptr %l168, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb69
bb69:
  %t272 = load i1, ptr %l168, !tbaa !21
  br i1 %t272, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s8
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load i32, ptr %l2, !tbaa !23
  %t275 = load i32, ptr %l4, !tbaa !23
  %t279 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrHolds(ptr %v0, ptr %t273, i32 %t274, i32 %t275)
  store i1 %t279, ptr %l174
  br label %bb72
bb71:
  br label %bb87
bb72:
  %t280 = load i1, ptr %l174, !tbaa !21
  br i1 %t280, label %bb73, label %bb74
bb73:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l1, !tbaa !29
  %t283 = load i32, ptr %l2, !tbaa !23
  %t287 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrRecode(ptr %v0, ptr %v1, ptr %v2, ptr %t281, ptr %t282, i32 %t283)
  store ptr %t287, ptr %l178
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t288 = load ptr, ptr %l178, !tbaa !29
  store ptr %t288, ptr %rv
  br label %ret
bb76:
  %t289 = load ptr, ptr %l0, !tbaa !29
  store ptr %t289, ptr %l179, !tbaa !29
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l180, !tbaa !29
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 2
  %t297 = load i32, ptr %l4, !tbaa !23
  %t300 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t296, i32 %t297)
  store i32 %t300, ptr %l185
  br label %bb77
bb77:
  %t301 = load ptr, ptr %l180, !tbaa !29
  %t302 = load i32, ptr %l185, !tbaa !23
  %t303 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %s8, ptr %t301, i32 %t302)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l186
  br label %bb78
bb78:
  %t304 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l186
  %t305 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t304, ptr %t305
  store ptr %t305, ptr %l187, !tbaa !29
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l188, !tbaa !29
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = getelementptr %"compiler/generic:Program", ptr %t310, i32 0, i32 2
  %t313 = load i32, ptr %l2, !tbaa !23
  %t316 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t312, i32 %t313)
  store i32 %t316, ptr %l193
  br label %bb79
bb79:
  %t317 = load ptr, ptr %l188, !tbaa !29
  %t318 = load i32, ptr %l193, !tbaa !23
  %t319 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %s8, ptr %t317, i32 %t318)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t319, ptr %l194
  br label %bb80
bb80:
  %t320 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l194
  %t321 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %t321
  %t322 = load ptr, ptr %l179, !tbaa !29
  %t323 = load ptr, ptr %l187, !tbaa !29
  %t325 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %s8, ptr %s8, ptr %s8, ptr %t322, ptr %t323, ptr %t321)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l196
  br label %bb81
bb81:
  %t326 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l196
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t326, ptr %l8
  %t327 = load ptr, ptr %l0, !tbaa !29
  store ptr %t327, ptr %l197, !tbaa !29
  %t328 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t328, ptr %l198
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load i32, ptr %l2, !tbaa !23
  %t333 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t329, i32 %t330)
  store { i64, ptr } %t333, ptr %l201
  br label %bb82
bb82:
  %t334 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t334, 0
  %t336 = extractvalue { i64, ptr } %t334, 1
  %t337 = mul i64 %t335, 1
  %t338 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t337)
  call void @llvm.memcpy.p0.p0.i64(ptr %t338, ptr %t336, i64 %t337, i1 false)
  %t339 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  store { i64, ptr } %t340, ptr %l202, !tbaa !27
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load i32, ptr %l4, !tbaa !23
  %t345 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t341, i32 %t342)
  store { i64, ptr } %t345, ptr %l205
  br label %bb83
bb83:
  %t346 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 0
  %t348 = extractvalue { i64, ptr } %t346, 1
  %t349 = mul i64 %t347, 1
  %t350 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t349)
  call void @llvm.memcpy.p0.p0.i64(ptr %t350, ptr %t348, i64 %t349, i1 false)
  %t351 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  store { i64, ptr } %t352, ptr %l206, !tbaa !27
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t356 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %s8, ptr %s8, ptr %t353, ptr %l8)
  store { i64, ptr } %t356, ptr %l209
  br label %bb84
bb84:
  %t357 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t357, 0
  %t359 = extractvalue { i64, ptr } %t357, 1
  %t360 = mul i64 %t358, 1
  %t361 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t360)
  call void @llvm.memcpy.p0.p0.i64(ptr %t361, ptr %t359, i64 %t360, i1 false)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t364 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t365 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t367 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrValueNotHeld(ptr %s8, ptr %s8, ptr %s8, ptr %s8, { i64, ptr } %t364, { i64, ptr } %t365, { i64, ptr } %t363)
  store %"compiler/diagmsg:Msg" %t367, ptr %l211
  br label %bb85
bb85:
  %t368 = load ptr, ptr %l197, !tbaa !29
  %t369 = load %"compiler/source:Span", ptr %l198
  %t370 = load %"compiler/diagmsg:Msg", ptr %l211
  %t371 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t368, %"compiler/source:Span" %t369, %"compiler/diagmsg:Msg" %t370)
  store i64 %t371, ptr %l212
  br label %bb86
bb86:
  %t372 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t372, ptr %rv
  br label %ret
bb87:
  %t374 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t376 = trunc i64 20 to i32
  %t377 = icmp eq i32 %t374, %t376
  br i1 %t377, label %bb88, label %bb89
bb88:
  %t379 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t381 = trunc i64 20 to i32
  %t382 = icmp eq i32 %t379, %t381
  store i1 %t382, ptr %l216, !tbaa !21
  br label %bb90
bb89:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb90
bb90:
  %t384 = load i1, ptr %l216, !tbaa !21
  br i1 %t384, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l219, !tbaa !21
  br label %bb96
bb92:
  %t385 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t387 = trunc i64 21 to i32
  %t388 = icmp eq i32 %t385, %t387
  br i1 %t388, label %bb93, label %bb94
bb93:
  %t390 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t392 = trunc i64 21 to i32
  %t393 = icmp eq i32 %t390, %t392
  store i1 %t393, ptr %l222, !tbaa !21
  br label %bb95
bb94:
  store i1 false, ptr %l222, !tbaa !21
  br label %bb95
bb95:
  %t395 = load i1, ptr %l222, !tbaa !21
  store i1 %t395, ptr %l219, !tbaa !21
  br label %bb96
bb96:
  %t396 = load i1, ptr %l219, !tbaa !21
  br i1 %t396, label %bb97, label %bb98
bb97:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t402 = getelementptr %"compiler/generic:Program", ptr %t400, i32 0, i32 2
  %t403 = load i32, ptr %l4, !tbaa !23
  %t406 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t402, i32 %t403)
  store i1 %t406, ptr %l230
  br label %bb99
bb98:
  store i1 false, ptr %l225, !tbaa !21
  br label %bb101
bb99:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/check:Checker", ptr %t407, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !29
  %t412 = getelementptr %"compiler/generic:Program", ptr %t410, i32 0, i32 2
  %t413 = load i32, ptr %l2, !tbaa !23
  %t416 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t412, i32 %t413)
  store i1 %t416, ptr %l235
  br label %bb100
bb100:
  %t417 = load i1, ptr %l230, !tbaa !21
  %t418 = load i1, ptr %l235, !tbaa !21
  %t419 = icmp ne i1 %t417, %t418
  store i1 %t419, ptr %l225, !tbaa !21
  br label %bb101
bb101:
  %t421 = load i1, ptr %l225, !tbaa !21
  br i1 %t421, label %bb102, label %bb103
bb102:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = getelementptr %"compiler/check:Checker", ptr %t422, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  %t428 = load i32, ptr %l4, !tbaa !23
  %t431 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t427, i32 %t428)
  store i1 %t431, ptr %l241
  br label %bb104
bb103:
  br label %bb119
bb104:
  %t432 = load i1, ptr %l241, !tbaa !21
  br i1 %t432, label %bb105, label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s11
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t435 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t433)
  store %"compiler/source:Span" %t435, ptr %l243
  br label %bb107
bb106:
  br label %bb115
bb107:
  %t436 = load %"compiler/source:Span", ptr %l243
  store %"compiler/source:Span" %t436, ptr %l9
  %t437 = load ptr, ptr %l0, !tbaa !29
  store ptr %t437, ptr %l244, !tbaa !29
  %t438 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t438, ptr %l245
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load %"compiler/source:Span", ptr %l9
  %t443 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t439, %"compiler/source:Span" %t440)
  store { i64, ptr } %t443, ptr %l248
  br label %bb108
bb108:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t445 = load i32, ptr %l4, !tbaa !23
  %t448 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t444, i32 %t445)
  store { i64, ptr } %t448, ptr %l251
  br label %bb109
bb109:
  %t449 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t450 = extractvalue { i64, ptr } %t449, 0
  %t451 = extractvalue { i64, ptr } %t449, 1
  %t452 = mul i64 %t450, 1
  %t453 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t452)
  call void @llvm.memcpy.p0.p0.i64(ptr %t453, ptr %t451, i64 %t452, i1 false)
  %t454 = insertvalue { i64, ptr } undef, i64 %t450, 0
  %t455 = insertvalue { i64, ptr } %t454, ptr %t453, 1
  store { i64, ptr } %t455, ptr %l252, !tbaa !27
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t457 = load i32, ptr %l2, !tbaa !23
  %t460 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t456, i32 %t457)
  store { i64, ptr } %t460, ptr %l255
  br label %bb110
bb110:
  %t461 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t462 = extractvalue { i64, ptr } %t461, 0
  %t463 = extractvalue { i64, ptr } %t461, 1
  %t464 = mul i64 %t462, 1
  %t465 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t464)
  call void @llvm.memcpy.p0.p0.i64(ptr %t465, ptr %t463, i64 %t464, i1 false)
  %t466 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t467 = insertvalue { i64, ptr } %t466, ptr %t465, 1
  store { i64, ptr } %t467, ptr %l256, !tbaa !27
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load %"compiler/source:Span", ptr %l9
  %t472 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t468, %"compiler/source:Span" %t469)
  store { i64, ptr } %t472, ptr %l259
  br label %bb111
bb111:
  %t473 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t474 = call { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %s11, { i64, ptr } %t473)
  store { i64, ptr } %t474, ptr %l260
  br label %bb112
bb112:
  %t475 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t476 = extractvalue { i64, ptr } %t475, 0
  %t477 = extractvalue { i64, ptr } %t475, 1
  %t478 = mul i64 %t476, 1
  %t479 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t478)
  call void @llvm.memcpy.p0.p0.i64(ptr %t479, ptr %t477, i64 %t478, i1 false)
  %t480 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t479, 1
  %t482 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t483 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t484 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t486 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMayBeNull(ptr %v0, ptr %s11, ptr %s11, ptr %s11, ptr %s11, { i64, ptr } %t482, { i64, ptr } %t483, { i64, ptr } %t484, { i64, ptr } %t481)
  store %"compiler/diagmsg:Msg" %t486, ptr %l262
  br label %bb113
bb113:
  %t487 = load ptr, ptr %l244, !tbaa !29
  %t488 = load %"compiler/source:Span", ptr %l245
  %t489 = load %"compiler/diagmsg:Msg", ptr %l262
  %t490 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s11, ptr %t487, %"compiler/source:Span" %t488, %"compiler/diagmsg:Msg" %t489)
  store i64 %t490, ptr %l263
  br label %bb114
bb114:
  %t491 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t491, ptr %rv
  br label %ret
bb115:
  %t493 = load ptr, ptr %l0, !tbaa !29
  store ptr %t493, ptr %l265, !tbaa !29
  %t494 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t494, ptr %l266
  %t495 = load ptr, ptr %l0, !tbaa !29
  store ptr %t495, ptr %l267, !tbaa !29
  %t496 = load ptr, ptr %l1, !tbaa !29
  store ptr %t496, ptr %l268, !tbaa !29
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/check:Checker", ptr %t497, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !29
  %t502 = getelementptr %"compiler/generic:Program", ptr %t500, i32 0, i32 2
  %t503 = load i32, ptr %l2, !tbaa !23
  %t506 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t502, i32 %t503)
  store i32 %t506, ptr %l273
  br label %bb116
bb116:
  %t507 = load %"compiler/source:Span", ptr %l3
  %t508 = load ptr, ptr %l267, !tbaa !29
  %t509 = load ptr, ptr %l268, !tbaa !29
  %t510 = load i32, ptr %l273, !tbaa !23
  %t512 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t508, ptr %t509, i32 %t510, %"compiler/source:Span" %t507)
  store ptr %t512, ptr %l275
  br label %bb117
bb117:
  %t513 = load i32, ptr %l2, !tbaa !23
  %t514 = load ptr, ptr %l265, !tbaa !29
  %t515 = load %"compiler/source:Span", ptr %l266
  %t516 = load ptr, ptr %l275, !tbaa !29
  %t518 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t514, %"compiler/source:Span" %t515, ptr %t516, i32 %t513)
  store ptr %t518, ptr %l277
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s0)
  %t519 = load ptr, ptr %l277, !tbaa !29
  store ptr %t519, ptr %rv
  br label %ret
bb119:
  %t520 = load ptr, ptr %l0, !tbaa !29
  %t522 = getelementptr %"compiler/check:Checker", ptr %t520, i32 0, i32 1
  %t523 = load ptr, ptr %t522, !tbaa !29
  %t525 = getelementptr %"compiler/generic:Program", ptr %t523, i32 0, i32 2
  %t526 = load i32, ptr %l2, !tbaa !23
  %t529 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t525, i32 %t526)
  store i1 %t529, ptr %l282
  br label %bb120
bb120:
  %t530 = load i1, ptr %l282, !tbaa !21
  br i1 %t530, label %bb121, label %bb122
bb121:
  %t531 = load i32, ptr %l4, !tbaa !23
  %t532 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t535 = icmp ne i32 %t531, %t532
  store i1 %t535, ptr %l283, !tbaa !21
  br label %bb123
bb122:
  store i1 false, ptr %l283, !tbaa !21
  br label %bb123
bb123:
  %t537 = load i1, ptr %l283, !tbaa !21
  br i1 %t537, label %bb124, label %bb125
bb124:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t540 = getelementptr %"compiler/check:Checker", ptr %t538, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !29
  %t543 = getelementptr %"compiler/generic:Program", ptr %t541, i32 0, i32 2
  %t544 = load i32, ptr %l4, !tbaa !23
  %t547 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t543, i32 %t544)
  store i1 %t547, ptr %l292
  br label %bb126
bb125:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb133
bb126:
  %t548 = load i1, ptr %l292, !tbaa !21
  br i1 %t548, label %bb127, label %bb128
bb127:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t551 = getelementptr %"compiler/check:Checker", ptr %t549, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !29
  %t554 = getelementptr %"compiler/generic:Program", ptr %t552, i32 0, i32 2
  store ptr %t554, ptr %l296, !tbaa !29
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = getelementptr %"compiler/check:Checker", ptr %t555, i32 0, i32 1
  %t558 = load ptr, ptr %t557, !tbaa !29
  %t560 = getelementptr %"compiler/generic:Program", ptr %t558, i32 0, i32 2
  %t561 = load i32, ptr %l4, !tbaa !23
  %t564 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t560, i32 %t561)
  store i32 %t564, ptr %l301
  br label %bb129
bb128:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb132
bb129:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = getelementptr %"compiler/check:Checker", ptr %t565, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !29
  %t570 = getelementptr %"compiler/generic:Program", ptr %t568, i32 0, i32 2
  %t571 = load i32, ptr %l2, !tbaa !23
  %t574 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t570, i32 %t571)
  store i32 %t574, ptr %l306
  br label %bb130
bb130:
  %t575 = load ptr, ptr %l296, !tbaa !29
  %t576 = load i32, ptr %l301, !tbaa !23
  %t577 = load i32, ptr %l306, !tbaa !23
  %t578 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t575, i32 %t576, i32 %t577)
  store i1 %t578, ptr %l307
  br label %bb131
bb131:
  %t579 = load i1, ptr %l307, !tbaa !21
  store i1 %t579, ptr %l293, !tbaa !21
  br label %bb132
bb132:
  %t580 = load i1, ptr %l293, !tbaa !21
  %t581 = xor i1 %t580, true
  store i1 %t581, ptr %l287, !tbaa !21
  br label %bb133
bb133:
  %t583 = load i1, ptr %l287, !tbaa !21
  br i1 %t583, label %bb134, label %bb135
bb134:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t585 = load ptr, ptr %l1, !tbaa !29
  %t586 = load i32, ptr %l2, !tbaa !23
  %t587 = load %"compiler/source:Span", ptr %l3
  %t592 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etoAny(ptr %v0, ptr %v1, ptr %v2, ptr %t584, ptr %t585, i32 %t586, %"compiler/source:Span" %t587)
  store ptr %t592, ptr %l313
  br label %bb136
bb135:
  br label %bb137
bb136:
  call void @__olang_scope_close(ptr %s0)
  %t593 = load ptr, ptr %l313, !tbaa !29
  store ptr %t593, ptr %rv
  br label %ret
bb137:
  %t594 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t596 = trunc i64 19 to i32
  %t597 = icmp eq i32 %t594, %t596
  br i1 %t597, label %bb138, label %bb139
bb138:
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t600 = load i32, ptr %l2, !tbaa !23
  %t603 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t599, i32 %t600)
  store i32 %t603, ptr %l318
  br label %bb140
bb139:
  br label %bb157
bb140:
  %t604 = load i32, ptr %l318, !tbaa !23
  store i32 %t604, ptr %l10, !tbaa !23
  %t605 = load i32, ptr %l10, !tbaa !23
  %t606 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t609 = icmp ne i32 %t605, %t606
  br i1 %t609, label %bb141, label %bb142
bb141:
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t613 = getelementptr %"compiler/check:Checker", ptr %t611, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !29
  %t616 = getelementptr %"compiler/generic:Program", ptr %t614, i32 0, i32 2
  store ptr %t616, ptr %l325, !tbaa !29
  %t617 = load ptr, ptr %l0, !tbaa !29
  %t619 = getelementptr %"compiler/check:Checker", ptr %t617, i32 0, i32 1
  %t620 = load ptr, ptr %t619, !tbaa !29
  %t622 = getelementptr %"compiler/generic:Program", ptr %t620, i32 0, i32 2
  %t623 = load i32, ptr %l4, !tbaa !23
  %t626 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t622, i32 %t623)
  store i32 %t626, ptr %l330
  br label %bb143
bb142:
  store i1 false, ptr %l322, !tbaa !21
  br label %bb146
bb143:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t629 = getelementptr %"compiler/check:Checker", ptr %t627, i32 0, i32 1
  %t630 = load ptr, ptr %t629, !tbaa !29
  %t632 = getelementptr %"compiler/generic:Program", ptr %t630, i32 0, i32 2
  %t633 = load i32, ptr %l10, !tbaa !23
  %t636 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t632, i32 %t633)
  store i32 %t636, ptr %l335
  br label %bb144
bb144:
  %t637 = load ptr, ptr %l325, !tbaa !29
  %t638 = load i32, ptr %l330, !tbaa !23
  %t639 = load i32, ptr %l335, !tbaa !23
  %t640 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t637, i32 %t638, i32 %t639)
  store i1 %t640, ptr %l336
  br label %bb145
bb145:
  %t641 = load i1, ptr %l336, !tbaa !21
  %t642 = xor i1 %t641, true
  store i1 %t642, ptr %l322, !tbaa !21
  br label %bb146
bb146:
  %t644 = load i1, ptr %l322, !tbaa !21
  br i1 %t644, label %bb147, label %bb148
bb147:
  %t645 = load ptr, ptr %l0, !tbaa !29
  store ptr %t645, ptr %l338, !tbaa !29
  %t646 = load ptr, ptr %l1, !tbaa !29
  store ptr %t646, ptr %l339, !tbaa !29
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t649 = getelementptr %"compiler/check:Checker", ptr %t647, i32 0, i32 1
  %t650 = load ptr, ptr %t649, !tbaa !29
  %t652 = getelementptr %"compiler/generic:Program", ptr %t650, i32 0, i32 2
  %t653 = load i32, ptr %l10, !tbaa !23
  %t656 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t652, i32 %t653)
  store i32 %t656, ptr %l344
  br label %bb149
bb148:
  br label %bb156
bb149:
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t659 = getelementptr %"compiler/check:Checker", ptr %t657, i32 0, i32 1
  %t660 = load ptr, ptr %t659, !tbaa !29
  %t662 = getelementptr %"compiler/generic:Program", ptr %t660, i32 0, i32 2
  %t663 = load i32, ptr %l4, !tbaa !23
  %t666 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t662, i32 %t663)
  store i32 %t666, ptr %l349
  br label %bb150
bb150:
  %t667 = load ptr, ptr %l338, !tbaa !29
  %t668 = load ptr, ptr %l339, !tbaa !29
  %t669 = load i32, ptr %l344, !tbaa !23
  %t670 = load i32, ptr %l349, !tbaa !23
  %t671 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsFitted(ptr %v0, ptr %v1, ptr %v2, ptr %t667, ptr %t668, i32 %t669, i32 %t670)
  store ptr %t671, ptr %l350
  br label %bb151
bb151:
  %t672 = load ptr, ptr %l350, !tbaa !29
  store ptr %t672, ptr %l11, !tbaa !29
  %t673 = load ptr, ptr %l11, !tbaa !29
  %t675 = icmp eq ptr %t673, null
  %t677 = xor i1 %t675, true
  br i1 %t677, label %bb152, label %bb153
bb152:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t680 = load ptr, ptr %l11, !tbaa !29
  %t681 = load i32, ptr %l2, !tbaa !23
  %t682 = load %"compiler/source:Span", ptr %l3
  %t687 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t679, ptr %t680, i32 %t681, %"compiler/source:Span" %t682)
  store ptr %t687, ptr %l358
  br label %bb154
bb153:
  br label %bb155
bb154:
  call void @__olang_scope_close(ptr %s0)
  %t688 = load ptr, ptr %l358, !tbaa !29
  store ptr %t688, ptr %rv
  br label %ret
bb155:
  br label %bb156
bb156:
  br label %bb157
bb157:
  %t689 = load ptr, ptr %l1, !tbaa !29
  %t691 = call i1 @compiler_2fcheck_2eisData(ptr %v1, ptr %t689)
  store i1 %t691, ptr %l360
  br label %bb158
bb158:
  %t692 = load i1, ptr %l360, !tbaa !21
  br i1 %t692, label %bb159, label %bb160
bb159:
  %t693 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t695 = trunc i64 20 to i32
  %t696 = icmp eq i32 %t693, %t695
  store i1 %t696, ptr %l361, !tbaa !21
  br label %bb161
bb160:
  store i1 false, ptr %l361, !tbaa !21
  br label %bb161
bb161:
  %t698 = load i1, ptr %l361, !tbaa !21
  br i1 %t698, label %bb162, label %bb163
bb162:
  %t699 = load ptr, ptr %l0, !tbaa !29
  %t701 = getelementptr %"compiler/check:Checker", ptr %t699, i32 0, i32 1
  %t702 = load ptr, ptr %t701, !tbaa !29
  %t704 = getelementptr %"compiler/generic:Program", ptr %t702, i32 0, i32 2
  %t705 = load i32, ptr %l4, !tbaa !23
  %t708 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t704, i32 %t705)
  store i32 %t708, ptr %l368
  br label %bb164
bb163:
  br label %bb223
bb164:
  %t709 = load i32, ptr %l368, !tbaa !23
  store i32 %t709, ptr %l12, !tbaa !23
  %t710 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t712 = trunc i64 20 to i32
  %t713 = icmp eq i32 %t710, %t712
  br i1 %t713, label %bb165, label %bb166
bb165:
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t717 = getelementptr %"compiler/check:Checker", ptr %t715, i32 0, i32 1
  %t718 = load ptr, ptr %t717, !tbaa !29
  %t720 = getelementptr %"compiler/generic:Program", ptr %t718, i32 0, i32 2
  %t721 = load i32, ptr %l2, !tbaa !23
  %t724 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t720, i32 %t721)
  store i32 %t724, ptr %l376
  br label %bb167
bb166:
  %t725 = load i32, ptr %l2, !tbaa !23
  store i32 %t725, ptr %l371, !tbaa !23
  br label %bb168
bb167:
  %t727 = load i32, ptr %l376, !tbaa !23
  store i32 %t727, ptr %l371, !tbaa !23
  br label %bb168
bb168:
  %t728 = load i32, ptr %l371, !tbaa !23
  store i32 %t728, ptr %l13, !tbaa !23
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t731 = getelementptr %"compiler/check:Checker", ptr %t729, i32 0, i32 1
  %t732 = load ptr, ptr %t731, !tbaa !29
  %t734 = getelementptr %"compiler/generic:Program", ptr %t732, i32 0, i32 2
  %t735 = load i32, ptr %l12, !tbaa !23
  %t736 = load i32, ptr %l13, !tbaa !23
  %t740 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t734, i32 %t735, i32 %t736)
  store i1 %t740, ptr %l383
  br label %bb169
bb169:
  %t741 = load i1, ptr %l383, !tbaa !21
  %t742 = xor i1 %t741, true
  br i1 %t742, label %bb170, label %bb171
bb170:
  %t744 = load ptr, ptr %l0, !tbaa !29
  store ptr %t744, ptr %l386, !tbaa !29
  %t745 = load i32, ptr %l12, !tbaa !23
  store i32 %t745, ptr %l387, !tbaa !23
  %t746 = load ptr, ptr %l0, !tbaa !29
  %t747 = load i32, ptr %l13, !tbaa !23
  %t750 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t746, i32 %t747)
  store i32 %t750, ptr %l390
  br label %bb172
bb171:
  store i1 false, ptr %l385, !tbaa !21
  br label %bb174
bb172:
  %t751 = load ptr, ptr %l386, !tbaa !29
  %t752 = load i32, ptr %l387, !tbaa !23
  %t753 = load i32, ptr %l390, !tbaa !23
  %t754 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t751, i32 %t752, i32 %t753)
  store i1 %t754, ptr %l391
  br label %bb173
bb173:
  %t755 = load i1, ptr %l391, !tbaa !21
  store i1 %t755, ptr %l385, !tbaa !21
  br label %bb174
bb174:
  %t756 = load i1, ptr %l385, !tbaa !21
  br i1 %t756, label %bb175, label %bb176
bb175:
  store %olang.scope zeroinitializer, ptr %s17
  %t757 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t759 = trunc i64 20 to i32
  %t760 = icmp eq i32 %t757, %t759
  %t762 = xor i1 %t760, true
  br i1 %t762, label %bb177, label %bb178
bb176:
  br label %bb200
bb177:
  %t764 = load ptr, ptr %l0, !tbaa !29
  store ptr %t764, ptr %l395, !tbaa !29
  %t765 = load ptr, ptr %l0, !tbaa !29
  store ptr %t765, ptr %l396, !tbaa !29
  %t766 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t766, ptr %l397
  %t767 = load ptr, ptr %l1, !tbaa !29
  store ptr %t767, ptr %l398, !tbaa !29
  %t768 = load ptr, ptr %l0, !tbaa !29
  %t770 = getelementptr %"compiler/check:Checker", ptr %t768, i32 0, i32 1
  %t771 = load ptr, ptr %t770, !tbaa !29
  %t773 = getelementptr %"compiler/generic:Program", ptr %t771, i32 0, i32 2
  store ptr %t773, ptr %l401, !tbaa !29
  %t774 = load i32, ptr %l13, !tbaa !23
  store i32 %t774, ptr %l402, !tbaa !23
  %t775 = load ptr, ptr %l0, !tbaa !29
  %t777 = getelementptr %"compiler/check:Checker", ptr %t775, i32 0, i32 1
  %t778 = load ptr, ptr %t777, !tbaa !29
  %t780 = getelementptr %"compiler/generic:Program", ptr %t778, i32 0, i32 2
  %t781 = load i32, ptr %l4, !tbaa !23
  %t784 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t780, i32 %t781)
  store i64 %t784, ptr %l407
  br label %bb179
bb178:
  br label %bb183
bb179:
  %t785 = load ptr, ptr %l401, !tbaa !29
  %t786 = load i32, ptr %l402, !tbaa !23
  %t787 = load i64, ptr %l407, !tbaa !24
  %t788 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t785, i32 %t786, i64 %t787)
  store i32 %t788, ptr %l408
  br label %bb180
bb180:
  %t789 = load ptr, ptr %l396, !tbaa !29
  %t790 = load %"compiler/source:Span", ptr %l397
  %t791 = load ptr, ptr %l398, !tbaa !29
  %t792 = load i32, ptr %l408, !tbaa !23
  %t793 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v0, ptr %t789, %"compiler/source:Span" %t790, ptr %t791, i32 %t792)
  store ptr %t793, ptr %l409
  br label %bb181
bb181:
  %t794 = load i32, ptr %l2, !tbaa !23
  %t795 = load %"compiler/source:Span", ptr %l3
  %t796 = load ptr, ptr %l395, !tbaa !29
  %t797 = load ptr, ptr %l409, !tbaa !29
  %t800 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v2, ptr %t796, ptr %t797, i32 %t794, %"compiler/source:Span" %t795)
  store ptr %t800, ptr %l412
  br label %bb182
bb182:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  %t801 = load ptr, ptr %l412, !tbaa !29
  store ptr %t801, ptr %rv
  br label %ret
bb183:
  %t802 = load ptr, ptr %l0, !tbaa !29
  store ptr %t802, ptr %l413, !tbaa !29
  %t803 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t803, ptr %l414
  %t804 = load ptr, ptr %l1, !tbaa !29
  store ptr %t804, ptr %l415, !tbaa !29
  %t805 = load ptr, ptr %l0, !tbaa !29
  %t807 = getelementptr %"compiler/check:Checker", ptr %t805, i32 0, i32 1
  %t808 = load ptr, ptr %t807, !tbaa !29
  %t810 = getelementptr %"compiler/generic:Program", ptr %t808, i32 0, i32 2
  store ptr %t810, ptr %l418, !tbaa !29
  %t811 = load i32, ptr %l13, !tbaa !23
  store i32 %t811, ptr %l419, !tbaa !23
  %t812 = load ptr, ptr %l0, !tbaa !29
  %t814 = getelementptr %"compiler/check:Checker", ptr %t812, i32 0, i32 1
  %t815 = load ptr, ptr %t814, !tbaa !29
  %t817 = getelementptr %"compiler/generic:Program", ptr %t815, i32 0, i32 2
  %t818 = load i32, ptr %l4, !tbaa !23
  %t821 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t817, i32 %t818)
  store i64 %t821, ptr %l424
  br label %bb184
bb184:
  %t822 = load ptr, ptr %l418, !tbaa !29
  %t823 = load i32, ptr %l419, !tbaa !23
  %t824 = load i64, ptr %l424, !tbaa !24
  %t825 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t822, i32 %t823, i64 %t824)
  store i32 %t825, ptr %l425
  br label %bb185
bb185:
  %t826 = load ptr, ptr %l413, !tbaa !29
  %t827 = load %"compiler/source:Span", ptr %l414
  %t828 = load ptr, ptr %l415, !tbaa !29
  %t829 = load i32, ptr %l425, !tbaa !23
  %t830 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %t826, %"compiler/source:Span" %t827, ptr %t828, i32 %t829)
  store ptr %t830, ptr %l426
  br label %bb186
bb186:
  %t831 = load ptr, ptr %l426, !tbaa !29
  store ptr %t831, ptr %l14, !tbaa !29
  %t832 = load ptr, ptr %l0, !tbaa !29
  %t833 = load i32, ptr %l2, !tbaa !23
  %t836 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t832, i32 %t833)
  store i1 %t836, ptr %l429
  br label %bb187
bb187:
  %t837 = load i1, ptr %l429, !tbaa !21
  %t838 = xor i1 %t837, true
  br i1 %t838, label %bb188, label %bb189
bb188:
  %t840 = load ptr, ptr %l14, !tbaa !29
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t840, ptr %rv
  br label %ret
bb189:
  br label %bb190
bb190:
  %t842 = load ptr, ptr %l0, !tbaa !29
  store ptr %t842, ptr %l432, !tbaa !29
  %t843 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t843, ptr %l433
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t846 = getelementptr %"compiler/check:Checker", ptr %t844, i32 0, i32 1
  %t847 = load ptr, ptr %t846, !tbaa !29
  %t849 = getelementptr %"compiler/generic:Program", ptr %t847, i32 0, i32 2
  store ptr %t849, ptr %l436, !tbaa !29
  %t850 = load i32, ptr %l12, !tbaa !23
  store i32 %t850, ptr %l437, !tbaa !23
  %t851 = load ptr, ptr %l0, !tbaa !29
  %t853 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t851)
  store i32 %t853, ptr %l439
  br label %bb191
bb191:
  %t854 = load ptr, ptr %l436, !tbaa !29
  %t855 = load i32, ptr %l437, !tbaa !23
  %t856 = load i32, ptr %l439, !tbaa !23
  %t857 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t854, i32 %t855, i32 %t856)
  store i1 %t857, ptr %l440
  br label %bb192
bb192:
  %t858 = load i1, ptr %l440, !tbaa !21
  br i1 %t858, label %bb193, label %bb194
bb193:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t860 = load %"compiler/source:Span", ptr %l3
  %t863 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s17, ptr %t859, %"compiler/source:Span" %t860)
  store { i64, ptr } %t863, ptr %l444
  br label %bb195
bb194:
  %t864 = load ptr, ptr %l0, !tbaa !29
  %t865 = load %"compiler/source:Span", ptr %l3
  %t868 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s17, ptr %t864, %"compiler/source:Span" %t865)
  store { i64, ptr } %t868, ptr %l449
  br label %bb196
bb195:
  %t869 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t870 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t871 = load { i64, ptr }, ptr %l444, !tbaa !27
  %t872 = extractvalue { i64, ptr } %t871, 1
  %t873 = extractvalue { i64, ptr } %t871, 0
  %t874 = add i64 %t870, %t873
  %t875 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t876 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t877 = add i64 %t874, %t876
  %t878 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t877)
  call void @olang_textcopy(ptr %t878, ptr %t869, i64 %t870)
  %t879 = getelementptr i8, ptr %t878, i64 %t870
  call void @olang_textcopy(ptr %t879, ptr %t872, i64 %t873)
  %t880 = getelementptr i8, ptr %t879, i64 %t873
  call void @olang_textcopy(ptr %t880, ptr %t875, i64 %t876)
  %t881 = insertvalue { i64, ptr } undef, i64 %t877, 0
  %t882 = insertvalue { i64, ptr } %t881, ptr %t878, 1
  %t884 = extractvalue { i64, ptr } %t882, 0
  %t885 = extractvalue { i64, ptr } %t882, 1
  %t886 = mul i64 %t884, 1
  %t887 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t886)
  call void @llvm.memcpy.p0.p0.i64(ptr %t887, ptr %t885, i64 %t886, i1 false)
  %t888 = insertvalue { i64, ptr } undef, i64 %t884, 0
  %t889 = insertvalue { i64, ptr } %t888, ptr %t887, 1
  store { i64, ptr } %t889, ptr %l441, !tbaa !27
  br label %bb197
bb196:
  %t891 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t892 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t893 = load { i64, ptr }, ptr %l449, !tbaa !27
  %t894 = extractvalue { i64, ptr } %t893, 1
  %t895 = extractvalue { i64, ptr } %t893, 0
  %t896 = add i64 %t892, %t895
  %t897 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t898 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t899 = add i64 %t896, %t898
  %t900 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t899)
  call void @olang_textcopy(ptr %t900, ptr %t891, i64 %t892)
  %t901 = getelementptr i8, ptr %t900, i64 %t892
  call void @olang_textcopy(ptr %t901, ptr %t894, i64 %t895)
  %t902 = getelementptr i8, ptr %t901, i64 %t895
  call void @olang_textcopy(ptr %t902, ptr %t897, i64 %t898)
  %t903 = insertvalue { i64, ptr } undef, i64 %t899, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr %t900, 1
  %t906 = extractvalue { i64, ptr } %t904, 0
  %t907 = extractvalue { i64, ptr } %t904, 1
  %t908 = mul i64 %t906, 1
  %t909 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t908)
  call void @llvm.memcpy.p0.p0.i64(ptr %t909, ptr %t907, i64 %t908, i1 false)
  %t910 = insertvalue { i64, ptr } undef, i64 %t906, 0
  %t911 = insertvalue { i64, ptr } %t910, ptr %t909, 1
  store { i64, ptr } %t911, ptr %l441, !tbaa !27
  br label %bb197
bb197:
  %t913 = load { i64, ptr }, ptr %l441, !tbaa !27
  %t914 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstToMutRef(ptr %s17, ptr %s17, { i64, ptr } %t913)
  store %"compiler/diagmsg:Msg" %t914, ptr %l452
  br label %bb198
bb198:
  %t915 = load ptr, ptr %l432, !tbaa !29
  %t916 = load %"compiler/source:Span", ptr %l433
  %t917 = load %"compiler/diagmsg:Msg", ptr %l452
  %t918 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s17, ptr %t915, %"compiler/source:Span" %t916, %"compiler/diagmsg:Msg" %t917)
  store i64 %t918, ptr %l453
  br label %bb199
bb199:
  %t919 = load ptr, ptr %l14, !tbaa !29
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t919, ptr %rv
  br label %ret
bb200:
  %t921 = load ptr, ptr %l0, !tbaa !29
  %t922 = load i32, ptr %l13, !tbaa !23
  %t925 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t921, i32 %t922)
  store i32 %t925, ptr %l457
  br label %bb201
bb201:
  %t926 = load i32, ptr %l457, !tbaa !23
  store i32 %t926, ptr %l15, !tbaa !23
  %t927 = load ptr, ptr %l0, !tbaa !29
  %t929 = getelementptr %"compiler/check:Checker", ptr %t927, i32 0, i32 1
  %t930 = load ptr, ptr %t929, !tbaa !29
  %t932 = getelementptr %"compiler/generic:Program", ptr %t930, i32 0, i32 2
  %t933 = load i32, ptr %l15, !tbaa !23
  %t936 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t932, i32 %t933)
  store i32 %t936, ptr %l462
  br label %bb202
bb202:
  %t937 = load i32, ptr %l462, !range !{i32 0, i32 33}
  %t939 = trunc i64 19 to i32
  %t940 = icmp eq i32 %t937, %t939
  br i1 %t940, label %bb203, label %bb204
bb203:
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t944 = getelementptr %"compiler/check:Checker", ptr %t942, i32 0, i32 1
  %t945 = load ptr, ptr %t944, !tbaa !29
  %t947 = getelementptr %"compiler/generic:Program", ptr %t945, i32 0, i32 2
  %t948 = load i32, ptr %l15, !tbaa !23
  %t951 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t947, i32 %t948)
  store i32 %t951, ptr %l470
  br label %bb205
bb204:
  store i1 false, ptr %l465, !tbaa !21
  br label %bb206
bb205:
  %t952 = load i32, ptr %l470, !tbaa !23
  %t953 = icmp ne i32 %t952, 0
  store i1 %t953, ptr %l465, !tbaa !21
  br label %bb206
bb206:
  %t955 = load i1, ptr %l465, !tbaa !21
  br i1 %t955, label %bb207, label %bb208
bb207:
  %t956 = load ptr, ptr %l0, !tbaa !29
  store ptr %t956, ptr %l473, !tbaa !29
  %t957 = load ptr, ptr %l0, !tbaa !29
  %t959 = getelementptr %"compiler/check:Checker", ptr %t957, i32 0, i32 1
  %t960 = load ptr, ptr %t959, !tbaa !29
  %t962 = getelementptr %"compiler/generic:Program", ptr %t960, i32 0, i32 2
  store ptr %t962, ptr %l476, !tbaa !29
  %t963 = load ptr, ptr %l0, !tbaa !29
  %t964 = load i32, ptr %l12, !tbaa !23
  %t967 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t963, i32 %t964)
  store i32 %t967, ptr %l479
  br label %bb209
bb208:
  store i1 false, ptr %l472, !tbaa !21
  br label %bb213
bb209:
  %t968 = load ptr, ptr %l476, !tbaa !29
  %t969 = load i32, ptr %l479, !tbaa !23
  %t970 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t968, i32 %t969)
  store i32 %t970, ptr %l480
  br label %bb210
bb210:
  %t971 = load ptr, ptr %l0, !tbaa !29
  %t973 = getelementptr %"compiler/check:Checker", ptr %t971, i32 0, i32 1
  %t974 = load ptr, ptr %t973, !tbaa !29
  %t976 = getelementptr %"compiler/generic:Program", ptr %t974, i32 0, i32 2
  %t977 = load i32, ptr %l15, !tbaa !23
  %t980 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t976, i32 %t977)
  store i32 %t980, ptr %l485
  br label %bb211
bb211:
  %t981 = load ptr, ptr %l473, !tbaa !29
  %t982 = load i32, ptr %l480, !tbaa !23
  %t983 = load i32, ptr %l485, !tbaa !23
  %t984 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t981, i32 %t982, i32 %t983)
  store i1 %t984, ptr %l486
  br label %bb212
bb212:
  %t985 = load i1, ptr %l486, !tbaa !21
  store i1 %t985, ptr %l472, !tbaa !21
  br label %bb213
bb213:
  %t986 = load i1, ptr %l472, !tbaa !21
  br i1 %t986, label %bb214, label %bb215
bb214:
  %t987 = load ptr, ptr %l0, !tbaa !29
  store ptr %t987, ptr %l487, !tbaa !29
  %t988 = load ptr, ptr %l1, !tbaa !29
  store ptr %t988, ptr %l488, !tbaa !29
  %t989 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t989, ptr %l489
  %t990 = load i32, ptr %l13, !tbaa !23
  store i32 %t990, ptr %l490, !tbaa !23
  %t991 = load ptr, ptr %l0, !tbaa !29
  %t993 = getelementptr %"compiler/check:Checker", ptr %t991, i32 0, i32 1
  %t994 = load ptr, ptr %t993, !tbaa !29
  %t996 = getelementptr %"compiler/generic:Program", ptr %t994, i32 0, i32 2
  store ptr %t996, ptr %l493, !tbaa !29
  %t997 = load ptr, ptr %l0, !tbaa !29
  %t999 = getelementptr %"compiler/check:Checker", ptr %t997, i32 0, i32 1
  %t1000 = load ptr, ptr %t999, !tbaa !29
  %t1002 = getelementptr %"compiler/generic:Program", ptr %t1000, i32 0, i32 2
  %t1003 = load i32, ptr %l15, !tbaa !23
  %t1006 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t1002, i32 %t1003)
  store i32 %t1006, ptr %l498
  br label %bb216
bb215:
  br label %bb222
bb216:
  %t1007 = load ptr, ptr %l493, !tbaa !29
  %t1008 = load i32, ptr %l498, !tbaa !23
  %t1009 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t1007, i32 %t1008)
  store i64 %t1009, ptr %l499
  br label %bb217
bb217:
  %t1010 = load ptr, ptr %l487, !tbaa !29
  %t1011 = load ptr, ptr %l488, !tbaa !29
  %t1012 = load %"compiler/source:Span", ptr %l489
  %t1013 = load i32, ptr %l490, !tbaa !23
  %t1014 = load i64, ptr %l499, !tbaa !24
  %t1015 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataAsFixed(ptr %v0, ptr %v1, ptr %v2, ptr %t1010, ptr %t1011, %"compiler/source:Span" %t1012, i32 %t1013, i64 %t1014)
  store ptr %t1015, ptr %l500
  br label %bb218
bb218:
  %t1016 = load ptr, ptr %l500, !tbaa !29
  store ptr %t1016, ptr %l16, !tbaa !29
  %t1017 = load ptr, ptr %l16, !tbaa !29
  %t1019 = icmp eq ptr %t1017, null
  %t1021 = xor i1 %t1019, true
  br i1 %t1021, label %bb219, label %bb220
bb219:
  %t1023 = load ptr, ptr %l16, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1023, ptr %rv
  br label %ret
bb220:
  br label %bb221
bb221:
  br label %bb222
bb222:
  br label %bb223
bb223:
  %t1025 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t1027 = trunc i64 19 to i32
  %t1028 = icmp eq i32 %t1025, %t1027
  br i1 %t1028, label %bb224, label %bb225
bb224:
  %t1030 = load ptr, ptr %l1, !tbaa !29
  %t1032 = call i1 @compiler_2fcheck_2eisArrayMake(ptr %v1, ptr %t1030)
  store i1 %t1032, ptr %l509
  br label %bb226
bb225:
  store i1 false, ptr %l507, !tbaa !21
  br label %bb227
bb226:
  %t1033 = load i1, ptr %l509, !tbaa !21
  store i1 %t1033, ptr %l507, !tbaa !21
  br label %bb227
bb227:
  %t1034 = load i1, ptr %l507, !tbaa !21
  br i1 %t1034, label %bb228, label %bb229
bb228:
  %t1035 = load ptr, ptr %l0, !tbaa !29
  %t1036 = load i32, ptr %l2, !tbaa !23
  %t1039 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1035, i32 %t1036)
  store i32 %t1039, ptr %l512
  br label %bb230
bb229:
  br label %bb251
bb230:
  %t1040 = load i32, ptr %l512, !tbaa !23
  store i32 %t1040, ptr %l17, !tbaa !23
  %t1041 = load ptr, ptr %l0, !tbaa !29
  %t1042 = load i32, ptr %l17, !tbaa !23
  %t1045 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t1041, i32 %t1042)
  store i1 %t1045, ptr %l515
  br label %bb231
bb231:
  %t1046 = load i1, ptr %l515, !tbaa !21
  br i1 %t1046, label %bb232, label %bb233
bb232:
  %t1047 = load ptr, ptr %l0, !tbaa !29
  %t1049 = getelementptr %"compiler/check:Checker", ptr %t1047, i32 0, i32 1
  %t1050 = load ptr, ptr %t1049, !tbaa !29
  %t1052 = getelementptr %"compiler/generic:Program", ptr %t1050, i32 0, i32 2
  store ptr %t1052, ptr %l519, !tbaa !29
  %t1053 = load ptr, ptr %l0, !tbaa !29
  %t1054 = load i32, ptr %l17, !tbaa !23
  %t1057 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1053, i32 %t1054)
  store i32 %t1057, ptr %l522
  br label %bb234
bb233:
  store i1 false, ptr %l516, !tbaa !21
  br label %bb236
bb234:
  %t1058 = load ptr, ptr %l519, !tbaa !29
  %t1059 = load i32, ptr %l522, !tbaa !23
  %t1060 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1058, i32 %t1059)
  store i32 %t1060, ptr %l523
  br label %bb235
bb235:
  %t1061 = load i32, ptr %l523, !range !{i32 0, i32 33}
  %t1063 = trunc i64 19 to i32
  %t1064 = icmp eq i32 %t1061, %t1063
  store i1 %t1064, ptr %l516, !tbaa !21
  br label %bb236
bb236:
  %t1066 = load i1, ptr %l516, !tbaa !21
  br i1 %t1066, label %bb237, label %bb238
bb237:
  %t1067 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1067, ptr %l527, !tbaa !29
  %t1068 = load ptr, ptr %l0, !tbaa !29
  %t1070 = getelementptr %"compiler/check:Checker", ptr %t1068, i32 0, i32 1
  %t1071 = load ptr, ptr %t1070, !tbaa !29
  %t1073 = getelementptr %"compiler/generic:Program", ptr %t1071, i32 0, i32 2
  %t1074 = load i32, ptr %l4, !tbaa !23
  %t1077 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t1073, i32 %t1074)
  store i32 %t1077, ptr %l532
  br label %bb239
bb238:
  store i1 false, ptr %l526, !tbaa !21
  br label %bb243
bb239:
  %t1078 = load ptr, ptr %l0, !tbaa !29
  %t1080 = getelementptr %"compiler/check:Checker", ptr %t1078, i32 0, i32 1
  %t1081 = load ptr, ptr %t1080, !tbaa !29
  %t1083 = getelementptr %"compiler/generic:Program", ptr %t1081, i32 0, i32 2
  store ptr %t1083, ptr %l535, !tbaa !29
  %t1084 = load ptr, ptr %l0, !tbaa !29
  %t1085 = load i32, ptr %l17, !tbaa !23
  %t1088 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1084, i32 %t1085)
  store i32 %t1088, ptr %l538
  br label %bb240
bb240:
  %t1089 = load ptr, ptr %l535, !tbaa !29
  %t1090 = load i32, ptr %l538, !tbaa !23
  %t1091 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t1089, i32 %t1090)
  store i32 %t1091, ptr %l539
  br label %bb241
bb241:
  %t1092 = load ptr, ptr %l527, !tbaa !29
  %t1093 = load i32, ptr %l532, !tbaa !23
  %t1094 = load i32, ptr %l539, !tbaa !23
  %t1095 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t1092, i32 %t1093, i32 %t1094)
  store i1 %t1095, ptr %l540
  br label %bb242
bb242:
  %t1096 = load i1, ptr %l540, !tbaa !21
  store i1 %t1096, ptr %l526, !tbaa !21
  br label %bb243
bb243:
  %t1097 = load i1, ptr %l526, !tbaa !21
  br i1 %t1097, label %bb244, label %bb245
bb244:
  %t1098 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1098, ptr %l541, !tbaa !29
  %t1099 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1099, ptr %l542
  %t1100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1100, ptr %l543, !tbaa !29
  %t1101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1101, ptr %l544, !tbaa !29
  %t1102 = load ptr, ptr %l0, !tbaa !29
  %t1103 = load i32, ptr %l17, !tbaa !23
  %t1106 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1102, i32 %t1103)
  store i32 %t1106, ptr %l547
  br label %bb246
bb245:
  br label %bb250
bb246:
  %t1107 = load %"compiler/source:Span", ptr %l3
  %t1108 = load ptr, ptr %l543, !tbaa !29
  %t1109 = load ptr, ptr %l544, !tbaa !29
  %t1110 = load i32, ptr %l547, !tbaa !23
  %t1112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t1108, ptr %t1109, i32 %t1110, %"compiler/source:Span" %t1107)
  store ptr %t1112, ptr %l549
  br label %bb247
bb247:
  %t1113 = load i32, ptr %l17, !tbaa !23
  %t1114 = load ptr, ptr %l541, !tbaa !29
  %t1115 = load %"compiler/source:Span", ptr %l542
  %t1116 = load ptr, ptr %l549, !tbaa !29
  %t1118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t1114, %"compiler/source:Span" %t1115, ptr %t1116, i32 %t1113)
  store ptr %t1118, ptr %l551
  br label %bb248
bb248:
  %t1119 = load ptr, ptr %l551, !tbaa !29
  %t1120 = load ptr, ptr %l0, !tbaa !29
  %t1122 = load i32, ptr %l2, !tbaa !23
  %t1123 = load %"compiler/source:Span", ptr %l3
  %t1128 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t1120, ptr %t1119, i32 %t1122, %"compiler/source:Span" %t1123)
  store ptr %t1128, ptr %l556
  br label %bb249
bb249:
  call void @__olang_scope_close(ptr %s0)
  %t1129 = load ptr, ptr %l556, !tbaa !29
  store ptr %t1129, ptr %rv
  br label %ret
bb250:
  br label %bb251
bb251:
  %t1130 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t1132 = trunc i64 21 to i32
  %t1133 = icmp eq i32 %t1130, %t1132
  br i1 %t1133, label %bb252, label %bb253
bb252:
  %t1135 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1137 = trunc i64 21 to i32
  %t1138 = icmp eq i32 %t1135, %t1137
  store i1 %t1138, ptr %l559, !tbaa !21
  br label %bb254
bb253:
  store i1 false, ptr %l559, !tbaa !21
  br label %bb254
bb254:
  %t1140 = load i1, ptr %l559, !tbaa !21
  br i1 %t1140, label %bb255, label %bb256
bb255:
  %t1141 = load ptr, ptr %l0, !tbaa !29
  %t1143 = getelementptr %"compiler/check:Checker", ptr %t1141, i32 0, i32 1
  %t1144 = load ptr, ptr %t1143, !tbaa !29
  %t1146 = getelementptr %"compiler/generic:Program", ptr %t1144, i32 0, i32 2
  %t1147 = load i32, ptr %l4, !tbaa !23
  %t1150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t1146, i32 %t1147)
  store i32 %t1150, ptr %l567
  br label %bb257
bb256:
  store i1 false, ptr %l562, !tbaa !21
  br label %bb259
bb257:
  %t1151 = load ptr, ptr %l0, !tbaa !29
  %t1153 = getelementptr %"compiler/check:Checker", ptr %t1151, i32 0, i32 1
  %t1154 = load ptr, ptr %t1153, !tbaa !29
  %t1156 = getelementptr %"compiler/generic:Program", ptr %t1154, i32 0, i32 2
  %t1157 = load i32, ptr %l2, !tbaa !23
  %t1160 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t1156, i32 %t1157)
  store i32 %t1160, ptr %l572
  br label %bb258
bb258:
  %t1161 = load i32, ptr %l567, !tbaa !23
  %t1162 = load i32, ptr %l572, !tbaa !23
  %t1163 = icmp ne i32 %t1161, %t1162
  store i1 %t1163, ptr %l562, !tbaa !21
  br label %bb259
bb259:
  %t1165 = load i1, ptr %l562, !tbaa !21
  br i1 %t1165, label %bb260, label %bb261
bb260:
  %t1166 = load ptr, ptr %l0, !tbaa !29
  %t1168 = getelementptr %"compiler/check:Checker", ptr %t1166, i32 0, i32 1
  %t1169 = load ptr, ptr %t1168, !tbaa !29
  %t1171 = getelementptr %"compiler/generic:Program", ptr %t1169, i32 0, i32 2
  %t1172 = load i32, ptr %l4, !tbaa !23
  %t1175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t1171, i32 %t1172)
  store i32 %t1175, ptr %l579
  br label %bb262
bb261:
  store i1 false, ptr %l574, !tbaa !21
  br label %bb263
bb262:
  %t1176 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1177 = load i32, ptr %l579, !tbaa !23
  %t1179 = icmp ne i32 %t1177, %t1176
  store i1 %t1179, ptr %l574, !tbaa !21
  br label %bb263
bb263:
  %t1181 = load i1, ptr %l574, !tbaa !21
  br i1 %t1181, label %bb264, label %bb265
bb264:
  %t1182 = load ptr, ptr %l0, !tbaa !29
  %t1184 = getelementptr %"compiler/check:Checker", ptr %t1182, i32 0, i32 1
  %t1185 = load ptr, ptr %t1184, !tbaa !29
  %t1187 = getelementptr %"compiler/generic:Program", ptr %t1185, i32 0, i32 2
  %t1188 = load i32, ptr %l2, !tbaa !23
  %t1191 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t1187, i32 %t1188)
  store i32 %t1191, ptr %l587
  br label %bb266
bb265:
  store i1 false, ptr %l582, !tbaa !21
  br label %bb267
bb266:
  %t1192 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1193 = load i32, ptr %l587, !tbaa !23
  %t1195 = icmp ne i32 %t1193, %t1192
  store i1 %t1195, ptr %l582, !tbaa !21
  br label %bb267
bb267:
  %t1197 = load i1, ptr %l582, !tbaa !21
  br i1 %t1197, label %bb268, label %bb269
bb268:
  store %olang.scope zeroinitializer, ptr %s26
  %t1198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1198, ptr %l590, !tbaa !29
  %t1199 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1199, ptr %l591
  %t1200 = load ptr, ptr %l0, !tbaa !29
  %t1201 = load i32, ptr %l2, !tbaa !23
  %t1204 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s26, ptr %t1200, i32 %t1201)
  store { i64, ptr } %t1204, ptr %l594
  br label %bb270
bb269:
  br label %bb276
bb270:
  %t1205 = load { i64, ptr }, ptr %l594, !tbaa !27
  %t1206 = extractvalue { i64, ptr } %t1205, 0
  %t1207 = extractvalue { i64, ptr } %t1205, 1
  %t1208 = mul i64 %t1206, 1
  %t1209 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1208)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1209, ptr %t1207, i64 %t1208, i1 false)
  %t1210 = insertvalue { i64, ptr } undef, i64 %t1206, 0
  %t1211 = insertvalue { i64, ptr } %t1210, ptr %t1209, 1
  store { i64, ptr } %t1211, ptr %l595, !tbaa !27
  %t1212 = load ptr, ptr %l0, !tbaa !29
  %t1213 = load i32, ptr %l4, !tbaa !23
  %t1216 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s26, ptr %t1212, i32 %t1213)
  store { i64, ptr } %t1216, ptr %l598
  br label %bb271
bb271:
  %t1217 = load { i64, ptr }, ptr %l598, !tbaa !27
  %t1218 = extractvalue { i64, ptr } %t1217, 0
  %t1219 = extractvalue { i64, ptr } %t1217, 1
  %t1220 = mul i64 %t1218, 1
  %t1221 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1221, ptr %t1219, i64 %t1220, i1 false)
  %t1222 = insertvalue { i64, ptr } undef, i64 %t1218, 0
  %t1223 = insertvalue { i64, ptr } %t1222, ptr %t1221, 1
  store { i64, ptr } %t1223, ptr %l599, !tbaa !27
  %t1224 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1224, ptr %l600, !tbaa !29
  %t1225 = load ptr, ptr %l0, !tbaa !29
  %t1227 = getelementptr %"compiler/check:Checker", ptr %t1225, i32 0, i32 1
  %t1228 = load ptr, ptr %t1227, !tbaa !29
  %t1230 = getelementptr %"compiler/generic:Program", ptr %t1228, i32 0, i32 2
  %t1231 = load i32, ptr %l2, !tbaa !23
  %t1234 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t1230, i32 %t1231)
  store i32 %t1234, ptr %l605
  br label %bb272
bb272:
  %t1235 = load ptr, ptr %l600, !tbaa !29
  %t1236 = load i32, ptr %l605, !tbaa !23
  %t1237 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s26, ptr %t1235, i32 %t1236)
  store { i64, ptr } %t1237, ptr %l606
  br label %bb273
bb273:
  %t1238 = load { i64, ptr }, ptr %l606, !tbaa !27
  %t1239 = extractvalue { i64, ptr } %t1238, 0
  %t1240 = extractvalue { i64, ptr } %t1238, 1
  %t1241 = mul i64 %t1239, 1
  %t1242 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1241)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1242, ptr %t1240, i64 %t1241, i1 false)
  %t1243 = insertvalue { i64, ptr } undef, i64 %t1239, 0
  %t1244 = insertvalue { i64, ptr } %t1243, ptr %t1242, 1
  %t1245 = load { i64, ptr }, ptr %l595, !tbaa !27
  %t1246 = load { i64, ptr }, ptr %l599, !tbaa !27
  %t1248 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclMismatch(ptr %s26, ptr %s26, ptr %s26, ptr %s26, { i64, ptr } %t1245, { i64, ptr } %t1246, { i64, ptr } %t1244)
  store %"compiler/diagmsg:Msg" %t1248, ptr %l608
  br label %bb274
bb274:
  %t1249 = load ptr, ptr %l590, !tbaa !29
  %t1250 = load %"compiler/source:Span", ptr %l591
  %t1251 = load %"compiler/diagmsg:Msg", ptr %l608
  %t1252 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s26, ptr %t1249, %"compiler/source:Span" %t1250, %"compiler/diagmsg:Msg" %t1251)
  store i64 %t1252, ptr %l609
  br label %bb275
bb275:
  %t1253 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1253, ptr %rv
  br label %ret
bb276:
  %t1255 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t1257 = trunc i64 21 to i32
  %t1258 = icmp eq i32 %t1255, %t1257
  br i1 %t1258, label %bb277, label %bb278
bb277:
  %t1260 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1262 = trunc i64 21 to i32
  %t1263 = icmp eq i32 %t1260, %t1262
  store i1 %t1263, ptr %l613, !tbaa !21
  br label %bb279
bb278:
  store i1 false, ptr %l613, !tbaa !21
  br label %bb279
bb279:
  %t1265 = load i1, ptr %l613, !tbaa !21
  br i1 %t1265, label %bb280, label %bb281
bb280:
  %t1266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1266, ptr %l617, !tbaa !29
  %t1267 = load i32, ptr %l4, !tbaa !23
  store i32 %t1267, ptr %l618, !tbaa !23
  %t1268 = load i32, ptr %l2, !tbaa !23
  store i32 %t1268, ptr %l619, !tbaa !23
  %t1269 = load ptr, ptr %l1, !tbaa !29
  %t1271 = call i1 @compiler_2fcheck_2enamedFn(ptr %v1, ptr %t1269)
  store i1 %t1271, ptr %l621
  br label %bb282
bb281:
  store i1 false, ptr %l616, !tbaa !21
  br label %bb284
bb282:
  %t1272 = load ptr, ptr %l617, !tbaa !29
  %t1273 = load i32, ptr %l618, !tbaa !23
  %t1274 = load i32, ptr %l619, !tbaa !23
  %t1275 = load i1, ptr %l621, !tbaa !21
  %t1276 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efuncFits(ptr %v0, ptr %t1272, i32 %t1273, i32 %t1274, i1 %t1275)
  store i1 %t1276, ptr %l622
  br label %bb283
bb283:
  %t1277 = load i1, ptr %l622, !tbaa !21
  store i1 %t1277, ptr %l616, !tbaa !21
  br label %bb284
bb284:
  %t1278 = load i1, ptr %l616, !tbaa !21
  br i1 %t1278, label %bb285, label %bb286
bb285:
  %t1279 = load ptr, ptr %l0, !tbaa !29
  %t1281 = getelementptr %"compiler/check:Checker", ptr %t1279, i32 0, i32 1
  %t1282 = load ptr, ptr %t1281, !tbaa !29
  %t1284 = getelementptr %"compiler/generic:Program", ptr %t1282, i32 0, i32 2
  %t1285 = load i32, ptr %l2, !tbaa !23
  %t1288 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t1284, i32 %t1285)
  store i64 %t1288, ptr %l627
  br label %bb287
bb286:
  br label %bb297
bb287:
  %t1289 = load i64, ptr @G_2ecompiler_2feffects_2eEffectWords, !tbaa !24
  %t1290 = load i64, ptr %l627, !tbaa !24
  %t1292 = and i64 %t1290, %t1289
  store i64 %t1292, ptr %l629, !tbaa !24
  %t1293 = load ptr, ptr %l0, !tbaa !29
  %t1295 = getelementptr %"compiler/check:Checker", ptr %t1293, i32 0, i32 1
  %t1296 = load ptr, ptr %t1295, !tbaa !29
  %t1298 = getelementptr %"compiler/generic:Program", ptr %t1296, i32 0, i32 2
  %t1299 = load i32, ptr %l4, !tbaa !23
  %t1302 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t1298, i32 %t1299)
  store i64 %t1302, ptr %l634
  br label %bb288
bb288:
  %t1303 = load i64, ptr %l634, !tbaa !24
  %t1304 = xor i64 %t1303, -1
  %t1305 = load i64, ptr %l629, !tbaa !24
  %t1307 = and i64 %t1305, %t1304
  %t1309 = icmp ne i64 %t1307, 0
  br i1 %t1309, label %bb289, label %bb290
bb289:
  %t1311 = load ptr, ptr %l0, !tbaa !29
  %t1313 = getelementptr %"compiler/check:Checker", ptr %t1311, i32 0, i32 62
  store ptr %t1313, ptr %l639, !tbaa !29
  %t1314 = load ptr, ptr %l0, !tbaa !29
  %t1316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1314)
  store ptr %t1316, ptr %l641
  br label %bb291
bb290:
  br label %bb295
bb291:
  %t1317 = load ptr, ptr %l641, !tbaa !29
  %t1319 = getelementptr %"compiler/check:frame", ptr %t1317, i32 0, i32 0
  %t1320 = load i64, ptr %t1319, !tbaa !24
  store i64 %t1320, ptr %l643, !tbaa !24
  %t1321 = load ptr, ptr %l0, !tbaa !29
  %t1323 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1321)
  store ptr %t1323, ptr %l645
  br label %bb292
bb292:
  %t1324 = load ptr, ptr %l645, !tbaa !29
  %t1326 = getelementptr %"compiler/check:frame", ptr %t1324, i32 0, i32 2
  %t1327 = load i64, ptr %t1326, !tbaa !24
  %t1328 = load %"compiler/source:Span", ptr %l3
  %t1329 = load ptr, ptr %l1, !tbaa !29
  %t1330 = load i32, ptr %l4, !tbaa !23
  %t1331 = load i32, ptr %l2, !tbaa !23
  %t1332 = load i64, ptr %l643, !tbaa !24
  %t1338 = call %"compiler/check:effectPlace" @compiler_2fcheck_3aeffectPlace_2ector(ptr %v1, ptr %v0, i64 %t1332, i64 %t1327, %"compiler/source:Span" %t1328, ptr %t1329, i32 %t1330, i32 %t1331)
  store %"compiler/check:effectPlace" %t1338, ptr %l652
  br label %bb293
bb293:
  %t1339 = load ptr, ptr %l639, !tbaa !29
  %t1340 = load %"compiler/check:effectPlace", ptr %l652
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2ePu_Hd9d57c30a8c259f951b68187085ac463(ptr %v0, ptr %v0, ptr %t1339, %"compiler/check:effectPlace" %t1340)
  br label %bb294
bb294:
  br label %bb295
bb295:
  %t1341 = load ptr, ptr %l0, !tbaa !29
  %t1342 = load %"compiler/source:Span", ptr %l3
  %t1343 = load ptr, ptr %l1, !tbaa !29
  %t1344 = load i32, ptr %l2, !tbaa !23
  %t1349 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %t1341, %"compiler/source:Span" %t1342, ptr %t1343, i32 %t1344)
  store ptr %t1349, ptr %l657
  br label %bb296
bb296:
  call void @__olang_scope_close(ptr %s0)
  %t1350 = load ptr, ptr %l657, !tbaa !29
  store ptr %t1350, ptr %rv
  br label %ret
bb297:
  %t1351 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1353 = trunc i64 21 to i32
  %t1354 = icmp eq i32 %t1351, %t1353
  br i1 %t1354, label %bb298, label %bb299
bb298:
  %t1356 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t1358 = trunc i64 21 to i32
  %t1359 = icmp eq i32 %t1356, %t1358
  %t1361 = xor i1 %t1359, true
  store i1 %t1361, ptr %l660, !tbaa !21
  br label %bb300
bb299:
  store i1 false, ptr %l660, !tbaa !21
  br label %bb300
bb300:
  %t1363 = load i1, ptr %l660, !tbaa !21
  br i1 %t1363, label %bb301, label %bb302
bb301:
  %t1364 = load i32, ptr %l4, !tbaa !23
  %t1365 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t1368 = icmp ne i32 %t1364, %t1365
  store i1 %t1368, ptr %l664, !tbaa !21
  br label %bb303
bb302:
  store i1 false, ptr %l664, !tbaa !21
  br label %bb303
bb303:
  %t1370 = load i1, ptr %l664, !tbaa !21
  br i1 %t1370, label %bb304, label %bb305
bb304:
  %t1371 = load ptr, ptr %l0, !tbaa !29
  %t1372 = load %"compiler/source:Span", ptr %l3
  %t1373 = load ptr, ptr %l1, !tbaa !29
  %t1374 = load i32, ptr %l2, !tbaa !23
  %t1379 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eadapter(ptr %v0, ptr %v1, ptr %v2, ptr %t1371, %"compiler/source:Span" %t1372, ptr %t1373, i32 %t1374)
  store ptr %t1379, ptr %l672
  br label %bb306
bb305:
  br label %bb310
bb306:
  %t1380 = load ptr, ptr %l672, !tbaa !29
  store ptr %t1380, ptr %l19, !tbaa !29
  %t1381 = load ptr, ptr %l19, !tbaa !29
  %t1383 = icmp eq ptr %t1381, null
  %t1385 = xor i1 %t1383, true
  br i1 %t1385, label %bb307, label %bb308
bb307:
  %t1387 = load ptr, ptr %l19, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1387, ptr %rv
  br label %ret
bb308:
  br label %bb309
bb309:
  br label %bb310
bb310:
  %t1389 = load i32, ptr %l4, !tbaa !23
  %t1390 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t1393 = icmp eq i32 %t1389, %t1390
  br i1 %t1393, label %bb311, label %bb312
bb311:
  store %olang.scope zeroinitializer, ptr %s31
  %t1395 = load ptr, ptr %l0, !tbaa !29
  %t1397 = getelementptr %"compiler/check:Checker", ptr %t1395, i32 0, i32 1
  %t1398 = load ptr, ptr %t1397, !tbaa !29
  %t1400 = getelementptr %"compiler/generic:Program", ptr %t1398, i32 0, i32 2
  %t1401 = load i32, ptr %l2, !tbaa !23
  %t1404 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1400, i32 %t1401)
  store i1 %t1404, ptr %l684
  br label %bb313
bb312:
  br label %bb343
bb313:
  %t1405 = load i1, ptr %l684, !tbaa !21
  br i1 %t1405, label %bb314, label %bb315
bb314:
  %t1406 = load ptr, ptr %l0, !tbaa !29
  %t1407 = load %"compiler/source:Span", ptr %l3
  %t1408 = load i32, ptr %l2, !tbaa !23
  %t1412 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v2, ptr %t1406, %"compiler/source:Span" %t1407, i32 %t1408)
  store ptr %t1412, ptr %l688
  br label %bb316
bb315:
  br label %bb317
bb316:
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  %t1413 = load ptr, ptr %l688, !tbaa !29
  store ptr %t1413, ptr %rv
  br label %ret
bb317:
  %t1414 = load ptr, ptr %l0, !tbaa !29
  %t1416 = getelementptr %"compiler/check:Checker", ptr %t1414, i32 0, i32 1
  %t1417 = load ptr, ptr %t1416, !tbaa !29
  %t1419 = getelementptr %"compiler/generic:Program", ptr %t1417, i32 0, i32 2
  %t1420 = load i32, ptr %l2, !tbaa !23
  %t1423 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t1419, i32 %t1420)
  store i1 %t1423, ptr %l693
  br label %bb318
bb318:
  %t1424 = load i1, ptr %l693, !tbaa !21
  br i1 %t1424, label %bb319, label %bb320
bb319:
  store %olang.scope zeroinitializer, ptr %s33
  %t1425 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1425, ptr %l694, !tbaa !29
  %t1426 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1426, ptr %l695
  %t1427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1427, ptr %l696, !tbaa !29
  %t1428 = load ptr, ptr %l0, !tbaa !29
  %t1429 = load i32, ptr %l2, !tbaa !23
  %t1432 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1428, i32 %t1429)
  store i32 %t1432, ptr %l699
  br label %bb321
bb320:
  br label %bb327
bb321:
  %t1433 = load ptr, ptr %l696, !tbaa !29
  %t1434 = load i32, ptr %l699, !tbaa !23
  %t1435 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s33, ptr %t1433, i32 %t1434)
  store { i64, ptr } %t1435, ptr %l700
  br label %bb322
bb322:
  %t1436 = load { i64, ptr }, ptr %l700, !tbaa !27
  %t1437 = extractvalue { i64, ptr } %t1436, 0
  %t1438 = extractvalue { i64, ptr } %t1436, 1
  %t1439 = mul i64 %t1437, 1
  %t1440 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t1439)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1440, ptr %t1438, i64 %t1439, i1 false)
  %t1441 = insertvalue { i64, ptr } undef, i64 %t1437, 0
  %t1442 = insertvalue { i64, ptr } %t1441, ptr %t1440, 1
  store { i64, ptr } %t1442, ptr %l701, !tbaa !27
  %t1443 = load ptr, ptr %l0, !tbaa !29
  %t1444 = load i32, ptr %l2, !tbaa !23
  %t1447 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemptyArray(ptr %v0, ptr %s33, ptr %t1443, i32 %t1444)
  store { i64, ptr } %t1447, ptr %l704
  br label %bb323
bb323:
  %t1448 = load { i64, ptr }, ptr %l704, !tbaa !27
  %t1449 = extractvalue { i64, ptr } %t1448, 0
  %t1450 = extractvalue { i64, ptr } %t1448, 1
  %t1451 = mul i64 %t1449, 1
  %t1452 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t1451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1452, ptr %t1450, i64 %t1451, i1 false)
  %t1453 = insertvalue { i64, ptr } undef, i64 %t1449, 0
  %t1454 = insertvalue { i64, ptr } %t1453, ptr %t1452, 1
  %t1455 = load { i64, ptr }, ptr %l701, !tbaa !27
  %t1457 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToArray(ptr %s33, ptr %s33, ptr %s33, { i64, ptr } %t1455, { i64, ptr } %t1454)
  store %"compiler/diagmsg:Msg" %t1457, ptr %l706
  br label %bb324
bb324:
  %t1458 = load ptr, ptr %l694, !tbaa !29
  %t1459 = load %"compiler/source:Span", ptr %l695
  %t1460 = load %"compiler/diagmsg:Msg", ptr %l706
  %t1461 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s33, ptr %t1458, %"compiler/source:Span" %t1459, %"compiler/diagmsg:Msg" %t1460)
  store i64 %t1461, ptr %l707
  br label %bb325
bb325:
  %t1462 = load ptr, ptr %l0, !tbaa !29
  %t1463 = load %"compiler/source:Span", ptr %l3
  %t1464 = load i32, ptr %l2, !tbaa !23
  %t1468 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t1462, %"compiler/source:Span" %t1463, i32 %t1464, i64 0)
  store ptr %t1468, ptr %l711
  br label %bb326
bb326:
  call void @__olang_scope_close(ptr %s33)
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  %t1469 = load ptr, ptr %l711, !tbaa !29
  store ptr %t1469, ptr %rv
  br label %ret
bb327:
  %t1470 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1472 = trunc i64 20 to i32
  %t1473 = icmp eq i32 %t1470, %t1472
  br i1 %t1473, label %bb328, label %bb329
bb328:
  store i1 true, ptr %l714, !tbaa !21
  br label %bb330
bb329:
  %t1475 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1477 = trunc i64 21 to i32
  %t1478 = icmp eq i32 %t1475, %t1477
  store i1 %t1478, ptr %l714, !tbaa !21
  br label %bb330
bb330:
  %t1480 = load i1, ptr %l714, !tbaa !21
  br i1 %t1480, label %bb331, label %bb332
bb331:
  store %olang.scope zeroinitializer, ptr %s34
  %t1481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1481, ptr %l717, !tbaa !29
  %t1482 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1482, ptr %l718
  %t1483 = load ptr, ptr %l0, !tbaa !29
  %t1484 = load i32, ptr %l2, !tbaa !23
  %t1487 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s34, ptr %t1483, i32 %t1484)
  store { i64, ptr } %t1487, ptr %l721
  br label %bb333
bb332:
  br label %bb339
bb333:
  %t1488 = load { i64, ptr }, ptr %l721, !tbaa !27
  %t1489 = extractvalue { i64, ptr } %t1488, 0
  %t1490 = extractvalue { i64, ptr } %t1488, 1
  %t1491 = mul i64 %t1489, 1
  %t1492 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1491)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1492, ptr %t1490, i64 %t1491, i1 false)
  %t1493 = insertvalue { i64, ptr } undef, i64 %t1489, 0
  %t1494 = insertvalue { i64, ptr } %t1493, ptr %t1492, 1
  store { i64, ptr } %t1494, ptr %l722, !tbaa !27
  %t1495 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1495, ptr %l723, !tbaa !29
  %t1496 = load ptr, ptr %l0, !tbaa !29
  %t1498 = getelementptr %"compiler/check:Checker", ptr %t1496, i32 0, i32 1
  %t1499 = load ptr, ptr %t1498, !tbaa !29
  %t1501 = getelementptr %"compiler/generic:Program", ptr %t1499, i32 0, i32 2
  %t1502 = load i32, ptr %l2, !tbaa !23
  %t1505 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t1501, i32 %t1502)
  store i32 %t1505, ptr %l728
  br label %bb334
bb334:
  %t1506 = load ptr, ptr %l723, !tbaa !29
  %t1507 = load i32, ptr %l728, !tbaa !23
  %t1508 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s34, ptr %t1506, i32 %t1507)
  store { i64, ptr } %t1508, ptr %l729
  br label %bb335
bb335:
  %t1509 = load { i64, ptr }, ptr %l729, !tbaa !27
  %t1510 = extractvalue { i64, ptr } %t1509, 0
  %t1511 = extractvalue { i64, ptr } %t1509, 1
  %t1512 = mul i64 %t1510, 1
  %t1513 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1512)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1513, ptr %t1511, i64 %t1512, i1 false)
  %t1514 = insertvalue { i64, ptr } undef, i64 %t1510, 0
  %t1515 = insertvalue { i64, ptr } %t1514, ptr %t1513, 1
  %t1516 = load { i64, ptr }, ptr %l722, !tbaa !27
  %t1518 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToNonNull(ptr %s34, ptr %s34, ptr %s34, { i64, ptr } %t1516, { i64, ptr } %t1515)
  store %"compiler/diagmsg:Msg" %t1518, ptr %l731
  br label %bb336
bb336:
  %t1519 = load ptr, ptr %l717, !tbaa !29
  %t1520 = load %"compiler/source:Span", ptr %l718
  %t1521 = load %"compiler/diagmsg:Msg", ptr %l731
  %t1522 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s34, ptr %t1519, %"compiler/source:Span" %t1520, %"compiler/diagmsg:Msg" %t1521)
  store i64 %t1522, ptr %l732
  br label %bb337
bb337:
  %t1523 = load i64, ptr %l732, !tbaa !24
  %t1524 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %t1524, i64 %t1523)
  br label %bb338
bb338:
  %t1528 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s34)
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1528, ptr %rv
  br label %ret
bb339:
  %t1530 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1530, ptr %l736, !tbaa !29
  %t1531 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1531, ptr %l737
  %t1532 = load ptr, ptr %l0, !tbaa !29
  %t1533 = load i32, ptr %l2, !tbaa !23
  %t1536 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s31, ptr %t1532, i32 %t1533)
  store { i64, ptr } %t1536, ptr %l740
  br label %bb340
bb340:
  %t1537 = load { i64, ptr }, ptr %l740, !tbaa !27
  %t1538 = extractvalue { i64, ptr } %t1537, 0
  %t1539 = extractvalue { i64, ptr } %t1537, 1
  %t1540 = mul i64 %t1538, 1
  %t1541 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t1540)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1541, ptr %t1539, i64 %t1540, i1 false)
  %t1542 = insertvalue { i64, ptr } undef, i64 %t1538, 0
  %t1543 = insertvalue { i64, ptr } %t1542, ptr %t1541, 1
  %t1545 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %s31, ptr %s31, ptr %s31, { i64, ptr } %t1543, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t1545, ptr %l742
  br label %bb341
bb341:
  %t1546 = load ptr, ptr %l736, !tbaa !29
  %t1547 = load %"compiler/source:Span", ptr %l737
  %t1548 = load %"compiler/diagmsg:Msg", ptr %l742
  %t1549 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s31, ptr %t1546, %"compiler/source:Span" %t1547, %"compiler/diagmsg:Msg" %t1548)
  store i64 %t1549, ptr %l743
  br label %bb342
bb342:
  %t1550 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1550, ptr %rv
  br label %ret
bb343:
  %t1552 = load ptr, ptr %l0, !tbaa !29
  %t1553 = load i32, ptr %l4, !tbaa !23
  %t1556 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t1552, i32 %t1553)
  store i1 %t1556, ptr %l747
  br label %bb344
bb344:
  %t1557 = load i1, ptr %l747, !tbaa !21
  br i1 %t1557, label %bb345, label %bb346
bb345:
  %t1558 = load ptr, ptr %l0, !tbaa !29
  %t1559 = load i32, ptr %l2, !tbaa !23
  %t1562 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t1558, i32 %t1559)
  store i1 %t1562, ptr %l751
  br label %bb347
bb346:
  store i1 false, ptr %l748, !tbaa !21
  br label %bb348
bb347:
  %t1563 = load i1, ptr %l751, !tbaa !21
  store i1 %t1563, ptr %l748, !tbaa !21
  br label %bb348
bb348:
  %t1564 = load i1, ptr %l748, !tbaa !21
  br i1 %t1564, label %bb349, label %bb350
bb349:
  %t1565 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t1567 = trunc i64 20 to i32
  %t1568 = icmp eq i32 %t1565, %t1567
  %t1570 = xor i1 %t1568, true
  store i1 %t1570, ptr %l752, !tbaa !21
  br label %bb351
bb350:
  store i1 false, ptr %l752, !tbaa !21
  br label %bb351
bb351:
  %t1572 = load i1, ptr %l752, !tbaa !21
  br i1 %t1572, label %bb352, label %bb353
bb352:
  %t1573 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1575 = trunc i64 20 to i32
  %t1576 = icmp eq i32 %t1573, %t1575
  %t1578 = xor i1 %t1576, true
  store i1 %t1578, ptr %l756, !tbaa !21
  br label %bb354
bb353:
  store i1 false, ptr %l756, !tbaa !21
  br label %bb354
bb354:
  %t1580 = load i1, ptr %l756, !tbaa !21
  br i1 %t1580, label %bb355, label %bb356
bb355:
  store %olang.scope zeroinitializer, ptr %s35
  %t1581 = load ptr, ptr %l0, !tbaa !29
  %t1583 = getelementptr %"compiler/check:Checker", ptr %t1581, i32 0, i32 1
  %t1584 = load ptr, ptr %t1583, !tbaa !29
  %t1585 = load i32, ptr %l4, !tbaa !23
  %t1586 = load i32, ptr %l2, !tbaa !23
  %t1590 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t1584, i32 %t1585, i32 %t1586)
  store i1 %t1590, ptr %l764
  br label %bb357
bb356:
  br label %bb369
bb357:
  %t1591 = load i1, ptr %l764, !tbaa !21
  br i1 %t1591, label %bb358, label %bb359
bb358:
  %t1592 = load ptr, ptr %l0, !tbaa !29
  %t1593 = load %"compiler/source:Span", ptr %l3
  %t1594 = load ptr, ptr %l1, !tbaa !29
  %t1595 = load i32, ptr %l2, !tbaa !23
  %t1600 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %t1592, %"compiler/source:Span" %t1593, ptr %t1594, i32 %t1595)
  store ptr %t1600, ptr %l769
  br label %bb360
bb359:
  br label %bb361
bb360:
  call void @__olang_scope_close(ptr %s35)
  call void @__olang_scope_close(ptr %s0)
  %t1601 = load ptr, ptr %l769, !tbaa !29
  store ptr %t1601, ptr %rv
  br label %ret
bb361:
  %t1602 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1602, ptr %l770, !tbaa !29
  %t1603 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1603, ptr %l771
  %t1604 = load ptr, ptr %l0, !tbaa !29
  %t1605 = load i32, ptr %l4, !tbaa !23
  %t1608 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s35, ptr %t1604, i32 %t1605)
  store { i64, ptr } %t1608, ptr %l774
  br label %bb362
bb362:
  %t1609 = load { i64, ptr }, ptr %l774, !tbaa !27
  %t1610 = extractvalue { i64, ptr } %t1609, 0
  %t1611 = extractvalue { i64, ptr } %t1609, 1
  %t1612 = mul i64 %t1610, 1
  %t1613 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1612)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1613, ptr %t1611, i64 %t1612, i1 false)
  %t1614 = insertvalue { i64, ptr } undef, i64 %t1610, 0
  %t1615 = insertvalue { i64, ptr } %t1614, ptr %t1613, 1
  store { i64, ptr } %t1615, ptr %l775, !tbaa !27
  %t1616 = load ptr, ptr %l0, !tbaa !29
  %t1617 = load i32, ptr %l2, !tbaa !23
  %t1620 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s35, ptr %t1616, i32 %t1617)
  store { i64, ptr } %t1620, ptr %l778
  br label %bb363
bb363:
  %t1621 = load { i64, ptr }, ptr %l778, !tbaa !27
  %t1622 = extractvalue { i64, ptr } %t1621, 0
  %t1623 = extractvalue { i64, ptr } %t1621, 1
  %t1624 = mul i64 %t1622, 1
  %t1625 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1624)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1625, ptr %t1623, i64 %t1624, i1 false)
  %t1626 = insertvalue { i64, ptr } undef, i64 %t1622, 0
  %t1627 = insertvalue { i64, ptr } %t1626, ptr %t1625, 1
  store { i64, ptr } %t1627, ptr %l779, !tbaa !27
  %t1628 = load ptr, ptr %l0, !tbaa !29
  %t1629 = load i32, ptr %l2, !tbaa !23
  %t1632 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s35, ptr %t1628, i32 %t1629)
  store { i64, ptr } %t1632, ptr %l782
  br label %bb364
bb364:
  %t1633 = load { i64, ptr }, ptr %l782, !tbaa !27
  %t1634 = extractvalue { i64, ptr } %t1633, 0
  %t1635 = extractvalue { i64, ptr } %t1633, 1
  %t1636 = mul i64 %t1634, 1
  %t1637 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1636)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1637, ptr %t1635, i64 %t1636, i1 false)
  %t1638 = insertvalue { i64, ptr } undef, i64 %t1634, 0
  %t1639 = insertvalue { i64, ptr } %t1638, ptr %t1637, 1
  %t1640 = load { i64, ptr }, ptr %l775, !tbaa !27
  %t1641 = load { i64, ptr }, ptr %l779, !tbaa !27
  %t1643 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumberDoesNotFlow(ptr %s35, ptr %s35, ptr %s35, ptr %s35, { i64, ptr } %t1640, { i64, ptr } %t1641, { i64, ptr } %t1639)
  store %"compiler/diagmsg:Msg" %t1643, ptr %l784
  br label %bb365
bb365:
  %t1644 = load ptr, ptr %l770, !tbaa !29
  %t1645 = load %"compiler/source:Span", ptr %l771
  %t1646 = load %"compiler/diagmsg:Msg", ptr %l784
  %t1647 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s35, ptr %t1644, %"compiler/source:Span" %t1645, %"compiler/diagmsg:Msg" %t1646)
  store i64 %t1647, ptr %l785
  br label %bb366
bb366:
  %t1648 = load i64, ptr %l785, !tbaa !24
  %t1649 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1649, ptr %l786, !tbaa !29
  store i64 %t1648, ptr %l787, !tbaa !24
  %t1651 = load ptr, ptr %l0, !tbaa !29
  %t1652 = load ptr, ptr %l1, !tbaa !29
  %t1654 = load i32, ptr %l4, !tbaa !23
  %t1658 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalIn(ptr %v0, ptr %v1, ptr %t1651, ptr %t1652, i32 %t1654)
  store i64 %t1658, ptr %l792
  br label %bb367
bb367:
  %t1659 = load i32, ptr %l2, !tbaa !23
  %t1660 = load ptr, ptr %l786, !tbaa !29
  %t1661 = load i64, ptr %l787, !tbaa !24
  %t1662 = load i64, ptr %l792, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalNote(ptr %v0, ptr %t1660, i64 %t1661, i64 %t1662, i32 %t1659)
  br label %bb368
bb368:
  %t1664 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s35)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1664, ptr %rv
  br label %ret
bb369:
  %t1666 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t1668 = trunc i64 20 to i32
  %t1669 = icmp eq i32 %t1666, %t1668
  br i1 %t1669, label %bb370, label %bb371
bb370:
  %t1671 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1673 = trunc i64 20 to i32
  %t1674 = icmp eq i32 %t1671, %t1673
  %t1676 = xor i1 %t1674, true
  store i1 %t1676, ptr %l797, !tbaa !21
  br label %bb372
bb371:
  store i1 false, ptr %l797, !tbaa !21
  br label %bb372
bb372:
  %t1678 = load i1, ptr %l797, !tbaa !21
  br i1 %t1678, label %bb373, label %bb374
bb373:
  %t1679 = load ptr, ptr %l1, !tbaa !29
  %t1681 = call ptr @compiler_2fcheck_2eheldValue(ptr %v1, ptr %v2, ptr %t1679)
  store ptr %t1681, ptr %l802
  br label %bb375
bb374:
  br label %bb412
bb375:
  %t1682 = load ptr, ptr %l802, !tbaa !29
  store ptr %t1682, ptr %l22, !tbaa !29
  %t1683 = load ptr, ptr %l22, !tbaa !29
  %t1685 = icmp eq ptr %t1683, null
  %t1687 = xor i1 %t1685, true
  br i1 %t1687, label %bb376, label %bb377
bb376:
  %t1689 = load ptr, ptr %l0, !tbaa !29
  %t1691 = getelementptr %"compiler/check:Checker", ptr %t1689, i32 0, i32 1
  %t1692 = load ptr, ptr %t1691, !tbaa !29
  %t1694 = getelementptr %"compiler/generic:Program", ptr %t1692, i32 0, i32 2
  %t1695 = load i32, ptr %l2, !tbaa !23
  %t1698 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t1694, i32 %t1695)
  store i1 %t1698, ptr %l811
  br label %bb378
bb377:
  store i1 false, ptr %l806, !tbaa !21
  br label %bb379
bb378:
  %t1699 = load i1, ptr %l811, !tbaa !21
  store i1 %t1699, ptr %l806, !tbaa !21
  br label %bb379
bb379:
  %t1700 = load i1, ptr %l806, !tbaa !21
  br i1 %t1700, label %bb380, label %bb381
bb380:
  %t1701 = load ptr, ptr %l0, !tbaa !29
  %t1703 = getelementptr %"compiler/check:Checker", ptr %t1701, i32 0, i32 1
  %t1704 = load ptr, ptr %t1703, !tbaa !29
  %t1706 = getelementptr %"compiler/generic:Program", ptr %t1704, i32 0, i32 2
  store ptr %t1706, ptr %l815, !tbaa !29
  %t1707 = load ptr, ptr %l22, !tbaa !29
  %t1710 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t1707)
  store i32 %t1710, ptr %l818
  br label %bb382
bb381:
  store i1 false, ptr %l812, !tbaa !21
  br label %bb384
bb382:
  %t1711 = load i32, ptr %l2, !tbaa !23
  %t1712 = load ptr, ptr %l815, !tbaa !29
  %t1713 = load i32, ptr %l818, !tbaa !23
  %t1715 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t1712, i32 %t1713, i32 %t1711)
  store i1 %t1715, ptr %l820
  br label %bb383
bb383:
  %t1716 = load i1, ptr %l820, !tbaa !21
  store i1 %t1716, ptr %l812, !tbaa !21
  br label %bb384
bb384:
  %t1717 = load i1, ptr %l812, !tbaa !21
  br i1 %t1717, label %bb385, label %bb386
bb385:
  %t1718 = load ptr, ptr %l22, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1718, ptr %rv
  br label %ret
bb386:
  br label %bb387
bb387:
  %t1720 = load ptr, ptr %l0, !tbaa !29
  %t1722 = getelementptr %"compiler/check:Checker", ptr %t1720, i32 0, i32 1
  %t1723 = load ptr, ptr %t1722, !tbaa !29
  %t1725 = getelementptr %"compiler/generic:Program", ptr %t1723, i32 0, i32 2
  %t1726 = load i32, ptr %l4, !tbaa !23
  %t1729 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t1725, i32 %t1726)
  store i32 %t1729, ptr %l826
  br label %bb388
bb388:
  %t1730 = load i32, ptr %l826, !tbaa !23
  store i32 %t1730, ptr %l23, !tbaa !23
  %t1731 = load ptr, ptr %l0, !tbaa !29
  %t1733 = getelementptr %"compiler/check:Checker", ptr %t1731, i32 0, i32 1
  %t1734 = load ptr, ptr %t1733, !tbaa !29
  %t1736 = getelementptr %"compiler/generic:Program", ptr %t1734, i32 0, i32 2
  %t1737 = load i32, ptr %l23, !tbaa !23
  %t1738 = load i32, ptr %l2, !tbaa !23
  %t1742 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t1736, i32 %t1737, i32 %t1738)
  store i1 %t1742, ptr %l832
  br label %bb389
bb389:
  %t1743 = load i1, ptr %l832, !tbaa !21
  br i1 %t1743, label %bb390, label %bb391
bb390:
  store i1 true, ptr %l833, !tbaa !21
  br label %bb393
bb391:
  %t1744 = load ptr, ptr %l0, !tbaa !29
  %t1745 = load i32, ptr %l23, !tbaa !23
  %t1746 = load i32, ptr %l2, !tbaa !23
  %t1750 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t1744, i32 %t1745, i32 %t1746)
  store i1 %t1750, ptr %l837
  br label %bb392
bb392:
  %t1751 = load i1, ptr %l837, !tbaa !21
  store i1 %t1751, ptr %l833, !tbaa !21
  br label %bb393
bb393:
  %t1752 = load i1, ptr %l833, !tbaa !21
  br i1 %t1752, label %bb394, label %bb395
bb394:
  %t1753 = load ptr, ptr %l0, !tbaa !29
  %t1755 = getelementptr %"compiler/check:Checker", ptr %t1753, i32 0, i32 1
  %t1756 = load ptr, ptr %t1755, !tbaa !29
  %t1758 = getelementptr %"compiler/generic:Program", ptr %t1756, i32 0, i32 2
  %t1759 = load i32, ptr %l4, !tbaa !23
  %t1762 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1758, i32 %t1759)
  store i1 %t1762, ptr %l842
  br label %bb396
bb395:
  br label %bb411
bb396:
  %t1763 = load i1, ptr %l842, !tbaa !21
  br i1 %t1763, label %bb397, label %bb398
bb397:
  store %olang.scope zeroinitializer, ptr %s40
  %t1764 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1764, ptr %l843, !tbaa !29
  %t1765 = load ptr, ptr %l1, !tbaa !29
  %t1767 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t1765)
  store %"compiler/source:Span" %t1767, ptr %l845
  br label %bb399
bb398:
  br label %bb408
bb399:
  %t1768 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1768, ptr %l846, !tbaa !29
  %t1769 = load ptr, ptr %l1, !tbaa !29
  %t1771 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t1769)
  store %"compiler/source:Span" %t1771, ptr %l848
  br label %bb400
bb400:
  %t1772 = load ptr, ptr %l846, !tbaa !29
  %t1773 = load %"compiler/source:Span", ptr %l848
  %t1774 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t1772, %"compiler/source:Span" %t1773)
  store { i64, ptr } %t1774, ptr %l849
  br label %bb401
bb401:
  %t1775 = load ptr, ptr %l0, !tbaa !29
  %t1776 = load i32, ptr %l4, !tbaa !23
  %t1779 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s40, ptr %t1775, i32 %t1776)
  store { i64, ptr } %t1779, ptr %l852
  br label %bb402
bb402:
  %t1780 = load { i64, ptr }, ptr %l852, !tbaa !27
  %t1781 = extractvalue { i64, ptr } %t1780, 0
  %t1782 = extractvalue { i64, ptr } %t1780, 1
  %t1783 = mul i64 %t1781, 1
  %t1784 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1783)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1784, ptr %t1782, i64 %t1783, i1 false)
  %t1785 = insertvalue { i64, ptr } undef, i64 %t1781, 0
  %t1786 = insertvalue { i64, ptr } %t1785, ptr %t1784, 1
  store { i64, ptr } %t1786, ptr %l853, !tbaa !27
  %t1787 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1787, ptr %l854, !tbaa !29
  %t1788 = load ptr, ptr %l1, !tbaa !29
  %t1790 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t1788)
  store %"compiler/source:Span" %t1790, ptr %l856
  br label %bb403
bb403:
  %t1791 = load ptr, ptr %l854, !tbaa !29
  %t1792 = load %"compiler/source:Span", ptr %l856
  %t1793 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t1791, %"compiler/source:Span" %t1792)
  store { i64, ptr } %t1793, ptr %l857
  br label %bb404
bb404:
  %t1794 = load { i64, ptr }, ptr %l857, !tbaa !27
  %t1795 = call { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %s40, { i64, ptr } %t1794)
  store { i64, ptr } %t1795, ptr %l858
  br label %bb405
bb405:
  %t1796 = load { i64, ptr }, ptr %l858, !tbaa !27
  %t1797 = extractvalue { i64, ptr } %t1796, 0
  %t1798 = extractvalue { i64, ptr } %t1796, 1
  %t1799 = mul i64 %t1797, 1
  %t1800 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1799)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1800, ptr %t1798, i64 %t1799, i1 false)
  %t1801 = insertvalue { i64, ptr } undef, i64 %t1797, 0
  %t1802 = insertvalue { i64, ptr } %t1801, ptr %t1800, 1
  %t1803 = load { i64, ptr }, ptr %l849, !tbaa !27
  %t1804 = load { i64, ptr }, ptr %l853, !tbaa !27
  %t1806 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %s40, ptr %s40, ptr %s40, { i64, ptr } %t1803, { i64, ptr } %t1804, { i64, ptr } %t1802)
  store %"compiler/diagmsg:Msg" %t1806, ptr %l860
  br label %bb406
bb406:
  %t1807 = load ptr, ptr %l843, !tbaa !29
  %t1808 = load %"compiler/source:Span", ptr %l845
  %t1809 = load %"compiler/diagmsg:Msg", ptr %l860
  %t1810 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s40, ptr %t1807, %"compiler/source:Span" %t1808, %"compiler/diagmsg:Msg" %t1809)
  store i64 %t1810, ptr %l861
  br label %bb407
bb407:
  call void @__olang_scope_close(ptr %s40)
  br label %bb408
bb408:
  %t1811 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1811, ptr %l862, !tbaa !29
  %t1812 = load ptr, ptr %l0, !tbaa !29
  %t1813 = load %"compiler/source:Span", ptr %l3
  %t1814 = load %"compiler/source:Span", ptr %l3
  %t1815 = load i32, ptr %l23, !tbaa !23
  %t1816 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t1817
  %t1818 = getelementptr { i64, [4 x i64] }, ptr %t1817, i32 0, i32 0
  store i64 2, ptr %t1818
  %t1820 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1814, 0
  %t1822 = insertvalue { %"compiler/source:Span", i32, ptr } %t1820, i32 %t1815, 1
  %t1824 = insertvalue { %"compiler/source:Span", i32, ptr } %t1822, ptr %t1816, 2
  %t1825 = getelementptr { i64, [4 x i64] }, ptr %t1817, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1824, ptr %t1825
  %t1826 = load { i64, [4 x i64] }, ptr %t1817
  %t1828 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t1826, ptr %t1828
  %t1832 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t1812, %"compiler/source:Span" %t1813, ptr %t1828)
  store ptr %t1832, ptr %l870
  br label %bb409
bb409:
  %t1833 = load i32, ptr %l2, !tbaa !23
  %t1834 = load %"compiler/source:Span", ptr %l3
  %t1835 = load ptr, ptr %l862, !tbaa !29
  %t1836 = load ptr, ptr %l870, !tbaa !29
  %t1839 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t1835, ptr %t1836, i32 %t1833, %"compiler/source:Span" %t1834)
  store ptr %t1839, ptr %l873
  br label %bb410
bb410:
  call void @__olang_scope_close(ptr %s0)
  %t1840 = load ptr, ptr %l873, !tbaa !29
  store ptr %t1840, ptr %rv
  br label %ret
bb411:
  br label %bb412
bb412:
  %t1841 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t1843 = trunc i64 20 to i32
  %t1844 = icmp eq i32 %t1841, %t1843
  br i1 %t1844, label %bb413, label %bb414
bb413:
  %t1846 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t1848 = trunc i64 20 to i32
  %t1849 = icmp eq i32 %t1846, %t1848
  %t1851 = xor i1 %t1849, true
  store i1 %t1851, ptr %l876, !tbaa !21
  br label %bb415
bb414:
  store i1 false, ptr %l876, !tbaa !21
  br label %bb415
bb415:
  %t1853 = load i1, ptr %l876, !tbaa !21
  br i1 %t1853, label %bb416, label %bb417
bb416:
  %t1854 = load ptr, ptr %l0, !tbaa !29
  %t1856 = getelementptr %"compiler/check:Checker", ptr %t1854, i32 0, i32 1
  %t1857 = load ptr, ptr %t1856, !tbaa !29
  %t1859 = getelementptr %"compiler/generic:Program", ptr %t1857, i32 0, i32 2
  %t1860 = load i32, ptr %l2, !tbaa !23
  %t1863 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t1859, i32 %t1860)
  store i32 %t1863, ptr %l884
  br label %bb418
bb417:
  br label %bb554
bb418:
  %t1864 = load i32, ptr %l884, !tbaa !23
  store i32 %t1864, ptr %l24, !tbaa !23
  %t1865 = load ptr, ptr %l0, !tbaa !29
  %t1867 = getelementptr %"compiler/check:Checker", ptr %t1865, i32 0, i32 1
  %t1868 = load ptr, ptr %t1867, !tbaa !29
  %t1870 = getelementptr %"compiler/generic:Program", ptr %t1868, i32 0, i32 2
  %t1871 = load i32, ptr %l24, !tbaa !23
  %t1872 = load i32, ptr %l4, !tbaa !23
  %t1876 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t1870, i32 %t1871, i32 %t1872)
  store i1 %t1876, ptr %l890
  br label %bb419
bb419:
  %t1877 = load i1, ptr %l890, !tbaa !21
  br i1 %t1877, label %bb420, label %bb421
bb420:
  %t1878 = load ptr, ptr %l0, !tbaa !29
  %t1879 = load ptr, ptr %l1, !tbaa !29
  %t1880 = load i32, ptr %l2, !tbaa !23
  %t1881 = load %"compiler/source:Span", ptr %l3
  %t1886 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryBorrowed(ptr %v0, ptr %v1, ptr %v2, ptr %t1878, ptr %t1879, i32 %t1880, %"compiler/source:Span" %t1881)
  store ptr %t1886, ptr %l895
  br label %bb422
bb421:
  br label %bb482
bb422:
  %t1887 = load ptr, ptr %l895, !tbaa !29
  store ptr %t1887, ptr %l25, !tbaa !29
  %t1888 = load ptr, ptr %l25, !tbaa !29
  %t1890 = icmp eq ptr %t1888, null
  %t1892 = xor i1 %t1890, true
  br i1 %t1892, label %bb423, label %bb424
bb423:
  %t1894 = load ptr, ptr %l25, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1894, ptr %rv
  br label %ret
bb424:
  br label %bb425
bb425:
  %t1896 = load ptr, ptr %l1, !tbaa !29
  %t1898 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v2, ptr %t1896)
  store ptr %t1898, ptr %l901
  br label %bb426
bb426:
  %t1899 = load ptr, ptr %l901, !tbaa !29
  store ptr %t1899, ptr %l26, !tbaa !29
  %t1900 = load ptr, ptr %l26, !tbaa !29
  %t1902 = icmp eq ptr %t1900, null
  %t1904 = xor i1 %t1902, true
  br i1 %t1904, label %bb427, label %bb428
bb427:
  %t1906 = load ptr, ptr %l0, !tbaa !29
  %t1907 = load ptr, ptr %l26, !tbaa !29
  %t1908 = load %"compiler/source:Span", ptr %l3
  %t1912 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v2, ptr %t1906, ptr %t1907, %"compiler/source:Span" %t1908)
  store i1 %t1912, ptr %l909
  br label %bb429
bb428:
  store i1 false, ptr %l905, !tbaa !21
  br label %bb430
bb429:
  %t1913 = load i1, ptr %l909, !tbaa !21
  store i1 %t1913, ptr %l905, !tbaa !21
  br label %bb430
bb430:
  %t1914 = load i1, ptr %l905, !tbaa !21
  br i1 %t1914, label %bb431, label %bb432
bb431:
  %t1915 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1915, ptr %l910
  %t1916 = load i32, ptr %l2, !tbaa !23
  store i32 %t1916, ptr %l911, !tbaa !23
  %t1917 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1917, ptr %l912, !tbaa !29
  %t1918 = load ptr, ptr %l0, !tbaa !29
  %t1919 = load %"compiler/source:Span", ptr %l3
  %t1923 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t1918, i32 2, %"compiler/source:Span" %t1919)
  store i32 %t1923, ptr %l916
  br label %bb433
bb432:
  br label %bb435
bb433:
  %t1924 = load ptr, ptr %l912, !tbaa !29
  %t1925 = load i32, ptr %l916, !tbaa !23
  %t1926 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v1, ptr %v2, ptr %t1924, i32 %t1925)
  store %"compiler/typed:Promote" %t1926, ptr %l917
  br label %bb434
bb434:
  %t1927 = load %"compiler/typed:Promote", ptr %l917
  %t1928 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t1927, ptr %t1928
  store { i64, [5 x i64] } zeroinitializer, ptr %t1929
  %t1930 = getelementptr { i64, [5 x i64] }, ptr %t1929, i32 0, i32 0
  store i64 5, ptr %t1930
  %t1931 = load %"compiler/source:Span", ptr %l910
  %t1932 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1931, 0
  %t1933 = load i32, ptr %l911, !tbaa !23
  %t1934 = insertvalue { %"compiler/source:Span", i32, ptr } %t1932, i32 %t1933, 1
  %t1936 = insertvalue { %"compiler/source:Span", i32, ptr } %t1934, ptr %t1928, 2
  %t1937 = getelementptr { i64, [5 x i64] }, ptr %t1929, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1936, ptr %t1937
  %t1938 = load { i64, [5 x i64] }, ptr %t1929
  %t1940 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t1938, ptr %t1940
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1940, ptr %rv
  br label %ret
bb435:
  %t1942 = load ptr, ptr %l26, !tbaa !29
  %t1944 = icmp eq ptr %t1942, null
  %t1946 = xor i1 %t1944, true
  br i1 %t1946, label %bb436, label %bb437
bb436:
  %t1948 = load ptr, ptr %l0, !tbaa !29
  %t1950 = getelementptr %"compiler/check:Checker", ptr %t1948, i32 0, i32 1
  %t1951 = load ptr, ptr %t1950, !tbaa !29
  %t1953 = getelementptr %"compiler/generic:Program", ptr %t1951, i32 0, i32 2
  %t1954 = load i32, ptr %l2, !tbaa !23
  %t1957 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t1953, i32 %t1954)
  store i64 %t1957, ptr %l928
  br label %bb438
bb437:
  br label %bb464
bb438:
  %t1958 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t1959 = load i64, ptr %l928, !tbaa !24
  %t1961 = and i64 %t1959, %t1958
  %t1963 = icmp ne i64 %t1961, 0
  br i1 %t1963, label %bb439, label %bb440
bb439:
  %t1965 = load ptr, ptr %l0, !tbaa !29
  %t1966 = load ptr, ptr %l26, !tbaa !29
  %t1967 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v2, ptr %t1965, ptr %t1966, %"compiler/source:Span" %t1967, i1 false)
  br label %bb441
bb440:
  br label %bb443
bb441:
  %t1971 = load ptr, ptr %l0, !tbaa !29
  %t1972 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %t1971, ptr %t1972)
  br label %bb442
bb442:
  br label %bb443
bb443:
  %t1976 = load ptr, ptr %l0, !tbaa !29
  %t1978 = getelementptr %"compiler/check:Checker", ptr %t1976, i32 0, i32 10
  store ptr %t1978, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb444
bb444:
  %t1980 = load i64, ptr %l28, !tbaa !24
  store i64 %t1980, ptr %l940, !tbaa !24
  %t1981 = load ptr, ptr %l27, !tbaa !29
  %t1983 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t1981)
  store i64 %t1983, ptr %l942
  br label %bb445
bb445:
  %t1984 = load i64, ptr %l940, !tbaa !24
  %t1985 = load i64, ptr %l942, !tbaa !24
  %t1986 = icmp slt i64 %t1984, %t1985
  %t1988 = xor i1 %t1986, true
  br i1 %t1988, label %bb446, label %bb447
bb446:
  br label %bb457
bb447:
  br label %bb448
bb448:
  %t1990 = load ptr, ptr %l27, !tbaa !29
  %t1991 = load i64, ptr %l28, !tbaa !24
  %t1994 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t1990, i64 %t1991)
  store ptr %t1994, ptr %l947
  br label %bb449
bb449:
  %t1995 = load ptr, ptr %l947, !tbaa !29
  %t1996 = load ptr, ptr %l0, !tbaa !29
  %t1997 = load ptr, ptr %l26, !tbaa !29
  %t2002 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v2, ptr %v0, ptr %t1996, ptr %t1997, ptr %t1995)
  store i1 %t2002, ptr %l951
  br label %bb450
bb450:
  %t2003 = load i1, ptr %l951, !tbaa !21
  br i1 %t2003, label %bb451, label %bb452
bb451:
  %t2004 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2004, ptr %l952
  %t2005 = load i32, ptr %l2, !tbaa !23
  store i32 %t2005, ptr %l953, !tbaa !23
  %t2006 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2006, ptr %l954, !tbaa !29
  %t2007 = load ptr, ptr %l0, !tbaa !29
  %t2008 = load %"compiler/source:Span", ptr %l3
  %t2012 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t2007, i32 2, %"compiler/source:Span" %t2008)
  store i32 %t2012, ptr %l958
  br label %bb453
bb452:
  br label %bb455
bb453:
  %t2013 = load ptr, ptr %l954, !tbaa !29
  %t2014 = load i32, ptr %l958, !tbaa !23
  %t2015 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v1, ptr %v2, ptr %t2013, i32 %t2014)
  store %"compiler/typed:Promote" %t2015, ptr %l959
  br label %bb454
bb454:
  %t2016 = load %"compiler/typed:Promote", ptr %l959
  %t2017 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t2016, ptr %t2017
  store { i64, [5 x i64] } zeroinitializer, ptr %t2018
  %t2019 = getelementptr { i64, [5 x i64] }, ptr %t2018, i32 0, i32 0
  store i64 5, ptr %t2019
  %t2020 = load %"compiler/source:Span", ptr %l952
  %t2021 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2020, 0
  %t2022 = load i32, ptr %l953, !tbaa !23
  %t2023 = insertvalue { %"compiler/source:Span", i32, ptr } %t2021, i32 %t2022, 1
  %t2025 = insertvalue { %"compiler/source:Span", i32, ptr } %t2023, ptr %t2017, 2
  %t2026 = getelementptr { i64, [5 x i64] }, ptr %t2018, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2025, ptr %t2026
  %t2027 = load { i64, [5 x i64] }, ptr %t2018
  %t2029 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2027, ptr %t2029
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2029, ptr %rv
  br label %ret
bb455:
  br label %bb456
bb456:
  %t2031 = load i64, ptr %l28, !tbaa !24
  %t2033 = add i64 %t2031, 1
  store i64 %t2033, ptr %l28, !tbaa !24
  br label %bb444
bb457:
  %t2035 = load ptr, ptr %l0, !tbaa !29
  %t2036 = load ptr, ptr %l26, !tbaa !29
  %t2039 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etargetHoldsRefs(ptr %v0, ptr %v2, ptr %t2035, ptr %t2036)
  store i1 %t2039, ptr %l967
  br label %bb458
bb458:
  %t2040 = load i1, ptr %l967, !tbaa !21
  br i1 %t2040, label %bb459, label %bb460
bb459:
  %t2041 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2041, ptr %l968
  %t2042 = load i32, ptr %l2, !tbaa !23
  store i32 %t2042, ptr %l969, !tbaa !23
  %t2043 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2043, ptr %l970, !tbaa !29
  %t2044 = load ptr, ptr %l0, !tbaa !29
  %t2045 = load %"compiler/source:Span", ptr %l3
  %t2049 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t2044, i32 2, %"compiler/source:Span" %t2045)
  store i32 %t2049, ptr %l974
  br label %bb461
bb460:
  br label %bb463
bb461:
  %t2050 = load ptr, ptr %l970, !tbaa !29
  %t2051 = load i32, ptr %l974, !tbaa !23
  %t2052 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v1, ptr %v2, ptr %t2050, i32 %t2051)
  store %"compiler/typed:Promote" %t2052, ptr %l975
  br label %bb462
bb462:
  %t2053 = load %"compiler/typed:Promote", ptr %l975
  %t2054 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t2053, ptr %t2054
  store { i64, [5 x i64] } zeroinitializer, ptr %t2055
  %t2056 = getelementptr { i64, [5 x i64] }, ptr %t2055, i32 0, i32 0
  store i64 5, ptr %t2056
  %t2057 = load %"compiler/source:Span", ptr %l968
  %t2058 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2057, 0
  %t2059 = load i32, ptr %l969, !tbaa !23
  %t2060 = insertvalue { %"compiler/source:Span", i32, ptr } %t2058, i32 %t2059, 1
  %t2062 = insertvalue { %"compiler/source:Span", i32, ptr } %t2060, ptr %t2054, 2
  %t2063 = getelementptr { i64, [5 x i64] }, ptr %t2055, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2062, ptr %t2063
  %t2064 = load { i64, [5 x i64] }, ptr %t2055
  %t2066 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2064, ptr %t2066
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2066, ptr %rv
  br label %ret
bb463:
  %t2068 = load %"compiler/source:Span", ptr %l3
  %t2069 = load i32, ptr %l2, !tbaa !23
  %t2070 = load ptr, ptr %l26, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t2071
  %t2072 = getelementptr { i64, [5 x i64] }, ptr %t2071, i32 0, i32 0
  store i64 3, ptr %t2072
  %t2074 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2068, 0
  %t2076 = insertvalue { %"compiler/source:Span", i32, ptr } %t2074, i32 %t2069, 1
  %t2078 = insertvalue { %"compiler/source:Span", i32, ptr } %t2076, ptr %t2070, 2
  %t2079 = getelementptr { i64, [5 x i64] }, ptr %t2071, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2078, ptr %t2079
  %t2080 = load { i64, [5 x i64] }, ptr %t2071
  %t2082 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2080, ptr %t2082
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2082, ptr %rv
  br label %ret
bb464:
  %t2084 = load ptr, ptr %l0, !tbaa !29
  %t2086 = getelementptr %"compiler/check:Checker", ptr %t2084, i32 0, i32 1
  %t2087 = load ptr, ptr %t2086, !tbaa !29
  %t2089 = getelementptr %"compiler/generic:Program", ptr %t2087, i32 0, i32 2
  %t2090 = load i32, ptr %l2, !tbaa !23
  %t2093 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2089, i32 %t2090)
  store i64 %t2093, ptr %l988
  br label %bb465
bb465:
  %t2094 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t2095 = load i64, ptr %l988, !tbaa !24
  %t2097 = and i64 %t2095, %t2094
  %t2099 = icmp ne i64 %t2097, 0
  br i1 %t2099, label %bb466, label %bb467
bb466:
  %t2101 = load ptr, ptr %l0, !tbaa !29
  %t2102 = load ptr, ptr %l1, !tbaa !29
  %t2105 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenAt(ptr %v0, ptr %v1, ptr %t2101, ptr %t2102)
  store %"compiler/source:Span" %t2105, ptr %l994
  br label %bb468
bb467:
  br label %bb479
bb468:
  %t2106 = load %"compiler/source:Span", ptr %l994
  store %"compiler/source:Span" %t2106, ptr %l30
  %t2107 = getelementptr %"compiler/source:Span", ptr %l30, i32 0, i32 0
  %t2108 = load i32, ptr %t2107, !tbaa !23
  %t2110 = icmp sge i32 %t2108, 0
  br i1 %t2110, label %bb469, label %bb470
bb469:
  %t2112 = load ptr, ptr %l0, !tbaa !29
  %t2113 = load ptr, ptr %l1, !tbaa !29
  %t2116 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdChoosesPlace(ptr %v0, ptr %v1, ptr %t2112, ptr %t2113)
  store i1 %t2116, ptr %l1000
  br label %bb471
bb470:
  store i1 false, ptr %l997, !tbaa !21
  br label %bb472
bb471:
  %t2117 = load i1, ptr %l1000, !tbaa !21
  store i1 %t2117, ptr %l997, !tbaa !21
  br label %bb472
bb472:
  %t2118 = load i1, ptr %l997, !tbaa !21
  br i1 %t2118, label %bb473, label %bb474
bb473:
  store %olang.scope zeroinitializer, ptr %s53
  %t2119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2119, ptr %l1001, !tbaa !29
  %t2120 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t2120, ptr %l1002
  %t2121 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondLentWritable(ptr %s53)
  store %"compiler/diagmsg:Msg" %t2121, ptr %l1003
  br label %bb475
bb474:
  %t2122 = load ptr, ptr %l0, !tbaa !29
  %t2123 = load ptr, ptr %l1, !tbaa !29
  %t2124 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLend(ptr %v0, ptr %v1, ptr %t2122, ptr %t2123, %"compiler/source:Span" %t2124)
  br label %bb477
bb475:
  %t2128 = load ptr, ptr %l1001, !tbaa !29
  %t2129 = load %"compiler/source:Span", ptr %l1002
  %t2130 = load %"compiler/diagmsg:Msg", ptr %l1003
  %t2131 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s53, ptr %t2128, %"compiler/source:Span" %t2129, %"compiler/diagmsg:Msg" %t2130)
  store i64 %t2131, ptr %l1004
  br label %bb476
bb476:
  call void @__olang_scope_close(ptr %s53)
  br label %bb478
bb477:
  br label %bb478
bb478:
  br label %bb479
bb479:
  %t2132 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2132, ptr %l1008
  %t2133 = load i32, ptr %l2, !tbaa !23
  store i32 %t2133, ptr %l1009, !tbaa !23
  %t2134 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2134, ptr %l1010, !tbaa !29
  %t2135 = load ptr, ptr %l0, !tbaa !29
  %t2136 = load %"compiler/source:Span", ptr %l3
  %t2140 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t2135, i32 2, %"compiler/source:Span" %t2136)
  store i32 %t2140, ptr %l1014
  br label %bb480
bb480:
  %t2141 = load ptr, ptr %l1010, !tbaa !29
  %t2142 = load i32, ptr %l1014, !tbaa !23
  %t2143 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v1, ptr %v2, ptr %t2141, i32 %t2142)
  store %"compiler/typed:Promote" %t2143, ptr %l1015
  br label %bb481
bb481:
  %t2144 = load %"compiler/typed:Promote", ptr %l1015
  %t2145 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t2144, ptr %t2145
  store { i64, [5 x i64] } zeroinitializer, ptr %t2146
  %t2147 = getelementptr { i64, [5 x i64] }, ptr %t2146, i32 0, i32 0
  store i64 5, ptr %t2147
  %t2148 = load %"compiler/source:Span", ptr %l1008
  %t2149 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2148, 0
  %t2150 = load i32, ptr %l1009, !tbaa !23
  %t2151 = insertvalue { %"compiler/source:Span", i32, ptr } %t2149, i32 %t2150, 1
  %t2153 = insertvalue { %"compiler/source:Span", i32, ptr } %t2151, ptr %t2145, 2
  %t2154 = getelementptr { i64, [5 x i64] }, ptr %t2146, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2153, ptr %t2154
  %t2155 = load { i64, [5 x i64] }, ptr %t2146
  %t2157 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2155, ptr %t2157
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2157, ptr %rv
  br label %ret
bb482:
  %t2159 = load ptr, ptr %l0, !tbaa !29
  %t2160 = load i32, ptr %l4, !tbaa !23
  %t2161 = load i32, ptr %l24, !tbaa !23
  %t2165 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t2159, i32 %t2160, i32 %t2161)
  store i1 %t2165, ptr %l1022
  br label %bb483
bb483:
  %t2166 = load i1, ptr %l1022, !tbaa !21
  br i1 %t2166, label %bb484, label %bb485
bb484:
  store i1 true, ptr %l1023, !tbaa !21
  br label %bb495
bb485:
  %t2167 = load ptr, ptr %l0, !tbaa !29
  %t2168 = load i32, ptr %l4, !tbaa !23
  %t2171 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t2167, i32 %t2168)
  store i1 %t2171, ptr %l1026
  br label %bb486
bb486:
  %t2172 = load i1, ptr %l1026, !tbaa !21
  br i1 %t2172, label %bb487, label %bb488
bb487:
  %t2173 = load ptr, ptr %l0, !tbaa !29
  %t2174 = load i32, ptr %l24, !tbaa !23
  %t2177 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t2173, i32 %t2174)
  store i1 %t2177, ptr %l1030
  br label %bb489
bb488:
  store i1 false, ptr %l1027, !tbaa !21
  br label %bb490
bb489:
  %t2178 = load i1, ptr %l1030, !tbaa !21
  store i1 %t2178, ptr %l1027, !tbaa !21
  br label %bb490
bb490:
  %t2179 = load i1, ptr %l1027, !tbaa !21
  br i1 %t2179, label %bb491, label %bb492
bb491:
  %t2180 = load ptr, ptr %l0, !tbaa !29
  %t2182 = getelementptr %"compiler/check:Checker", ptr %t2180, i32 0, i32 1
  %t2183 = load ptr, ptr %t2182, !tbaa !29
  %t2184 = load i32, ptr %l4, !tbaa !23
  %t2185 = load i32, ptr %l24, !tbaa !23
  %t2189 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t2183, i32 %t2184, i32 %t2185)
  store i1 %t2189, ptr %l1036
  br label %bb493
bb492:
  store i1 false, ptr %l1031, !tbaa !21
  br label %bb494
bb493:
  %t2190 = load i1, ptr %l1036, !tbaa !21
  store i1 %t2190, ptr %l1031, !tbaa !21
  br label %bb494
bb494:
  %t2191 = load i1, ptr %l1031, !tbaa !21
  store i1 %t2191, ptr %l1023, !tbaa !21
  br label %bb495
bb495:
  %t2192 = load i1, ptr %l1023, !tbaa !21
  br i1 %t2192, label %bb496, label %bb497
bb496:
  %t2193 = load ptr, ptr %l1, !tbaa !29
  %t2195 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v2, ptr %t2193)
  store ptr %t2195, ptr %l1038
  br label %bb498
bb497:
  br label %bb553
bb498:
  %t2196 = load ptr, ptr %l1038, !tbaa !29
  store ptr %t2196, ptr %l31, !tbaa !29
  %t2197 = load ptr, ptr %l31, !tbaa !29
  %t2199 = icmp eq ptr %t2197, null
  %t2201 = xor i1 %t2199, true
  br i1 %t2201, label %bb499, label %bb500
bb499:
  %t2203 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t2205 = trunc i64 19 to i32
  %t2206 = icmp eq i32 %t2203, %t2205
  store i1 %t2206, ptr %l1042, !tbaa !21
  br label %bb501
bb500:
  store i1 false, ptr %l1042, !tbaa !21
  br label %bb501
bb501:
  %t2208 = load i1, ptr %l1042, !tbaa !21
  br i1 %t2208, label %bb502, label %bb503
bb502:
  %t2209 = load ptr, ptr %l0, !tbaa !29
  %t2211 = getelementptr %"compiler/check:Checker", ptr %t2209, i32 0, i32 1
  %t2212 = load ptr, ptr %t2211, !tbaa !29
  %t2214 = getelementptr %"compiler/generic:Program", ptr %t2212, i32 0, i32 2
  %t2215 = load i32, ptr %l4, !tbaa !23
  %t2218 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t2214, i32 %t2215)
  store i32 %t2218, ptr %l1050
  br label %bb504
bb503:
  store i1 false, ptr %l1045, !tbaa !21
  br label %bb509
bb504:
  %t2219 = load i32, ptr %l1050, !tbaa !23
  %t2220 = icmp ne i32 %t2219, 0
  br i1 %t2220, label %bb505, label %bb506
bb505:
  store i1 true, ptr %l1052, !tbaa !21
  br label %bb508
bb506:
  %t2222 = load ptr, ptr %l0, !tbaa !29
  %t2223 = load i32, ptr %l4, !tbaa !23
  %t2224 = load i32, ptr %l24, !tbaa !23
  %t2228 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t2222, i32 %t2223, i32 %t2224)
  store i1 %t2228, ptr %l1056
  br label %bb507
bb507:
  %t2229 = load i1, ptr %l1056, !tbaa !21
  store i1 %t2229, ptr %l1052, !tbaa !21
  br label %bb508
bb508:
  %t2230 = load i1, ptr %l1052, !tbaa !21
  store i1 %t2230, ptr %l1045, !tbaa !21
  br label %bb509
bb509:
  %t2231 = load i1, ptr %l1045, !tbaa !21
  br i1 %t2231, label %bb510, label %bb511
bb510:
  %t2232 = load ptr, ptr %l0, !tbaa !29
  %t2233 = load ptr, ptr %l31, !tbaa !29
  %t2234 = load %"compiler/source:Span", ptr %l3
  %t2238 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v2, ptr %t2232, ptr %t2233, %"compiler/source:Span" %t2234)
  store i1 %t2238, ptr %l1060
  br label %bb512
bb511:
  br label %bb528
bb512:
  %t2239 = load i1, ptr %l1060, !tbaa !21
  br i1 %t2239, label %bb513, label %bb514
bb513:
  %t2240 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2240, ptr %l1061
  %t2241 = load i32, ptr %l2, !tbaa !23
  store i32 %t2241, ptr %l1062, !tbaa !23
  %t2242 = load ptr, ptr %l0, !tbaa !29
  %t2243 = load ptr, ptr %l1, !tbaa !29
  %t2244 = load i32, ptr %l24, !tbaa !23
  %t2245 = load %"compiler/source:Span", ptr %l3
  %t2250 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t2242, ptr %t2243, i32 %t2244, %"compiler/source:Span" %t2245)
  store ptr %t2250, ptr %l1067
  br label %bb515
bb514:
  br label %bb518
bb515:
  %t2251 = load ptr, ptr %l0, !tbaa !29
  %t2252 = load %"compiler/source:Span", ptr %l3
  %t2256 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t2251, i32 2, %"compiler/source:Span" %t2252)
  store i32 %t2256, ptr %l1071
  br label %bb516
bb516:
  %t2257 = load ptr, ptr %l1067, !tbaa !29
  %t2258 = load i32, ptr %l1071, !tbaa !23
  %t2259 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v0, ptr %v2, ptr %t2257, i32 %t2258)
  store %"compiler/typed:Promote" %t2259, ptr %l1072
  br label %bb517
bb517:
  %t2260 = load %"compiler/typed:Promote", ptr %l1072
  %t2261 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t2260, ptr %t2261
  store { i64, [5 x i64] } zeroinitializer, ptr %t2262
  %t2263 = getelementptr { i64, [5 x i64] }, ptr %t2262, i32 0, i32 0
  store i64 5, ptr %t2263
  %t2264 = load %"compiler/source:Span", ptr %l1061
  %t2265 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2264, 0
  %t2266 = load i32, ptr %l1062, !tbaa !23
  %t2267 = insertvalue { %"compiler/source:Span", i32, ptr } %t2265, i32 %t2266, 1
  %t2269 = insertvalue { %"compiler/source:Span", i32, ptr } %t2267, ptr %t2261, 2
  %t2270 = getelementptr { i64, [5 x i64] }, ptr %t2262, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2269, ptr %t2270
  %t2271 = load { i64, [5 x i64] }, ptr %t2262
  %t2273 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2271, ptr %t2273
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2273, ptr %rv
  br label %ret
bb518:
  %t2275 = load ptr, ptr %l0, !tbaa !29
  %t2277 = getelementptr %"compiler/check:Checker", ptr %t2275, i32 0, i32 1
  %t2278 = load ptr, ptr %t2277, !tbaa !29
  %t2280 = getelementptr %"compiler/generic:Program", ptr %t2278, i32 0, i32 2
  %t2281 = load i32, ptr %l2, !tbaa !23
  %t2284 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2280, i32 %t2281)
  store i64 %t2284, ptr %l1080
  br label %bb519
bb519:
  %t2285 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t2286 = load i64, ptr %l1080, !tbaa !24
  %t2288 = and i64 %t2286, %t2285
  %t2290 = icmp ne i64 %t2288, 0
  br i1 %t2290, label %bb520, label %bb521
bb520:
  %t2292 = load ptr, ptr %l0, !tbaa !29
  %t2293 = load ptr, ptr %l31, !tbaa !29
  %t2294 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v2, ptr %t2292, ptr %t2293, %"compiler/source:Span" %t2294, i1 false)
  br label %bb522
bb521:
  br label %bb524
bb522:
  %t2298 = load ptr, ptr %l0, !tbaa !29
  %t2299 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %t2298, ptr %t2299)
  br label %bb523
bb523:
  br label %bb524
bb524:
  %t2303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2303, ptr %l1090, !tbaa !29
  %t2304 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2304, ptr %l1091
  %t2305 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2305, ptr %l1092
  %t2306 = load ptr, ptr %l0, !tbaa !29
  %t2308 = getelementptr %"compiler/check:Checker", ptr %t2306, i32 0, i32 1
  %t2309 = load ptr, ptr %t2308, !tbaa !29
  %t2311 = getelementptr %"compiler/generic:Program", ptr %t2309, i32 0, i32 2
  store ptr %t2311, ptr %l1095, !tbaa !29
  %t2312 = load i32, ptr %l4, !tbaa !23
  store i32 %t2312, ptr %l1096, !tbaa !23
  %t2313 = load ptr, ptr %l0, !tbaa !29
  %t2315 = getelementptr %"compiler/check:Checker", ptr %t2313, i32 0, i32 1
  %t2316 = load ptr, ptr %t2315, !tbaa !29
  %t2318 = getelementptr %"compiler/generic:Program", ptr %t2316, i32 0, i32 2
  %t2319 = load i32, ptr %l2, !tbaa !23
  %t2322 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2318, i32 %t2319)
  store i64 %t2322, ptr %l1101
  br label %bb525
bb525:
  %t2323 = load ptr, ptr %l1095, !tbaa !29
  %t2324 = load i32, ptr %l1096, !tbaa !23
  %t2325 = load i64, ptr %l1101, !tbaa !24
  %t2326 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t2323, i32 %t2324, i64 %t2325)
  store i32 %t2326, ptr %l1102
  br label %bb526
bb526:
  %t2327 = load ptr, ptr %l31, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t2328
  %t2329 = getelementptr { i64, [5 x i64] }, ptr %t2328, i32 0, i32 0
  store i64 3, ptr %t2329
  %t2330 = load %"compiler/source:Span", ptr %l1092
  %t2331 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2330, 0
  %t2332 = load i32, ptr %l1102, !tbaa !23
  %t2333 = insertvalue { %"compiler/source:Span", i32, ptr } %t2331, i32 %t2332, 1
  %t2335 = insertvalue { %"compiler/source:Span", i32, ptr } %t2333, ptr %t2327, 2
  %t2336 = getelementptr { i64, [5 x i64] }, ptr %t2328, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2335, ptr %t2336
  %t2337 = load { i64, [5 x i64] }, ptr %t2328
  %t2339 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t2337, ptr %t2339
  %t2340 = load i32, ptr %l2, !tbaa !23
  %t2341 = load ptr, ptr %l1090, !tbaa !29
  %t2342 = load %"compiler/source:Span", ptr %l1091
  %t2345 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t2341, %"compiler/source:Span" %t2342, ptr %t2339, i32 %t2340)
  store ptr %t2345, ptr %l1107
  br label %bb527
bb527:
  call void @__olang_scope_close(ptr %s0)
  %t2346 = load ptr, ptr %l1107, !tbaa !29
  store ptr %t2346, ptr %rv
  br label %ret
bb528:
  %t2347 = load ptr, ptr %l0, !tbaa !29
  %t2348 = load ptr, ptr %l1, !tbaa !29
  %t2349 = load i32, ptr %l2, !tbaa !23
  %t2353 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estaticArray(ptr %v0, ptr %v1, ptr %v2, ptr %t2347, ptr %t2348, i32 %t2349)
  store ptr %t2353, ptr %l1111
  br label %bb529
bb529:
  %t2354 = load ptr, ptr %l1111, !tbaa !29
  store ptr %t2354, ptr %l32, !tbaa !29
  %t2355 = load ptr, ptr %l32, !tbaa !29
  %t2357 = icmp eq ptr %t2355, null
  %t2359 = xor i1 %t2357, true
  br i1 %t2359, label %bb530, label %bb531
bb530:
  %t2361 = load ptr, ptr %l32, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2361, ptr %rv
  br label %ret
bb531:
  br label %bb532
bb532:
  %t2363 = load ptr, ptr %l0, !tbaa !29
  %t2364 = load ptr, ptr %l1, !tbaa !29
  %t2365 = load i32, ptr %l24, !tbaa !23
  %t2366 = load %"compiler/source:Span", ptr %l3
  %t2371 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t2363, ptr %t2364, i32 %t2365, %"compiler/source:Span" %t2366)
  store ptr %t2371, ptr %l1120
  br label %bb533
bb533:
  %t2372 = load ptr, ptr %l1120, !tbaa !29
  store ptr %t2372, ptr %l33, !tbaa !29
  %t2373 = load ptr, ptr %l31, !tbaa !29
  %t2375 = icmp eq ptr %t2373, null
  %t2377 = xor i1 %t2375, true
  br i1 %t2377, label %bb534, label %bb535
bb534:
  %t2379 = load ptr, ptr %l0, !tbaa !29
  %t2380 = load i32, ptr %l4, !tbaa !23
  %t2383 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t2379, i32 %t2380)
  store i1 %t2383, ptr %l1127
  br label %bb536
bb535:
  store i1 false, ptr %l1124, !tbaa !21
  br label %bb537
bb536:
  %t2384 = load i1, ptr %l1127, !tbaa !21
  store i1 %t2384, ptr %l1124, !tbaa !21
  br label %bb537
bb537:
  %t2385 = load i1, ptr %l1124, !tbaa !21
  br i1 %t2385, label %bb538, label %bb539
bb538:
  %t2386 = load ptr, ptr %l0, !tbaa !29
  %t2387 = load i32, ptr %l4, !tbaa !23
  %t2390 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t2386, i32 %t2387)
  store i1 %t2390, ptr %l1131
  br label %bb540
bb539:
  store i1 false, ptr %l1128, !tbaa !21
  br label %bb541
bb540:
  %t2391 = load i1, ptr %l1131, !tbaa !21
  store i1 %t2391, ptr %l1128, !tbaa !21
  br label %bb541
bb541:
  %t2392 = load i1, ptr %l1128, !tbaa !21
  br i1 %t2392, label %bb542, label %bb543
bb542:
  %t2393 = load ptr, ptr %l0, !tbaa !29
  %t2395 = getelementptr %"compiler/check:Checker", ptr %t2393, i32 0, i32 1
  %t2396 = load ptr, ptr %t2395, !tbaa !29
  %t2398 = getelementptr %"compiler/generic:Program", ptr %t2396, i32 0, i32 2
  %t2399 = load i32, ptr %l2, !tbaa !23
  %t2402 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2398, i32 %t2399)
  store i64 %t2402, ptr %l1136
  br label %bb544
bb543:
  br label %bb550
bb544:
  %t2403 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t2404 = load i64, ptr %l1136, !tbaa !24
  %t2406 = and i64 %t2404, %t2403
  %t2408 = icmp ne i64 %t2406, 0
  br i1 %t2408, label %bb545, label %bb546
bb545:
  %t2410 = load ptr, ptr %l0, !tbaa !29
  %t2411 = load ptr, ptr %l31, !tbaa !29
  %t2412 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v2, ptr %t2410, ptr %t2411, %"compiler/source:Span" %t2412, i1 false)
  br label %bb547
bb546:
  br label %bb549
bb547:
  %t2416 = load ptr, ptr %l0, !tbaa !29
  %t2417 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %t2416, ptr %t2417)
  br label %bb548
bb548:
  br label %bb549
bb549:
  %t2421 = load %"compiler/source:Span", ptr %l3
  %t2422 = load i32, ptr %l2, !tbaa !23
  %t2423 = load ptr, ptr %l31, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t2424
  %t2425 = getelementptr { i64, [5 x i64] }, ptr %t2424, i32 0, i32 0
  store i64 3, ptr %t2425
  %t2427 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2421, 0
  %t2429 = insertvalue { %"compiler/source:Span", i32, ptr } %t2427, i32 %t2422, 1
  %t2431 = insertvalue { %"compiler/source:Span", i32, ptr } %t2429, ptr %t2423, 2
  %t2432 = getelementptr { i64, [5 x i64] }, ptr %t2424, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2431, ptr %t2432
  %t2433 = load { i64, [5 x i64] }, ptr %t2424
  %t2435 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2433, ptr %t2435
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2435, ptr %rv
  br label %ret
bb550:
  %t2437 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2437, ptr %l1151
  %t2438 = load i32, ptr %l2, !tbaa !23
  store i32 %t2438, ptr %l1152, !tbaa !23
  %t2439 = load ptr, ptr %l33, !tbaa !29
  store ptr %t2439, ptr %l1153, !tbaa !29
  %t2440 = load ptr, ptr %l0, !tbaa !29
  %t2441 = load %"compiler/source:Span", ptr %l3
  %t2445 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t2440, i32 2, %"compiler/source:Span" %t2441)
  store i32 %t2445, ptr %l1157
  br label %bb551
bb551:
  %t2446 = load ptr, ptr %l1153, !tbaa !29
  %t2447 = load i32, ptr %l1157, !tbaa !23
  %t2448 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v2, ptr %v2, ptr %t2446, i32 %t2447)
  store %"compiler/typed:Promote" %t2448, ptr %l1158
  br label %bb552
bb552:
  %t2449 = load %"compiler/typed:Promote", ptr %l1158
  %t2450 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t2449, ptr %t2450
  store { i64, [5 x i64] } zeroinitializer, ptr %t2451
  %t2452 = getelementptr { i64, [5 x i64] }, ptr %t2451, i32 0, i32 0
  store i64 5, ptr %t2452
  %t2453 = load %"compiler/source:Span", ptr %l1151
  %t2454 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2453, 0
  %t2455 = load i32, ptr %l1152, !tbaa !23
  %t2456 = insertvalue { %"compiler/source:Span", i32, ptr } %t2454, i32 %t2455, 1
  %t2458 = insertvalue { %"compiler/source:Span", i32, ptr } %t2456, ptr %t2450, 2
  %t2459 = getelementptr { i64, [5 x i64] }, ptr %t2451, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2458, ptr %t2459
  %t2460 = load { i64, [5 x i64] }, ptr %t2451
  %t2462 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2460, ptr %t2462
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2462, ptr %rv
  br label %ret
bb553:
  br label %bb554
bb554:
  %t2464 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t2466 = trunc i64 20 to i32
  %t2467 = icmp eq i32 %t2464, %t2466
  br i1 %t2467, label %bb555, label %bb556
bb555:
  %t2469 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t2471 = trunc i64 20 to i32
  %t2472 = icmp eq i32 %t2469, %t2471
  store i1 %t2472, ptr %l1164, !tbaa !21
  br label %bb557
bb556:
  store i1 false, ptr %l1164, !tbaa !21
  br label %bb557
bb557:
  %t2474 = load i1, ptr %l1164, !tbaa !21
  br i1 %t2474, label %bb558, label %bb559
bb558:
  %t2475 = load ptr, ptr %l0, !tbaa !29
  %t2477 = getelementptr %"compiler/check:Checker", ptr %t2475, i32 0, i32 1
  %t2478 = load ptr, ptr %t2477, !tbaa !29
  %t2480 = getelementptr %"compiler/generic:Program", ptr %t2478, i32 0, i32 2
  %t2481 = load i32, ptr %l4, !tbaa !23
  %t2484 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t2480, i32 %t2481)
  store i32 %t2484, ptr %l1171
  br label %bb560
bb559:
  br label %bb627
bb560:
  %t2485 = load i32, ptr %l1171, !tbaa !23
  store i32 %t2485, ptr %l34, !tbaa !23
  %t2486 = load ptr, ptr %l0, !tbaa !29
  %t2488 = getelementptr %"compiler/check:Checker", ptr %t2486, i32 0, i32 1
  %t2489 = load ptr, ptr %t2488, !tbaa !29
  %t2491 = getelementptr %"compiler/generic:Program", ptr %t2489, i32 0, i32 2
  %t2492 = load i32, ptr %l2, !tbaa !23
  %t2495 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t2491, i32 %t2492)
  store i32 %t2495, ptr %l1176
  br label %bb561
bb561:
  %t2496 = load i32, ptr %l1176, !tbaa !23
  store i32 %t2496, ptr %l35, !tbaa !23
  %t2497 = load ptr, ptr %l0, !tbaa !29
  %t2499 = getelementptr %"compiler/check:Checker", ptr %t2497, i32 0, i32 1
  %t2500 = load ptr, ptr %t2499, !tbaa !29
  %t2502 = getelementptr %"compiler/generic:Program", ptr %t2500, i32 0, i32 2
  %t2503 = load i32, ptr %l34, !tbaa !23
  %t2504 = load i32, ptr %l35, !tbaa !23
  %t2508 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t2502, i32 %t2503, i32 %t2504)
  store i1 %t2508, ptr %l1182
  br label %bb562
bb562:
  %t2509 = load i1, ptr %l1182, !tbaa !21
  br i1 %t2509, label %bb563, label %bb564
bb563:
  store i1 true, ptr %l1183, !tbaa !21
  br label %bb566
bb564:
  %t2510 = load ptr, ptr %l0, !tbaa !29
  %t2511 = load i32, ptr %l34, !tbaa !23
  %t2512 = load i32, ptr %l35, !tbaa !23
  %t2516 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t2510, i32 %t2511, i32 %t2512)
  store i1 %t2516, ptr %l1187
  br label %bb565
bb565:
  %t2517 = load i1, ptr %l1187, !tbaa !21
  store i1 %t2517, ptr %l1183, !tbaa !21
  br label %bb566
bb566:
  %t2518 = load i1, ptr %l1183, !tbaa !21
  br i1 %t2518, label %bb567, label %bb568
bb567:
  %t2519 = load ptr, ptr %l0, !tbaa !29
  %t2520 = load i32, ptr %l4, !tbaa !23
  %t2523 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t2519, i32 %t2520)
  store i1 %t2523, ptr %l1190
  br label %bb569
bb568:
  br label %bb626
bb569:
  %t2524 = load i1, ptr %l1190, !tbaa !21
  br i1 %t2524, label %bb570, label %bb571
bb570:
  %t2525 = load ptr, ptr %l0, !tbaa !29
  %t2527 = getelementptr %"compiler/check:Checker", ptr %t2525, i32 0, i32 1
  %t2528 = load ptr, ptr %t2527, !tbaa !29
  %t2530 = getelementptr %"compiler/generic:Program", ptr %t2528, i32 0, i32 2
  %t2531 = load i32, ptr %l34, !tbaa !23
  %t2532 = load i32, ptr %l35, !tbaa !23
  %t2536 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t2530, i32 %t2531, i32 %t2532)
  store i1 %t2536, ptr %l1197
  br label %bb572
bb571:
  store i1 false, ptr %l1191, !tbaa !21
  br label %bb573
bb572:
  %t2537 = load i1, ptr %l1197, !tbaa !21
  store i1 %t2537, ptr %l1191, !tbaa !21
  br label %bb573
bb573:
  %t2538 = load i1, ptr %l1191, !tbaa !21
  br i1 %t2538, label %bb574, label %bb575
bb574:
  %t2539 = load ptr, ptr %l0, !tbaa !29
  %t2541 = getelementptr %"compiler/check:Checker", ptr %t2539, i32 0, i32 1
  %t2542 = load ptr, ptr %t2541, !tbaa !29
  %t2544 = getelementptr %"compiler/generic:Program", ptr %t2542, i32 0, i32 2
  %t2545 = load i32, ptr %l4, !tbaa !23
  %t2548 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2544, i32 %t2545)
  store i64 %t2548, ptr %l1202
  br label %bb576
bb575:
  br label %bb582
bb576:
  %t2549 = load ptr, ptr %l0, !tbaa !29
  %t2551 = getelementptr %"compiler/check:Checker", ptr %t2549, i32 0, i32 1
  %t2552 = load ptr, ptr %t2551, !tbaa !29
  %t2554 = getelementptr %"compiler/generic:Program", ptr %t2552, i32 0, i32 2
  %t2555 = load i32, ptr %l2, !tbaa !23
  %t2558 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2554, i32 %t2555)
  store i64 %t2558, ptr %l1207
  br label %bb577
bb577:
  %t2559 = load i64, ptr %l1202, !tbaa !24
  %t2560 = load i64, ptr %l1207, !tbaa !24
  %t2561 = icmp ne i64 %t2559, %t2560
  br i1 %t2561, label %bb578, label %bb579
bb578:
  %t2563 = load ptr, ptr %l0, !tbaa !29
  %t2564 = load %"compiler/source:Span", ptr %l3
  %t2565 = load ptr, ptr %l1, !tbaa !29
  %t2566 = load i32, ptr %l2, !tbaa !23
  %t2571 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v1, ptr %t2563, %"compiler/source:Span" %t2564, ptr %t2565, i32 %t2566)
  store ptr %t2571, ptr %l1214
  br label %bb580
bb579:
  %t2572 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2572, ptr %l1209, !tbaa !29
  br label %bb581
bb580:
  %t2574 = load ptr, ptr %l1214, !tbaa !29
  store ptr %t2574, ptr %l1209, !tbaa !29
  br label %bb581
bb581:
  call void @__olang_scope_close(ptr %s0)
  %t2575 = load ptr, ptr %l1209, !tbaa !29
  store ptr %t2575, ptr %rv
  br label %ret
bb582:
  %t2576 = load ptr, ptr %l0, !tbaa !29
  %t2578 = getelementptr %"compiler/check:Checker", ptr %t2576, i32 0, i32 1
  %t2579 = load ptr, ptr %t2578, !tbaa !29
  %t2581 = getelementptr %"compiler/generic:Program", ptr %t2579, i32 0, i32 2
  %t2582 = load i32, ptr %l2, !tbaa !23
  %t2585 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2581, i32 %t2582)
  store i64 %t2585, ptr %l1220
  br label %bb583
bb583:
  %t2586 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t2587 = load i64, ptr %l1220, !tbaa !24
  %t2589 = and i64 %t2587, %t2586
  %t2591 = icmp ne i64 %t2589, 0
  br i1 %t2591, label %bb584, label %bb585
bb584:
  %t2593 = load ptr, ptr %l0, !tbaa !29
  %t2595 = getelementptr %"compiler/check:Checker", ptr %t2593, i32 0, i32 1
  %t2596 = load ptr, ptr %t2595, !tbaa !29
  %t2598 = getelementptr %"compiler/generic:Program", ptr %t2596, i32 0, i32 2
  %t2599 = load i32, ptr %l4, !tbaa !23
  %t2602 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2598, i32 %t2599)
  store i64 %t2602, ptr %l1229
  br label %bb586
bb585:
  store i1 false, ptr %l1224, !tbaa !21
  br label %bb587
bb586:
  %t2603 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t2604 = load i64, ptr %l1229, !tbaa !24
  %t2606 = and i64 %t2604, %t2603
  %t2608 = icmp eq i64 %t2606, 0
  store i1 %t2608, ptr %l1224, !tbaa !21
  br label %bb587
bb587:
  %t2610 = load i1, ptr %l1224, !tbaa !21
  br i1 %t2610, label %bb588, label %bb589
bb588:
  store %olang.scope zeroinitializer, ptr %s65
  %t2611 = load ptr, ptr %l1, !tbaa !29
  %t2613 = call i1 @compiler_2fcheck_2eisData(ptr %v1, ptr %t2611)
  store i1 %t2613, ptr %l1234
  br label %bb590
bb589:
  br label %bb612
bb590:
  %t2614 = load i1, ptr %l1234, !tbaa !21
  br i1 %t2614, label %bb591, label %bb592
bb591:
  %t2615 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2615, ptr %l1235, !tbaa !29
  %t2616 = load ptr, ptr %l0, !tbaa !29
  %t2617 = load %"compiler/source:Span", ptr %l3
  %t2618 = load %"compiler/source:Span", ptr %l3
  %t2619 = load i32, ptr %l34, !tbaa !23
  %t2620 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t2621
  %t2622 = getelementptr { i64, [4 x i64] }, ptr %t2621, i32 0, i32 0
  store i64 2, ptr %t2622
  %t2624 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2618, 0
  %t2626 = insertvalue { %"compiler/source:Span", i32, ptr } %t2624, i32 %t2619, 1
  %t2628 = insertvalue { %"compiler/source:Span", i32, ptr } %t2626, ptr %t2620, 2
  %t2629 = getelementptr { i64, [4 x i64] }, ptr %t2621, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2628, ptr %t2629
  %t2630 = load { i64, [4 x i64] }, ptr %t2621
  %t2632 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t2630, ptr %t2632
  %t2636 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t2616, %"compiler/source:Span" %t2617, ptr %t2632)
  store ptr %t2636, ptr %l1243
  br label %bb593
bb592:
  br label %bb597
bb593:
  %t2637 = load i32, ptr %l35, !tbaa !23
  %t2638 = load %"compiler/source:Span", ptr %l3
  %t2639 = load ptr, ptr %l1235, !tbaa !29
  %t2640 = load ptr, ptr %l1243, !tbaa !29
  %t2643 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t2639, ptr %t2640, i32 %t2637, %"compiler/source:Span" %t2638)
  store ptr %t2643, ptr %l1246
  br label %bb594
bb594:
  %t2644 = load ptr, ptr %l1246, !tbaa !29
  %t2645 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2645, ptr %l1247
  %t2646 = load i32, ptr %l2, !tbaa !23
  store i32 %t2646, ptr %l1248, !tbaa !23
  store ptr %t2644, ptr %l1249, !tbaa !29
  %t2648 = load ptr, ptr %l0, !tbaa !29
  %t2649 = load %"compiler/source:Span", ptr %l3
  %t2653 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t2648, i32 2, %"compiler/source:Span" %t2649)
  store i32 %t2653, ptr %l1253
  br label %bb595
bb595:
  %t2654 = load ptr, ptr %l1249, !tbaa !29
  %t2655 = load i32, ptr %l1253, !tbaa !23
  %t2656 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v2, ptr %v2, ptr %t2654, i32 %t2655)
  store %"compiler/typed:Promote" %t2656, ptr %l1254
  br label %bb596
bb596:
  %t2657 = load %"compiler/typed:Promote", ptr %l1254
  %t2658 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t2657, ptr %t2658
  store { i64, [5 x i64] } zeroinitializer, ptr %t2659
  %t2660 = getelementptr { i64, [5 x i64] }, ptr %t2659, i32 0, i32 0
  store i64 5, ptr %t2660
  %t2661 = load %"compiler/source:Span", ptr %l1247
  %t2662 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2661, 0
  %t2663 = load i32, ptr %l1248, !tbaa !23
  %t2664 = insertvalue { %"compiler/source:Span", i32, ptr } %t2662, i32 %t2663, 1
  %t2666 = insertvalue { %"compiler/source:Span", i32, ptr } %t2664, ptr %t2658, 2
  %t2667 = getelementptr { i64, [5 x i64] }, ptr %t2659, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2666, ptr %t2667
  %t2668 = load { i64, [5 x i64] }, ptr %t2659
  %t2670 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t2668, ptr %t2670
  call void @__olang_scope_close(ptr %s65)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2670, ptr %rv
  br label %ret
bb597:
  %t2672 = load ptr, ptr %l0, !tbaa !29
  %t2674 = getelementptr %"compiler/check:Checker", ptr %t2672, i32 0, i32 1
  %t2675 = load ptr, ptr %t2674, !tbaa !29
  %t2676 = load i32, ptr %l34, !tbaa !23
  %t2679 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t2675, i32 %t2676)
  store i1 %t2679, ptr %l1261
  br label %bb598
bb598:
  %t2680 = load i1, ptr %l1261, !tbaa !21
  br i1 %t2680, label %bb599, label %bb600
bb599:
  store %olang.scope zeroinitializer, ptr %s67
  %t2681 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2681, ptr %l1262, !tbaa !29
  %t2682 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2682, ptr %l1263
  %t2683 = load i32, ptr %l34, !tbaa !23
  store i32 %t2683, ptr %l1264, !tbaa !23
  %t2684 = load ptr, ptr %l0, !tbaa !29
  %t2686 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t2684)
  store i32 %t2686, ptr %l1266
  br label %bb601
bb600:
  br label %bb609
bb601:
  %t2687 = load i32, ptr %l1264, !tbaa !23
  %t2688 = load i32, ptr %l1266, !tbaa !23
  %t2689 = icmp eq i32 %t2687, %t2688
  br i1 %t2689, label %bb602, label %bb603
bb602:
  %t2691 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextWrite(ptr %s67)
  store %"compiler/diagmsg:Msg" %t2691, ptr %l1269
  br label %bb604
bb603:
  %t2692 = load ptr, ptr %l0, !tbaa !29
  %t2693 = load i32, ptr %l34, !tbaa !23
  %t2696 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s67, ptr %t2692, i32 %t2693)
  store { i64, ptr } %t2696, ptr %l1272
  br label %bb605
bb604:
  %t2697 = load %"compiler/diagmsg:Msg", ptr %l1269
  store %"compiler/diagmsg:Msg" %t2697, ptr %l1268
  br label %bb607
bb605:
  %t2698 = load { i64, ptr }, ptr %l1272, !tbaa !27
  %t2699 = extractvalue { i64, ptr } %t2698, 0
  %t2700 = extractvalue { i64, ptr } %t2698, 1
  %t2701 = mul i64 %t2699, 1
  %t2702 = call ptr @__olang_scope_alloc(ptr %s67, i64 %t2701)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2702, ptr %t2700, i64 %t2701, i1 false)
  %t2703 = insertvalue { i64, ptr } undef, i64 %t2699, 0
  %t2704 = insertvalue { i64, ptr } %t2703, ptr %t2702, 1
  %t2706 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutWrite(ptr %s67, ptr %s67, { i64, ptr } %t2704)
  store %"compiler/diagmsg:Msg" %t2706, ptr %l1274
  br label %bb606
bb606:
  %t2707 = load %"compiler/diagmsg:Msg", ptr %l1274
  store %"compiler/diagmsg:Msg" %t2707, ptr %l1268
  br label %bb607
bb607:
  %t2708 = load ptr, ptr %l1262, !tbaa !29
  %t2709 = load %"compiler/source:Span", ptr %l1263
  %t2710 = load %"compiler/diagmsg:Msg", ptr %l1268
  %t2711 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s67, ptr %t2708, %"compiler/source:Span" %t2709, %"compiler/diagmsg:Msg" %t2710)
  store i64 %t2711, ptr %l1275
  br label %bb608
bb608:
  %t2712 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s67)
  call void @__olang_scope_close(ptr %s65)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2712, ptr %rv
  br label %ret
bb609:
  %t2714 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2714, ptr %l1277, !tbaa !29
  %t2715 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2715, ptr %l1278
  %t2716 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyToWritable(ptr %s65)
  store %"compiler/diagmsg:Msg" %t2716, ptr %l1279
  br label %bb610
bb610:
  %t2717 = load ptr, ptr %l1277, !tbaa !29
  %t2718 = load %"compiler/source:Span", ptr %l1278
  %t2719 = load %"compiler/diagmsg:Msg", ptr %l1279
  %t2720 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s65, ptr %t2717, %"compiler/source:Span" %t2718, %"compiler/diagmsg:Msg" %t2719)
  store i64 %t2720, ptr %l1280
  br label %bb611
bb611:
  %t2721 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s65)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2721, ptr %rv
  br label %ret
bb612:
  %t2723 = load ptr, ptr %l0, !tbaa !29
  %t2725 = getelementptr %"compiler/check:Checker", ptr %t2723, i32 0, i32 1
  %t2726 = load ptr, ptr %t2725, !tbaa !29
  %t2728 = getelementptr %"compiler/generic:Program", ptr %t2726, i32 0, i32 2
  %t2729 = load i32, ptr %l2, !tbaa !23
  %t2732 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t2728, i32 %t2729)
  store i64 %t2732, ptr %l1286
  br label %bb613
bb613:
  %t2733 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t2734 = load i64, ptr %l1286, !tbaa !24
  %t2736 = and i64 %t2734, %t2733
  %t2738 = icmp ne i64 %t2736, 0
  br i1 %t2738, label %bb614, label %bb615
bb614:
  %t2740 = load ptr, ptr %l0, !tbaa !29
  %t2741 = load ptr, ptr %l1, !tbaa !29
  %t2742 = load %"compiler/source:Span", ptr %l3
  %t2746 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroWritableRef(ptr %v0, ptr %v1, ptr %t2740, ptr %t2741, %"compiler/source:Span" %t2742)
  store i1 %t2746, ptr %l1294
  br label %bb616
bb615:
  store i1 false, ptr %l1290, !tbaa !21
  br label %bb617
bb616:
  %t2747 = load i1, ptr %l1294, !tbaa !21
  %t2748 = xor i1 %t2747, true
  store i1 %t2748, ptr %l1290, !tbaa !21
  br label %bb617
bb617:
  %t2750 = load i1, ptr %l1290, !tbaa !21
  br i1 %t2750, label %bb618, label %bb619
bb618:
  %t2751 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2751, ptr %rv
  br label %ret
bb619:
  br label %bb620
bb620:
  %t2753 = load ptr, ptr %l0, !tbaa !29
  %t2755 = getelementptr %"compiler/check:Checker", ptr %t2753, i32 0, i32 1
  %t2756 = load ptr, ptr %t2755, !tbaa !29
  %t2758 = getelementptr %"compiler/generic:Program", ptr %t2756, i32 0, i32 2
  %t2759 = load i32, ptr %l34, !tbaa !23
  %t2760 = load i32, ptr %l35, !tbaa !23
  %t2764 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t2758, i32 %t2759, i32 %t2760)
  store i1 %t2764, ptr %l1302
  br label %bb621
bb621:
  %t2765 = load i1, ptr %l1302, !tbaa !21
  br i1 %t2765, label %bb622, label %bb623
bb622:
  %t2766 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2766, ptr %rv
  br label %ret
bb623:
  br label %bb624
bb624:
  %t2768 = load ptr, ptr %l0, !tbaa !29
  %t2769 = load %"compiler/source:Span", ptr %l3
  %t2770 = load ptr, ptr %l1, !tbaa !29
  %t2771 = load i32, ptr %l2, !tbaa !23
  %t2776 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %t2768, %"compiler/source:Span" %t2769, ptr %t2770, i32 %t2771)
  store ptr %t2776, ptr %l1308
  br label %bb625
bb625:
  call void @__olang_scope_close(ptr %s0)
  %t2777 = load ptr, ptr %l1308, !tbaa !29
  store ptr %t2777, ptr %rv
  br label %ret
bb626:
  br label %bb627
bb627:
  %t2778 = load ptr, ptr %l0, !tbaa !29
  %t2779 = load i32, ptr %l4, !tbaa !23
  %t2780 = load i32, ptr %l2, !tbaa !23
  %t2784 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t2778, i32 %t2779, i32 %t2780)
  store i1 %t2784, ptr %l1312
  br label %bb628
bb628:
  %t2785 = load i1, ptr %l1312, !tbaa !21
  br i1 %t2785, label %bb629, label %bb630
bb629:
  %t2786 = load ptr, ptr %l0, !tbaa !29
  %t2787 = load %"compiler/source:Span", ptr %l3
  %t2788 = load ptr, ptr %l1, !tbaa !29
  %t2789 = load i32, ptr %l2, !tbaa !23
  %t2794 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %t2786, %"compiler/source:Span" %t2787, ptr %t2788, i32 %t2789)
  store ptr %t2794, ptr %l1317
  br label %bb631
bb630:
  br label %bb632
bb631:
  call void @__olang_scope_close(ptr %s0)
  %t2795 = load ptr, ptr %l1317, !tbaa !29
  store ptr %t2795, ptr %rv
  br label %ret
bb632:
  %t2796 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t2798 = trunc i64 19 to i32
  %t2799 = icmp eq i32 %t2796, %t2798
  br i1 %t2799, label %bb633, label %bb634
bb633:
  %t2801 = load ptr, ptr %l0, !tbaa !29
  %t2803 = getelementptr %"compiler/check:Checker", ptr %t2801, i32 0, i32 1
  %t2804 = load ptr, ptr %t2803, !tbaa !29
  %t2806 = getelementptr %"compiler/generic:Program", ptr %t2804, i32 0, i32 2
  %t2807 = load i32, ptr %l2, !tbaa !23
  %t2810 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t2806, i32 %t2807)
  store i32 %t2810, ptr %l1325
  br label %bb635
bb634:
  store i1 false, ptr %l1320, !tbaa !21
  br label %bb636
bb635:
  %t2811 = load i32, ptr %l1325, !tbaa !23
  %t2812 = icmp ne i32 %t2811, 0
  store i1 %t2812, ptr %l1320, !tbaa !21
  br label %bb636
bb636:
  %t2814 = load i1, ptr %l1320, !tbaa !21
  br i1 %t2814, label %bb637, label %bb638
bb637:
  %t2815 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2815, ptr %l37, !tbaa !29
  %t2817 = load i32, ptr %l4, !tbaa !23
  store i32 %t2817, ptr %l38, !tbaa !23
  %t2819 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t2821 = trunc i64 20 to i32
  %t2822 = icmp eq i32 %t2819, %t2821
  br i1 %t2822, label %bb639, label %bb640
bb638:
  br label %bb671
bb639:
  %t2824 = load ptr, ptr %l0, !tbaa !29
  %t2826 = getelementptr %"compiler/check:Checker", ptr %t2824, i32 0, i32 1
  %t2827 = load ptr, ptr %t2826, !tbaa !29
  %t2829 = getelementptr %"compiler/generic:Program", ptr %t2827, i32 0, i32 2
  %t2830 = load i32, ptr %l4, !tbaa !23
  %t2833 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t2829, i32 %t2830)
  store i32 %t2833, ptr %l1335
  br label %bb641
bb640:
  br label %bb643
bb641:
  %t2834 = load i32, ptr %l1335, !tbaa !23
  store i32 %t2834, ptr %l38, !tbaa !23
  %t2835 = load ptr, ptr %l0, !tbaa !29
  %t2836 = load %"compiler/source:Span", ptr %l3
  %t2837 = load %"compiler/source:Span", ptr %l3
  %t2838 = load i32, ptr %l38, !tbaa !23
  %t2839 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t2840
  %t2841 = getelementptr { i64, [4 x i64] }, ptr %t2840, i32 0, i32 0
  store i64 2, ptr %t2841
  %t2843 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2837, 0
  %t2845 = insertvalue { %"compiler/source:Span", i32, ptr } %t2843, i32 %t2838, 1
  %t2847 = insertvalue { %"compiler/source:Span", i32, ptr } %t2845, ptr %t2839, 2
  %t2848 = getelementptr { i64, [4 x i64] }, ptr %t2840, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2847, ptr %t2848
  %t2849 = load { i64, [4 x i64] }, ptr %t2840
  %t2851 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t2849, ptr %t2851
  %t2855 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t2835, %"compiler/source:Span" %t2836, ptr %t2851)
  store ptr %t2855, ptr %l1343
  br label %bb642
bb642:
  %t2856 = load ptr, ptr %l1343, !tbaa !29
  store ptr %t2856, ptr %l37, !tbaa !29
  br label %bb643
bb643:
  %t2857 = load ptr, ptr %l0, !tbaa !29
  %t2858 = load i32, ptr %l38, !tbaa !23
  %t2861 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t2857, i32 %t2858)
  store i32 %t2861, ptr %l1346
  br label %bb644
bb644:
  %t2862 = load i32, ptr %l1346, !tbaa !23
  store i32 %t2862, ptr %l39, !tbaa !23
  %t2863 = load ptr, ptr %l0, !tbaa !29
  %t2865 = getelementptr %"compiler/check:Checker", ptr %t2863, i32 0, i32 1
  %t2866 = load ptr, ptr %t2865, !tbaa !29
  %t2868 = getelementptr %"compiler/generic:Program", ptr %t2866, i32 0, i32 2
  %t2869 = load i32, ptr %l39, !tbaa !23
  %t2872 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t2868, i32 %t2869)
  store i32 %t2872, ptr %l1351
  br label %bb645
bb645:
  %t2873 = load i32, ptr %l1351, !range !{i32 0, i32 33}
  %t2875 = trunc i64 19 to i32
  %t2876 = icmp eq i32 %t2873, %t2875
  br i1 %t2876, label %bb646, label %bb647
bb646:
  %t2878 = load ptr, ptr %l0, !tbaa !29
  %t2880 = getelementptr %"compiler/check:Checker", ptr %t2878, i32 0, i32 1
  %t2881 = load ptr, ptr %t2880, !tbaa !29
  %t2883 = getelementptr %"compiler/generic:Program", ptr %t2881, i32 0, i32 2
  %t2884 = load i32, ptr %l39, !tbaa !23
  %t2887 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t2883, i32 %t2884)
  store i32 %t2887, ptr %l1359
  br label %bb648
bb647:
  store i1 false, ptr %l1354, !tbaa !21
  br label %bb649
bb648:
  %t2888 = load i32, ptr %l1359, !tbaa !23
  %t2889 = icmp eq i32 %t2888, 0
  store i1 %t2889, ptr %l1354, !tbaa !21
  br label %bb649
bb649:
  %t2891 = load i1, ptr %l1354, !tbaa !21
  br i1 %t2891, label %bb650, label %bb651
bb650:
  %t2892 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2892, ptr %l1362, !tbaa !29
  %t2893 = load ptr, ptr %l0, !tbaa !29
  %t2895 = getelementptr %"compiler/check:Checker", ptr %t2893, i32 0, i32 1
  %t2896 = load ptr, ptr %t2895, !tbaa !29
  %t2898 = getelementptr %"compiler/generic:Program", ptr %t2896, i32 0, i32 2
  %t2899 = load i32, ptr %l39, !tbaa !23
  %t2902 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t2898, i32 %t2899)
  store i32 %t2902, ptr %l1367
  br label %bb652
bb651:
  store i1 false, ptr %l1361, !tbaa !21
  br label %bb655
bb652:
  %t2903 = load ptr, ptr %l0, !tbaa !29
  %t2905 = getelementptr %"compiler/check:Checker", ptr %t2903, i32 0, i32 1
  %t2906 = load ptr, ptr %t2905, !tbaa !29
  %t2908 = getelementptr %"compiler/generic:Program", ptr %t2906, i32 0, i32 2
  %t2909 = load i32, ptr %l2, !tbaa !23
  %t2912 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t2908, i32 %t2909)
  store i32 %t2912, ptr %l1372
  br label %bb653
bb653:
  %t2913 = load ptr, ptr %l1362, !tbaa !29
  %t2914 = load i32, ptr %l1367, !tbaa !23
  %t2915 = load i32, ptr %l1372, !tbaa !23
  %t2916 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t2913, i32 %t2914, i32 %t2915)
  store i1 %t2916, ptr %l1373
  br label %bb654
bb654:
  %t2917 = load i1, ptr %l1373, !tbaa !21
  store i1 %t2917, ptr %l1361, !tbaa !21
  br label %bb655
bb655:
  %t2918 = load i1, ptr %l1361, !tbaa !21
  br i1 %t2918, label %bb656, label %bb657
bb656:
  %t2919 = load ptr, ptr %l0, !tbaa !29
  %t2921 = getelementptr %"compiler/check:Checker", ptr %t2919, i32 0, i32 1
  %t2922 = load ptr, ptr %t2921, !tbaa !29
  %t2924 = getelementptr %"compiler/generic:Program", ptr %t2922, i32 0, i32 2
  store ptr %t2924, ptr %l1376, !tbaa !29
  %t2925 = load ptr, ptr %l0, !tbaa !29
  %t2927 = getelementptr %"compiler/check:Checker", ptr %t2925, i32 0, i32 1
  %t2928 = load ptr, ptr %t2927, !tbaa !29
  %t2930 = getelementptr %"compiler/generic:Program", ptr %t2928, i32 0, i32 2
  %t2931 = load i32, ptr %l2, !tbaa !23
  %t2934 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t2930, i32 %t2931)
  store i32 %t2934, ptr %l1381
  br label %bb658
bb657:
  br label %bb670
bb658:
  %t2935 = load ptr, ptr %l1376, !tbaa !29
  %t2936 = load i32, ptr %l1381, !tbaa !23
  %t2937 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t2935, i32 %t2936)
  store i32 %t2937, ptr %l1382
  br label %bb659
bb659:
  %t2938 = load i32, ptr %l1382, !range !{i32 0, i32 33}
  %t2940 = trunc i64 26 to i32
  %t2941 = icmp eq i32 %t2938, %t2940
  br i1 %t2941, label %bb660, label %bb661
bb660:
  store %olang.scope zeroinitializer, ptr %s74
  %t2943 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2943, ptr %l1385, !tbaa !29
  %t2944 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2944, ptr %l1386
  %t2945 = load ptr, ptr %l0, !tbaa !29
  %t2947 = getelementptr %"compiler/check:Checker", ptr %t2945, i32 0, i32 1
  %t2948 = load ptr, ptr %t2947, !tbaa !29
  %t2950 = getelementptr %"compiler/generic:Program", ptr %t2948, i32 0, i32 2
  store ptr %t2950, ptr %l1389, !tbaa !29
  %t2951 = load ptr, ptr %l0, !tbaa !29
  %t2953 = getelementptr %"compiler/check:Checker", ptr %t2951, i32 0, i32 1
  %t2954 = load ptr, ptr %t2953, !tbaa !29
  %t2956 = getelementptr %"compiler/generic:Program", ptr %t2954, i32 0, i32 2
  %t2957 = load i32, ptr %l2, !tbaa !23
  %t2960 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t2956, i32 %t2957)
  store i32 %t2960, ptr %l1394
  br label %bb662
bb661:
  br label %bb666
bb662:
  %t2961 = load ptr, ptr %l1389, !tbaa !29
  %t2962 = load i32, ptr %l1394, !tbaa !23
  %t2963 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t2961, i32 %t2962)
  store i64 %t2963, ptr %l1395
  br label %bb663
bb663:
  %t2964 = load i64, ptr %l1395, !tbaa !24
  %t2965 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayRunTimeIntoFixed(ptr %s74, i64 %t2964)
  store %"compiler/diagmsg:Msg" %t2965, ptr %l1396
  br label %bb664
bb664:
  %t2966 = load ptr, ptr %l1385, !tbaa !29
  %t2967 = load %"compiler/source:Span", ptr %l1386
  %t2968 = load %"compiler/diagmsg:Msg", ptr %l1396
  %t2969 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s74, ptr %t2966, %"compiler/source:Span" %t2967, %"compiler/diagmsg:Msg" %t2968)
  store i64 %t2969, ptr %l1397
  br label %bb665
bb665:
  %t2970 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s74)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2970, ptr %rv
  br label %ret
bb666:
  %t2972 = load ptr, ptr %l0, !tbaa !29
  %t2974 = getelementptr %"compiler/check:Checker", ptr %t2972, i32 0, i32 36
  %t2976 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2974)
  store i64 %t2976, ptr %l1401
  br label %bb667
bb667:
  %t2977 = load i64, ptr %l1401, !tbaa !24
  store i64 %t2977, ptr %l40, !tbaa !24
  %t2978 = load ptr, ptr %l0, !tbaa !29
  %t2980 = getelementptr %"compiler/check:Checker", ptr %t2978, i32 0, i32 36
  %t2981 = load ptr, ptr %l37, !tbaa !29
  store ptr %t2981, ptr %l1404, !tbaa !29
  %t2982 = load ptr, ptr %l1404, !tbaa !29
  %t2983 = call ptr @__olang_scope_of(ptr %t2982, ptr null)
  %t2984 = ptrtoint ptr %t2983 to i64
  %t2986 = inttoptr i64 %t2984 to ptr
  %t2988 = load ptr, ptr %l1404, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2986, ptr %t2980, ptr %t2988)
  br label %bb668
bb668:
  %t2989 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t2989, ptr %l1406
  %t2990 = load i32, ptr %l2, !tbaa !23
  store i32 %t2990, ptr %l1407, !tbaa !23
  store i32 20, ptr %l1408
  store i32 1, ptr %l1409
  %t2991 = load ptr, ptr %l0, !tbaa !29
  %t2993 = getelementptr %"compiler/check:Checker", ptr %t2991, i32 0, i32 36
  %t2994 = load i64, ptr %l40, !tbaa !24
  %t2997 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t2993, i64 %t2994)
  store { i64, ptr } %t2997, ptr %l1413
  br label %bb669
bb669:
  store { i64, [5 x i64] } zeroinitializer, ptr %t2998
  %t2999 = getelementptr { i64, [5 x i64] }, ptr %t2998, i32 0, i32 0
  store i64 9, ptr %t2999
  %t3000 = load %"compiler/source:Span", ptr %l1406
  %t3001 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t3000, 0
  %t3002 = load i32, ptr %l1407, !tbaa !23
  %t3003 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t3001, i32 %t3002, 1
  %t3004 = load i32, ptr %l1408, !range !{i32 0, i32 52}
  %t3005 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t3003, i32 %t3004, 2
  %t3006 = load i32, ptr %l1409, !range !{i32 0, i32 3}
  %t3007 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t3005, i32 %t3006, 3
  %t3008 = load { i64, ptr }, ptr %l1413, !tbaa !27
  %t3009 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t3007, { i64, ptr } %t3008, 4
  %t3010 = getelementptr { i64, [5 x i64] }, ptr %t2998, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t3009, ptr %t3010
  %t3011 = load { i64, [5 x i64] }, ptr %t2998
  %t3013 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t3011, ptr %t3013
  call void @__olang_scope_close(ptr %s0)
  store ptr %t3013, ptr %rv
  br label %ret
bb670:
  br label %bb671
bb671:
  %t3015 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t3017 = trunc i64 19 to i32
  %t3018 = icmp eq i32 %t3015, %t3017
  br i1 %t3018, label %bb672, label %bb673
bb672:
  %t3020 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t3022 = trunc i64 19 to i32
  %t3023 = icmp eq i32 %t3020, %t3022
  store i1 %t3023, ptr %l1418, !tbaa !21
  br label %bb674
bb673:
  store i1 false, ptr %l1418, !tbaa !21
  br label %bb674
bb674:
  %t3025 = load i1, ptr %l1418, !tbaa !21
  br i1 %t3025, label %bb675, label %bb676
bb675:
  %t3026 = load ptr, ptr %l0, !tbaa !29
  %t3028 = getelementptr %"compiler/check:Checker", ptr %t3026, i32 0, i32 1
  %t3029 = load ptr, ptr %t3028, !tbaa !29
  %t3031 = getelementptr %"compiler/generic:Program", ptr %t3029, i32 0, i32 2
  store ptr %t3031, ptr %l1424, !tbaa !29
  %t3032 = load ptr, ptr %l0, !tbaa !29
  %t3034 = getelementptr %"compiler/check:Checker", ptr %t3032, i32 0, i32 1
  %t3035 = load ptr, ptr %t3034, !tbaa !29
  %t3037 = getelementptr %"compiler/generic:Program", ptr %t3035, i32 0, i32 2
  %t3038 = load i32, ptr %l4, !tbaa !23
  %t3041 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t3037, i32 %t3038)
  store i32 %t3041, ptr %l1429
  br label %bb677
bb676:
  store i1 false, ptr %l1421, !tbaa !21
  br label %bb680
bb677:
  %t3042 = load ptr, ptr %l0, !tbaa !29
  %t3044 = getelementptr %"compiler/check:Checker", ptr %t3042, i32 0, i32 1
  %t3045 = load ptr, ptr %t3044, !tbaa !29
  %t3047 = getelementptr %"compiler/generic:Program", ptr %t3045, i32 0, i32 2
  %t3048 = load i32, ptr %l2, !tbaa !23
  %t3051 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t3047, i32 %t3048)
  store i32 %t3051, ptr %l1434
  br label %bb678
bb678:
  %t3052 = load ptr, ptr %l1424, !tbaa !29
  %t3053 = load i32, ptr %l1429, !tbaa !23
  %t3054 = load i32, ptr %l1434, !tbaa !23
  %t3055 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t3052, i32 %t3053, i32 %t3054)
  store i1 %t3055, ptr %l1435
  br label %bb679
bb679:
  %t3056 = load i1, ptr %l1435, !tbaa !21
  store i1 %t3056, ptr %l1421, !tbaa !21
  br label %bb680
bb680:
  %t3057 = load i1, ptr %l1421, !tbaa !21
  br i1 %t3057, label %bb681, label %bb682
bb681:
  %t3058 = load ptr, ptr %l0, !tbaa !29
  %t3060 = getelementptr %"compiler/check:Checker", ptr %t3058, i32 0, i32 1
  %t3061 = load ptr, ptr %t3060, !tbaa !29
  %t3063 = getelementptr %"compiler/generic:Program", ptr %t3061, i32 0, i32 2
  store ptr %t3063, ptr %l1439, !tbaa !29
  %t3064 = load ptr, ptr %l0, !tbaa !29
  %t3066 = getelementptr %"compiler/check:Checker", ptr %t3064, i32 0, i32 1
  %t3067 = load ptr, ptr %t3066, !tbaa !29
  %t3069 = getelementptr %"compiler/generic:Program", ptr %t3067, i32 0, i32 2
  %t3070 = load i32, ptr %l4, !tbaa !23
  %t3073 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t3069, i32 %t3070)
  store i32 %t3073, ptr %l1444
  br label %bb683
bb682:
  store i1 false, ptr %l1436, !tbaa !21
  br label %bb685
bb683:
  %t3074 = load ptr, ptr %l1439, !tbaa !29
  %t3075 = load i32, ptr %l1444, !tbaa !23
  %t3076 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3074, i32 %t3075)
  store i32 %t3076, ptr %l1445
  br label %bb684
bb684:
  %t3077 = load i32, ptr %l1445, !range !{i32 0, i32 33}
  %t3079 = trunc i64 26 to i32
  %t3080 = icmp eq i32 %t3077, %t3079
  store i1 %t3080, ptr %l1436, !tbaa !21
  br label %bb685
bb685:
  %t3082 = load i1, ptr %l1436, !tbaa !21
  br i1 %t3082, label %bb686, label %bb687
bb686:
  %t3083 = load ptr, ptr %l0, !tbaa !29
  %t3085 = getelementptr %"compiler/check:Checker", ptr %t3083, i32 0, i32 1
  %t3086 = load ptr, ptr %t3085, !tbaa !29
  %t3088 = getelementptr %"compiler/generic:Program", ptr %t3086, i32 0, i32 2
  store ptr %t3088, ptr %l1451, !tbaa !29
  %t3089 = load ptr, ptr %l0, !tbaa !29
  %t3091 = getelementptr %"compiler/check:Checker", ptr %t3089, i32 0, i32 1
  %t3092 = load ptr, ptr %t3091, !tbaa !29
  %t3094 = getelementptr %"compiler/generic:Program", ptr %t3092, i32 0, i32 2
  %t3095 = load i32, ptr %l2, !tbaa !23
  %t3098 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t3094, i32 %t3095)
  store i32 %t3098, ptr %l1456
  br label %bb688
bb687:
  store i1 false, ptr %l1448, !tbaa !21
  br label %bb690
bb688:
  %t3099 = load ptr, ptr %l1451, !tbaa !29
  %t3100 = load i32, ptr %l1456, !tbaa !23
  %t3101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3099, i32 %t3100)
  store i32 %t3101, ptr %l1457
  br label %bb689
bb689:
  %t3102 = load i32, ptr %l1457, !range !{i32 0, i32 33}
  %t3104 = trunc i64 26 to i32
  %t3105 = icmp eq i32 %t3102, %t3104
  store i1 %t3105, ptr %l1448, !tbaa !21
  br label %bb690
bb690:
  %t3107 = load i1, ptr %l1448, !tbaa !21
  br i1 %t3107, label %bb691, label %bb692
bb691:
  store %olang.scope zeroinitializer, ptr %s75
  %t3108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3108, ptr %l1460, !tbaa !29
  %t3109 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t3109, ptr %l1461
  %t3110 = load ptr, ptr %l0, !tbaa !29
  %t3112 = getelementptr %"compiler/check:Checker", ptr %t3110, i32 0, i32 1
  %t3113 = load ptr, ptr %t3112, !tbaa !29
  %t3115 = getelementptr %"compiler/generic:Program", ptr %t3113, i32 0, i32 2
  store ptr %t3115, ptr %l1464, !tbaa !29
  %t3116 = load ptr, ptr %l0, !tbaa !29
  %t3118 = getelementptr %"compiler/check:Checker", ptr %t3116, i32 0, i32 1
  %t3119 = load ptr, ptr %t3118, !tbaa !29
  %t3121 = getelementptr %"compiler/generic:Program", ptr %t3119, i32 0, i32 2
  %t3122 = load i32, ptr %l4, !tbaa !23
  %t3125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t3121, i32 %t3122)
  store i32 %t3125, ptr %l1469
  br label %bb693
bb692:
  br label %bb699
bb693:
  %t3126 = load ptr, ptr %l1464, !tbaa !29
  %t3127 = load i32, ptr %l1469, !tbaa !23
  %t3128 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t3126, i32 %t3127)
  store i64 %t3128, ptr %l1470
  br label %bb694
bb694:
  %t3129 = load ptr, ptr %l0, !tbaa !29
  %t3131 = getelementptr %"compiler/check:Checker", ptr %t3129, i32 0, i32 1
  %t3132 = load ptr, ptr %t3131, !tbaa !29
  %t3134 = getelementptr %"compiler/generic:Program", ptr %t3132, i32 0, i32 2
  store ptr %t3134, ptr %l1473, !tbaa !29
  %t3135 = load ptr, ptr %l0, !tbaa !29
  %t3137 = getelementptr %"compiler/check:Checker", ptr %t3135, i32 0, i32 1
  %t3138 = load ptr, ptr %t3137, !tbaa !29
  %t3140 = getelementptr %"compiler/generic:Program", ptr %t3138, i32 0, i32 2
  %t3141 = load i32, ptr %l2, !tbaa !23
  %t3144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t3140, i32 %t3141)
  store i32 %t3144, ptr %l1478
  br label %bb695
bb695:
  %t3145 = load ptr, ptr %l1473, !tbaa !29
  %t3146 = load i32, ptr %l1478, !tbaa !23
  %t3147 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t3145, i32 %t3146)
  store i64 %t3147, ptr %l1479
  br label %bb696
bb696:
  %t3148 = load i64, ptr %l1470, !tbaa !24
  %t3149 = load i64, ptr %l1479, !tbaa !24
  %t3150 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArraySizeMismatch(ptr %s75, i64 %t3148, i64 %t3149)
  store %"compiler/diagmsg:Msg" %t3150, ptr %l1480
  br label %bb697
bb697:
  %t3151 = load ptr, ptr %l1460, !tbaa !29
  %t3152 = load %"compiler/source:Span", ptr %l1461
  %t3153 = load %"compiler/diagmsg:Msg", ptr %l1480
  %t3154 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s75, ptr %t3151, %"compiler/source:Span" %t3152, %"compiler/diagmsg:Msg" %t3153)
  store i64 %t3154, ptr %l1481
  br label %bb698
bb698:
  %t3155 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s75)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t3155, ptr %rv
  br label %ret
bb699:
  %t3157 = load ptr, ptr %l0, !tbaa !29
  %t3158 = load i32, ptr %l2, !tbaa !23
  %t3161 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t3157, i32 %t3158)
  store { i64, ptr } %t3161, ptr %l1485
  br label %bb700
bb700:
  %t3162 = load { i64, ptr }, ptr %l1485, !tbaa !27
  store { i64, ptr } %t3162, ptr %l41, !tbaa !27
  %t3163 = load ptr, ptr %l0, !tbaa !29
  %t3164 = load ptr, ptr %l1, !tbaa !29
  %t3167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %s0, ptr %t3163, ptr %t3164)
  store { i64, ptr } %t3167, ptr %l1488
  br label %bb701
bb701:
  %t3168 = load { i64, ptr }, ptr %l1488, !tbaa !27
  store { i64, ptr } %t3168, ptr %l42, !tbaa !27
  %t3169 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t3170 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t3173 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t3169, { i64, ptr } %t3170)
  store i1 %t3173, ptr %l1491
  br label %bb702
bb702:
  %t3174 = load i1, ptr %l1491, !tbaa !21
  br i1 %t3174, label %bb703, label %bb704
bb703:
  %t3175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3175, ptr %l1493, !tbaa !29
  %t3176 = load ptr, ptr %l0, !tbaa !29
  %t3177 = load i32, ptr %l2, !tbaa !23
  %t3180 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t3176, i32 %t3177)
  store i32 %t3180, ptr %l1496
  br label %bb705
bb704:
  store i1 false, ptr %l1492, !tbaa !21
  br label %bb707
bb705:
  %t3181 = load ptr, ptr %l1493, !tbaa !29
  %t3182 = load i32, ptr %l1496, !tbaa !23
  %t3183 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t3181, i32 %t3182)
  store i1 %t3183, ptr %l1497
  br label %bb706
bb706:
  %t3184 = load i1, ptr %l1497, !tbaa !21
  store i1 %t3184, ptr %l1492, !tbaa !21
  br label %bb707
bb707:
  %t3185 = load i1, ptr %l1492, !tbaa !21
  br i1 %t3185, label %bb708, label %bb709
bb708:
  %t3186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3186, ptr %l1499, !tbaa !29
  %t3187 = load ptr, ptr %l0, !tbaa !29
  %t3188 = load i32, ptr %l4, !tbaa !23
  %t3191 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t3187, i32 %t3188)
  store i32 %t3191, ptr %l1502
  br label %bb710
bb709:
  store i1 false, ptr %l1498, !tbaa !21
  br label %bb712
bb710:
  %t3192 = load ptr, ptr %l1499, !tbaa !29
  %t3193 = load i32, ptr %l1502, !tbaa !23
  %t3194 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t3192, i32 %t3193)
  store i1 %t3194, ptr %l1503
  br label %bb711
bb711:
  %t3195 = load i1, ptr %l1503, !tbaa !21
  store i1 %t3195, ptr %l1498, !tbaa !21
  br label %bb712
bb712:
  %t3196 = load i1, ptr %l1498, !tbaa !21
  br i1 %t3196, label %bb713, label %bb714
bb713:
  %t3197 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t3197, ptr %l1504, !tbaa !27
  %t3198 = load ptr, ptr %l0, !tbaa !29
  %t3200 = getelementptr %"compiler/check:Checker", ptr %t3198, i32 0, i32 1
  %t3201 = load ptr, ptr %t3200, !tbaa !29
  %t3203 = getelementptr %"compiler/generic:Program", ptr %t3201, i32 0, i32 0
  %t3204 = load ptr, ptr %t3203, !tbaa !29
  %t3206 = getelementptr %"compiler/load:Loader", ptr %t3204, i32 0, i32 10
  store ptr %t3206, ptr %l1508, !tbaa !29
  %t3207 = load ptr, ptr %l0, !tbaa !29
  %t3209 = getelementptr %"compiler/check:Checker", ptr %t3207, i32 0, i32 1
  %t3210 = load ptr, ptr %t3209, !tbaa !29
  %t3212 = getelementptr %"compiler/generic:Program", ptr %t3210, i32 0, i32 2
  store ptr %t3212, ptr %l1511, !tbaa !29
  %t3213 = load ptr, ptr %l0, !tbaa !29
  %t3215 = getelementptr %"compiler/check:Checker", ptr %t3213, i32 0, i32 1
  %t3216 = load ptr, ptr %t3215, !tbaa !29
  %t3218 = getelementptr %"compiler/generic:Program", ptr %t3216, i32 0, i32 2
  store ptr %t3218, ptr %l1514, !tbaa !29
  %t3219 = load ptr, ptr %l0, !tbaa !29
  %t3220 = load i32, ptr %l2, !tbaa !23
  %t3223 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t3219, i32 %t3220)
  store i32 %t3223, ptr %l1517
  br label %bb715
bb714:
  br label %bb729
bb715:
  %t3224 = load ptr, ptr %l1514, !tbaa !29
  %t3225 = load i32, ptr %l1517, !tbaa !23
  %t3226 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t3224, i32 %t3225)
  store i32 %t3226, ptr %l1518
  br label %bb716
bb716:
  %t3227 = load ptr, ptr %l1511, !tbaa !29
  %t3228 = load i32, ptr %l1518, !tbaa !23
  %t3229 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t3227, i32 %t3228)
  store i64 %t3229, ptr %l1519
  br label %bb717
bb717:
  %t3230 = load ptr, ptr %l1508, !tbaa !29
  %t3231 = load i64, ptr %l1519, !tbaa !24
  %t3232 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3230, i64 %t3231)
  store ptr %t3232, ptr %l1520
  br label %bb718
bb718:
  %t3233 = load ptr, ptr %l1520, !tbaa !29
  %t3235 = getelementptr %"compiler/load:Module", ptr %t3233, i32 0, i32 2
  %t3236 = load { i64, ptr }, ptr %t3235, !tbaa !27
  %t3237 = load { i64, ptr }, ptr %l1504, !tbaa !27
  %t3238 = extractvalue { i64, ptr } %t3237, 1
  %t3239 = extractvalue { i64, ptr } %t3237, 0
  %t3240 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t3241 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t3242 = add i64 %t3239, %t3241
  %t3244 = extractvalue { i64, ptr } %t3236, 1
  %t3245 = extractvalue { i64, ptr } %t3236, 0
  %t3246 = add i64 %t3242, %t3245
  %t3247 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t3246)
  call void @olang_textcopy(ptr %t3247, ptr %t3238, i64 %t3239)
  %t3248 = getelementptr i8, ptr %t3247, i64 %t3239
  call void @olang_textcopy(ptr %t3248, ptr %t3240, i64 %t3241)
  %t3249 = getelementptr i8, ptr %t3248, i64 %t3241
  call void @olang_textcopy(ptr %t3249, ptr %t3244, i64 %t3245)
  %t3250 = insertvalue { i64, ptr } undef, i64 %t3246, 0
  %t3251 = insertvalue { i64, ptr } %t3250, ptr %t3247, 1
  store { i64, ptr } %t3251, ptr %l1523, !tbaa !27
  %t3252 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t3253 = extractvalue { i64, ptr } %t3252, 0
  %t3254 = load { i64, ptr }, ptr %l1523, !tbaa !27
  %t3255 = extractvalue { i64, ptr } %t3254, 0
  store i64 %t3255, ptr %l1525, !tbaa !24
  %t3257 = load i64, ptr %l1525, !tbaa !24
  %t3258 = icmp eq i64 %t3253, %t3257
  br i1 %t3258, label %bb719, label %bb720
bb719:
  %t3260 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t3261 = load ptr, ptr %t3260, !tbaa !27
  %t3262 = getelementptr { i64, ptr }, ptr %l1523, i32 0, i32 1
  %t3263 = load ptr, ptr %t3262, !tbaa !27
  %t3264 = load i64, ptr %l1525, !tbaa !24
  %t3265 = mul i64 %t3264, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t3261, ptr %t3263, i64 %t3265, i1 false)
  br label %bb721
bb720:
  %t3266 = load { i64, ptr }, ptr %l1523, !tbaa !27
  store { i64, ptr } %t3266, ptr %l41, !tbaa !27
  br label %bb721
bb721:
  %t3267 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t3267, ptr %l1527, !tbaa !27
  %t3268 = load ptr, ptr %l0, !tbaa !29
  %t3270 = getelementptr %"compiler/check:Checker", ptr %t3268, i32 0, i32 1
  %t3271 = load ptr, ptr %t3270, !tbaa !29
  %t3273 = getelementptr %"compiler/generic:Program", ptr %t3271, i32 0, i32 0
  %t3274 = load ptr, ptr %t3273, !tbaa !29
  %t3276 = getelementptr %"compiler/load:Loader", ptr %t3274, i32 0, i32 10
  store ptr %t3276, ptr %l1531, !tbaa !29
  %t3277 = load ptr, ptr %l0, !tbaa !29
  %t3279 = getelementptr %"compiler/check:Checker", ptr %t3277, i32 0, i32 1
  %t3280 = load ptr, ptr %t3279, !tbaa !29
  %t3282 = getelementptr %"compiler/generic:Program", ptr %t3280, i32 0, i32 2
  store ptr %t3282, ptr %l1534, !tbaa !29
  %t3283 = load ptr, ptr %l0, !tbaa !29
  %t3285 = getelementptr %"compiler/check:Checker", ptr %t3283, i32 0, i32 1
  %t3286 = load ptr, ptr %t3285, !tbaa !29
  %t3288 = getelementptr %"compiler/generic:Program", ptr %t3286, i32 0, i32 2
  store ptr %t3288, ptr %l1537, !tbaa !29
  %t3289 = load ptr, ptr %l0, !tbaa !29
  %t3290 = load i32, ptr %l4, !tbaa !23
  %t3293 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t3289, i32 %t3290)
  store i32 %t3293, ptr %l1540
  br label %bb722
bb722:
  %t3294 = load ptr, ptr %l1537, !tbaa !29
  %t3295 = load i32, ptr %l1540, !tbaa !23
  %t3296 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t3294, i32 %t3295)
  store i32 %t3296, ptr %l1541
  br label %bb723
bb723:
  %t3297 = load ptr, ptr %l1534, !tbaa !29
  %t3298 = load i32, ptr %l1541, !tbaa !23
  %t3299 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t3297, i32 %t3298)
  store i64 %t3299, ptr %l1542
  br label %bb724
bb724:
  %t3300 = load ptr, ptr %l1531, !tbaa !29
  %t3301 = load i64, ptr %l1542, !tbaa !24
  %t3302 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3300, i64 %t3301)
  store ptr %t3302, ptr %l1543
  br label %bb725
bb725:
  %t3303 = load ptr, ptr %l1543, !tbaa !29
  %t3305 = getelementptr %"compiler/load:Module", ptr %t3303, i32 0, i32 2
  %t3306 = load { i64, ptr }, ptr %t3305, !tbaa !27
  %t3307 = load { i64, ptr }, ptr %l1527, !tbaa !27
  %t3308 = extractvalue { i64, ptr } %t3307, 1
  %t3309 = extractvalue { i64, ptr } %t3307, 0
  %t3310 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t3311 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t3312 = add i64 %t3309, %t3311
  %t3314 = extractvalue { i64, ptr } %t3306, 1
  %t3315 = extractvalue { i64, ptr } %t3306, 0
  %t3316 = add i64 %t3312, %t3315
  %t3317 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t3316)
  call void @olang_textcopy(ptr %t3317, ptr %t3308, i64 %t3309)
  %t3318 = getelementptr i8, ptr %t3317, i64 %t3309
  call void @olang_textcopy(ptr %t3318, ptr %t3310, i64 %t3311)
  %t3319 = getelementptr i8, ptr %t3318, i64 %t3311
  call void @olang_textcopy(ptr %t3319, ptr %t3314, i64 %t3315)
  %t3320 = insertvalue { i64, ptr } undef, i64 %t3316, 0
  %t3321 = insertvalue { i64, ptr } %t3320, ptr %t3317, 1
  store { i64, ptr } %t3321, ptr %l1546, !tbaa !27
  %t3322 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t3323 = extractvalue { i64, ptr } %t3322, 0
  %t3324 = load { i64, ptr }, ptr %l1546, !tbaa !27
  %t3325 = extractvalue { i64, ptr } %t3324, 0
  store i64 %t3325, ptr %l1548, !tbaa !24
  %t3327 = load i64, ptr %l1548, !tbaa !24
  %t3328 = icmp eq i64 %t3323, %t3327
  br i1 %t3328, label %bb726, label %bb727
bb726:
  %t3330 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t3331 = load ptr, ptr %t3330, !tbaa !27
  %t3332 = getelementptr { i64, ptr }, ptr %l1546, i32 0, i32 1
  %t3333 = load ptr, ptr %t3332, !tbaa !27
  %t3334 = load i64, ptr %l1548, !tbaa !24
  %t3335 = mul i64 %t3334, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t3331, ptr %t3333, i64 %t3335, i1 false)
  br label %bb728
bb727:
  %t3336 = load { i64, ptr }, ptr %l1546, !tbaa !27
  store { i64, ptr } %t3336, ptr %l42, !tbaa !27
  br label %bb728
bb728:
  br label %bb729
bb729:
  %t3337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3337, ptr %l1550, !tbaa !29
  %t3338 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t3338, ptr %l1551
  %t3339 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t3340 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t3343 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t3339, { i64, ptr } %t3340)
  store %"compiler/diagmsg:Msg" %t3343, ptr %l1554
  br label %bb730
bb730:
  %t3344 = load ptr, ptr %l1550, !tbaa !29
  %t3345 = load %"compiler/source:Span", ptr %l1551
  %t3346 = load %"compiler/diagmsg:Msg", ptr %l1554
  %t3347 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t3344, %"compiler/source:Span" %t3345, %"compiler/diagmsg:Msg" %t3346)
  store i64 %t3347, ptr %l1555
  br label %bb731
bb731:
  %t3348 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t3348, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l48 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l53 = alloca %"compiler/generic:Context"
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i64
  %l87 = alloca ptr
  %l88 = alloca i64
  %s6 = alloca %olang.scope
  %t87 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
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
  br label %bb53
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l21, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t24 = load ptr, ptr %l24, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l24, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l25, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l25, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenTypeDecl(ptr %v0, ptr %v1, ptr %t38, i64 %t39, ptr %t40)
  br label %bb10
bb10:
  br label %bb51
bb11:
  %t45 = load ptr, ptr %l6, !tbaa !29
  store ptr %t45, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t46 = load ptr, ptr %l34, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l34, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 11}
  %t52 = icmp eq i64 %t50, 3
  store i1 %t52, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l35, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t56 = getelementptr { i64, [8 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", ptr }, ptr %t56, i32 0, i32 1
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l8, !tbaa !29
  br label %bb16
bb15:
  br label %bb26
bb16:
  %t60 = load ptr, ptr %l8, !tbaa !29
  %t62 = getelementptr %"compiler/ast:VarDecl", ptr %t60, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l11, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s6)
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t77 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t77, ptr %l48, !tbaa !27
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 %t78
  %t83 = load i32, ptr %t82, !tbaa !33
  store i32 %t83, ptr %l12, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l51, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t87, ptr %s6, i64 %t86, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %t87, i64 160, i1 false)
  br label %bb21
bb21:
  %t89 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t89, ptr %l53, i64 160, i1 false)
  store ptr %t89, ptr %l54, !tbaa !29
  %t90 = load ptr, ptr %l8, !tbaa !29
  %t92 = getelementptr %"compiler/ast:VarDecl", ptr %t90, i32 0, i32 2
  %t93 = load ptr, ptr %t92, !tbaa !29
  store ptr %t93, ptr %l56, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l12, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t94, i32 %t95)
  store { i64, ptr } %t98, ptr %l59
  br label %bb22
bb22:
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t101 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = add i64 %t100, %t103
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t107 = add i64 %t104, %t106
  %t108 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t107)
  call void @olang_textcopy(ptr %t108, ptr %t99, i64 %t100)
  %t109 = getelementptr i8, ptr %t108, i64 %t100
  call void @olang_textcopy(ptr %t109, ptr %t102, i64 %t103)
  %t110 = getelementptr i8, ptr %t109, i64 %t103
  call void @olang_textcopy(ptr %t110, ptr %t105, i64 %t106)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t108, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = extractvalue { i64, ptr } %t112, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t120 = load ptr, ptr %l51, !tbaa !29
  %t121 = load ptr, ptr %l54, !tbaa !29
  %t122 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %s6, ptr %v1, ptr %s6, ptr %t120, ptr %t121, ptr %t122, { i64, ptr } %t119, i64 -1, i64 -1, i1 true)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s6)
  br label %bb24
bb24:
  %t124 = load i64, ptr %l10, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l10, !tbaa !24
  br label %bb17
bb25:
  br label %bb51
bb26:
  %t128 = load ptr, ptr %l6, !tbaa !29
  store ptr %t128, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t129 = load ptr, ptr %l64, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb27, label %bb28
bb27:
  %t132 = load ptr, ptr %l64, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 11}
  %t135 = icmp eq i64 %t133, 7
  store i1 %t135, ptr %l65, !tbaa !21
  br label %bb28
bb28:
  %t136 = load i1, ptr %l65, !tbaa !21
  br i1 %t136, label %bb29, label %bb30
bb29:
  %t137 = load ptr, ptr %l6, !tbaa !29
  %t139 = getelementptr { i64, [8 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", ptr }, ptr %t139, i32 0, i32 1
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l13, !tbaa !29
  br label %bb31
bb30:
  br label %bb46
bb31:
  %t143 = load ptr, ptr %l13, !tbaa !29
  %t145 = getelementptr %"compiler/ast:TopIf", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb32, label %bb33
bb32:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l74, !tbaa !29
  %t153 = load i64, ptr %l1, !tbaa !24
  store i64 %t153, ptr %l75, !tbaa !24
  %t154 = load ptr, ptr %l13, !tbaa !29
  %t156 = getelementptr %"compiler/ast:TopIf", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = icmp eq ptr %t157, null
  br i1 %t159, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_40d363cef29e2dc3_da67730fe5a0874f)
  unreachable
bb35:
  br label %bb36
bb36:
  %t161 = load ptr, ptr %l13, !tbaa !29
  %t163 = getelementptr %"compiler/ast:TopIf", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t167 = getelementptr %"compiler/ast:TopBranch", ptr %t164, i32 0, i32 1
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  %t169 = load ptr, ptr %l74, !tbaa !29
  %t170 = load i64, ptr %l75, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v1, ptr %t169, i64 %t170, { i64, ptr } %t168)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t172 = load ptr, ptr %l13, !tbaa !29
  %t174 = getelementptr %"compiler/ast:TopIf", ptr %t172, i32 0, i32 3
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = icmp eq ptr %t175, null
  %t179 = xor i1 %t177, true
  br i1 %t179, label %bb39, label %bb40
bb39:
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l87, !tbaa !29
  %t182 = load i64, ptr %l1, !tbaa !24
  store i64 %t182, ptr %l88, !tbaa !24
  %t183 = load ptr, ptr %l13, !tbaa !29
  %t185 = getelementptr %"compiler/ast:TopIf", ptr %t183, i32 0, i32 3
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = icmp eq ptr %t186, null
  br i1 %t188, label %bb41, label %bb42
bb40:
  br label %bb45
bb41:
  call void @__olang_check_failed(ptr @olang_loc_db68d589b432834_a1faf5a9fb6b5a70)
  unreachable
bb42:
  br label %bb43
bb43:
  %t190 = load ptr, ptr %l13, !tbaa !29
  %t192 = getelementptr %"compiler/ast:TopIf", ptr %t190, i32 0, i32 3
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t196 = getelementptr %"compiler/ast:TopBranch", ptr %t193, i32 0, i32 1
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  %t198 = load ptr, ptr %l87, !tbaa !29
  %t199 = load i64, ptr %l88, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v1, ptr %t198, i64 %t199, { i64, ptr } %t197)
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_49068bc24a947660_4b301fa97abc34fc)
  unreachable
bb51:
  br label %bb52
bb52:
  %t201 = load i64, ptr %l4, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l4, !tbaa !24
  br label %bb1
bb53:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i32
  %l30 = alloca i1
  %l31 = alloca i64
  %l34 = alloca i32
  %l36 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i32, ptr %l6, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l13
  br label %bb4
bb4:
  %t17 = load i1, ptr %l13, !tbaa !21
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb9
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l18
  br label %bb8
bb8:
  %t27 = load i1, ptr %l18, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l22, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  store ptr %t40, ptr %l25, !tbaa !29
  %t41 = load i32, ptr %l3, !tbaa !23
  store i32 %t41, ptr %l26, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l3, !tbaa !23
  %t49 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l30
  br label %bb13
bb13:
  %t50 = load i1, ptr %l30, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t51, ptr %l31, !tbaa !24
  br label %bb16
bb15:
  %t53 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t53, ptr %l31, !tbaa !24
  br label %bb16
bb16:
  %t55 = load ptr, ptr %l25, !tbaa !29
  %t56 = load i32, ptr %l26, !tbaa !23
  %t57 = load i64, ptr %l31, !tbaa !24
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t55, i32 %t56, i64 %t57)
  store i32 %t58, ptr %l34
  br label %bb17
bb17:
  %t60 = load ptr, ptr %l21, !tbaa !29
  %t61 = load ptr, ptr %l22, !tbaa !29
  %t62 = load i32, ptr %l34, !tbaa !23
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t60, ptr %t61, i32 %t62, %"compiler/source:Span" %a2)
  store ptr %t64, ptr %l36
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l36, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/names:Ref"
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l22 = alloca %"compiler/names:Ref"
  %l25 = alloca i1
  %l32 = alloca i32
  %l37 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i1
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l54 = alloca %"compiler/names:Ref"
  %l57 = alloca i1
  %l64 = alloca i32
  %l69 = alloca i64
  %rv = alloca i32
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  br label %bb5
bb4:
  br label %bb19
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l18
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 2
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t31 = load i32, ptr %t30, !tbaa !23
  %t32 = load ptr, ptr %l16, !tbaa !29
  %t35 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t32, i64 %t29, i32 %t31)
  store %"compiler/names:Ref" %t35, ptr %l22
  br label %bb7
bb7:
  %t36 = load %"compiler/names:Ref", ptr %l22
  store %"compiler/names:Ref" %t36, ptr %l3
  %t37 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 0
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 9}
  %t40 = trunc i64 4 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 2
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = icmp sge i64 %t44, 0
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 2
  %t56 = load i64, ptr %t55, !tbaa !24
  %t60 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t52, i64 %t54, i64 %t56)
  store i32 %t60, ptr %l32
  br label %bb13
bb12:
  br label %bb18
bb13:
  %t61 = load i32, ptr %l32, !tbaa !23
  store i32 %t61, ptr %l4, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t71, ptr %l37
  br label %bb14
bb14:
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sgt i64 %t72, 0
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t75 = load i32, ptr %l4, !tbaa !23
  store i32 %t75, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb43
bb19:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb20, label %bb21
bb20:
  %t81 = load ptr, ptr %l40, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 30}
  %t84 = icmp eq i64 %t82, 14
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb21
bb21:
  %t85 = load i1, ptr %l41, !tbaa !21
  br i1 %t85, label %bb22, label %bb23
bb22:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t88, i32 0, i32 0
  %t90 = load %"compiler/source:Span", ptr %t89
  store %"compiler/source:Span" %t90, ptr %l5
  br label %bb24
bb23:
  br label %bb38
bb24:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  store ptr %t98, ptr %l48, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t99)
  store ptr %t101, ptr %l50
  br label %bb25
bb25:
  %t102 = load ptr, ptr %l50, !tbaa !29
  %t104 = getelementptr %"compiler/check:frame", ptr %t102, i32 0, i32 2
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t107 = load i32, ptr %t106, !tbaa !23
  %t108 = load ptr, ptr %l48, !tbaa !29
  %t111 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t108, i64 %t105, i32 %t107)
  store %"compiler/names:Ref" %t111, ptr %l54
  br label %bb26
bb26:
  %t112 = load %"compiler/names:Ref", ptr %l54
  store %"compiler/names:Ref" %t112, ptr %l6
  %t113 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t114 = load i32, ptr %t113, !range !{i32 0, i32 9}
  %t116 = trunc i64 4 to i32
  %t117 = icmp eq i32 %t114, %t116
  br i1 %t117, label %bb27, label %bb28
bb27:
  %t119 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t120 = load i64, ptr %t119, !tbaa !24
  %t122 = icmp sge i64 %t120, 0
  store i1 %t122, ptr %l57, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb29
bb29:
  %t124 = load i1, ptr %l57, !tbaa !21
  br i1 %t124, label %bb30, label %bb31
bb30:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t129 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 1
  %t130 = load i64, ptr %t129, !tbaa !24
  %t131 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t132 = load i64, ptr %t131, !tbaa !24
  %t136 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t128, i64 %t130, i64 %t132)
  store i32 %t136, ptr %l64
  br label %bb32
bb31:
  br label %bb37
bb32:
  %t137 = load i32, ptr %l64, !tbaa !23
  store i32 %t137, ptr %l7, !tbaa !23
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/check:Checker", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l7, !tbaa !23
  %t147 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t143, i32 %t144)
  store i64 %t147, ptr %l69
  br label %bb33
bb33:
  %t148 = load i64, ptr %l69, !tbaa !24
  %t149 = icmp sgt i64 %t148, 0
  br i1 %t149, label %bb34, label %bb35
bb34:
  %t151 = load i32, ptr %l7, !tbaa !23
  store i32 %t151, ptr %rv
  br label %ret
bb35:
  br label %bb36
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
  call void @__olang_check_failed(ptr @olang_loc_369dcc443ccea639_2a432d0faa4fb925)
  unreachable
bb43:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i1
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i1
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i64
  %l54 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca i32
  %l66 = alloca i32
  %l77 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca { i64, ptr }
  %l93 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca i64
  %l109 = alloca { i64, ptr }
  %l111 = alloca %"compiler/diagmsg:Msg"
  %l112 = alloca i64
  %l115 = alloca ptr
  %l116 = alloca i64
  %l124 = alloca i64
  %l127 = alloca i64
  %l145 = alloca { i64, ptr }
  %l151 = alloca i64
  %l153 = alloca { i64, ptr }
  %l157 = alloca i32
  %l161 = alloca i1
  %l163 = alloca { i64, ptr }
  %l166 = alloca i1
  %l168 = alloca i1
  %l174 = alloca { i64, ptr }
  %l177 = alloca i1
  %l182 = alloca i1
  %l184 = alloca { i64, ptr }
  %l187 = alloca i1
  %l189 = alloca i1
  %l192 = alloca ptr
  %l196 = alloca i32
  %l198 = alloca { i64, ptr }
  %l201 = alloca i32
  %l202 = alloca i1
  %l204 = alloca { i64, ptr }
  %l210 = alloca ptr
  %l214 = alloca i1
  %l215 = alloca i1
  %l217 = alloca { i64, ptr }
  %l220 = alloca i1
  %l221 = alloca i1
  %l224 = alloca ptr
  %l228 = alloca i32
  %l230 = alloca { i64, ptr }
  %l233 = alloca i32
  %l234 = alloca i1
  %l235 = alloca i1
  %l241 = alloca i64
  %l247 = alloca ptr
  %l248 = alloca { i64, ptr }
  %l251 = alloca %"compiler/source:Span"
  %l254 = alloca { i64, ptr }
  %l256 = alloca %"compiler/diagmsg:Msg"
  %l257 = alloca i64
  %l260 = alloca ptr
  %l264 = alloca i1
  %l266 = alloca { i64, ptr }
  %l269 = alloca i1
  %l272 = alloca { i64, ptr }
  %l275 = alloca ptr
  %l276 = alloca { i64, ptr }
  %l279 = alloca %"compiler/source:Span"
  %l281 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l287 = alloca %"compiler/diagmsg:Msg"
  %l288 = alloca i64
  %l291 = alloca ptr
  %l303 = alloca i64
  %l312 = alloca i64
  %l315 = alloca i64
  %l333 = alloca i64
  %l337 = alloca { i64, ptr }
  %l341 = alloca i32
  %l347 = alloca i32
  %l351 = alloca ptr
  %l356 = alloca i32
  %l357 = alloca i32
  %l361 = alloca i1
  %l362 = alloca ptr
  %l367 = alloca i32
  %l368 = alloca i1
  %l374 = alloca i32
  %l379 = alloca i1
  %l385 = alloca i1
  %l393 = alloca ptr
  %l395 = alloca ptr
  %l401 = alloca i32
  %l405 = alloca i1
  %l406 = alloca ptr
  %l411 = alloca i32
  %l412 = alloca i1
  %l418 = alloca i32
  %l422 = alloca i32
  %l427 = alloca i32
  %l432 = alloca i32
  %l434 = alloca ptr
  %l437 = alloca i64
  %l439 = alloca ptr
  %l444 = alloca { i64, [2 x i64] }
  %l452 = alloca i32
  %l456 = alloca i64
  %l466 = alloca ptr
  %l467 = alloca ptr
  %l468 = alloca i64
  %l471 = alloca %"compiler/generic:Context"
  %l473 = alloca %"compiler/generic:Context"
  %l475 = alloca %"compiler/generic:Context"
  %l484 = alloca ptr
  %l487 = alloca i32
  %l492 = alloca i64
  %l495 = alloca i64
  %l514 = alloca { i64, ptr }
  %l518 = alloca { i64, ptr }
  %l525 = alloca { i64, ptr }
  %l529 = alloca { i64, ptr }
  %l536 = alloca { i64, ptr }
  %l544 = alloca ptr
  %l546 = alloca ptr
  %l548 = alloca ptr
  %l551 = alloca { i64, ptr }
  %l556 = alloca ptr
  %l558 = alloca ptr
  %l570 = alloca ptr
  %l571 = alloca ptr
  %l574 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l576 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l578 = alloca i32
  %l586 = alloca i32
  %l588 = alloca ptr
  %l594 = alloca i1
  %l596 = alloca ptr
  %l600 = alloca i1
  %l603 = alloca i1
  %l605 = alloca ptr
  %l606 = alloca %"compiler/source:Span"
  %l609 = alloca { i64, ptr }
  %l611 = alloca %"compiler/diagmsg:Msg"
  %l612 = alloca i64
  %l614 = alloca ptr
  %l617 = alloca { i64, ptr }
  %l623 = alloca ptr
  %l624 = alloca i64
  %l627 = alloca { i64, [3 x i64] }
  %l628 = alloca %"compiler/check:roFn"
  %l632 = alloca i32
  %l635 = alloca ptr
  %l636 = alloca i32
  %l641 = alloca i64
  %l642 = alloca i32
  %l645 = alloca ptr
  %l646 = alloca i32
  %l651 = alloca i64
  %l652 = alloca i32
  %l653 = alloca %"compiler/source:Span"
  %l654 = alloca i32
  %l657 = alloca i32
  %l658 = alloca { i64, ptr }
  %l662 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %rv = alloca ptr
  %t900 = alloca { i64, [2 x i64] }, align 8
  %t964 = alloca %"compiler/generic:Context", align 8
  %t1460 = alloca { i64, [4 x i64] }, align 8
  %t1472 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Sig", ptr %t4, i32 0, i32 4
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l46, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l1
  %t14 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoreturnSpan(ptr %v0, ptr %t10, %"compiler/source:Span" %t11)
  store %"compiler/source:Span" %t14, ptr %l49
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t15 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnHere(ptr %s1, ptr %s1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t15, ptr %l50
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l46, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l49
  %t18 = load %"compiler/diagmsg:Msg", ptr %l50
  %t19 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t16, %"compiler/source:Span" %t17, %"compiler/diagmsg:Msg" %t18)
  store i64 %t19, ptr %l51
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t20, %"compiler/source:Span" %t21)
  store ptr %t24, ptr %l54
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t25 = load ptr, ptr %l54, !tbaa !29
  store ptr %t25, ptr %rv
  br label %ret
bb7:
  %t26 = load i32, ptr %l3, !tbaa !23
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t30 = icmp ne i32 %t26, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l63
  br label %bb10
bb9:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb11
bb10:
  %t42 = load i32, ptr %l63, !range !{i32 0, i32 33}
  %t44 = trunc i64 21 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l58, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l58, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t48 = load i32, ptr %l3, !tbaa !23
  store i32 %t48, ptr %l66, !tbaa !23
  br label %bb14
bb13:
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t50, ptr %l66, !tbaa !23
  br label %bb14
bb14:
  %t52 = load i32, ptr %l66, !tbaa !23
  store i32 %t52, ptr %l4, !tbaa !23
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/ast:Func", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Sig", ptr %t56, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l5, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l6, !tbaa !24
  %t65 = load i32, ptr %l4, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t69 = icmp ne i32 %t65, %t66
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  store ptr %t76, ptr %l80, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l4, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l85
  br label %bb17
bb16:
  %t87 = icmp sge i64 0, 0
  br i1 %t87, label %bb19, label %bb20
bb17:
  %t89 = load ptr, ptr %l80, !tbaa !29
  %t90 = load i32, ptr %l85, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t89, i32 %t90)
  store { i64, ptr } %t91, ptr %l86
  br label %bb18
bb18:
  %t92 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t92, ptr %l77, !tbaa !27
  br label %bb23
bb19:
  %t93 = icmp sle i64 0, 2305843009213693951
  br i1 %t93, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d264b31a2a0953e1_a8a3a5518784125d)
  unreachable
bb21:
  %t95 = mul i64 0, 4
  %t96 = insertvalue { i64, ptr } undef, i64 0, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t97, ptr %l77, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_d264b31a2a0953e1_a8a3a5518784125d)
  unreachable
bb23:
  %t99 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t99, ptr %l7, !tbaa !27
  %t100 = load i32, ptr %l4, !tbaa !23
  %t101 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t104 = icmp ne i32 %t100, %t101
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = load i64, ptr %l6, !tbaa !24
  %t112 = icmp ne i64 %t108, %t109
  store i1 %t112, ptr %l93, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb26
bb26:
  %t114 = load i1, ptr %l93, !tbaa !21
  br i1 %t114, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s2
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l98, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t116, ptr %l99
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l4, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t117, i32 %t118)
  store { i64, ptr } %t121, ptr %l102
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t122 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  %t124 = extractvalue { i64, ptr } %t122, 1
  %t125 = mul i64 %t123, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t125)
  call void @llvm.memcpy.p0.p0.i64(ptr %t126, ptr %t124, i64 %t125, i1 false)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l103, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l105, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t136 = icmp eq i64 %t134, 1
  br i1 %t136, label %bb30, label %bb31
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l109, !tbaa !27
  br label %bb32
bb31:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l109, !tbaa !27
  br label %bb32
bb32:
  %t138 = load i64, ptr %l6, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t140 = load i64, ptr %l105, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t143 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaArity(ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t139, i64 %t140, { i64, ptr } %t141, i64 %t138)
  store %"compiler/diagmsg:Msg" %t143, ptr %l111
  br label %bb33
bb33:
  %t144 = load ptr, ptr %l98, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l99
  %t146 = load %"compiler/diagmsg:Msg", ptr %l111
  %t147 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t144, %"compiler/source:Span" %t145, %"compiler/diagmsg:Msg" %t146)
  store i64 %t147, ptr %l112
  br label %bb34
bb34:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load %"compiler/source:Span", ptr %l1
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t148, %"compiler/source:Span" %t149)
  store ptr %t152, ptr %l115
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t153 = load ptr, ptr %l115, !tbaa !29
  store ptr %t153, ptr %rv
  br label %ret
bb36:
  %t154 = load i64, ptr %l6, !tbaa !24
  store i64 %t154, ptr %l116, !tbaa !24
  %t155 = load i64, ptr %l116, !tbaa !24
  %t156 = icmp sge i64 %t155, 0
  br i1 %t156, label %bb37, label %bb38
bb37:
  %t158 = load i64, ptr %l116, !tbaa !24
  %t159 = icmp sle i64 %t158, 2305843009213693951
  br i1 %t159, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_3e7f35b161741bd4_701c2e32dccd3eb0)
  unreachable
bb39:
  %t161 = load i64, ptr %l116, !tbaa !24
  %t162 = mul i64 %t161, 4
  %t163 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t162)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  store { i64, ptr } %t165, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t167 = load i64, ptr %l6, !tbaa !24
  store i64 %t167, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t169 = load i64, ptr %l10, !tbaa !24
  %t170 = load i64, ptr %l9, !tbaa !24
  %t173 = icmp sgt i64 %t169, %t170
  br i1 %t173, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_3e7f35b161741bd4_701c2e32dccd3eb0)
  unreachable
bb41:
  %t175 = load i64, ptr %l11, !tbaa !24
  %t177 = icmp sgt i64 %t175, 0
  br i1 %t177, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb46
bb43:
  %t179 = load i64, ptr %l10, !tbaa !24
  %t180 = load i64, ptr %l9, !tbaa !24
  %t183 = sub i64 %t179, %t180
  %t184 = load i64, ptr %l11, !tbaa !24
  %t187 = add i64 %t183, %t184
  %t189 = sub i64 %t187, 1
  %t190 = load i64, ptr %l11, !tbaa !24
  %t193 = sdiv i64 %t189, %t190
  store i64 %t193, ptr %l127, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb45
bb45:
  %t195 = load i64, ptr %l127, !tbaa !24
  store i64 %t195, ptr %l124, !tbaa !24
  br label %bb46
bb46:
  %t196 = load i64, ptr %l124, !tbaa !24
  store i64 %t196, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb47
bb47:
  %t197 = load i64, ptr %l13, !tbaa !24
  %t198 = load i64, ptr %l12, !tbaa !24
  %t201 = icmp slt i64 %t197, %t198
  %t203 = xor i1 %t201, true
  br i1 %t203, label %bb48, label %bb49
bb48:
  br label %bb113
bb49:
  br label %bb50
bb50:
  %t205 = load i64, ptr %l9, !tbaa !24
  %t206 = load i64, ptr %l13, !tbaa !24
  %t207 = load i64, ptr %l11, !tbaa !24
  %t210 = mul i64 %t206, %t207
  %t213 = add i64 %t205, %t210
  store i64 %t213, ptr %l14, !tbaa !24
  %t215 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t215, ptr %l145, !tbaa !27
  %t216 = load i64, ptr %l14, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr ptr, ptr %t219, i64 %t216
  %t221 = load ptr, ptr %t220, !tbaa !39
  %t223 = getelementptr %"compiler/ast:Param", ptr %t221, i32 0, i32 2
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = icmp eq ptr %t224, null
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb51, label %bb52
bb51:
  %t230 = load i64, ptr %l14, !tbaa !24
  store i64 %t230, ptr %l151, !tbaa !24
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t232, ptr %l153, !tbaa !27
  %t233 = load i64, ptr %l14, !tbaa !24
  %t235 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr ptr, ptr %t236, i64 %t233
  %t238 = load ptr, ptr %t237, !tbaa !39
  %t240 = getelementptr %"compiler/ast:Param", ptr %t238, i32 0, i32 2
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t244 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t231, ptr %t241)
  store i32 %t244, ptr %l157
  br label %bb53
bb52:
  %t245 = load i32, ptr %l4, !tbaa !23
  %t246 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t249 = icmp ne i32 %t245, %t246
  br i1 %t249, label %bb100, label %bb101
bb53:
  %t251 = load i32, ptr %l157, !tbaa !23
  %t252 = load i64, ptr %l151, !tbaa !24
  %t253 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr i32, ptr %t254, i64 %t252
  store i32 %t251, ptr %t255, !tbaa !33
  %t256 = load i32, ptr %l4, !tbaa !23
  %t257 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t260 = icmp ne i32 %t256, %t257
  br i1 %t260, label %bb54, label %bb55
bb54:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t263, ptr %l163, !tbaa !27
  %t264 = load i64, ptr %l14, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr i32, ptr %t267, i64 %t264
  %t269 = load i32, ptr %t268, !tbaa !33
  %t272 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t262, i32 %t269, i64 -1)
  store i1 %t272, ptr %l166
  br label %bb56
bb55:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb57
bb56:
  %t273 = load i1, ptr %l166, !tbaa !21
  %t274 = xor i1 %t273, true
  store i1 %t274, ptr %l161, !tbaa !21
  br label %bb57
bb57:
  %t276 = load i1, ptr %l161, !tbaa !21
  br i1 %t276, label %bb58, label %bb59
bb58:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/check:Checker", ptr %t277, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !29
  %t282 = getelementptr %"compiler/generic:Program", ptr %t280, i32 0, i32 2
  %t283 = load i64, ptr %l14, !tbaa !24
  %t285 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr i32, ptr %t286, i64 %t283
  %t288 = load i32, ptr %t287, !tbaa !33
  %t289 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t289, ptr %l174, !tbaa !27
  %t290 = load i64, ptr %l14, !tbaa !24
  %t292 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr i32, ptr %t293, i64 %t290
  %t295 = load i32, ptr %t294, !tbaa !33
  %t299 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t282, i32 %t288, i32 %t295)
  store i1 %t299, ptr %l177
  br label %bb60
bb59:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb61
bb60:
  %t300 = load i1, ptr %l177, !tbaa !21
  %t301 = xor i1 %t300, true
  store i1 %t301, ptr %l168, !tbaa !21
  br label %bb61
bb61:
  %t303 = load i1, ptr %l168, !tbaa !21
  br i1 %t303, label %bb62, label %bb63
bb62:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i64, ptr %l14, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr i32, ptr %t308, i64 %t305
  %t310 = load i32, ptr %t309, !tbaa !33
  %t313 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t304, i32 %t310)
  store i1 %t313, ptr %l182
  br label %bb64
bb63:
  br label %bb99
bb64:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t315, ptr %l184, !tbaa !27
  %t316 = load i64, ptr %l14, !tbaa !24
  %t318 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr i32, ptr %t319, i64 %t316
  %t321 = load i32, ptr %t320, !tbaa !33
  %t324 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t314, i32 %t321)
  store i1 %t324, ptr %l187
  br label %bb65
bb65:
  %t325 = load i1, ptr %l182, !tbaa !21
  %t326 = load i1, ptr %l187, !tbaa !21
  %t327 = icmp ne i1 %t325, %t326
  br i1 %t327, label %bb66, label %bb67
bb66:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/check:Checker", ptr %t329, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t334 = getelementptr %"compiler/generic:Program", ptr %t332, i32 0, i32 2
  store ptr %t334, ptr %l192, !tbaa !29
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load i64, ptr %l14, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr i32, ptr %t339, i64 %t336
  %t341 = load i32, ptr %t340, !tbaa !33
  %t344 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t335, i32 %t341)
  store i32 %t344, ptr %l196
  br label %bb68
bb67:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb71
bb68:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t346, ptr %l198, !tbaa !27
  %t347 = load i64, ptr %l14, !tbaa !24
  %t349 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr i32, ptr %t350, i64 %t347
  %t352 = load i32, ptr %t351, !tbaa !33
  %t355 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t345, i32 %t352)
  store i32 %t355, ptr %l201
  br label %bb69
bb69:
  %t356 = load ptr, ptr %l192, !tbaa !29
  %t357 = load i32, ptr %l196, !tbaa !23
  %t358 = load i32, ptr %l201, !tbaa !23
  %t359 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t356, i32 %t357, i32 %t358)
  store i1 %t359, ptr %l202
  br label %bb70
bb70:
  %t360 = load i1, ptr %l202, !tbaa !21
  store i1 %t360, ptr %l189, !tbaa !21
  br label %bb71
bb71:
  %t361 = load i1, ptr %l189, !tbaa !21
  br i1 %t361, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s7
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t363, ptr %l204, !tbaa !27
  %t364 = load i64, ptr %l14, !tbaa !24
  %t366 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr ptr, ptr %t367, i64 %t364
  %t369 = load ptr, ptr %t368, !tbaa !39
  %t371 = getelementptr %"compiler/ast:Param", ptr %t369, i32 0, i32 0
  %t372 = load %"compiler/source:Span", ptr %t371
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s7, ptr %t362, %"compiler/source:Span" %t372, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load %"compiler/source:Span", ptr %l1
  %t379 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t375, %"compiler/source:Span" %t376)
  store ptr %t379, ptr %l210
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t380 = load ptr, ptr %l210, !tbaa !29
  store ptr %t380, ptr %rv
  br label %ret
bb76:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load i64, ptr %l14, !tbaa !24
  %t384 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !27
  %t386 = getelementptr i32, ptr %t385, i64 %t382
  %t387 = load i32, ptr %t386, !tbaa !33
  %t390 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t381, i32 %t387)
  store i1 %t390, ptr %l214
  br label %bb77
bb77:
  %t391 = load i1, ptr %l214, !tbaa !21
  br i1 %t391, label %bb78, label %bb79
bb78:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t393, ptr %l217, !tbaa !27
  %t394 = load i64, ptr %l14, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l217, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr i32, ptr %t397, i64 %t394
  %t399 = load i32, ptr %t398, !tbaa !33
  %t402 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t392, i32 %t399)
  store i1 %t402, ptr %l220
  br label %bb80
bb79:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb81
bb80:
  %t403 = load i1, ptr %l220, !tbaa !21
  store i1 %t403, ptr %l215, !tbaa !21
  br label %bb81
bb81:
  %t404 = load i1, ptr %l215, !tbaa !21
  br i1 %t404, label %bb82, label %bb83
bb82:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = getelementptr %"compiler/generic:Program", ptr %t408, i32 0, i32 2
  store ptr %t410, ptr %l224, !tbaa !29
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load i64, ptr %l14, !tbaa !24
  %t414 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr i32, ptr %t415, i64 %t412
  %t417 = load i32, ptr %t416, !tbaa !33
  %t420 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t411, i32 %t417)
  store i32 %t420, ptr %l228
  br label %bb84
bb83:
  store i1 false, ptr %l221, !tbaa !21
  br label %bb87
bb84:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t422, ptr %l230, !tbaa !27
  %t423 = load i64, ptr %l14, !tbaa !24
  %t425 = getelementptr { i64, ptr }, ptr %l230, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr i32, ptr %t426, i64 %t423
  %t428 = load i32, ptr %t427, !tbaa !33
  %t431 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t421, i32 %t428)
  store i32 %t431, ptr %l233
  br label %bb85
bb85:
  %t432 = load ptr, ptr %l224, !tbaa !29
  %t433 = load i32, ptr %l228, !tbaa !23
  %t434 = load i32, ptr %l233, !tbaa !23
  %t435 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t432, i32 %t433, i32 %t434)
  store i1 %t435, ptr %l234
  br label %bb86
bb86:
  %t436 = load i1, ptr %l234, !tbaa !21
  store i1 %t436, ptr %l221, !tbaa !21
  br label %bb87
bb87:
  %t437 = load i1, ptr %l221, !tbaa !21
  br i1 %t437, label %bb88, label %bb89
bb88:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/check:Checker", ptr %t438, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t443 = getelementptr %"compiler/generic:Program", ptr %t441, i32 0, i32 2
  %t444 = load i64, ptr %l14, !tbaa !24
  %t446 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = getelementptr i32, ptr %t447, i64 %t444
  %t449 = load i32, ptr %t448, !tbaa !33
  %t452 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t443, i32 %t449)
  store i64 %t452, ptr %l241
  br label %bb90
bb89:
  store i1 false, ptr %l235, !tbaa !21
  br label %bb91
bb90:
  %t453 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t454 = load i64, ptr %l241, !tbaa !24
  %t456 = and i64 %t454, %t453
  %t458 = icmp eq i64 %t456, 0
  store i1 %t458, ptr %l235, !tbaa !21
  br label %bb91
bb91:
  %t460 = load i1, ptr %l235, !tbaa !21
  %t463 = xor i1 %t460, true
  br i1 %t463, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s8
  %t465 = load ptr, ptr %l0, !tbaa !29
  store ptr %t465, ptr %l247, !tbaa !29
  %t466 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t466, ptr %l248, !tbaa !27
  %t467 = load i64, ptr %l14, !tbaa !24
  %t469 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !27
  %t471 = getelementptr ptr, ptr %t470, i64 %t467
  %t472 = load ptr, ptr %t471, !tbaa !39
  %t474 = getelementptr %"compiler/ast:Param", ptr %t472, i32 0, i32 0
  %t475 = load %"compiler/source:Span", ptr %t474
  store %"compiler/source:Span" %t475, ptr %l251
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = load i32, ptr %l4, !tbaa !23
  %t480 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t476, i32 %t477)
  store { i64, ptr } %t480, ptr %l254
  br label %bb94
bb93:
  br label %bb98
bb94:
  %t481 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t482 = extractvalue { i64, ptr } %t481, 0
  %t483 = extractvalue { i64, ptr } %t481, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  %t489 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaSignature(ptr %s8, ptr %s8, { i64, ptr } %t487)
  store %"compiler/diagmsg:Msg" %t489, ptr %l256
  br label %bb95
bb95:
  %t490 = load ptr, ptr %l247, !tbaa !29
  %t491 = load %"compiler/source:Span", ptr %l251
  %t492 = load %"compiler/diagmsg:Msg", ptr %l256
  %t493 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t490, %"compiler/source:Span" %t491, %"compiler/diagmsg:Msg" %t492)
  store i64 %t493, ptr %l257
  br label %bb96
bb96:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load %"compiler/source:Span", ptr %l1
  %t498 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t494, %"compiler/source:Span" %t495)
  store ptr %t498, ptr %l260
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t499 = load ptr, ptr %l260, !tbaa !29
  store ptr %t499, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  br label %bb111
bb100:
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t501 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t501, ptr %l266, !tbaa !27
  %t502 = load i64, ptr %l14, !tbaa !24
  %t504 = getelementptr { i64, ptr }, ptr %l266, i32 0, i32 1
  %t505 = load ptr, ptr %t504, !tbaa !27
  %t506 = getelementptr i32, ptr %t505, i64 %t502
  %t507 = load i32, ptr %t506, !tbaa !33
  %t510 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t500, i32 %t507, i64 -1)
  store i1 %t510, ptr %l269
  br label %bb102
bb101:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb103
bb102:
  %t511 = load i1, ptr %l269, !tbaa !21
  %t512 = xor i1 %t511, true
  store i1 %t512, ptr %l264, !tbaa !21
  br label %bb103
bb103:
  %t514 = load i1, ptr %l264, !tbaa !21
  br i1 %t514, label %bb104, label %bb105
bb104:
  %t515 = load i64, ptr %l14, !tbaa !24
  %t516 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t516, ptr %l272, !tbaa !27
  %t517 = load i64, ptr %l14, !tbaa !24
  %t519 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t520 = load ptr, ptr %t519, !tbaa !27
  %t521 = getelementptr i32, ptr %t520, i64 %t517
  %t522 = load i32, ptr %t521, !tbaa !33
  %t525 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !27
  %t527 = getelementptr i32, ptr %t526, i64 %t515
  store i32 %t522, ptr %t527, !tbaa !33
  br label %bb110
bb105:
  store %olang.scope zeroinitializer, ptr %s11
  %t528 = load ptr, ptr %l0, !tbaa !29
  store ptr %t528, ptr %l275, !tbaa !29
  %t529 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t529, ptr %l276, !tbaa !27
  %t530 = load i64, ptr %l14, !tbaa !24
  %t532 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t533 = load ptr, ptr %t532, !tbaa !27
  %t534 = getelementptr ptr, ptr %t533, i64 %t530
  %t535 = load ptr, ptr %t534, !tbaa !39
  %t537 = getelementptr %"compiler/ast:Param", ptr %t535, i32 0, i32 0
  %t538 = load %"compiler/source:Span", ptr %t537
  store %"compiler/source:Span" %t538, ptr %l279
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t540 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t540, ptr %l281, !tbaa !27
  %t541 = load i64, ptr %l14, !tbaa !24
  %t543 = getelementptr { i64, ptr }, ptr %l281, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !27
  %t545 = getelementptr ptr, ptr %t544, i64 %t541
  %t546 = load ptr, ptr %t545, !tbaa !39
  %t548 = getelementptr %"compiler/ast:Param", ptr %t546, i32 0, i32 1
  %t549 = load i32, ptr %t548, !tbaa !23
  %t552 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s11, ptr %t539, i32 %t549)
  store { i64, ptr } %t552, ptr %l285
  br label %bb106
bb106:
  %t553 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t553, 0
  %t555 = extractvalue { i64, ptr } %t553, 1
  %t556 = mul i64 %t554, 1
  %t557 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t556)
  call void @llvm.memcpy.p0.p0.i64(ptr %t557, ptr %t555, i64 %t556, i1 false)
  %t558 = insertvalue { i64, ptr } undef, i64 %t554, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t557, 1
  %t561 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaParamUntyped(ptr %s11, ptr %s11, { i64, ptr } %t559)
  store %"compiler/diagmsg:Msg" %t561, ptr %l287
  br label %bb107
bb107:
  %t562 = load ptr, ptr %l275, !tbaa !29
  %t563 = load %"compiler/source:Span", ptr %l279
  %t564 = load %"compiler/diagmsg:Msg", ptr %l287
  %t565 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s11, ptr %t562, %"compiler/source:Span" %t563, %"compiler/diagmsg:Msg" %t564)
  store i64 %t565, ptr %l288
  br label %bb108
bb108:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load %"compiler/source:Span", ptr %l1
  %t570 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t566, %"compiler/source:Span" %t567)
  store ptr %t570, ptr %l291
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t571 = load ptr, ptr %l291, !tbaa !29
  store ptr %t571, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t572 = load i64, ptr %l13, !tbaa !24
  %t574 = add i64 %t572, 1
  store i64 %t574, ptr %l13, !tbaa !24
  br label %bb47
bb113:
  store i1 false, ptr %l16, !tbaa !21
  %t576 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t576, ptr %l17, !tbaa !23
  %t578 = load ptr, ptr %l2, !tbaa !29
  %t580 = getelementptr %"compiler/ast:Func", ptr %t578, i32 0, i32 3
  %t581 = load ptr, ptr %t580, !tbaa !29
  %t583 = getelementptr %"compiler/ast:Sig", ptr %t581, i32 0, i32 1
  %t584 = load { i64, ptr }, ptr %t583, !tbaa !27
  %t586 = extractvalue { i64, ptr } %t584, 0
  %t588 = icmp sgt i64 %t586, 0
  br i1 %t588, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s13
  %t590 = load ptr, ptr %l2, !tbaa !29
  %t592 = getelementptr %"compiler/ast:Func", ptr %t590, i32 0, i32 3
  %t593 = load ptr, ptr %t592, !tbaa !29
  %t595 = getelementptr %"compiler/ast:Sig", ptr %t593, i32 0, i32 1
  %t596 = load { i64, ptr }, ptr %t595, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t596, 0
  store i64 %t598, ptr %l303, !tbaa !24
  %t599 = load i64, ptr %l303, !tbaa !24
  %t600 = icmp sge i64 %t599, 0
  br i1 %t600, label %bb116, label %bb117
bb115:
  %t602 = load i32, ptr %l4, !tbaa !23
  %t603 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t606 = icmp ne i32 %t602, %t603
  br i1 %t606, label %bb138, label %bb139
bb116:
  %t608 = load i64, ptr %l303, !tbaa !24
  %t609 = icmp sle i64 %t608, 2305843009213693951
  br i1 %t609, label %bb118, label %bb119
bb117:
  call void @__olang_check_failed(ptr @olang_loc_5a62442bf09cb677_66ce856a58ef9453)
  unreachable
bb118:
  %t611 = load i64, ptr %l303, !tbaa !24
  %t612 = mul i64 %t611, 4
  %t613 = call ptr @__olang_scope_alloc_zeroed(ptr %s13, i64 %t612)
  %t614 = insertvalue { i64, ptr } undef, i64 %t611, 0
  %t615 = insertvalue { i64, ptr } %t614, ptr %t613, 1
  store { i64, ptr } %t615, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t617 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t619 = extractvalue { i64, ptr } %t617, 0
  store i64 %t619, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t621 = load i64, ptr %l20, !tbaa !24
  %t622 = load i64, ptr %l19, !tbaa !24
  %t625 = icmp sgt i64 %t621, %t622
  br i1 %t625, label %bb120, label %bb121
bb119:
  call void @__olang_check_failed(ptr @olang_loc_5a62442bf09cb677_66ce856a58ef9453)
  unreachable
bb120:
  %t627 = load i64, ptr %l21, !tbaa !24
  %t629 = icmp sgt i64 %t627, 0
  br i1 %t629, label %bb122, label %bb123
bb121:
  store i64 0, ptr %l312, !tbaa !24
  br label %bb125
bb122:
  %t631 = load i64, ptr %l20, !tbaa !24
  %t632 = load i64, ptr %l19, !tbaa !24
  %t635 = sub i64 %t631, %t632
  %t636 = load i64, ptr %l21, !tbaa !24
  %t639 = add i64 %t635, %t636
  %t641 = sub i64 %t639, 1
  %t642 = load i64, ptr %l21, !tbaa !24
  %t645 = sdiv i64 %t641, %t642
  store i64 %t645, ptr %l315, !tbaa !24
  br label %bb124
bb123:
  store i64 0, ptr %l315, !tbaa !24
  br label %bb124
bb124:
  %t647 = load i64, ptr %l315, !tbaa !24
  store i64 %t647, ptr %l312, !tbaa !24
  br label %bb125
bb125:
  %t648 = load i64, ptr %l312, !tbaa !24
  store i64 %t648, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb126
bb126:
  %t649 = load i64, ptr %l23, !tbaa !24
  %t650 = load i64, ptr %l22, !tbaa !24
  %t653 = icmp slt i64 %t649, %t650
  %t655 = xor i1 %t653, true
  br i1 %t655, label %bb127, label %bb128
bb127:
  br label %bb132
bb128:
  br label %bb129
bb129:
  %t657 = load i64, ptr %l19, !tbaa !24
  %t658 = load i64, ptr %l23, !tbaa !24
  %t659 = load i64, ptr %l21, !tbaa !24
  %t662 = mul i64 %t658, %t659
  %t665 = add i64 %t657, %t662
  store i64 %t665, ptr %l24, !tbaa !24
  %t667 = load i64, ptr %l24, !tbaa !24
  store i64 %t667, ptr %l333, !tbaa !24
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t669 = load ptr, ptr %l2, !tbaa !29
  %t671 = getelementptr %"compiler/ast:Func", ptr %t669, i32 0, i32 3
  %t672 = load ptr, ptr %t671, !tbaa !29
  %t674 = getelementptr %"compiler/ast:Sig", ptr %t672, i32 0, i32 1
  %t675 = load { i64, ptr }, ptr %t674, !tbaa !27
  store { i64, ptr } %t675, ptr %l337, !tbaa !27
  %t676 = load i64, ptr %l24, !tbaa !24
  %t678 = getelementptr { i64, ptr }, ptr %l337, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = getelementptr ptr, ptr %t679, i64 %t676
  %t681 = load ptr, ptr %t680, !tbaa !39
  %t685 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t668, ptr %t681)
  store i32 %t685, ptr %l341
  br label %bb130
bb130:
  %t686 = load i32, ptr %l341, !tbaa !23
  %t687 = load i64, ptr %l333, !tbaa !24
  %t688 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t689 = load ptr, ptr %t688, !tbaa !27
  %t690 = getelementptr i32, ptr %t689, i64 %t687
  store i32 %t686, ptr %t690, !tbaa !33
  br label %bb131
bb131:
  %t691 = load i64, ptr %l23, !tbaa !24
  %t693 = add i64 %t691, 1
  store i64 %t693, ptr %l23, !tbaa !24
  br label %bb126
bb132:
  %t695 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t697 = extractvalue { i64, ptr } %t695, 0
  %t699 = icmp eq i64 %t697, 1
  br i1 %t699, label %bb133, label %bb134
bb133:
  %t701 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t702 = load ptr, ptr %t701, !tbaa !27
  %t703 = getelementptr i32, ptr %t702, i64 0
  %t704 = load i32, ptr %t703, !tbaa !33
  store i32 %t704, ptr %l347, !tbaa !23
  br label %bb137
bb134:
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/check:Checker", ptr %t706, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t711 = getelementptr %"compiler/generic:Program", ptr %t709, i32 0, i32 2
  store ptr %t711, ptr %l351, !tbaa !29
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t714 = getelementptr %"compiler/check:Checker", ptr %t712, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !29
  %t717 = getelementptr %"compiler/generic:Program", ptr %t715, i32 0, i32 2
  %t718 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t721 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s13, ptr %t717, { i64, ptr } %t718)
  store i32 %t721, ptr %l356
  br label %bb135
bb135:
  %t722 = load ptr, ptr %l351, !tbaa !29
  %t723 = load i32, ptr %l356, !tbaa !23
  %t724 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t722, i32 %t723)
  store i32 %t724, ptr %l357
  br label %bb136
bb136:
  %t725 = load i32, ptr %l357, !tbaa !23
  store i32 %t725, ptr %l347, !tbaa !23
  br label %bb137
bb137:
  %t726 = load i32, ptr %l347, !tbaa !23
  store i32 %t726, ptr %l17, !tbaa !23
  call void @__olang_scope_close(ptr %s13)
  br label %bb147
bb138:
  %t727 = load ptr, ptr %l0, !tbaa !29
  store ptr %t727, ptr %l362, !tbaa !29
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t730 = getelementptr %"compiler/check:Checker", ptr %t728, i32 0, i32 1
  %t731 = load ptr, ptr %t730, !tbaa !29
  %t733 = getelementptr %"compiler/generic:Program", ptr %t731, i32 0, i32 2
  %t734 = load i32, ptr %l4, !tbaa !23
  %t737 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t733, i32 %t734)
  store i32 %t737, ptr %l367
  br label %bb140
bb139:
  store i1 false, ptr %l361, !tbaa !21
  br label %bb142
bb140:
  %t738 = load ptr, ptr %l362, !tbaa !29
  %t739 = load i32, ptr %l367, !tbaa !23
  %t740 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t738, i32 %t739, i64 -1)
  store i1 %t740, ptr %l368
  br label %bb141
bb141:
  %t741 = load i1, ptr %l368, !tbaa !21
  %t742 = xor i1 %t741, true
  store i1 %t742, ptr %l361, !tbaa !21
  br label %bb142
bb142:
  %t744 = load i1, ptr %l361, !tbaa !21
  br i1 %t744, label %bb143, label %bb144
bb143:
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t747 = getelementptr %"compiler/check:Checker", ptr %t745, i32 0, i32 1
  %t748 = load ptr, ptr %t747, !tbaa !29
  %t750 = getelementptr %"compiler/generic:Program", ptr %t748, i32 0, i32 2
  %t751 = load i32, ptr %l4, !tbaa !23
  %t754 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t750, i32 %t751)
  store i32 %t754, ptr %l374
  br label %bb145
bb144:
  store i1 true, ptr %l16, !tbaa !21
  %t755 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t755, ptr %l17, !tbaa !23
  br label %bb146
bb145:
  %t757 = load i32, ptr %l374, !tbaa !23
  store i32 %t757, ptr %l17, !tbaa !23
  br label %bb146
bb146:
  br label %bb147
bb147:
  store i32 0, ptr %l25, !tbaa !23
  store i1 false, ptr %l26, !tbaa !21
  %t758 = load ptr, ptr %l2, !tbaa !29
  %t760 = getelementptr %"compiler/ast:Func", ptr %t758, i32 0, i32 3
  %t761 = load ptr, ptr %t760, !tbaa !29
  %t763 = getelementptr %"compiler/ast:Sig", ptr %t761, i32 0, i32 2
  %t764 = load i1, ptr %t763, !tbaa !21
  br i1 %t764, label %bb148, label %bb149
bb148:
  %t766 = load ptr, ptr %l2, !tbaa !29
  %t768 = getelementptr %"compiler/ast:Func", ptr %t766, i32 0, i32 3
  %t769 = load ptr, ptr %t768, !tbaa !29
  %t771 = getelementptr %"compiler/ast:Sig", ptr %t769, i32 0, i32 3
  %t772 = load { i64, ptr }, ptr %t771, !tbaa !27
  %t774 = extractvalue { i64, ptr } %t772, 0
  %t776 = icmp eq i64 %t774, 0
  store i1 %t776, ptr %l379, !tbaa !21
  br label %bb150
bb149:
  store i1 false, ptr %l379, !tbaa !21
  br label %bb150
bb150:
  %t778 = load i1, ptr %l379, !tbaa !21
  br i1 %t778, label %bb151, label %bb152
bb151:
  %t779 = load i32, ptr %l4, !tbaa !23
  %t780 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t783 = icmp eq i32 %t779, %t780
  store i1 %t783, ptr %l385, !tbaa !21
  br label %bb153
bb152:
  store i1 false, ptr %l385, !tbaa !21
  br label %bb153
bb153:
  %t785 = load i1, ptr %l385, !tbaa !21
  br i1 %t785, label %bb154, label %bb155
bb154:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb170
bb155:
  %t786 = load ptr, ptr %l2, !tbaa !29
  %t788 = getelementptr %"compiler/ast:Func", ptr %t786, i32 0, i32 3
  %t789 = load ptr, ptr %t788, !tbaa !29
  %t791 = getelementptr %"compiler/ast:Sig", ptr %t789, i32 0, i32 2
  %t792 = load i1, ptr %t791, !tbaa !21
  br i1 %t792, label %bb156, label %bb157
bb156:
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t796 = getelementptr %"compiler/check:Checker", ptr %t794, i32 0, i32 1
  %t797 = load ptr, ptr %t796, !tbaa !29
  store ptr %t797, ptr %l393, !tbaa !29
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t800 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t798)
  store ptr %t800, ptr %l395
  br label %bb158
bb157:
  %t801 = load i32, ptr %l4, !tbaa !23
  %t802 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t805 = icmp ne i32 %t801, %t802
  br i1 %t805, label %bb160, label %bb161
bb158:
  %t807 = load ptr, ptr %l395, !tbaa !29
  %t809 = getelementptr %"compiler/check:frame", ptr %t807, i32 0, i32 4
  %t810 = load ptr, ptr %l2, !tbaa !29
  %t812 = getelementptr %"compiler/ast:Func", ptr %t810, i32 0, i32 3
  %t813 = load ptr, ptr %t812, !tbaa !29
  %t815 = getelementptr %"compiler/ast:Sig", ptr %t813, i32 0, i32 3
  %t816 = load { i64, ptr }, ptr %t815, !tbaa !27
  %t817 = load ptr, ptr %l393, !tbaa !29
  %t820 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorList(ptr %v0, ptr %v0, ptr %v1, ptr %t817, ptr %t809, i1 true, { i64, ptr } %t816)
  store i32 %t820, ptr %l401
  br label %bb159
bb159:
  %t821 = load i32, ptr %l401, !tbaa !23
  store i32 %t821, ptr %l25, !tbaa !23
  br label %bb169
bb160:
  %t822 = load ptr, ptr %l0, !tbaa !29
  store ptr %t822, ptr %l406, !tbaa !29
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t825 = getelementptr %"compiler/check:Checker", ptr %t823, i32 0, i32 1
  %t826 = load ptr, ptr %t825, !tbaa !29
  %t828 = getelementptr %"compiler/generic:Program", ptr %t826, i32 0, i32 2
  %t829 = load i32, ptr %l4, !tbaa !23
  %t832 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t828, i32 %t829)
  store i32 %t832, ptr %l411
  br label %bb162
bb161:
  store i1 false, ptr %l405, !tbaa !21
  br label %bb164
bb162:
  %t833 = load ptr, ptr %l406, !tbaa !29
  %t834 = load i32, ptr %l411, !tbaa !23
  %t835 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %t833, i32 %t834, i64 -1)
  store i1 %t835, ptr %l412
  br label %bb163
bb163:
  %t836 = load i1, ptr %l412, !tbaa !21
  %t837 = xor i1 %t836, true
  store i1 %t837, ptr %l405, !tbaa !21
  br label %bb164
bb164:
  %t839 = load i1, ptr %l405, !tbaa !21
  br i1 %t839, label %bb165, label %bb166
bb165:
  %t840 = load ptr, ptr %l0, !tbaa !29
  %t842 = getelementptr %"compiler/check:Checker", ptr %t840, i32 0, i32 1
  %t843 = load ptr, ptr %t842, !tbaa !29
  %t845 = getelementptr %"compiler/generic:Program", ptr %t843, i32 0, i32 2
  %t846 = load i32, ptr %l4, !tbaa !23
  %t849 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t845, i32 %t846)
  store i32 %t849, ptr %l418
  br label %bb167
bb166:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb168
bb167:
  %t850 = load i32, ptr %l418, !tbaa !23
  store i32 %t850, ptr %l25, !tbaa !23
  br label %bb168
bb168:
  br label %bb169
bb169:
  br label %bb170
bb170:
  %t851 = load i32, ptr %l4, !tbaa !23
  %t852 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t855 = icmp ne i32 %t851, %t852
  br i1 %t855, label %bb171, label %bb172
bb171:
  %t857 = load ptr, ptr %l0, !tbaa !29
  %t859 = getelementptr %"compiler/check:Checker", ptr %t857, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !29
  %t862 = getelementptr %"compiler/generic:Program", ptr %t860, i32 0, i32 2
  %t863 = load i32, ptr %l4, !tbaa !23
  %t866 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t862, i32 %t863)
  store i32 %t866, ptr %l427
  br label %bb173
bb172:
  store i32 0, ptr %l422, !tbaa !23
  br label %bb174
bb173:
  %t867 = load i32, ptr %l427, !tbaa !23
  store i32 %t867, ptr %l422, !tbaa !23
  br label %bb174
bb174:
  %t868 = load i32, ptr %l422, !tbaa !23
  store i32 %t868, ptr %l27, !tbaa !23
  %t869 = load ptr, ptr %l0, !tbaa !29
  %t871 = getelementptr %"compiler/check:Checker", ptr %t869, i32 0, i32 1
  %t872 = load ptr, ptr %t871, !tbaa !29
  %t874 = getelementptr %"compiler/generic:Program", ptr %t872, i32 0, i32 2
  %t875 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t878 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t874, { i64, ptr } %t875)
  store i32 %t878, ptr %l432
  br label %bb175
bb175:
  %t879 = load i32, ptr %l432, !tbaa !23
  store i32 %t879, ptr %l28, !tbaa !23
  %t880 = load ptr, ptr %l0, !tbaa !29
  %t882 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t880)
  store ptr %t882, ptr %l434
  br label %bb176
bb176:
  %t883 = load ptr, ptr %l434, !tbaa !29
  store ptr %t883, ptr %l29, !tbaa !29
  %t884 = load ptr, ptr %l0, !tbaa !29
  %t886 = getelementptr %"compiler/check:Checker", ptr %t884, i32 0, i32 16
  %t888 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t886)
  store i64 %t888, ptr %l437
  br label %bb177
bb177:
  %t889 = load i64, ptr %l437, !tbaa !24
  %t890 = sub i64 %t889, 1
  store i64 %t890, ptr %l30, !tbaa !24
  %t892 = load ptr, ptr %l0, !tbaa !29
  store ptr %t892, ptr %l439, !tbaa !29
  %t893 = load ptr, ptr %l29, !tbaa !29
  %t895 = getelementptr %"compiler/check:frame", ptr %t893, i32 0, i32 0
  %t896 = load i64, ptr %t895, !tbaa !24
  %t898 = trunc i64 %t896 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t900
  %t901 = getelementptr { i64, [2 x i64] }, ptr %t900, i32 0, i32 0
  store i64 4, ptr %t901
  %t903 = insertvalue { i32 } undef, i32 %t898, 0
  %t904 = getelementptr { i64, [2 x i64] }, ptr %t900, i32 0, i32 1
  store { i32 } %t903, ptr %t904
  %t905 = load { i64, [2 x i64] }, ptr %t900
  store { i64, [2 x i64] } %t905, ptr %l444
  %t906 = load ptr, ptr %l0, !tbaa !29
  %t908 = getelementptr %"compiler/check:Checker", ptr %t906, i32 0, i32 1
  %t909 = load ptr, ptr %t908, !tbaa !29
  %t911 = getelementptr %"compiler/generic:Program", ptr %t909, i32 0, i32 2
  %t912 = load i32, ptr %l28, !tbaa !23
  %t913 = load i32, ptr %l17, !tbaa !23
  %t914 = load i32, ptr %l25, !tbaa !23
  %t915 = load i32, ptr %l27, !tbaa !23
  %t921 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t911, i32 %t912, i32 %t913, i32 %t914, i32 %t915, i64 0, i1 false, i32 0, i64 0)
  store i32 %t921, ptr %l452
  br label %bb178
bb178:
  %t922 = load ptr, ptr %l29, !tbaa !29
  %t924 = getelementptr %"compiler/check:frame", ptr %t922, i32 0, i32 1
  %t925 = load i64, ptr %t924, !tbaa !24
  %t926 = load %"compiler/source:Span", ptr %l1
  %t927 = load ptr, ptr %l439, !tbaa !29
  %t928 = load { i64, [2 x i64] }, ptr %l444
  %t929 = load i32, ptr %l452, !tbaa !23
  %t932 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t927, { i64, [2 x i64] } %t928, i32 %t929, i64 %t925, %"compiler/source:Span" %t926)
  store i64 %t932, ptr %l456
  br label %bb179
bb179:
  %t933 = load i64, ptr %l456, !tbaa !24
  store i64 %t933, ptr %l31, !tbaa !24
  %t934 = load ptr, ptr %l0, !tbaa !29
  %t936 = getelementptr %"compiler/check:Checker", ptr %t934, i32 0, i32 19
  %t937 = load i64, ptr %l31, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t936, i64 %t937, i64 1)
  br label %bb180
bb180:
  %t940 = load ptr, ptr %l0, !tbaa !29
  %t941 = load i64, ptr %l31, !tbaa !24
  %t942 = load ptr, ptr %l29, !tbaa !29
  %t944 = getelementptr %"compiler/check:frame", ptr %t942, i32 0, i32 1
  %t945 = load i64, ptr %t944, !tbaa !24
  %t946 = load i32, ptr %l17, !tbaa !23
  %t947 = load i32, ptr %l25, !tbaa !23
  %t953 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t940, i64 %t941, i64 %t945, i32 %t946, i32 %t947)
  store ptr %t953, ptr %l466
  br label %bb181
bb181:
  %t954 = load ptr, ptr %l466, !tbaa !29
  store ptr %t954, ptr %l32, !tbaa !29
  %t955 = load ptr, ptr %l32, !tbaa !29
  store ptr %t955, ptr %l467, !tbaa !29
  %t956 = ptrtoint ptr %v0 to i64
  store i64 %t956, ptr %l468, !tbaa !24
  %t957 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t957, label %bb182, label %bb183
bb182:
  %t959 = call ptr @__olang_region_make(ptr %v0)
  %t960 = ptrtoint ptr %t959 to i64
  store i64 %t960, ptr %l468, !tbaa !24
  br label %bb183
bb183:
  %t961 = load ptr, ptr %l29, !tbaa !29
  %t963 = getelementptr %"compiler/check:frame", ptr %t961, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l471, ptr %t963, i64 160, i1 false)
  %t965 = load i64, ptr %l468
  %t966 = inttoptr i64 %t965 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t964, ptr %t966, ptr %l471)
  call void @llvm.memmove.p0.p0.i64(ptr %l473, ptr %t964, i64 160, i1 false)
  br label %bb184
bb184:
  %t968 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t968, label %bb185, label %bb186
bb185:
  %t970 = load i64, ptr %l468
  %t971 = inttoptr i64 %t970 to ptr
  %t972 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 3
  %t973 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t972, i32 0, i32 2
  %t974 = load { i64, ptr }, ptr %t973
  %t975 = extractvalue { i64, ptr } %t974, 1
  %t976 = call ptr @__olang_region_or(ptr %t975, ptr null)
  %t977 = icmp ne ptr %t976, null
  %t978 = select i1 %t977, ptr %t976, ptr null
  %t979 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 3
  %t980 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t979, i32 0, i32 1
  %t981 = load { i64, ptr }, ptr %t980
  %t982 = extractvalue { i64, ptr } %t981, 1
  %t983 = call ptr @__olang_region_or(ptr %t982, ptr null)
  %t984 = icmp ne ptr %t983, null
  %t985 = select i1 %t984, ptr %t983, ptr %t978
  %t986 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 3
  %t987 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t986, i32 0, i32 0
  %t988 = load { i64, ptr }, ptr %t987
  %t989 = extractvalue { i64, ptr } %t988, 1
  %t990 = call ptr @__olang_region_or(ptr %t989, ptr null)
  %t991 = icmp ne ptr %t990, null
  %t992 = select i1 %t991, ptr %t990, ptr %t985
  %t993 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 2
  %t994 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t993, i32 0, i32 2
  %t995 = load { i64, ptr }, ptr %t994
  %t996 = extractvalue { i64, ptr } %t995, 1
  %t997 = call ptr @__olang_region_or(ptr %t996, ptr null)
  %t998 = icmp ne ptr %t997, null
  %t999 = select i1 %t998, ptr %t997, ptr %t992
  %t1000 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 2
  %t1001 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1000, i32 0, i32 1
  %t1002 = load { i64, ptr }, ptr %t1001
  %t1003 = extractvalue { i64, ptr } %t1002, 1
  %t1004 = call ptr @__olang_region_or(ptr %t1003, ptr null)
  %t1005 = icmp ne ptr %t1004, null
  %t1006 = select i1 %t1005, ptr %t1004, ptr %t999
  %t1007 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 2
  %t1008 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1007, i32 0, i32 0
  %t1009 = load { i64, ptr }, ptr %t1008
  %t1010 = extractvalue { i64, ptr } %t1009, 1
  %t1011 = call ptr @__olang_region_or(ptr %t1010, ptr null)
  %t1012 = icmp ne ptr %t1011, null
  %t1013 = select i1 %t1012, ptr %t1011, ptr %t1006
  %t1014 = icmp eq ptr %t1013, %t971
  call void @__olang_region_settle(ptr %t971, i1 %t1014)
  br label %bb186
bb186:
  %t1015 = load ptr, ptr %l467, !tbaa !29
  %t1016 = getelementptr %"compiler/check:frame", ptr %t1015, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l475, ptr %t1016, i64 160, i1 false)
  %t1017 = load ptr, ptr %l467, !tbaa !29
  %t1018 = getelementptr %"compiler/check:frame", ptr %t1017, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t1018, ptr %l473, i64 160, i1 false)
  %t1019 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t1019, label %bb187, label %bb188
bb187:
  %t1021 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 3
  %t1022 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1021, i32 0, i32 2
  %t1023 = load { i64, ptr }, ptr %t1022
  %t1024 = extractvalue { i64, ptr } %t1023, 1
  %t1025 = call ptr @__olang_region_or(ptr %t1024, ptr null)
  %t1026 = icmp ne ptr %t1025, null
  %t1027 = select i1 %t1026, ptr %t1025, ptr null
  %t1028 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 3
  %t1029 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1028, i32 0, i32 1
  %t1030 = load { i64, ptr }, ptr %t1029
  %t1031 = extractvalue { i64, ptr } %t1030, 1
  %t1032 = call ptr @__olang_region_or(ptr %t1031, ptr null)
  %t1033 = icmp ne ptr %t1032, null
  %t1034 = select i1 %t1033, ptr %t1032, ptr %t1027
  %t1035 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 3
  %t1036 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1035, i32 0, i32 0
  %t1037 = load { i64, ptr }, ptr %t1036
  %t1038 = extractvalue { i64, ptr } %t1037, 1
  %t1039 = call ptr @__olang_region_or(ptr %t1038, ptr null)
  %t1040 = icmp ne ptr %t1039, null
  %t1041 = select i1 %t1040, ptr %t1039, ptr %t1034
  %t1042 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 2
  %t1043 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1042, i32 0, i32 2
  %t1044 = load { i64, ptr }, ptr %t1043
  %t1045 = extractvalue { i64, ptr } %t1044, 1
  %t1046 = call ptr @__olang_region_or(ptr %t1045, ptr null)
  %t1047 = icmp ne ptr %t1046, null
  %t1048 = select i1 %t1047, ptr %t1046, ptr %t1041
  %t1049 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 2
  %t1050 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1049, i32 0, i32 1
  %t1051 = load { i64, ptr }, ptr %t1050
  %t1052 = extractvalue { i64, ptr } %t1051, 1
  %t1053 = call ptr @__olang_region_or(ptr %t1052, ptr null)
  %t1054 = icmp ne ptr %t1053, null
  %t1055 = select i1 %t1054, ptr %t1053, ptr %t1048
  %t1056 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 2
  %t1057 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1056, i32 0, i32 0
  %t1058 = load { i64, ptr }, ptr %t1057
  %t1059 = extractvalue { i64, ptr } %t1058, 1
  %t1060 = call ptr @__olang_region_or(ptr %t1059, ptr null)
  %t1061 = icmp ne ptr %t1060, null
  %t1062 = select i1 %t1061, ptr %t1060, ptr %t1055
  call void @__olang_region_drop(ptr %t1062)
  store %"compiler/generic:Context" zeroinitializer, ptr %l475
  br label %bb188
bb188:
  %t1063 = load ptr, ptr %l32, !tbaa !29
  %t1064 = load i64, ptr %l30, !tbaa !24
  %t1067 = getelementptr %"compiler/check:frame", ptr %t1063, i32 0, i32 19
  store i64 %t1064, ptr %t1067, !tbaa !24
  %t1068 = load ptr, ptr %l32, !tbaa !29
  %t1069 = load i1, ptr %l16, !tbaa !21
  %t1072 = getelementptr %"compiler/check:frame", ptr %t1068, i32 0, i32 25
  store i1 %t1069, ptr %t1072, !tbaa !21
  %t1073 = load ptr, ptr %l32, !tbaa !29
  %t1074 = load i1, ptr %l26, !tbaa !21
  %t1077 = getelementptr %"compiler/check:frame", ptr %t1073, i32 0, i32 26
  store i1 %t1074, ptr %t1077, !tbaa !21
  %t1078 = load ptr, ptr %l0, !tbaa !29
  %t1080 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1078)
  store ptr %t1080, ptr %l484
  br label %bb189
bb189:
  %t1081 = load %"compiler/source:Span", ptr %l1
  %t1082 = load ptr, ptr %l484, !tbaa !29
  %t1085 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t1082, i32 -1, i32 0, %"compiler/source:Span" %t1081)
  store i32 %t1085, ptr %l487
  br label %bb190
bb190:
  store i64 0, ptr %l33, !tbaa !24
  %t1086 = load i64, ptr %l6, !tbaa !24
  store i64 %t1086, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t1088 = load i64, ptr %l34, !tbaa !24
  %t1089 = load i64, ptr %l33, !tbaa !24
  %t1092 = icmp sgt i64 %t1088, %t1089
  br i1 %t1092, label %bb191, label %bb192
bb191:
  %t1094 = load i64, ptr %l35, !tbaa !24
  %t1096 = icmp sgt i64 %t1094, 0
  br i1 %t1096, label %bb193, label %bb194
bb192:
  store i64 0, ptr %l492, !tbaa !24
  br label %bb196
bb193:
  %t1098 = load i64, ptr %l34, !tbaa !24
  %t1099 = load i64, ptr %l33, !tbaa !24
  %t1102 = sub i64 %t1098, %t1099
  %t1103 = load i64, ptr %l35, !tbaa !24
  %t1106 = add i64 %t1102, %t1103
  %t1108 = sub i64 %t1106, 1
  %t1109 = load i64, ptr %l35, !tbaa !24
  %t1112 = sdiv i64 %t1108, %t1109
  store i64 %t1112, ptr %l495, !tbaa !24
  br label %bb195
bb194:
  store i64 0, ptr %l495, !tbaa !24
  br label %bb195
bb195:
  %t1114 = load i64, ptr %l495, !tbaa !24
  store i64 %t1114, ptr %l492, !tbaa !24
  br label %bb196
bb196:
  %t1115 = load i64, ptr %l492, !tbaa !24
  store i64 %t1115, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb197
bb197:
  %t1116 = load i64, ptr %l37, !tbaa !24
  %t1117 = load i64, ptr %l36, !tbaa !24
  %t1120 = icmp slt i64 %t1116, %t1117
  %t1122 = xor i1 %t1120, true
  br i1 %t1122, label %bb198, label %bb199
bb198:
  br label %bb207
bb199:
  br label %bb200
bb200:
  %t1124 = load i64, ptr %l33, !tbaa !24
  %t1125 = load i64, ptr %l37, !tbaa !24
  %t1126 = load i64, ptr %l35, !tbaa !24
  %t1129 = mul i64 %t1125, %t1126
  %t1132 = add i64 %t1124, %t1129
  store i64 %t1132, ptr %l38, !tbaa !24
  %t1134 = load ptr, ptr %l0, !tbaa !29
  %t1135 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1135, ptr %l514, !tbaa !27
  %t1136 = load i64, ptr %l38, !tbaa !24
  %t1138 = getelementptr { i64, ptr }, ptr %l514, i32 0, i32 1
  %t1139 = load ptr, ptr %t1138, !tbaa !27
  %t1140 = getelementptr ptr, ptr %t1139, i64 %t1136
  %t1141 = load ptr, ptr %t1140, !tbaa !39
  %t1143 = getelementptr %"compiler/ast:Param", ptr %t1141, i32 0, i32 1
  %t1144 = load i32, ptr %t1143, !tbaa !23
  %t1145 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1145, ptr %l518, !tbaa !27
  %t1146 = load i64, ptr %l38, !tbaa !24
  %t1148 = getelementptr { i64, ptr }, ptr %l518, i32 0, i32 1
  %t1149 = load ptr, ptr %t1148, !tbaa !27
  %t1150 = getelementptr ptr, ptr %t1149, i64 %t1146
  %t1151 = load ptr, ptr %t1150, !tbaa !39
  %t1153 = getelementptr %"compiler/ast:Param", ptr %t1151, i32 0, i32 0
  %t1154 = load %"compiler/source:Span", ptr %t1153
  %t1155 = load i64, ptr %l38, !tbaa !24
  %t1157 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t1158 = load ptr, ptr %t1157, !tbaa !27
  %t1159 = getelementptr i32, ptr %t1158, i64 %t1155
  %t1160 = load i32, ptr %t1159, !tbaa !33
  %t1161 = load i64, ptr %l38, !tbaa !24
  %t1162 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1162, ptr %l525, !tbaa !27
  %t1163 = load i64, ptr %l38, !tbaa !24
  %t1165 = getelementptr { i64, ptr }, ptr %l525, i32 0, i32 1
  %t1166 = load ptr, ptr %t1165, !tbaa !27
  %t1167 = getelementptr ptr, ptr %t1166, i64 %t1163
  %t1168 = load ptr, ptr %t1167, !tbaa !39
  %t1170 = getelementptr %"compiler/ast:Param", ptr %t1168, i32 0, i32 2
  %t1171 = load ptr, ptr %t1170, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %t1134, i32 %t1144, %"compiler/source:Span" %t1154, i32 %t1160, i64 %t1161, ptr %t1171)
  br label %bb201
bb201:
  %t1178 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1178, ptr %l529, !tbaa !27
  %t1179 = load i64, ptr %l38, !tbaa !24
  %t1181 = getelementptr { i64, ptr }, ptr %l529, i32 0, i32 1
  %t1182 = load ptr, ptr %t1181, !tbaa !27
  %t1183 = getelementptr ptr, ptr %t1182, i64 %t1179
  %t1184 = load ptr, ptr %t1183, !tbaa !39
  %t1186 = getelementptr %"compiler/ast:Param", ptr %t1184, i32 0, i32 2
  %t1187 = load ptr, ptr %t1186, !tbaa !29
  %t1189 = icmp eq ptr %t1187, null
  %t1191 = xor i1 %t1189, true
  br i1 %t1191, label %bb202, label %bb203
bb202:
  %t1193 = load ptr, ptr %l0, !tbaa !29
  %t1194 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1194, ptr %l536, !tbaa !27
  %t1195 = load i64, ptr %l38, !tbaa !24
  %t1197 = getelementptr { i64, ptr }, ptr %l536, i32 0, i32 1
  %t1198 = load ptr, ptr %t1197, !tbaa !27
  %t1199 = getelementptr ptr, ptr %t1198, i64 %t1195
  %t1200 = load ptr, ptr %t1199, !tbaa !39
  %t1201 = load i64, ptr %l38, !tbaa !24
  %t1203 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t1204 = load ptr, ptr %t1203, !tbaa !27
  %t1205 = getelementptr i32, ptr %t1204, i64 %t1201
  %t1206 = load i32, ptr %t1205, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v1, ptr %t1193, ptr %t1200, i32 %t1206)
  br label %bb204
bb203:
  br label %bb205
bb204:
  br label %bb205
bb205:
  br label %bb206
bb206:
  %t1210 = load i64, ptr %l37, !tbaa !24
  %t1212 = add i64 %t1210, 1
  store i64 %t1212, ptr %l37, !tbaa !24
  br label %bb197
bb207:
  %t1214 = load ptr, ptr %l0, !tbaa !29
  %t1216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1214)
  store ptr %t1216, ptr %l544
  br label %bb208
bb208:
  %t1217 = load ptr, ptr %l0, !tbaa !29
  %t1219 = getelementptr %"compiler/check:Checker", ptr %t1217, i32 0, i32 1
  %t1220 = load ptr, ptr %t1219, !tbaa !29
  store ptr %t1220, ptr %l546, !tbaa !29
  %t1221 = load ptr, ptr %l0, !tbaa !29
  %t1223 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1221)
  store ptr %t1223, ptr %l548
  br label %bb209
bb209:
  %t1224 = load ptr, ptr %l548, !tbaa !29
  %t1226 = getelementptr %"compiler/typed:Body", ptr %t1224, i32 0, i32 2
  %t1227 = load i32, ptr %t1226, !tbaa !23
  %t1228 = load ptr, ptr %l546, !tbaa !29
  %t1230 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t1228, i32 %t1227)
  store { i64, ptr } %t1230, ptr %l551
  br label %bb210
bb210:
  %t1231 = load { i64, ptr }, ptr %l551, !tbaa !27
  %t1232 = extractvalue { i64, ptr } %t1231, 0
  %t1233 = extractvalue { i64, ptr } %t1231, 1
  %t1234 = mul i64 %t1232, 8
  %t1235 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1234)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1235, ptr %t1233, i64 %t1234, i1 false)
  %t1236 = insertvalue { i64, ptr } undef, i64 %t1232, 0
  %t1237 = insertvalue { i64, ptr } %t1236, ptr %t1235, 1
  %t1238 = load ptr, ptr %l544, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t1238, { i64, ptr } %t1237)
  br label %bb211
bb211:
  %t1240 = load ptr, ptr %l0, !tbaa !29
  %t1241 = load ptr, ptr %l2, !tbaa !29
  %t1243 = getelementptr %"compiler/ast:Func", ptr %t1241, i32 0, i32 4
  %t1244 = load { i64, ptr }, ptr %t1243, !tbaa !27
  %t1247 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v0, ptr %t1240, { i64, ptr } %t1244)
  store ptr %t1247, ptr %l556
  br label %bb212
bb212:
  %t1248 = load ptr, ptr %l556, !tbaa !29
  store ptr %t1248, ptr %l39, !tbaa !29
  %t1249 = load ptr, ptr %l0, !tbaa !29
  %t1251 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1249)
  store ptr %t1251, ptr %l558
  br label %bb213
bb213:
  %t1252 = load ptr, ptr %l558, !tbaa !29
  %t1253 = load ptr, ptr %l39, !tbaa !29
  %t1257 = getelementptr %"compiler/typed:Body", ptr %t1252, i32 0, i32 11
  store ptr %t1253, ptr %t1257, !tbaa !29
  %t1258 = load ptr, ptr %l32, !tbaa !29
  %t1260 = getelementptr %"compiler/check:frame", ptr %t1258, i32 0, i32 25
  %t1261 = load i1, ptr %t1260, !tbaa !21
  br i1 %t1261, label %bb214, label %bb215
bb214:
  %t1263 = load ptr, ptr %l32, !tbaa !29
  %t1265 = getelementptr %"compiler/check:frame", ptr %t1263, i32 0, i32 25
  store i1 false, ptr %t1265, !tbaa !21
  %t1266 = load ptr, ptr %l32, !tbaa !29
  %t1267 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1270 = getelementptr %"compiler/check:frame", ptr %t1266, i32 0, i32 5
  store i32 %t1267, ptr %t1270, !tbaa !23
  br label %bb216
bb215:
  br label %bb216
bb216:
  %t1271 = load ptr, ptr %l32, !tbaa !29
  %t1273 = getelementptr %"compiler/check:frame", ptr %t1271, i32 0, i32 5
  %t1274 = load i32, ptr %t1273, !tbaa !23
  store i32 %t1274, ptr %l17, !tbaa !23
  %t1276 = load i1, ptr %l26, !tbaa !21
  br i1 %t1276, label %bb217, label %bb218
bb217:
  store %olang.scope zeroinitializer, ptr %s31
  %t1278 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1278, ptr %l570, !tbaa !29
  %t1279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1279, ptr %l571, !tbaa !29
  %t1280 = load ptr, ptr %l0, !tbaa !29
  %t1281 = load ptr, ptr %l32, !tbaa !29
  %t1284 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v0, ptr %s31, ptr %t1280, ptr %t1281)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1284, ptr %l574
  br label %bb219
bb218:
  br label %bb222
bb219:
  %t1285 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l574
  %t1286 = call ptr @__olang_scope_alloc_a(ptr %s31, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1285, ptr %t1286
  %t1287 = load ptr, ptr %l571, !tbaa !29
  %t1289 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s31, ptr %s31, ptr %t1287, ptr %t1286)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1289, ptr %l576
  br label %bb220
bb220:
  %t1290 = load ptr, ptr %l570, !tbaa !29
  %t1292 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %s31, ptr %t1290, ptr %l576)
  store i32 %t1292, ptr %l578
  br label %bb221
bb221:
  %t1293 = load i32, ptr %l578, !tbaa !23
  store i32 %t1293, ptr %l25, !tbaa !23
  call void @__olang_scope_close(ptr %s31)
  br label %bb222
bb222:
  %t1294 = load ptr, ptr %l0, !tbaa !29
  %t1296 = getelementptr %"compiler/check:Checker", ptr %t1294, i32 0, i32 1
  %t1297 = load ptr, ptr %t1296, !tbaa !29
  %t1299 = getelementptr %"compiler/generic:Program", ptr %t1297, i32 0, i32 2
  %t1300 = load i32, ptr %l28, !tbaa !23
  %t1301 = load i32, ptr %l17, !tbaa !23
  %t1302 = load i32, ptr %l25, !tbaa !23
  %t1303 = load i32, ptr %l27, !tbaa !23
  %t1309 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t1299, i32 %t1300, i32 %t1301, i32 %t1302, i32 %t1303, i64 0, i1 false, i32 0, i64 0)
  store i32 %t1309, ptr %l586
  br label %bb223
bb223:
  %t1310 = load i32, ptr %l586, !tbaa !23
  store i32 %t1310, ptr %l40, !tbaa !23
  %t1311 = load ptr, ptr %l0, !tbaa !29
  %t1313 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1311)
  store ptr %t1313, ptr %l588
  br label %bb224
bb224:
  %t1314 = load ptr, ptr %l588, !tbaa !29
  %t1315 = load i32, ptr %l40, !tbaa !23
  %t1318 = getelementptr %"compiler/typed:Body", ptr %t1314, i32 0, i32 2
  store i32 %t1315, ptr %t1318, !tbaa !23
  %t1319 = load i32, ptr %l17, !tbaa !23
  %t1320 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1323 = icmp ne i32 %t1319, %t1320
  br i1 %t1323, label %bb225, label %bb226
bb225:
  %t1325 = load ptr, ptr %l0, !tbaa !29
  %t1327 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1325)
  store ptr %t1327, ptr %l596
  br label %bb227
bb226:
  store i1 false, ptr %l594, !tbaa !21
  br label %bb228
bb227:
  %t1328 = load ptr, ptr %l596, !tbaa !29
  %t1330 = getelementptr %"compiler/check:frame", ptr %t1328, i32 0, i32 18
  %t1331 = load i1, ptr %t1330, !tbaa !21
  %t1333 = xor i1 %t1331, true
  store i1 %t1333, ptr %l594, !tbaa !21
  br label %bb228
bb228:
  %t1335 = load i1, ptr %l594, !tbaa !21
  br i1 %t1335, label %bb229, label %bb230
bb229:
  %t1336 = load ptr, ptr %l39, !tbaa !29
  %t1339 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t1336)
  store i1 %t1339, ptr %l603
  br label %bb231
bb230:
  store i1 false, ptr %l600, !tbaa !21
  br label %bb232
bb231:
  %t1340 = load i1, ptr %l603, !tbaa !21
  %t1341 = xor i1 %t1340, true
  store i1 %t1341, ptr %l600, !tbaa !21
  br label %bb232
bb232:
  %t1343 = load i1, ptr %l600, !tbaa !21
  br i1 %t1343, label %bb233, label %bb234
bb233:
  store %olang.scope zeroinitializer, ptr %s32
  %t1344 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1344, ptr %l605, !tbaa !29
  %t1345 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1345, ptr %l606
  %t1346 = load ptr, ptr %l0, !tbaa !29
  %t1347 = load i32, ptr %l17, !tbaa !23
  %t1350 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s32, ptr %t1346, i32 %t1347)
  store { i64, ptr } %t1350, ptr %l609
  br label %bb235
bb234:
  br label %bb238
bb235:
  %t1351 = load { i64, ptr }, ptr %l609, !tbaa !27
  %t1352 = extractvalue { i64, ptr } %t1351, 0
  %t1353 = extractvalue { i64, ptr } %t1351, 1
  %t1354 = mul i64 %t1352, 1
  %t1355 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t1354)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1355, ptr %t1353, i64 %t1354, i1 false)
  %t1356 = insertvalue { i64, ptr } undef, i64 %t1352, 0
  %t1357 = insertvalue { i64, ptr } %t1356, ptr %t1355, 1
  %t1359 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingReturn(ptr %s32, ptr %s32, { i64, ptr } %t1357)
  store %"compiler/diagmsg:Msg" %t1359, ptr %l611
  br label %bb236
bb236:
  %t1360 = load ptr, ptr %l605, !tbaa !29
  %t1361 = load %"compiler/source:Span", ptr %l606
  %t1362 = load %"compiler/diagmsg:Msg", ptr %l611
  %t1363 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s32, ptr %t1360, %"compiler/source:Span" %t1361, %"compiler/diagmsg:Msg" %t1362)
  store i64 %t1363, ptr %l612
  br label %bb237
bb237:
  call void @__olang_scope_close(ptr %s32)
  br label %bb238
bb238:
  %t1364 = load ptr, ptr %l0, !tbaa !29
  %t1366 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1364)
  store ptr %t1366, ptr %l614
  br label %bb239
bb239:
  %t1367 = load ptr, ptr %l614, !tbaa !29
  %t1369 = getelementptr %"compiler/check:frame", ptr %t1367, i32 0, i32 30
  %t1371 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v2, ptr %t1369)
  store { i64, ptr } %t1371, ptr %l617
  br label %bb240
bb240:
  %t1372 = load { i64, ptr }, ptr %l617, !tbaa !27
  store { i64, ptr } %t1372, ptr %l41, !tbaa !27
  %t1373 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t1373)
  br label %bb241
bb241:
  %t1375 = load ptr, ptr %l0, !tbaa !29
  %t1377 = getelementptr %"compiler/check:Checker", ptr %t1375, i32 0, i32 19
  %t1378 = load i64, ptr %l31, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t1377, i64 %t1378, i64 2)
  br label %bb242
bb242:
  %t1381 = load ptr, ptr %l0, !tbaa !29
  %t1383 = getelementptr %"compiler/check:Checker", ptr %t1381, i32 0, i32 86
  store ptr %t1383, ptr %l623, !tbaa !29
  %t1384 = load i64, ptr %l31, !tbaa !24
  store i64 %t1384, ptr %l624, !tbaa !24
  %t1385 = load ptr, ptr %l0, !tbaa !29
  %t1386 = load %"compiler/source:Span", ptr %l1
  %t1389 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t1385, %"compiler/source:Span" %t1386)
  store { i64, [3 x i64] } %t1389, ptr %l627
  br label %bb243
bb243:
  %t1390 = load i64, ptr %l624, !tbaa !24
  %t1391 = load { i64, [3 x i64] }, ptr %l627
  %t1392 = call %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v0, i64 %t1390, i64 0, { i64, [3 x i64] } %t1391, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store %"compiler/check:roFn" %t1392, ptr %l628
  br label %bb244
bb244:
  %t1393 = load ptr, ptr %l623, !tbaa !29
  %t1394 = load %"compiler/check:roFn", ptr %l628
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t1393, %"compiler/check:roFn" %t1394)
  br label %bb245
bb245:
  %t1395 = load i32, ptr %l4, !tbaa !23
  %t1396 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1399 = icmp eq i32 %t1395, %t1396
  br i1 %t1399, label %bb246, label %bb247
bb246:
  %t1401 = load ptr, ptr %l0, !tbaa !29
  %t1403 = getelementptr %"compiler/check:Checker", ptr %t1401, i32 0, i32 1
  %t1404 = load ptr, ptr %t1403, !tbaa !29
  %t1406 = getelementptr %"compiler/generic:Program", ptr %t1404, i32 0, i32 2
  store ptr %t1406, ptr %l635, !tbaa !29
  %t1407 = load i32, ptr %l40, !tbaa !23
  store i32 %t1407, ptr %l636, !tbaa !23
  %t1408 = load ptr, ptr %l0, !tbaa !29
  %t1410 = getelementptr %"compiler/check:Checker", ptr %t1408, i32 0, i32 1
  %t1411 = load ptr, ptr %t1410, !tbaa !29
  %t1412 = load ptr, ptr %l2, !tbaa !29
  %t1414 = getelementptr %"compiler/ast:Func", ptr %t1412, i32 0, i32 3
  %t1415 = load ptr, ptr %t1414, !tbaa !29
  %t1418 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %t1411, ptr %t1415)
  store i64 %t1418, ptr %l641
  br label %bb248
bb247:
  %t1419 = load ptr, ptr %l0, !tbaa !29
  %t1421 = getelementptr %"compiler/check:Checker", ptr %t1419, i32 0, i32 1
  %t1422 = load ptr, ptr %t1421, !tbaa !29
  %t1424 = getelementptr %"compiler/generic:Program", ptr %t1422, i32 0, i32 2
  store ptr %t1424, ptr %l645, !tbaa !29
  %t1425 = load i32, ptr %l40, !tbaa !23
  store i32 %t1425, ptr %l646, !tbaa !23
  %t1426 = load ptr, ptr %l0, !tbaa !29
  %t1428 = getelementptr %"compiler/check:Checker", ptr %t1426, i32 0, i32 1
  %t1429 = load ptr, ptr %t1428, !tbaa !29
  %t1431 = getelementptr %"compiler/generic:Program", ptr %t1429, i32 0, i32 2
  %t1432 = load i32, ptr %l4, !tbaa !23
  %t1435 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t1431, i32 %t1432)
  store i64 %t1435, ptr %l651
  br label %bb250
bb248:
  %t1436 = load ptr, ptr %l635, !tbaa !29
  %t1437 = load i32, ptr %l636, !tbaa !23
  %t1438 = load i64, ptr %l641, !tbaa !24
  %t1439 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t1436, i32 %t1437, i64 %t1438)
  store i32 %t1439, ptr %l642
  br label %bb249
bb249:
  %t1440 = load i32, ptr %l642, !tbaa !23
  store i32 %t1440, ptr %l632, !tbaa !23
  br label %bb252
bb250:
  %t1441 = load ptr, ptr %l645, !tbaa !29
  %t1442 = load i32, ptr %l646, !tbaa !23
  %t1443 = load i64, ptr %l651, !tbaa !24
  %t1444 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t1441, i32 %t1442, i64 %t1443)
  store i32 %t1444, ptr %l652
  br label %bb251
bb251:
  %t1445 = load i32, ptr %l652, !tbaa !23
  store i32 %t1445, ptr %l632, !tbaa !23
  br label %bb252
bb252:
  %t1446 = load i32, ptr %l632, !tbaa !23
  %t1447 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1447, ptr %l653
  store i32 %t1446, ptr %l654, !tbaa !23
  %t1449 = load i64, ptr %l31, !tbaa !24
  %t1451 = trunc i64 %t1449 to i32
  store i32 %t1451, ptr %l657, !tbaa !23
  %t1453 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t1453, ptr %l658, !tbaa !27
  %t1454 = load ptr, ptr %l0, !tbaa !29
  %t1455 = load %"compiler/source:Span", ptr %l1
  %t1459 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t1454, i32 5, %"compiler/source:Span" %t1455)
  store i32 %t1459, ptr %l662
  br label %bb253
bb253:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1460
  %t1461 = getelementptr { i64, [4 x i64] }, ptr %t1460, i32 0, i32 0
  store i64 1, ptr %t1461
  %t1462 = load i32, ptr %l657, !tbaa !23
  %t1463 = insertvalue { i32, { i64, ptr }, i32 } undef, i32 %t1462, 0
  %t1464 = load { i64, ptr }, ptr %l658, !tbaa !27
  %t1465 = insertvalue { i32, { i64, ptr }, i32 } %t1463, { i64, ptr } %t1464, 1
  %t1466 = load i32, ptr %l662, !tbaa !23
  %t1467 = insertvalue { i32, { i64, ptr }, i32 } %t1465, i32 %t1466, 2
  %t1468 = getelementptr { i64, [4 x i64] }, ptr %t1460, i32 0, i32 1
  store { i32, { i64, ptr }, i32 } %t1467, ptr %t1468
  %t1469 = load { i64, [4 x i64] }, ptr %t1460
  %t1471 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t1469, ptr %t1471
  store { i64, [5 x i64] } zeroinitializer, ptr %t1472
  %t1473 = getelementptr { i64, [5 x i64] }, ptr %t1472, i32 0, i32 0
  store i64 15, ptr %t1473
  %t1474 = load %"compiler/source:Span", ptr %l653
  %t1475 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1474, 0
  %t1476 = load i32, ptr %l654, !tbaa !23
  %t1477 = insertvalue { %"compiler/source:Span", i32, ptr } %t1475, i32 %t1476, 1
  %t1479 = insertvalue { %"compiler/source:Span", i32, ptr } %t1477, ptr %t1471, 2
  %t1480 = getelementptr { i64, [5 x i64] }, ptr %t1472, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1479, ptr %t1480
  %t1481 = load { i64, [5 x i64] }, ptr %t1472
  %t1483 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t1481, ptr %t1483
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1483, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  store i32 68, ptr %l56
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
  %t113 = load i32, ptr %l56, !range !{i32 0, i32 114}
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
  store i32 68, ptr %l74
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
  %t138 = load i32, ptr %l74, !range !{i32 0, i32 114}
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

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l20 = alloca i64
  %l23 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca i32
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  %t3 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l3, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l14, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  store i64 %a1, ptr %l5, !tbaa !24
  store i64 %a2, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l7, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l23, !tbaa !24
  store i64 %t39, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l20, !tbaa !24
  store i64 %t40, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  %t59 = load ptr, ptr %l3, !tbaa !29
  store ptr %t59, ptr %l41, !tbaa !29
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr %"compiler/check:frame", ptr %t60, i32 0, i32 28
  %t66 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t62, i64 %t57)
  store i32 %t66, ptr %l45
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l41, !tbaa !29
  %t68 = load i32, ptr %l45, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t67, i32 %t68)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t69 = load i64, ptr %l9, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l9, !tbaa !24
  br label %bb9
bb16:
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %v1, ptr %t73)
  store { i64, ptr } %t75, ptr %l49
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t76 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t76, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elimit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l16 = alloca i32
  %l21 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, ptr }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l31 = alloca i64
  %l34 = alloca ptr
  %l37 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca %"compiler/source:Span"
  %l55 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
  %l62 = alloca ptr
  %l67 = alloca i1
  %l69 = alloca i64
  %l72 = alloca i1
  %l75 = alloca i1
  %l79 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l84 = alloca { i64, ptr }
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %l94 = alloca ptr
  %l97 = alloca i1
  %l102 = alloca i64
  %l108 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca i32
  %l118 = alloca i32
  %l122 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca ptr
  %l125 = alloca %"compiler/source:Span"
  %l126 = alloca i32
  %l127 = alloca i32
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l133 = alloca %"compiler/source:Span"
  %l135 = alloca i32
  %l140 = alloca i64
  %l142 = alloca ptr
  %l144 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca i32
  %l162 = alloca i64
  %l163 = alloca ptr
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %a4)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l16
  br label %bb2
bb2:
  %t12 = load i32, ptr %l16, !tbaa !23
  store i32 %t12, ptr %l6, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l6, !tbaa !23
  %t22 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l21
  br label %bb3
bb3:
  %t23 = load i1, ptr %l21, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l23, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t27, ptr %l24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t28, i32 %t29)
  store { i64, ptr } %t32, ptr %l27
  br label %bb6
bb5:
  br label %bb10
bb6:
  %t33 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %s1, ptr %v0, ptr %s1, ptr %s1, { i64, ptr } %t39, { i64, ptr } %t40, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t43, ptr %l30
  br label %bb7
bb7:
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l24
  %t46 = load %"compiler/diagmsg:Msg", ptr %l30
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t44, %"compiler/source:Span" %t45, %"compiler/diagmsg:Msg" %t46)
  store i64 %t47, ptr %l31
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l1
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t48, %"compiler/source:Span" %t49)
  store ptr %t52, ptr %l34
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  %t53 = load ptr, ptr %l34, !tbaa !29
  store ptr %t53, ptr %rv
  br label %ret
bb10:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t58, ptr %l37
  br label %bb11
bb11:
  %t59 = load i1, ptr %l37, !tbaa !21
  br i1 %t59, label %bb12, label %bb13
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t67, ptr %l42
  br label %bb14
bb13:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb19
bb14:
  %t68 = load i1, ptr %l42, !tbaa !21
  %t69 = xor i1 %t68, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb16:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load i32, ptr %l3, !tbaa !23
  %t78 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l48
  br label %bb17
bb17:
  %t79 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t80 = load i32, ptr %l48, !tbaa !23
  %t82 = icmp ne i32 %t80, %t79
  store i1 %t82, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l44, !tbaa !21
  store i1 %t84, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l38, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s2
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l51, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t87, ptr %l52
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l3, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t88, i32 %t89)
  store { i64, ptr } %t92, ptr %l55
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t93 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t103 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %s2, ptr %v0, ptr %s2, ptr %s2, { i64, ptr } %t99, { i64, ptr } %t100, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t103, ptr %l58
  br label %bb23
bb23:
  %t104 = load ptr, ptr %l51, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l52
  %t106 = load %"compiler/diagmsg:Msg", ptr %l58
  %t107 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t104, %"compiler/source:Span" %t105, %"compiler/diagmsg:Msg" %t106)
  store i64 %t107, ptr %l59
  br label %bb24
bb24:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t108, %"compiler/source:Span" %t109)
  store ptr %t112, ptr %l62
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  %t113 = load ptr, ptr %l62, !tbaa !29
  store ptr %t113, ptr %rv
  br label %ret
bb26:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %l6, !tbaa !23
  %t123 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t119, i32 %t120)
  store i1 %t123, ptr %l67
  br label %bb27
bb27:
  %t124 = load i1, ptr %l67, !tbaa !21
  store i1 %t124, ptr %l7, !tbaa !21
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t127 = call i64 @compiler_2fcheck_2elimitIndex(ptr %v0, { i64, ptr } %t125)
  store i64 %t127, ptr %l69
  br label %bb28
bb28:
  %t128 = load i64, ptr %l69, !tbaa !24
  store i64 %t128, ptr %l8, !tbaa !24
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = icmp slt i64 %t129, 0
  br i1 %t131, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb34
bb30:
  %t133 = load i64, ptr %l8, !tbaa !24
  %t135 = icmp sgt i64 %t133, 1
  br i1 %t135, label %bb31, label %bb32
bb31:
  %t137 = load i1, ptr %l7, !tbaa !21
  %t139 = xor i1 %t137, true
  store i1 %t139, ptr %l75, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb33
bb33:
  %t141 = load i1, ptr %l75, !tbaa !21
  store i1 %t141, ptr %l72, !tbaa !21
  br label %bb34
bb34:
  %t142 = load i1, ptr %l72, !tbaa !21
  br i1 %t142, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s3
  %t143 = load i1, ptr %l7, !tbaa !21
  br i1 %t143, label %bb37, label %bb38
bb36:
  br label %bb44
bb37:
  store { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb39
bb38:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb39
bb39:
  %t145 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t145, ptr %l9, !tbaa !27
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l80, !tbaa !29
  %t147 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t147, ptr %l81
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l3, !tbaa !23
  %t152 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t148, i32 %t149)
  store { i64, ptr } %t152, ptr %l84
  br label %bb40
bb40:
  %t153 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  %t155 = extractvalue { i64, ptr } %t153, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t162 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t165 = extractvalue { i64, ptr } %t161, 1
  %t166 = extractvalue { i64, ptr } %t161, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t162, i64 %t163)
  %t169 = getelementptr i8, ptr %t168, i64 %t163
  call void @olang_textcopy(ptr %t169, ptr %t165, i64 %t166)
  %t170 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = extractvalue { i64, ptr } %t171, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t182 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %s3, ptr %v0, ptr %s3, ptr %s3, { i64, ptr } %t159, { i64, ptr } %t160, { i64, ptr } %t178)
  store %"compiler/diagmsg:Msg" %t182, ptr %l90
  br label %bb41
bb41:
  %t183 = load ptr, ptr %l80, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l81
  %t185 = load %"compiler/diagmsg:Msg", ptr %l90
  %t186 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t183, %"compiler/source:Span" %t184, %"compiler/diagmsg:Msg" %t185)
  store i64 %t186, ptr %l91
  br label %bb42
bb42:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t191 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t187, %"compiler/source:Span" %t188)
  store ptr %t191, ptr %l94
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s3)
  %t192 = load ptr, ptr %l94, !tbaa !29
  store ptr %t192, ptr %rv
  br label %ret
bb44:
  %t193 = load i1, ptr %l7, !tbaa !21
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb45, label %bb46
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l6, !tbaa !23
  %t206 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t202, i32 %t203)
  store i64 %t206, ptr %l102
  br label %bb47
bb46:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb48
bb47:
  %t207 = load i64, ptr %l102, !tbaa !24
  %t208 = icmp sgt i64 %t207, 64
  store i1 %t208, ptr %l97, !tbaa !21
  br label %bb48
bb48:
  %t210 = load i1, ptr %l97, !tbaa !21
  br i1 %t210, label %bb49, label %bb50
bb49:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l6, !tbaa !23
  %t220 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t216, i32 %t217)
  store i1 %t220, ptr %l108
  br label %bb51
bb50:
  br label %bb70
bb51:
  %t221 = load i1, ptr %l108, !tbaa !21
  br i1 %t221, label %bb52, label %bb53
bb52:
  %t222 = load i64, ptr %l8, !tbaa !24
  %t224 = icmp eq i64 %t222, 1
  br i1 %t224, label %bb54, label %bb55
bb53:
  br label %bb60
bb54:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load %"compiler/source:Span", ptr %l1
  %t228 = load i32, ptr %l3, !tbaa !23
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t226, %"compiler/source:Span" %t227, i32 %t228, i64 0)
  store ptr %t232, ptr %l114
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t233 = load ptr, ptr %l114, !tbaa !29
  store ptr %t233, ptr %rv
  br label %ret
bb57:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l115, !tbaa !29
  %t235 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t235, ptr %l116
  %t236 = load i32, ptr %l3, !tbaa !23
  store i32 %t236, ptr %l117, !tbaa !23
  store i32 1, ptr %l118
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l1
  %t239 = load i32, ptr %l3, !tbaa !23
  %t243 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t237, %"compiler/source:Span" %t238, i32 %t239, i64 0)
  store ptr %t243, ptr %l122
  br label %bb58
bb58:
  %t244 = load ptr, ptr %l115, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l116
  %t246 = load i32, ptr %l117, !tbaa !23
  %t247 = load i32, ptr %l118, !range !{i32 0, i32 52}
  %t248 = load ptr, ptr %l122, !tbaa !29
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t244, %"compiler/source:Span" %t245, i32 %t246, i32 %t247, ptr %t248, ptr null)
  store ptr %t249, ptr %l123
  br label %bb59
bb59:
  %t250 = load ptr, ptr %l123, !tbaa !29
  store ptr %t250, ptr %rv
  br label %ret
bb60:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l124, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t252, ptr %l125
  %t253 = load i32, ptr %l3, !tbaa !23
  store i32 %t253, ptr %l126, !tbaa !23
  store i32 8, ptr %l127
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l1
  %t256 = load i32, ptr %l3, !tbaa !23
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t254, %"compiler/source:Span" %t255, i32 %t256, i64 1)
  store ptr %t260, ptr %l131
  br label %bb61
bb61:
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t261, ptr %l132, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t262, ptr %l133
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t263)
  store i32 %t265, ptr %l135
  br label %bb62
bb62:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/check:Checker", ptr %t266, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !29
  %t271 = getelementptr %"compiler/generic:Program", ptr %t269, i32 0, i32 2
  %t272 = load i32, ptr %l6, !tbaa !23
  %t275 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t271, i32 %t272)
  store i64 %t275, ptr %l140
  br label %bb63
bb63:
  %t276 = load i64, ptr %l140, !tbaa !24
  %t277 = sub i64 %t276, 1
  %t278 = load ptr, ptr %l132, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l133
  %t280 = load i32, ptr %l135, !tbaa !23
  %t282 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t278, %"compiler/source:Span" %t279, i32 %t280, i64 %t277)
  store ptr %t282, ptr %l142
  br label %bb64
bb64:
  %t283 = load ptr, ptr %l142, !tbaa !29
  %t284 = load ptr, ptr %l124, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l125
  %t286 = load i32, ptr %l126, !tbaa !23
  %t287 = load i32, ptr %l127, !range !{i32 0, i32 52}
  %t288 = load ptr, ptr %l131, !tbaa !29
  %t290 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t284, %"compiler/source:Span" %t285, i32 %t286, i32 %t287, ptr %t288, ptr %t283)
  store ptr %t290, ptr %l144
  br label %bb65
bb65:
  %t291 = load ptr, ptr %l144, !tbaa !29
  store ptr %t291, ptr %l10, !tbaa !29
  %t292 = load i64, ptr %l8, !tbaa !24
  %t294 = icmp eq i64 %t292, 1
  br i1 %t294, label %bb66, label %bb67
bb66:
  %t296 = load ptr, ptr %l10, !tbaa !29
  store ptr %t296, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load %"compiler/source:Span", ptr %l1
  %t300 = load i32, ptr %l3, !tbaa !23
  %t301 = load ptr, ptr %l10, !tbaa !29
  %t307 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %t298, %"compiler/source:Span" %t299, i32 %t300, i32 1, ptr %t301, ptr null)
  store ptr %t307, ptr %l153
  br label %bb69
bb69:
  %t308 = load ptr, ptr %l153, !tbaa !29
  store ptr %t308, ptr %rv
  br label %ret
bb70:
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l154, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t310, ptr %l155
  %t311 = load i32, ptr %l3, !tbaa !23
  store i32 %t311, ptr %l156, !tbaa !23
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/check:Checker", ptr %t312, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l6, !tbaa !23
  %t319 = load i64, ptr %l8, !tbaa !24
  %t323 = call i64 @compiler_2fcheck_2elimitBits(ptr %v0, ptr %t317, i32 %t318, i64 %t319)
  store i64 %t323, ptr %l162
  br label %bb71
bb71:
  %t324 = load ptr, ptr %l154, !tbaa !29
  %t325 = load %"compiler/source:Span", ptr %l155
  %t326 = load i32, ptr %l156, !tbaa !23
  %t327 = load i64, ptr %l162, !tbaa !24
  %t328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t324, %"compiler/source:Span" %t325, i32 %t326, i64 %t327)
  store ptr %t328, ptr %l163
  br label %bb72
bb72:
  %t329 = load ptr, ptr %l163, !tbaa !29
  store ptr %t329, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBinding(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i1
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l31 = alloca i64
  %l34 = alloca i64
  %l53 = alloca { i64, ptr }
  %l57 = alloca i1
  %l59 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca i64
  %l73 = alloca i32
  %l75 = alloca { i64, ptr }
  %l78 = alloca i1
  %l93 = alloca i32
  %l99 = alloca i64
  %l102 = alloca i64
  %l127 = alloca i1
  %l129 = alloca { i64, ptr }
  %l132 = alloca i1
  %l134 = alloca { i64, ptr }
  %l141 = alloca i32
  %l145 = alloca i1
  %l150 = alloca i64
  %l153 = alloca i1
  %l158 = alloca i64
  %l162 = alloca { i64, ptr }
  %l166 = alloca i1
  %l171 = alloca i1
  %l173 = alloca ptr
  %l174 = alloca i64
  %l175 = alloca i64
  %l181 = alloca i32
  %l183 = alloca i1
  %l185 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l6, !tbaa !24
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Binding", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t6 = load i64, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb6
bb3:
  %t16 = load i64, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l8, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l8, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l34, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l34, !tbaa !24
  store i64 %t32, ptr %l31, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l31, !tbaa !24
  store i64 %t33, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l10, !tbaa !24
  %t35 = load i64, ptr %l9, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb73
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l10, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  store i64 %t50, ptr %l11, !tbaa !24
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Binding", ptr %t52, i32 0, i32 3
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l53, !tbaa !27
  %t56 = load i64, ptr %l11, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i1, ptr %t59, i64 %t56
  %t61 = load i1, ptr %t60, !tbaa !31
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb13
bb12:
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Binding", ptr %t65, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l59, !tbaa !27
  %t69 = load i64, ptr %l11, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i32, ptr %t72, i64 %t69
  %t74 = load i32, ptr %t73, !tbaa !33
  %t75 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t78 = icmp eq i32 %t74, %t75
  store i1 %t78, ptr %l57, !tbaa !21
  br label %bb13
bb13:
  %t80 = load i1, ptr %l57, !tbaa !21
  br i1 %t80, label %bb14, label %bb15
bb14:
  br label %bb72
bb15:
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l65, !tbaa !29
  %t85 = load i64, ptr %l1, !tbaa !24
  store i64 %t85, ptr %l66, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  store i64 %t86, ptr %l67, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Binding", ptr %t93, i32 0, i32 2
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %t92, { i64, ptr } %t96)
  store i32 %t99, ptr %l73
  br label %bb17
bb17:
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Binding", ptr %t100, i32 0, i32 2
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l75, !tbaa !27
  %t104 = load i64, ptr %l11, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i32, ptr %t107, i64 %t104
  %t109 = load i32, ptr %t108, !tbaa !33
  %t110 = load ptr, ptr %l65, !tbaa !29
  %t111 = load i64, ptr %l66, !tbaa !24
  %t112 = load i64, ptr %l67, !tbaa !24
  %t113 = load i32, ptr %l73, !tbaa !23
  %t115 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeetsBound(ptr %v0, ptr %t110, i64 %t111, i64 %t112, i32 %t113, i32 %t109)
  store i1 %t115, ptr %l78
  br label %bb18
bb18:
  %t116 = load i1, ptr %l78, !tbaa !21
  br i1 %t116, label %bb19, label %bb20
bb19:
  br label %bb72
bb20:
  br label %bb21
bb21:
  store ptr @G_2ecompiler_2fcheck_2eliteralOrder, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  %t118 = load ptr, ptr %l12
  store i64 12, ptr %l14, !tbaa !24
  br label %bb22
bb22:
  %t121 = load i64, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l14, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb23, label %bb24
bb23:
  br label %bb71
bb24:
  br label %bb25
bb25:
  %t129 = load ptr, ptr %l12
  %t130 = load i64, ptr %l13, !tbaa !24
  %t133 = getelementptr [12 x { i64, ptr }], ptr %t129, i64 0, i64 %t130
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !37
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  %t143 = load ptr, ptr @__olang_prog_scope
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %t143, ptr %t141, { i64, ptr } %t134)
  store i32 %t146, ptr %l93
  br label %bb26
bb26:
  %t147 = load i32, ptr %l93, !tbaa !23
  store i32 %t147, ptr %l16, !tbaa !23
  store i1 true, ptr %l17, !tbaa !21
  store i64 0, ptr %l18, !tbaa !24
  %t148 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 0
  store i64 %t150, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t152 = load i64, ptr %l19, !tbaa !24
  %t153 = load i64, ptr %l18, !tbaa !24
  %t156 = icmp sgt i64 %t152, %t153
  br i1 %t156, label %bb27, label %bb28
bb27:
  %t158 = load i64, ptr %l20, !tbaa !24
  %t160 = icmp sgt i64 %t158, 0
  br i1 %t160, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb32
bb29:
  %t162 = load i64, ptr %l19, !tbaa !24
  %t163 = load i64, ptr %l18, !tbaa !24
  %t166 = sub i64 %t162, %t163
  %t167 = load i64, ptr %l20, !tbaa !24
  %t170 = add i64 %t166, %t167
  %t172 = sub i64 %t170, 1
  %t173 = load i64, ptr %l20, !tbaa !24
  %t176 = sdiv i64 %t172, %t173
  store i64 %t176, ptr %l102, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb31
bb31:
  %t178 = load i64, ptr %l102, !tbaa !24
  store i64 %t178, ptr %l99, !tbaa !24
  br label %bb32
bb32:
  %t179 = load i64, ptr %l99, !tbaa !24
  store i64 %t179, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb33
bb33:
  %t180 = load i64, ptr %l22, !tbaa !24
  %t181 = load i64, ptr %l21, !tbaa !24
  %t184 = icmp slt i64 %t180, %t181
  %t186 = xor i1 %t184, true
  br i1 %t186, label %bb34, label %bb35
bb34:
  br label %bb61
bb35:
  br label %bb36
bb36:
  %t188 = load i64, ptr %l18, !tbaa !24
  %t189 = load i64, ptr %l22, !tbaa !24
  %t190 = load i64, ptr %l20, !tbaa !24
  %t193 = mul i64 %t189, %t190
  %t196 = add i64 %t188, %t193
  store i64 %t196, ptr %l23, !tbaa !24
  %t198 = load i64, ptr %l23, !tbaa !24
  %t202 = add i64 %t198, %a4
  store i64 %t202, ptr %l24, !tbaa !24
  %t204 = load i64, ptr %l24, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t210 = icmp sge i64 %t204, %t207
  br i1 %t210, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb40
bb38:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t213, ptr %l129, !tbaa !27
  %t214 = load i64, ptr %l23, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr ptr, ptr %t217, i64 %t214
  %t219 = load ptr, ptr %t218, !tbaa !39
  %t222 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v3, ptr %t212, ptr %t219)
  store i1 %t222, ptr %l132
  br label %bb39
bb39:
  %t223 = load i1, ptr %l132, !tbaa !21
  %t224 = xor i1 %t223, true
  store i1 %t224, ptr %l127, !tbaa !21
  br label %bb40
bb40:
  %t226 = load i1, ptr %l127, !tbaa !21
  br i1 %t226, label %bb41, label %bb42
bb41:
  br label %bb60
bb42:
  br label %bb43
bb43:
  %t227 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t227, ptr %l134, !tbaa !27
  %t228 = load i64, ptr %l24, !tbaa !24
  %t230 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr i32, ptr %t231, i64 %t228
  %t233 = load i32, ptr %t232, !tbaa !33
  store i32 %t233, ptr %l25, !tbaa !23
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/check:Checker", ptr %t235, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t240 = getelementptr %"compiler/generic:Program", ptr %t238, i32 0, i32 2
  %t241 = load i32, ptr %l25, !tbaa !23
  %t244 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t240, i32 %t241)
  store i32 %t244, ptr %l141
  br label %bb44
bb44:
  %t245 = load i32, ptr %l141, !range !{i32 0, i32 33}
  %t247 = trunc i64 25 to i32
  %t248 = icmp eq i32 %t245, %t247
  %t250 = xor i1 %t248, true
  br i1 %t250, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb48
bb46:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t257 = getelementptr %"compiler/generic:Program", ptr %t255, i32 0, i32 2
  %t258 = load i32, ptr %l25, !tbaa !23
  %t261 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t257, i32 %t258)
  store i64 %t261, ptr %l150
  br label %bb47
bb47:
  %t262 = load i64, ptr %l1, !tbaa !24
  %t263 = load i64, ptr %l150, !tbaa !24
  %t265 = icmp ne i64 %t263, %t262
  store i1 %t265, ptr %l145, !tbaa !21
  br label %bb48
bb48:
  %t267 = load i1, ptr %l145, !tbaa !21
  br i1 %t267, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb52
bb50:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/check:Checker", ptr %t268, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/generic:Program", ptr %t271, i32 0, i32 2
  %t274 = load i32, ptr %l25, !tbaa !23
  %t277 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t273, i32 %t274)
  store i64 %t277, ptr %l158
  br label %bb51
bb51:
  %t278 = load i64, ptr %l11, !tbaa !24
  %t279 = load i64, ptr %l158, !tbaa !24
  %t281 = icmp ne i64 %t279, %t278
  store i1 %t281, ptr %l153, !tbaa !21
  br label %bb52
bb52:
  %t283 = load i1, ptr %l153, !tbaa !21
  br i1 %t283, label %bb53, label %bb54
bb53:
  br label %bb60
bb54:
  br label %bb55
bb55:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t285, ptr %l162, !tbaa !27
  %t286 = load i64, ptr %l23, !tbaa !24
  %t288 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr ptr, ptr %t289, i64 %t286
  %t291 = load ptr, ptr %t290, !tbaa !39
  %t292 = load i32, ptr %l16, !tbaa !23
  %t296 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v3, ptr %t284, ptr %t291, i32 %t292)
  store i1 %t296, ptr %l166
  br label %bb56
bb56:
  %t297 = load i1, ptr %l166, !tbaa !21
  %t298 = xor i1 %t297, true
  br i1 %t298, label %bb57, label %bb58
bb57:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb59
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t300 = load i64, ptr %l22, !tbaa !24
  %t302 = add i64 %t300, 1
  store i64 %t302, ptr %l22, !tbaa !24
  br label %bb33
bb61:
  %t304 = load i1, ptr %l17, !tbaa !21
  br i1 %t304, label %bb62, label %bb63
bb62:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/check:Checker", ptr %t306, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !29
  store ptr %t309, ptr %l173, !tbaa !29
  %t310 = load i64, ptr %l1, !tbaa !24
  store i64 %t310, ptr %l174, !tbaa !24
  %t311 = load i64, ptr %l11, !tbaa !24
  store i64 %t311, ptr %l175, !tbaa !24
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/check:Checker", ptr %t312, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load ptr, ptr %l2, !tbaa !29
  %t320 = getelementptr %"compiler/generic:Binding", ptr %t318, i32 0, i32 2
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  %t324 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %t317, { i64, ptr } %t321)
  store i32 %t324, ptr %l181
  br label %bb64
bb63:
  store i1 false, ptr %l171, !tbaa !21
  br label %bb66
bb64:
  %t325 = load i32, ptr %l16, !tbaa !23
  %t326 = load ptr, ptr %l173, !tbaa !29
  %t327 = load i64, ptr %l174, !tbaa !24
  %t328 = load i64, ptr %l175, !tbaa !24
  %t329 = load i32, ptr %l181, !tbaa !23
  %t331 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeetsBound(ptr %v0, ptr %t326, i64 %t327, i64 %t328, i32 %t329, i32 %t325)
  store i1 %t331, ptr %l183
  br label %bb65
bb65:
  %t332 = load i1, ptr %l183, !tbaa !21
  store i1 %t332, ptr %l171, !tbaa !21
  br label %bb66
bb66:
  %t333 = load i1, ptr %l171, !tbaa !21
  br i1 %t333, label %bb67, label %bb68
bb67:
  %t334 = load ptr, ptr %l2, !tbaa !29
  %t336 = getelementptr %"compiler/generic:Binding", ptr %t334, i32 0, i32 2
  %t337 = load { i64, ptr }, ptr %t336, !tbaa !27
  store { i64, ptr } %t337, ptr %l185, !tbaa !27
  %t338 = load i64, ptr %l11, !tbaa !24
  %t339 = load i32, ptr %l16, !tbaa !23
  %t342 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr i32, ptr %t343, i64 %t338
  store i32 %t339, ptr %t344, !tbaa !33
  br label %bb71
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t345 = load i64, ptr %l13, !tbaa !24
  %t347 = add i64 %t345, 1
  store i64 %t347, ptr %l13, !tbaa !24
  br label %bb22
bb71:
  br label %bb72
bb72:
  %t349 = load i64, ptr %l10, !tbaa !24
  %t351 = add i64 %t349, 1
  store i64 %t351, ptr %l10, !tbaa !24
  br label %bb7
bb73:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i32
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 8
  %t10 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t6, i32 %a1)
  %t11 = extractvalue { i32, i64 } %t10, 1
  %t12 = extractvalue { i32, i64 } %t10, 0
  store i32 %t12, ptr %l9
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb3, label %ok.14, !prof !99
ok.14:
  store i64 %t11, ptr %l8
  br label %bb2
bb2:
  %t15 = load i64, ptr %l8, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t16 = load i64, ptr %l2, !tbaa !24
  store i64 %t16, ptr %rv
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
  %t115 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOverlap(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t113, { i64, ptr } %t112)
  store %"compiler/diagmsg:Msg" %t115, ptr %l58
  br label %bb19
bb19:
  %t116 = load ptr, ptr %l39, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l42
  %t118 = load %"compiler/diagmsg:Msg", ptr %l58
  %t119 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t116, %"compiler/source:Span" %t117, %"compiler/diagmsg:Msg" %t118)
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
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t176 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
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
  %t196 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %s0, ptr %s0, { i64, ptr } %t194)
  store %"compiler/diagmsg:Msg" %t196, ptr %l88
  br label %bb28
bb28:
  %t197 = load ptr, ptr %l75, !tbaa !29
  %t198 = load i64, ptr %l76, !tbaa !24
  %t199 = load { i64, [3 x i64] }, ptr %l81
  %t200 = load %"compiler/diagmsg:Msg", ptr %l88
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s0, ptr %t197, i64 %t198, { i64, [3 x i64] } %t199, %"compiler/diagmsg:Msg" %t200)
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesEnumOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l15 = alloca i1
  %l21 = alloca i32
  %l25 = alloca i1
  %l30 = alloca i32
  %l34 = alloca i1
  %l39 = alloca i32
  %l44 = alloca i32
  %l49 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i64
  %l57 = alloca i1
  %l60 = alloca ptr
  %l65 = alloca i32
  %l70 = alloca i32
  %l71 = alloca i1
  %l74 = alloca i32
  %l77 = alloca i1
  %l82 = alloca i32
  %l85 = alloca i1
  %l90 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i32, ptr %l7, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t9 = icmp sge i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l3, !tbaa !23
  %t18 = load i32, ptr %l2, !tbaa !23
  %t22 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t16, i32 %t17, i32 %t18)
  store i1 %t22, ptr %l15
  br label %bb4
bb3:
  br label %bb29
bb4:
  %t23 = load i1, ptr %l15, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l21
  br label %bb8
bb8:
  %t35 = load i32, ptr %l21, !range !{i32 0, i32 33}
  %t37 = trunc i64 18 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb12
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l2, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l30
  br label %bb11
bb11:
  %t52 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t54 = trunc i64 18 to i32
  %t55 = icmp eq i32 %t52, %t54
  %t57 = xor i1 %t55, true
  store i1 %t57, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t59 = load i1, ptr %l25, !tbaa !21
  br i1 %t59, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb17
bb14:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l3, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l39
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l2, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l44
  br label %bb16
bb16:
  %t80 = load i32, ptr %l39, !tbaa !23
  %t81 = load i32, ptr %l44, !tbaa !23
  %t82 = icmp ne i32 %t80, %t81
  store i1 %t82, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t84 = load i1, ptr %l34, !tbaa !21
  br i1 %t84, label %bb18, label %bb19
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  store ptr %t91, ptr %l49, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l54
  br label %bb21
bb21:
  %t102 = load ptr, ptr %l49, !tbaa !29
  %t103 = load i32, ptr %l54, !tbaa !23
  %t104 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t102, i32 %t103)
  store i64 %t104, ptr %l55
  br label %bb22
bb22:
  %t105 = load i64, ptr %l55, !tbaa !24
  %t106 = icmp eq i64 %t105, 0
  br i1 %t106, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb28
bb24:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  store ptr %t113, ptr %l60, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %l3, !tbaa !23
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t119, i32 %t120)
  store i32 %t123, ptr %l65
  br label %bb25
bb25:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %l2, !tbaa !23
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t129, i32 %t130)
  store i32 %t133, ptr %l70
  br label %bb26
bb26:
  %t134 = load ptr, ptr %l60, !tbaa !29
  %t135 = load i32, ptr %l65, !tbaa !23
  %t136 = load i32, ptr %l70, !tbaa !23
  %t137 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t134, i32 %t135, i32 %t136)
  store i1 %t137, ptr %l71
  br label %bb27
bb27:
  %t138 = load i1, ptr %l71, !tbaa !21
  store i1 %t138, ptr %l57, !tbaa !21
  br label %bb28
bb28:
  %t139 = load i1, ptr %l57, !tbaa !21
  store i1 %t139, ptr %rv
  br label %ret
bb29:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t144 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t140, ptr %t141)
  store i32 %t144, ptr %l74
  br label %bb30
bb30:
  %t145 = load i32, ptr %l74, !tbaa !23
  store i32 %t145, ptr %l4, !tbaa !23
  %t146 = load i32, ptr %l4, !tbaa !23
  %t148 = icmp sge i32 %t146, 0
  br i1 %t148, label %bb31, label %bb32
bb31:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l2, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l82
  br label %bb33
bb32:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb34
bb33:
  %t160 = load i32, ptr %l82, !range !{i32 0, i32 33}
  %t162 = trunc i64 18 to i32
  %t163 = icmp eq i32 %t160, %t162
  store i1 %t163, ptr %l77, !tbaa !21
  br label %bb34
bb34:
  %t165 = load i1, ptr %l77, !tbaa !21
  br i1 %t165, label %bb35, label %bb36
bb35:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %l2, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t175, ptr %l90
  br label %bb37
bb36:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb38
bb37:
  %t176 = load i32, ptr %l4, !tbaa !23
  %t177 = load i32, ptr %l90, !tbaa !23
  %t179 = icmp eq i32 %t177, %t176
  store i1 %t179, ptr %l85, !tbaa !21
  br label %bb38
bb38:
  %t181 = load i1, ptr %l85, !tbaa !21
  store i1 %t181, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesType(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca { i64, ptr }
  %l17 = alloca i32
  %l20 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l31 = alloca i64
  %l35 = alloca i1
  %l42 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l72 = alloca ptr
  %l75 = alloca i1
  %l80 = alloca i64
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
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t12, { i64, ptr } %t13)
  store i32 %t16, ptr %l17
  br label %bb2
bb2:
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t18 = load i32, ptr %l17, !tbaa !23
  %t20 = icmp ne i32 %t18, %t17
  br i1 %t20, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb4:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t22, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t24, ptr %l22
  br label %bb5
bb5:
  %t25 = load i1, ptr %l22, !tbaa !21
  store i1 %t25, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t26 = load i1, ptr %l20, !tbaa !21
  br i1 %t26, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb8:
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t27, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t29, ptr %l25
  br label %bb9
bb9:
  %t30 = load i1, ptr %l25, !tbaa !21
  store i1 %t30, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l23, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t42 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t36, i64 %a1, i32 %t38)
  store i64 %t42, ptr %l31
  br label %bb14
bb14:
  %t43 = load i64, ptr %l31, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  br i1 %t44, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t47)
  store i1 %t49, ptr %l35
  br label %bb18
bb18:
  %t50 = load i1, ptr %l35, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  store i64 0, ptr %l4, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/load:Loader", ptr %t60, i32 0, i32 10
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l42
  br label %bb22
bb22:
  %t65 = load i64, ptr %l42, !tbaa !24
  store i64 %t65, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l4, !tbaa !24
  %t70 = icmp sgt i64 %t66, %t67
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t72 = load i64, ptr %l6, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb28
bb25:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t77 = load i64, ptr %l4, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l6, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l49, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb27
bb27:
  %t92 = load i64, ptr %l49, !tbaa !24
  store i64 %t92, ptr %l46, !tbaa !24
  br label %bb28
bb28:
  %t93 = load i64, ptr %l46, !tbaa !24
  store i64 %t93, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb30, label %bb31
bb30:
  br label %bb42
bb31:
  br label %bb32
bb32:
  %t102 = load i64, ptr %l4, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t104 = load i64, ptr %l6, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  store i64 %t110, ptr %l9, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/generic:Program", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/load:Loader", ptr %t118, i32 0, i32 10
  %t121 = load i64, ptr %l9, !tbaa !24
  %t124 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t120, i64 %t121)
  store ptr %t124, ptr %l72
  br label %bb33
bb33:
  %t125 = load ptr, ptr %l72, !tbaa !29
  %t127 = getelementptr %"compiler/load:Module", ptr %t125, i32 0, i32 3
  %t128 = load i1, ptr %t127, !tbaa !21
  br i1 %t128, label %bb34, label %bb35
bb34:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t134 = load i64, ptr %l9, !tbaa !24
  %t135 = load i32, ptr %l2, !tbaa !23
  %t139 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t133, i64 %t134, i32 %t135)
  store i64 %t139, ptr %l80
  br label %bb36
bb35:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb37
bb36:
  %t140 = load i64, ptr %l80, !tbaa !24
  %t141 = icmp sge i64 %t140, 0
  store i1 %t141, ptr %l75, !tbaa !21
  br label %bb37
bb37:
  %t143 = load i1, ptr %l75, !tbaa !21
  br i1 %t143, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t145 = load i64, ptr %l8, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l8, !tbaa !24
  br label %bb29
bb42:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedField(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/check:narrowed"
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l49 = alloca ptr
  %l52 = alloca i64
  %l56 = alloca %"compiler/check:narrowed"
  %l60 = alloca i1
  %l63 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca ptr
  %l71 = alloca ptr
  %l74 = alloca i1
  %l89 = alloca i64
  %l92 = alloca i64
  %l110 = alloca { i64, ptr }
  %l121 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
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
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 46
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l23
  br label %bb2
bb2:
  %t10 = load i64, ptr %l23, !tbaa !24
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
  store i64 0, ptr %l27, !tbaa !24
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
  store i64 %t35, ptr %l30, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l30, !tbaa !24
  store i64 %t37, ptr %l27, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l27, !tbaa !24
  store i64 %t38, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb50
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l9, !tbaa !24
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t59 = getelementptr %"compiler/check:frame", ptr %t57, i32 0, i32 46
  store ptr %t59, ptr %l49, !tbaa !29
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/check:frame", ptr %t60, i32 0, i32 46
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l52
  br label %bb13
bb13:
  %t65 = load i64, ptr %l52, !tbaa !24
  %t66 = sub i64 %t65, 1
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = sub i64 %t66, %t67
  %t71 = load ptr, ptr %l49, !tbaa !29
  %t73 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t71, i64 %t70)
  store %"compiler/check:narrowed" %t73, ptr %l56
  br label %bb14
bb14:
  %t74 = load %"compiler/check:narrowed", ptr %l56
  store %"compiler/check:narrowed" %t74, ptr %l10
  %t75 = getelementptr %"compiler/check:narrowed", ptr %l10, i32 0, i32 0
  %t76 = load i64, ptr %t75, !tbaa !24
  %t80 = icmp ne i64 %t76, %a1
  br i1 %t80, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb17
bb16:
  %t82 = getelementptr %"compiler/check:narrowed", ptr %l10, i32 0, i32 5
  %t83 = load i1, ptr %t82, !tbaa !21
  store i1 %t83, ptr %l60, !tbaa !21
  br label %bb17
bb17:
  %t85 = load i1, ptr %l60, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  br label %bb49
bb19:
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  store ptr %t89, ptr %l63, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  %t96 = getelementptr %"compiler/check:narrowed", ptr %l10, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t95, i32 %t97)
  store i32 %t100, ptr %l68
  br label %bb21
bb21:
  %t101 = load ptr, ptr %l63, !tbaa !29
  %t102 = load i32, ptr %l68, !tbaa !23
  %t103 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t101, i32 %t102)
  store ptr %t103, ptr %l69
  br label %bb22
bb22:
  %t104 = getelementptr %"compiler/check:narrowed", ptr %l10, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load ptr, ptr %l69, !tbaa !29
  %t108 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t106, i64 %t105)
  store ptr %t108, ptr %l71
  br label %bb23
bb23:
  %t109 = load ptr, ptr %l71, !tbaa !29
  store ptr %t109, ptr %l11, !tbaa !29
  %t110 = load ptr, ptr %l11, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb26
bb25:
  %t114 = load ptr, ptr %l11, !tbaa !29
  %t116 = getelementptr %"compiler/ast:CaseDecl", ptr %t114, i32 0, i32 3
  %t117 = load i1, ptr %t116, !tbaa !21
  store i1 %t117, ptr %l74, !tbaa !21
  br label %bb26
bb26:
  %t119 = load i1, ptr %l74, !tbaa !21
  br i1 %t119, label %bb27, label %bb28
bb27:
  store i64 -1, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t121 = load ptr, ptr %l11, !tbaa !29
  %t123 = getelementptr %"compiler/ast:CaseDecl", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l12, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t130 = icmp eq i64 %t128, 0
  br i1 %t130, label %bb30, label %bb31
bb30:
  store i64 -1, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  store i64 0, ptr %l13, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t137 = load i64, ptr %l14, !tbaa !24
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = icmp sgt i64 %t137, %t138
  br i1 %t141, label %bb33, label %bb34
bb33:
  %t143 = load i64, ptr %l15, !tbaa !24
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb38
bb35:
  %t147 = load i64, ptr %l14, !tbaa !24
  %t148 = load i64, ptr %l13, !tbaa !24
  %t151 = sub i64 %t147, %t148
  %t152 = load i64, ptr %l15, !tbaa !24
  %t155 = add i64 %t151, %t152
  %t157 = sub i64 %t155, 1
  %t158 = load i64, ptr %l15, !tbaa !24
  %t161 = sdiv i64 %t157, %t158
  store i64 %t161, ptr %l92, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb37
bb37:
  %t163 = load i64, ptr %l92, !tbaa !24
  store i64 %t163, ptr %l89, !tbaa !24
  br label %bb38
bb38:
  %t164 = load i64, ptr %l89, !tbaa !24
  store i64 %t164, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb39
bb39:
  %t165 = load i64, ptr %l17, !tbaa !24
  %t166 = load i64, ptr %l16, !tbaa !24
  %t169 = icmp slt i64 %t165, %t166
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb40, label %bb41
bb40:
  br label %bb48
bb41:
  br label %bb42
bb42:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l17, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = mul i64 %t174, %t175
  %t181 = add i64 %t173, %t178
  store i64 %t181, ptr %l18, !tbaa !24
  %t183 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t183, ptr %l110, !tbaa !27
  %t184 = load i64, ptr %l18, !tbaa !24
  %t186 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr ptr, ptr %t187, i64 %t184
  %t189 = load ptr, ptr %t188, !tbaa !39
  %t191 = getelementptr %"compiler/ast:Param", ptr %t189, i32 0, i32 1
  %t192 = load i32, ptr %t191, !tbaa !23
  %t196 = icmp eq i32 %t192, %a2
  br i1 %t196, label %bb43, label %bb44
bb43:
  %t198 = load ptr, ptr %l3, !tbaa !29
  %t200 = getelementptr %"compiler/check:frame", ptr %t198, i32 0, i32 47
  %t201 = getelementptr %"compiler/check:narrowed", ptr %l10, i32 0, i32 3
  %t202 = load i64, ptr %t201, !tbaa !24
  %t203 = load i64, ptr %l18, !tbaa !24
  %t206 = add i64 %t202, %t203
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t200, i64 %t206)
  store i64 %t209, ptr %l121
  br label %bb45
bb44:
  br label %bb46
bb45:
  %t210 = load i64, ptr %l121, !tbaa !24
  store i64 %t210, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t211 = load i64, ptr %l17, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l17, !tbaa !24
  br label %bb39
bb48:
  store i64 -1, ptr %rv
  br label %ret
bb49:
  %t216 = load i64, ptr %l8, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l8, !tbaa !24
  br label %bb9
bb50:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca { i64, [3 x i64] }
  %l17 = alloca ptr
  %l22 = alloca { i64, [3 x i64] }
  %l23 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i32
  %l51 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca i1
  %l69 = alloca ptr
  %l73 = alloca i64
  %l75 = alloca { i64, ptr }
  %l79 = alloca { i64, [3 x i64] }
  %l80 = alloca ptr
  %l82 = alloca i32
  %l83 = alloca i32
  %l86 = alloca i1
  %l92 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t33 = alloca { i64, [3 x i64] }, align 8
  %t136 = alloca { i64, [3 x i64] }, align 8
  %t183 = alloca { i64, [3 x i64] }, align 8
  %t195 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
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
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l17
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l17, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 3
  %t22 = load i32, ptr %l2, !tbaa !23
  %t24 = sext i32 %t22 to i64
  %t27 = call { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %t21, i64 %t24)
  %t28 = extractvalue { i32, { i64, [3 x i64] } } %t27, 1
  %t29 = extractvalue { i32, { i64, [3 x i64] } } %t27, 0
  store i32 %t29, ptr %l23
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb8, label %ok.31, !prof !99
ok.31:
  store { i64, [3 x i64] } %t28, ptr %l22
  br label %bb7
bb7:
  %t32 = load { i64, [3 x i64] }, ptr %l22
  store { i64, [3 x i64] } %t32, ptr %l15
  br label %bb10
bb8:
  br label %bb9
bb9:
  store { i64, [3 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [3 x i64] }, ptr %t33, i32 0, i32 0
  store i64 0, ptr %t34
  %t35 = load { i64, [3 x i64] }, ptr %t33
  store { i64, [3 x i64] } %t35, ptr %l15
  br label %bb10
bb10:
  %t37 = load { i64, [3 x i64] }, ptr %l15
  store { i64, [3 x i64] } %t37, ptr %rv
  br label %ret
bb11:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l3, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t55, i32 0, i32 3
  %t57 = load i64, ptr %t56
  store i64 %t57, ptr %l4, !tbaa !24
  br label %bb16
bb15:
  br label %bb51
bb16:
  %t59 = load ptr, ptr %l3, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t60 = load ptr, ptr %l33, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 5
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb21
bb20:
  br label %bb38
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  store ptr %t79, ptr %l41, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l42, !tbaa !29
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Payload", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t84)
  store i32 %t86, ptr %l45
  br label %bb22
bb22:
  %t87 = load ptr, ptr %l42, !tbaa !29
  %t88 = load i32, ptr %l45, !tbaa !23
  %t89 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t89, ptr %l46
  br label %bb23
bb23:
  %t90 = load ptr, ptr %l41, !tbaa !29
  %t91 = load i32, ptr %l46, !tbaa !23
  %t92 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t92, ptr %l47
  br label %bb24
bb24:
  %t93 = load i32, ptr %l47, !tbaa !23
  store i32 %t93, ptr %l6, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load i32, ptr %l6, !tbaa !23
  %t101 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t97, i32 %t98)
  store ptr %t101, ptr %l51
  br label %bb25
bb25:
  %t102 = load ptr, ptr %l5, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Payload", ptr %t102, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load ptr, ptr %l51, !tbaa !29
  %t108 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t106, i64 %t105)
  store ptr %t108, ptr %l54
  br label %bb26
bb26:
  %t109 = load ptr, ptr %l54, !tbaa !29
  store ptr %t109, ptr %l7, !tbaa !29
  %t110 = load ptr, ptr %l7, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb29
bb28:
  %t114 = load ptr, ptr %l7, !tbaa !29
  %t116 = getelementptr %"compiler/ast:CaseDecl", ptr %t114, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = icmp eq i64 %t119, 0
  store i1 %t121, ptr %l57, !tbaa !21
  br label %bb29
bb29:
  %t123 = load i1, ptr %l57, !tbaa !21
  br i1 %t123, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb32
bb31:
  %t124 = load i64, ptr %l4, !tbaa !24
  %t125 = load ptr, ptr %l7, !tbaa !29
  %t127 = getelementptr %"compiler/ast:CaseDecl", ptr %t125, i32 0, i32 2
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t133 = icmp sge i64 %t124, %t130
  store i1 %t133, ptr %l62, !tbaa !21
  br label %bb32
bb32:
  %t135 = load i1, ptr %l62, !tbaa !21
  br i1 %t135, label %bb33, label %bb34
bb33:
  store { i64, [3 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [3 x i64] }, ptr %t136, i32 0, i32 0
  store i64 0, ptr %t137
  %t138 = load { i64, [3 x i64] }, ptr %t136
  store { i64, [3 x i64] } %t138, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l69, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t145 = load i32, ptr %l6, !tbaa !23
  %t148 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t144, i32 %t145)
  store i64 %t148, ptr %l73
  br label %bb36
bb36:
  %t149 = load ptr, ptr %l7, !tbaa !29
  %t151 = getelementptr %"compiler/ast:CaseDecl", ptr %t149, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  store { i64, ptr } %t152, ptr %l75, !tbaa !27
  %t153 = load i64, ptr %l4, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr ptr, ptr %t156, i64 %t153
  %t158 = load ptr, ptr %t157, !tbaa !39
  %t160 = getelementptr %"compiler/ast:Param", ptr %t158, i32 0, i32 2
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load ptr, ptr %l69, !tbaa !29
  %t163 = load i64, ptr %l73, !tbaa !24
  %t165 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t162, i64 %t163, ptr %t161)
  store { i64, [3 x i64] } %t165, ptr %l79
  br label %bb37
bb37:
  %t166 = load { i64, [3 x i64] }, ptr %l79
  store { i64, [3 x i64] } %t166, ptr %rv
  br label %ret
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_715bda85e546d34f_b961a877464e92ab)
  unreachable
bb43:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l80, !tbaa !29
  %t168 = load ptr, ptr %l3, !tbaa !29
  %t170 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t168)
  store i32 %t170, ptr %l82
  br label %bb44
bb44:
  %t171 = load ptr, ptr %l80, !tbaa !29
  %t172 = load i32, ptr %l82, !tbaa !23
  %t173 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t173, ptr %l83
  br label %bb45
bb45:
  %t174 = load i32, ptr %l83, !tbaa !23
  store i32 %t174, ptr %l8, !tbaa !23
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l8, !tbaa !23
  %t179 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t175, i32 %t176)
  store i1 %t179, ptr %l86
  br label %bb46
bb46:
  %t180 = load i1, ptr %l86, !tbaa !21
  %t181 = xor i1 %t180, true
  br i1 %t181, label %bb47, label %bb48
bb47:
  store { i64, [3 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 0
  store i64 0, ptr %t184
  %t185 = load { i64, [3 x i64] }, ptr %t183
  store { i64, [3 x i64] } %t185, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i32, ptr %l8, !tbaa !23
  %t189 = load i64, ptr %l4, !tbaa !24
  %t193 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldDeclAt(ptr %v0, ptr %t187, i32 %t188, i64 %t189)
  store { i64, [3 x i64] } %t193, ptr %l92
  br label %bb50
bb50:
  %t194 = load { i64, [3 x i64] }, ptr %l92
  store { i64, [3 x i64] } %t194, ptr %rv
  br label %ret
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store { i64, [3 x i64] } zeroinitializer, ptr %t195
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t195, i32 0, i32 0
  store i64 0, ptr %t196
  %t197 = load { i64, [3 x i64] }, ptr %t195
  store { i64, [3 x i64] } %t197, ptr %rv
  br label %ret
bb55:
  call void @__olang_check_failed(ptr @olang_loc_403dca98cd10a30e_10bb73906b0115ea)
  unreachable
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArg(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  store i1 %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load i1, ptr %l18, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushErrNarrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l14 = alloca i32
  %l19 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i32
  %l49 = alloca %"compiler/check:errNarrow"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v1, ptr %t9, ptr %t10)
  store i32 %t13, ptr %l14
  br label %bb5
bb5:
  %t14 = load i32, ptr %l14, !tbaa !23
  store i32 %t14, ptr %l4, !tbaa !23
  %t15 = load i32, ptr %l4, !tbaa !23
  %t17 = icmp eq i32 %t15, 0
  br i1 %t17, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l4, !tbaa !23
  %t23 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t19, i32 %t20)
  store i64 %t23, ptr %l19
  br label %bb9
bb9:
  %t24 = load i64, ptr %l19, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp slt i64 %t25, 0
  br i1 %t27, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load i32, ptr %l4, !tbaa !23
  store i32 %t30, ptr %l23, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  store ptr %t36, ptr %l26, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t37, i64 %t38)
  store i32 %t41, ptr %l29
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l26, !tbaa !29
  %t43 = load i32, ptr %l29, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t44, ptr %l30
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = load i32, ptr %l23, !tbaa !23
  %t47 = load i32, ptr %l30, !tbaa !23
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %s0, ptr %t45, i32 %t46, i32 %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l31
  br label %bb15
bb15:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l6
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = load i32, ptr %l4, !tbaa !23
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t50, ptr %t51, i1 %a2, i32 %t53, ptr %l6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l37
  br label %bb16
bb16:
  %t61 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, ptr %l39
  br label %bb17
bb17:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l7
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t63)
  store ptr %t65, ptr %l41
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l41, !tbaa !29
  %t68 = getelementptr %"compiler/check:frame", ptr %t66, i32 0, i32 59
  store ptr %t68, ptr %l43, !tbaa !29
  %t69 = load i32, ptr %l4, !tbaa !23
  store i32 %t69, ptr %l44, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t73 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %s0, ptr %t70, ptr %l7)
  store i32 %t73, ptr %l47
  br label %bb19
bb19:
  %t75 = load i32, ptr %l44, !tbaa !23
  %t76 = load i32, ptr %l47, !tbaa !23
  %t78 = call %"compiler/check:errNarrow" @compiler_2fcheck_3aerrNarrow_2ector(ptr %s0, i32 %t75, i32 %t76, i64 %a3, i1 false)
  store %"compiler/check:errNarrow" %t78, ptr %l49
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load %"compiler/check:errNarrow", ptr %l49
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2ePush_H97bb9732c658fc3569a453b270fe50d0(ptr %v0, ptr %t79, %"compiler/check:errNarrow" %t80)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l13 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca i1
  %s0 = alloca %olang.scope
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
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) })
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
  %t14 = load i32, ptr %l2, !tbaa !23
  %t16 = icmp sge i32 %t14, 0
  br i1 %t16, label %bb9, label %bb10
bb9:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t18)
  store ptr %t20, ptr %l13
  br label %bb11
bb10:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t21)
  store ptr %t23, ptr %l19
  br label %bb13
bb11:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t24, i32 0, i32 4
  %t27 = getelementptr %"compiler/generic:Context", ptr %t26, i32 0, i32 3
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t27, i32 %t28, i32 %t29)
  br label %bb12
bb12:
  br label %bb15
bb13:
  %t33 = load ptr, ptr %l19, !tbaa !29
  %t35 = getelementptr %"compiler/check:frame", ptr %t33, i32 0, i32 4
  %t36 = getelementptr %"compiler/generic:Context", ptr %t35, i32 0, i32 3
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H2c4b9eb360b9a0ada2008890a467b28d(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l23
  br label %bb14
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCheckCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i1
  %l20 = alloca i64
  %l22 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l55 = alloca i64
  %l58 = alloca i64
  %l79 = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 19
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l20
  br label %bb4
bb4:
  %t18 = load i64, ptr %l20, !tbaa !24
  %t19 = icmp ne i64 %t18, 0
  store i1 %t19, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l16, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb9
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t22, i64 %t23)
  store i1 %t26, ptr %l25
  br label %bb8
bb8:
  %t27 = load i1, ptr %l25, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l22, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l29
  br label %bb13
bb13:
  %t36 = load i1, ptr %l29, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l34
  br label %bb16
bb15:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb17
bb16:
  %t44 = load i1, ptr %l34, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l31, !tbaa !21
  br label %bb17
bb17:
  %t47 = load i1, ptr %l31, !tbaa !21
  br i1 %t47, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  store ptr %t53, ptr %l38, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  store ptr %t59, ptr %l41, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 14
  %t63 = load i64, ptr %l3, !tbaa !24
  %t66 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l45
  br label %bb21
bb21:
  %t67 = load ptr, ptr %l45, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %t69, !tbaa !23
  %t71 = load ptr, ptr %l41, !tbaa !29
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t71, i32 %t70)
  store i32 %t73, ptr %l48
  br label %bb22
bb22:
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t75 = load i32, ptr %l48, !tbaa !23
  %t76 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t74, i32 %t75)
  store { i64, ptr } %t76, ptr %l49
  br label %bb23
bb23:
  %t77 = load { i64, ptr }, ptr %l49, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t80 = extractvalue { i64, ptr } %t77, 0
  store i64 %t80, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = icmp sgt i64 %t82, %t83
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t88 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp sgt i64 %t88, 0
  br i1 %t90, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb29
bb26:
  %t92 = load i64, ptr %l6, !tbaa !24
  %t93 = load i64, ptr %l5, !tbaa !24
  %t96 = sub i64 %t92, %t93
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = add i64 %t96, %t97
  %t102 = sub i64 %t100, 1
  %t103 = load i64, ptr %l7, !tbaa !24
  %t106 = sdiv i64 %t102, %t103
  store i64 %t106, ptr %l58, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb28
bb28:
  %t108 = load i64, ptr %l58, !tbaa !24
  store i64 %t108, ptr %l55, !tbaa !24
  br label %bb29
bb29:
  %t109 = load i64, ptr %l55, !tbaa !24
  store i64 %t109, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb30
bb30:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t111 = load i64, ptr %l8, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb31, label %bb32
bb31:
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t118 = load i64, ptr %l5, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t120 = load i64, ptr %l7, !tbaa !24
  %t123 = mul i64 %t119, %t120
  %t126 = add i64 %t118, %t123
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l3, !tbaa !24
  %t134 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %t128, i64 %t129, i64 %t126)
  store i1 %t134, ptr %l79
  br label %bb34
bb34:
  %t135 = load i1, ptr %l79, !tbaa !21
  br i1 %t135, label %bb35, label %bb36
bb35:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %t136, i64 %t137)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %ret
bb38:
  br label %bb39
bb39:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l9, !tbaa !24
  br label %bb30
bb40:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
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
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t7, i32 %a2)
  store i32 %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t13 = load i32, ptr %l8, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i1, ptr %l9, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t18, ptr %l12, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l13, !tbaa !24
  %t21 = load i64, ptr %l13, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l14, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t32, ptr %l12, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t34 = load i32, ptr %l1, !tbaa !23
  %t36 = icmp ne i32 %t34, 0
  br i1 %t36, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t38, i32 %t39)
  store { i64, ptr } %t42, ptr %l19
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t43 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t45 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t43, i64 %t44)
  %t53 = getelementptr i8, ptr %t52, i64 %t44
  call void @olang_textcopy(ptr %t53, ptr %t46, i64 %t47)
  %t54 = getelementptr i8, ptr %t53, i64 %t47
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t52, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t56, ptr %rv
  br label %ret
bb9:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t58, ptr %l22, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l23, !tbaa !24
  %t61 = load i64, ptr %l23, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l24, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l23, !tbaa !24
  %t71 = mul i64 %t70, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %t69, i64 %t71, i1 false)
  %t72 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t72, ptr %l22, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca ptr
  %l14 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l14
  br label %bb2
bb2:
  %t14 = load i1, ptr %l14, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t18 = load ptr, ptr %l16, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l16, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 17}
  %t24 = icmp eq i64 %t22, 0
  store i1 %t24, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l17, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [3 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t28, i32 0, i32 1
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l3, !tbaa !23
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [3 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i32, ptr %l3, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t43 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeepVal(ptr %v0, ptr %v1, ptr %t38, i64 %t39, i64 %t42, ptr %t43)
  br label %bb11
bb11:
  br label %bb35
bb12:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 17}
  %t56 = icmp eq i64 %t54, 1
  store i1 %t56, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [3 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t60, i32 0, i32 1
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l5, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [3 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l6, !tbaa !29
  br label %bb17
bb16:
  br label %bb30
bb17:
  %t70 = load ptr, ptr %l5, !tbaa !29
  store ptr %t70, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 0
  store i1 %t77, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t78 = load i1, ptr %l39, !tbaa !21
  br i1 %t78, label %bb20, label %bb21
bb20:
  %t79 = load ptr, ptr %l5, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t81, i32 0, i32 2
  %t83 = load i32, ptr %t82
  store i32 %t83, ptr %l7, !tbaa !23
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load i32, ptr %l7, !tbaa !23
  %t89 = sext i32 %t87 to i64
  %t90 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeepVal(ptr %v0, ptr %v1, ptr %t85, i64 %t86, i64 %t89, ptr %t90)
  br label %bb23
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
  call void @__olang_check_failed(ptr @olang_loc_1e97160fa78b00b5_b2a2d0ea90892ee9)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_de2cb745672f71c4_3d4b81a63c3c3818)
  unreachable
bb35:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l15 = alloca %"compiler/typed:Elem"
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l42 = alloca i32
  %l43 = alloca ptr
  %l47 = alloca i32
  %rv = alloca ptr
  %t21 = alloca { i64, [4 x i64] }, align 8
  %t90 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/check:seqOf", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t8, ptr %l9
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/check:seqOf", ptr %t9, i32 0, i32 0
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %l11, !tbaa !23
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t18 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v1, ptr %v3, ptr %v4, ptr %t13, ptr %t14, i32 0)
  store %"compiler/typed:Elem" %t18, ptr %l15
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t19 = load %"compiler/typed:Elem", ptr %l15
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 24, i64 8)
  store %"compiler/typed:Elem" %t19, ptr %t20
  store { i64, [4 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 0
  store i64 4, ptr %t22
  %t23 = load %"compiler/source:Span", ptr %l9
  %t24 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t23, 0
  %t25 = load i32, ptr %l11, !tbaa !23
  %t26 = insertvalue { %"compiler/source:Span", i32, ptr } %t24, i32 %t25, 1
  %t28 = insertvalue { %"compiler/source:Span", i32, ptr } %t26, ptr %t20, 2
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t28, ptr %t29
  %t30 = load { i64, [4 x i64] }, ptr %t21
  %t32 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t30, ptr %t32
  store ptr %t32, ptr %rv
  br label %ret
bb4:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l19, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t35, ptr %l20
  %t36 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t36, ptr %l21
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/check:seqOf", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l23, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l1
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t47 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v0, ptr %t41, %"compiler/source:Span" %t42, ptr %t43)
  store ptr %t47, ptr %l27
  br label %bb5
bb5:
  %t48 = load ptr, ptr %l27, !tbaa !29
  store ptr %t48, ptr %l28, !tbaa !29
  %t49 = icmp sge i64 0, 0
  br i1 %t49, label %bb6, label %bb7
bb6:
  %t51 = icmp sle i64 0, 1152921504606846975
  br i1 %t51, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_5b70aeb4dcee2d2_fdbe62f0939a6ff6)
  unreachable
bb8:
  %t53 = mul i64 0, 8
  %t54 = insertvalue { i64, ptr } undef, i64 0, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t55, ptr %l31, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t60 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v3, ptr %v0, ptr %t56, ptr %t57)
  store { i64, ptr } %t60, ptr %l34
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_5b70aeb4dcee2d2_fdbe62f0939a6ff6)
  unreachable
bb10:
  %t61 = icmp sge i64 0, 0
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = icmp sle i64 0, 2305843009213693951
  br i1 %t63, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_51f82334067145c7_15912fbf1ec70a8b)
  unreachable
bb13:
  %t65 = mul i64 0, 4
  %t66 = insertvalue { i64, ptr } undef, i64 0, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t68 = load ptr, ptr %l19, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l20
  %t70 = load %"compiler/source:Span", ptr %l21
  %t71 = load i64, ptr %l23, !tbaa !24
  %t72 = load ptr, ptr %l28, !tbaa !29
  %t73 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t68, %"compiler/source:Span" %t69, %"compiler/source:Span" %t70, i64 %t71, ptr %t72, { i64, ptr } %t73, { i64, ptr } %t74, { i64, ptr } %t67)
  store ptr %t76, ptr %l38
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_51f82334067145c7_15912fbf1ec70a8b)
  unreachable
bb15:
  %t77 = load ptr, ptr %l38, !tbaa !29
  store ptr %t77, ptr %l5, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t78, ptr %l39
  %t79 = load ptr, ptr %l5, !tbaa !29
  %t82 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t79)
  store i32 %t82, ptr %l42
  br label %bb16
bb16:
  %t83 = load ptr, ptr %l5, !tbaa !29
  store ptr %t83, ptr %l43, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  %t89 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t84, i32 8, %"compiler/source:Span" %t85)
  store i32 %t89, ptr %l47
  br label %bb17
bb17:
  store { i64, [4 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 0
  store i64 6, ptr %t91
  %t92 = load %"compiler/source:Span", ptr %l39
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t92, 0
  %t94 = load i32, ptr %l42, !tbaa !23
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t93, i32 %t94, 1
  %t96 = load ptr, ptr %l43, !tbaa !29
  %t97 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t95, ptr %t96, 2
  %t98 = load i32, ptr %l47, !tbaa !23
  %t99 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t97, i32 %t98, 3
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t99, ptr %t100
  %t101 = load { i64, [4 x i64] }, ptr %t90
  %t103 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t101, ptr %t103
  store ptr %t103, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca %"compiler/typed:Local"
  %l27 = alloca i1
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l32 = alloca %"compiler/typed:Local"
  %l34 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca i1
  %l56 = alloca ptr
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca i1
  %l75 = alloca i1
  %l78 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca i1
  %l94 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l104 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l114 = alloca i1
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesImmut(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i1 false)
  store i1 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i1, ptr %l12, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l1, !tbaa !29
  store ptr %t8, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t9 = load ptr, ptr %l15, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l15, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 8}
  %t15 = icmp eq i64 %t13, 0
  store i1 %t15, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l16, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t19, i32 0, i32 2
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l2, !tbaa !23
  br label %bb9
bb8:
  br label %bb18
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l22
  br label %bb10
bb10:
  %t26 = load i32, ptr %l2, !tbaa !23
  %t27 = load ptr, ptr %l22, !tbaa !29
  %t29 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t27, i32 %t26)
  store %"compiler/typed:Local" %t29, ptr %l24
  br label %bb11
bb11:
  %t30 = getelementptr %"compiler/typed:Local", ptr %l24, i32 0, i32 4
  %t31 = load i32, ptr %t30, !range !{i32 0, i32 7}
  %t33 = trunc i64 5 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l28, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t37)
  store ptr %t39, ptr %l30
  br label %bb14
bb13:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb17
bb14:
  %t40 = load i32, ptr %l2, !tbaa !23
  %t41 = load ptr, ptr %l30, !tbaa !29
  %t43 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t41, i32 %t40)
  store %"compiler/typed:Local" %t43, ptr %l32
  br label %bb15
bb15:
  %t44 = getelementptr %"compiler/typed:Local", ptr %l32, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t48 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t46, i32 %t45)
  store i1 %t48, ptr %l34
  br label %bb16
bb16:
  %t49 = load i1, ptr %l34, !tbaa !21
  %t50 = xor i1 %t49, true
  store i1 %t50, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t52 = load i1, ptr %l27, !tbaa !21
  %t53 = xor i1 %t52, true
  store i1 %t53, ptr %l14, !tbaa !21
  br label %bb72
bb18:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t56 = load ptr, ptr %l37, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l37, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 1
  store i1 %t62, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l38, !tbaa !21
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t66, i32 0, i32 2
  %t68 = load i64, ptr %t67
  store i64 %t68, ptr %l3, !tbaa !24
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t72, i32 0, i32 3
  %t74 = load i32, ptr %t73
  store i32 %t74, ptr %l4, !tbaa !23
  br label %bb23
bb22:
  br label %bb33
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load i32, ptr %l4, !tbaa !23
  %t85 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %s3, ptr %t79, i64 %t80, i32 %t81)
  store ptr %t85, ptr %l49
  br label %bb24
bb24:
  %t86 = load ptr, ptr %l49, !tbaa !29
  %t87 = icmp eq ptr %t86, null
  br i1 %t87, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb32
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i64, ptr %l3, !tbaa !24
  %t94 = load i32, ptr %l4, !tbaa !23
  %t98 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t92, i64 %t93, i32 %t94)
  store ptr %t98, ptr %l56
  br label %bb27
bb27:
  %t99 = load ptr, ptr %l56, !tbaa !29
  store ptr %t99, ptr %l5, !tbaa !29
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_238986d309dff67a_df3b69a02a086cde)
  unreachable
bb29:
  br label %bb30
bb30:
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t107 = getelementptr %"compiler/ast:VarDecl", ptr %t104, i32 0, i32 2
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t108)
  store i1 %t110, ptr %l62
  br label %bb31
bb31:
  %t111 = load i1, ptr %l62, !tbaa !21
  store i1 %t111, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t112 = load i1, ptr %l51, !tbaa !21
  store i1 %t112, ptr %l14, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb72
bb33:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t114 = load ptr, ptr %l63, !tbaa !29
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %bb34, label %bb35
bb34:
  %t117 = load ptr, ptr %l63, !tbaa !29
  %t118 = load i64, ptr %t117, !range !{i64 0, i64 8}
  %t120 = icmp eq i64 %t118, 2
  store i1 %t120, ptr %l64, !tbaa !21
  br label %bb35
bb35:
  %t121 = load i1, ptr %l64, !tbaa !21
  br i1 %t121, label %bb36, label %bb37
bb36:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t124, i32 0, i32 2
  %t126 = load ptr, ptr %t125
  store ptr %t126, ptr %l6, !tbaa !29
  br label %bb38
bb37:
  br label %bb46
bb38:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l69, !tbaa !29
  %t129 = load ptr, ptr %l6, !tbaa !29
  %t132 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t129)
  store i32 %t132, ptr %l72
  br label %bb39
bb39:
  %t133 = load ptr, ptr %l69, !tbaa !29
  %t134 = load i32, ptr %l72, !tbaa !23
  %t135 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t133, i32 %t134)
  store i1 %t135, ptr %l73
  br label %bb40
bb40:
  %t136 = load i1, ptr %l73, !tbaa !21
  %t137 = xor i1 %t136, true
  br i1 %t137, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb45
bb42:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  store ptr %t144, ptr %l78, !tbaa !29
  %t145 = load ptr, ptr %l6, !tbaa !29
  %t148 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t145)
  store i32 %t148, ptr %l81
  br label %bb43
bb43:
  %t149 = load ptr, ptr %l78, !tbaa !29
  %t150 = load i32, ptr %l81, !tbaa !23
  %t151 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t149, i32 %t150)
  store i64 %t151, ptr %l82
  br label %bb44
bb44:
  %t152 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t153 = load i64, ptr %l82, !tbaa !24
  %t155 = and i64 %t153, %t152
  %t157 = icmp ne i64 %t155, 0
  store i1 %t157, ptr %l75, !tbaa !21
  br label %bb45
bb45:
  %t159 = load i1, ptr %l75, !tbaa !21
  store i1 %t159, ptr %l14, !tbaa !21
  br label %bb72
bb46:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t161 = load ptr, ptr %l86, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l86, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 8}
  %t167 = icmp eq i64 %t165, 3
  store i1 %t167, ptr %l87, !tbaa !21
  br label %bb48
bb48:
  %t168 = load i1, ptr %l87, !tbaa !21
  br i1 %t168, label %bb49, label %bb50
bb49:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t171, i32 0, i32 2
  %t173 = load ptr, ptr %t172
  store ptr %t173, ptr %l7, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l7, !tbaa !29
  %t179 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %t175, ptr %t176)
  store i1 %t179, ptr %l94
  br label %bb52
bb52:
  %t180 = load i1, ptr %l94, !tbaa !21
  store i1 %t180, ptr %l14, !tbaa !21
  br label %bb72
bb53:
  %t181 = load ptr, ptr %l1, !tbaa !29
  store ptr %t181, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t182 = load ptr, ptr %l95, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb54, label %bb55
bb54:
  %t185 = load ptr, ptr %l95, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 8}
  %t188 = icmp eq i64 %t186, 4
  store i1 %t188, ptr %l96, !tbaa !21
  br label %bb55
bb55:
  %t189 = load i1, ptr %l96, !tbaa !21
  br i1 %t189, label %bb56, label %bb57
bb56:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t192, i32 0, i32 2
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l8, !tbaa !29
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l8, !tbaa !29
  %t199 = getelementptr %"compiler/typed:Elem", ptr %t197, i32 0, i32 0
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t203 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %t196, ptr %t200)
  store i1 %t203, ptr %l104
  br label %bb59
bb59:
  %t204 = load i1, ptr %l104, !tbaa !21
  store i1 %t204, ptr %l14, !tbaa !21
  br label %bb72
bb60:
  %t205 = load ptr, ptr %l1, !tbaa !29
  store ptr %t205, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t206 = load ptr, ptr %l105, !tbaa !29
  %t207 = icmp ne ptr %t206, null
  br i1 %t207, label %bb61, label %bb62
bb61:
  %t209 = load ptr, ptr %l105, !tbaa !29
  %t210 = load i64, ptr %t209, !range !{i64 0, i64 8}
  %t212 = icmp eq i64 %t210, 5
  store i1 %t212, ptr %l106, !tbaa !21
  br label %bb62
bb62:
  %t213 = load i1, ptr %l106, !tbaa !21
  br i1 %t213, label %bb63, label %bb64
bb63:
  %t214 = load ptr, ptr %l1, !tbaa !29
  %t216 = getelementptr { i64, [4 x i64] }, ptr %t214, i32 0, i32 1
  %t217 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t216, i32 0, i32 2
  %t218 = load ptr, ptr %t217
  store ptr %t218, ptr %l9, !tbaa !29
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load ptr, ptr %l9, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Payload", ptr %t221, i32 0, i32 0
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t227 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %t220, ptr %t224)
  store i1 %t227, ptr %l114
  br label %bb66
bb66:
  %t228 = load i1, ptr %l114, !tbaa !21
  store i1 %t228, ptr %l14, !tbaa !21
  br label %bb72
bb67:
  br i1 true, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_f7f48d742623e788_feac04c086d410bc)
  unreachable
bb72:
  %t229 = load i1, ptr %l14, !tbaa !21
  store i1 %t229, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i1
  %l24 = alloca i32
  %l29 = alloca ptr
  %l34 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i1
  %l46 = alloca i32
  %l53 = alloca i32
  %l56 = alloca i1
  %l61 = alloca i32
  %l66 = alloca i32
  %l71 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l92 = alloca i1
  %l98 = alloca ptr
  %l103 = alloca i32
  %l107 = alloca i1
  %l110 = alloca ptr
  %l115 = alloca i32
  %l119 = alloca i1
  %l124 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l145 = alloca i1
  %l149 = alloca ptr
  %l154 = alloca i32
  %l158 = alloca i1
  %l161 = alloca ptr
  %l166 = alloca i32
  %l170 = alloca i1
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
  store i1 true, ptr %l15, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l15, !tbaa !21
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
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l24
  br label %bb7
bb7:
  %t23 = load i32, ptr %l24, !range !{i32 0, i32 33}
  %t25 = trunc i64 25 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l29, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l34
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l39
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t55 = load i32, ptr %l34, !tbaa !23
  %t56 = load i32, ptr %l39, !tbaa !23
  %t57 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t54, i32 %t55, i32 %t56)
  store i1 %t57, ptr %l40
  br label %bb12
bb12:
  %t58 = load i1, ptr %l40, !tbaa !21
  br i1 %t58, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l46
  br label %bb17
bb17:
  %t70 = load i32, ptr %l46, !range !{i32 0, i32 33}
  store i32 %t70, ptr %l4
  %t71 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t73 = trunc i64 18 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb42
bb20:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l2, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l53
  br label %bb21
bb21:
  %t86 = load i32, ptr %l53, !range !{i32 0, i32 33}
  %t88 = trunc i64 18 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb22, label %bb23
bb22:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t100, ptr %l61
  br label %bb24
bb23:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb26
bb24:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l2, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l66
  br label %bb25
bb25:
  %t111 = load i32, ptr %l61, !tbaa !23
  %t112 = load i32, ptr %l66, !tbaa !23
  %t113 = icmp eq i32 %t111, %t112
  store i1 %t113, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t115 = load i1, ptr %l56, !tbaa !21
  br i1 %t115, label %bb27, label %bb28
bb27:
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  store ptr %t122, ptr %l71, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  %t129 = load i32, ptr %l1, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t128, i32 %t129)
  store i32 %t132, ptr %l76
  br label %bb30
bb30:
  %t133 = load ptr, ptr %l71, !tbaa !29
  %t134 = load i32, ptr %l76, !tbaa !23
  %t135 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t133, i32 %t134)
  store { i64, ptr } %t135, ptr %l77
  br label %bb31
bb31:
  %t136 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t136, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l7, !tbaa !24
  br label %bb32
bb32:
  %t141 = load i64, ptr %l6, !tbaa !24
  %t142 = load i64, ptr %l7, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb33, label %bb34
bb33:
  br label %bb41
bb34:
  br label %bb35
bb35:
  %t149 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t149, ptr %l84, !tbaa !27
  %t150 = load i64, ptr %l6, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i32, ptr %t153, i64 %t150
  %t155 = load i32, ptr %t154, !tbaa !33
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l2, !tbaa !23
  %t160 = load i64, ptr %l3, !tbaa !24
  %t162 = add i64 %t160, 1
  %t167 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t157, i32 %t155, i32 %t159, i64 %t162)
  store i1 %t167, ptr %l92
  br label %bb36
bb36:
  %t168 = load i1, ptr %l92, !tbaa !21
  br i1 %t168, label %bb37, label %bb38
bb37:
  store i1 true, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t170 = load i64, ptr %l6, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l6, !tbaa !24
  br label %bb32
bb41:
  br label %bb83
bb42:
  %t174 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t176 = trunc i64 20 to i32
  %t177 = icmp eq i32 %t174, %t176
  br i1 %t177, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l98, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l1, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t189, ptr %l103
  br label %bb46
bb46:
  %t190 = load i32, ptr %l2, !tbaa !23
  %t191 = load i64, ptr %l3, !tbaa !24
  %t193 = add i64 %t191, 1
  %t194 = load ptr, ptr %l98, !tbaa !29
  %t195 = load i32, ptr %l103, !tbaa !23
  %t198 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t194, i32 %t195, i32 %t190, i64 %t193)
  store i1 %t198, ptr %l107
  br label %bb47
bb47:
  %t199 = load i1, ptr %l107, !tbaa !21
  store i1 %t199, ptr %rv
  br label %ret
bb48:
  %t200 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t202 = trunc i64 19 to i32
  %t203 = icmp eq i32 %t200, %t202
  br i1 %t203, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l110, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/check:Checker", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Program", ptr %t209, i32 0, i32 2
  %t212 = load i32, ptr %l1, !tbaa !23
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t211, i32 %t212)
  store i32 %t215, ptr %l115
  br label %bb52
bb52:
  %t216 = load i32, ptr %l2, !tbaa !23
  %t217 = load i64, ptr %l3, !tbaa !24
  %t219 = add i64 %t217, 1
  %t220 = load ptr, ptr %l110, !tbaa !29
  %t221 = load i32, ptr %l115, !tbaa !23
  %t224 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t220, i32 %t221, i32 %t216, i64 %t219)
  store i1 %t224, ptr %l119
  br label %bb53
bb53:
  %t225 = load i1, ptr %l119, !tbaa !21
  store i1 %t225, ptr %rv
  br label %ret
bb54:
  %t226 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t228 = trunc i64 21 to i32
  %t229 = icmp eq i32 %t226, %t228
  br i1 %t229, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb72
bb57:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/check:Checker", ptr %t231, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = getelementptr %"compiler/generic:Program", ptr %t234, i32 0, i32 2
  store ptr %t236, ptr %l124, !tbaa !29
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/check:Checker", ptr %t237, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = getelementptr %"compiler/generic:Program", ptr %t240, i32 0, i32 2
  %t243 = load i32, ptr %l1, !tbaa !23
  %t246 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t242, i32 %t243)
  store i32 %t246, ptr %l129
  br label %bb58
bb58:
  %t247 = load ptr, ptr %l124, !tbaa !29
  %t248 = load i32, ptr %l129, !tbaa !23
  %t249 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t247, i32 %t248)
  store { i64, ptr } %t249, ptr %l130
  br label %bb59
bb59:
  %t250 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t250, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t251 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t251, 0
  store i64 %t253, ptr %l11, !tbaa !24
  br label %bb60
bb60:
  %t255 = load i64, ptr %l10, !tbaa !24
  %t256 = load i64, ptr %l11, !tbaa !24
  %t259 = icmp slt i64 %t255, %t256
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb61, label %bb62
bb61:
  br label %bb69
bb62:
  br label %bb63
bb63:
  %t263 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t263, ptr %l137, !tbaa !27
  %t264 = load i64, ptr %l10, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr i32, ptr %t267, i64 %t264
  %t269 = load i32, ptr %t268, !tbaa !33
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = load i32, ptr %l2, !tbaa !23
  %t274 = load i64, ptr %l3, !tbaa !24
  %t276 = add i64 %t274, 1
  %t281 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t271, i32 %t269, i32 %t273, i64 %t276)
  store i1 %t281, ptr %l145
  br label %bb64
bb64:
  %t282 = load i1, ptr %l145, !tbaa !21
  br i1 %t282, label %bb65, label %bb66
bb65:
  store i1 true, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t284 = load i64, ptr %l10, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l10, !tbaa !24
  br label %bb60
bb69:
  %t288 = load ptr, ptr %l0, !tbaa !29
  store ptr %t288, ptr %l149, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/check:Checker", ptr %t289, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l1, !tbaa !23
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l154
  br label %bb70
bb70:
  %t299 = load i32, ptr %l2, !tbaa !23
  %t300 = load i64, ptr %l3, !tbaa !24
  %t302 = add i64 %t300, 1
  %t303 = load ptr, ptr %l149, !tbaa !29
  %t304 = load i32, ptr %l154, !tbaa !23
  %t307 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t303, i32 %t304, i32 %t299, i64 %t302)
  store i1 %t307, ptr %l158
  br label %bb71
bb71:
  %t308 = load i1, ptr %l158, !tbaa !21
  store i1 %t308, ptr %rv
  br label %ret
bb72:
  %t309 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t311 = trunc i64 29 to i32
  %t312 = icmp eq i32 %t309, %t311
  br i1 %t312, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t314, ptr %l161, !tbaa !29
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/check:Checker", ptr %t315, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t320 = getelementptr %"compiler/generic:Program", ptr %t318, i32 0, i32 2
  %t321 = load i32, ptr %l1, !tbaa !23
  %t324 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t320, i32 %t321)
  store i32 %t324, ptr %l166
  br label %bb76
bb76:
  %t325 = load i32, ptr %l2, !tbaa !23
  %t326 = load i64, ptr %l3, !tbaa !24
  %t328 = add i64 %t326, 1
  %t329 = load ptr, ptr %l161, !tbaa !29
  %t330 = load i32, ptr %l166, !tbaa !23
  %t333 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNames(ptr %v0, ptr %t329, i32 %t330, i32 %t325, i64 %t328)
  store i1 %t333, ptr %l170
  br label %bb77
bb77:
  %t334 = load i1, ptr %l170, !tbaa !21
  store i1 %t334, ptr %rv
  br label %ret
bb78:
  br i1 true, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb83
bb82:
  call void @__olang_check_failed(ptr @olang_loc_ba4cbfec236fac31_e934563b75f0ca1d)
  unreachable
bb83:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollElem(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l24 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l31 = alloca %"compiler/diagmsg:Msg"
  %l32 = alloca i64
  %l38 = alloca i32
  %l41 = alloca i1
  %l43 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l8, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 14
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t9, i64 %a2)
  store ptr %t13, ptr %l12
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t18, i32 %t17)
  store i32 %t20, ptr %l15
  br label %bb2
bb2:
  %t21 = load i32, ptr %l15, !tbaa !23
  store i32 %t21, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l19
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = load i32, ptr %l19, !tbaa !23
  %t30 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l20
  br label %bb4
bb4:
  %t31 = load i32, ptr %l20, !tbaa !23
  store i32 %t31, ptr %l4, !tbaa !23
  %t32 = load i32, ptr %l4, !tbaa !23
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t36 = icmp eq i32 %t32, %t33
  br i1 %t36, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t39)
  store %"compiler/source:Span" %t41, ptr %l26
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t42, i32 %t43)
  store { i64, ptr } %t46, ptr %l29
  br label %bb8
bb8:
  %t47 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t55 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForSource(ptr %s1, ptr %s1, { i64, ptr } %t53)
  store %"compiler/diagmsg:Msg" %t55, ptr %l31
  br label %bb9
bb9:
  %t56 = load ptr, ptr %l24, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l26
  %t58 = load %"compiler/diagmsg:Msg", ptr %l31
  %t59 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t56, %"compiler/source:Span" %t57, %"compiler/diagmsg:Msg" %t58)
  store i64 %t59, ptr %l32
  br label %bb10
bb10:
  %t60 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  store i32 %t60, ptr %rv
  br label %ret
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l38
  br label %bb12
bb12:
  %t72 = load i32, ptr %l38, !tbaa !23
  store i32 %t72, ptr %l5, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l5, !tbaa !23
  %t77 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollable(ptr %v0, ptr %t73, i32 %t74)
  store i1 %t77, ptr %l41
  br label %bb13
bb13:
  %t78 = load i1, ptr %l41, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l43, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t82)
  store %"compiler/source:Span" %t84, ptr %l45
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l5, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t85, i32 %t86)
  store { i64, ptr } %t89, ptr %l48
  br label %bb17
bb17:
  %t90 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t98 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForElem(ptr %s2, ptr %s2, { i64, ptr } %t96)
  store %"compiler/diagmsg:Msg" %t98, ptr %l50
  br label %bb18
bb18:
  %t99 = load ptr, ptr %l43, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l45
  %t101 = load %"compiler/diagmsg:Msg", ptr %l50
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t99, %"compiler/source:Span" %t100, %"compiler/diagmsg:Msg" %t101)
  store i64 %t102, ptr %l51
  br label %bb19
bb19:
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t103, ptr %rv
  br label %ret
bb20:
  %t105 = load i32, ptr %l5, !tbaa !23
  store i32 %t105, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2edispatched(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l28 = alloca i1
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Call", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l12, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 5}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 true, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_922ae0a799ba69ce_f9cc72ab99b0ec2)
  unreachable
bb16:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb17, label %bb18
bb17:
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 12
  store i1 %t39, ptr %l19, !tbaa !21
  br label %bb18
bb18:
  %t40 = load i1, ptr %l19, !tbaa !21
  br i1 %t40, label %bb19, label %bb20
bb19:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb29
bb21:
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Seq", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb22, label %bb23
bb22:
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Seq", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  br i1 %t61, label %bb24, label %bb25
bb23:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb28
bb24:
  call void @__olang_check_failed(ptr @olang_loc_46a0e749826cef18_3e2809181fcd5dac)
  unreachable
bb25:
  br label %bb26
bb26:
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Seq", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = call i1 @compiler_2fcheck_2edispatched(ptr %v0, ptr %t66)
  store i1 %t68, ptr %l34
  br label %bb27
bb27:
  %t69 = load i1, ptr %l34, !tbaa !21
  store i1 %t69, ptr %l28, !tbaa !21
  br label %bb28
bb28:
  %t70 = load i1, ptr %l28, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 false, ptr %rv
  br label %ret
bb33:
  call void @__olang_check_failed(ptr @olang_loc_2f12767f94a228d4_8b6b4888798b3f68)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
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
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l62 = alloca i1
  %l65 = alloca i1
  %l68 = alloca i1
  %l73 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l107 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l123 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l151 = alloca i1
  %l152 = alloca i1
  %l156 = alloca i1
  %l157 = alloca ptr
  %l158 = alloca i1
  %l166 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i1
  %l180 = alloca i1
  %l181 = alloca i1
  %l185 = alloca i1
  %l186 = alloca i1
  %l190 = alloca i1
  %l191 = alloca ptr
  %l192 = alloca i1
  %l199 = alloca ptr
  %l200 = alloca i1
  %l210 = alloca i1
  %l211 = alloca i1
  %l214 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca i1
  %l228 = alloca i1
  %l229 = alloca i1
  %l232 = alloca i1
  %l233 = alloca i1
  %l236 = alloca i1
  %l237 = alloca ptr
  %l238 = alloca i1
  %l243 = alloca ptr
  %l244 = alloca i1
  %l249 = alloca ptr
  %l250 = alloca i1
  %l255 = alloca ptr
  %l256 = alloca i1
  %l261 = alloca ptr
  %l262 = alloca i1
  %l269 = alloca i1
  %l270 = alloca ptr
  %l271 = alloca i1
  %l280 = alloca i1
  %l281 = alloca i1
  %l286 = alloca i1
  %l287 = alloca i1
  %l291 = alloca i1
  %l292 = alloca ptr
  %l293 = alloca i1
  %l303 = alloca i1
  %l304 = alloca i1
  %l307 = alloca i1
  %l308 = alloca ptr
  %l309 = alloca i1
  %l316 = alloca i1
  %l317 = alloca ptr
  %l318 = alloca i1
  %l325 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  store ptr %t6, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t7 = load ptr, ptr %l26, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l26, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l27, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t16 = load ptr, ptr %l30, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l30, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 30}
  %t22 = icmp eq i64 %t20, 1
  store i1 %t22, ptr %l31, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l31, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t25 = load ptr, ptr %l34, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l34, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 30}
  %t31 = icmp eq i64 %t29, 25
  store i1 %t31, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l35, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t35 = load ptr, ptr %l39, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb18, label %bb19
bb18:
  %t38 = load ptr, ptr %l39, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 30}
  %t41 = icmp eq i64 %t39, 22
  store i1 %t41, ptr %l40, !tbaa !21
  br label %bb19
bb19:
  %t42 = load i1, ptr %l40, !tbaa !21
  br i1 %t42, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t45 = load ptr, ptr %l44, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb24, label %bb25
bb24:
  %t48 = load ptr, ptr %l44, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 30}
  %t51 = icmp eq i64 %t49, 3
  store i1 %t51, ptr %l45, !tbaa !21
  br label %bb25
bb25:
  %t52 = load i1, ptr %l45, !tbaa !21
  br i1 %t52, label %bb26, label %bb27
bb26:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 1
  %t57 = load i32, ptr %t56, !range !{i32 0, i32 114}
  store i32 %t57, ptr %l2
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l3, !tbaa !29
  br label %bb32
bb27:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t66 = load ptr, ptr %l52, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb28, label %bb29
bb28:
  %t69 = load ptr, ptr %l52, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 30}
  %t72 = icmp eq i64 %t70, 4
  store i1 %t72, ptr %l53, !tbaa !21
  br label %bb29
bb29:
  %t73 = load i1, ptr %l53, !tbaa !21
  br i1 %t73, label %bb30, label %bb31
bb30:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 1
  %t78 = load i32, ptr %t77, !range !{i32 0, i32 114}
  store i32 %t78, ptr %l2
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l3, !tbaa !29
  br label %bb32
bb31:
  br label %bb44
bb32:
  %t86 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t88 = trunc i64 92 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb35
bb34:
  %t91 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t93 = trunc i64 93 to i32
  %t94 = icmp eq i32 %t91, %t93
  store i1 %t94, ptr %l62, !tbaa !21
  br label %bb35
bb35:
  %t96 = load i1, ptr %l62, !tbaa !21
  br i1 %t96, label %bb36, label %bb37
bb36:
  %t97 = load ptr, ptr %l3, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t101 = call i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %t97, { i64, ptr } %t98)
  store i1 %t101, ptr %l68
  br label %bb38
bb37:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb39
bb38:
  %t102 = load i1, ptr %l68, !tbaa !21
  store i1 %t102, ptr %l65, !tbaa !21
  br label %bb39
bb39:
  %t103 = load i1, ptr %l65, !tbaa !21
  br i1 %t103, label %bb40, label %bb41
bb40:
  store i1 true, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t105 = load ptr, ptr %l3, !tbaa !29
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t110 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t105, { i64, ptr } %t107)
  store i1 %t110, ptr %l73
  br label %bb43
bb43:
  %t111 = load i1, ptr %l73, !tbaa !21
  store i1 %t111, ptr %rv
  br label %ret
bb44:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t113 = load ptr, ptr %l74, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb45, label %bb46
bb45:
  %t116 = load ptr, ptr %l74, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 30}
  %t119 = icmp eq i64 %t117, 2
  store i1 %t119, ptr %l75, !tbaa !21
  br label %bb46
bb46:
  %t120 = load i1, ptr %l75, !tbaa !21
  br i1 %t120, label %bb47, label %bb48
bb47:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr }, ptr %t123, i32 0, i32 1
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l4, !tbaa !29
  br label %bb65
bb48:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t128 = load ptr, ptr %l80, !tbaa !29
  %t129 = icmp ne ptr %t128, null
  br i1 %t129, label %bb49, label %bb50
bb49:
  %t131 = load ptr, ptr %l80, !tbaa !29
  %t132 = load i64, ptr %t131, !range !{i64 0, i64 30}
  %t134 = icmp eq i64 %t132, 26
  store i1 %t134, ptr %l81, !tbaa !21
  br label %bb50
bb50:
  %t135 = load i1, ptr %l81, !tbaa !21
  br i1 %t135, label %bb51, label %bb52
bb51:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t138, i32 0, i32 2
  %t140 = load ptr, ptr %t139
  store ptr %t140, ptr %l4, !tbaa !29
  br label %bb65
bb52:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t143 = load ptr, ptr %l86, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb53, label %bb54
bb53:
  %t146 = load ptr, ptr %l86, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 30}
  %t149 = icmp eq i64 %t147, 28
  store i1 %t149, ptr %l87, !tbaa !21
  br label %bb54
bb54:
  %t150 = load i1, ptr %l87, !tbaa !21
  br i1 %t150, label %bb55, label %bb56
bb55:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", ptr }, ptr %t153, i32 0, i32 1
  %t155 = load ptr, ptr %t154
  store ptr %t155, ptr %l4, !tbaa !29
  br label %bb65
bb56:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t158 = load ptr, ptr %l92, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb57, label %bb58
bb57:
  %t161 = load ptr, ptr %l92, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 30}
  %t164 = icmp eq i64 %t162, 14
  store i1 %t164, ptr %l93, !tbaa !21
  br label %bb58
bb58:
  %t165 = load i1, ptr %l93, !tbaa !21
  br i1 %t165, label %bb59, label %bb60
bb59:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t168, i32 0, i32 1
  %t170 = load ptr, ptr %t169
  store ptr %t170, ptr %l4, !tbaa !29
  br label %bb65
bb60:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t173 = load ptr, ptr %l98, !tbaa !29
  %t174 = icmp ne ptr %t173, null
  br i1 %t174, label %bb61, label %bb62
bb61:
  %t176 = load ptr, ptr %l98, !tbaa !29
  %t177 = load i64, ptr %t176, !range !{i64 0, i64 30}
  %t179 = icmp eq i64 %t177, 13
  store i1 %t179, ptr %l99, !tbaa !21
  br label %bb62
bb62:
  %t180 = load i1, ptr %l99, !tbaa !21
  br i1 %t180, label %bb63, label %bb64
bb63:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t183, i32 0, i32 1
  %t185 = load ptr, ptr %t184
  store ptr %t185, ptr %l4, !tbaa !29
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t187 = load ptr, ptr %l4, !tbaa !29
  %t189 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t192 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t187, { i64, ptr } %t189)
  store i1 %t192, ptr %l107
  br label %bb66
bb66:
  %t193 = load i1, ptr %l107, !tbaa !21
  store i1 %t193, ptr %rv
  br label %ret
bb67:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t195 = load ptr, ptr %l108, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb68, label %bb69
bb68:
  %t198 = load ptr, ptr %l108, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 30}
  %t201 = icmp eq i64 %t199, 9
  store i1 %t201, ptr %l109, !tbaa !21
  br label %bb69
bb69:
  %t202 = load i1, ptr %l109, !tbaa !21
  br i1 %t202, label %bb70, label %bb71
bb70:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t205, i32 0, i32 1
  %t207 = load ptr, ptr %t206
  store ptr %t207, ptr %l5, !tbaa !29
  br label %bb76
bb71:
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t210 = load ptr, ptr %l114, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb72, label %bb73
bb72:
  %t213 = load ptr, ptr %l114, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 30}
  %t216 = icmp eq i64 %t214, 11
  store i1 %t216, ptr %l115, !tbaa !21
  br label %bb73
bb73:
  %t217 = load i1, ptr %l115, !tbaa !21
  br i1 %t217, label %bb74, label %bb75
bb74:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t220, i32 0, i32 1
  %t222 = load ptr, ptr %t221
  store ptr %t222, ptr %l5, !tbaa !29
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t224 = load ptr, ptr %l5, !tbaa !29
  %t226 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t229 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t224, { i64, ptr } %t226)
  store i1 %t229, ptr %l123
  br label %bb77
bb77:
  %t230 = load i1, ptr %l123, !tbaa !21
  store i1 %t230, ptr %rv
  br label %ret
bb78:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t232 = load ptr, ptr %l124, !tbaa !29
  %t233 = icmp ne ptr %t232, null
  br i1 %t233, label %bb79, label %bb80
bb79:
  %t235 = load ptr, ptr %l124, !tbaa !29
  %t236 = load i64, ptr %t235, !range !{i64 0, i64 30}
  %t238 = icmp eq i64 %t236, 5
  store i1 %t238, ptr %l125, !tbaa !21
  br label %bb80
bb80:
  %t239 = load i1, ptr %l125, !tbaa !21
  br i1 %t239, label %bb81, label %bb82
bb81:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr { i64, [4 x i64] }, ptr %t240, i32 0, i32 1
  %t243 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t242, i32 0, i32 2
  %t244 = load ptr, ptr %t243
  store ptr %t244, ptr %l6, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr { i64, [4 x i64] }, ptr %t246, i32 0, i32 1
  %t249 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t248, i32 0, i32 3
  %t250 = load ptr, ptr %t249
  store ptr %t250, ptr %l7, !tbaa !29
  br label %bb91
bb82:
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t253 = load ptr, ptr %l132, !tbaa !29
  %t254 = icmp ne ptr %t253, null
  br i1 %t254, label %bb83, label %bb84
bb83:
  %t256 = load ptr, ptr %l132, !tbaa !29
  %t257 = load i64, ptr %t256, !range !{i64 0, i64 30}
  %t259 = icmp eq i64 %t257, 6
  store i1 %t259, ptr %l133, !tbaa !21
  br label %bb84
bb84:
  %t260 = load i1, ptr %l133, !tbaa !21
  br i1 %t260, label %bb85, label %bb86
bb85:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr { i64, [4 x i64] }, ptr %t261, i32 0, i32 1
  %t264 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t263, i32 0, i32 1
  %t265 = load ptr, ptr %t264
  store ptr %t265, ptr %l6, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr { i64, [4 x i64] }, ptr %t267, i32 0, i32 1
  %t270 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t269, i32 0, i32 2
  %t271 = load ptr, ptr %t270
  store ptr %t271, ptr %l7, !tbaa !29
  br label %bb91
bb86:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t274 = load ptr, ptr %l140, !tbaa !29
  %t275 = icmp ne ptr %t274, null
  br i1 %t275, label %bb87, label %bb88
bb87:
  %t277 = load ptr, ptr %l140, !tbaa !29
  %t278 = load i64, ptr %t277, !range !{i64 0, i64 30}
  %t280 = icmp eq i64 %t278, 10
  store i1 %t280, ptr %l141, !tbaa !21
  br label %bb88
bb88:
  %t281 = load i1, ptr %l141, !tbaa !21
  br i1 %t281, label %bb89, label %bb90
bb89:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t282, i32 0, i32 1
  %t285 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t284, i32 0, i32 1
  %t286 = load ptr, ptr %t285
  store ptr %t286, ptr %l6, !tbaa !29
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t290, i32 0, i32 2
  %t292 = load ptr, ptr %t291
  store ptr %t292, ptr %l7, !tbaa !29
  br label %bb91
bb90:
  br label %bb97
bb91:
  %t294 = load ptr, ptr %l6, !tbaa !29
  %t296 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t299 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t294, { i64, ptr } %t296)
  store i1 %t299, ptr %l151
  br label %bb92
bb92:
  %t300 = load i1, ptr %l151, !tbaa !21
  br i1 %t300, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l152, !tbaa !21
  br label %bb96
bb94:
  %t301 = load ptr, ptr %l7, !tbaa !29
  %t303 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t306 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t301, { i64, ptr } %t303)
  store i1 %t306, ptr %l156
  br label %bb95
bb95:
  %t307 = load i1, ptr %l156, !tbaa !21
  store i1 %t307, ptr %l152, !tbaa !21
  br label %bb96
bb96:
  %t308 = load i1, ptr %l152, !tbaa !21
  store i1 %t308, ptr %rv
  br label %ret
bb97:
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t310 = load ptr, ptr %l157, !tbaa !29
  %t311 = icmp ne ptr %t310, null
  br i1 %t311, label %bb98, label %bb99
bb98:
  %t313 = load ptr, ptr %l157, !tbaa !29
  %t314 = load i64, ptr %t313, !range !{i64 0, i64 30}
  %t316 = icmp eq i64 %t314, 7
  store i1 %t316, ptr %l158, !tbaa !21
  br label %bb99
bb99:
  %t317 = load i1, ptr %l158, !tbaa !21
  br i1 %t317, label %bb100, label %bb101
bb100:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr { i64, [4 x i64] }, ptr %t318, i32 0, i32 1
  %t321 = getelementptr { %"compiler/source:Span", ptr }, ptr %t320, i32 0, i32 1
  %t322 = load ptr, ptr %t321
  store ptr %t322, ptr %l8, !tbaa !29
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t324 = load ptr, ptr %l8, !tbaa !29
  %t326 = getelementptr %"compiler/ast:Chain", ptr %t324, i32 0, i32 1
  %t327 = load { i64, ptr }, ptr %t326, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t331 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t327, { i64, ptr } %t328)
  store i1 %t331, ptr %l166
  br label %bb103
bb103:
  %t332 = load i1, ptr %l166, !tbaa !21
  store i1 %t332, ptr %rv
  br label %ret
bb104:
  %t333 = load ptr, ptr %l0, !tbaa !29
  store ptr %t333, ptr %l167, !tbaa !29
  store i1 false, ptr %l168, !tbaa !21
  %t334 = load ptr, ptr %l167, !tbaa !29
  %t335 = icmp ne ptr %t334, null
  br i1 %t335, label %bb105, label %bb106
bb105:
  %t337 = load ptr, ptr %l167, !tbaa !29
  %t338 = load i64, ptr %t337, !range !{i64 0, i64 30}
  %t340 = icmp eq i64 %t338, 8
  store i1 %t340, ptr %l168, !tbaa !21
  br label %bb106
bb106:
  %t341 = load i1, ptr %l168, !tbaa !21
  br i1 %t341, label %bb107, label %bb108
bb107:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr { i64, [4 x i64] }, ptr %t342, i32 0, i32 1
  %t345 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t344, i32 0, i32 1
  %t346 = load ptr, ptr %t345
  store ptr %t346, ptr %l9, !tbaa !29
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr { i64, [4 x i64] }, ptr %t348, i32 0, i32 1
  %t351 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t350, i32 0, i32 2
  %t352 = load ptr, ptr %t351
  store ptr %t352, ptr %l10, !tbaa !29
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t354, i32 0, i32 1
  %t357 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t356, i32 0, i32 3
  %t358 = load ptr, ptr %t357
  store ptr %t358, ptr %l11, !tbaa !29
  br label %bb109
bb108:
  br label %bb119
bb109:
  %t360 = load ptr, ptr %l9, !tbaa !29
  %t362 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t365 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t360, { i64, ptr } %t362)
  store i1 %t365, ptr %l180
  br label %bb110
bb110:
  %t366 = load i1, ptr %l180, !tbaa !21
  br i1 %t366, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l181, !tbaa !21
  br label %bb114
bb112:
  %t367 = load ptr, ptr %l10, !tbaa !29
  %t369 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t372 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t367, { i64, ptr } %t369)
  store i1 %t372, ptr %l185
  br label %bb113
bb113:
  %t373 = load i1, ptr %l185, !tbaa !21
  store i1 %t373, ptr %l181, !tbaa !21
  br label %bb114
bb114:
  %t374 = load i1, ptr %l181, !tbaa !21
  br i1 %t374, label %bb115, label %bb116
bb115:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb118
bb116:
  %t375 = load ptr, ptr %l11, !tbaa !29
  %t377 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t380 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t375, { i64, ptr } %t377)
  store i1 %t380, ptr %l190
  br label %bb117
bb117:
  %t381 = load i1, ptr %l190, !tbaa !21
  store i1 %t381, ptr %l186, !tbaa !21
  br label %bb118
bb118:
  %t382 = load i1, ptr %l186, !tbaa !21
  store i1 %t382, ptr %rv
  br label %ret
bb119:
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l191, !tbaa !29
  store i1 false, ptr %l192, !tbaa !21
  %t384 = load ptr, ptr %l191, !tbaa !29
  %t385 = icmp ne ptr %t384, null
  br i1 %t385, label %bb120, label %bb121
bb120:
  %t387 = load ptr, ptr %l191, !tbaa !29
  %t388 = load i64, ptr %t387, !range !{i64 0, i64 30}
  %t390 = icmp eq i64 %t388, 12
  store i1 %t390, ptr %l192, !tbaa !21
  br label %bb121
bb121:
  %t391 = load i1, ptr %l192, !tbaa !21
  br i1 %t391, label %bb122, label %bb123
bb122:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr { i64, [4 x i64] }, ptr %t392, i32 0, i32 1
  %t395 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t394, i32 0, i32 1
  %t396 = load ptr, ptr %t395
  store ptr %t396, ptr %l12, !tbaa !29
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr { i64, [4 x i64] }, ptr %t398, i32 0, i32 1
  %t401 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t400, i32 0, i32 2
  %t402 = load { i64, ptr }, ptr %t401
  store { i64, ptr } %t402, ptr %l13, !tbaa !27
  br label %bb128
bb123:
  %t404 = load ptr, ptr %l0, !tbaa !29
  store ptr %t404, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t405 = load ptr, ptr %l199, !tbaa !29
  %t406 = icmp ne ptr %t405, null
  br i1 %t406, label %bb124, label %bb125
bb124:
  %t408 = load ptr, ptr %l199, !tbaa !29
  %t409 = load i64, ptr %t408, !range !{i64 0, i64 30}
  %t411 = icmp eq i64 %t409, 15
  store i1 %t411, ptr %l200, !tbaa !21
  br label %bb125
bb125:
  %t412 = load i1, ptr %l200, !tbaa !21
  br i1 %t412, label %bb126, label %bb127
bb126:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr { i64, [4 x i64] }, ptr %t413, i32 0, i32 1
  %t416 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t415, i32 0, i32 1
  %t417 = load ptr, ptr %t416
  store ptr %t417, ptr %l12, !tbaa !29
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr { i64, [4 x i64] }, ptr %t419, i32 0, i32 1
  %t422 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t421, i32 0, i32 2
  %t423 = load { i64, ptr }, ptr %t422
  store { i64, ptr } %t423, ptr %l13, !tbaa !27
  br label %bb128
bb127:
  br label %bb134
bb128:
  %t425 = load ptr, ptr %l12, !tbaa !29
  %t427 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t430 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t425, { i64, ptr } %t427)
  store i1 %t430, ptr %l210
  br label %bb129
bb129:
  %t431 = load i1, ptr %l210, !tbaa !21
  br i1 %t431, label %bb130, label %bb131
bb130:
  store i1 true, ptr %l211, !tbaa !21
  br label %bb133
bb131:
  %t432 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t433 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t436 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t432, { i64, ptr } %t433)
  store i1 %t436, ptr %l214
  br label %bb132
bb132:
  %t437 = load i1, ptr %l214, !tbaa !21
  store i1 %t437, ptr %l211, !tbaa !21
  br label %bb133
bb133:
  %t438 = load i1, ptr %l211, !tbaa !21
  store i1 %t438, ptr %rv
  br label %ret
bb134:
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l215, !tbaa !29
  store i1 false, ptr %l216, !tbaa !21
  %t440 = load ptr, ptr %l215, !tbaa !29
  %t441 = icmp ne ptr %t440, null
  br i1 %t441, label %bb135, label %bb136
bb135:
  %t443 = load ptr, ptr %l215, !tbaa !29
  %t444 = load i64, ptr %t443, !range !{i64 0, i64 30}
  %t446 = icmp eq i64 %t444, 16
  store i1 %t446, ptr %l216, !tbaa !21
  br label %bb136
bb136:
  %t447 = load i1, ptr %l216, !tbaa !21
  br i1 %t447, label %bb137, label %bb138
bb137:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr { i64, [4 x i64] }, ptr %t448, i32 0, i32 1
  %t451 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t450, i32 0, i32 1
  %t452 = load ptr, ptr %t451
  store ptr %t452, ptr %l14, !tbaa !29
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr { i64, [4 x i64] }, ptr %t454, i32 0, i32 1
  %t457 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t456, i32 0, i32 2
  %t458 = load ptr, ptr %t457
  store ptr %t458, ptr %l15, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr { i64, [4 x i64] }, ptr %t460, i32 0, i32 1
  %t463 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t462, i32 0, i32 3
  %t464 = load ptr, ptr %t463
  store ptr %t464, ptr %l16, !tbaa !29
  br label %bb139
bb138:
  br label %bb149
bb139:
  %t466 = load ptr, ptr %l14, !tbaa !29
  %t468 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t471 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t466, { i64, ptr } %t468)
  store i1 %t471, ptr %l228
  br label %bb140
bb140:
  %t472 = load i1, ptr %l228, !tbaa !21
  br i1 %t472, label %bb141, label %bb142
bb141:
  store i1 true, ptr %l229, !tbaa !21
  br label %bb144
bb142:
  %t473 = load ptr, ptr %l15, !tbaa !29
  %t474 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t477 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t473, { i64, ptr } %t474)
  store i1 %t477, ptr %l232
  br label %bb143
bb143:
  %t478 = load i1, ptr %l232, !tbaa !21
  store i1 %t478, ptr %l229, !tbaa !21
  br label %bb144
bb144:
  %t479 = load i1, ptr %l229, !tbaa !21
  br i1 %t479, label %bb145, label %bb146
bb145:
  store i1 true, ptr %l233, !tbaa !21
  br label %bb148
bb146:
  %t480 = load ptr, ptr %l16, !tbaa !29
  %t481 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t484 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t480, { i64, ptr } %t481)
  store i1 %t484, ptr %l236
  br label %bb147
bb147:
  %t485 = load i1, ptr %l236, !tbaa !21
  store i1 %t485, ptr %l233, !tbaa !21
  br label %bb148
bb148:
  %t486 = load i1, ptr %l233, !tbaa !21
  store i1 %t486, ptr %rv
  br label %ret
bb149:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l237, !tbaa !29
  store i1 false, ptr %l238, !tbaa !21
  %t488 = load ptr, ptr %l237, !tbaa !29
  %t489 = icmp ne ptr %t488, null
  br i1 %t489, label %bb150, label %bb151
bb150:
  %t491 = load ptr, ptr %l237, !tbaa !29
  %t492 = load i64, ptr %t491, !range !{i64 0, i64 30}
  %t494 = icmp eq i64 %t492, 17
  store i1 %t494, ptr %l238, !tbaa !21
  br label %bb151
bb151:
  %t495 = load i1, ptr %l238, !tbaa !21
  br i1 %t495, label %bb152, label %bb153
bb152:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr { i64, [4 x i64] }, ptr %t496, i32 0, i32 1
  %t499 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t498, i32 0, i32 2
  %t500 = load { i64, ptr }, ptr %t499
  store { i64, ptr } %t500, ptr %l17, !tbaa !27
  br label %bb170
bb153:
  %t502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t502, ptr %l243, !tbaa !29
  store i1 false, ptr %l244, !tbaa !21
  %t503 = load ptr, ptr %l243, !tbaa !29
  %t504 = icmp ne ptr %t503, null
  br i1 %t504, label %bb154, label %bb155
bb154:
  %t506 = load ptr, ptr %l243, !tbaa !29
  %t507 = load i64, ptr %t506, !range !{i64 0, i64 30}
  %t509 = icmp eq i64 %t507, 18
  store i1 %t509, ptr %l244, !tbaa !21
  br label %bb155
bb155:
  %t510 = load i1, ptr %l244, !tbaa !21
  br i1 %t510, label %bb156, label %bb157
bb156:
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t513 = getelementptr { i64, [4 x i64] }, ptr %t511, i32 0, i32 1
  %t514 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t513, i32 0, i32 1
  %t515 = load { i64, ptr }, ptr %t514
  store { i64, ptr } %t515, ptr %l17, !tbaa !27
  br label %bb170
bb157:
  %t517 = load ptr, ptr %l0, !tbaa !29
  store ptr %t517, ptr %l249, !tbaa !29
  store i1 false, ptr %l250, !tbaa !21
  %t518 = load ptr, ptr %l249, !tbaa !29
  %t519 = icmp ne ptr %t518, null
  br i1 %t519, label %bb158, label %bb159
bb158:
  %t521 = load ptr, ptr %l249, !tbaa !29
  %t522 = load i64, ptr %t521, !range !{i64 0, i64 30}
  %t524 = icmp eq i64 %t522, 29
  store i1 %t524, ptr %l250, !tbaa !21
  br label %bb159
bb159:
  %t525 = load i1, ptr %l250, !tbaa !21
  br i1 %t525, label %bb160, label %bb161
bb160:
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t528 = getelementptr { i64, [4 x i64] }, ptr %t526, i32 0, i32 1
  %t529 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t528, i32 0, i32 1
  %t530 = load { i64, ptr }, ptr %t529
  store { i64, ptr } %t530, ptr %l17, !tbaa !27
  br label %bb170
bb161:
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l255, !tbaa !29
  store i1 false, ptr %l256, !tbaa !21
  %t533 = load ptr, ptr %l255, !tbaa !29
  %t534 = icmp ne ptr %t533, null
  br i1 %t534, label %bb162, label %bb163
bb162:
  %t536 = load ptr, ptr %l255, !tbaa !29
  %t537 = load i64, ptr %t536, !range !{i64 0, i64 30}
  %t539 = icmp eq i64 %t537, 20
  store i1 %t539, ptr %l256, !tbaa !21
  br label %bb163
bb163:
  %t540 = load i1, ptr %l256, !tbaa !21
  br i1 %t540, label %bb164, label %bb165
bb164:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t543 = getelementptr { i64, [4 x i64] }, ptr %t541, i32 0, i32 1
  %t544 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t543, i32 0, i32 1
  %t545 = load { i64, ptr }, ptr %t544
  store { i64, ptr } %t545, ptr %l17, !tbaa !27
  br label %bb170
bb165:
  %t547 = load ptr, ptr %l0, !tbaa !29
  store ptr %t547, ptr %l261, !tbaa !29
  store i1 false, ptr %l262, !tbaa !21
  %t548 = load ptr, ptr %l261, !tbaa !29
  %t549 = icmp ne ptr %t548, null
  br i1 %t549, label %bb166, label %bb167
bb166:
  %t551 = load ptr, ptr %l261, !tbaa !29
  %t552 = load i64, ptr %t551, !range !{i64 0, i64 30}
  %t554 = icmp eq i64 %t552, 24
  store i1 %t554, ptr %l262, !tbaa !21
  br label %bb167
bb167:
  %t555 = load i1, ptr %l262, !tbaa !21
  br i1 %t555, label %bb168, label %bb169
bb168:
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t558 = getelementptr { i64, [4 x i64] }, ptr %t556, i32 0, i32 1
  %t559 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t558, i32 0, i32 1
  %t560 = load { i64, ptr }, ptr %t559
  store { i64, ptr } %t560, ptr %l17, !tbaa !27
  br label %bb170
bb169:
  br label %bb172
bb170:
  %t562 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t563 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t566 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t562, { i64, ptr } %t563)
  store i1 %t566, ptr %l269
  br label %bb171
bb171:
  %t567 = load i1, ptr %l269, !tbaa !21
  store i1 %t567, ptr %rv
  br label %ret
bb172:
  %t568 = load ptr, ptr %l0, !tbaa !29
  store ptr %t568, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t569 = load ptr, ptr %l270, !tbaa !29
  %t570 = icmp ne ptr %t569, null
  br i1 %t570, label %bb173, label %bb174
bb173:
  %t572 = load ptr, ptr %l270, !tbaa !29
  %t573 = load i64, ptr %t572, !range !{i64 0, i64 30}
  %t575 = icmp eq i64 %t573, 19
  store i1 %t575, ptr %l271, !tbaa !21
  br label %bb174
bb174:
  %t576 = load i1, ptr %l271, !tbaa !21
  br i1 %t576, label %bb175, label %bb176
bb175:
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t579 = getelementptr { i64, [4 x i64] }, ptr %t577, i32 0, i32 1
  %t580 = getelementptr { %"compiler/source:Span", ptr }, ptr %t579, i32 0, i32 1
  %t581 = load ptr, ptr %t580
  store ptr %t581, ptr %l18, !tbaa !29
  br label %bb177
bb176:
  br label %bb187
bb177:
  %t583 = load ptr, ptr %l18, !tbaa !29
  %t585 = getelementptr %"compiler/ast:Compr", ptr %t583, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !29
  %t588 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t591 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t586, { i64, ptr } %t588)
  store i1 %t591, ptr %l280
  br label %bb178
bb178:
  %t592 = load i1, ptr %l280, !tbaa !21
  br i1 %t592, label %bb179, label %bb180
bb179:
  store i1 true, ptr %l281, !tbaa !21
  br label %bb182
bb180:
  %t593 = load ptr, ptr %l18, !tbaa !29
  %t595 = getelementptr %"compiler/ast:Compr", ptr %t593, i32 0, i32 4
  %t596 = load ptr, ptr %t595, !tbaa !29
  %t598 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t601 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t596, { i64, ptr } %t598)
  store i1 %t601, ptr %l286
  br label %bb181
bb181:
  %t602 = load i1, ptr %l286, !tbaa !21
  store i1 %t602, ptr %l281, !tbaa !21
  br label %bb182
bb182:
  %t603 = load i1, ptr %l281, !tbaa !21
  br i1 %t603, label %bb183, label %bb184
bb183:
  store i1 true, ptr %l287, !tbaa !21
  br label %bb186
bb184:
  %t604 = load ptr, ptr %l18, !tbaa !29
  %t606 = getelementptr %"compiler/ast:Compr", ptr %t604, i32 0, i32 5
  %t607 = load ptr, ptr %t606, !tbaa !29
  %t608 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t611 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t607, { i64, ptr } %t608)
  store i1 %t611, ptr %l291
  br label %bb185
bb185:
  %t612 = load i1, ptr %l291, !tbaa !21
  store i1 %t612, ptr %l287, !tbaa !21
  br label %bb186
bb186:
  %t613 = load i1, ptr %l287, !tbaa !21
  store i1 %t613, ptr %rv
  br label %ret
bb187:
  %t614 = load ptr, ptr %l0, !tbaa !29
  store ptr %t614, ptr %l292, !tbaa !29
  store i1 false, ptr %l293, !tbaa !21
  %t615 = load ptr, ptr %l292, !tbaa !29
  %t616 = icmp ne ptr %t615, null
  br i1 %t616, label %bb188, label %bb189
bb188:
  %t618 = load ptr, ptr %l292, !tbaa !29
  %t619 = load i64, ptr %t618, !range !{i64 0, i64 30}
  %t621 = icmp eq i64 %t619, 21
  store i1 %t621, ptr %l293, !tbaa !21
  br label %bb189
bb189:
  %t622 = load i1, ptr %l293, !tbaa !21
  br i1 %t622, label %bb190, label %bb191
bb190:
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t625 = getelementptr { i64, [4 x i64] }, ptr %t623, i32 0, i32 1
  %t626 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t625, i32 0, i32 1
  %t627 = load ptr, ptr %t626
  store ptr %t627, ptr %l19, !tbaa !29
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t631 = getelementptr { i64, [4 x i64] }, ptr %t629, i32 0, i32 1
  %t632 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t631, i32 0, i32 2
  %t633 = load { i64, ptr }, ptr %t632
  store { i64, ptr } %t633, ptr %l20, !tbaa !27
  br label %bb192
bb191:
  br label %bb198
bb192:
  %t635 = load ptr, ptr %l19, !tbaa !29
  %t637 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t640 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t635, { i64, ptr } %t637)
  store i1 %t640, ptr %l303
  br label %bb193
bb193:
  %t641 = load i1, ptr %l303, !tbaa !21
  br i1 %t641, label %bb194, label %bb195
bb194:
  store i1 true, ptr %l304, !tbaa !21
  br label %bb197
bb195:
  %t642 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t643 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t646 = call i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %t642, { i64, ptr } %t643)
  store i1 %t646, ptr %l307
  br label %bb196
bb196:
  %t647 = load i1, ptr %l307, !tbaa !21
  store i1 %t647, ptr %l304, !tbaa !21
  br label %bb197
bb197:
  %t648 = load i1, ptr %l304, !tbaa !21
  store i1 %t648, ptr %rv
  br label %ret
bb198:
  %t649 = load ptr, ptr %l0, !tbaa !29
  store ptr %t649, ptr %l308, !tbaa !29
  store i1 false, ptr %l309, !tbaa !21
  %t650 = load ptr, ptr %l308, !tbaa !29
  %t651 = icmp ne ptr %t650, null
  br i1 %t651, label %bb199, label %bb200
bb199:
  %t653 = load ptr, ptr %l308, !tbaa !29
  %t654 = load i64, ptr %t653, !range !{i64 0, i64 30}
  %t656 = icmp eq i64 %t654, 23
  store i1 %t656, ptr %l309, !tbaa !21
  br label %bb200
bb200:
  %t657 = load i1, ptr %l309, !tbaa !21
  br i1 %t657, label %bb201, label %bb202
bb201:
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t660 = getelementptr { i64, [4 x i64] }, ptr %t658, i32 0, i32 1
  %t661 = getelementptr { %"compiler/source:Span", ptr }, ptr %t660, i32 0, i32 1
  %t662 = load ptr, ptr %t661
  store ptr %t662, ptr %l21, !tbaa !29
  br label %bb203
bb202:
  br label %bb205
bb203:
  %t664 = load ptr, ptr %l21, !tbaa !29
  %t665 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t668 = call i1 @compiler_2fcheck_2ematchAssigns(ptr %v0, ptr %v1, ptr %t664, { i64, ptr } %t665)
  store i1 %t668, ptr %l316
  br label %bb204
bb204:
  %t669 = load i1, ptr %l316, !tbaa !21
  store i1 %t669, ptr %rv
  br label %ret
bb205:
  %t670 = load ptr, ptr %l0, !tbaa !29
  store ptr %t670, ptr %l317, !tbaa !29
  store i1 false, ptr %l318, !tbaa !21
  %t671 = load ptr, ptr %l317, !tbaa !29
  %t672 = icmp ne ptr %t671, null
  br i1 %t672, label %bb206, label %bb207
bb206:
  %t674 = load ptr, ptr %l317, !tbaa !29
  %t675 = load i64, ptr %t674, !range !{i64 0, i64 30}
  %t677 = icmp eq i64 %t675, 27
  store i1 %t677, ptr %l318, !tbaa !21
  br label %bb207
bb207:
  %t678 = load i1, ptr %l318, !tbaa !21
  br i1 %t678, label %bb208, label %bb209
bb208:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t681 = getelementptr { i64, [4 x i64] }, ptr %t679, i32 0, i32 1
  %t682 = getelementptr { %"compiler/source:Span", ptr }, ptr %t681, i32 0, i32 1
  %t683 = load ptr, ptr %t682
  store ptr %t683, ptr %l22, !tbaa !29
  br label %bb210
bb209:
  br label %bb212
bb210:
  %t685 = load ptr, ptr %l22, !tbaa !29
  %t686 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t689 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t685, { i64, ptr } %t686)
  store i1 %t689, ptr %l325
  br label %bb211
bb211:
  %t690 = load i1, ptr %l325, !tbaa !21
  store i1 %t690, ptr %rv
  br label %ret
bb212:
  call void @__olang_check_failed(ptr @olang_loc_cbdda74bd058a0f4_fe1f71fe107242f8)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2eaddMag(i1 %a0, i128 %a1, i1 %a2, i128 %a3) #0 {
entry:
  %l0 = alloca i1
  %l1 = alloca i128
  %l2 = alloca i1
  %l3 = alloca i128
  %l4 = alloca i128
  %l14 = alloca %"compiler/check:litv"
  %l17 = alloca %"compiler/check:litv"
  %l25 = alloca %"compiler/check:litv"
  %l30 = alloca %"compiler/check:litv"
  %rv = alloca %"compiler/check:litv"
  store i1 %a0, ptr %l0
  store i128 %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i128 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i1, ptr %l0, !tbaa !21
  %t2 = load i1, ptr %l2, !tbaa !21
  %t5 = icmp eq i1 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i128, ptr %l1
  %t8 = load i128, ptr %l3
  %t11 = add i128 %t7, %t8
  store i128 %t11, ptr %l4
  %t13 = load i128, ptr %l4
  %t14 = load i128, ptr %l1
  %t17 = icmp ult i128 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb2:
  br label %bb8
bb3:
  %t19 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t19, ptr %l14
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t20 = load %"compiler/check:litv", ptr %l14
  store %"compiler/check:litv" %t20, ptr %rv
  br label %ret
bb6:
  %t21 = load i1, ptr %l0, !tbaa !21
  %t22 = load i128, ptr %l4
  %t25 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %t21, i128 %t22)
  store %"compiler/check:litv" %t25, ptr %l17
  br label %bb7
bb7:
  %t26 = load %"compiler/check:litv", ptr %l17
  store %"compiler/check:litv" %t26, ptr %rv
  br label %ret
bb8:
  %t27 = load i128, ptr %l1
  %t28 = load i128, ptr %l3
  %t31 = icmp uge i128 %t27, %t28
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load i1, ptr %l0, !tbaa !21
  %t34 = load i128, ptr %l1
  %t35 = load i128, ptr %l3
  %t38 = sub i128 %t34, %t35
  %t41 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %t33, i128 %t38)
  store %"compiler/check:litv" %t41, ptr %l25
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t42 = load %"compiler/check:litv", ptr %l25
  store %"compiler/check:litv" %t42, ptr %rv
  br label %ret
bb12:
  %t43 = load i1, ptr %l2, !tbaa !21
  %t44 = load i128, ptr %l3
  %t45 = load i128, ptr %l1
  %t48 = sub i128 %t44, %t45
  %t51 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %t43, i128 %t48)
  store %"compiler/check:litv" %t51, ptr %l30
  br label %bb13
bb13:
  %t52 = load %"compiler/check:litv", ptr %l30
  store %"compiler/check:litv" %t52, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb4:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 69 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb8:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t13 = trunc i64 70 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb12:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t18 = trunc i64 72 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb16:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 73 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb20:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t28 = trunc i64 74 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb24:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 97 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb25, label %bb26
bb25:
  br label %bb33
bb26:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 99 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 98 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t48 = trunc i64 100 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb34:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t53 = trunc i64 101 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb38:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t58 = trunc i64 102 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb42:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t63 = trunc i64 103 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb46:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t68 = trunc i64 106 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb50:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t73 = trunc i64 107 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb54:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t78 = trunc i64 71 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_445c35e7b454dfb2_9156676d88e8071e)
  unreachable
bb63:
  %t81 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t81, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcheck_2eprotocolArity(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i64 @compiler_2fcheck_2eopShapeOf(ptr %v0, { i64, ptr } %t1)
  store i64 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i64, ptr %l3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sge i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = getelementptr [23 x %"compiler/check:opShape"], ptr @G_2ecompiler_2fcheck_2eOpShapes, i64 0, i64 %t9
  %t12 = getelementptr %"compiler/check:opShape", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t17, ptr %l9
  br label %bb5
bb5:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb9
bb7:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t21, ptr %l12
  br label %bb8
bb8:
  %t22 = load i1, ptr %l12, !tbaa !21
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb13
bb11:
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t26, ptr %l15
  br label %bb12
bb12:
  %t27 = load i1, ptr %l15, !tbaa !21
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb13
bb13:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i1 %t32, ptr %l18
  br label %bb17
bb17:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb21
bb19:
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t34, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t36, ptr %l21
  br label %bb20
bb20:
  %t37 = load i1, ptr %l21, !tbaa !21
  store i1 %t37, ptr %l19, !tbaa !21
  br label %bb21
bb21:
  %t38 = load i1, ptr %l19, !tbaa !21
  br i1 %t38, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb25
bb23:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t41, ptr %l24
  br label %bb24
bb24:
  %t42 = load i1, ptr %l24, !tbaa !21
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb25
bb25:
  %t43 = load i1, ptr %l22, !tbaa !21
  br i1 %t43, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i64 1, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d73, i32 0, i32 1) })
  store i1 %t47, ptr %l27
  br label %bb29
bb29:
  %t48 = load i1, ptr %l27, !tbaa !21
  br i1 %t48, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList() #0 {
entry:
  %l1 = alloca %"compiler/check:reflList"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflList"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t3 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s0, i1 false, i32 %t1, i64 0, i64 -1)
  store %"compiler/check:reflList" %t3, ptr %l1
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load %"compiler/check:reflList", ptr %l1
  store %"compiler/check:reflList" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflList", ptr %rv
  ret %"compiler/check:reflList" %rr
}

define dso_local void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
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
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t27, ptr %a1)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_3aContractAsk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, [3 x i64] } %a7, { i64, ptr } %a8, { i64, ptr } %a9) #0 {
entry:
  %l30 = alloca %"compiler/check:ContractAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t21 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 0
  store i64 %a0, ptr %t21, !tbaa !24
  %t23 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 1
  store i64 %a1, ptr %t23, !tbaa !24
  %t25 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 2
  store %"compiler/source:Span" %a2, ptr %t25
  %t27 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 3
  store i64 %a3, ptr %t27, !tbaa !24
  %t29 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 4
  store %"compiler/source:Span" %a4, ptr %t29
  %t31 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 5
  store { i64, ptr } %a5, ptr %t31, !tbaa !27
  %t33 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 6
  store { i64, ptr } %a6, ptr %t33, !tbaa !27
  %t35 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 7
  store { i64, [3 x i64] } %a7, ptr %t35
  %t37 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 8
  store { i64, ptr } %a8, ptr %t37, !tbaa !27
  %t39 = getelementptr %"compiler/check:ContractAsk", ptr %l30, i32 0, i32 9
  store { i64, ptr } %a9, ptr %t39, !tbaa !27
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l30, i64 136, i1 false)
  br label %ret
ret:
  ret void
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
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"call" }>, align 8
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
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e({ i64, ptr } %t2, { i64, ptr } %t4)
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

@.d3 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"pass a lambda calling it" }>, align 8
@.d4 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"write the function type '" }>, align 8
@.d5 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"', or pass a lambda handling them" }>, align 8
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
@olang_2esole_2ecompiler_2fcheck_3aroFn_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
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

@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aAssertAsk_2e8 = weak hidden constant i1 false
@.d15 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"FromBits" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d18 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"' is called through an 'any " }>, align 8
@.d19 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"&' here, so " }>, align 8
@.d20 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" needs it" }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d23 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a table slot the instance's type meets no way" }>, align 8
@.d24 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"NoReturn" }>, align 8
@.d25 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Exported" }>, align 8
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Extern" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'$" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d30 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".Copy()'" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d35 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a lambda" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d38 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"a lambda parameter written as a reference where a value is expected (D16a)" }>, align 8
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

@.d39 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"this lambda" }>, align 8
@.d40 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" - it is not a numeric type" }>, align 8
@.d41 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c" - a declared type has its base's limits only where it extends it and declares no constructor" }>, align 8
@.d42 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"Max, Min, Inf, NaN, Epsilon and SmallestNormal" }>, align 8
@.d43 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Max and Min" }>, align 8
@.d44 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" - its limits are " }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d47 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
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

@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d49 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"from its parts" }>, align 8
@.d50 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"with '" }>, align 8
@.d51 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".Copy()'" }>, align 8
@.d52 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"with 'Copy()'" }>, align 8
@.d53 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d54 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Minus" }>, align 8
@.d55 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d56 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Div" }>, align 8
@.d57 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Rem" }>, align 8
@.d58 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"MatMul" }>, align 8
@.d59 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Less" }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d61 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d62 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitXor" }>, align 8
@.d63 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ShiftLeft" }>, align 8
@.d64 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ShiftRight" }>, align 8
@.d65 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Pow" }>, align 8
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d68 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Iter" }>, align 8
@.d70 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Has" }>, align 8
@.d71 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Contains" }>, align 8
@.d72 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"RunFrom" }>, align 8
@.d73 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
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
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %t16 = getelementptr i32, ptr %t15, i64 %t13
  %t17 = load i32, ptr %t16, !tbaa !33
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i32, ptr %t20, i64 %t18
  %t22 = load i32, ptr %t21, !tbaa !33
  %t25 = icmp eq i32 %t17, %t22
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

@olang_loc_fe14b63572f1977b_411de5df8083206f = external constant [0 x i8]
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueErrors(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:roFn" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsFixed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eApply(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i1 %a4, i32 %a5, i32 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnySlot" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_87950e0971945cd5_bece9ab6826c95c9 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultReads(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeArgs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f8c90d07629b23d_673d56dd932bf211 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdChoosesPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2fb1f9f5dda04b10_a3bd6c7ca1760a54 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3)
declare { { i64, [3 x i64] }, { i64, ptr } } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTopContext(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprogramOrigin(ptr %v0, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUseOf(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_3aAssertAsk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, { i64, ptr } %a6, { i64, [3 x i64] } %a7, { i64, ptr } %a8, i1 %a9, { i64, ptr } %a10, { i64, ptr } %a11, { i64, [3 x i64] } %a12)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2ePush_Hbdaad063a73077b3b5842d615b8c1d82(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_3bfc508877dabbdc_ae4b6eee9a4b2328 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternRules(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportRules(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesNotHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorMethod(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einheritClash(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverrideClash(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderRules(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplacement(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnTypeParams(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSets(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailForms(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etailSets(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettle(ptr %v0, ptr %a0)
declare %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromBits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_d6f5282c3e1602eb_a812bdd43f0e87b7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_8fa0026acd32add6_9f7d6b48cffeb302 = external constant [0 x i8]
@olang_loc_abc0d27c00840bf5_5f6cad85e28cb021 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare %"compiler/check:ownerAt" @compiler_2fcheck_3aownerAt_2ector(ptr %v0, i32 %a0, i1 %a1)
@olang_loc_9c3920f9822030fe_f04ee3e76f867a92 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ethunkModule(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, ptr %a5)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
@olang_loc_3c4a57751e7c3c44_a964a095ba0d8e8 = external constant [0 x i8]
@olang_loc_f96b0b1da9e56a51_6d335a1b9c4b88d5 = external constant [0 x i8]
declare { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2)
@olang_loc_f31fa7029241fd32_aa76ba41726a43b6 = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_e17fa1ab378faab9_6d6fcc9fefe16fc5 = external constant [0 x i8]
@olang_loc_cd555273ac5ad6b8_af09fb78e7087b4 = external constant [0 x i8]
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@olang_loc_bdeebae2e62e4381_d7e2b33750a898f5 = external constant [0 x i8]
@olang_loc_f558fce6a2b003e7_933c1b66dd113bdb = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2eexprPath(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eTru_Hf06d897493074497da237c73fecd44cc(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eTrunc_H529a97138f08f267b035acfeb838c9e0(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eTrun_Ha6093229c720e1f7d9f4f9cafee6beaf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteFuncTypeScopes(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroWritableRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrHolds(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrValueNotHeld(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMayBeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etoAny(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsFitted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
declare i1 @compiler_2fcheck_2eisData(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstToMutRef(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataAsFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4)
declare i1 @compiler_2fcheck_2eisArrayMake(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclMismatch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2enamedFn(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efuncFits(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feffects_2eEffectWords = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\7F\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:effectPlace" @compiler_2fcheck_3aeffectPlace_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4, i32 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2ePu_Hd9d57c30a8c259f951b68187085ac463(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:effectPlace" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemptyArray(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToArray(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToNonNull(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumberDoesNotFlow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalNote(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
declare ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryBorrowed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etargetHoldsRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondLentWritable(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLend(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estaticArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextWrite(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutWrite(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyToWritable(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayRunTimeIntoFixed(ptr %v0, i64 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArraySizeMismatch(ptr %v0, i64 %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenTypeDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6)
@olang_loc_40d363cef29e2dc3_da67730fe5a0874f = external constant [0 x i8]
@olang_loc_db68d589b432834_a1faf5a9fb6b5a70 = external constant [0 x i8]
@olang_loc_49068bc24a947660_4b301fa97abc34fc = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_369dcc443ccea639_2a432d0faa4fb925 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoreturnSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d264b31a2a0953e1_a8a3a5518784125d = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaArity(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2, i64 %a3)
@olang_loc_3e7f35b161741bd4_701c2e32dccd3eb0 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaSignature(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaParamUntyped(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_5a62442bf09cb677_66ce856a58ef9453 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingReturn(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eLaneArr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
@G_2ecompiler_2fcheck_2eLaneScalar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2elimitIndex(ptr %v0, { i64, ptr } %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2elimitBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeetsBound(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
@G_2ecompiler_2fcheck_2eliteralOrder = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOverlap(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOverlap(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_715bda85e546d34f_b961a877464e92ab = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldDeclAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_403dca98cd10a30e_10bb73906b0115ea = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, i32 %a3, ptr %a4)
declare %"compiler/check:errNarrow" @compiler_2fcheck_3aerrNarrow_2ector(ptr %v0, i32 %a0, i32 %a1, i64 %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2ePush_H97bb9732c658fc3569a453b270fe50d0(ptr %v0, ptr %a0, %"compiler/check:errNarrow" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H2c4b9eb360b9a0ada2008890a467b28d(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeepVal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
@olang_loc_1e97160fa78b00b5_b2a2d0ea90892ee9 = external constant [0 x i8]
@olang_loc_de2cb745672f71c4_3d4b81a63c3c3818 = external constant [0 x i8]
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_5b70aeb4dcee2d2_fdbe62f0939a6ff6 = external constant [0 x i8]
@olang_loc_51f82334067145c7_15912fbf1ec70a8b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesImmut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_238986d309dff67a_df3b69a02a086cde = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
@olang_loc_f7f48d742623e788_feac04c086d410bc = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ba4cbfec236fac31_e934563b75f0ca1d = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForSource(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForElem(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_922ae0a799ba69ce_f9cc72ab99b0ec2 = external constant [0 x i8]
@olang_loc_46a0e749826cef18_3e2809181fcd5dac = external constant [0 x i8]
@olang_loc_2f12767f94a228d4_8b6b4888798b3f68 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ematchAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_cbdda74bd058a0f4_fe1f71fe107242f8 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %a0, i128 %a1)
@olang_loc_445c35e7b454dfb2_9156676d88e8071e = external constant [0 x i8]
declare i64 @compiler_2fcheck_2eopShapeOf(ptr %v0, { i64, ptr } %a0)
@G_2ecompiler_2fcheck_2eOpShapes = external constant <{ [8 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [16 x i8] }>
declare %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %v0, i1 %a0, i32 %a1, i64 %a2, i64 %a3)
declare void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)

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
