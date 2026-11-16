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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, { i64, ptr }, i64, i1, i64 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/check:ctSource" = type { { i64, ptr }, ptr, { i64, ptr }, i64, { i64, ptr } }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32, i1 }
%"compiler/check:inPlaceRead" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span" }
%"compiler/check:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/check:setAt" = type { ptr, i64, { i64, ptr }, { i64, ptr }, %"compiler/source:Span", i32 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:landing" = type { i64, i64, %"compiler/source:Span", i32, i64 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:typeCase" = type { i1, i1, i32, i64, i64, i1 }
define dso_local { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l25 = alloca i1
  %l32 = alloca i1
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
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
  br label %bb24
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l5, !tbaa !22
  %t23 = load i8, ptr %l5, !tbaa !22
  %t25 = icmp eq i8 %t23, 40
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb6:
  %t27 = load i8, ptr %l5, !tbaa !22
  %t29 = icmp eq i8 %t27, 91
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %l1, !tbaa !24
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t36 = load i8, ptr %l5, !tbaa !22
  %t38 = icmp eq i8 %t36, 41
  br i1 %t38, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb13
bb12:
  %t40 = load i8, ptr %l5, !tbaa !22
  %t42 = icmp eq i8 %t40, 93
  store i1 %t42, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l1, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t49 = load i8, ptr %l5, !tbaa !22
  %t51 = icmp eq i8 %t49, 32
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t53 = load i64, ptr %l1, !tbaa !24
  %t55 = icmp eq i64 %t53, 0
  store i1 %t55, ptr %l32, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t57 = load i1, ptr %l32, !tbaa !21
  br i1 %t57, label %bb20, label %bb21
bb20:
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t62 = extractvalue { i64, ptr } %t58, 1
  %t63 = extractvalue { i64, ptr } %t58, 0
  %t64 = add i64 %t60, %t63
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t59, i64 %t60)
  %t69 = getelementptr i8, ptr %t68, i64 %t60
  call void @olang_textcopy(ptr %t69, ptr %t62, i64 %t63)
  %t70 = getelementptr i8, ptr %t69, i64 %t63
  call void @olang_textcopy(ptr %t70, ptr %t65, i64 %t66)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t68, 1
  store { i64, ptr } %t72, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t74 = load i64, ptr %l3, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l3, !tbaa !24
  br label %bb1
bb24:
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t78, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l58 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i1
  %l69 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l77 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca i1
  %l86 = alloca i1
  %l87 = alloca i1
  %l90 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l103 = alloca i1
  %l104 = alloca i1
  %l108 = alloca i1
  %l114 = alloca i1
  %l115 = alloca i1
  %l118 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l126 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l134 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t11 = load ptr, ptr %l15, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l15, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l16, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb114
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l19, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 2
  store i1 %t26, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l20, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l1, !tbaa !29
  br label %bb19
bb14:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t35 = load ptr, ptr %l25, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb15, label %bb16
bb15:
  %t38 = load ptr, ptr %l25, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 3
  store i1 %t41, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t42 = load i1, ptr %l26, !tbaa !21
  br i1 %t42, label %bb17, label %bb18
bb17:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l1, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l32
  br label %bb20
bb20:
  %t52 = load i1, ptr %l32, !tbaa !21
  store i1 %t52, ptr %l10, !tbaa !21
  br label %bb114
bb21:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l33, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 5
  store i1 %t60, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l34, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l2, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Promote", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t71)
  store i1 %t73, ptr %l41
  br label %bb27
bb27:
  %t74 = load i1, ptr %l41, !tbaa !21
  store i1 %t74, ptr %l10, !tbaa !21
  br label %bb114
bb28:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t76 = load ptr, ptr %l42, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb29, label %bb30
bb29:
  %t79 = load ptr, ptr %l42, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 18}
  %t82 = icmp eq i64 %t80, 6
  store i1 %t82, ptr %l43, !tbaa !21
  br label %bb30
bb30:
  %t83 = load i1, ptr %l43, !tbaa !21
  br i1 %t83, label %bb31, label %bb32
bb31:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr { i64, [5 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = call i1 @compiler_2fcheck_2eclosedCall(ptr %v0, ptr %t90)
  store i1 %t92, ptr %l49
  br label %bb34
bb34:
  %t93 = load i1, ptr %l49, !tbaa !21
  store i1 %t93, ptr %l10, !tbaa !21
  br label %bb114
bb35:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t95 = load ptr, ptr %l50, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb36, label %bb37
bb36:
  %t98 = load ptr, ptr %l50, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 18}
  %t101 = icmp eq i64 %t99, 7
  store i1 %t101, ptr %l51, !tbaa !21
  br label %bb37
bb37:
  %t102 = load i1, ptr %l51, !tbaa !21
  br i1 %t102, label %bb38, label %bb39
bb38:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb52
bb40:
  %t109 = load ptr, ptr %l4, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Make", ptr %t109, i32 0, i32 2
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t114 = call i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %t112)
  store i1 %t114, ptr %l58
  br label %bb41
bb41:
  %t115 = load i1, ptr %l58, !tbaa !21
  br i1 %t115, label %bb42, label %bb43
bb42:
  %t116 = load ptr, ptr %l4, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Make", ptr %t116, i32 0, i32 3
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = icmp eq ptr %t119, null
  br i1 %t121, label %bb44, label %bb45
bb43:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb51
bb44:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb50
bb45:
  %t123 = load ptr, ptr %l4, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Make", ptr %t123, i32 0, i32 3
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = icmp eq ptr %t126, null
  br i1 %t128, label %bb46, label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_3c4137bcc23e7cab_322d476e7cbf1657)
  unreachable
bb47:
  br label %bb48
bb48:
  %t130 = load ptr, ptr %l4, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Make", ptr %t130, i32 0, i32 3
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t133)
  store i1 %t135, ptr %l69
  br label %bb49
bb49:
  %t136 = load i1, ptr %l69, !tbaa !21
  store i1 %t136, ptr %l63, !tbaa !21
  br label %bb50
bb50:
  %t137 = load i1, ptr %l63, !tbaa !21
  store i1 %t137, ptr %l59, !tbaa !21
  br label %bb51
bb51:
  %t138 = load i1, ptr %l59, !tbaa !21
  store i1 %t138, ptr %l10, !tbaa !21
  br label %bb114
bb52:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t140 = load ptr, ptr %l70, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb53, label %bb54
bb53:
  %t143 = load ptr, ptr %l70, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 18}
  %t146 = icmp eq i64 %t144, 9
  store i1 %t146, ptr %l71, !tbaa !21
  br label %bb54
bb54:
  %t147 = load i1, ptr %l71, !tbaa !21
  br i1 %t147, label %bb55, label %bb56
bb55:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr { i64, [5 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t150, i32 0, i32 4
  %t152 = load { i64, ptr }, ptr %t151
  store { i64, ptr } %t152, ptr %l5, !tbaa !27
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t154 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t156 = call i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %t154)
  store i1 %t156, ptr %l77
  br label %bb58
bb58:
  %t157 = load i1, ptr %l77, !tbaa !21
  store i1 %t157, ptr %l10, !tbaa !21
  br label %bb114
bb59:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t159 = load ptr, ptr %l78, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb60, label %bb61
bb60:
  %t162 = load ptr, ptr %l78, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 18}
  %t165 = icmp eq i64 %t163, 10
  store i1 %t165, ptr %l79, !tbaa !21
  br label %bb61
bb61:
  %t166 = load i1, ptr %l79, !tbaa !21
  br i1 %t166, label %bb62, label %bb63
bb62:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr { i64, [5 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t169, i32 0, i32 2
  %t171 = load ptr, ptr %t170
  store ptr %t171, ptr %l6, !tbaa !29
  br label %bb64
bb63:
  br label %bb74
bb64:
  %t173 = load ptr, ptr %l6, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Slice", ptr %t173, i32 0, i32 0
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = call i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %t176)
  store i1 %t178, ptr %l86
  br label %bb65
bb65:
  %t179 = load i1, ptr %l86, !tbaa !21
  br i1 %t179, label %bb66, label %bb67
bb66:
  %t180 = load ptr, ptr %l6, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Slice", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t183)
  store i1 %t185, ptr %l90
  br label %bb68
bb67:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb69
bb68:
  %t186 = load i1, ptr %l90, !tbaa !21
  store i1 %t186, ptr %l87, !tbaa !21
  br label %bb69
bb69:
  %t187 = load i1, ptr %l87, !tbaa !21
  br i1 %t187, label %bb70, label %bb71
bb70:
  %t188 = load ptr, ptr %l6, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Slice", ptr %t188, i32 0, i32 2
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t191)
  store i1 %t193, ptr %l94
  br label %bb72
bb71:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb73
bb72:
  %t194 = load i1, ptr %l94, !tbaa !21
  store i1 %t194, ptr %l91, !tbaa !21
  br label %bb73
bb73:
  %t195 = load i1, ptr %l91, !tbaa !21
  store i1 %t195, ptr %l10, !tbaa !21
  br label %bb114
bb74:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t197 = load ptr, ptr %l95, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb75, label %bb76
bb75:
  %t200 = load ptr, ptr %l95, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 18}
  %t203 = icmp eq i64 %t201, 11
  store i1 %t203, ptr %l96, !tbaa !21
  br label %bb76
bb76:
  %t204 = load i1, ptr %l96, !tbaa !21
  br i1 %t204, label %bb77, label %bb78
bb77:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr { i64, [5 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t207, i32 0, i32 2
  %t209 = load ptr, ptr %t208
  store ptr %t209, ptr %l7, !tbaa !29
  br label %bb79
bb78:
  br label %bb95
bb79:
  %t211 = load ptr, ptr %l7, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Cond", ptr %t211, i32 0, i32 0
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t214)
  store i1 %t216, ptr %l103
  br label %bb80
bb80:
  %t217 = load i1, ptr %l103, !tbaa !21
  br i1 %t217, label %bb81, label %bb82
bb81:
  %t218 = load ptr, ptr %l7, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Cond", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = icmp eq ptr %t221, null
  br i1 %t223, label %bb83, label %bb84
bb82:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb90
bb83:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb89
bb84:
  %t225 = load ptr, ptr %l7, !tbaa !29
  %t227 = getelementptr %"compiler/typed:Cond", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = icmp eq ptr %t228, null
  br i1 %t230, label %bb85, label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_64e99bada124913c_2f99d6e12db86a38)
  unreachable
bb86:
  br label %bb87
bb87:
  %t232 = load ptr, ptr %l7, !tbaa !29
  %t234 = getelementptr %"compiler/typed:Cond", ptr %t232, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !29
  %t237 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t235)
  store i1 %t237, ptr %l114
  br label %bb88
bb88:
  %t238 = load i1, ptr %l114, !tbaa !21
  store i1 %t238, ptr %l108, !tbaa !21
  br label %bb89
bb89:
  %t239 = load i1, ptr %l108, !tbaa !21
  store i1 %t239, ptr %l104, !tbaa !21
  br label %bb90
bb90:
  %t240 = load i1, ptr %l104, !tbaa !21
  br i1 %t240, label %bb91, label %bb92
bb91:
  %t241 = load ptr, ptr %l7, !tbaa !29
  %t243 = getelementptr %"compiler/typed:Cond", ptr %t241, i32 0, i32 2
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t244)
  store i1 %t246, ptr %l118
  br label %bb93
bb92:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb94
bb93:
  %t247 = load i1, ptr %l118, !tbaa !21
  store i1 %t247, ptr %l115, !tbaa !21
  br label %bb94
bb94:
  %t248 = load i1, ptr %l115, !tbaa !21
  store i1 %t248, ptr %l10, !tbaa !21
  br label %bb114
bb95:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t250 = load ptr, ptr %l119, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb96, label %bb97
bb96:
  %t253 = load ptr, ptr %l119, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 18}
  %t256 = icmp eq i64 %t254, 17
  store i1 %t256, ptr %l120, !tbaa !21
  br label %bb97
bb97:
  %t257 = load i1, ptr %l120, !tbaa !21
  br i1 %t257, label %bb98, label %bb99
bb98:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { i64, [5 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t260, i32 0, i32 2
  %t262 = load ptr, ptr %t261
  store ptr %t262, ptr %l8, !tbaa !29
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t264 = load ptr, ptr %l8, !tbaa !29
  %t266 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t264)
  store i1 %t266, ptr %l126
  br label %bb101
bb101:
  %t267 = load i1, ptr %l126, !tbaa !21
  store i1 %t267, ptr %l10, !tbaa !21
  br label %bb114
bb102:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t269 = load ptr, ptr %l127, !tbaa !29
  %t270 = icmp ne ptr %t269, null
  br i1 %t270, label %bb103, label %bb104
bb103:
  %t272 = load ptr, ptr %l127, !tbaa !29
  %t273 = load i64, ptr %t272, !range !{i64 0, i64 18}
  %t275 = icmp eq i64 %t273, 15
  store i1 %t275, ptr %l128, !tbaa !21
  br label %bb104
bb104:
  %t276 = load i1, ptr %l128, !tbaa !21
  br i1 %t276, label %bb105, label %bb106
bb105:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr { i64, [5 x i64] }, ptr %t277, i32 0, i32 1
  %t280 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t279, i32 0, i32 2
  %t281 = load ptr, ptr %t280
  store ptr %t281, ptr %l9, !tbaa !29
  br label %bb107
bb106:
  br label %bb109
bb107:
  %t283 = load ptr, ptr %l9, !tbaa !29
  %t285 = call i1 @compiler_2fcheck_2eclosedFn(ptr %v0, ptr %t283)
  store i1 %t285, ptr %l134
  br label %bb108
bb108:
  %t286 = load i1, ptr %l134, !tbaa !21
  store i1 %t286, ptr %l10, !tbaa !21
  br label %bb114
bb109:
  br i1 true, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb113
bb112:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_f407e4aa2d3806b8_dd2e5682c5fdf6f4)
  unreachable
bb114:
  %t287 = load i1, ptr %l10, !tbaa !21
  store i1 %t287, ptr %rv
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

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindCase(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l28 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 166
  store ptr %t5, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Heda0e3070e2f5ab051ad1f451edd65eb(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H62ca4e6c77402fbaa86eb0d94ae649ee(ptr %v0, ptr %t17, i64 %t18)
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t21, ptr %l15
  br label %bb7
bb7:
  %t22 = load %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l15
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t22, ptr %l4
  store ptr %l1, ptr %l16, !tbaa !29
  %t23 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  store i32 %t24, ptr %l17, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t25)
  store ptr %t27, ptr %l20
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l20, !tbaa !29
  %t30 = getelementptr %"compiler/check:frame", ptr %t28, i32 0, i32 4
  %t31 = getelementptr %"compiler/generic:Context", ptr %t30, i32 0, i32 2
  %t32 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  %t36 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t31, i32 %t33)
  %t37 = extractvalue { i32, i32 } %t36, 1
  %t38 = extractvalue { i32, i32 } %t36, 0
  store i32 %t38, ptr %l25
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb10, label %ok.40, !prof !99
ok.40:
  store i32 %t37, ptr %l24
  br label %bb9
bb9:
  %t41 = load i32, ptr %l24, !tbaa !23
  store i32 %t41, ptr %l18, !tbaa !23
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i32 -1, ptr %l18, !tbaa !23
  br label %bb12
bb12:
  %t42 = load i32, ptr %l17, !tbaa !23
  %t43 = load i32, ptr %l18, !tbaa !23
  %t44 = call %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %s2, i32 %t42, i32 %t43)
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t44, ptr %l26
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l16, !tbaa !29
  %t46 = load %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Habcf70cf374eb3bb03a96803ac10570d(ptr %v1, ptr %t45, %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t46)
  br label %bb14
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t47)
  store ptr %t49, ptr %l28
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l28, !tbaa !29
  %t52 = getelementptr %"compiler/check:frame", ptr %t50, i32 0, i32 4
  %t53 = getelementptr %"compiler/generic:Context", ptr %t52, i32 0, i32 2
  %t54 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t55 = load i32, ptr %t54, !tbaa !23
  %t56 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 1
  %t57 = load i32, ptr %t56, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t53, i32 %t55, i32 %t57)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l3, !tbaa !24
  br label %bb2
bb18:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l18 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Branch", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 4
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/ast:Branch", ptr %t18, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %t17, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Branch", ptr %t25, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Branch", ptr %t29, i32 0, i32 0
  %t32 = load %"compiler/source:Span", ptr %t31
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v2, ptr %t24, { i64, ptr } %t28, i32 1, %"compiler/source:Span" %t32)
  store ptr %t37, ptr %l18
  br label %bb5
bb5:
  %t38 = load ptr, ptr %l18, !tbaa !29
  store ptr %t38, ptr %l2, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Branch", ptr %t39, i32 0, i32 2
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = icmp sge i64 %t42, 0
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/load:Loader", ptr %t52, i32 0, i32 4
  %t55 = load ptr, ptr %t54, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t55)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t57 = load ptr, ptr %l2, !tbaa !29
  store ptr %t57, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca ptr
  %l35 = alloca i1
  %l39 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
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
  store ptr %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l8, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l12
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t18)
  store ptr %t20, ptr %l14
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  %t25 = load i64, ptr %l12, !tbaa !24
  %t27 = icmp eq i64 %t25, %t24
  br i1 %t27, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb8
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Func", ptr %t30, i32 0, i32 10
  %t33 = load i32, ptr %t32, !tbaa !23
  %t36 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t29, i32 %t33)
  store { i64, ptr } %t36, ptr %l22
  br label %bb6
bb6:
  %t37 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t38 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t37)
  store i1 %t38, ptr %l23
  br label %bb7
bb7:
  %t39 = load i1, ptr %l23, !tbaa !21
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t40 = load i1, ptr %l18, !tbaa !21
  br i1 %t40, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/load:Loader", ptr %t47, i32 0, i32 10
  store ptr %t49, ptr %l27, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = load i64, ptr %l1, !tbaa !24
  %t57 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t53, i64 %t54)
  store i64 %t57, ptr %l31
  br label %bb12
bb12:
  %t58 = load ptr, ptr %l27, !tbaa !29
  %t59 = load i64, ptr %l31, !tbaa !24
  %t60 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t58, i64 %t59)
  store ptr %t60, ptr %l32
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l32, !tbaa !29
  %t63 = getelementptr %"compiler/load:Module", ptr %t61, i32 0, i32 3
  %t64 = load i1, ptr %t63, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/load:Loader", ptr %t72, i32 0, i32 10
  store ptr %t74, ptr %l39, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t75)
  store ptr %t77, ptr %l41
  br label %bb16
bb15:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb18
bb16:
  %t78 = load ptr, ptr %l41, !tbaa !29
  %t80 = getelementptr %"compiler/check:frame", ptr %t78, i32 0, i32 1
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load ptr, ptr %l39, !tbaa !29
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t82, i64 %t81)
  store ptr %t84, ptr %l44
  br label %bb17
bb17:
  %t85 = load ptr, ptr %l44, !tbaa !29
  %t87 = getelementptr %"compiler/load:Module", ptr %t85, i32 0, i32 3
  %t88 = load i1, ptr %t87, !tbaa !21
  store i1 %t88, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t90 = load i1, ptr %l35, !tbaa !21
  br i1 %t90, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  br label %bb21
bb21:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l47, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l48
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t93, i32 %a3)
  store { i64, ptr } %t97, ptr %l51
  br label %bb22
bb22:
  %t98 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l52, !tbaa !27
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l4, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Func", ptr %t106, i32 0, i32 10
  %t109 = load i32, ptr %t108, !tbaa !23
  %t112 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t105, i32 %t109)
  store { i64, ptr } %t112, ptr %l56
  br label %bb23
bb23:
  %t113 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t120 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t122 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderPrivate(ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t120, { i64, ptr } %t119)
  store %"compiler/diagmsg:Msg" %t122, ptr %l58
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l47, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l48
  %t125 = load %"compiler/diagmsg:Msg", ptr %l58
  %t126 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t123, %"compiler/source:Span" %t124, %"compiler/diagmsg:Msg" %t125)
  store i64 %t126, ptr %l59
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallNamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, %"compiler/source:Span" %a3, i32 %a4, { i64, ptr } %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l7 = alloca %"compiler/names:Ref"
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l13 = alloca %"compiler/generic:Desc"
  %l14 = alloca i32
  %l15 = alloca i32
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l24 = alloca %"compiler/names:Ref"
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca %"compiler/source:Span"
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l49 = alloca i32
  %l51 = alloca ptr
  %l56 = alloca i32
  %l59 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/source:Span"
  %l69 = alloca i32
  %l72 = alloca ptr
  %l77 = alloca ptr
  %l83 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l91 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l97 = alloca { i64, ptr }
  %l100 = alloca %"compiler/diagmsg:Msg"
  %l101 = alloca i64
  %l104 = alloca ptr
  %l105 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca ptr
  %l122 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l127 = alloca ptr
  %l128 = alloca %"compiler/source:Span"
  %l131 = alloca { i64, ptr }
  %l133 = alloca %"compiler/diagmsg:Msg"
  %l134 = alloca i64
  %l139 = alloca i32
  %l142 = alloca ptr
  %l143 = alloca %"compiler/source:Span"
  %l146 = alloca { i64, ptr }
  %l149 = alloca %"compiler/diagmsg:Msg"
  %l150 = alloca i64
  %l151 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l155 = alloca { i64, ptr }
  %l158 = alloca %"compiler/diagmsg:Msg"
  %l159 = alloca i64
  %l162 = alloca ptr
  %l167 = alloca i32
  %l175 = alloca ptr
  %l178 = alloca i1
  %l182 = alloca %"compiler/generic:Desc"
  %l186 = alloca ptr
  %l187 = alloca %"compiler/source:Span"
  %l188 = alloca %"compiler/source:Span"
  %l192 = alloca %"compiler/generic:Desc"
  %l194 = alloca ptr
  %l197 = alloca i1
  %l201 = alloca %"compiler/generic:Desc"
  %l208 = alloca %"compiler/generic:Desc"
  %l212 = alloca i32
  %l215 = alloca i1
  %l221 = alloca ptr
  %l226 = alloca i32
  %l234 = alloca ptr
  %l235 = alloca ptr
  %l236 = alloca %"compiler/source:Span"
  %l237 = alloca %"compiler/source:Span"
  %l238 = alloca i32
  %l243 = alloca { i64, ptr }
  %l244 = alloca { i64, ptr }
  %l246 = alloca i32
  %l247 = alloca { i64, ptr }
  %l251 = alloca ptr
  %l254 = alloca i1
  %l257 = alloca ptr
  %l258 = alloca %"compiler/source:Span"
  %l259 = alloca %"compiler/source:Span"
  %l264 = alloca ptr
  %l266 = alloca ptr
  %l271 = alloca i32
  %l274 = alloca i1
  %l279 = alloca i1
  %l280 = alloca i1
  %l285 = alloca i1
  %l286 = alloca i1
  %l294 = alloca ptr
  %l297 = alloca i1
  %l300 = alloca i1
  %l306 = alloca ptr
  %l309 = alloca i1
  %l314 = alloca i32
  %l318 = alloca ptr
  %l319 = alloca %"compiler/source:Span"
  %l322 = alloca { i64, ptr }
  %l324 = alloca %"compiler/diagmsg:Msg"
  %l325 = alloca i64
  %l330 = alloca ptr
  %l335 = alloca ptr
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store i32 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l18, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t8)
  store ptr %t10, ptr %l20
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l20, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 2
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t17 = load ptr, ptr %l18, !tbaa !29
  %t20 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t17, i64 %t14, i32 %t16)
  store %"compiler/names:Ref" %t20, ptr %l24
  br label %bb2
bb2:
  %t21 = load %"compiler/names:Ref", ptr %l24
  store %"compiler/names:Ref" %t21, ptr %l7
  %t22 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 9}
  %t25 = trunc i64 3 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l27, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t29, ptr %l28
  %t30 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t30, ptr %l29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = load i32, ptr %l4, !tbaa !23
  %t41 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t34, i64 %t36, i32 %t37)
  store i64 %t41, ptr %l34
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t42, ptr %l35, !tbaa !27
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb6, label %bb7
bb6:
  %t45 = icmp sle i64 0, 1152921504606846975
  br i1 %t45, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_6af63211fe08a219_4bcf48e786826ca5)
  unreachable
bb8:
  %t47 = mul i64 0, 8
  %t48 = insertvalue { i64, ptr } undef, i64 0, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t49, ptr %l38, !tbaa !27
  %t50 = icmp sge i64 0, 0
  br i1 %t50, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_6af63211fe08a219_4bcf48e786826ca5)
  unreachable
bb10:
  %t52 = icmp sle i64 0, 2305843009213693951
  br i1 %t52, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_31ceea79ef23e30c_3748df63b5867238)
  unreachable
bb12:
  %t54 = mul i64 0, 4
  %t55 = insertvalue { i64, ptr } undef, i64 0, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t57 = load ptr, ptr %l27, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l28
  %t59 = load %"compiler/source:Span", ptr %l29
  %t60 = load i64, ptr %l34, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %v3, ptr %t57, %"compiler/source:Span" %t58, %"compiler/source:Span" %t59, i64 %t60, ptr null, { i64, ptr } %t61, { i64, ptr } %t62, { i64, ptr } %t56)
  store ptr %t64, ptr %l42
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_31ceea79ef23e30c_3748df63b5867238)
  unreachable
bb14:
  %t65 = load ptr, ptr %l42, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
bb15:
  %t66 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t67 = load i32, ptr %t66, !range !{i32 0, i32 9}
  %t69 = trunc i64 7 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb16, label %bb17
bb16:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l45, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t73, ptr %l46
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l4, !tbaa !23
  %t78 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinType(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l49
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t80 = load ptr, ptr %l45, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l46
  %t82 = load i32, ptr %l49, !tbaa !23
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v2, ptr %v3, ptr %t80, %"compiler/source:Span" %t81, i32 %t82, { i64, ptr } %t79)
  store ptr %t84, ptr %l51
  br label %bb19
bb19:
  %t85 = load ptr, ptr %l51, !tbaa !29
  store ptr %t85, ptr %rv
  br label %ret
bb20:
  %t86 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t87 = load i32, ptr %t86, !range !{i32 0, i32 9}
  %t89 = trunc i64 4 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb21, label %bb22
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t96 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  store i32 %t96, ptr %l56
  br label %bb23
bb22:
  br label %bb37
bb23:
  %t97 = load i32, ptr %l56, !tbaa !23
  store i32 %t97, ptr %l8, !tbaa !23
  %t98 = load i32, ptr %l8, !tbaa !23
  %t100 = icmp slt i32 %t98, 0
  br i1 %t100, label %bb24, label %bb25
bb24:
  %t102 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 2
  %t103 = load i64, ptr %t102, !tbaa !24
  %t105 = icmp sge i64 %t103, 0
  store i1 %t105, ptr %l59, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb26
bb26:
  %t107 = load i1, ptr %l59, !tbaa !21
  br i1 %t107, label %bb27, label %bb28
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l62, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t109, ptr %l63
  %t110 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t110, ptr %l64
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t115 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t116 = load i64, ptr %t115, !tbaa !24
  %t117 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 2
  %t118 = load i64, ptr %t117, !tbaa !24
  %t122 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t114, i64 %t116, i64 %t118)
  store i32 %t122, ptr %l69
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t123 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t125 = load ptr, ptr %l62, !tbaa !29
  %t126 = load %"compiler/source:Span", ptr %l63
  %t127 = load %"compiler/source:Span", ptr %l64
  %t128 = load i32, ptr %l69, !tbaa !23
  %t131 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferredCtor(ptr %v0, ptr %v2, ptr %v3, ptr %t125, %"compiler/source:Span" %t126, %"compiler/source:Span" %t127, i32 %t128, { i64, ptr } %t123, i32 %a6)
  store ptr %t131, ptr %l72
  br label %bb30
bb30:
  %t132 = load ptr, ptr %l72, !tbaa !29
  store ptr %t132, ptr %rv
  br label %ret
bb31:
  %t133 = load i32, ptr %l8, !tbaa !23
  %t135 = icmp slt i32 %t133, 0
  br i1 %t135, label %bb32, label %bb33
bb32:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l1
  %t141 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t137, %"compiler/source:Span" %t138)
  store ptr %t141, ptr %l77
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t142 = load ptr, ptr %l77, !tbaa !29
  store ptr %t142, ptr %rv
  br label %ret
bb35:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load %"compiler/source:Span", ptr %l1
  %t145 = load %"compiler/source:Span", ptr %l3
  %t146 = load i32, ptr %l8, !tbaa !23
  %t147 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t153 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v2, ptr %v3, ptr %t143, %"compiler/source:Span" %t144, %"compiler/source:Span" %t145, i32 %t146, { i64, ptr } %t147)
  store ptr %t153, ptr %l83
  br label %bb36
bb36:
  %t154 = load ptr, ptr %l83, !tbaa !29
  store ptr %t154, ptr %rv
  br label %ret
bb37:
  %t155 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t156 = load i32, ptr %t155, !range !{i32 0, i32 9}
  %t158 = trunc i64 0 to i32
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s6
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i32, ptr %l4, !tbaa !23
  %t163 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodMeant(ptr %v0, ptr %v2, ptr %s6, ptr %t161, i32 %t162, { i64, ptr } %t163)
  store { i64, ptr } %t167, ptr %l89
  br label %bb40
bb39:
  br label %bb76
bb40:
  %t168 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t168, ptr %l9, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t169, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t171, ptr %l91
  br label %bb41
bb41:
  %t172 = load i1, ptr %l91, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l93, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t176, ptr %l94
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l4, !tbaa !23
  %t181 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s7, ptr %t177, i32 %t178)
  store { i64, ptr } %t181, ptr %l97
  br label %bb44
bb43:
  br label %bb48
bb44:
  %t182 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t184 = extractvalue { i64, ptr } %t182, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t189 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t192 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunctionMethod(ptr %s7, ptr %s6, ptr %v0, { i64, ptr } %t188, { i64, ptr } %t189)
  store %"compiler/diagmsg:Msg" %t192, ptr %l100
  br label %bb45
bb45:
  %t193 = load ptr, ptr %l93, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l94
  %t195 = load %"compiler/diagmsg:Msg", ptr %l100
  %t196 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t193, %"compiler/source:Span" %t194, %"compiler/diagmsg:Msg" %t195)
  store i64 %t196, ptr %l101
  br label %bb46
bb46:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l1
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t197, %"compiler/source:Span" %t198)
  store ptr %t201, ptr %l104
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  %t202 = load ptr, ptr %l104, !tbaa !29
  store ptr %t202, ptr %rv
  br label %ret
bb48:
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l105, !tbaa !29
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i32, ptr %l4, !tbaa !23
  %t208 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t204, i32 %t205)
  store { i64, ptr } %t208, ptr %l108
  br label %bb49
bb49:
  %t209 = load ptr, ptr %l105, !tbaa !29
  %t210 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t211 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estdTypeModule(ptr %v0, ptr %v0, ptr %s6, ptr %t209, { i64, ptr } %t210)
  store { i64, ptr } %t211, ptr %l109
  br label %bb50
bb50:
  %t212 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t215 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t212, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t215, ptr %l111
  br label %bb51
bb51:
  %t216 = load i1, ptr %l111, !tbaa !21
  %t217 = xor i1 %t216, true
  br i1 %t217, label %bb52, label %bb53
bb52:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load %"compiler/source:Span", ptr %l3
  %t221 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %t219, %"compiler/source:Span" %t220, i32 %t221, i1 false)
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l1
  %t229 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t225, %"compiler/source:Span" %t226)
  store ptr %t229, ptr %l118
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s6)
  %t230 = load ptr, ptr %l118, !tbaa !29
  store ptr %t230, ptr %rv
  br label %ret
bb56:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l119, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l4, !tbaa !23
  %t236 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t232, i32 %t233)
  store { i64, ptr } %t236, ptr %l122
  br label %bb57
bb57:
  %t237 = load ptr, ptr %l119, !tbaa !29
  %t238 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t239 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v0, ptr %s6, ptr %t237, { i64, ptr } %t238, i1 true)
  store { i64, ptr } %t239, ptr %l123
  br label %bb58
bb58:
  %t240 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t240, ptr %l11, !tbaa !27
  %t241 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t245 = icmp eq i64 %t243, 0
  br i1 %t245, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s9
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l127, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t248, ptr %l128
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i32, ptr %l4, !tbaa !23
  %t253 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s9, ptr %t249, i32 %t250)
  store { i64, ptr } %t253, ptr %l131
  br label %bb61
bb60:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/check:Checker", ptr %t254, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 2
  %t260 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t263 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s6, ptr %t259, { i64, ptr } %t260)
  store i32 %t263, ptr %l139
  br label %bb64
bb61:
  %t264 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 0
  %t266 = extractvalue { i64, ptr } %t264, 1
  %t267 = mul i64 %t265, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t267)
  call void @llvm.memcpy.p0.p0.i64(ptr %t268, ptr %t266, i64 %t267, i1 false)
  %t269 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  %t272 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunction(ptr %s9, ptr %v0, { i64, ptr } %t270)
  store %"compiler/diagmsg:Msg" %t272, ptr %l133
  br label %bb62
bb62:
  %t273 = load ptr, ptr %l127, !tbaa !29
  %t274 = load %"compiler/source:Span", ptr %l128
  %t275 = load %"compiler/diagmsg:Msg", ptr %l133
  %t276 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t273, %"compiler/source:Span" %t274, %"compiler/diagmsg:Msg" %t275)
  store i64 %t276, ptr %l134
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s9)
  br label %bb74
bb64:
  %t277 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t278 = load i32, ptr %l139, !tbaa !23
  %t280 = icmp ne i32 %t278, %t277
  br i1 %t280, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s11
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l142, !tbaa !29
  %t283 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t283, ptr %l143
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i32, ptr %l4, !tbaa !23
  %t288 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s11, ptr %t284, i32 %t285)
  store { i64, ptr } %t288, ptr %l146
  br label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s12
  %t289 = load ptr, ptr %l0, !tbaa !29
  store ptr %t289, ptr %l151, !tbaa !29
  %t290 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t290, ptr %l152
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load i32, ptr %l4, !tbaa !23
  %t295 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s12, ptr %t291, i32 %t292)
  store { i64, ptr } %t295, ptr %l155
  br label %bb70
bb67:
  %t296 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t296, 0
  %t298 = extractvalue { i64, ptr } %t296, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t303 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t306 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %s11, ptr %s6, ptr %v0, { i64, ptr } %t302, { i64, ptr } %t303)
  store %"compiler/diagmsg:Msg" %t306, ptr %l149
  br label %bb68
bb68:
  %t307 = load ptr, ptr %l142, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l143
  %t309 = load %"compiler/diagmsg:Msg", ptr %l149
  %t310 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t307, %"compiler/source:Span" %t308, %"compiler/diagmsg:Msg" %t309)
  store i64 %t310, ptr %l150
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb70:
  %t311 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 0
  %t313 = extractvalue { i64, ptr } %t311, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  %t318 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t321 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunctionMeant(ptr %s12, ptr %s6, ptr %v0, { i64, ptr } %t317, { i64, ptr } %t318)
  store %"compiler/diagmsg:Msg" %t321, ptr %l158
  br label %bb71
bb71:
  %t322 = load ptr, ptr %l151, !tbaa !29
  %t323 = load %"compiler/source:Span", ptr %l152
  %t324 = load %"compiler/diagmsg:Msg", ptr %l158
  %t325 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t322, %"compiler/source:Span" %t323, %"compiler/diagmsg:Msg" %t324)
  store i64 %t325, ptr %l159
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s12)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l1
  %t330 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t326, %"compiler/source:Span" %t327)
  store ptr %t330, ptr %l162
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s6)
  %t331 = load ptr, ptr %l162, !tbaa !29
  store ptr %t331, ptr %rv
  br label %ret
bb76:
  %t332 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t333 = load i32, ptr %t332, !range !{i32 0, i32 9}
  %t335 = trunc i64 1 to i32
  %t336 = icmp eq i32 %t333, %t335
  br i1 %t336, label %bb77, label %bb78
bb77:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load ptr, ptr %l2, !tbaa !29
  %t342 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t338, ptr %t339)
  store i32 %t342, ptr %l167
  br label %bb79
bb78:
  br label %bb119
bb79:
  %t343 = load i32, ptr %l167, !tbaa !23
  store i32 %t343, ptr %l12, !tbaa !23
  %t344 = load i32, ptr %l12, !tbaa !23
  %t345 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t348 = icmp eq i32 %t344, %t345
  br i1 %t348, label %bb80, label %bb81
bb80:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t350, { i64, ptr } %t351)
  br label %bb82
bb81:
  br label %bb84
bb82:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load %"compiler/source:Span", ptr %l1
  %t358 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t354, %"compiler/source:Span" %t355)
  store ptr %t358, ptr %l175
  br label %bb83
bb83:
  %t359 = load ptr, ptr %l175, !tbaa !29
  store ptr %t359, ptr %rv
  br label %ret
bb84:
  %t360 = load i32, ptr %l12, !tbaa !23
  %t362 = icmp sge i32 %t360, 0
  br i1 %t362, label %bb85, label %bb86
bb85:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t368 = load i32, ptr %l12, !tbaa !23
  %t371 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t367, i32 %t368)
  store %"compiler/generic:Desc" %t371, ptr %l182
  br label %bb87
bb86:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb88
bb87:
  %t372 = getelementptr %"compiler/generic:Desc", ptr %l182, i32 0, i32 0
  %t373 = load i64, ptr %t372, !tbaa !24
  %t374 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t377 = icmp eq i64 %t373, %t374
  store i1 %t377, ptr %l178, !tbaa !21
  br label %bb88
bb88:
  %t379 = load i1, ptr %l178, !tbaa !21
  br i1 %t379, label %bb89, label %bb90
bb89:
  %t380 = load ptr, ptr %l0, !tbaa !29
  store ptr %t380, ptr %l186, !tbaa !29
  %t381 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t381, ptr %l187
  %t382 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t382, ptr %l188
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/check:Checker", ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t387 = load i32, ptr %l12, !tbaa !23
  %t390 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t386, i32 %t387)
  store %"compiler/generic:Desc" %t390, ptr %l192
  br label %bb91
bb90:
  br label %bb93
bb91:
  %t391 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t392 = load ptr, ptr %l186, !tbaa !29
  %t393 = load %"compiler/source:Span", ptr %l187
  %t394 = load %"compiler/source:Span", ptr %l188
  %t395 = load %"compiler/generic:Desc", ptr %l192
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFnCall(ptr %v0, ptr %v2, ptr %v3, ptr %t392, %"compiler/source:Span" %t393, %"compiler/source:Span" %t394, %"compiler/generic:Desc" %t395, { i64, ptr } %t391)
  store ptr %t397, ptr %l194
  br label %bb92
bb92:
  %t398 = load ptr, ptr %l194, !tbaa !29
  store ptr %t398, ptr %rv
  br label %ret
bb93:
  %t399 = load i32, ptr %l12, !tbaa !23
  %t401 = icmp sge i32 %t399, 0
  br i1 %t401, label %bb94, label %bb95
bb94:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/check:Checker", ptr %t403, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !29
  %t407 = load i32, ptr %l12, !tbaa !23
  %t410 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t406, i32 %t407)
  store %"compiler/generic:Desc" %t410, ptr %l201
  br label %bb96
bb95:
  store i1 false, ptr %l197, !tbaa !21
  br label %bb97
bb96:
  %t411 = getelementptr %"compiler/generic:Desc", ptr %l201, i32 0, i32 0
  %t412 = load i64, ptr %t411, !tbaa !24
  %t413 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t416 = icmp eq i64 %t412, %t413
  store i1 %t416, ptr %l197, !tbaa !21
  br label %bb97
bb97:
  %t418 = load i1, ptr %l197, !tbaa !21
  br i1 %t418, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s16
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr %"compiler/check:Checker", ptr %t419, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !29
  %t423 = load i32, ptr %l12, !tbaa !23
  %t426 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t422, i32 %t423)
  store %"compiler/generic:Desc" %t426, ptr %l208
  br label %bb100
bb99:
  br label %bb118
bb100:
  %t427 = load %"compiler/generic:Desc", ptr %l208
  store %"compiler/generic:Desc" %t427, ptr %l13
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/check:Checker", ptr %t428, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Desc", ptr %l13, i32 0, i32 1
  %t433 = load i32, ptr %t432, !tbaa !23
  %t436 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t431, i32 %t433)
  store i32 %t436, ptr %l212
  br label %bb101
bb101:
  %t437 = load i32, ptr %l212, !tbaa !23
  store i32 %t437, ptr %l14, !tbaa !23
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load i32, ptr %l14, !tbaa !23
  %t442 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t438, i32 %t439)
  store i1 %t442, ptr %l215
  br label %bb102
bb102:
  %t443 = load i1, ptr %l215, !tbaa !21
  br i1 %t443, label %bb103, label %bb104
bb103:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t445 = load %"compiler/source:Span", ptr %l1
  %t446 = load %"compiler/source:Span", ptr %l3
  %t447 = getelementptr %"compiler/generic:Desc", ptr %l13, i32 0, i32 1
  %t448 = load i32, ptr %t447, !tbaa !23
  %t449 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t455 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v2, ptr %v3, ptr %t444, %"compiler/source:Span" %t445, %"compiler/source:Span" %t446, i32 %t448, { i64, ptr } %t449)
  store ptr %t455, ptr %l221
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_scope_close(ptr %s16)
  %t456 = load ptr, ptr %l221, !tbaa !29
  store ptr %t456, ptr %rv
  br label %ret
bb106:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/check:Checker", ptr %t457, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !29
  %t462 = getelementptr %"compiler/generic:Program", ptr %t460, i32 0, i32 2
  %t463 = load i32, ptr %l14, !tbaa !23
  %t466 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t462, i32 %t463)
  store i32 %t466, ptr %l226
  br label %bb107
bb107:
  %t467 = load i32, ptr %l226, !range !{i32 0, i32 33}
  %t469 = trunc i64 32 to i32
  %t470 = icmp eq i32 %t467, %t469
  br i1 %t470, label %bb108, label %bb109
bb108:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load %"compiler/source:Span", ptr %l1
  %t474 = load i32, ptr %l14, !tbaa !23
  %t475 = getelementptr %"compiler/generic:Desc", ptr %l13, i32 0, i32 2
  %t476 = load i64, ptr %t475, !tbaa !24
  %t477 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t483 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordCalled(ptr %v0, ptr %v2, ptr %v3, ptr %t472, %"compiler/source:Span" %t473, i32 %t474, i64 %t476, { i64, ptr } %t477)
  store ptr %t483, ptr %l234
  br label %bb110
bb109:
  br label %bb111
bb110:
  call void @__olang_scope_close(ptr %s16)
  %t484 = load ptr, ptr %l234, !tbaa !29
  store ptr %t484, ptr %rv
  br label %ret
bb111:
  %t485 = load ptr, ptr %l0, !tbaa !29
  store ptr %t485, ptr %l235, !tbaa !29
  %t486 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t486, ptr %l236
  %t487 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t487, ptr %l237
  %t488 = getelementptr %"compiler/generic:Desc", ptr %l13, i32 0, i32 1
  %t489 = load i32, ptr %t488, !tbaa !23
  store i32 %t489, ptr %l238, !tbaa !23
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/check:Checker", ptr %t490, i32 0, i32 1
  %t493 = load ptr, ptr %t492, !tbaa !29
  %t495 = getelementptr %"compiler/generic:Program", ptr %t493, i32 0, i32 2
  %t496 = load i32, ptr %l14, !tbaa !23
  %t499 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s16, ptr %t495, i32 %t496)
  store { i64, ptr } %t499, ptr %l243
  br label %bb112
bb112:
  %t500 = load { i64, ptr }, ptr %l243, !tbaa !27
  store { i64, ptr } %t500, ptr %l244, !tbaa !27
  %t501 = getelementptr %"compiler/generic:Desc", ptr %l13, i32 0, i32 2
  %t502 = load i64, ptr %t501, !tbaa !24
  %t504 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t505 = load ptr, ptr %t504, !tbaa !27
  %t506 = getelementptr i32, ptr %t505, i64 %t502
  %t507 = load i32, ptr %t506, !tbaa !33
  store i32 %t507, ptr %l246, !tbaa !23
  %t508 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t508, ptr %l247, !tbaa !27
  %t509 = icmp sge i64 0, 0
  br i1 %t509, label %bb113, label %bb114
bb113:
  %t511 = icmp sle i64 0, 1152921504606846975
  br i1 %t511, label %bb115, label %bb116
bb114:
  call void @__olang_check_failed(ptr @olang_loc_b1d60606349c196f_148fe1dbe07e141b)
  unreachable
bb115:
  %t513 = mul i64 0, 8
  %t514 = insertvalue { i64, ptr } undef, i64 0, 0
  %t515 = insertvalue { i64, ptr } %t514, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t516 = load ptr, ptr %l235, !tbaa !29
  %t517 = load %"compiler/source:Span", ptr %l236
  %t518 = load %"compiler/source:Span", ptr %l237
  %t519 = load i32, ptr %l238, !tbaa !23
  %t520 = load i32, ptr %l246, !tbaa !23
  %t521 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t523 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %t516, %"compiler/source:Span" %t517, %"compiler/source:Span" %t518, i32 %t519, i32 %t520, { i64, ptr } %t521, { i64, ptr } %t515)
  store ptr %t523, ptr %l251
  br label %bb117
bb116:
  call void @__olang_check_failed(ptr @olang_loc_b1d60606349c196f_148fe1dbe07e141b)
  unreachable
bb117:
  call void @__olang_scope_close(ptr %s16)
  %t524 = load ptr, ptr %l251, !tbaa !29
  store ptr %t524, ptr %rv
  br label %ret
bb118:
  br label %bb119
bb119:
  %t525 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t526 = load i32, ptr %t525, !range !{i32 0, i32 9}
  %t528 = trunc i64 1 to i32
  %t529 = icmp eq i32 %t526, %t528
  br i1 %t529, label %bb120, label %bb121
bb120:
  store i1 true, ptr %l254, !tbaa !21
  br label %bb122
bb121:
  %t531 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t532 = load i32, ptr %t531, !range !{i32 0, i32 9}
  %t534 = trunc i64 2 to i32
  %t535 = icmp eq i32 %t532, %t534
  store i1 %t535, ptr %l254, !tbaa !21
  br label %bb122
bb122:
  %t537 = load i1, ptr %l254, !tbaa !21
  br i1 %t537, label %bb123, label %bb124
bb123:
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l257, !tbaa !29
  %t539 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t539, ptr %l258
  %t540 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t540, ptr %l259
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load ptr, ptr %l2, !tbaa !29
  %t544 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t548 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t541, ptr %t542, i32 %t544)
  store ptr %t548, ptr %l264
  br label %bb125
bb124:
  br label %bb127
bb125:
  %t549 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t550 = load ptr, ptr %l257, !tbaa !29
  %t551 = load %"compiler/source:Span", ptr %l258
  %t552 = load %"compiler/source:Span", ptr %l259
  %t553 = load ptr, ptr %l264, !tbaa !29
  %t555 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v0, ptr %v2, ptr %v3, ptr %t550, %"compiler/source:Span" %t551, %"compiler/source:Span" %t552, ptr %t553, { i64, ptr } %t549)
  store ptr %t555, ptr %l266
  br label %bb126
bb126:
  %t556 = load ptr, ptr %l266, !tbaa !29
  store ptr %t556, ptr %rv
  br label %ret
bb127:
  %t557 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t558 = load i32, ptr %t557, !range !{i32 0, i32 9}
  %t560 = trunc i64 8 to i32
  %t561 = icmp eq i32 %t558, %t560
  br i1 %t561, label %bb128, label %bb129
bb128:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load ptr, ptr %l2, !tbaa !29
  %t567 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t563, ptr %t564)
  store i32 %t567, ptr %l271
  br label %bb130
bb129:
  br label %bb166
bb130:
  %t568 = load i32, ptr %l271, !tbaa !23
  store i32 %t568, ptr %l15, !tbaa !23
  %t569 = load i32, ptr %l15, !tbaa !23
  %t571 = icmp sge i32 %t569, 0
  br i1 %t571, label %bb131, label %bb132
bb131:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/check:Checker", ptr %t573, i32 0, i32 1
  %t576 = load ptr, ptr %t575, !tbaa !29
  %t578 = getelementptr %"compiler/generic:Program", ptr %t576, i32 0, i32 2
  %t579 = load i32, ptr %l15, !tbaa !23
  %t582 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t578, i32 %t579)
  store i1 %t582, ptr %l279
  br label %bb133
bb132:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb141
bb133:
  %t583 = load i1, ptr %l279, !tbaa !21
  br i1 %t583, label %bb134, label %bb135
bb134:
  store i1 true, ptr %l280, !tbaa !21
  br label %bb137
bb135:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t586 = getelementptr %"compiler/check:Checker", ptr %t584, i32 0, i32 1
  %t587 = load ptr, ptr %t586, !tbaa !29
  %t589 = getelementptr %"compiler/generic:Program", ptr %t587, i32 0, i32 2
  %t590 = load i32, ptr %l15, !tbaa !23
  %t593 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t589, i32 %t590)
  store i1 %t593, ptr %l285
  br label %bb136
bb136:
  %t594 = load i1, ptr %l285, !tbaa !21
  store i1 %t594, ptr %l280, !tbaa !21
  br label %bb137
bb137:
  %t595 = load i1, ptr %l280, !tbaa !21
  br i1 %t595, label %bb138, label %bb139
bb138:
  store i1 true, ptr %l286, !tbaa !21
  br label %bb140
bb139:
  %t596 = load i32, ptr %l15, !tbaa !23
  %t597 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t600 = icmp eq i32 %t596, %t597
  store i1 %t600, ptr %l286, !tbaa !21
  br label %bb140
bb140:
  %t602 = load i1, ptr %l286, !tbaa !21
  store i1 %t602, ptr %l274, !tbaa !21
  br label %bb141
bb141:
  %t603 = load i1, ptr %l274, !tbaa !21
  br i1 %t603, label %bb142, label %bb143
bb142:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load %"compiler/source:Span", ptr %l1
  %t606 = load i32, ptr %l15, !tbaa !23
  %t607 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t612 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v2, ptr %v3, ptr %t604, %"compiler/source:Span" %t605, i32 %t606, { i64, ptr } %t607)
  store ptr %t612, ptr %l294
  br label %bb144
bb143:
  br label %bb145
bb144:
  %t613 = load ptr, ptr %l294, !tbaa !29
  store ptr %t613, ptr %rv
  br label %ret
bb145:
  %t614 = load i32, ptr %l15, !tbaa !23
  %t616 = icmp sge i32 %t614, 0
  br i1 %t616, label %bb146, label %bb147
bb146:
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t619 = load i32, ptr %l15, !tbaa !23
  %t622 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t618, i32 %t619)
  store i1 %t622, ptr %l300
  br label %bb148
bb147:
  store i1 false, ptr %l297, !tbaa !21
  br label %bb149
bb148:
  %t623 = load i1, ptr %l300, !tbaa !21
  store i1 %t623, ptr %l297, !tbaa !21
  br label %bb149
bb149:
  %t624 = load i1, ptr %l297, !tbaa !21
  br i1 %t624, label %bb150, label %bb151
bb150:
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t626 = load %"compiler/source:Span", ptr %l1
  %t627 = load %"compiler/source:Span", ptr %l3
  %t628 = load i32, ptr %l15, !tbaa !23
  %t629 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t635 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v2, ptr %v3, ptr %t625, %"compiler/source:Span" %t626, %"compiler/source:Span" %t627, i32 %t628, { i64, ptr } %t629)
  store ptr %t635, ptr %l306
  br label %bb152
bb151:
  br label %bb153
bb152:
  %t636 = load ptr, ptr %l306, !tbaa !29
  store ptr %t636, ptr %rv
  br label %ret
bb153:
  %t637 = load i32, ptr %l15, !tbaa !23
  %t639 = icmp sge i32 %t637, 0
  br i1 %t639, label %bb154, label %bb155
bb154:
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t643 = getelementptr %"compiler/check:Checker", ptr %t641, i32 0, i32 1
  %t644 = load ptr, ptr %t643, !tbaa !29
  %t646 = getelementptr %"compiler/generic:Program", ptr %t644, i32 0, i32 2
  %t647 = load i32, ptr %l15, !tbaa !23
  %t650 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t646, i32 %t647)
  store i32 %t650, ptr %l314
  br label %bb156
bb155:
  store i1 false, ptr %l309, !tbaa !21
  br label %bb157
bb156:
  %t651 = load i32, ptr %l314, !range !{i32 0, i32 33}
  %t653 = trunc i64 25 to i32
  %t654 = icmp eq i32 %t651, %t653
  %t656 = xor i1 %t654, true
  store i1 %t656, ptr %l309, !tbaa !21
  br label %bb157
bb157:
  %t658 = load i1, ptr %l309, !tbaa !21
  br i1 %t658, label %bb158, label %bb159
bb158:
  store %olang.scope zeroinitializer, ptr %s23
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l318, !tbaa !29
  %t660 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t660, ptr %l319
  %t661 = load ptr, ptr %l0, !tbaa !29
  %t662 = load i32, ptr %l15, !tbaa !23
  %t665 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s23, ptr %t661, i32 %t662)
  store { i64, ptr } %t665, ptr %l322
  br label %bb160
bb159:
  br label %bb165
bb160:
  %t666 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t667 = extractvalue { i64, ptr } %t666, 0
  %t668 = extractvalue { i64, ptr } %t666, 1
  %t669 = mul i64 %t667, 1
  %t670 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t669)
  call void @llvm.memcpy.p0.p0.i64(ptr %t670, ptr %t668, i64 %t669, i1 false)
  %t671 = insertvalue { i64, ptr } undef, i64 %t667, 0
  %t672 = insertvalue { i64, ptr } %t671, ptr %t670, 1
  %t674 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %s23, ptr %v0, { i64, ptr } %t672)
  store %"compiler/diagmsg:Msg" %t674, ptr %l324
  br label %bb161
bb161:
  %t675 = load ptr, ptr %l318, !tbaa !29
  %t676 = load %"compiler/source:Span", ptr %l319
  %t677 = load %"compiler/diagmsg:Msg", ptr %l324
  %t678 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t675, %"compiler/source:Span" %t676, %"compiler/diagmsg:Msg" %t677)
  store i64 %t678, ptr %l325
  br label %bb162
bb162:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t680 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t679, { i64, ptr } %t680)
  br label %bb163
bb163:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t684 = load %"compiler/source:Span", ptr %l1
  %t687 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t683, %"compiler/source:Span" %t684)
  store ptr %t687, ptr %l330
  br label %bb164
bb164:
  call void @__olang_scope_close(ptr %s23)
  %t688 = load ptr, ptr %l330, !tbaa !29
  store ptr %t688, ptr %rv
  br label %ret
bb165:
  br label %bb166
bb166:
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t690 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t689, %"compiler/source:Span" %t690, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb167
bb167:
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t694 = load %"compiler/source:Span", ptr %l1
  %t697 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t693, %"compiler/source:Span" %t694)
  store ptr %t697, ptr %l335
  br label %bb168
bb168:
  %t698 = load ptr, ptr %l335, !tbaa !29
  store ptr %t698, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l25 = alloca i1
  %l35 = alloca i64
  %l44 = alloca i1
  %l51 = alloca ptr
  %l56 = alloca ptr
  %l59 = alloca ptr
  %l63 = alloca %"compiler/typed:Local"
  %l75 = alloca i1
  %l77 = alloca i1
  %l80 = alloca i32
  %l83 = alloca i1
  %l87 = alloca i1
  %l88 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i1
  %l103 = alloca i32
  %l116 = alloca i1
  %l118 = alloca i1
  %l123 = alloca i1
  %l130 = alloca ptr
  %l131 = alloca ptr
  %l137 = alloca %"compiler/typed:Local"
  %l138 = alloca i32
  %l145 = alloca ptr
  %l148 = alloca i32
  %l152 = alloca %"compiler/typed:Capture"
  %l156 = alloca i1
  %l157 = alloca i1
  %l162 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t115 = alloca { i64, [4 x i64] }, align 8
  %t194 = alloca { i64, [5 x i64] }, align 8
  %t217 = alloca { i64, [5 x i64] }, align 8
  %t264 = alloca { i64, [1 x i64] }, align 8
  %t331 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 20
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l16, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 8
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t11, i32 %t12)
  %t16 = extractvalue { i32, i64 } %t15, 1
  %t17 = extractvalue { i32, i64 } %t15, 0
  store i32 %t17, ptr %l22
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store i64 %t16, ptr %l21
  br label %bb2
bb2:
  %t20 = load i64, ptr %l21, !tbaa !24
  store i64 %t20, ptr %l17, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l17, !tbaa !24
  store i64 %t21, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb8
bb7:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 19
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  store i1 %t31, ptr %l25, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l25, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t34, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = getelementptr %"compiler/check:frame", ptr %t37, i32 0, i32 19
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load i32, ptr %l2, !tbaa !23
  %t42 = load %"compiler/source:Span", ptr %l3
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %t36, i64 %t40, i32 %t41, %"compiler/source:Span" %t42)
  store i64 %t47, ptr %l35
  br label %bb12
bb12:
  %t48 = load i64, ptr %l35, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t56 = getelementptr %"compiler/check:frame", ptr %t54, i32 0, i32 19
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 14
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = icmp eq i64 %t57, %t61
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load i32, ptr %l2, !tbaa !23
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 15
  %t70 = load i32, ptr %t69, !tbaa !23
  %t73 = icmp eq i32 %t66, %t70
  store i1 %t73, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t75 = load i1, ptr %l44, !tbaa !21
  br i1 %t75, label %bb19, label %bb20
bb19:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 16
  store i1 true, ptr %t78, !tbaa !21
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 18
  store ptr %t81, ptr %l51, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 20
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = getelementptr %"compiler/check:frame", ptr %t85, i32 0, i32 19
  %t88 = load i64, ptr %t87, !tbaa !24
  %t91 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t84, i64 %t88)
  store ptr %t91, ptr %l56
  br label %bb22
bb22:
  %t92 = load ptr, ptr %l56, !tbaa !29
  %t94 = getelementptr %"compiler/check:frame", ptr %t92, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t96 = load ptr, ptr %l51, !tbaa !29
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t96, i64 %t95)
  store ptr %t98, ptr %l59
  br label %bb23
bb23:
  %t99 = load ptr, ptr %l59, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 7
  %t102 = load i64, ptr %l6, !tbaa !24
  %t105 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t101, i64 %t102)
  store %"compiler/typed:Local" %t105, ptr %l63
  br label %bb24
bb24:
  %t106 = getelementptr %"compiler/typed:Local", ptr %l63, i32 0, i32 2
  %t107 = load i32, ptr %t106, !tbaa !23
  store i32 %t107, ptr %l7, !tbaa !23
  %t109 = load %"compiler/source:Span", ptr %l3
  %t110 = load i32, ptr %l7, !tbaa !23
  %t111 = load i64, ptr %l6, !tbaa !24
  %t113 = trunc i64 %t111 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t118 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t109, 0
  %t120 = insertvalue { %"compiler/source:Span", i32, i32 } %t118, i32 %t110, 1
  %t122 = insertvalue { %"compiler/source:Span", i32, i32 } %t120, i32 %t113, 2
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t122, ptr %t123
  %t124 = load { i64, [4 x i64] }, ptr %t115
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t124, ptr %t126
  store ptr %t126, ptr %l8, !tbaa !29
  %t128 = load i32, ptr %l7, !tbaa !23
  store i32 %t128, ptr %l9, !tbaa !23
  store ptr null, ptr %l10, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l7, !tbaa !23
  %t134 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t130, i32 %t131)
  store i1 %t134, ptr %l75
  br label %bb25
bb25:
  %t135 = load i1, ptr %l75, !tbaa !21
  %t136 = xor i1 %t135, true
  br i1 %t136, label %bb26, label %bb27
bb26:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i32, ptr %l7, !tbaa !23
  %t142 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l80
  br label %bb28
bb27:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb37
bb28:
  %t143 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t144 = load i32, ptr %l80, !tbaa !23
  %t146 = icmp ne i32 %t144, %t143
  br i1 %t146, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb32
bb30:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t152 = load i32, ptr %l7, !tbaa !23
  %t155 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t151, i32 %t152)
  store i1 %t155, ptr %l87
  br label %bb31
bb31:
  %t156 = load i1, ptr %l87, !tbaa !21
  store i1 %t156, ptr %l83, !tbaa !21
  br label %bb32
bb32:
  %t157 = load i1, ptr %l83, !tbaa !21
  br i1 %t157, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb36
bb34:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l7, !tbaa !23
  %t167 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t167, ptr %l93
  br label %bb35
bb35:
  %t168 = load i1, ptr %l93, !tbaa !21
  store i1 %t168, ptr %l88, !tbaa !21
  br label %bb36
bb36:
  %t169 = load i1, ptr %l88, !tbaa !21
  store i1 %t169, ptr %l77, !tbaa !21
  br label %bb37
bb37:
  %t170 = load i1, ptr %l77, !tbaa !21
  br i1 %t170, label %bb38, label %bb39
bb38:
  %t171 = load ptr, ptr %l4, !tbaa !29
  %t173 = getelementptr %"compiler/check:frame", ptr %t171, i32 0, i32 20
  %t174 = load i1, ptr %t173, !tbaa !21
  %t176 = xor i1 %t174, true
  store i1 %t176, ptr %l94, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb40
bb40:
  %t178 = load i1, ptr %l94, !tbaa !21
  br i1 %t178, label %bb41, label %bb42
bb41:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  %t185 = load i32, ptr %l7, !tbaa !23
  %t186 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t190 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t184, i32 %t185, i64 %t186)
  store i32 %t190, ptr %l103
  br label %bb43
bb42:
  %t191 = load %"compiler/source:Span", ptr %l3
  %t192 = load i32, ptr %l7, !tbaa !23
  %t193 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t194
  %t195 = getelementptr { i64, [5 x i64] }, ptr %t194, i32 0, i32 0
  store i64 2, ptr %t195
  %t197 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t191, 0
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t197, i32 %t192, 1
  %t201 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t199, ptr %t193, 2
  %t202 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t201, i32 -1, 3
  %t203 = getelementptr { i64, [5 x i64] }, ptr %t194, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t202, ptr %t203
  %t204 = load { i64, [5 x i64] }, ptr %t194
  %t206 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t204, ptr %t206
  store ptr %t206, ptr %l10, !tbaa !29
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i32, ptr %l7, !tbaa !23
  %t212 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t208, i32 %t209)
  store i1 %t212, ptr %l116
  br label %bb44
bb43:
  %t213 = load i32, ptr %l103, !tbaa !23
  store i32 %t213, ptr %l9, !tbaa !23
  %t214 = load %"compiler/source:Span", ptr %l3
  %t215 = load i32, ptr %l9, !tbaa !23
  %t216 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [5 x i64] }, ptr %t217, i32 0, i32 0
  store i64 3, ptr %t218
  %t220 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t214, 0
  %t222 = insertvalue { %"compiler/source:Span", i32, ptr } %t220, i32 %t215, 1
  %t224 = insertvalue { %"compiler/source:Span", i32, ptr } %t222, ptr %t216, 2
  %t225 = getelementptr { i64, [5 x i64] }, ptr %t217, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t224, ptr %t225
  %t226 = load { i64, [5 x i64] }, ptr %t217
  %t228 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t226, ptr %t228
  store ptr %t228, ptr %l10, !tbaa !29
  br label %bb53
bb44:
  %t230 = load i1, ptr %l116, !tbaa !21
  %t231 = xor i1 %t230, true
  br i1 %t231, label %bb45, label %bb46
bb45:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 2
  %t239 = load i32, ptr %l7, !tbaa !23
  %t242 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t238, i32 %t239)
  store i1 %t242, ptr %l123
  br label %bb47
bb46:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb48
bb47:
  %t243 = load i1, ptr %l123, !tbaa !21
  store i1 %t243, ptr %l118, !tbaa !21
  br label %bb48
bb48:
  %t244 = load i1, ptr %l118, !tbaa !21
  br i1 %t244, label %bb49, label %bb50
bb49:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t245, i32 %t246, i64 0)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/check:Checker", ptr %t249, i32 0, i32 18
  %t252 = load ptr, ptr %l4, !tbaa !29
  %t254 = getelementptr %"compiler/check:frame", ptr %t252, i32 0, i32 0
  %t255 = load i64, ptr %t254, !tbaa !24
  %t258 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t251, i64 %t255)
  store ptr %t258, ptr %l130
  br label %bb54
bb54:
  %t259 = load ptr, ptr %l130, !tbaa !29
  store ptr %t259, ptr %l11, !tbaa !29
  %t260 = load ptr, ptr %l11, !tbaa !29
  store ptr %t260, ptr %l131, !tbaa !29
  %t261 = load i32, ptr %l2, !tbaa !23
  %t262 = load %"compiler/source:Span", ptr %l3
  %t263 = load i32, ptr %l9, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t264
  %t265 = getelementptr { i64, [1 x i64] }, ptr %t264, i32 0, i32 0
  store i64 4, ptr %t265
  %t266 = load { i64, [1 x i64] }, ptr %t264
  %t272 = call %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %s0, i32 %t261, %"compiler/source:Span" %t262, i32 %t263, i32 0, i32 5, { i64, [1 x i64] } %t266)
  store %"compiler/typed:Local" %t272, ptr %l137
  br label %bb55
bb55:
  %t273 = load ptr, ptr %l131, !tbaa !29
  %t274 = load %"compiler/typed:Local", ptr %l137
  %t275 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %t273, %"compiler/typed:Local" %t274)
  store i32 %t275, ptr %l138
  br label %bb56
bb56:
  %t276 = load i32, ptr %l138, !tbaa !23
  %t277 = sext i32 %t276 to i64
  store i64 %t277, ptr %l12, !tbaa !24
  %t279 = load ptr, ptr %l4, !tbaa !29
  %t281 = getelementptr %"compiler/check:frame", ptr %t279, i32 0, i32 8
  %t282 = load i32, ptr %l2, !tbaa !23
  %t283 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t281, i32 %t282, i64 %t283)
  br label %bb57
bb57:
  %t287 = load ptr, ptr %l4, !tbaa !29
  %t289 = getelementptr %"compiler/check:frame", ptr %t287, i32 0, i32 30
  store ptr %t289, ptr %l145, !tbaa !29
  %t290 = load i64, ptr %l12, !tbaa !24
  %t292 = trunc i64 %t290 to i32
  store i32 %t292, ptr %l148, !tbaa !23
  %t294 = load ptr, ptr %l10, !tbaa !29
  %t296 = icmp eq ptr %t294, null
  br i1 %t296, label %bb58, label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_486b3db7a819736b_b4c2afa2fe5bd5af)
  unreachable
bb59:
  br label %bb60
bb60:
  %t298 = load ptr, ptr %l10, !tbaa !29
  %t299 = load i32, ptr %l148, !tbaa !23
  %t301 = call %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v0, i32 %t299, ptr %t298)
  store %"compiler/typed:Capture" %t301, ptr %l152
  br label %bb61
bb61:
  %t302 = load %"compiler/typed:Capture", ptr %l152
  %t303 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store %"compiler/typed:Capture" %t302, ptr %t303
  %t304 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v0, ptr %t304, ptr %t303)
  br label %bb62
bb62:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load i32, ptr %l9, !tbaa !23
  %t310 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t306, i32 %t307)
  store i1 %t310, ptr %l156
  br label %bb63
bb63:
  %t311 = load i1, ptr %l156, !tbaa !21
  br i1 %t311, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb67
bb65:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/check:Checker", ptr %t312, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l9, !tbaa !23
  %t321 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t317, i32 %t318)
  store i1 %t321, ptr %l162
  br label %bb66
bb66:
  %t322 = load i1, ptr %l162, !tbaa !21
  store i1 %t322, ptr %l157, !tbaa !21
  br label %bb67
bb67:
  %t323 = load i1, ptr %l157, !tbaa !21
  br i1 %t323, label %bb68, label %bb69
bb68:
  %t324 = load ptr, ptr %l11, !tbaa !29
  %t326 = getelementptr %"compiler/typed:Body", ptr %t324, i32 0, i32 6
  %t327 = load i64, ptr %l12, !tbaa !24
  %t329 = trunc i64 %t327 to i32
  store { i64, [1 x i64] } zeroinitializer, ptr %t331
  %t332 = getelementptr { i64, [1 x i64] }, ptr %t331, i32 0, i32 0
  store i64 4, ptr %t332
  %t334 = insertvalue { i32 } undef, i32 %t329, 0
  %t335 = getelementptr { i64, [1 x i64] }, ptr %t331, i32 0, i32 1
  store { i32 } %t334, ptr %t335
  %t336 = load { i64, [1 x i64] }, ptr %t331
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t326, { i64, [1 x i64] } %t336)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  %t339 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t339, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseNarrowing(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/check:narrowed"
  %l13 = alloca ptr
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca i64
  %l50 = alloca %"compiler/check:narrowed"
  %l54 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l64 = alloca i1
  %l67 = alloca i1
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l13, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 46
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i64, ptr %l16, !tbaa !24
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
  store i64 0, ptr %l20, !tbaa !24
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
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l23, !tbaa !24
  store i64 %t37, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l20, !tbaa !24
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
  br label %bb35
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
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l43
  br label %bb13
bb13:
  %t62 = load i64, ptr %l43, !tbaa !24
  %t63 = sub i64 %t62, 1
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = sub i64 %t63, %t64
  store i64 %t67, ptr %l10, !tbaa !24
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr %"compiler/check:frame", ptr %t69, i32 0, i32 46
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store %"compiler/check:narrowed" %t75, ptr %l50
  br label %bb14
bb14:
  %t76 = load %"compiler/check:narrowed", ptr %l50
  store %"compiler/check:narrowed" %t76, ptr %l11
  %t77 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 7
  %t78 = load i1, ptr %t77, !tbaa !21
  br i1 %t78, label %bb15, label %bb16
bb15:
  br label %bb34
bb16:
  br label %bb17
bb17:
  %t80 = load i64, ptr %l1, !tbaa !24
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb18, label %bb19
bb18:
  %t84 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 0
  %t85 = load i64, ptr %t84, !tbaa !24
  %t86 = load i64, ptr %l1, !tbaa !24
  %t89 = icmp eq i64 %t85, %t86
  store i1 %t89, ptr %l54, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb20
bb20:
  %t91 = load i1, ptr %l54, !tbaa !21
  br i1 %t91, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb30
bb22:
  %t92 = load i64, ptr %l1, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 0
  %t97 = load i64, ptr %t96, !tbaa !24
  %t99 = icmp slt i64 %t97, 0
  store i1 %t99, ptr %l61, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb25
bb25:
  %t101 = load i1, ptr %l61, !tbaa !21
  br i1 %t101, label %bb26, label %bb27
bb26:
  %t102 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 5
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t107 = call i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %t103, { i64, ptr } %a2)
  store i1 %t107, ptr %l67
  br label %bb28
bb27:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb29
bb28:
  %t108 = load i1, ptr %l67, !tbaa !21
  store i1 %t108, ptr %l64, !tbaa !21
  br label %bb29
bb29:
  %t109 = load i1, ptr %l64, !tbaa !21
  store i1 %t109, ptr %l58, !tbaa !21
  br label %bb30
bb30:
  %t110 = load i1, ptr %l58, !tbaa !21
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t111 = load i64, ptr %l10, !tbaa !24
  store i64 %t111, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t113 = load i64, ptr %l8, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l8, !tbaa !24
  br label %bb9
bb35:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 113}
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
  %t47 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t66 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t94 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t117 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t133 = load i32, ptr %l68, !range !{i32 0, i32 113}
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
  %t153 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t176 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t188 = load i32, ptr %l98, !range !{i32 0, i32 113}
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
  %t198 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t210 = load i32, ptr %l109, !range !{i32 0, i32 113}
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %lp12 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca i32
  %l51 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca %"compiler/typed:Cond"
  %l75 = alloca ptr
  %l77 = alloca i32
  %l81 = alloca i64
  %l84 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l90 = alloca i32
  %l97 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca %"compiler/source:Span"
  %l102 = alloca ptr
  %l103 = alloca i64
  %l104 = alloca ptr
  %l108 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca %"compiler/source:Span"
  %l112 = alloca i32
  %l116 = alloca { i64, ptr }
  %l119 = alloca %"compiler/typed:Seq"
  %l122 = alloca ptr
  %l123 = alloca %"compiler/source:Span"
  %l124 = alloca ptr
  %l125 = alloca i64
  %l126 = alloca { i64, ptr }
  %l128 = alloca i64
  %l132 = alloca ptr
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l136 = alloca i32
  %l137 = alloca ptr
  %l139 = alloca ptr
  %l143 = alloca ptr
  %l144 = alloca %"compiler/typed:Cond"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t106 = alloca { i64, [5 x i64] }, align 8
  %t171 = alloca { i64, [3 x i64] }, align 8
  %t222 = alloca { i64, [5 x i64] }, align 8
  %t278 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i64 %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Chain", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = load i64, ptr %l5, !tbaa !24
  %t10 = add i64 %t8, 2
  %t14 = icmp sge i64 %t10, %t6
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l21, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t17, ptr %l22
  %t18 = load ptr, ptr %l2, !tbaa !29
  store ptr %t18, ptr %l23, !tbaa !29
  %t19 = load i64, ptr %l5, !tbaa !24
  store i64 %t19, ptr %l24, !tbaa !24
  %t20 = load ptr, ptr %l6, !tbaa !29
  store ptr %t20, ptr %l25, !tbaa !29
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %l26, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i1, ptr %t27, i64 %t24
  %t29 = load i1, ptr %t28, !tbaa !31
  br i1 %t29, label %bb3, label %bb4
bb2:
  br label %bb8
bb3:
  store ptr null, ptr %l30, !tbaa !29
  br label %bb6
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 43
  %t34 = load i64, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = add i64 %t38, 1
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t33, i64 %t40)
  store ptr %t43, ptr %l37
  br label %bb5
bb5:
  %t44 = load ptr, ptr %l37, !tbaa !29
  store ptr %t44, ptr %l30, !tbaa !29
  br label %bb6
bb6:
  %t46 = load ptr, ptr %l21, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l22
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = load i64, ptr %l24, !tbaa !24
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %v4, ptr %t46, %"compiler/source:Span" %t47, ptr %t48, i64 %t49, ptr %t50, ptr %t51)
  store ptr %t52, ptr %l39
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load ptr, ptr %l39, !tbaa !29
  store ptr %t53, ptr %rv
  br label %ret
bb8:
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t54, ptr %l40, !tbaa !27
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  %t59 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i1, ptr %t60, i64 %t57
  %t62 = load i1, ptr %t61, !tbaa !31
  br i1 %t62, label %bb9, label %bb10
bb9:
  %t64 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t64, ptr %l44
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t65, ptr %l45, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l1
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load ptr, ptr %l6, !tbaa !29
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %v0, ptr %t66, %"compiler/source:Span" %t67, ptr %t68, i64 %t69, ptr %t70, ptr null)
  store ptr %t76, ptr %l51
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l1
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = add i64 %t82, 1
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %v4, ptr %t77, %"compiler/source:Span" %t78, ptr %t79, i64 %t80, { i64, ptr } %t81, i64 %t84, ptr null)
  store ptr %t91, ptr %l59
  br label %bb12
bb12:
  %t92 = load ptr, ptr %l59, !tbaa !29
  store ptr %t92, ptr %l60, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l1
  %t95 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t99 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t93, %"compiler/source:Span" %t94, i32 %t95, i64 0)
  store ptr %t99, ptr %l64
  br label %bb13
bb13:
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = load ptr, ptr %l60, !tbaa !29
  %t102 = load ptr, ptr %l64, !tbaa !29
  %t103 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v4, ptr %v4, ptr %v4, ptr %t100, ptr %t101, ptr %t102)
  store %"compiler/typed:Cond" %t103, ptr %l65
  br label %bb14
bb14:
  %t104 = load %"compiler/typed:Cond", ptr %l65
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 24, i64 8)
  store %"compiler/typed:Cond" %t104, ptr %t105
  store { i64, [5 x i64] } zeroinitializer, ptr %t106
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 0
  store i64 11, ptr %t107
  %t108 = load %"compiler/source:Span", ptr %l44
  %t109 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t108, 0
  %t110 = load i32, ptr %l45, !tbaa !23
  %t111 = insertvalue { %"compiler/source:Span", i32, ptr } %t109, i32 %t110, 1
  %t113 = insertvalue { %"compiler/source:Span", i32, ptr } %t111, ptr %t105, 2
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t113, ptr %t114
  %t115 = load { i64, [5 x i64] }, ptr %t106
  %t117 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t115, ptr %t117
  call void @__olang_scope_close(ptr %s0)
  store ptr %t117, ptr %rv
  br label %ret
bb15:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 43
  %t122 = load i64, ptr %l3, !tbaa !24
  %t123 = load i64, ptr %l5, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = add i64 %t126, 1
  %t131 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s0, ptr %t121, i64 %t128)
  store ptr %t131, ptr %l75
  br label %bb16
bb16:
  %t132 = load ptr, ptr %l75, !tbaa !29
  %t134 = call i32 @compiler_2fcheck_2etypeOf(ptr %s0, ptr %t132)
  store i32 %t134, ptr %l77
  br label %bb17
bb17:
  %t135 = load i32, ptr %l77, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l1
  %t142 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t136, %"compiler/source:Span" %t137, i32 %t135)
  store i64 %t142, ptr %l81
  br label %bb18
bb18:
  %t143 = load i64, ptr %l81, !tbaa !24
  store i64 %t143, ptr %l9, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 44
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t146)
  store i64 %t148, ptr %l84
  br label %bb19
bb19:
  %t149 = load i64, ptr %l84, !tbaa !24
  store i64 %t149, ptr %l10, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 44
  store ptr %t152, ptr %l86, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t153, ptr %l87
  %t154 = load i64, ptr %l9, !tbaa !24
  %t156 = trunc i64 %t154 to i32
  store i32 %t156, ptr %l90, !tbaa !23
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 43
  %t161 = load i64, ptr %l3, !tbaa !24
  %t162 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t161, %t162
  %t167 = add i64 %t165, 1
  %t170 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t160, i64 %t167)
  store ptr %t170, ptr %l97
  br label %bb20
bb20:
  store { i64, [3 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [3 x i64] }, ptr %t171, i32 0, i32 0
  store i64 0, ptr %t172
  %t173 = load %"compiler/source:Span", ptr %l87
  %t174 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t173, 0
  %t175 = load i32, ptr %l90, !tbaa !23
  %t176 = insertvalue { %"compiler/source:Span", i32, ptr } %t174, i32 %t175, 1
  %t177 = load ptr, ptr %l97, !tbaa !29
  %t178 = insertvalue { %"compiler/source:Span", i32, ptr } %t176, ptr %t177, 2
  %t179 = getelementptr { i64, [3 x i64] }, ptr %t171, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t178, ptr %t179
  %t180 = load { i64, [3 x i64] }, ptr %t171
  %t182 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t180, ptr %t182
  %t183 = load ptr, ptr %l86, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t183, ptr %t182)
  br label %bb21
bb21:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l100, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t186, ptr %l101
  %t187 = load ptr, ptr %l2, !tbaa !29
  store ptr %t187, ptr %l102, !tbaa !29
  %t188 = load i64, ptr %l5, !tbaa !24
  store i64 %t188, ptr %l103, !tbaa !24
  %t189 = load ptr, ptr %l6, !tbaa !29
  store ptr %t189, ptr %l104, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l1
  %t192 = load i64, ptr %l9, !tbaa !24
  %t196 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t190, %"compiler/source:Span" %t191, i64 %t192)
  store ptr %t196, ptr %l108
  br label %bb22
bb22:
  %t197 = load ptr, ptr %l108, !tbaa !29
  %t198 = load ptr, ptr %l100, !tbaa !29
  %t199 = load %"compiler/source:Span", ptr %l101
  %t200 = load ptr, ptr %l102, !tbaa !29
  %t201 = load i64, ptr %l103, !tbaa !24
  %t202 = load ptr, ptr %l104, !tbaa !29
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %v4, ptr %t198, %"compiler/source:Span" %t199, ptr %t200, i64 %t201, ptr %t202, ptr %t197)
  store ptr %t204, ptr %l110
  br label %bb23
bb23:
  %t205 = load ptr, ptr %l110, !tbaa !29
  store ptr %t205, ptr %l11, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t206, ptr %l111
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t207, ptr %l112, !tbaa !23
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 44
  %t211 = load i64, ptr %l10, !tbaa !24
  %t214 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t210, i64 %t211)
  store { i64, ptr } %t214, ptr %l116
  br label %bb24
bb24:
  %t215 = load ptr, ptr %l11, !tbaa !29
  %t217 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t219 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v4, ptr %v4, { i64, ptr } %t217, ptr %t215, i1 false)
  store %"compiler/typed:Seq" %t219, ptr %l119
  br label %bb25
bb25:
  %t220 = load %"compiler/typed:Seq", ptr %l119
  %t221 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/typed:Seq" %t220, ptr %t221
  store { i64, [5 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [5 x i64] }, ptr %t222, i32 0, i32 0
  store i64 12, ptr %t223
  %t224 = load %"compiler/source:Span", ptr %l111
  %t225 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t224, 0
  %t226 = load i32, ptr %l112, !tbaa !23
  %t227 = insertvalue { %"compiler/source:Span", i32, ptr } %t225, i32 %t226, 1
  %t229 = insertvalue { %"compiler/source:Span", i32, ptr } %t227, ptr %t221, 2
  %t230 = getelementptr { i64, [5 x i64] }, ptr %t222, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t229, ptr %t230
  %t231 = load { i64, [5 x i64] }, ptr %t222
  %t232 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store ptr %t232, ptr %lp12
  %t234 = load ptr, ptr %lp12
  store { i64, [5 x i64] } %t231, ptr %t234
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l122, !tbaa !29
  %t236 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t236, ptr %l123
  %t237 = load ptr, ptr %l2, !tbaa !29
  store ptr %t237, ptr %l124, !tbaa !29
  %t238 = load i64, ptr %l3, !tbaa !24
  store i64 %t238, ptr %l125, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t239, ptr %l126, !tbaa !27
  %t240 = load i64, ptr %l5, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l128, !tbaa !24
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  %t245 = load i64, ptr %l9, !tbaa !24
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t243, %"compiler/source:Span" %t244, i64 %t245)
  store ptr %t249, ptr %l132
  br label %bb26
bb26:
  %t250 = load ptr, ptr %l132, !tbaa !29
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l123
  %t253 = load ptr, ptr %l124, !tbaa !29
  %t254 = load i64, ptr %l125, !tbaa !24
  %t255 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t256 = load i64, ptr %l128, !tbaa !24
  %t258 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %v4, ptr %t251, %"compiler/source:Span" %t252, ptr %t253, i64 %t254, { i64, ptr } %t255, i64 %t256, ptr %t250)
  store ptr %t258, ptr %l134
  br label %bb27
bb27:
  %t259 = load ptr, ptr %l134, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t260, ptr %l135
  %t261 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t261, ptr %l136, !tbaa !23
  %t262 = load ptr, ptr %lp12
  store ptr %t262, ptr %l137, !tbaa !29
  store ptr %t259, ptr %l139, !tbaa !29
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l1
  %t267 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t271 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t265, %"compiler/source:Span" %t266, i32 %t267, i64 0)
  store ptr %t271, ptr %l143
  br label %bb28
bb28:
  %t272 = load ptr, ptr %l137, !tbaa !29
  %t273 = load ptr, ptr %l139, !tbaa !29
  %t274 = load ptr, ptr %l143, !tbaa !29
  %t275 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, ptr %t272, ptr %t273, ptr %t274)
  store %"compiler/typed:Cond" %t275, ptr %l144
  br label %bb29
bb29:
  %t276 = load %"compiler/typed:Cond", ptr %l144
  %t277 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 24, i64 8)
  store %"compiler/typed:Cond" %t276, ptr %t277
  store { i64, [5 x i64] } zeroinitializer, ptr %t278
  %t279 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 0
  store i64 11, ptr %t279
  %t280 = load %"compiler/source:Span", ptr %l135
  %t281 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t280, 0
  %t282 = load i32, ptr %l136, !tbaa !23
  %t283 = insertvalue { %"compiler/source:Span", i32, ptr } %t281, i32 %t282, 1
  %t285 = insertvalue { %"compiler/source:Span", i32, ptr } %t283, ptr %t277, 2
  %t286 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t285, ptr %t286
  %t287 = load { i64, [5 x i64] }, ptr %t278
  %t289 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t287, ptr %t289
  call void @__olang_scope_close(ptr %s0)
  store ptr %t289, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l10 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %s0, { i64, ptr } %t6)
  store { i64, ptr } %t7, ptr %l6
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i8, ptr %t16, i64 0
  %t18 = load i8, ptr %t17, !tbaa !32
  %t20 = zext i8 %t18 to i64
  store i64 %t20, ptr %l10, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l10, !tbaa !24
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t22 = load i64, ptr %l10, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedPrim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i64
  %l9 = alloca i64
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l18 = alloca i32
  %l22 = alloca i32
  %l26 = alloca { i64, ptr }
  %rv = alloca ptr
  %t36 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 43
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 43
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t9, ptr %a4)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 43
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t15, ptr %a5)
  br label %bb3
bb3:
  store %"compiler/source:Span" %a1, ptr %l16
  %t20 = load i32, ptr %l2, !tbaa !23
  store i32 %t20, ptr %l17, !tbaa !23
  %t21 = load i32, ptr %l3, !range !{i32 0, i32 51}
  store i32 %t21, ptr %l18
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t24 = load i32, ptr %l2, !tbaa !23
  %t28 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopCheck(ptr %v0, ptr %t22, i32 %t23, i32 %t24)
  store i32 %t28, ptr %l22
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 43
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t31, i64 %t32)
  store { i64, ptr } %t35, ptr %l26
  br label %bb5
bb5:
  store { i64, [5 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 0
  store i64 9, ptr %t37
  %t38 = load %"compiler/source:Span", ptr %l16
  %t39 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t38, 0
  %t40 = load i32, ptr %l17, !tbaa !23
  %t41 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t39, i32 %t40, 1
  %t42 = load i32, ptr %l18, !range !{i32 0, i32 51}
  %t43 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t41, i32 %t42, 2
  %t44 = load i32, ptr %l22, !range !{i32 0, i32 4}
  %t45 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t43, i32 %t44, 3
  %t46 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t47 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t45, { i64, ptr } %t46, 4
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t47, ptr %t48
  %t49 = load { i64, [5 x i64] }, ptr %t36
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t49, ptr %t51
  store ptr %t51, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l72 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
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
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
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
  store { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t49, ptr %l35, !tbaa !27
  store { i64, ptr } %t48, ptr %l4, !tbaa !27
  %t51 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecolumnsMet_2elocal_2e4
  br i1 %t51, label %bb17, label %bb18
bb16:
  br label %bb19
bb17:
  %t53 = load { i64, ptr }, ptr %l35
  %t54 = extractvalue { i64, ptr } %t53, 1
  call void @__olang_region_release(ptr %t54)
  store { i64, ptr } zeroinitializer, ptr %l35
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t55, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t57, ptr %l38
  br label %bb20
bb20:
  %t58 = load i1, ptr %l38, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l40, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t62, ptr %l41
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l1, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t63, i32 %t64)
  store { i64, ptr } %t67, ptr %l44
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t68 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l45, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l3, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t75, i32 %t76)
  store { i64, ptr } %t79, ptr %l48
  br label %bb24
bb24:
  %t80 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t91 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnsNotRecord(ptr %s3, ptr %s3, ptr %s0, ptr %v0, { i64, ptr } %t88, { i64, ptr } %t86, { i64, ptr } %t87)
  store %"compiler/diagmsg:Msg" %t91, ptr %l51
  br label %bb25
bb25:
  %t92 = load ptr, ptr %l40, !tbaa !29
  %t93 = load %"compiler/source:Span", ptr %l41
  %t94 = load %"compiler/diagmsg:Msg", ptr %l51
  %t95 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t92, %"compiler/source:Span" %t93, %"compiler/diagmsg:Msg" %t94)
  store i64 %t95, ptr %l52
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = load i32, ptr %l3, !tbaa !23
  %t104 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s4, ptr %t100, i32 %t101)
  store { i64, ptr } %t104, ptr %l57
  br label %bb28
bb28:
  %t105 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 4
  %t109 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  store i64 %t115, ptr %l7, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t117 = load i64, ptr %l6, !tbaa !24
  %t118 = load i64, ptr %l7, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb31:
  br label %bb32
bb32:
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t125, ptr %l65, !tbaa !27
  %t126 = load i64, ptr %l6, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i32, ptr %t129, i64 %t126
  %t131 = load i32, ptr %t130, !tbaa !33
  store i32 %t131, ptr %l8, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t137 = load i32, ptr %l1, !tbaa !23
  %t138 = load i32, ptr %l8, !tbaa !23
  %t142 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t136, i32 %t137, i32 %t138)
  store i64 %t142, ptr %l72
  br label %bb33
bb33:
  %t143 = load i64, ptr %l72, !tbaa !24
  %t144 = icmp slt i64 %t143, 0
  br i1 %t144, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb35:
  br label %bb36
bb36:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l74, !tbaa !29
  %t147 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t147, ptr %l75
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l1, !tbaa !23
  %t152 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t148, i32 %t149)
  store { i64, ptr } %t152, ptr %l78
  br label %bb37
bb37:
  %t153 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  %t155 = extractvalue { i64, ptr } %t153, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l79, !tbaa !27
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l3, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t160, i32 %t161)
  store { i64, ptr } %t164, ptr %l82
  br label %bb38
bb38:
  %t165 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  %t167 = extractvalue { i64, ptr } %t165, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  store { i64, ptr } %t171, ptr %l83, !tbaa !27
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l8, !tbaa !23
  %t176 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t172, i32 %t173)
  store { i64, ptr } %t176, ptr %l86
  br label %bb39
bb39:
  %t177 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t180 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnNamedLikeMethod(ptr %s5, ptr %s5, ptr %v0, ptr %v0, { i64, ptr } %t177, { i64, ptr } %t178, { i64, ptr } %t179)
  store %"compiler/diagmsg:Msg" %t180, ptr %l87
  br label %bb40
bb40:
  %t181 = load ptr, ptr %l74, !tbaa !29
  %t182 = load %"compiler/source:Span", ptr %l75
  %t183 = load %"compiler/diagmsg:Msg", ptr %l87
  %t184 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t181, %"compiler/source:Span" %t182, %"compiler/diagmsg:Msg" %t183)
  store i64 %t184, ptr %l88
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb42:
  %t186 = load i64, ptr %l6, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l6, !tbaa !24
  br label %bb29
bb43:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s20 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l44, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t45, ptr %l45
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t46, i32 %t47)
  store { i64, ptr } %t50, ptr %l48
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t51 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignBuilt(ptr %s2, ptr %v0, { i64, ptr } %t57)
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
  call void @__olang_scope_close(ptr %s2)
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
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 164
  %t158 = load i1, ptr %t157, !tbaa !21
  br i1 %t158, label %bb38, label %bb39
bb38:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 164
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
  %t175 = getelementptr %"compiler/check:Checker", ptr %t173, i32 0, i32 165
  %t177 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %s4, ptr %t175)
  store { i64, ptr } %t177, ptr %l105
  br label %bb43
bb43:
  %t178 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t178, ptr %l7, !tbaa !27
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 165
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
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 27
  %t192 = load i32, ptr %t191, !tbaa !23
  store i32 %t192, ptr %l9, !tbaa !23
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l3, !tbaa !23
  %t198 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 27
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
  %t240 = getelementptr %"compiler/check:Checker", ptr %t236, i32 0, i32 27
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
  store %olang.scope zeroinitializer, ptr %s9
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
  %t341 = getelementptr %"compiler/check:Checker", ptr %t337, i32 0, i32 51
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
  call void @__olang_scope_close(ptr %s9)
  store ptr %t397, ptr %rv
  br label %ret
bb90:
  %t399 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t399, 0
  %t403 = icmp ne i64 %t401, 1
  br i1 %t403, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s12
  %t405 = load ptr, ptr %l0, !tbaa !29
  store ptr %t405, ptr %l209, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t406, ptr %l210
  %t407 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t407, 0
  %t411 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s12, ptr %v0, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, i64 %t409)
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
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s9)
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
  call void @__olang_scope_close(ptr %s9)
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
  call void @__olang_scope_close(ptr %s9)
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
  call void @__olang_scope_close(ptr %s9)
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
  call void @__olang_scope_close(ptr %s9)
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
  call void @__olang_scope_close(ptr %s9)
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
  call void @__olang_scope_close(ptr %s9)
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
  call void @__olang_scope_close(ptr %s9)
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
  %t868 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t864, i32 %t865)
  store { i64, ptr } %t868, ptr %l428
  br label %bb191
bb191:
  %t869 = load { i64, ptr }, ptr %l428, !tbaa !27
  %t870 = extractvalue { i64, ptr } %t869, 0
  %t871 = extractvalue { i64, ptr } %t869, 1
  %t872 = mul i64 %t870, 1
  %t873 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t872)
  call void @llvm.memcpy.p0.p0.i64(ptr %t873, ptr %t871, i64 %t872, i1 false)
  %t874 = insertvalue { i64, ptr } undef, i64 %t870, 0
  %t875 = insertvalue { i64, ptr } %t874, ptr %t873, 1
  store { i64, ptr } %t875, ptr %l429, !tbaa !27
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t877 = load i32, ptr %l17, !tbaa !23
  %t880 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t876, i32 %t877)
  store { i64, ptr } %t880, ptr %l432
  br label %bb192
bb192:
  %t881 = load { i64, ptr }, ptr %l432, !tbaa !27
  %t882 = extractvalue { i64, ptr } %t881, 0
  %t883 = extractvalue { i64, ptr } %t881, 1
  %t884 = mul i64 %t882, 1
  %t885 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t884)
  call void @llvm.memcpy.p0.p0.i64(ptr %t885, ptr %t883, i64 %t884, i1 false)
  %t886 = insertvalue { i64, ptr } undef, i64 %t882, 0
  %t887 = insertvalue { i64, ptr } %t886, ptr %t885, 1
  %t888 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t890 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %s9, ptr %s9, ptr %v0, { i64, ptr } %t888, { i64, ptr } %t887)
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
  call void @__olang_scope_close(ptr %s9)
  %t900 = load ptr, ptr %l438, !tbaa !29
  store ptr %t900, ptr %rv
  br label %ret
bb196:
  %t901 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t903 = trunc i64 1 to i32
  %t904 = icmp eq i32 %t901, %t903
  br i1 %t904, label %bb197, label %bb198
bb197:
  store %olang.scope zeroinitializer, ptr %s20
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
  %t914 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s20, { i64, ptr } %t913)
  store { i64, ptr } %t914, ptr %l446
  br label %bb200
bb200:
  %t915 = load { i64, ptr }, ptr %l446, !tbaa !27
  %t916 = extractvalue { i64, ptr } %t915, 0
  %t917 = extractvalue { i64, ptr } %t915, 1
  %t918 = mul i64 %t916, 1
  %t919 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t918)
  call void @llvm.memcpy.p0.p0.i64(ptr %t919, ptr %t917, i64 %t918, i1 false)
  %t920 = insertvalue { i64, ptr } undef, i64 %t916, 0
  %t921 = insertvalue { i64, ptr } %t920, ptr %t919, 1
  %t923 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHasNoConstructor(ptr %s20, ptr %v0, { i64, ptr } %t921)
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
  call void @__olang_scope_close(ptr %s20)
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
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t1023, %"compiler/source:Span" %t1024, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d9, i32 0, i32 1) })
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %lp13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l22 = alloca ptr
  %l31 = alloca i64
  %l35 = alloca ptr
  %l39 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i64
  %l50 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l60 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca i64
  %l86 = alloca { i64, ptr }
  %l89 = alloca %"compiler/check:ctSource"
  %l98 = alloca i32
  %l102 = alloca ptr
  %l105 = alloca i1
  %l114 = alloca i64
  %l118 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l135 = alloca ptr
  %l136 = alloca i1
  %l150 = alloca { i64, ptr }
  %l155 = alloca %"compiler/check:ctSource"
  %l157 = alloca ptr
  %l158 = alloca i1
  %l176 = alloca { i64, ptr }
  %l182 = alloca %"compiler/check:ctSource"
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 18
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l22
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l22, !tbaa !29
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
  br label %bb24
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t25, i64 %t26)
  store i64 %t29, ptr %l31
  br label %bb5
bb5:
  %t30 = load i64, ptr %l31, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %t34, i64 %t35)
  store ptr %t38, ptr %l35
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l35, !tbaa !29
  store ptr %t39, ptr %l5, !tbaa !29
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = getelementptr %"compiler/ast:Func", ptr %t40, i32 0, i32 6
  %t43 = load i1, ptr %t42, !tbaa !21
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb10
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t50, i64 %t51)
  store i1 %t54, ptr %l43
  br label %bb9
bb9:
  %t55 = load i1, ptr %l43, !tbaa !21
  store i1 %t55, ptr %l39, !tbaa !21
  br label %bb10
bb10:
  %t56 = load i1, ptr %l39, !tbaa !21
  br i1 %t56, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l48
  br label %bb14
bb14:
  %t66 = load i64, ptr %l48, !tbaa !24
  store i64 %t66, ptr %l6, !tbaa !24
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Func", ptr %t67, i32 0, i32 4
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l50, !tbaa !27
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/load:Loader", ptr %t77, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l54, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/load:Loader", ptr %t87, i32 0, i32 10
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t89, i64 %t90)
  store ptr %t93, ptr %l60
  br label %bb15
bb15:
  %t94 = load ptr, ptr %l60, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 6
  %t97 = load ptr, ptr %t96, !tbaa !29
  store ptr %t97, ptr %l7, !tbaa !29
  %t99 = load ptr, ptr %l7, !tbaa !29
  %t101 = icmp eq ptr %t99, null
  br i1 %t101, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_700945490095e3ab_b793fb317cfa4b47)
  unreachable
bb17:
  br label %bb18
bb18:
  %t103 = load ptr, ptr %l7, !tbaa !29
  %t106 = getelementptr %"compiler/source:Source", ptr %t103, i32 0, i32 1
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Func", ptr %t108, i32 0, i32 3
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/ast:Sig", ptr %t111, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/ast:Func", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t120 = load ptr, ptr %l54, !tbaa !29
  %t124 = call { i64, ptr } @compiler_2fast_2eRequirements(ptr %v1, ptr %v0, ptr %v0, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t119, ptr %t120, { i64, ptr } %t107, { i64, ptr } %t114, ptr %t118)
  store { i64, ptr } %t124, ptr %l73
  br label %bb19
bb19:
  %t125 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t125, ptr %l74, !tbaa !27
  %t127 = load ptr, ptr %l5, !tbaa !29
  %t129 = getelementptr %"compiler/ast:Func", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l76, !tbaa !29
  %t131 = load ptr, ptr %l5, !tbaa !29
  %t133 = getelementptr %"compiler/ast:Func", ptr %t131, i32 0, i32 3
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/ast:Sig", ptr %t134, i32 0, i32 0
  %t137 = load { i64, ptr }, ptr %t136, !tbaa !27
  store { i64, ptr } %t137, ptr %l79, !tbaa !27
  %t138 = load i64, ptr %l6, !tbaa !24
  store i64 %t138, ptr %l80, !tbaa !24
  %t139 = ptrtoint ptr %v1 to i64
  store i64 %t139, ptr %l81, !tbaa !24
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3actSource_2e4
  br i1 %t140, label %bb20, label %bb21
bb20:
  %t142 = call ptr @__olang_region_make(ptr %v1)
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l81, !tbaa !24
  br label %bb21
bb21:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l5, !tbaa !29
  %t147 = getelementptr %"compiler/ast:Func", ptr %t145, i32 0, i32 2
  %t148 = load i32, ptr %t147, !tbaa !23
  %t151 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t144, i32 %t148)
  store { i64, ptr } %t151, ptr %l86
  br label %bb22
bb22:
  %t152 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = load i64, ptr %l81
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = call ptr @__olang_scope_alloc(ptr %t156, i64 %t154)
  call void @olang_textcopy(ptr %t157, ptr %t153, i64 %t154)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t161 = load i64, ptr %l81
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = extractvalue { i64, ptr } %t159, 0
  %t164 = extractvalue { i64, ptr } %t159, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %t162, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t169 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t170 = load ptr, ptr %l76, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t172 = load i64, ptr %l80, !tbaa !24
  %t174 = call %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t169, ptr %t170, { i64, ptr } %t171, i64 %t172, { i64, ptr } %t168)
  store %"compiler/check:ctSource" %t174, ptr %l89
  br label %bb23
bb23:
  %t175 = load %"compiler/check:ctSource", ptr %l89
  %t176 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/check:ctSource" %t175, ptr %t176
  call void @__olang_scope_close(ptr %s1)
  store ptr %t176, ptr %rv
  br label %ret
bb24:
  %t178 = load { i64, [2 x i64] }, ptr %l2
  %t180 = extractvalue { i64, [2 x i64] } %t178, 0
  %t181 = icmp eq i64 %t180, 1
  br i1 %t181, label %bb25, label %bb26
bb25:
  %t183 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t184 = getelementptr { i32, i32 }, ptr %t183, i32 0, i32 0
  %t185 = load i32, ptr %t184
  store i32 %t185, ptr %l9, !tbaa !23
  br label %bb27
bb26:
  br label %bb65
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l9, !tbaa !23
  %t196 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t196, ptr %l98
  br label %bb28
bb28:
  %t197 = load i32, ptr %l98, !tbaa !23
  store i32 %t197, ptr %l10, !tbaa !23
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/check:Checker", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t202 = load i32, ptr %l10, !tbaa !23
  %t205 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t201, i32 %t202)
  store ptr %t205, ptr %l102
  br label %bb29
bb29:
  %t206 = load ptr, ptr %l102, !tbaa !29
  store ptr %t206, ptr %l11, !tbaa !29
  %t207 = load ptr, ptr %l11, !tbaa !29
  %t209 = icmp eq ptr %t207, null
  br i1 %t209, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb32
bb31:
  %t211 = load ptr, ptr %l11, !tbaa !29
  %t213 = getelementptr %"compiler/ast:TypeDecl", ptr %t211, i32 0, i32 3
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = icmp eq ptr %t214, null
  store i1 %t216, ptr %l105, !tbaa !21
  br label %bb32
bb32:
  %t218 = load i1, ptr %l105, !tbaa !21
  br i1 %t218, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s4)
  store ptr null, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l10, !tbaa !23
  %t229 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t225, i32 %t226)
  store i64 %t229, ptr %l114
  br label %bb36
bb36:
  %t230 = load i64, ptr %l114, !tbaa !24
  store i64 %t230, ptr %l12, !tbaa !24
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load ptr, ptr %l11, !tbaa !29
  %t234 = getelementptr %"compiler/ast:TypeDecl", ptr %t232, i32 0, i32 0
  %t235 = load i32, ptr %t234, !tbaa !23
  %t238 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t231, i32 %t235)
  store { i64, ptr } %t238, ptr %l118
  br label %bb37
bb37:
  %t239 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t241)
  call void @olang_textcopy(ptr %t242, ptr %t240, i64 %t241)
  %t243 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  %t245 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t245, ptr %lp13
  %t247 = load ptr, ptr %lp13
  store { i64, ptr } %t244, ptr %t247, !tbaa !27
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/check:Checker", ptr %t248, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !29
  %t253 = getelementptr %"compiler/generic:Program", ptr %t251, i32 0, i32 0
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t256 = getelementptr %"compiler/load:Loader", ptr %t254, i32 0, i32 10
  %t257 = load i64, ptr %l12, !tbaa !24
  %t260 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t256, i64 %t257)
  store ptr %t260, ptr %l125
  br label %bb38
bb38:
  %t261 = load ptr, ptr %l125, !tbaa !29
  %t263 = getelementptr %"compiler/load:Module", ptr %t261, i32 0, i32 6
  %t264 = load ptr, ptr %t263, !tbaa !29
  store ptr %t264, ptr %l14, !tbaa !29
  %t266 = load ptr, ptr %l14, !tbaa !29
  %t268 = icmp eq ptr %t266, null
  br i1 %t268, label %bb39, label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_98b1a939df7bf83c_dad16d1edd3f2a28)
  unreachable
bb40:
  br label %bb41
bb41:
  %t270 = load ptr, ptr %l14, !tbaa !29
  %t273 = getelementptr %"compiler/source:Source", ptr %t270, i32 0, i32 1
  %t274 = load { i64, ptr }, ptr %t273, !tbaa !27
  store { i64, ptr } %t274, ptr %l15, !tbaa !27
  %t276 = load ptr, ptr %l11, !tbaa !29
  %t278 = getelementptr %"compiler/ast:TypeDecl", ptr %t276, i32 0, i32 3
  %t279 = load ptr, ptr %t278, !tbaa !29
  store ptr %t279, ptr %l16, !tbaa !29
  %t281 = load ptr, ptr %l16, !tbaa !29
  store ptr %t281, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t282 = load ptr, ptr %l135, !tbaa !29
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %bb42, label %bb43
bb42:
  %t285 = load ptr, ptr %l135, !tbaa !29
  %t286 = load i64, ptr %t285, !range !{i64 0, i64 5}
  %t288 = icmp eq i64 %t286, 0
  store i1 %t288, ptr %l136, !tbaa !21
  br label %bb43
bb43:
  %t289 = load i1, ptr %l136, !tbaa !21
  br i1 %t289, label %bb44, label %bb45
bb44:
  %t290 = load ptr, ptr %l16, !tbaa !29
  %t292 = getelementptr { i64, [6 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { ptr }, ptr %t292, i32 0, i32 0
  %t294 = load ptr, ptr %t293
  store ptr %t294, ptr %l17, !tbaa !29
  br label %bb46
bb45:
  br label %bb49
bb46:
  store %olang.scope zeroinitializer, ptr %s7
  %t296 = load ptr, ptr %l17, !tbaa !29
  %t298 = getelementptr %"compiler/ast:StructBody", ptr %t296, i32 0, i32 2
  %t299 = load { i64, ptr }, ptr %t298, !tbaa !27
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/check:Checker", ptr %t300, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !29
  %t305 = getelementptr %"compiler/generic:Program", ptr %t303, i32 0, i32 0
  %t306 = load ptr, ptr %t305, !tbaa !29
  %t308 = getelementptr %"compiler/load:Loader", ptr %t306, i32 0, i32 3
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t310 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t311 = load ptr, ptr %l17, !tbaa !29
  %t313 = getelementptr %"compiler/ast:StructBody", ptr %t311, i32 0, i32 0
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !27
  %t319 = call { i64, ptr } @compiler_2fast_2eRequirements(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s7, ptr %v0, { i64, ptr } %t299, ptr %t309, { i64, ptr } %t310, { i64, ptr } %t314, ptr null)
  store { i64, ptr } %t319, ptr %l150
  br label %bb47
bb47:
  %t320 = load ptr, ptr %l17, !tbaa !29
  %t322 = getelementptr %"compiler/ast:StructBody", ptr %t320, i32 0, i32 0
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !27
  %t324 = load i64, ptr %l12, !tbaa !24
  %t325 = load ptr, ptr %lp13
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  %t327 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t331 = call %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, { i64, ptr } %t327, ptr null, { i64, ptr } %t323, i64 %t324, { i64, ptr } %t326)
  store %"compiler/check:ctSource" %t331, ptr %l155
  br label %bb48
bb48:
  %t332 = load %"compiler/check:ctSource", ptr %l155
  %t333 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/check:ctSource" %t332, ptr %t333
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s4)
  store ptr %t333, ptr %rv
  br label %ret
bb49:
  %t335 = load ptr, ptr %l16, !tbaa !29
  store ptr %t335, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t336 = load ptr, ptr %l157, !tbaa !29
  %t337 = icmp ne ptr %t336, null
  br i1 %t337, label %bb50, label %bb51
bb50:
  %t339 = load ptr, ptr %l157, !tbaa !29
  %t340 = load i64, ptr %t339, !range !{i64 0, i64 5}
  %t342 = icmp eq i64 %t340, 3
  store i1 %t342, ptr %l158, !tbaa !21
  br label %bb51
bb51:
  %t343 = load i1, ptr %l158, !tbaa !21
  br i1 %t343, label %bb52, label %bb53
bb52:
  %t344 = load ptr, ptr %l16, !tbaa !29
  %t346 = getelementptr { i64, [6 x i64] }, ptr %t344, i32 0, i32 1
  %t347 = getelementptr { ptr, ptr }, ptr %t346, i32 0, i32 1
  %t348 = load ptr, ptr %t347
  store ptr %t348, ptr %l18, !tbaa !29
  br label %bb54
bb53:
  br label %bb60
bb54:
  store %olang.scope zeroinitializer, ptr %s8
  %t350 = load ptr, ptr %l18, !tbaa !29
  %t352 = icmp eq ptr %t350, null
  br i1 %t352, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s4)
  store ptr null, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t355 = load ptr, ptr %l18, !tbaa !29
  %t357 = getelementptr %"compiler/ast:Func", ptr %t355, i32 0, i32 4
  %t358 = load { i64, ptr }, ptr %t357, !tbaa !27
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/check:Checker", ptr %t359, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !29
  %t364 = getelementptr %"compiler/generic:Program", ptr %t362, i32 0, i32 0
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t367 = getelementptr %"compiler/load:Loader", ptr %t365, i32 0, i32 3
  %t368 = load ptr, ptr %t367, !tbaa !29
  %t369 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t370 = load ptr, ptr %l18, !tbaa !29
  %t372 = getelementptr %"compiler/ast:Func", ptr %t370, i32 0, i32 3
  %t373 = load ptr, ptr %t372, !tbaa !29
  %t375 = getelementptr %"compiler/ast:Sig", ptr %t373, i32 0, i32 0
  %t376 = load { i64, ptr }, ptr %t375, !tbaa !27
  %t381 = call { i64, ptr } @compiler_2fast_2eRequirements(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s8, ptr %v0, { i64, ptr } %t358, ptr %t368, { i64, ptr } %t369, { i64, ptr } %t376, ptr null)
  store { i64, ptr } %t381, ptr %l176
  br label %bb58
bb58:
  %t382 = load ptr, ptr %l18, !tbaa !29
  %t384 = getelementptr %"compiler/ast:Func", ptr %t382, i32 0, i32 3
  %t385 = load ptr, ptr %t384, !tbaa !29
  %t387 = getelementptr %"compiler/ast:Sig", ptr %t385, i32 0, i32 0
  %t388 = load { i64, ptr }, ptr %t387, !tbaa !27
  %t389 = load i64, ptr %l12, !tbaa !24
  %t390 = load ptr, ptr %lp13
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  %t392 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t396 = call %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, { i64, ptr } %t392, ptr null, { i64, ptr } %t388, i64 %t389, { i64, ptr } %t391)
  store %"compiler/check:ctSource" %t396, ptr %l182
  br label %bb59
bb59:
  %t397 = load %"compiler/check:ctSource", ptr %l182
  %t398 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/check:ctSource" %t397, ptr %t398
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s4)
  store ptr %t398, ptr %rv
  br label %ret
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_scope_close(ptr %s4)
  store ptr null, ptr %rv
  br label %ret
bb64:
  call void @__olang_check_failed(ptr @olang_loc_7d341668197b23b8_39fb9abd34d1e724)
  unreachable
bb65:
  br i1 true, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  store ptr null, ptr %rv
  br label %ret
bb69:
  call void @__olang_check_failed(ptr @olang_loc_82b8e88501244989_8304f205bc7c5615)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i32
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l25 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 18
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l2
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 1
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i32, i32 }, ptr %t18, i32 0, i32 0
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb4
bb3:
  br label %bb10
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l16, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l21
  br label %bb5
bb5:
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = load i32, ptr %l21, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t38, i32 %t39)
  store { i64, ptr } %t40, ptr %l22
  br label %bb6
bb6:
  %t41 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = load i32, ptr %l3, !tbaa !23
  store i32 %t46, ptr %l25, !tbaa !23
  br label %bb9
bb8:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t48, ptr %l25, !tbaa !23
  br label %bb9
bb9:
  %t50 = load i32, ptr %l25, !tbaa !23
  store i32 %t50, ptr %l10, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t51, ptr %l10, !tbaa !23
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6ec35b2a419acb72_9ad92e0ac70f122e)
  unreachable
bb15:
  %t53 = load i32, ptr %l10, !tbaa !23
  store i32 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCycle(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca %"compiler/typed:Local"
  %l8 = alloca %"compiler/typed:Local"
  %l12 = alloca ptr
  %l19 = alloca { i64, [3 x i64] }
  %l20 = alloca ptr
  %l24 = alloca %"compiler/typed:Local"
  %l26 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l31 = alloca i64
  %t33 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 7
  %t7 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t3, i64 %a3)
  store %"compiler/typed:Local" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"compiler/typed:Local", ptr %l8
  store %"compiler/typed:Local" %t8, ptr %l4
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l12, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 3
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 1
  %t24 = getelementptr %"compiler/source:Span", ptr %t23, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t28 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 1
  %t29 = getelementptr %"compiler/source:Span", ptr %t28, i32 0, i32 1
  %t30 = load i32, ptr %t29, !tbaa !23
  %t32 = sext i32 %t30 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [3 x i64] }, ptr %t33, i32 0, i32 0
  store i64 3, ptr %t34
  %t36 = insertvalue { i64, i64, i64 } undef, i64 %t22, 0
  %t38 = insertvalue { i64, i64, i64 } %t36, i64 %t27, 1
  %t40 = insertvalue { i64, i64, i64 } %t38, i64 %t32, 2
  %t41 = getelementptr { i64, [3 x i64] }, ptr %t33, i32 0, i32 1
  store { i64, i64, i64 } %t40, ptr %t41
  %t42 = load { i64, [3 x i64] }, ptr %t33
  store { i64, [3 x i64] } %t42, ptr %l19
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l20, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Body", ptr %t44, i32 0, i32 7
  %t50 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t46, i64 %a2)
  store %"compiler/typed:Local" %t50, ptr %l24
  br label %bb2
bb2:
  %t51 = getelementptr %"compiler/typed:Local", ptr %l24, i32 0, i32 0
  %t52 = load i32, ptr %t51, !tbaa !23
  %t53 = load ptr, ptr %l20, !tbaa !29
  %t55 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t53, i32 %t52)
  store { i64, ptr } %t55, ptr %l26
  br label %bb3
bb3:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t56, i32 %t58)
  store { i64, ptr } %t61, ptr %l29
  br label %bb4
bb4:
  %t62 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropCycle(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t62, { i64, ptr } %t63)
  store %"compiler/diagmsg:Msg" %t64, ptr %l30
  br label %bb5
bb5:
  %t65 = load ptr, ptr %l12, !tbaa !29
  %t66 = load { i64, [3 x i64] }, ptr %l19
  %t67 = load %"compiler/diagmsg:Msg", ptr %l30
  %t68 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t65, { i64, [3 x i64] } %t66, %"compiler/diagmsg:Msg" %t67)
  store i64 %t68, ptr %l31
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %l17 = alloca i1
  %l18 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i64
  %l31 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l50 = alloca i64
  %l52 = alloca ptr
  %l56 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
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
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  store i32 %t5, ptr %l5, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 3
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i32 %t17, ptr %l10
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t19 = load i32, ptr %l5, !tbaa !23
  %t20 = load i32, ptr %l10, !tbaa !23
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t18, i32 %t19, i32 %t20)
  store i64 %t21, ptr %l11
  br label %bb2
bb2:
  %t22 = load i64, ptr %l11, !tbaa !24
  store i64 %t22, ptr %l2, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sge i64 %t23, 0
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load i64, ptr %l2, !tbaa !24
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqShaped(ptr %v0, ptr %t27, i32 %t28, i64 %t29)
  store i1 %t33, ptr %l17
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l18, !tbaa !24
  br label %bb8
bb7:
  store i64 -1, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load i64, ptr %l18, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l21, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  store i32 %t42, ptr %l22, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/load:Loader", ptr %t49, i32 0, i32 3
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t52, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i32 %t54, ptr %l27
  br label %bb10
bb10:
  %t55 = load ptr, ptr %l21, !tbaa !29
  %t56 = load i32, ptr %l22, !tbaa !23
  %t57 = load i32, ptr %l27, !tbaa !23
  %t58 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t55, i32 %t56, i32 %t57)
  store i64 %t58, ptr %l28
  br label %bb11
bb11:
  %t59 = load i64, ptr %l28, !tbaa !24
  store i64 %t59, ptr %l2, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = icmp slt i64 %t60, 0
  br i1 %t62, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb17
bb13:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l34, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  store ptr %t75, ptr %l37, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load i64, ptr %l2, !tbaa !24
  %t83 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t79, i64 %t80)
  store i32 %t83, ptr %l41
  br label %bb14
bb14:
  %t84 = load ptr, ptr %l37, !tbaa !29
  %t85 = load i32, ptr %l41, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t86, ptr %l42
  br label %bb15
bb15:
  %t87 = load ptr, ptr %l34, !tbaa !29
  %t88 = load i32, ptr %l42, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t87, i32 %t88)
  store { i64, ptr } %t89, ptr %l43
  br label %bb16
bb16:
  %t90 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t93 = icmp ne i64 %t91, 2
  store i1 %t93, ptr %l31, !tbaa !21
  br label %bb17
bb17:
  %t95 = load i1, ptr %l31, !tbaa !21
  br i1 %t95, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = load i64, ptr %l2, !tbaa !24
  %t104 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l50
  br label %bb21
bb21:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t105)
  store ptr %t107, ptr %l52
  br label %bb22
bb22:
  %t108 = load ptr, ptr %l52, !tbaa !29
  %t110 = getelementptr %"compiler/check:frame", ptr %t108, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  %t112 = load i64, ptr %l50, !tbaa !24
  %t114 = icmp eq i64 %t112, %t111
  br i1 %t114, label %bb23, label %bb24
bb23:
  %t116 = load i64, ptr %l2, !tbaa !24
  store i64 %t116, ptr %l56, !tbaa !24
  br label %bb25
bb24:
  store i64 -2, ptr %l56, !tbaa !24
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t118 = load i64, ptr %l56, !tbaa !24
  store i64 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNonNull(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i1
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca i1
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
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load i64, ptr %t13
  store i64 %t14, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp ne i64 %t16, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t18, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e5613677a6448c92_7fd725fb7345b22e)
  unreachable
bb11:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store i64 %t24, ptr %l15
  br label %bb12
bb12:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp sge i64 %t25, 0
  br i1 %t26, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPath(ptr %v0, ptr %v1, ptr %s0, ptr %t29, ptr %t30)
  store { i64, ptr } %t33, ptr %l20
  br label %bb16
bb16:
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t34, ptr %l4, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb17, label %bb18
bb17:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l25, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t42, ptr %l26, !tbaa !27
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t43)
  store %"compiler/source:Span" %t45, ptr %l28
  br label %bb19
bb18:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb21
bb19:
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t48 = load %"compiler/source:Span", ptr %l28
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %s0, ptr %t46, { i64, ptr } %t47, %"compiler/source:Span" %t48)
  store i1 %t49, ptr %l29
  br label %bb20
bb20:
  %t50 = load i1, ptr %l29, !tbaa !21
  store i1 %t50, ptr %l24, !tbaa !21
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t51 = load i1, ptr %l24, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l19 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l34 = alloca i1
  %l35 = alloca i32
  %l38 = alloca { i64, ptr }
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca i64
  %l44 = alloca ptr
  %l49 = alloca i1
  %l51 = alloca i1
  %l56 = alloca i1
  %l62 = alloca i1
  %l63 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca { i64, ptr }
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l80 = alloca ptr
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca ptr
  %l95 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca { i64, ptr }
  %l106 = alloca i32
  %l110 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca i32
  %l120 = alloca i32
  %l123 = alloca ptr
  %l125 = alloca ptr
  %l128 = alloca ptr
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
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
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l12
  br label %bb1
bb1:
  %t5 = load i32, ptr %l12, !tbaa !23
  store i32 %t5, ptr %l6, !tbaa !23
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t6)
  store i32 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i32, ptr %l15, !tbaa !23
  store i32 %t10, ptr %l7, !tbaa !23
  %t11 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t13 = trunc i64 93 to i32
  %t14 = icmp eq i32 %t11, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t20 = trunc i64 94 to i32
  %t21 = icmp eq i32 %t18, %t20
  %t23 = xor i1 %t21, true
  store i1 %t23, ptr %l19, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l19, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l23, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t27, ptr %l24
  %t28 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t30 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s1, i32 %t28)
  store { i64, ptr } %t30, ptr %l26
  br label %bb8
bb7:
  br label %bb18
bb8:
  %t31 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t32 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s1, ptr %s1, { i64, ptr } %t31)
  store { i64, ptr } %t32, ptr %l27
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l28, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l29, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l6, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l34
  br label %bb10
bb10:
  %t51 = load i1, ptr %l34, !tbaa !21
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t52 = load i32, ptr %l6, !tbaa !23
  store i32 %t52, ptr %l35, !tbaa !23
  br label %bb13
bb12:
  %t54 = load i32, ptr %l7, !tbaa !23
  store i32 %t54, ptr %l35, !tbaa !23
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = load i32, ptr %l35, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t56, i32 %t57)
  store { i64, ptr } %t58, ptr %l38
  br label %bb14
bb14:
  %t59 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t68 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrValueNoOp(ptr %s1, ptr %s1, ptr %v0, { i64, ptr } %t66, { i64, ptr } %t65)
  store %"compiler/diagmsg:Msg" %t68, ptr %l40
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l23, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l24
  %t71 = load %"compiler/diagmsg:Msg", ptr %l40
  %t72 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t69, %"compiler/source:Span" %t70, %"compiler/diagmsg:Msg" %t71)
  store i64 %t72, ptr %l41
  br label %bb16
bb16:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  %t77 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t73, %"compiler/source:Span" %t74)
  store ptr %t77, ptr %l44
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  %t78 = load ptr, ptr %l44, !tbaa !29
  store ptr %t78, ptr %rv
  br label %ret
bb18:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l6, !tbaa !23
  %t88 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t88, ptr %l49
  br label %bb19
bb19:
  %t89 = load i1, ptr %l49, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb23
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l7, !tbaa !23
  %t101 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l56
  br label %bb22
bb22:
  %t102 = load i1, ptr %l56, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t105 = load i1, ptr %l51, !tbaa !21
  br i1 %t105, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s2
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l6, !tbaa !23
  %t115 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t115, ptr %l62
  br label %bb26
bb25:
  br label %bb35
bb26:
  %t116 = load i1, ptr %l62, !tbaa !21
  br i1 %t116, label %bb27, label %bb28
bb27:
  %t117 = load ptr, ptr %l4, !tbaa !29
  store ptr %t117, ptr %l63, !tbaa !29
  br label %bb29
bb28:
  %t119 = load ptr, ptr %l5, !tbaa !29
  store ptr %t119, ptr %l63, !tbaa !29
  br label %bb29
bb29:
  %t121 = load ptr, ptr %l63, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l66, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t123, ptr %l67
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l68, !tbaa !29
  store ptr %t121, ptr %l69, !tbaa !29
  %t126 = load ptr, ptr %l69, !tbaa !29
  %t127 = call ptr @__olang_scope_of(ptr %t126, ptr null)
  %t128 = ptrtoint ptr %t127 to i64
  %t130 = inttoptr i64 %t128 to ptr
  %t131 = load ptr, ptr %l69, !tbaa !29
  %t132 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %t130, ptr %t131)
  store %"compiler/source:Span" %t132, ptr %l71
  br label %bb30
bb30:
  %t133 = load ptr, ptr %l68, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l71
  %t135 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s2, ptr %t133, %"compiler/source:Span" %t134)
  store { i64, ptr } %t135, ptr %l72
  br label %bb31
bb31:
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t138 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = add i64 %t137, %t140
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t136, i64 %t137)
  %t146 = getelementptr i8, ptr %t145, i64 %t137
  call void @olang_textcopy(ptr %t146, ptr %t139, i64 %t140)
  %t147 = getelementptr i8, ptr %t146, i64 %t140
  call void @olang_textcopy(ptr %t147, ptr %t142, i64 %t143)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t145, 1
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = extractvalue { i64, ptr } %t149, 1
  %t153 = mul i64 %t151, 1
  %t154 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t154, ptr %t152, i64 %t153, i1 false)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  %t158 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCompareWhat(ptr %s2, ptr %v0, { i64, ptr } %t156)
  store %"compiler/diagmsg:Msg" %t158, ptr %l75
  br label %bb32
bb32:
  %t159 = load ptr, ptr %l66, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l67
  %t161 = load %"compiler/diagmsg:Msg", ptr %l75
  %t162 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t159, %"compiler/source:Span" %t160, %"compiler/diagmsg:Msg" %t161)
  store i64 %t162, ptr %l76
  br label %bb33
bb33:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l1
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t163, %"compiler/source:Span" %t164, i32 %t165, i64 0)
  store ptr %t169, ptr %l80
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  %t170 = load ptr, ptr %l80, !tbaa !29
  store ptr %t170, ptr %rv
  br label %ret
bb35:
  %t171 = load i32, ptr %l6, !tbaa !23
  %t172 = load i32, ptr %l7, !tbaa !23
  %t175 = icmp ne i32 %t171, %t172
  br i1 %t175, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s4
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  store ptr %t180, ptr %l85, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l86, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l87, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  %t189 = load i32, ptr %l6, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l92
  br label %bb38
bb37:
  br label %bb47
bb38:
  %t193 = load ptr, ptr %l87, !tbaa !29
  %t194 = load i32, ptr %l92, !tbaa !23
  %t195 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %s4, ptr %t193, i32 %t194)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t195, ptr %l93
  br label %bb39
bb39:
  %t196 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  %t197 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %t197
  store ptr %t197, ptr %l94, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l95, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/generic:Program", ptr %t202, i32 0, i32 2
  %t205 = load i32, ptr %l7, !tbaa !23
  %t208 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t204, i32 %t205)
  store i32 %t208, ptr %l100
  br label %bb40
bb40:
  %t209 = load ptr, ptr %l95, !tbaa !29
  %t210 = load i32, ptr %l100, !tbaa !23
  %t211 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %s4, ptr %t209, i32 %t210)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t211, ptr %l101
  br label %bb41
bb41:
  %t212 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  %t213 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %t213
  %t214 = load ptr, ptr %l86, !tbaa !29
  %t215 = load ptr, ptr %l94, !tbaa !29
  %t217 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %s4, ptr %s4, ptr %s4, ptr %t214, ptr %t215, ptr %t213)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t217, ptr %l103
  br label %bb42
bb42:
  %t218 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  %t219 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %t219
  %t221 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s4, ptr %s4, ptr %t219)
  store { i64, ptr } %t221, ptr %l105
  br label %bb43
bb43:
  %t222 = load ptr, ptr %l85, !tbaa !29
  %t223 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t224 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %s4, ptr %t222, { i64, ptr } %t223)
  store i32 %t224, ptr %l106
  br label %bb44
bb44:
  %t225 = load i32, ptr %l106, !tbaa !23
  store i32 %t225, ptr %l9, !tbaa !23
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l4, !tbaa !29
  %t228 = load i32, ptr %l9, !tbaa !23
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrRecode(ptr %v0, ptr %v1, ptr %v0, ptr %t226, ptr %t227, i32 %t228)
  store ptr %t232, ptr %l110
  br label %bb45
bb45:
  %t233 = load ptr, ptr %l110, !tbaa !29
  store ptr %t233, ptr %l4, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l5, !tbaa !29
  %t236 = load i32, ptr %l9, !tbaa !23
  %t240 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrRecode(ptr %v0, ptr %v2, ptr %v0, ptr %t234, ptr %t235, i32 %t236)
  store ptr %t240, ptr %l114
  br label %bb46
bb46:
  %t241 = load ptr, ptr %l114, !tbaa !29
  store ptr %t241, ptr %l5, !tbaa !29
  call void @__olang_scope_close(ptr %s4)
  br label %bb47
bb47:
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l115, !tbaa !29
  %t243 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t243, ptr %l116
  %t244 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t244, ptr %l117, !tbaa !23
  %t245 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t247 = trunc i64 93 to i32
  %t248 = icmp eq i32 %t245, %t247
  br i1 %t248, label %bb48, label %bb49
bb48:
  store i32 13, ptr %l120
  br label %bb50
bb49:
  store i32 14, ptr %l120
  br label %bb50
bb50:
  %t252 = load ptr, ptr %l4, !tbaa !29
  store ptr %t252, ptr %l123, !tbaa !29
  %t253 = load ptr, ptr %l5, !tbaa !29
  store ptr %t253, ptr %l125, !tbaa !29
  %t255 = load ptr, ptr %l123, !tbaa !29
  %t256 = call ptr @__olang_scope_of(ptr %t255, ptr null)
  %t257 = ptrtoint ptr %t256 to i64
  %t258 = load ptr, ptr %l125, !tbaa !29
  %t259 = call ptr @__olang_scope_of(ptr %t258, ptr null)
  %t260 = ptrtoint ptr %t259 to i64
  %t262 = inttoptr i64 %t257 to ptr
  %t264 = inttoptr i64 %t260 to ptr
  %t265 = load ptr, ptr %l115, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l116
  %t267 = load i32, ptr %l117, !tbaa !23
  %t268 = load i32, ptr %l120, !range !{i32 0, i32 51}
  %t269 = load ptr, ptr %l123, !tbaa !29
  %t270 = load ptr, ptr %l125, !tbaa !29
  %t271 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t262, ptr %t264, ptr %v3, ptr %t265, %"compiler/source:Span" %t266, i32 %t267, i32 %t268, ptr %t269, ptr %t270)
  store ptr %t271, ptr %l128
  br label %bb51
bb51:
  %t272 = load ptr, ptr %l128, !tbaa !29
  store ptr %t272, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca %"compiler/diagmsg:Msg"
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l10, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  store ptr %t5, ptr %l11, !tbaa !29
  %t6 = load ptr, ptr %l11, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t6, i32 0, i32 16
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = add i64 %t8, 1
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 16
  store i64 %t10, ptr %t13, !tbaa !24
  store { i64, ptr } %a1, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t28, ptr %l21, !tbaa !27
  %t29 = load i64, ptr %l6, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 %t29
  %t34 = load i32, ptr %t33, !tbaa !33
  store i32 %t34, ptr %l8, !tbaa !23
  %t36 = load i32, ptr %l8, !tbaa !23
  %t37 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t40 = icmp ne i32 %t36, %t37
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %t42, i32 %t43)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l6, !tbaa !24
  br label %bb2
bb11:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/check:frame", ptr %t50, i32 0, i32 15
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = icmp eq i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l34, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l35
  br i1 %a3, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  %t61 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsCanFail(ptr %v0)
  store %"compiler/diagmsg:Msg" %t61, ptr %l38
  br label %bb16
bb15:
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnhandledFallibleCall(ptr %v0)
  store %"compiler/diagmsg:Msg" %t62, ptr %l39
  br label %bb17
bb16:
  %t63 = load %"compiler/diagmsg:Msg", ptr %l38
  store %"compiler/diagmsg:Msg" %t63, ptr %l37
  br label %bb18
bb17:
  %t64 = load %"compiler/diagmsg:Msg", ptr %l39
  store %"compiler/diagmsg:Msg" %t64, ptr %l37
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l35
  %t67 = load %"compiler/diagmsg:Msg", ptr %l37
  %t68 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t65, %"compiler/source:Span" %t66, %"compiler/diagmsg:Msg" %t67)
  store i64 %t68, ptr %l40
  br label %bb19
bb19:
  br label %bb20
bb20:
  store i32 2, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l16 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l41 = alloca i64
  %l44 = alloca i64
  %l63 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l77 = alloca { i64, [2 x i64] }
  %l82 = alloca i32
  %l85 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t133 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i32, ptr %l2, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t7 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t1, i64 %t4)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l16
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l3
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 31
  %t12 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t15 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t11, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12)
  %t16 = extractvalue { i32, i64 } %t15, 1
  %t17 = extractvalue { i32, i64 } %t15, 0
  store i32 %t17, ptr %l22
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store i64 %t16, ptr %l21
  br label %bb2
bb2:
  %t20 = load i64, ptr %l21, !tbaa !24
  store i64 %t20, ptr %l17, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l17, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t26, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load i32, ptr %l2, !tbaa !23
  %t37 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t31, i64 %t32, i32 %t33)
  store ptr %t37, ptr %l30
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l30, !tbaa !29
  store ptr %t38, ptr %l5, !tbaa !29
  %t39 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t39, ptr %l31
  br label %bb10
bb10:
  %t40 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t40, ptr %l6
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t43 = icmp eq ptr %t41, null
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb11, label %bb12
bb11:
  store i64 0, ptr %l7, !tbaa !24
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = getelementptr %"compiler/ast:VarDecl", ptr %t47, i32 0, i32 0
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp sgt i64 %t54, %t55
  br i1 %t58, label %bb13, label %bb14
bb12:
  br label %bb28
bb13:
  %t60 = load i64, ptr %l9, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb18
bb15:
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = sub i64 %t72, 1
  %t75 = load i64, ptr %l9, !tbaa !24
  %t78 = sdiv i64 %t74, %t75
  store i64 %t78, ptr %l44, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l44, !tbaa !24
  store i64 %t80, ptr %l41, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l41, !tbaa !24
  store i64 %t81, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb19
bb19:
  %t82 = load i64, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb20, label %bb21
bb20:
  br label %bb27
bb21:
  br label %bb22
bb22:
  %t90 = load i64, ptr %l7, !tbaa !24
  %t91 = load i64, ptr %l11, !tbaa !24
  %t92 = load i64, ptr %l9, !tbaa !24
  %t95 = mul i64 %t91, %t92
  %t98 = add i64 %t90, %t95
  store i64 %t98, ptr %l12, !tbaa !24
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t102 = getelementptr %"compiler/ast:VarDecl", ptr %t100, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l63, !tbaa !27
  %t104 = load i64, ptr %l12, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i32, ptr %t107, i64 %t104
  %t109 = load i32, ptr %t108, !tbaa !33
  %t110 = load i32, ptr %l2, !tbaa !23
  %t113 = icmp eq i32 %t109, %t110
  br i1 %t113, label %bb23, label %bb24
bb23:
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/ast:VarDecl", ptr %t115, i32 0, i32 1
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l69, !tbaa !27
  %t119 = load i64, ptr %l12, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr %"compiler/source:Span", ptr %t122, i64 %t119
  %t124 = load %"compiler/source:Span", ptr %t123
  store %"compiler/source:Span" %t124, ptr %l6
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t126 = load i64, ptr %l11, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l11, !tbaa !24
  br label %bb19
bb27:
  br label %bb28
bb28:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l74, !tbaa !29
  %t131 = load i64, ptr %l1, !tbaa !24
  %t132 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [2 x i64] }, ptr %t133, i32 0, i32 0
  store i64 6, ptr %t134
  %t136 = insertvalue { i64, i32 } undef, i64 %t131, 0
  %t138 = insertvalue { i64, i32 } %t136, i32 %t132, 1
  %t139 = getelementptr { i64, [2 x i64] }, ptr %t133, i32 0, i32 1
  store { i64, i32 } %t138, ptr %t139
  %t140 = load { i64, [2 x i64] }, ptr %t133
  store { i64, [2 x i64] } %t140, ptr %l77
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t146, i32 0, i32 %t147, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t150, ptr %l82
  br label %bb29
bb29:
  %t151 = load i64, ptr %l1, !tbaa !24
  %t152 = load %"compiler/source:Span", ptr %l6
  %t153 = load ptr, ptr %l74, !tbaa !29
  %t154 = load { i64, [2 x i64] }, ptr %l77
  %t155 = load i32, ptr %l82, !tbaa !23
  %t158 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t153, { i64, [2 x i64] } %t154, i32 %t155, i64 %t151, %"compiler/source:Span" %t152)
  store i64 %t158, ptr %l85
  br label %bb30
bb30:
  %t159 = load i64, ptr %l85, !tbaa !24
  store i64 %t159, ptr %l4, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 31
  %t163 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t164 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t162, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t163, i64 %t164)
  br label %bb31
bb31:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %t168, i64 %t169)
  br label %bb32
bb32:
  %t172 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t172, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/typed:Local"
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca %"compiler/typed:Local"
  %l20 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l61 = alloca ptr
  %l68 = alloca ptr
  %l73 = alloca ptr
  %l77 = alloca i64
  %l81 = alloca i1
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca i64
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l97 = alloca %"compiler/typed:Local"
  %l99 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l104 = alloca i1
  %l107 = alloca i1
  %l111 = alloca { i64, ptr }
  %l121 = alloca i1
  %l123 = alloca i1
  %l125 = alloca i1
  %l126 = alloca i1
  %l128 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t3, i64 %t4)
  store %"compiler/typed:Local" %t7, ptr %l17
  br label %bb1
bb1:
  %t8 = load %"compiler/typed:Local", ptr %l17
  store %"compiler/typed:Local" %t8, ptr %l5
  %t9 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = icmp eq i32 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb5
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 2
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t14, i32 %t16)
  store i1 %t19, ptr %l23
  br label %bb4
bb4:
  %t20 = load i1, ptr %l23, !tbaa !21
  store i1 %t20, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l20, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb9
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 2
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %t22, i32 %t24, i64 0)
  store i1 %t27, ptr %l27
  br label %bb8
bb8:
  %t28 = load i1, ptr %l27, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l24, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/typed:LocalUses", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t34, i64 %t35)
  store i1 %t38, ptr %l32
  br label %bb13
bb13:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr %"compiler/typed:LocalUses", ptr %t40, i32 0, i32 3
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t42, i64 %t43)
  store i1 %t46, ptr %l37
  br label %bb16
bb16:
  %t47 = load i1, ptr %l37, !tbaa !21
  store i1 %t47, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t48 = load i1, ptr %l33, !tbaa !21
  br i1 %t48, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb21
bb19:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/typed:LocalUses", ptr %t49, i32 0, i32 4
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t51, i64 %t52)
  store i1 %t55, ptr %l42
  br label %bb20
bb20:
  %t56 = load i1, ptr %l42, !tbaa !21
  store i1 %t56, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t57 = load i1, ptr %l38, !tbaa !21
  br i1 %t57, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb25
bb23:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t60 = load i64, ptr %l4, !tbaa !24
  %t64 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elentAt(ptr %v0, ptr %v2, ptr %t58, ptr %t59, i64 %t60)
  store i1 %t64, ptr %l47
  br label %bb24
bb24:
  %t65 = load i1, ptr %l47, !tbaa !21
  store i1 %t65, ptr %l43, !tbaa !21
  br label %bb25
bb25:
  %t66 = load i1, ptr %l43, !tbaa !21
  store i1 %t66, ptr %l6, !tbaa !21
  %t67 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 7}
  %t70 = trunc i64 0 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb26, label %bb27
bb26:
  %t73 = load i1, ptr %l6, !tbaa !21
  br i1 %t73, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  store %olang.scope zeroinitializer, ptr %s3
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t77 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %s3, ptr %s3, ptr %t75, ptr %t76, ptr %l5, i64 %t77, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb32:
  %t82 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 7}
  %t85 = trunc i64 1 to i32
  %t86 = icmp eq i32 %t83, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t92 = getelementptr %"compiler/typed:LocalUses", ptr %t90, i32 0, i32 10
  %t93 = load i64, ptr %l4, !tbaa !24
  %t96 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v2, ptr %v2, ptr %t92, i64 %t93)
  store ptr %t96, ptr %l61
  br label %bb36
bb36:
  %t97 = load ptr, ptr %l61, !tbaa !29
  store ptr %t97, ptr %l7, !tbaa !29
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  br i1 %t100, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb38:
  br label %bb39
bb39:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load ptr, ptr %l7, !tbaa !29
  %t111 = call ptr @compiler_2ftyped_2eCopiedOf(ptr %v0, ptr %v2, ptr %v2, ptr %t107, ptr %t108)
  store ptr %t111, ptr %l68
  br label %bb40
bb40:
  %t112 = load ptr, ptr %l68, !tbaa !29
  store ptr %t112, ptr %l8, !tbaa !29
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t115 = icmp eq ptr %t113, null
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s6
  %t119 = load ptr, ptr %l8, !tbaa !29
  %t121 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t119)
  store ptr %t121, ptr %l73
  br label %bb43
bb42:
  br label %bb61
bb43:
  %t122 = load ptr, ptr %l73, !tbaa !29
  store ptr %t122, ptr %l9, !tbaa !29
  %t123 = load ptr, ptr %l9, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  br label %bb46
bb46:
  %t127 = load ptr, ptr %l9, !tbaa !29
  %t129 = call i64 @compiler_2fcheck_2ehandleRoot(ptr %v2, ptr %t127)
  store i64 %t129, ptr %l77
  br label %bb47
bb47:
  %t130 = load i64, ptr %l77, !tbaa !24
  store i64 %t130, ptr %l10, !tbaa !24
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t133 = getelementptr %"compiler/typed:LocalUses", ptr %t131, i32 0, i32 8
  %t134 = load i64, ptr %l4, !tbaa !24
  %t137 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t133, i64 %t134)
  store i1 %t137, ptr %l81
  br label %bb48
bb48:
  %t138 = load i1, ptr %l81, !tbaa !21
  br i1 %t138, label %bb49, label %bb50
bb49:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l82, !tbaa !27
  br label %bb54
bb50:
  %t139 = load i1, ptr %l6, !tbaa !21
  br i1 %t139, label %bb51, label %bb52
bb51:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l84, !tbaa !27
  br label %bb53
bb52:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l84, !tbaa !27
  br label %bb53
bb53:
  %t141 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t141, ptr %l82, !tbaa !27
  br label %bb54
bb54:
  %t142 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l85, !tbaa !29
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l86, !tbaa !29
  store ptr %l5, ptr %l87, !tbaa !29
  %t145 = load i64, ptr %l3, !tbaa !24
  store i64 %t145, ptr %l88, !tbaa !24
  store { i64, ptr } %t142, ptr %l89, !tbaa !27
  %t147 = load i64, ptr %l10, !tbaa !24
  %t149 = icmp sge i64 %t147, 0
  br i1 %t149, label %bb55, label %bb56
bb55:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l93, !tbaa !29
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Body", ptr %t152, i32 0, i32 7
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t154, i64 %t155)
  store %"compiler/typed:Local" %t158, ptr %l97
  br label %bb57
bb56:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l92, !tbaa !27
  br label %bb59
bb57:
  %t159 = getelementptr %"compiler/typed:Local", ptr %l97, i32 0, i32 0
  %t160 = load i32, ptr %t159, !tbaa !23
  %t161 = load ptr, ptr %l93, !tbaa !29
  %t163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t161, i32 %t160)
  store { i64, ptr } %t163, ptr %l99
  br label %bb58
bb58:
  %t164 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t164, ptr %l92, !tbaa !27
  br label %bb59
bb59:
  %t165 = load ptr, ptr @__olang_prog_scope
  %t166 = load ptr, ptr %l85, !tbaa !29
  %t167 = load ptr, ptr %l86, !tbaa !29
  %t168 = load ptr, ptr %l87, !tbaa !29
  %t169 = load i64, ptr %l88, !tbaa !24
  %t170 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t171 = load { i64, ptr }, ptr %l92, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %t165, ptr %s6, ptr %t166, ptr %t167, ptr %t168, i64 %t169, { i64, ptr } %t170, { i64, ptr } %t171)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb61:
  %t172 = load ptr, ptr %l7, !tbaa !29
  %t174 = call ptr @compiler_2fcheck_2ehandleCall(ptr %v2, ptr %v2, ptr %t172)
  store ptr %t174, ptr %l101
  br label %bb62
bb62:
  %t175 = load ptr, ptr %l101, !tbaa !29
  store ptr %t175, ptr %l12, !tbaa !29
  %t176 = load ptr, ptr %l12, !tbaa !29
  %t178 = icmp eq ptr %t176, null
  br i1 %t178, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb66
bb64:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load ptr, ptr %l12, !tbaa !29
  %t184 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewCallee(ptr %v0, ptr %v2, ptr %t180, ptr %t181)
  store i1 %t184, ptr %l107
  br label %bb65
bb65:
  %t185 = load i1, ptr %l107, !tbaa !21
  %t186 = xor i1 %t185, true
  store i1 %t186, ptr %l104, !tbaa !21
  br label %bb66
bb66:
  %t188 = load i1, ptr %l104, !tbaa !21
  br i1 %t188, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb68:
  br label %bb69
bb69:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l12, !tbaa !29
  %t193 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleCallee(ptr %v0, ptr %v2, ptr %s0, ptr %t189, ptr %t190)
  store { i64, ptr } %t193, ptr %l111
  br label %bb70
bb70:
  %t194 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t194, ptr %l13, !tbaa !27
  %t195 = load i1, ptr %l6, !tbaa !21
  br i1 %t195, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s9
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t199 = load i64, ptr %l3, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %s9, ptr %s0, ptr %t197, ptr %t198, ptr %l5, i64 %t199, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } %t200)
  br label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s10
  %t206 = load ptr, ptr %l2, !tbaa !29
  %t208 = getelementptr %"compiler/typed:LocalUses", ptr %t206, i32 0, i32 8
  %t209 = load i64, ptr %l4, !tbaa !24
  %t212 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t208, i64 %t209)
  store i1 %t212, ptr %l121
  br label %bb74
bb73:
  call void @__olang_scope_close(ptr %s9)
  br label %bb87
bb74:
  %t213 = load i1, ptr %l121, !tbaa !21
  %t214 = xor i1 %t213, true
  br i1 %t214, label %bb75, label %bb76
bb75:
  %t216 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t218 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s10, { i64, ptr } %t216, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t218, ptr %l125
  br label %bb77
bb76:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb82
bb77:
  %t219 = load i1, ptr %l125, !tbaa !21
  br i1 %t219, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb81
bb79:
  %t220 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t222 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s10, { i64, ptr } %t220, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t222, ptr %l128
  br label %bb80
bb80:
  %t223 = load i1, ptr %l128, !tbaa !21
  store i1 %t223, ptr %l126, !tbaa !21
  br label %bb81
bb81:
  %t224 = load i1, ptr %l126, !tbaa !21
  store i1 %t224, ptr %l123, !tbaa !21
  br label %bb82
bb82:
  %t225 = load i1, ptr %l123, !tbaa !21
  br i1 %t225, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s11
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t228 = load i64, ptr %l3, !tbaa !24
  %t229 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %s11, ptr %s0, ptr %t226, ptr %t227, ptr %l5, i64 %t228, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, { i64, ptr } %t229)
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_scope_close(ptr %s11)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s10)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l9 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca i64
  %l18 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca i32
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t10, { i64, ptr } %a2)
  store i32 %t14, ptr %l9
  br label %bb1
bb1:
  %t15 = load i32, ptr %l9, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l11, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l14
  br label %bb2
bb2:
  %t25 = load i32, ptr %l3, !tbaa !23
  %t26 = load ptr, ptr %l11, !tbaa !29
  %t27 = load i32, ptr %l14, !tbaa !23
  %t29 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t26, i32 %t27, i32 %t25)
  store i64 %t29, ptr %l16
  br label %bb3
bb3:
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = icmp sge i64 %t30, 0
  br i1 %t31, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb9
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l20, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l23
  br label %bb6
bb6:
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = load ptr, ptr %l20, !tbaa !29
  %t44 = load i32, ptr %l23, !tbaa !23
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %s0, ptr %t43, i32 %t44, i32 %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l25
  br label %bb7
bb7:
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l25)
  store i64 %t48, ptr %l27
  br label %bb8
bb8:
  %t49 = load i64, ptr %l27, !tbaa !24
  %t50 = icmp sgt i64 %t49, 0
  store i1 %t50, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t52 = load i1, ptr %l18, !tbaa !21
  store i1 %t52, ptr %rv
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 72
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
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 78
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
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 19
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = getelementptr %"compiler/check:inPlaceRead", ptr %l3, i32 0, i32 2
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = getelementptr %"compiler/check:inPlaceRead", ptr %l3, i32 0, i32 3
  %t38 = load %"compiler/source:Span", ptr %t37
  %t41 = call %"compiler/check:Gap" @compiler_2fcheck_3aGap_2ector(ptr %v0, ptr %v0, i64 %t36, %"compiler/source:Span" %t38, { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d23, i32 0, i32 1) })
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca ptr
  %l16 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v3, ptr %t1, ptr %a2)
  store ptr %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l7, !tbaa !29
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t12, %"compiler/source:Span" %a1, ptr %t14, { i64, ptr } %a3, i32 0)
  store ptr %t21, ptr %l16
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l16, !tbaa !29
  store ptr %t22, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCStrRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %s0, ptr %a0, i32 %a1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisGlobalBody(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca ptr
  %l9 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 18
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  %t15 = extractvalue { i64, [2 x i64] } %t11, 0
  %t16 = icmp eq i64 %t15, 6
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_4bb92e4e6aa9fa92_ae49a41c9a1a92ee)
  unreachable
bb10:
  %t18 = load i1, ptr %l9, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 20 to i32
  %t14 = icmp eq i32 %t11, %t13
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca [2 x i64]
  %l12 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i32
  %l21 = alloca %"compiler/check:laneNode"
  %l22 = alloca i32
  %l26 = alloca %"compiler/check:laneNode"
  %l28 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca ptr
  %l35 = alloca i64
  %l36 = alloca i32
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i32
  %l46 = alloca i64
  %l51 = alloca i32
  %l52 = alloca %"compiler/check:laneNode"
  %l53 = alloca i64
  %l54 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %t1, ptr %a4)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v2, ptr %t7, ptr %a5)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l16, !tbaa !29
  %t14 = load i32, ptr %l3, !range !{i32 0, i32 113}
  store i32 %t14, ptr %l17
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 46
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t17, i64 %t18)
  store %"compiler/check:laneNode" %t21, ptr %l21
  br label %bb3
bb3:
  %t22 = getelementptr %"compiler/check:laneNode", ptr %l21, i32 0, i32 8
  %t23 = load i32, ptr %t22, !tbaa !23
  store i32 %t23, ptr %l22, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 46
  %t27 = load i64, ptr %l7, !tbaa !24
  %t30 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t26, i64 %t27)
  store %"compiler/check:laneNode" %t30, ptr %l26
  br label %bb4
bb4:
  %t31 = getelementptr %"compiler/check:laneNode", ptr %l26, i32 0, i32 8
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load i32, ptr %l17, !range !{i32 0, i32 113}
  %t35 = load i32, ptr %l22, !tbaa !23
  %t37 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinType(ptr %v0, ptr %t33, i32 %t34, i32 %t35, i32 %t32)
  store i32 %t37, ptr %l28
  br label %bb5
bb5:
  %t38 = load i32, ptr %l28, !tbaa !23
  store i32 %t38, ptr %l8, !tbaa !23
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = insertvalue [2 x i64] undef, i64 %t39, 0
  %t44 = insertvalue [2 x i64] %t42, i64 %t40, 1
  store [2 x i64] %t44, ptr %l9
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l32, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t47, ptr %l33
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l34, !tbaa !29
  %t49 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneBin, !tbaa !24
  store i64 %t49, ptr %l35, !tbaa !24
  %t50 = load i32, ptr %l3, !range !{i32 0, i32 113}
  store i32 %t50, ptr %l36
  %t51 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t51, ptr %l37
  %t52 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t52, ptr %l38
  %t53 = load i64, ptr %l6, !tbaa !24
  store i64 %t53, ptr %l39, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  store i64 %t54, ptr %l40, !tbaa !24
  %t55 = load i32, ptr %l8, !tbaa !23
  store i32 %t55, ptr %l41, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = insertvalue { i64, ptr } undef, i64 2, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %l9, 1
  %t60 = load %"compiler/source:Span", ptr %l2
  %t64 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %s0, ptr %t56, { i64, ptr } %t59, %"compiler/source:Span" %t60)
  store i64 %t64, ptr %l46
  br label %bb6
bb6:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = insertvalue { i64, ptr } undef, i64 2, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %l9, 1
  %t69 = load i32, ptr %l8, !tbaa !23
  %t73 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %s0, ptr %t65, { i64, ptr } %t68, i32 %t69)
  store i32 %t73, ptr %l51
  br label %bb7
bb7:
  %t74 = load i64, ptr %l35, !tbaa !24
  %t75 = load i32, ptr %l36, !range !{i32 0, i32 113}
  %t76 = load %"compiler/source:Span", ptr %l37
  %t77 = load %"compiler/source:Span", ptr %l38
  %t78 = load i64, ptr %l39, !tbaa !24
  %t79 = load i64, ptr %l40, !tbaa !24
  %t80 = load i32, ptr %l41, !tbaa !23
  %t81 = load i64, ptr %l46, !tbaa !24
  %t82 = load i32, ptr %l51, !tbaa !23
  %t83 = call %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v0, i64 %t74, i32 %t75, %"compiler/source:Span" %t76, %"compiler/source:Span" %t77, i64 %t78, i64 %t79, i64 -1, ptr null, i32 %t80, i64 %t81, i32 %t82)
  store %"compiler/check:laneNode" %t83, ptr %l52
  br label %bb8
bb8:
  %t84 = load ptr, ptr %l34, !tbaa !29
  %t85 = load %"compiler/check:laneNode", ptr %l52
  %t86 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v0, ptr %t84, %"compiler/check:laneNode" %t85)
  store i64 %t86, ptr %l53
  br label %bb9
bb9:
  %t87 = load ptr, ptr %l32, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l33
  %t89 = load i64, ptr %l53, !tbaa !24
  %t90 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v3, ptr %t87, %"compiler/source:Span" %t88, i64 %t89)
  store ptr %t90, ptr %l54
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t91 = load ptr, ptr %l54, !tbaa !29
  store ptr %t91, ptr %rv
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
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 46
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i1
  %l26 = alloca i32
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneMagic, !tbaa !24
  %t26 = icmp sge i64 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l3, !tbaa !24
  store i64 %t28, ptr %l16, !tbaa !24
  %t29 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneMagic, !tbaa !24
  store i64 %t29, ptr %l17, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 46
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eLen_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l20
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb9
bb8:
  %t35 = load i64, ptr %l17, !tbaa !24
  %t36 = load i64, ptr %l20, !tbaa !24
  %t37 = add i64 %t35, %t36
  %t38 = load i64, ptr %l16, !tbaa !24
  %t40 = icmp slt i64 %t38, %t37
  store i1 %t40, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t42 = load i1, ptr %l15, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l2, !tbaa !23
  %t47 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l26
  br label %bb12
bb11:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t49 = load i32, ptr %l26, !tbaa !23
  %t51 = icmp ne i32 %t49, %t48
  store i1 %t51, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l23, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t55 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneMagic, !tbaa !24
  %t58 = sub i64 %t54, %t55
  store i64 %t58, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %rv
  br label %ret
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i64 -1, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_e09b0660792e8b62_512dd44834885876)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/check:laneVals"
  %l7 = alloca i64
  %l11 = alloca %"compiler/check:laneVals"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l27 = alloca ptr
  %s0 = alloca %olang.scope
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 44
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t9 = load i64, ptr %l2, !tbaa !24
  %t13 = call %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %s0, ptr %t7, %"compiler/source:Span" %t8, i64 %t9)
  store %"compiler/check:laneVals" %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load %"compiler/check:laneVals", ptr %l11
  store %"compiler/check:laneVals" %t14, ptr %l4
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t16, ptr %l13
  %t17 = load i64, ptr %l2, !tbaa !24
  store i64 %t17, ptr %l14, !tbaa !24
  store ptr %l4, ptr %l15, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l16, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t19, ptr %l17
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t20)
  store i32 %t22, ptr %l19
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l17
  %t25 = load i32, ptr %l19, !tbaa !23
  %t26 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t23, %"compiler/source:Span" %t24, i32 %t25, i64 0)
  store ptr %t26, ptr %l20
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l12, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l13
  %t29 = load i64, ptr %l14, !tbaa !24
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load ptr, ptr %l20, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %s0, ptr %v0, ptr %v0, ptr %t27, %"compiler/source:Span" %t28, i64 %t29, ptr %t30, ptr %t31)
  store ptr %t32, ptr %l21
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 44
  %t36 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eTrunca_Hc8531d0d5535cc9766a27157f9c0b07c(ptr %v0, ptr %t35, i64 %t36)
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t43 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t39, %"compiler/source:Span" %t40)
  store ptr %t43, ptr %l27
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load ptr, ptr %l27, !tbaa !29
  store ptr %t44, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTarget(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l23 = alloca ptr
  %l27 = alloca ptr
  %l30 = alloca ptr
  %rv = alloca i64
  %t49 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  store ptr %t7, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t8)
  store i32 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = load i32, ptr %l10, !tbaa !23
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = load i32, ptr %l11, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t15, i32 %t16, i64 %t14)
  store i32 %t18, ptr %l13
  br label %bb3
bb3:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  %t22 = load i32, ptr %l3, !tbaa !23
  %t26 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t20, %"compiler/source:Span" %t21, i32 %t22)
  store i64 %t26, ptr %l17
  br label %bb4
bb4:
  %t27 = load i64, ptr %l17, !tbaa !24
  store i64 %t27, ptr %l4, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t29, ptr %l19
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = trunc i64 %t30 to i32
  store i32 %t32, ptr %l22, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l1
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t35, %"compiler/source:Span" %t36, ptr %t37)
  store ptr %t41, ptr %l27
  br label %bb5
bb5:
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = load %"compiler/source:Span", ptr %l1
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t44, ptr %t45, i32 %t42, %"compiler/source:Span" %t43)
  store ptr %t48, ptr %l30
  br label %bb6
bb6:
  store { i64, [3 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 0
  store i64 0, ptr %t50
  %t51 = load %"compiler/source:Span", ptr %l19
  %t52 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t51, 0
  %t53 = load i32, ptr %l22, !tbaa !23
  %t54 = insertvalue { %"compiler/source:Span", i32, ptr } %t52, i32 %t53, 1
  %t55 = load ptr, ptr %l30, !tbaa !29
  %t56 = insertvalue { %"compiler/source:Span", i32, ptr } %t54, ptr %t55, 2
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t56, ptr %t57
  %t58 = load { i64, [3 x i64] }, ptr %t49
  %t60 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t58, ptr %t60
  %t61 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t61, ptr %t60)
  br label %bb7
bb7:
  %t63 = load i64, ptr %l4, !tbaa !24
  store i64 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l16 = alloca i1
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l42 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load %"compiler/source:Span", ptr %l1
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %t2)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l12, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = sub i64 %t16, 1
  %t20 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t23)
  store i1 %t25, ptr %l16
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb13
bb5:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb9
bb7:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l18, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = sub i64 %t28, 1
  %t32 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i8, ptr %t33, i64 %t30
  %t35 = load i8, ptr %t34, !tbaa !32
  %t37 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t35)
  store i1 %t37, ptr %l22
  br label %bb8
bb8:
  %t38 = load i1, ptr %l22, !tbaa !21
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l17, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l24, !tbaa !27
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t41, 1
  %t45 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i8, ptr %t46, i64 %t43
  %t48 = load i8, ptr %t47, !tbaa !32
  %t50 = icmp eq i8 %t48, 95
  store i1 %t50, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l23, !tbaa !21
  store i1 %t52, ptr %l11, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l11, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = sub i64 %t56, 1
  store i64 %t58, ptr %l3, !tbaa !24
  br label %bb17
bb17:
  br label %bb2
bb18:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t66 = icmp eq i64 %t60, %t63
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t68 = load %"compiler/source:Span", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t68, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t70 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t71 = load i32, ptr %t70, !tbaa !23
  %t72 = load i64, ptr %l3, !tbaa !24
  %t74 = trunc i64 %t72 to i32
  %t77 = add i32 %t71, %t74
  %t78 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t79 = load i32, ptr %t78, !tbaa !23
  %t82 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t77, i32 %t79)
  store %"compiler/source:Span" %t82, ptr %l42
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load %"compiler/source:Span", ptr %l42
  store %"compiler/source:Span" %t83, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l3 = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t6, i32 %a1)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberHint(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l25 = alloca { i64, ptr }
  %l26 = alloca %"compiler/msgs:Nearest"
  %l30 = alloca i32
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i32
  %l47 = alloca i64
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l59 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l83 = alloca i1
  %l86 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca ptr
  %l98 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca i64
  %l108 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l124 = alloca i1
  %l129 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l131 = alloca i64
  %l132 = alloca { i64, ptr }
  %l136 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l137 = alloca ptr
  %l139 = alloca ptr
  %l140 = alloca i32
  %l142 = alloca i1
  %l151 = alloca { i64, ptr }
  %l155 = alloca i1
  %l158 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l161 = alloca i1
  %l162 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %wh12 = alloca ptr
  %wc12 = alloca ptr
  %ws12 = alloca i32
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } %t5, ptr %l25
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t7 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t6)
  store %"compiler/msgs:Nearest" %t7, ptr %l26
  br label %bb2
bb2:
  %t8 = load %"compiler/msgs:Nearest", ptr %l26
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t8, ptr %t9
  store ptr %t9, ptr %l4, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t11, i32 %a1)
  store i32 %t15, ptr %l30
  br label %bb3
bb3:
  %t16 = load i32, ptr %l30, !tbaa !23
  store i32 %t16, ptr %l5, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodNames(ptr %v0, ptr %s1, ptr %t20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l33
  br label %bb4
bb4:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t24 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %t24
  store ptr %t24, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load i64, ptr %l7, !tbaa !24
  store i64 %t26, ptr %l35, !tbaa !24
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s1, ptr %t27)
  store i64 %t29, ptr %l37
  br label %bb6
bb6:
  %t30 = load i64, ptr %l35, !tbaa !24
  %t31 = load i64, ptr %l37, !tbaa !24
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
  store i32 %t40, ptr %l42
  br label %bb10
bb10:
  %t41 = load i32, ptr %l42, !tbaa !23
  store i32 %t41, ptr %l8, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l5, !tbaa !23
  %t47 = load i32, ptr %l8, !tbaa !23
  %t51 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t45, i32 %t46, i32 %t47)
  store i64 %t51, ptr %l47
  br label %bb11
bb11:
  %t52 = load i64, ptr %l47, !tbaa !24
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
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l54
  br label %bb14
bb13:
  br label %bb20
bb14:
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l10
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %l10)
  store i64 %t69, ptr %l56
  br label %bb15
bb15:
  %t70 = load i64, ptr %l56, !tbaa !24
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
  store i64 %t74, ptr %l59
  br label %bb19
bb19:
  %t75 = load i64, ptr %l59, !tbaa !24
  store i64 %t75, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l8, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t76, i32 %t77)
  store { i64, ptr } %t80, ptr %l62
  br label %bb21
bb21:
  %t81 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t81, ptr %l63, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 0
  %t85 = load i8, ptr %t84, !tbaa !32
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t85)
  store i1 %t87, ptr %l65
  br label %bb22
bb22:
  %t88 = load i1, ptr %l65, !tbaa !21
  br i1 %t88, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb27
bb24:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t92, i64 %t93)
  store i64 %t96, ptr %l70
  br label %bb25
bb25:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t97)
  store ptr %t99, ptr %l72
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l72, !tbaa !29
  %t102 = getelementptr %"compiler/check:frame", ptr %t100, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = load i64, ptr %l70, !tbaa !24
  %t106 = icmp eq i64 %t104, %t103
  store i1 %t106, ptr %l66, !tbaa !21
  br label %bb27
bb27:
  %t108 = load i1, ptr %l66, !tbaa !21
  br i1 %t108, label %bb28, label %bb29
bb28:
  %t109 = load ptr, ptr %l4, !tbaa !29
  store ptr %t109, ptr %l76, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l8, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t110, i32 %t111)
  store { i64, ptr } %t114, ptr %l79
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t115 = load ptr, ptr %l76, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l79, !tbaa !27
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
  store i1 %t127, ptr %l86
  br label %bb37
bb36:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb38
bb37:
  %t128 = load i1, ptr %l86, !tbaa !21
  store i1 %t128, ptr %l83, !tbaa !21
  br label %bb38
bb38:
  %t129 = load i1, ptr %l83, !tbaa !21
  br i1 %t129, label %bb39, label %bb40
bb39:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l88, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l5, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l93
  br label %bb41
bb40:
  store ptr null, ptr %l87, !tbaa !29
  br label %bb43
bb41:
  %t141 = load ptr, ptr %l88, !tbaa !29
  %t142 = load i32, ptr %l93, !tbaa !23
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %s0, ptr %t141, i32 %t142)
  store ptr %t143, ptr %l94
  br label %bb42
bb42:
  %t144 = load ptr, ptr %l94, !tbaa !29
  store ptr %t144, ptr %l87, !tbaa !29
  br label %bb43
bb43:
  %t145 = load ptr, ptr %l87, !tbaa !29
  store ptr %t145, ptr %l11, !tbaa !29
  %t146 = load ptr, ptr %l11, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  br i1 %t148, label %bb44, label %bb45
bb44:
  %t150 = load ptr, ptr %l4, !tbaa !29
  %t152 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %v1, ptr %t150)
  store { i64, ptr } %t152, ptr %l98
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  %t153 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t153, ptr %rv
  br label %ret
bb47:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  store ptr %t157, ptr %l100, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l5, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l105
  br label %bb48
bb48:
  %t168 = load ptr, ptr %l100, !tbaa !29
  %t169 = load i32, ptr %l105, !tbaa !23
  %t170 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t168, i32 %t169)
  store i64 %t170, ptr %l106
  br label %bb49
bb49:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t171)
  store ptr %t173, ptr %l108
  br label %bb50
bb50:
  %t174 = load ptr, ptr %l108, !tbaa !29
  %t176 = getelementptr %"compiler/check:frame", ptr %t174, i32 0, i32 1
  %t177 = load i64, ptr %t176, !tbaa !24
  %t178 = load i64, ptr %l106, !tbaa !24
  %t180 = icmp eq i64 %t178, %t177
  store i1 %t180, ptr %l12, !tbaa !21
  %t182 = load ptr, ptr %l11, !tbaa !29
  %t184 = getelementptr %"compiler/ast:StructBody", ptr %t182, i32 0, i32 0
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  store { i64, ptr } %t185, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  store i64 %t189, ptr %l15, !tbaa !24
  br label %bb51
bb51:
  %t191 = load i64, ptr %l14, !tbaa !24
  %t192 = load i64, ptr %l15, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb52, label %bb53
bb52:
  br label %bb62
bb53:
  br label %bb54
bb54:
  %t199 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t199, ptr %l120, !tbaa !27
  %t200 = load i64, ptr %l14, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr ptr, ptr %t203, i64 %t200
  %t205 = load ptr, ptr %t204, !tbaa !39
  store ptr %t205, ptr %l16, !tbaa !29
  %t207 = load i1, ptr %l12, !tbaa !21
  br i1 %t207, label %bb55, label %bb56
bb55:
  %t209 = load ptr, ptr %l16, !tbaa !29
  %t211 = getelementptr %"compiler/ast:Param", ptr %t209, i32 0, i32 1
  %t212 = load i32, ptr %t211, !tbaa !23
  %t213 = load i32, ptr %l2, !tbaa !23
  %t216 = icmp eq i32 %t212, %t213
  store i1 %t216, ptr %l124, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb57
bb57:
  %t218 = load i1, ptr %l124, !tbaa !21
  br i1 %t218, label %bb58, label %bb59
bb58:
  store { i64, ptr } { i64 109, ptr getelementptr inbounds (<{ i64, [109 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l129, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t219, ptr %l130, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  store i64 %t221, ptr %l131, !tbaa !24
  %t222 = load i64, ptr %l131, !tbaa !24
  %t223 = mul i64 %t222, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t223)
  %t225 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  store { i64, ptr } %t226, ptr %l132, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = load i64, ptr %l131, !tbaa !24
  %t232 = mul i64 %t231, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t228, ptr %t230, i64 %t232, i1 false)
  %t233 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t233, ptr %l130, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t234 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t234, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t235 = load i64, ptr %l14, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l14, !tbaa !24
  br label %bb51
bb62:
  store %olang.scope zeroinitializer, ptr %s12
  %t239 = load ptr, ptr %l11, !tbaa !29
  %t241 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %s0, ptr %s12, ptr %t239)
  %t242 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t241, 0, 1
  %t243 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t241, 0, 0
  store ptr %t242, ptr %wh12
  store ptr %t243, ptr %wc12
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t241, ptr %l136
  br label %bb63
bb63:
  %t244 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l136
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t244, ptr %l17
  br label %bb64
bb64:
  %t246 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s12, ptr %l17)
  %t247 = extractvalue { i32, ptr } %t246, 1
  %t248 = extractvalue { i32, ptr } %t246, 0
  store i32 %t248, ptr %l140
  %t249 = icmp ne i32 %t248, 0
  br i1 %t249, label %bb66, label %ok.250, !prof !99
ok.250:
  store ptr %t247, ptr %l139
  br label %bb65
bb65:
  %t251 = load ptr, ptr %l139, !tbaa !29
  store ptr %t251, ptr %l137, !tbaa !29
  br label %bb68
bb66:
  %t252 = load i32, ptr %l140, !tbaa !23
  %t253 = ashr i32 %t252, 16
  %t255 = icmp eq i32 %t253, 1
  store i1 %t255, ptr %l142, !tbaa !21
  br label %bb67
bb67:
  br label %bb86
bb68:
  %t256 = load ptr, ptr %l137, !tbaa !29
  %t259 = getelementptr %"compiler/ast:VarDecl", ptr %t256, i32 0, i32 0
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !27
  store { i64, ptr } %t260, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t262 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t262, 0
  store i64 %t264, ptr %l21, !tbaa !24
  br label %bb69
bb69:
  store %olang.scope zeroinitializer, ptr %s15
  %t266 = load i64, ptr %l20, !tbaa !24
  %t267 = load i64, ptr %l21, !tbaa !24
  %t270 = icmp slt i64 %t266, %t267
  %t272 = xor i1 %t270, true
  br i1 %t272, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s15)
  br label %bb84
bb71:
  br label %bb72
bb72:
  %t274 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t274, ptr %l151, !tbaa !27
  %t275 = load i64, ptr %l20, !tbaa !24
  %t277 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr i32, ptr %t278, i64 %t275
  %t280 = load i32, ptr %t279, !tbaa !33
  store i32 %t280, ptr %l22, !tbaa !23
  %t282 = load i1, ptr %l12, !tbaa !21
  br i1 %t282, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb77
bb74:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i32, ptr %l22, !tbaa !23
  %t288 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s15, ptr %t284, i32 %t285)
  store { i64, ptr } %t288, ptr %l158
  br label %bb75
bb75:
  %t289 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t289, ptr %l159, !tbaa !27
  %t290 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr i8, ptr %t291, i64 0
  %t293 = load i8, ptr %t292, !tbaa !32
  %t295 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t293)
  store i1 %t295, ptr %l161
  br label %bb76
bb76:
  %t296 = load i1, ptr %l161, !tbaa !21
  store i1 %t296, ptr %l155, !tbaa !21
  br label %bb77
bb77:
  %t297 = load i1, ptr %l155, !tbaa !21
  br i1 %t297, label %bb78, label %bb79
bb78:
  %t298 = load ptr, ptr %l4, !tbaa !29
  store ptr %t298, ptr %l162, !tbaa !29
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load i32, ptr %l22, !tbaa !23
  %t303 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t299, i32 %t300)
  store { i64, ptr } %t303, ptr %l165
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t304 = load ptr, ptr %l162, !tbaa !29
  %t305 = load { i64, ptr }, ptr %l165, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t304, { i64, ptr } %t305)
  br label %bb81
bb81:
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s15)
  br label %bb83
bb83:
  %t306 = load i64, ptr %l20, !tbaa !24
  %t308 = add i64 %t306, 1
  store i64 %t308, ptr %l20, !tbaa !24
  br label %bb69
bb84:
  br label %bb85
bb85:
  br label %bb64
bb86:
  store i32 0, ptr %ws12
  br label %wend12
wend12.c0:
  call void @__olang_scope_close(ptr %s12)
  %t310 = load ptr, ptr %l4, !tbaa !29
  %t312 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %v1, ptr %t310)
  store { i64, ptr } %t312, ptr %l169
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s0)
  %t313 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t313, ptr %rv
  br label %ret
wend12:
  %t314 = load ptr, ptr %wh12
  %t315 = load ptr, ptr %wc12
  %t316 = call ptr @llvm.coro.promise(ptr %t314, i32 8, i1 false)
  %t317 = getelementptr { { i32, ptr }, i32 }, ptr %t316, i32 0, i32 1
  store i32 2, ptr %t317
  %t318 = call { i32, ptr } %t315(ptr %t314, ptr null)
  %t319 = load i32, ptr %ws12
  switch i32 %t319, label %wend12.c0 [ ]
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i1
  %l21 = alloca i1
  %l27 = alloca i32
  %l32 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l53 = alloca i1
  %l59 = alloca ptr
  %l64 = alloca i32
  %l68 = alloca i1
  %l71 = alloca ptr
  %l76 = alloca i32
  %l80 = alloca i1
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
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l11, !tbaa !21
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
  %t20 = load i32, ptr %l2, !tbaa !23
  %t24 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t18, i32 %t19, i32 %t20)
  store i1 %t24, ptr %l21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l21, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l27
  br label %bb11
bb11:
  %t37 = load i32, ptr %l27, !range !{i32 0, i32 33}
  store i32 %t37, ptr %l4
  %t38 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t40 = trunc i64 18 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb27
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  store ptr %t48, ptr %l32, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l37
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = load i32, ptr %l37, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t59, i32 %t60)
  store { i64, ptr } %t61, ptr %l38
  br label %bb16
bb16:
  %t62 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t62, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t75 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t75, ptr %l45, !tbaa !27
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l2, !tbaa !23
  %t86 = load i64, ptr %l3, !tbaa !24
  %t88 = add i64 %t86, 1
  %t93 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %t83, i32 %t81, i32 %t85, i64 %t88)
  store i1 %t93, ptr %l53
  br label %bb21
bb21:
  %t94 = load i1, ptr %l53, !tbaa !21
  br i1 %t94, label %bb22, label %bb23
bb22:
  store i1 true, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb17
bb26:
  br label %bb44
bb27:
  %t100 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t102 = trunc i64 19 to i32
  %t103 = icmp eq i32 %t100, %t102
  br i1 %t103, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l59, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l1, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l64
  br label %bb31
bb31:
  %t116 = load i32, ptr %l2, !tbaa !23
  %t117 = load i64, ptr %l3, !tbaa !24
  %t119 = add i64 %t117, 1
  %t120 = load ptr, ptr %l59, !tbaa !29
  %t121 = load i32, ptr %l64, !tbaa !23
  %t124 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %t120, i32 %t121, i32 %t116, i64 %t119)
  store i1 %t124, ptr %l68
  br label %bb32
bb32:
  %t125 = load i1, ptr %l68, !tbaa !21
  store i1 %t125, ptr %rv
  br label %ret
bb33:
  %t126 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t128 = trunc i64 20 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l71, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  %t138 = load i32, ptr %l1, !tbaa !23
  %t141 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t137, i32 %t138)
  store i32 %t141, ptr %l76
  br label %bb37
bb37:
  %t142 = load i32, ptr %l2, !tbaa !23
  %t143 = load i64, ptr %l3, !tbaa !24
  %t145 = add i64 %t143, 1
  %t146 = load ptr, ptr %l71, !tbaa !29
  %t147 = load i32, ptr %l76, !tbaa !23
  %t150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %t146, i32 %t147, i32 %t142, i64 %t145)
  store i1 %t150, ptr %l80
  br label %bb38
bb38:
  %t151 = load i1, ptr %l80, !tbaa !21
  store i1 %t151, ptr %rv
  br label %ret
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_a227993f85dd5ea2_8a35cef040514d1e)
  unreachable
bb44:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %l727 = alloca ptr
  %l728 = alloca ptr
  %l730 = alloca %"compiler/source:Span"
  %l733 = alloca i32
  %l736 = alloca i64
  %l737 = alloca ptr
  %l739 = alloca %"compiler/source:Span"
  %l746 = alloca ptr
  %l750 = alloca ptr
  %l753 = alloca ptr
  %l754 = alloca ptr
  %l755 = alloca %"compiler/source:Span"
  %l758 = alloca i64
  %l759 = alloca ptr
  %l760 = alloca ptr
  %l761 = alloca %"compiler/source:Span"
  %l762 = alloca ptr
  %l763 = alloca %"compiler/source:Span"
  %l765 = alloca %"compiler/source:Span"
  %l767 = alloca i64
  %l773 = alloca ptr
  %l774 = alloca ptr
  %l777 = alloca { i64, ptr }
  %l778 = alloca ptr
  %l779 = alloca %"compiler/source:Span"
  %l781 = alloca i64
  %l783 = alloca { i64, ptr }
  %l785 = alloca { i64, ptr }
  %l786 = alloca { i64, ptr }
  %l790 = alloca ptr
  %l795 = alloca ptr
  %l798 = alloca ptr
  %l799 = alloca %"compiler/source:Span"
  %l802 = alloca ptr
  %l805 = alloca ptr
  %l806 = alloca ptr
  %l807 = alloca %"compiler/source:Span"
  %l810 = alloca i64
  %l811 = alloca ptr
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %t253 = alloca { i64, [1 x i64] }, align 8
  %t270 = alloca { i64, [3 x i64] }, align 8
  %t361 = alloca { i64, [4 x i64] }, align 8
  %t374 = alloca { i64, [4 x i64] }, align 8
  %t653 = alloca { i64, [4 x i64] }, align 8
  %t1192 = alloca { i64, [1 x i64] }, align 8
  %t1220 = alloca { i64, [3 x i64] }, align 8
  %t1373 = alloca { i64, [1 x i64] }, align 8
  %t1392 = alloca { i64, [3 x i64] }, align 8
  %t1501 = alloca { i64, [3 x i64] }, align 8
  %t1541 = alloca { i64, [3 x i64] }, align 8
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
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructOneValue(ptr %s6, ptr %v0, { i64, ptr } %t126)
  store %"compiler/diagmsg:Msg" %t128, ptr %l148
  br label %bb23
bb23:
  %t129 = load ptr, ptr %l139, !tbaa !29
  %t130 = load %"compiler/source:Span", ptr %l143
  %t131 = load %"compiler/diagmsg:Msg", ptr %l148
  %t132 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t129, %"compiler/source:Span" %t130, %"compiler/diagmsg:Msg" %t131)
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
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l180, !tbaa !29
  %t200 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t200, ptr %l181
  %t201 = load i64, ptr %l3, !tbaa !24
  %t202 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t207 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %t201, i64 %t204)
  store %"compiler/diagmsg:Msg" %t207, ptr %l185
  br label %bb37
bb36:
  br label %bb46
bb37:
  %t208 = load ptr, ptr %l180, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l181
  %t210 = load %"compiler/diagmsg:Msg", ptr %l185
  %t211 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t208, %"compiler/source:Span" %t209, %"compiler/diagmsg:Msg" %t210)
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
  %t470 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssignListCount(ptr %v0, i64 %t461, i64 %t467)
  store %"compiler/diagmsg:Msg" %t470, ptr %l299
  br label %bb72
bb72:
  %t471 = load ptr, ptr %l283, !tbaa !29
  %t472 = load %"compiler/source:Span", ptr %l294
  %t473 = load %"compiler/diagmsg:Msg", ptr %l299
  %t474 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t471, %"compiler/source:Span" %t472, %"compiler/diagmsg:Msg" %t473)
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
  %t963 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnAssigned(ptr %v0)
  store %"compiler/diagmsg:Msg" %t963, ptr %l537
  br label %bb181
bb181:
  %t964 = load ptr, ptr %l530, !tbaa !29
  %t965 = load %"compiler/source:Span", ptr %l536
  %t966 = load %"compiler/diagmsg:Msg", ptr %l537
  %t967 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t964, %"compiler/source:Span" %t965, %"compiler/diagmsg:Msg" %t966)
  store i64 %t967, ptr %l538
  br label %bb182
bb182:
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
  br label %bb309
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
  store ptr %t1312, ptr %l795
  br label %bb296
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
  br label %bb279
bb267:
  br label %bb268
bb268:
  %t1333 = load i64, ptr %l84, !tbaa !24
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
  %t1345 = load ptr, ptr %l0, !tbaa !29
  %t1346 = load ptr, ptr %l81, !tbaa !29
  %t1348 = getelementptr %"compiler/check:setAt", ptr %t1346, i32 0, i32 1
  %t1349 = load i64, ptr %t1348, !tbaa !24
  %t1350 = load ptr, ptr %l81, !tbaa !29
  %t1352 = getelementptr %"compiler/check:setAt", ptr %t1350, i32 0, i32 3
  %t1353 = load { i64, ptr }, ptr %t1352, !tbaa !27
  %t1359 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexParam(ptr %v0, ptr %v0, ptr %t1345, i64 %t1349, { i64, ptr } %t1353, i64 %t1333)
  store i32 %t1359, ptr %l726
  br label %bb269
bb269:
  %t1360 = load ptr, ptr %l718, !tbaa !29
  %t1361 = load ptr, ptr %l719, !tbaa !29
  %t1362 = load i32, ptr %l726, !tbaa !23
  %t1363 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v0, ptr %v0, ptr %t1360, ptr %t1361, i32 %t1362)
  store ptr %t1363, ptr %l727
  br label %bb270
bb270:
  %t1364 = load ptr, ptr %l727, !tbaa !29
  store ptr %t1364, ptr %l88, !tbaa !29
  %t1365 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1365, ptr %l728, !tbaa !29
  %t1366 = load ptr, ptr %l87, !tbaa !29
  %t1368 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t1366)
  store %"compiler/source:Span" %t1368, ptr %l730
  br label %bb271
bb271:
  %t1369 = load ptr, ptr %l88, !tbaa !29
  %t1372 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t1369)
  store i32 %t1372, ptr %l733
  br label %bb272
bb272:
  store { i64, [1 x i64] } zeroinitializer, ptr %t1373
  %t1374 = getelementptr { i64, [1 x i64] }, ptr %t1373, i32 0, i32 0
  store i64 0, ptr %t1374
  %t1375 = load { i64, [1 x i64] }, ptr %t1373
  %t1376 = load ptr, ptr %l728, !tbaa !29
  %t1377 = load %"compiler/source:Span", ptr %l730
  %t1378 = load i32, ptr %l733, !tbaa !23
  %t1381 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t1376, i32 0, %"compiler/source:Span" %t1377, i32 %t1378, i32 2, { i64, [1 x i64] } %t1375)
  store i64 %t1381, ptr %l736
  br label %bb273
bb273:
  %t1382 = load i64, ptr %l736, !tbaa !24
  store i64 %t1382, ptr %l89, !tbaa !24
  %t1383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1383, ptr %l737, !tbaa !29
  %t1384 = load ptr, ptr %l87, !tbaa !29
  %t1386 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t1384)
  store %"compiler/source:Span" %t1386, ptr %l739
  br label %bb274
bb274:
  %t1387 = load i64, ptr %l89, !tbaa !24
  %t1389 = trunc i64 %t1387 to i32
  %t1391 = load ptr, ptr %l88, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t1392
  %t1393 = getelementptr { i64, [3 x i64] }, ptr %t1392, i32 0, i32 0
  store i64 0, ptr %t1393
  %t1394 = load %"compiler/source:Span", ptr %l739
  %t1395 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1394, 0
  %t1397 = insertvalue { %"compiler/source:Span", i32, ptr } %t1395, i32 %t1389, 1
  %t1399 = insertvalue { %"compiler/source:Span", i32, ptr } %t1397, ptr %t1391, 2
  %t1400 = getelementptr { i64, [3 x i64] }, ptr %t1392, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1399, ptr %t1400
  %t1401 = load { i64, [3 x i64] }, ptr %t1392
  %t1403 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1401, ptr %t1403
  %t1404 = load ptr, ptr %l737, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1404, ptr %t1403)
  br label %bb275
bb275:
  %t1406 = load ptr, ptr %lp82
  store ptr %t1406, ptr %l746, !tbaa !29
  %t1407 = load ptr, ptr %l0, !tbaa !29
  %t1408 = load %"compiler/source:Span", ptr %l1
  %t1409 = load i64, ptr %l89, !tbaa !24
  %t1413 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1407, %"compiler/source:Span" %t1408, i64 %t1409)
  store ptr %t1413, ptr %l750
  br label %bb276
bb276:
  %t1414 = load ptr, ptr %l746, !tbaa !29
  %t1415 = load ptr, ptr %l750, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1414, ptr %t1415)
  br label %bb277
bb277:
  br label %bb278
bb278:
  %t1416 = load i64, ptr %l84, !tbaa !24
  %t1418 = add i64 %t1416, 1
  store i64 %t1418, ptr %l84, !tbaa !24
  br label %bb265
bb279:
  %t1420 = load ptr, ptr %lp82
  store ptr %t1420, ptr %l753, !tbaa !29
  %t1421 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1421, ptr %l754, !tbaa !29
  %t1422 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1422, ptr %l755
  %t1423 = load i64, ptr %l80, !tbaa !24
  %t1426 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l41, i64 %t1423)
  store i64 %t1426, ptr %l758
  br label %bb280
bb280:
  %t1427 = load ptr, ptr %l754, !tbaa !29
  %t1428 = load %"compiler/source:Span", ptr %l755
  %t1429 = load i64, ptr %l758, !tbaa !24
  %t1430 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1427, %"compiler/source:Span" %t1428, i64 %t1429)
  store ptr %t1430, ptr %l759
  br label %bb281
bb281:
  %t1431 = load ptr, ptr %l753, !tbaa !29
  %t1432 = load ptr, ptr %l759, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1431, ptr %t1432)
  br label %bb282
bb282:
  %t1433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1433, ptr %l760, !tbaa !29
  %t1434 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1434, ptr %l761
  %t1435 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1435, ptr %l762, !tbaa !29
  %t1436 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1436, ptr %l763
  %t1437 = load ptr, ptr %l81, !tbaa !29
  %t1439 = getelementptr %"compiler/check:setAt", ptr %t1437, i32 0, i32 4
  %t1440 = load %"compiler/source:Span", ptr %t1439
  store %"compiler/source:Span" %t1440, ptr %l765
  %t1441 = load ptr, ptr %l81, !tbaa !29
  %t1443 = getelementptr %"compiler/check:setAt", ptr %t1441, i32 0, i32 1
  %t1444 = load i64, ptr %t1443, !tbaa !24
  store i64 %t1444, ptr %l767, !tbaa !24
  %t1445 = load ptr, ptr %l0, !tbaa !29
  %t1446 = load ptr, ptr %l81, !tbaa !29
  %t1448 = getelementptr %"compiler/check:setAt", ptr %t1446, i32 0, i32 4
  %t1449 = load %"compiler/source:Span", ptr %t1448
  %t1450 = load ptr, ptr %l81, !tbaa !29
  %t1452 = getelementptr %"compiler/check:setAt", ptr %t1450, i32 0, i32 0
  %t1453 = load ptr, ptr %t1452, !tbaa !29
  %t1457 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t1445, %"compiler/source:Span" %t1449, ptr %t1453)
  store ptr %t1457, ptr %l773
  br label %bb283
bb283:
  %t1458 = load ptr, ptr %l773, !tbaa !29
  store ptr %t1458, ptr %l774, !tbaa !29
  %t1459 = icmp sge i64 0, 0
  br i1 %t1459, label %bb284, label %bb285
bb284:
  %t1461 = icmp sle i64 0, 1152921504606846975
  br i1 %t1461, label %bb286, label %bb287
bb285:
  call void @__olang_check_failed(ptr @olang_loc_89675b40bb29f91f_f23262abf4982edb)
  unreachable
bb286:
  %t1463 = mul i64 0, 8
  %t1464 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1465 = insertvalue { i64, ptr } %t1464, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1465, ptr %l777, !tbaa !27
  %t1466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1466, ptr %l778, !tbaa !29
  %t1467 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1467, ptr %l779
  %t1468 = load ptr, ptr %l81, !tbaa !29
  %t1470 = getelementptr %"compiler/check:setAt", ptr %t1468, i32 0, i32 1
  %t1471 = load i64, ptr %t1470, !tbaa !24
  store i64 %t1471, ptr %l781, !tbaa !24
  %t1472 = load ptr, ptr %l81, !tbaa !29
  %t1474 = getelementptr %"compiler/check:setAt", ptr %t1472, i32 0, i32 3
  %t1475 = load { i64, ptr }, ptr %t1474, !tbaa !27
  store { i64, ptr } %t1475, ptr %l783, !tbaa !27
  %t1476 = load ptr, ptr %lp82
  %t1478 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v0, ptr %t1476)
  store { i64, ptr } %t1478, ptr %l785
  br label %bb288
bb287:
  call void @__olang_check_failed(ptr @olang_loc_89675b40bb29f91f_f23262abf4982edb)
  unreachable
bb288:
  %t1479 = load ptr, ptr %l778, !tbaa !29
  %t1480 = load %"compiler/source:Span", ptr %l779
  %t1481 = load i64, ptr %l781, !tbaa !24
  %t1482 = load { i64, ptr }, ptr %l783, !tbaa !27
  %t1483 = load { i64, ptr }, ptr %l785, !tbaa !27
  %t1484 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epacked(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t1479, %"compiler/source:Span" %t1480, i64 %t1481, { i64, ptr } %t1482, { i64, ptr } %t1483)
  store { i64, ptr } %t1484, ptr %l786
  br label %bb289
bb289:
  %t1485 = icmp sge i64 0, 0
  br i1 %t1485, label %bb290, label %bb291
bb290:
  %t1487 = icmp sle i64 0, 2305843009213693951
  br i1 %t1487, label %bb292, label %bb293
bb291:
  call void @__olang_check_failed(ptr @olang_loc_7114c498979ee84a_e24a16e9735bab46)
  unreachable
bb292:
  %t1489 = mul i64 0, 4
  %t1490 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1491 = insertvalue { i64, ptr } %t1490, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1492 = load ptr, ptr %l762, !tbaa !29
  %t1493 = load %"compiler/source:Span", ptr %l763
  %t1494 = load %"compiler/source:Span", ptr %l765
  %t1495 = load i64, ptr %l767, !tbaa !24
  %t1496 = load ptr, ptr %l774, !tbaa !29
  %t1497 = load { i64, ptr }, ptr %l777, !tbaa !27
  %t1498 = load { i64, ptr }, ptr %l786, !tbaa !27
  %t1500 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t1492, %"compiler/source:Span" %t1493, %"compiler/source:Span" %t1494, i64 %t1495, ptr %t1496, { i64, ptr } %t1497, { i64, ptr } %t1498, { i64, ptr } %t1491)
  store ptr %t1500, ptr %l790
  br label %bb294
bb293:
  call void @__olang_check_failed(ptr @olang_loc_7114c498979ee84a_e24a16e9735bab46)
  unreachable
bb294:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1501
  %t1502 = getelementptr { i64, [3 x i64] }, ptr %t1501, i32 0, i32 0
  store i64 2, ptr %t1502
  %t1503 = load %"compiler/source:Span", ptr %l761
  %t1504 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1503, 0
  %t1505 = load ptr, ptr %l790, !tbaa !29
  %t1506 = insertvalue { %"compiler/source:Span", ptr } %t1504, ptr %t1505, 1
  %t1507 = getelementptr { i64, [3 x i64] }, ptr %t1501, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1506, ptr %t1507
  %t1508 = load { i64, [3 x i64] }, ptr %t1501
  %t1510 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1508, ptr %t1510
  %t1511 = load ptr, ptr %l760, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1511, ptr %t1510)
  br label %bb295
bb295:
  br label %bb307
bb296:
  %t1513 = load ptr, ptr %l795, !tbaa !29
  %t1514 = icmp eq ptr %t1513, null
  %t1516 = xor i1 %t1514, true
  br i1 %t1516, label %bb297, label %bb298
bb297:
  %t1518 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1518, ptr %l798, !tbaa !29
  %t1519 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1519, ptr %l799
  %t1520 = load ptr, ptr %l42, !tbaa !29
  %t1521 = load i64, ptr %l80, !tbaa !24
  %t1524 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v0, ptr %t1520, i64 %t1521)
  store ptr %t1524, ptr %l802
  br label %bb299
bb298:
  br label %bb306
bb299:
  %t1525 = load ptr, ptr %l802, !tbaa !29
  store ptr %t1525, ptr %l90, !tbaa !29
  %t1526 = load ptr, ptr %l90, !tbaa !29
  %t1528 = icmp eq ptr %t1526, null
  br i1 %t1528, label %bb300, label %bb301
bb300:
  call void @__olang_check_failed(ptr @olang_loc_c7908973d247e2d7_c6acba74781c2b93)
  unreachable
bb301:
  br label %bb302
bb302:
  %t1530 = load ptr, ptr %l90, !tbaa !29
  store ptr %t1530, ptr %l805, !tbaa !29
  %t1531 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1531, ptr %l806, !tbaa !29
  %t1532 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1532, ptr %l807
  %t1533 = load i64, ptr %l80, !tbaa !24
  %t1536 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l41, i64 %t1533)
  store i64 %t1536, ptr %l810
  br label %bb303
bb303:
  %t1537 = load ptr, ptr %l806, !tbaa !29
  %t1538 = load %"compiler/source:Span", ptr %l807
  %t1539 = load i64, ptr %l810, !tbaa !24
  %t1540 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1537, %"compiler/source:Span" %t1538, i64 %t1539)
  store ptr %t1540, ptr %l811
  br label %bb304
bb304:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1541
  %t1542 = getelementptr { i64, [3 x i64] }, ptr %t1541, i32 0, i32 0
  store i64 1, ptr %t1542
  %t1543 = load %"compiler/source:Span", ptr %l799
  %t1544 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t1543, 0
  %t1545 = load ptr, ptr %l805, !tbaa !29
  %t1546 = insertvalue { %"compiler/source:Span", ptr, ptr } %t1544, ptr %t1545, 1
  %t1547 = load ptr, ptr %l811, !tbaa !29
  %t1548 = insertvalue { %"compiler/source:Span", ptr, ptr } %t1546, ptr %t1547, 2
  %t1549 = getelementptr { i64, [3 x i64] }, ptr %t1541, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t1548, ptr %t1549
  %t1550 = load { i64, [3 x i64] }, ptr %t1541
  %t1552 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1550, ptr %t1552
  %t1553 = load ptr, ptr %l798, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1553, ptr %t1552)
  br label %bb305
bb305:
  br label %bb306
bb306:
  call void @__olang_scope_close(ptr %s50)
  br label %bb307
bb307:
  br label %bb308
bb308:
  %t1555 = load i64, ptr %l79, !tbaa !24
  %t1557 = add i64 %t1555, 1
  store i64 %t1557, ptr %l79, !tbaa !24
  br label %bb257
bb309:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l18 = alloca %"compiler/source:Span"
  %l21 = alloca i1
  %l22 = alloca %"compiler/source:Span"
  %l26 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l35 = alloca i32
  %l38 = alloca %"compiler/source:Span"
  %l42 = alloca i1
  %l44 = alloca %"compiler/source:Span"
  %l49 = alloca i1
  %l52 = alloca i1
  %l53 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t24, i32 0, i32 2
  %t26 = load i1, ptr %t25
  store i1 %t26, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  br label %bb40
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load i1, ptr %l5, !tbaa !21
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t32 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 -1, i32 -1)
  store %"compiler/source:Span" %t32, ptr %l18
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t33 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t33, ptr %rv
  br label %ret
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t38 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %t34, ptr %t35)
  store i1 %t38, ptr %l21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 -1, i32 -1)
  store %"compiler/source:Span" %t40, ptr %l22
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  %t41 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t41, ptr %rv
  br label %ret
bb14:
  %t42 = load i32, ptr %l2, !tbaa !23
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t46 = icmp ne i32 %t42, %t43
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l29
  br label %bb17
bb16:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb22
bb17:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb21
bb19:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l35
  br label %bb20
bb20:
  %t64 = load i32, ptr %l35, !range !{i32 0, i32 33}
  %t66 = trunc i64 25 to i32
  %t67 = icmp eq i32 %t64, %t66
  store i1 %t67, ptr %l30, !tbaa !21
  br label %bb21
bb21:
  %t69 = load i1, ptr %l30, !tbaa !21
  store i1 %t69, ptr %l26, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l26, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 -1, i32 -1)
  store %"compiler/source:Span" %t71, ptr %l38
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  %t72 = load %"compiler/source:Span", ptr %l38
  store %"compiler/source:Span" %t72, ptr %rv
  br label %ret
bb26:
  %t73 = load i32, ptr %l2, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb27, label %bb28
bb27:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t79)
  store %"compiler/source:Span" %t81, ptr %l44
  br label %bb29
bb28:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb30
bb29:
  %t82 = getelementptr %"compiler/source:Span", ptr %l44, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t84 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = add i32 %t85, 3
  %t90 = icmp sgt i32 %t83, %t87
  store i1 %t90, ptr %l42, !tbaa !21
  br label %bb30
bb30:
  %t92 = load i1, ptr %l42, !tbaa !21
  br i1 %t92, label %bb31, label %bb32
bb31:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t97 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenRefOrVar(ptr %v0, ptr %v1, ptr %t93, ptr %t94)
  store i1 %t97, ptr %l52
  br label %bb33
bb32:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb34
bb33:
  %t98 = load i1, ptr %l52, !tbaa !21
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb34
bb34:
  %t99 = load i1, ptr %l49, !tbaa !21
  br i1 %t99, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s5
  %t100 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s5, i32 -1, i32 -1)
  store %"compiler/source:Span" %t100, ptr %l53
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s1)
  %t101 = load %"compiler/source:Span", ptr %l53
  store %"compiler/source:Span" %t101, ptr %rv
  br label %ret
bb38:
  %t102 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t103 = load i32, ptr %t102, !tbaa !23
  %t104 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = add i32 %t105, 3
  %t110 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t103, i32 %t107)
  store %"compiler/source:Span" %t110, ptr %l57
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s1)
  %t111 = load %"compiler/source:Span", ptr %l57
  store %"compiler/source:Span" %t111, ptr %rv
  br label %ret
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb45
bb43:
  store %olang.scope zeroinitializer, ptr %s6
  %t112 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 -1, i32 -1)
  store %"compiler/source:Span" %t112, ptr %l58
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s6)
  %t113 = load %"compiler/source:Span", ptr %l58
  store %"compiler/source:Span" %t113, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_5a62b0635aab9a02_96142af7f6ac351e)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutStorage(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l16 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l17 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l33 = alloca ptr
  %l37 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l46 = alloca i1
  %l51 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l73 = alloca i64
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t9)
  br label %bb1
bb1:
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 32
  %t17 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4bf1ea25652c8861abd3bf5b08e36e6f(ptr %v0, ptr %v0, ptr %t15)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t17, ptr %l13
  br label %bb3
bb3:
  %t18 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l13
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t18, ptr %l2
  br label %bb4
bb4:
  %t20 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hfbfbbcb252777c89628fb6bc7775609a(ptr %v0, ptr %l2)
  %t21 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t20, 1
  %t22 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t20, 0
  store i32 %t22, ptr %l17
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb6, label %ok.24, !prof !99
ok.24:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t21, ptr %l16
  br label %bb5
bb5:
  %t25 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l16
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t25, ptr %l14
  br label %bb8
bb6:
  %t26 = load i32, ptr %l17, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  br label %bb32
bb8:
  %t30 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t30, ptr %l3
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 32
  %t34 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t37 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %t33, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34)
  %t38 = extractvalue { i32, i32 } %t37, 1
  %t39 = extractvalue { i32, i32 } %t37, 0
  store i32 %t39, ptr %l25
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb10, label %ok.41, !prof !99
ok.41:
  store i32 %t38, ptr %l24
  br label %bb9
bb9:
  %t42 = load i32, ptr %l24, !tbaa !23
  store i32 %t42, ptr %l20, !tbaa !23
  br label %bb12
bb10:
  br label %bb11
bb11:
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t43, ptr %l20, !tbaa !23
  br label %bb12
bb12:
  %t45 = load i32, ptr %l20, !tbaa !23
  store i32 %t45, ptr %l4, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = trunc i64 %t53 to i32
  %t60 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t49, i64 %t51, i32 %t55)
  store ptr %t60, ptr %l33
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l33, !tbaa !29
  store ptr %t61, ptr %l5, !tbaa !29
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t70 = getelementptr %"compiler/ast:VarDecl", ptr %t68, i32 0, i32 2
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t71)
  store i1 %t73, ptr %l40
  br label %bb16
bb15:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb16:
  %t74 = load i1, ptr %l40, !tbaa !21
  store i1 %t74, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t75 = load i1, ptr %l37, !tbaa !21
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l4, !tbaa !23
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2escalarType(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l44
  br label %bb20
bb19:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb21
bb20:
  %t81 = load i1, ptr %l44, !tbaa !21
  %t82 = xor i1 %t81, true
  store i1 %t82, ptr %l41, !tbaa !21
  br label %bb21
bb21:
  %t84 = load i1, ptr %l41, !tbaa !21
  br i1 %t84, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb25
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l4, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %t90, i32 %t91, i1 false)
  store i1 %t94, ptr %l51
  br label %bb24
bb24:
  %t95 = load i1, ptr %l51, !tbaa !21
  store i1 %t95, ptr %l46, !tbaa !21
  br label %bb25
bb25:
  %t96 = load i1, ptr %l46, !tbaa !21
  %t97 = xor i1 %t96, true
  br i1 %t97, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/load:Loader", ptr %t105, i32 0, i32 9
  %t108 = load i32, ptr %l4, !tbaa !23
  %t110 = sext i32 %t108 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t107, i64 %t110)
  br label %bb29
bb29:
  %t113 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t114 = load i64, ptr %t113, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l1, i64 %t114)
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb4
bb32:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 3
  store ptr %t122, ptr %l63, !tbaa !29
  %t123 = load { i64, ptr }, ptr @G_2ecompiler_2ftyped_2eMutGlobalsFact, !tbaa !27
  store { i64, ptr } %t123, ptr %l64, !tbaa !27
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t127 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutGlobalsValue(ptr %v0, ptr %s0, ptr %s0, ptr %t124, ptr %l1)
  store { i64, ptr } %t127, ptr %l67
  br label %bb33
bb33:
  %t128 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t135 = load ptr, ptr @__olang_prog_scope
  %t136 = load ptr, ptr %l63, !tbaa !29
  %t137 = load { i64, ptr }, ptr %l64, !tbaa !27
  call void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %t135, ptr %s0, ptr %t136, { i64, ptr } %t137, { i64, ptr } %t134, i1 false)
  br label %bb34
bb34:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/load:Loader", ptr %t145, i32 0, i32 9
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t147)
  store i64 %t149, ptr %l73
  br label %bb35
bb35:
  %t150 = load i64, ptr %l73, !tbaa !24
  %t151 = icmp sgt i64 %t150, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca i32
  %l33 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i1
  %l45 = alloca %"compiler/source:Span"
  %l50 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t96 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l4, !tbaa !29
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
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l5
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l6, !tbaa !23
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l7, !tbaa !29
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 3
  %t32 = load i64, ptr %t31
  store i64 %t32, ptr %l8, !tbaa !24
  br label %bb5
bb4:
  br label %bb22
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l6, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l25
  br label %bb6
bb6:
  %t44 = load i1, ptr %l25, !tbaa !21
  %t45 = xor i1 %t44, true
  br i1 %t45, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb11
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  %t51 = load ptr, ptr %l7, !tbaa !29
  %t53 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v2, ptr %t51)
  store i32 %t53, ptr %l31
  br label %bb9
bb9:
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t56 = load i32, ptr %l31, !tbaa !23
  %t58 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %t55, i32 %t56, i64 %t54)
  store i1 %t58, ptr %l33
  br label %bb10
bb10:
  %t59 = load i1, ptr %l33, !tbaa !21
  store i1 %t59, ptr %l27, !tbaa !21
  br label %bb11
bb11:
  %t60 = load i1, ptr %l27, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  %t61 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t61, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l35, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t68 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %s1, ptr %t64, ptr %a2)
  store { i64, ptr } %t68, ptr %l38
  br label %bb15
bb15:
  %t70 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t72 = call { i64, ptr } @compiler_2fcheck_2eextended(ptr %s1, ptr %s1, { i64, ptr } %t70, i32 %a3)
  store { i64, ptr } %t72, ptr %l40
  br label %bb16
bb16:
  %t74 = load ptr, ptr %l35, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t77 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %s1, ptr %t74, { i64, ptr } %t75, %"compiler/source:Span" %a1)
  store i1 %t77, ptr %l42
  br label %bb17
bb17:
  %t78 = load i1, ptr %l42, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t81, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t83 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t83, ptr %l45
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l6, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l50
  br label %bb21
bb21:
  %t94 = load ptr, ptr %l7, !tbaa !29
  %t95 = load i64, ptr %l8, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t96
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 0
  store i64 3, ptr %t97
  %t98 = load %"compiler/source:Span", ptr %l45
  %t99 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t98, 0
  %t100 = load i32, ptr %l50, !tbaa !23
  %t101 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t99, i32 %t100, 1
  %t103 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t101, ptr %t94, 2
  %t105 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t103, i64 %t95, 3
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t105, ptr %t106
  %t107 = load { i64, [4 x i64] }, ptr %t96
  %t109 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t107, ptr %t109
  call void @__olang_scope_close(ptr %s1)
  store ptr %t109, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t111 = load ptr, ptr %l4, !tbaa !29
  store ptr %t111, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_87e977ed5524b962_3cfc36141ffe0b5e)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enestedBranches(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb4
bb2:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2edirectSet(ptr %v1, { i64, ptr } %t7, i32 %t8)
  store i1 %t11, ptr %l16
  br label %bb3
bb3:
  %t12 = load i1, ptr %l16, !tbaa !21
  store i1 %t12, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l13, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t14, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %bb33
bb10:
  br label %bb11
bb11:
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t28, ptr %l24, !tbaa !27
  %t29 = load i64, ptr %l6, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr ptr, ptr %t32, i64 %t29
  %t34 = load ptr, ptr %t33, !tbaa !39
  store ptr %t34, ptr %l8, !tbaa !29
  %t36 = load ptr, ptr %l8, !tbaa !29
  store ptr %t36, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t37 = load ptr, ptr %l27, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 11}
  %t43 = icmp eq i64 %t41, 7
  store i1 %t43, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l28, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l8, !tbaa !29
  %t47 = getelementptr { i64, [8 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l9, !tbaa !29
  br label %bb16
bb15:
  br label %bb26
bb16:
  %t51 = load ptr, ptr %l9, !tbaa !29
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2echainSets(ptr %v1, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l35
  br label %bb17
bb17:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l9, !tbaa !29
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call i1 @compiler_2fcheck_2echainAssignsAll(ptr %v1, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l39
  br label %bb20
bb19:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb21
bb20:
  %t62 = load i1, ptr %l39, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l36, !tbaa !21
  br label %bb21
bb21:
  %t65 = load i1, ptr %l36, !tbaa !21
  br i1 %t65, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t69 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %t68, i32 %t69, i32 %a4)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
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
  call void @__olang_check_failed(ptr @olang_loc_8db10e524bac21a2_ad831be9185e1396)
  unreachable
bb31:
  br label %bb32
bb32:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb8
bb33:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i32
  %l17 = alloca ptr
  %l22 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i32
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb3
bb3:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb16
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t15, i64 %t16)
  store i32 %t19, ptr %l16
  br label %bb7
bb7:
  %t20 = load i32, ptr %l16, !tbaa !23
  store i32 %t20, ptr %l5, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l17, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l22
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l5, !tbaa !23
  %t41 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t37, i32 %t38)
  store i64 %t41, ptr %l27
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l17, !tbaa !29
  %t43 = load i32, ptr %l22, !tbaa !23
  %t44 = load i64, ptr %l27, !tbaa !65
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %t42, i32 %t43, i64 %t44)
  store i32 %t45, ptr %l28
  br label %bb10
bb10:
  %t46 = load i32, ptr %l28, !tbaa !23
  store i32 %t46, ptr %l6, !tbaa !23
  %t47 = load i32, ptr %l6, !tbaa !23
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t51 = icmp ne i32 %t47, %t48
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load i32, ptr %l6, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %l2, i32 %t53)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l4, !tbaa !24
  br label %bb2
bb16:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverrideClash(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l20 = alloca i32
  %l23 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca i32
  %l39 = alloca i1
  %l41 = alloca i1
  %l46 = alloca i1
  %l51 = alloca ptr
  %l57 = alloca i64
  %l60 = alloca i1
  %l67 = alloca i32
  %l70 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l87 = alloca i64
  %l90 = alloca i64
  %l113 = alloca { i64, ptr }
  %l116 = alloca i1
  %l117 = alloca i1
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca i1
  %l135 = alloca i32
  %l137 = alloca i1
  %l142 = alloca i1
  %l143 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i32
  %l152 = alloca i32
  %l153 = alloca i1
  %l156 = alloca ptr
  %l160 = alloca i64
  %l162 = alloca ptr
  %l163 = alloca ptr
  %l166 = alloca %"compiler/source:Span"
  %l170 = alloca { i64, ptr }
  %l171 = alloca %"compiler/diagmsg:Msg"
  %l172 = alloca i64
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
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t4, i64 %t5)
  store i32 %t8, ptr %l20
  br label %bb1
bb1:
  %t9 = load i32, ptr %l20, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l23, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l28
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l23, !tbaa !29
  %t27 = load i32, ptr %l28, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l29
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp eq i64 %t32, 0
  br i1 %t34, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l34, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i32, ptr %t39, i64 0
  %t41 = load i32, ptr %t40, !tbaa !33
  %t44 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t36, i32 %t41)
  store i32 %t44, ptr %l36
  br label %bb7
bb7:
  %t45 = load i32, ptr %l36, !tbaa !23
  store i32 %t45, ptr %l4, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l4, !tbaa !23
  %t50 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l39
  br label %bb8
bb8:
  %t51 = load i1, ptr %l39, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb12
bb10:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l4, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t59, i32 %t60)
  store i1 %t63, ptr %l46
  br label %bb11
bb11:
  %t64 = load i1, ptr %l46, !tbaa !21
  %t65 = xor i1 %t64, true
  store i1 %t65, ptr %l41, !tbaa !21
  br label %bb12
bb12:
  %t67 = load i1, ptr %l41, !tbaa !21
  br i1 %t67, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t75 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l51
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l51, !tbaa !29
  store ptr %t76, ptr %l5, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load i32, ptr %l4, !tbaa !23
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %t84, !tbaa !23
  %t89 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %t80, i32 %t81, i32 %t85)
  store i64 %t89, ptr %l57
  br label %bb17
bb17:
  %t90 = load i64, ptr %l57, !tbaa !24
  store i64 %t90, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = icmp slt i64 %t91, 0
  br i1 %t93, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb20
bb19:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  store i1 %t99, ptr %l60, !tbaa !21
  br label %bb20
bb20:
  %t101 = load i1, ptr %l60, !tbaa !21
  br i1 %t101, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t106 = load i64, ptr %l6, !tbaa !24
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t105, i64 %t106)
  store i32 %t109, ptr %l67
  br label %bb24
bb24:
  %t110 = load i32, ptr %l67, !tbaa !23
  store i32 %t110, ptr %l7, !tbaa !23
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  store ptr %t116, ptr %l70, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l7, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l75
  br label %bb25
bb25:
  %t127 = load ptr, ptr %l70, !tbaa !29
  %t128 = load i32, ptr %l75, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t127, i32 %t128)
  store { i64, ptr } %t129, ptr %l76
  br label %bb26
bb26:
  %t130 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t130, ptr %l8, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t139 = icmp eq i64 %t133, %t136
  store i1 %t139, ptr %l9, !tbaa !21
  store i64 1, ptr %l10, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  store i64 %t143, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t146 = load i64, ptr %l10, !tbaa !24
  %t149 = icmp sgt i64 %t145, %t146
  br i1 %t149, label %bb27, label %bb28
bb27:
  %t151 = load i64, ptr %l12, !tbaa !24
  %t153 = icmp sgt i64 %t151, 0
  br i1 %t153, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb32
bb29:
  %t155 = load i64, ptr %l11, !tbaa !24
  %t156 = load i64, ptr %l10, !tbaa !24
  %t159 = sub i64 %t155, %t156
  %t160 = load i64, ptr %l12, !tbaa !24
  %t163 = add i64 %t159, %t160
  %t165 = sub i64 %t163, 1
  %t166 = load i64, ptr %l12, !tbaa !24
  %t169 = sdiv i64 %t165, %t166
  store i64 %t169, ptr %l90, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb31
bb31:
  %t171 = load i64, ptr %l90, !tbaa !24
  store i64 %t171, ptr %l87, !tbaa !24
  br label %bb32
bb32:
  %t172 = load i64, ptr %l87, !tbaa !24
  store i64 %t172, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb33
bb33:
  %t173 = load i64, ptr %l14, !tbaa !24
  %t174 = load i64, ptr %l13, !tbaa !24
  %t177 = icmp slt i64 %t173, %t174
  %t179 = xor i1 %t177, true
  br i1 %t179, label %bb34, label %bb35
bb34:
  br label %bb49
bb35:
  br label %bb36
bb36:
  %t181 = load i64, ptr %l10, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  %t183 = load i64, ptr %l12, !tbaa !24
  %t186 = mul i64 %t182, %t183
  %t189 = add i64 %t181, %t186
  store i64 %t189, ptr %l15, !tbaa !24
  %t191 = load i1, ptr %l9, !tbaa !21
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb37, label %bb38
bb37:
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t201, ptr %l113, !tbaa !27
  %t202 = load i64, ptr %l15, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i32, ptr %t205, i64 %t202
  %t207 = load i32, ptr %t206, !tbaa !33
  %t210 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t200, i32 %t207)
  store i1 %t210, ptr %l116
  br label %bb40
bb40:
  %t211 = load i1, ptr %l116, !tbaa !21
  br i1 %t211, label %bb41, label %bb42
bb41:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t218, ptr %l121, !tbaa !27
  %t219 = load i64, ptr %l15, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr i32, ptr %t222, i64 %t219
  %t224 = load i32, ptr %t223, !tbaa !33
  %t225 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t225, ptr %l124, !tbaa !27
  %t226 = load i64, ptr %l15, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr i32, ptr %t229, i64 %t226
  %t231 = load i32, ptr %t230, !tbaa !33
  %t235 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t217, i32 %t224, i32 %t231)
  store i1 %t235, ptr %l127
  br label %bb43
bb42:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb44
bb43:
  %t236 = load i1, ptr %l127, !tbaa !21
  %t237 = xor i1 %t236, true
  store i1 %t237, ptr %l117, !tbaa !21
  br label %bb44
bb44:
  %t239 = load i1, ptr %l117, !tbaa !21
  br i1 %t239, label %bb45, label %bb46
bb45:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb47
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t240 = load i64, ptr %l14, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l14, !tbaa !24
  br label %bb33
bb49:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = getelementptr %"compiler/generic:Program", ptr %t247, i32 0, i32 2
  %t250 = load i32, ptr %l7, !tbaa !23
  %t253 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t249, i32 %t250)
  store i32 %t253, ptr %l135
  br label %bb50
bb50:
  %t254 = load i32, ptr %l135, !tbaa !23
  store i32 %t254, ptr %l16, !tbaa !23
  %t255 = load i1, ptr %l9, !tbaa !21
  br i1 %t255, label %bb51, label %bb52
bb51:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/check:Checker", ptr %t257, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t262 = getelementptr %"compiler/generic:Program", ptr %t260, i32 0, i32 2
  %t263 = load i32, ptr %l16, !tbaa !23
  %t266 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t262, i32 %t263)
  store i1 %t266, ptr %l142
  br label %bb53
bb52:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb54
bb53:
  %t267 = load i1, ptr %l142, !tbaa !21
  store i1 %t267, ptr %l137, !tbaa !21
  br label %bb54
bb54:
  %t268 = load i1, ptr %l137, !tbaa !21
  br i1 %t268, label %bb55, label %bb56
bb55:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t272, i32 0, i32 2
  store ptr %t274, ptr %l146, !tbaa !29
  %t275 = load i32, ptr %l16, !tbaa !23
  store i32 %t275, ptr %l147, !tbaa !23
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/check:Checker", ptr %t276, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/generic:Program", ptr %t279, i32 0, i32 2
  %t282 = load i32, ptr %l2, !tbaa !23
  %t285 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t281, i32 %t282)
  store i32 %t285, ptr %l152
  br label %bb57
bb56:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb59
bb57:
  %t286 = load ptr, ptr %l146, !tbaa !29
  %t287 = load i32, ptr %l147, !tbaa !23
  %t288 = load i32, ptr %l152, !tbaa !23
  %t289 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t286, i32 %t287, i32 %t288)
  store i1 %t289, ptr %l153
  br label %bb58
bb58:
  %t290 = load i1, ptr %l153, !tbaa !21
  %t291 = xor i1 %t290, true
  store i1 %t291, ptr %l143, !tbaa !21
  br label %bb59
bb59:
  %t293 = load i1, ptr %l143, !tbaa !21
  br i1 %t293, label %bb60, label %bb61
bb60:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t294 = load i1, ptr %l9, !tbaa !21
  br i1 %t294, label %bb63, label %bb64
bb63:
  br label %ret
bb64:
  br label %bb65
bb65:
  %t296 = load ptr, ptr %l0, !tbaa !29
  store ptr %t296, ptr %l156, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/check:Checker", ptr %t297, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !29
  %t301 = load i64, ptr %l1, !tbaa !24
  %t304 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t300, i64 %t301)
  store i64 %t304, ptr %l160
  br label %bb66
bb66:
  %t305 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t306 = load ptr, ptr %l156, !tbaa !29
  %t307 = load i64, ptr %l160, !tbaa !24
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t306, i64 -1, i64 %t307, i32 %t305, i32 0)
  store ptr %t309, ptr %l162
  br label %bb67
bb67:
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l163, !tbaa !29
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load ptr, ptr %l5, !tbaa !29
  %t315 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t311, ptr %t312)
  store %"compiler/source:Span" %t315, ptr %l166
  br label %bb68
bb68:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load ptr, ptr %l5, !tbaa !29
  %t319 = getelementptr %"compiler/ast:Func", ptr %t317, i32 0, i32 2
  %t320 = load i32, ptr %t319, !tbaa !23
  %t323 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t316, i32 %t320)
  store { i64, ptr } %t323, ptr %l170
  br label %bb69
bb69:
  %t324 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t325 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOverrideSignature(ptr %v0, ptr %v0, { i64, ptr } %t324)
  store %"compiler/diagmsg:Msg" %t325, ptr %l171
  br label %bb70
bb70:
  %t326 = load ptr, ptr %l163, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l166
  %t328 = load %"compiler/diagmsg:Msg", ptr %l171
  %t329 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t326, %"compiler/source:Span" %t327, %"compiler/diagmsg:Msg" %t328)
  store i64 %t329, ptr %l172
  br label %bb71
bb71:
  %t330 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t330)
  br label %bb72
bb72:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca i64
  %l9 = alloca ptr
  %l14 = alloca { i64, [1 x i64] }
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l25 = alloca i64
  %l27 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca i64
  %l43 = alloca { i64, [3 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t14 = call { i64, [1 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eParamMark(ptr %v0, ptr %v0, ptr %t11, ptr %t9, i64 %a4)
  store { i64, [1 x i64] } %t14, ptr %l14
  br label %bb2
bb2:
  %t15 = load { i64, [1 x i64] }, ptr %l14
  store { i64, [1 x i64] } %t15, ptr %l6
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i32 %a1, ptr %l16, !tbaa !23
  store %"compiler/source:Span" %a2, ptr %l17
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnspread(ptr %v0, ptr %t24, i32 %a3)
  store i32 %t28, ptr %l22
  br label %bb3
bb3:
  %t29 = load { i64, [1 x i64] }, ptr %l6
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load i32, ptr %l16, !tbaa !23
  %t32 = load %"compiler/source:Span", ptr %l17
  %t33 = load i32, ptr %l22, !tbaa !23
  %t36 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t30, i32 %t31, %"compiler/source:Span" %t32, i32 %t33, i32 0, { i64, [1 x i64] } %t29)
  store i64 %t36, ptr %l25
  br label %bb4
bb4:
  %t37 = load i64, ptr %l25, !tbaa !24
  store i64 %t37, ptr %l7, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t38)
  store ptr %t40, ptr %l27
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l27, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 5
  %t44 = load i64, ptr %l7, !tbaa !24
  %t46 = trunc i64 %t44 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t43, i32 %t46)
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb7, label %bb8
bb7:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l37
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t59 = load ptr, ptr %l37, !tbaa !29
  %t61 = getelementptr %"compiler/check:frame", ptr %t59, i32 0, i32 3
  store ptr %t61, ptr %l39, !tbaa !29
  %t62 = load i64, ptr %l7, !tbaa !24
  store i64 %t62, ptr %l40, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t67 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store { i64, [3 x i64] } %t67, ptr %l43
  br label %bb10
bb10:
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t69 = load i64, ptr %l40, !tbaa !24
  %t70 = load { i64, [3 x i64] }, ptr %l43
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %t68, i64 %t69, { i64, [3 x i64] } %t70)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 9}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l7, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
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
  store i1 false, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_37e2897bc2167462_b245f142cb8d96e6)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l12 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l26 = alloca i32
  %l29 = alloca i1
  %l34 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i32
  %l58 = alloca i1
  %l61 = alloca i1
  %l64 = alloca ptr
  %l69 = alloca i32
  %l71 = alloca i1
  %l74 = alloca ptr
  %l79 = alloca i32
  %l81 = alloca i1
  %l90 = alloca i1
  %l95 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca i32
  %l102 = alloca i1
  %l105 = alloca ptr
  %l110 = alloca i32
  %l112 = alloca i1
  %l115 = alloca ptr
  %l120 = alloca i32
  %l122 = alloca i1
  %l125 = alloca ptr
  %l130 = alloca i32
  %l133 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l12
  br label %bb4
bb4:
  %t16 = load i32, ptr %l12, !range !{i32 0, i32 33}
  store i32 %t16, ptr %l3
  %t17 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t19 = trunc i64 32 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l19
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb12
bb10:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = add i64 %t44, 1
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = load i32, ptr %l26, !tbaa !23
  %t50 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %t47, i32 %t48, i64 %t46)
  store i1 %t50, ptr %l29
  br label %bb11
bb11:
  %t51 = load i1, ptr %l29, !tbaa !21
  store i1 %t51, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l20, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l34
  br label %bb14
bb14:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t65 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t67 = trunc i64 20 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb20
bb19:
  %t70 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t72 = trunc i64 21 to i32
  %t73 = icmp eq i32 %t70, %t72
  store i1 %t73, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t75 = load i1, ptr %l38, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb23
bb22:
  %t76 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t78 = trunc i64 25 to i32
  %t79 = icmp eq i32 %t76, %t78
  store i1 %t79, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t81 = load i1, ptr %l41, !tbaa !21
  br i1 %t81, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb26
bb25:
  %t82 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t84 = trunc i64 29 to i32
  %t85 = icmp eq i32 %t82, %t84
  store i1 %t85, ptr %l44, !tbaa !21
  br label %bb26
bb26:
  %t87 = load i1, ptr %l44, !tbaa !21
  br i1 %t87, label %bb27, label %bb28
bb27:
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t89 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t91 = trunc i64 19 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb30, label %bb31
bb30:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l50, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %l1, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l55
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t105 = load i64, ptr %l2, !tbaa !24
  %t107 = add i64 %t105, 1
  %t108 = load ptr, ptr %l50, !tbaa !29
  %t109 = load i32, ptr %l55, !tbaa !23
  %t111 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %t108, i32 %t109, i64 %t107)
  store i1 %t111, ptr %l58
  br label %bb33
bb33:
  %t112 = load i1, ptr %l58, !tbaa !21
  store i1 %t112, ptr %rv
  br label %ret
bb34:
  %t113 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t115 = trunc i64 22 to i32
  %t116 = icmp eq i32 %t113, %t115
  br i1 %t116, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb37
bb36:
  %t118 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t120 = trunc i64 23 to i32
  %t121 = icmp eq i32 %t118, %t120
  store i1 %t121, ptr %l61, !tbaa !21
  br label %bb37
bb37:
  %t123 = load i1, ptr %l61, !tbaa !21
  br i1 %t123, label %bb38, label %bb39
bb38:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l64, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  %t131 = load i32, ptr %l1, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l69
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t135 = load i64, ptr %l2, !tbaa !24
  %t136 = load ptr, ptr %l64, !tbaa !29
  %t137 = load i32, ptr %l69, !tbaa !23
  %t139 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRefIn(ptr %v0, ptr %t136, i32 %t137, i64 %t135)
  store i1 %t139, ptr %l71
  br label %bb41
bb41:
  %t140 = load i1, ptr %l71, !tbaa !21
  store i1 %t140, ptr %rv
  br label %ret
bb42:
  %t141 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t143 = trunc i64 24 to i32
  %t144 = icmp eq i32 %t141, %t143
  br i1 %t144, label %bb43, label %bb44
bb43:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l74, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 2
  %t153 = load i32, ptr %l1, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t152, i32 %t153)
  store i32 %t156, ptr %l79
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t157 = load i64, ptr %l2, !tbaa !24
  %t158 = load ptr, ptr %l74, !tbaa !29
  %t159 = load i32, ptr %l79, !tbaa !23
  %t161 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRefIn(ptr %v0, ptr %t158, i32 %t159, i64 %t157)
  store i1 %t161, ptr %l81
  br label %bb46
bb46:
  %t162 = load i1, ptr %l81, !tbaa !21
  store i1 %t162, ptr %rv
  br label %ret
bb47:
  %t163 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t165 = trunc i64 18 to i32
  %t166 = icmp eq i32 %t163, %t165
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb48, label %bb49
bb48:
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %l1, !tbaa !23
  %t180 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t176, i32 %t177)
  store i1 %t180, ptr %l90
  br label %bb51
bb51:
  %t181 = load i1, ptr %l90, !tbaa !21
  %t182 = xor i1 %t181, true
  br i1 %t182, label %bb52, label %bb53
bb52:
  store i1 true, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/check:Checker", ptr %t185, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/generic:Program", ptr %t188, i32 0, i32 2
  store ptr %t190, ptr %l95, !tbaa !29
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/check:Checker", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  %t197 = load i32, ptr %l1, !tbaa !23
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t196, i32 %t197)
  store i32 %t200, ptr %l100
  br label %bb55
bb55:
  %t201 = load ptr, ptr %l95, !tbaa !29
  %t202 = load i32, ptr %l100, !tbaa !23
  %t203 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t201, i32 %t202)
  store i32 %t203, ptr %l101
  br label %bb56
bb56:
  %t204 = load i32, ptr %l101, !range !{i32 0, i32 6}
  store i32 %t204, ptr %l4
  %t205 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t207 = trunc i64 0 to i32
  %t208 = icmp eq i32 %t205, %t207
  br i1 %t208, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l105, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l1, !tbaa !23
  %t220 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t216, i32 %t217)
  store i32 %t220, ptr %l110
  br label %bb60
bb60:
  %t221 = load i64, ptr %l2, !tbaa !24
  %t222 = load ptr, ptr %l105, !tbaa !29
  %t223 = load i32, ptr %l110, !tbaa !23
  %t225 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRefIn(ptr %v0, ptr %t222, i32 %t223, i64 %t221)
  store i1 %t225, ptr %l112
  br label %bb61
bb61:
  %t226 = load i1, ptr %l112, !tbaa !21
  store i1 %t226, ptr %l102, !tbaa !21
  br label %bb79
bb62:
  %t227 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t229 = trunc i64 1 to i32
  %t230 = icmp eq i32 %t227, %t229
  br i1 %t230, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l115, !tbaa !29
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 2
  %t239 = load i32, ptr %l1, !tbaa !23
  %t242 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t238, i32 %t239)
  store i32 %t242, ptr %l120
  br label %bb66
bb66:
  %t243 = load i64, ptr %l2, !tbaa !24
  %t244 = load ptr, ptr %l115, !tbaa !29
  %t245 = load i32, ptr %l120, !tbaa !23
  %t247 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRefIn(ptr %v0, ptr %t244, i32 %t245, i64 %t243)
  store i1 %t247, ptr %l122
  br label %bb67
bb67:
  %t248 = load i1, ptr %l122, !tbaa !21
  store i1 %t248, ptr %l102, !tbaa !21
  br label %bb79
bb68:
  %t249 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t251 = trunc i64 4 to i32
  %t252 = icmp eq i32 %t249, %t251
  br i1 %t252, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l125, !tbaa !29
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/check:Checker", ptr %t255, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t260 = getelementptr %"compiler/generic:Program", ptr %t258, i32 0, i32 2
  %t261 = load i32, ptr %l1, !tbaa !23
  %t264 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t260, i32 %t261)
  store i32 %t264, ptr %l130
  br label %bb72
bb72:
  %t265 = load i64, ptr %l2, !tbaa !24
  %t267 = add i64 %t265, 1
  %t268 = load ptr, ptr %l125, !tbaa !29
  %t269 = load i32, ptr %l130, !tbaa !23
  %t271 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %t268, i32 %t269, i64 %t267)
  store i1 %t271, ptr %l133
  br label %bb73
bb73:
  %t272 = load i1, ptr %l133, !tbaa !21
  store i1 %t272, ptr %l102, !tbaa !21
  br label %bb79
bb74:
  br i1 true, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_595acbd52e732752_abc42ffc2c7a84b6)
  unreachable
bb79:
  %t273 = load i1, ptr %l102, !tbaa !21
  store i1 %t273, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFnCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, %"compiler/generic:Desc" %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/generic:Desc"
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l33 = alloca { i64, ptr }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l46 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store %"compiler/generic:Desc" %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t6 = load i64, ptr %t5, !tbaa !24
  %t9 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t6)
  store ptr %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l9, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Func", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t19, ptr %l14
  %t20 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t20, ptr %l15
  %t21 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  store i64 %t22, ptr %l16, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = icmp sge i64 0, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  br label %bb13
bb4:
  %t26 = icmp sle i64 0, 1152921504606846975
  br i1 %t26, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_c33d20c739747b79_a68497b5ec450035)
  unreachable
bb6:
  %t28 = mul i64 0, 8
  %t29 = insertvalue { i64, ptr } undef, i64 0, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t30, ptr %l20, !tbaa !27
  %t31 = icmp sge i64 0, 0
  br i1 %t31, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_c33d20c739747b79_a68497b5ec450035)
  unreachable
bb8:
  %t33 = icmp sle i64 0, 2305843009213693951
  br i1 %t33, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_a2acdb5fbad0e7ec_cfac66b997ea52c8)
  unreachable
bb10:
  %t35 = mul i64 0, 4
  %t36 = insertvalue { i64, ptr } undef, i64 0, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t38 = load ptr, ptr %l13, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l14
  %t40 = load %"compiler/source:Span", ptr %l15
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %v2, ptr %t38, %"compiler/source:Span" %t39, %"compiler/source:Span" %t40, i64 %t41, ptr null, { i64, ptr } %t42, { i64, ptr } %t43, { i64, ptr } %t37)
  store ptr %t45, ptr %l24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_a2acdb5fbad0e7ec_cfac66b997ea52c8)
  unreachable
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t46 = load ptr, ptr %l24, !tbaa !29
  store ptr %t46, ptr %rv
  br label %ret
bb13:
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp eq i64 %t49, 0
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l28, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t54, ptr %l29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Func", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %t58, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t55, i32 %t59)
  store { i64, ptr } %t62, ptr %l33
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Func", ptr %t63, i32 0, i32 3
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Sig", ptr %t66, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t73 = add i64 %t71, 1
  %t74 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFnCall(ptr %v0, ptr %v0, { i64, ptr } %t74, i64 %t73, i64 0)
  store %"compiler/diagmsg:Msg" %t76, ptr %l39
  br label %bb17
bb17:
  %t77 = load ptr, ptr %l28, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l29
  %t79 = load %"compiler/diagmsg:Msg", ptr %l39
  %t80 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t77, %"compiler/source:Span" %t78, %"compiler/diagmsg:Msg" %t79)
  store i64 %t80, ptr %l40
  br label %bb18
bb18:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t85 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t81, %"compiler/source:Span" %t82)
  store ptr %t85, ptr %l43
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t86 = load ptr, ptr %l43, !tbaa !29
  store ptr %t86, ptr %rv
  br label %ret
bb20:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l44, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t88, ptr %l45
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t89, ptr %l46, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr ptr, ptr %t91, i64 0
  %t93 = load ptr, ptr %t92, !tbaa !39
  store ptr %t93, ptr %l47, !tbaa !29
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t96 = getelementptr %"compiler/ast:Func", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  store i32 %t97, ptr %l49, !tbaa !23
  %t98 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t98, ptr %l50
  %t99 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t99, ptr %l51, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l53, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  store i64 %t104, ptr %l54, !tbaa !24
  %t105 = icmp sge i64 1, 0
  br i1 %t105, label %bb21, label %bb22
bb21:
  %t107 = load i64, ptr %l53, !tbaa !24
  %t108 = icmp sle i64 1, %t107
  br i1 %t108, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_6942cccb6154242f_a01950bde1a7e0d3)
  unreachable
bb23:
  %t110 = load i64, ptr %l53, !tbaa !24
  %t111 = load i64, ptr %l54, !tbaa !24
  %t112 = icmp sle i64 %t110, %t111
  br i1 %t112, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_6942cccb6154242f_a01950bde1a7e0d3)
  unreachable
bb25:
  %t114 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l53, !tbaa !24
  %t117 = getelementptr ptr, ptr %t115, i64 1
  %t118 = sub i64 %t116, 1
  %t119 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t117, 1
  store { i64, ptr } %t120, ptr %l58, !tbaa !27
  %t121 = icmp sge i64 0, 0
  br i1 %t121, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_6942cccb6154242f_a01950bde1a7e0d3)
  unreachable
bb27:
  %t123 = icmp sle i64 0, 1152921504606846975
  br i1 %t123, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_82d3307da2f2bfa_afac4966dc90b716)
  unreachable
bb29:
  %t125 = mul i64 0, 8
  %t126 = insertvalue { i64, ptr } undef, i64 0, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t127, ptr %l61, !tbaa !27
  %t128 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t128, ptr %l62
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_82d3307da2f2bfa_afac4966dc90b716)
  unreachable
bb31:
  %t129 = load ptr, ptr %l44, !tbaa !29
  %t130 = load %"compiler/source:Span", ptr %l45
  %t131 = load ptr, ptr %l47, !tbaa !29
  %t132 = load i32, ptr %l49, !tbaa !23
  %t133 = load %"compiler/source:Span", ptr %l50
  %t134 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t136 = load %"compiler/source:Span", ptr %l62
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v2, ptr %t129, %"compiler/source:Span" %t130, ptr %t131, i32 %t132, %"compiler/source:Span" %t133, { i64, ptr } %t134, { i64, ptr } %t135, %"compiler/source:Span" %t136)
  store ptr %t137, ptr %l63
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t138 = load ptr, ptr %l63, !tbaa !29
  store ptr %t138, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) })
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erestAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb22
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t59 = call i1 @compiler_2fcheck_2eisRest(ptr %v1, ptr %t57)
  store i1 %t59, ptr %l38
  br label %bb11
bb11:
  %t60 = load i1, ptr %l38, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t63 = load i64, ptr %l2, !tbaa !24
  %t65 = icmp sge i64 %t63, 0
  br i1 %t65, label %bb15, label %bb16
bb15:
  store ptr %a0, ptr %l42, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t68, ptr %l43, !tbaa !27
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t76 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t74)
  store %"compiler/source:Span" %t76, ptr %l46
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t77 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestTwice(ptr %v0)
  store %"compiler/diagmsg:Msg" %t77, ptr %l47
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l42, !tbaa !29
  %t79 = load %"compiler/source:Span", ptr %l46
  %t80 = load %"compiler/diagmsg:Msg", ptr %l47
  %t81 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t78, %"compiler/source:Span" %t79, %"compiler/diagmsg:Msg" %t80)
  store i64 %t81, ptr %l48
  br label %bb19
bb19:
  store i64 -2, ptr %rv
  br label %ret
bb20:
  %t83 = load i64, ptr %l8, !tbaa !24
  store i64 %t83, ptr %l2, !tbaa !24
  br label %bb21
bb21:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb7
bb22:
  %t89 = load i64, ptr %l2, !tbaa !24
  store i64 %t89, ptr %rv
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l31 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l47 = alloca i1
  %l48 = alloca ptr
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l81 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l90 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
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
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t21, ptr %l18
  br label %bb6
bb6:
  %t22 = load i1, ptr %l18, !tbaa !21
  store i1 %t22, ptr %l8, !tbaa !21
  br label %bb66
bb7:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 11
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb21
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Cond", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_64f1128892bbfadb_2fd1650a543ec847)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Cond", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t50, ptr %t49)
  store i1 %t52, ptr %l31
  br label %bb16
bb16:
  %t53 = load i1, ptr %l31, !tbaa !21
  br i1 %t53, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Cond", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t61 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t54, ptr %t58)
  store i1 %t61, ptr %l36
  br label %bb19
bb19:
  %t62 = load i1, ptr %l36, !tbaa !21
  store i1 %t62, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l32, !tbaa !21
  store i1 %t63, ptr %l8, !tbaa !21
  br label %bb66
bb21:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t65 = load ptr, ptr %l37, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l37, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 12
  store i1 %t71, ptr %l38, !tbaa !21
  br label %bb23
bb23:
  %t72 = load i1, ptr %l38, !tbaa !21
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l4, !tbaa !29
  br label %bb26
bb25:
  br label %bb34
bb26:
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Seq", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l48, !tbaa !29
  %t89 = load ptr, ptr %l4, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Seq", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  br i1 %t94, label %bb29, label %bb30
bb28:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb33
bb29:
  call void @__olang_check_failed(ptr @olang_loc_9b328daa59c12fec_530ed6f7b483a728)
  unreachable
bb30:
  br label %bb31
bb31:
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Seq", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t100 = load ptr, ptr %l48, !tbaa !29
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t100, ptr %t99)
  store i1 %t102, ptr %l54
  br label %bb32
bb32:
  %t103 = load i1, ptr %l54, !tbaa !21
  store i1 %t103, ptr %l47, !tbaa !21
  br label %bb33
bb33:
  %t104 = load i1, ptr %l47, !tbaa !21
  store i1 %t104, ptr %l8, !tbaa !21
  br label %bb66
bb34:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t106 = load ptr, ptr %l55, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t109 = load ptr, ptr %l55, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 18}
  %t112 = icmp eq i64 %t110, 13
  store i1 %t112, ptr %l56, !tbaa !21
  br label %bb36
bb36:
  %t113 = load i1, ptr %l56, !tbaa !21
  br i1 %t113, label %bb37, label %bb38
bb37:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t116, i32 0, i32 2
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l5, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t124 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroMatch(ptr %v0, ptr %v1, ptr %t120, ptr %t121)
  store i1 %t124, ptr %l63
  br label %bb40
bb40:
  %t125 = load i1, ptr %l63, !tbaa !21
  store i1 %t125, ptr %l8, !tbaa !21
  br label %bb66
bb41:
  %t126 = load ptr, ptr %l1, !tbaa !29
  store ptr %t126, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t127 = load ptr, ptr %l64, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb42, label %bb43
bb42:
  %t130 = load ptr, ptr %l64, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 18}
  %t133 = icmp eq i64 %t131, 14
  store i1 %t133, ptr %l65, !tbaa !21
  br label %bb43
bb43:
  %t134 = load i1, ptr %l65, !tbaa !21
  br i1 %t134, label %bb44, label %bb45
bb44:
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr { i64, [5 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t137, i32 0, i32 2
  %t139 = load ptr, ptr %t138
  store ptr %t139, ptr %l6, !tbaa !29
  br label %bb46
bb45:
  br label %bb54
bb46:
  %t141 = load ptr, ptr %l6, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Try", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb47, label %bb48
bb47:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l75, !tbaa !29
  %t151 = load ptr, ptr %l6, !tbaa !29
  %t153 = getelementptr %"compiler/typed:Try", ptr %t151, i32 0, i32 0
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = icmp eq ptr %t154, null
  br i1 %t156, label %bb49, label %bb50
bb48:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb53
bb49:
  call void @__olang_check_failed(ptr @olang_loc_aa71917389f82fa1_ab8db462134cc7fd)
  unreachable
bb50:
  br label %bb51
bb51:
  %t158 = load ptr, ptr %l6, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Try", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load ptr, ptr %l75, !tbaa !29
  %t164 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t162, ptr %t161)
  store i1 %t164, ptr %l81
  br label %bb52
bb52:
  %t165 = load i1, ptr %l81, !tbaa !21
  store i1 %t165, ptr %l74, !tbaa !21
  br label %bb53
bb53:
  %t166 = load i1, ptr %l74, !tbaa !21
  store i1 %t166, ptr %l8, !tbaa !21
  br label %bb66
bb54:
  %t167 = load ptr, ptr %l1, !tbaa !29
  store ptr %t167, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t168 = load ptr, ptr %l82, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb55, label %bb56
bb55:
  %t171 = load ptr, ptr %l82, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 18}
  %t174 = icmp eq i64 %t172, 6
  store i1 %t174, ptr %l83, !tbaa !21
  br label %bb56
bb56:
  %t175 = load i1, ptr %l83, !tbaa !21
  br i1 %t175, label %bb57, label %bb58
bb57:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [5 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t178, i32 0, i32 2
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l7, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l7, !tbaa !29
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallCopy(ptr %v0, ptr %v1, ptr %t182, ptr %t183)
  store i1 %t186, ptr %l90
  br label %bb60
bb60:
  %t187 = load i1, ptr %l90, !tbaa !21
  store i1 %t187, ptr %l8, !tbaa !21
  br label %bb66
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_45c1f7cb36e76579_9732da1c199d4515)
  unreachable
bb66:
  %t188 = load i1, ptr %l8, !tbaa !21
  store i1 %t188, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeepVal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l10 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
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
  %t9 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %a2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t9, ptr %l10
  br label %bb4
bb4:
  %t10 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10, ptr %l4
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 94
  %t14 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H970bb490312910b3b744570a26468c6c(ptr %v0, ptr %t13, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14)
  store i1 %t17, ptr %l14
  br label %bb5
bb5:
  %t18 = load i1, ptr %l14, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 94
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t24, ptr %l18
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l19
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd27b567062a69be2f699d8e9ab74cf5a(ptr %v0, ptr %v0, ptr %t26, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t27, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 94
  %t32 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t35 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf1792c165fec863e4f2028b41ed50f44(ptr %v0, ptr %v0, ptr %t31, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32)
  %t36 = extractvalue { i32, ptr } %t35, 1
  %t37 = extractvalue { i32, ptr } %t35, 0
  store i32 %t37, ptr %l25
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb12, label %ok.39, !prof !99
ok.39:
  store ptr %t36, ptr %l24
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l24, !tbaa !29
  store ptr %t40, ptr %l20, !tbaa !29
  br label %bb14
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  %t41 = load ptr, ptr %l20, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t41, ptr %t43)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l80 = alloca i1
  %l84 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i1
  %l103 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l122 = alloca i1
  %l128 = alloca i1
  %l130 = alloca ptr
  %l131 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l143 = alloca ptr
  %l145 = alloca ptr
  %l149 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t2 = load ptr, ptr %l21, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l21, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l22, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l22, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t17 = load ptr, ptr %l27, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l27, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l28, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l28, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l3, !tbaa !23
  %t32 = load i32, ptr %l4, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_e181575e6035f202_99a6d5836a9bf6a6)
  unreachable
bb16:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t39 = load ptr, ptr %l37, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t42 = load ptr, ptr %l37, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 1
  store i1 %t45, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l38, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t49, i32 0, i32 2
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l5, !tbaa !24
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t55, i32 0, i32 3
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l6, !tbaa !23
  br label %bb21
bb20:
  br label %bb35
bb21:
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t60 = load ptr, ptr %l45, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l45, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l46, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l46, !tbaa !21
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t70, i32 0, i32 2
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l7, !tbaa !24
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t76, i32 0, i32 3
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l8, !tbaa !23
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp eq i64 %t80, %t81
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load i32, ptr %l6, !tbaa !23
  %t87 = load i32, ptr %l8, !tbaa !23
  %t90 = icmp eq i32 %t86, %t87
  store i1 %t90, ptr %l56, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb29
bb29:
  %t92 = load i1, ptr %l56, !tbaa !21
  store i1 %t92, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_a5d3444dbde3a383_cb32d8a11a505607)
  unreachable
bb35:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t95 = load ptr, ptr %l61, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb36, label %bb37
bb36:
  %t98 = load ptr, ptr %l61, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 8}
  %t101 = icmp eq i64 %t99, 3
  store i1 %t101, ptr %l62, !tbaa !21
  br label %bb37
bb37:
  %t102 = load i1, ptr %l62, !tbaa !21
  br i1 %t102, label %bb38, label %bb39
bb38:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l9, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t111, i32 0, i32 3
  %t113 = load i64, ptr %t112
  store i64 %t113, ptr %l10, !tbaa !24
  br label %bb40
bb39:
  br label %bb55
bb40:
  %t115 = load ptr, ptr %l2, !tbaa !29
  store ptr %t115, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t116 = load ptr, ptr %l69, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb41, label %bb42
bb41:
  %t119 = load ptr, ptr %l69, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 8}
  %t122 = icmp eq i64 %t120, 3
  store i1 %t122, ptr %l70, !tbaa !21
  br label %bb42
bb42:
  %t123 = load i1, ptr %l70, !tbaa !21
  br i1 %t123, label %bb43, label %bb44
bb43:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t126, i32 0, i32 2
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l11, !tbaa !29
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t132, i32 0, i32 3
  %t134 = load i64, ptr %t133
  store i64 %t134, ptr %l12, !tbaa !24
  br label %bb45
bb44:
  br label %bb50
bb45:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t140 = icmp eq i64 %t136, %t137
  br i1 %t140, label %bb46, label %bb47
bb46:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load ptr, ptr %l9, !tbaa !29
  %t144 = load ptr, ptr %l11, !tbaa !29
  %t148 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t142, ptr %t143, ptr %t144)
  store i1 %t148, ptr %l84
  br label %bb48
bb47:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb49
bb48:
  %t149 = load i1, ptr %l84, !tbaa !21
  store i1 %t149, ptr %l80, !tbaa !21
  br label %bb49
bb49:
  %t150 = load i1, ptr %l80, !tbaa !21
  store i1 %t150, ptr %rv
  br label %ret
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i1 false, ptr %rv
  br label %ret
bb54:
  call void @__olang_check_failed(ptr @olang_loc_664096f84a6143a8_9c45533022ca790c)
  unreachable
bb55:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t153 = load ptr, ptr %l86, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb56, label %bb57
bb56:
  %t156 = load ptr, ptr %l86, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 8}
  %t159 = icmp eq i64 %t157, 4
  store i1 %t159, ptr %l87, !tbaa !21
  br label %bb57
bb57:
  %t160 = load i1, ptr %l87, !tbaa !21
  br i1 %t160, label %bb58, label %bb59
bb58:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t163, i32 0, i32 2
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l13, !tbaa !29
  br label %bb60
bb59:
  br label %bb72
bb60:
  %t167 = load ptr, ptr %l2, !tbaa !29
  store ptr %t167, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t168 = load ptr, ptr %l92, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb61, label %bb62
bb61:
  %t171 = load ptr, ptr %l92, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 8}
  %t174 = icmp eq i64 %t172, 4
  store i1 %t174, ptr %l93, !tbaa !21
  br label %bb62
bb62:
  %t175 = load i1, ptr %l93, !tbaa !21
  br i1 %t175, label %bb63, label %bb64
bb63:
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t178, i32 0, i32 2
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l14, !tbaa !29
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l13, !tbaa !29
  %t185 = getelementptr %"compiler/typed:Elem", ptr %t183, i32 0, i32 0
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t187 = load ptr, ptr %l14, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Elem", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t194 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t182, ptr %t186, ptr %t190)
  store i1 %t194, ptr %l103
  br label %bb66
bb66:
  %t195 = load i1, ptr %l103, !tbaa !21
  store i1 %t195, ptr %rv
  br label %ret
bb67:
  br i1 true, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  store i1 false, ptr %rv
  br label %ret
bb71:
  call void @__olang_check_failed(ptr @olang_loc_5f0b92ad49630279_51f88f4b15ed303d)
  unreachable
bb72:
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t198 = load ptr, ptr %l105, !tbaa !29
  %t199 = icmp ne ptr %t198, null
  br i1 %t199, label %bb73, label %bb74
bb73:
  %t201 = load ptr, ptr %l105, !tbaa !29
  %t202 = load i64, ptr %t201, !range !{i64 0, i64 8}
  %t204 = icmp eq i64 %t202, 5
  store i1 %t204, ptr %l106, !tbaa !21
  br label %bb74
bb74:
  %t205 = load i1, ptr %l106, !tbaa !21
  br i1 %t205, label %bb75, label %bb76
bb75:
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t208, i32 0, i32 2
  %t210 = load ptr, ptr %t209
  store ptr %t210, ptr %l15, !tbaa !29
  br label %bb77
bb76:
  br label %bb92
bb77:
  %t212 = load ptr, ptr %l2, !tbaa !29
  store ptr %t212, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t213 = load ptr, ptr %l111, !tbaa !29
  %t214 = icmp ne ptr %t213, null
  br i1 %t214, label %bb78, label %bb79
bb78:
  %t216 = load ptr, ptr %l111, !tbaa !29
  %t217 = load i64, ptr %t216, !range !{i64 0, i64 8}
  %t219 = icmp eq i64 %t217, 5
  store i1 %t219, ptr %l112, !tbaa !21
  br label %bb79
bb79:
  %t220 = load i1, ptr %l112, !tbaa !21
  br i1 %t220, label %bb80, label %bb81
bb80:
  %t221 = load ptr, ptr %l2, !tbaa !29
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t223, i32 0, i32 2
  %t225 = load ptr, ptr %t224
  store ptr %t225, ptr %l16, !tbaa !29
  br label %bb82
bb81:
  br label %bb87
bb82:
  %t227 = load ptr, ptr %l15, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Payload", ptr %t227, i32 0, i32 1
  %t230 = load i64, ptr %t229, !tbaa !24
  %t231 = load ptr, ptr %l16, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Payload", ptr %t231, i32 0, i32 1
  %t234 = load i64, ptr %t233, !tbaa !24
  %t237 = icmp eq i64 %t230, %t234
  br i1 %t237, label %bb83, label %bb84
bb83:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load ptr, ptr %l15, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Payload", ptr %t240, i32 0, i32 0
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t244 = load ptr, ptr %l16, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Payload", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t251 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t239, ptr %t243, ptr %t247)
  store i1 %t251, ptr %l128
  br label %bb85
bb84:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb86
bb85:
  %t252 = load i1, ptr %l128, !tbaa !21
  store i1 %t252, ptr %l122, !tbaa !21
  br label %bb86
bb86:
  %t253 = load i1, ptr %l122, !tbaa !21
  store i1 %t253, ptr %rv
  br label %ret
bb87:
  br i1 true, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  store i1 false, ptr %rv
  br label %ret
bb91:
  call void @__olang_check_failed(ptr @olang_loc_265c788dd5eed9e_866edb98fc8c38ea)
  unreachable
bb92:
  %t255 = load ptr, ptr %l1, !tbaa !29
  store ptr %t255, ptr %l130, !tbaa !29
  store i1 false, ptr %l131, !tbaa !21
  %t256 = load ptr, ptr %l130, !tbaa !29
  %t257 = icmp ne ptr %t256, null
  br i1 %t257, label %bb93, label %bb94
bb93:
  %t259 = load ptr, ptr %l130, !tbaa !29
  %t260 = load i64, ptr %t259, !range !{i64 0, i64 8}
  %t262 = icmp eq i64 %t260, 2
  store i1 %t262, ptr %l131, !tbaa !21
  br label %bb94
bb94:
  %t263 = load i1, ptr %l131, !tbaa !21
  br i1 %t263, label %bb95, label %bb96
bb95:
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr { i64, [4 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t266, i32 0, i32 2
  %t268 = load ptr, ptr %t267
  store ptr %t268, ptr %l17, !tbaa !29
  br label %bb97
bb96:
  br label %bb117
bb97:
  %t270 = load ptr, ptr %l2, !tbaa !29
  store ptr %t270, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t271 = load ptr, ptr %l136, !tbaa !29
  %t272 = icmp ne ptr %t271, null
  br i1 %t272, label %bb98, label %bb99
bb98:
  %t274 = load ptr, ptr %l136, !tbaa !29
  %t275 = load i64, ptr %t274, !range !{i64 0, i64 8}
  %t277 = icmp eq i64 %t275, 2
  store i1 %t277, ptr %l137, !tbaa !21
  br label %bb99
bb99:
  %t278 = load i1, ptr %l137, !tbaa !21
  br i1 %t278, label %bb100, label %bb101
bb100:
  %t279 = load ptr, ptr %l2, !tbaa !29
  %t281 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t281, i32 0, i32 2
  %t283 = load ptr, ptr %t282
  store ptr %t283, ptr %l18, !tbaa !29
  br label %bb102
bb101:
  br label %bb112
bb102:
  %t285 = load ptr, ptr %l17, !tbaa !29
  %t287 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t285)
  store ptr %t287, ptr %l143
  br label %bb103
bb103:
  %t288 = load ptr, ptr %l143, !tbaa !29
  store ptr %t288, ptr %l19, !tbaa !29
  %t289 = load ptr, ptr %l18, !tbaa !29
  %t291 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t289)
  store ptr %t291, ptr %l145
  br label %bb104
bb104:
  %t292 = load ptr, ptr %l145, !tbaa !29
  store ptr %t292, ptr %l20, !tbaa !29
  %t293 = load ptr, ptr %l19, !tbaa !29
  %t295 = icmp eq ptr %t293, null
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb105, label %bb106
bb105:
  %t299 = load ptr, ptr %l20, !tbaa !29
  %t301 = icmp eq ptr %t299, null
  %t303 = xor i1 %t301, true
  store i1 %t303, ptr %l149, !tbaa !21
  br label %bb107
bb106:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb107
bb107:
  %t305 = load i1, ptr %l149, !tbaa !21
  br i1 %t305, label %bb108, label %bb109
bb108:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l19, !tbaa !29
  %t308 = load ptr, ptr %l20, !tbaa !29
  %t312 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t306, ptr %t307, ptr %t308)
  store i1 %t312, ptr %l157
  br label %bb110
bb109:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb111
bb110:
  %t313 = load i1, ptr %l157, !tbaa !21
  store i1 %t313, ptr %l153, !tbaa !21
  br label %bb111
bb111:
  %t314 = load i1, ptr %l153, !tbaa !21
  store i1 %t314, ptr %rv
  br label %ret
bb112:
  br i1 true, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  store i1 false, ptr %rv
  br label %ret
bb116:
  call void @__olang_check_failed(ptr @olang_loc_6ac4c8202b0b581f_2f15107fd7d9b5ab)
  unreachable
bb117:
  br i1 true, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  store i1 false, ptr %rv
  br label %ret
bb121:
  call void @__olang_check_failed(ptr @olang_loc_8bfef52d6d2c65e4_ce3ff42f583fc170)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetReaches(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/generic:Context"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca i32
  %l23 = alloca i1
  %l31 = alloca i32
  %l39 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca %"compiler/generic:Context"
  %l57 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca i64
  %l68 = alloca i32
  %l72 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t75 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l19
  br label %bb3
bb3:
  %t17 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t19 = trunc i64 18 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp sgt i64 %t25, 64
  store i1 %t27, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l23, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l31
  br label %bb11
bb11:
  %t41 = load i32, ptr %l31, !tbaa !23
  store i32 %t41, ptr %l4, !tbaa !23
  %t42 = load i32, ptr %l4, !tbaa !23
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = icmp eq i32 %t42, %t43
  br i1 %t46, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i32, ptr %l4, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %s0, ptr %t52, i32 %t53)
  store { i64, ptr } %t56, ptr %l39
  br label %bb15
bb15:
  %t57 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t57, ptr %l5, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = icmp eq i64 %t60, 0
  br i1 %t62, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l4, !tbaa !23
  %t74 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t70, i32 %t71)
  store i64 %t74, ptr %l48
  br label %bb19
bb19:
  %t76 = load i64, ptr %l48, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t75, ptr %s0, i64 %t76, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %t75, i64 160, i1 false)
  br label %bb20
bb20:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l49, i64 160, i1 false)
  %t77 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t77, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb22, label %bb23
bb22:
  br label %bb33
bb23:
  br label %bb24
bb24:
  %t91 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t91, ptr %l57, !tbaa !27
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t92
  %t97 = load ptr, ptr %t96, !tbaa !39
  store ptr %t97, ptr %l10, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l60, !tbaa !29
  %t100 = load ptr, ptr %l10, !tbaa !29
  store ptr %t100, ptr %l61, !tbaa !29
  %t101 = ptrtoint ptr %s0 to i64
  store i64 %t101, ptr %l62, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l61, !tbaa !29
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr %s0)
  %t106 = ptrtoint ptr %t105 to i64
  store i64 %t106, ptr %l62, !tbaa !24
  br label %bb26
bb26:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t111 = load ptr, ptr %l10, !tbaa !29
  %t112 = load i64, ptr %l62
  %t113 = inttoptr i64 %t112 to ptr
  %t117 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %s0, ptr %t113, ptr %t110, ptr %l6, ptr %t111)
  store i32 %t117, ptr %l68
  br label %bb27
bb27:
  %t118 = load i32, ptr %l2, !tbaa !23
  %t119 = load i64, ptr %l3, !tbaa !24
  %t121 = add i64 %t119, 1
  %t122 = load ptr, ptr %l60, !tbaa !29
  %t123 = load i32, ptr %l68, !tbaa !23
  %t126 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetReaches(ptr %v0, ptr %t122, i32 %t123, i32 %t118, i64 %t121)
  store i1 %t126, ptr %l72
  br label %bb28
bb28:
  %t127 = load i1, ptr %l72, !tbaa !21
  br i1 %t127, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l8, !tbaa !24
  br label %bb21
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i32
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca i32
  %l37 = alloca ptr
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l14
  br label %bb3
bb3:
  %t9 = load i64, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t15, i64 %t16)
  store i32 %t19, ptr %l19
  br label %bb7
bb7:
  %t20 = load i32, ptr %l19, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t20)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l5, !tbaa !24
  br label %bb2
bb10:
  store ptr %a2, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t30 = load i64, ptr %l8, !tbaa !24
  store i64 %t30, ptr %l25, !tbaa !24
  %t31 = load ptr, ptr %l7, !tbaa !29
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t31)
  store i64 %t33, ptr %l27
  br label %bb12
bb12:
  %t34 = load i64, ptr %l25, !tbaa !24
  %t35 = load i64, ptr %l27, !tbaa !24
  %t36 = icmp slt i64 %t34, %t35
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t40 = load ptr, ptr %l7, !tbaa !29
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t40, i64 %t41)
  store i32 %t44, ptr %l32
  br label %bb16
bb16:
  %t45 = load i32, ptr %l32, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t45)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l8, !tbaa !24
  br label %bb11
bb19:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l37, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %s0, ptr %t54, ptr %l3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l40
  br label %bb20
bb20:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  %t59 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %t59
  %t60 = load ptr, ptr %l37, !tbaa !29
  %t62 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %s0, ptr %v3, ptr %t60, ptr %t59)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l42
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleLandings(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca %"compiler/check:landing"
  %l48 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 73
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l13
  br label %bb5
bb5:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 73
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l16
  br label %bb6
bb6:
  %t16 = load i64, ptr %l16, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb12
bb9:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l23, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l23, !tbaa !24
  store i64 %t43, ptr %l20, !tbaa !24
  br label %bb12
bb12:
  %t44 = load i64, ptr %l20, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 73
  %t69 = call %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t65, i64 %t61)
  store %"compiler/check:landing" %t69, ptr %l44
  br label %bb17
bb17:
  %t70 = getelementptr %"compiler/check:landing", ptr %l44, i32 0, i32 0
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t73)
  store i1 %t76, ptr %l48
  br label %bb18
bb18:
  %t77 = load i1, ptr %l48, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  br label %bb24
bb20:
  br label %bb21
bb21:
  %t78 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t78, i1 true)
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandingsOf(ptr %v0, ptr %t81, i64 %t82)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l6, !tbaa !24
  br label %bb13
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellAnonEnum(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l25 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l45 = alloca i64
  %l48 = alloca i64
  %l67 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l91 = alloca i32
  %l92 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l104 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l111 = alloca i32
  %l118 = alloca i64
  %l121 = alloca i64
  %l142 = alloca ptr
  %l144 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l2, !tbaa !23
  %t12 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v0, ptr %t8, i32 %t9)
  store { i64, ptr } %t12, ptr %l25
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  store ptr %t19, ptr %l28, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l33
  br label %bb3
bb3:
  %t30 = load ptr, ptr %l28, !tbaa !29
  %t31 = load i32, ptr %l33, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t30, i32 %t31)
  store { i64, ptr } %t32, ptr %l34
  br label %bb4
bb4:
  %t33 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeFields(ptr %v0, ptr %v0, ptr %t39, i32 %t40)
  store { i64, ptr } %t43, ptr %l39
  br label %bb5
bb5:
  %t44 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t44, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = icmp sgt i64 %t49, %t50
  br i1 %t53, label %bb6, label %bb7
bb6:
  %t55 = load i64, ptr %l9, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb11
bb8:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = sub i64 %t59, %t60
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = add i64 %t63, %t64
  %t69 = sub i64 %t67, 1
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = sdiv i64 %t69, %t70
  store i64 %t73, ptr %l48, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb10
bb10:
  %t75 = load i64, ptr %l48, !tbaa !24
  store i64 %t75, ptr %l45, !tbaa !24
  br label %bb11
bb11:
  %t76 = load i64, ptr %l45, !tbaa !24
  store i64 %t76, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t77 = load i64, ptr %l11, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb13, label %bb14
bb13:
  br label %bb58
bb14:
  br label %bb15
bb15:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = mul i64 %t86, %t87
  %t93 = add i64 %t85, %t90
  store i64 %t93, ptr %l12, !tbaa !24
  %t95 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t95, i8 32)
  br label %bb16
bb16:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l67, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t99, ptr %l69, !tbaa !27
  %t100 = load i64, ptr %l12, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 %t100
  %t105 = load i32, ptr %t104, !tbaa !33
  %t108 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t98, i32 %t105)
  store { i64, ptr } %t108, ptr %l72
  br label %bb17
bb17:
  %t109 = load ptr, ptr %l67, !tbaa !29
  %t110 = load { i64, ptr }, ptr %l72, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t109, { i64, ptr } %t110)
  br label %bb18
bb18:
  %t111 = load i64, ptr %l12, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t117 = icmp sge i64 %t111, %t114
  br i1 %t117, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb21
bb20:
  %t119 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t119, ptr %l78, !tbaa !27
  %t120 = load i64, ptr %l12, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i32, ptr %t123, i64 %t120
  %t125 = load i32, ptr %t124, !tbaa !33
  %t127 = icmp eq i32 %t125, 0
  store i1 %t127, ptr %l77, !tbaa !21
  br label %bb21
bb21:
  %t129 = load i1, ptr %l77, !tbaa !21
  br i1 %t129, label %bb22, label %bb23
bb22:
  br label %bb57
bb23:
  br label %bb24
bb24:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  store ptr %t135, ptr %l84, !tbaa !29
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  %t142 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t142, ptr %l88, !tbaa !27
  %t143 = load i64, ptr %l12, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i32, ptr %t146, i64 %t143
  %t148 = load i32, ptr %t147, !tbaa !33
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t141, i32 %t148)
  store i32 %t151, ptr %l91
  br label %bb25
bb25:
  %t152 = load ptr, ptr %l84, !tbaa !29
  %t153 = load i32, ptr %l91, !tbaa !23
  %t154 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t152, i32 %t153)
  store { i64, ptr } %t154, ptr %l92
  br label %bb26
bb26:
  %t155 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t155, ptr %l13, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t160 = icmp eq i64 %t158, 0
  br i1 %t160, label %bb27, label %bb28
bb27:
  br label %bb57
bb28:
  br label %bb29
bb29:
  %t162 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t165 = load i64, ptr %l6, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t171 = add i64 %t165, %t168
  %t174 = icmp slt i64 %t164, %t171
  br i1 %t174, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l103, !tbaa !29
  %t177 = load ptr, ptr %l1, !tbaa !29
  store ptr %t177, ptr %l104, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = getelementptr %"compiler/generic:Program", ptr %t181, i32 0, i32 2
  %t184 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t184, ptr %l108, !tbaa !27
  %t185 = load i64, ptr %l12, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i32, ptr %t188, i64 %t185
  %t190 = load i32, ptr %t189, !tbaa !33
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t183, i32 %t190)
  store i32 %t193, ptr %l111
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t194 = load ptr, ptr %l103, !tbaa !29
  %t195 = load ptr, ptr %l104, !tbaa !29
  %t196 = load i32, ptr %l111, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellList(ptr %v0, ptr %v1, ptr %s5, ptr %s5, ptr %t194, ptr %t195, i32 %t196, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb57
bb34:
  %t197 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t197, i8 40)
  br label %bb35
bb35:
  store i64 0, ptr %l14, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 0
  store i64 %t201, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t203 = load i64, ptr %l15, !tbaa !24
  %t204 = load i64, ptr %l14, !tbaa !24
  %t207 = icmp sgt i64 %t203, %t204
  br i1 %t207, label %bb36, label %bb37
bb36:
  %t209 = load i64, ptr %l16, !tbaa !24
  %t211 = icmp sgt i64 %t209, 0
  br i1 %t211, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb41
bb38:
  %t213 = load i64, ptr %l15, !tbaa !24
  %t214 = load i64, ptr %l14, !tbaa !24
  %t217 = sub i64 %t213, %t214
  %t218 = load i64, ptr %l16, !tbaa !24
  %t221 = add i64 %t217, %t218
  %t223 = sub i64 %t221, 1
  %t224 = load i64, ptr %l16, !tbaa !24
  %t227 = sdiv i64 %t223, %t224
  store i64 %t227, ptr %l121, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb40
bb40:
  %t229 = load i64, ptr %l121, !tbaa !24
  store i64 %t229, ptr %l118, !tbaa !24
  br label %bb41
bb41:
  %t230 = load i64, ptr %l118, !tbaa !24
  store i64 %t230, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb42
bb42:
  %t231 = load i64, ptr %l18, !tbaa !24
  %t232 = load i64, ptr %l17, !tbaa !24
  %t235 = icmp slt i64 %t231, %t232
  %t237 = xor i1 %t235, true
  br i1 %t237, label %bb43, label %bb44
bb43:
  br label %bb55
bb44:
  br label %bb45
bb45:
  %t239 = load i64, ptr %l14, !tbaa !24
  %t240 = load i64, ptr %l18, !tbaa !24
  %t241 = load i64, ptr %l16, !tbaa !24
  %t244 = mul i64 %t240, %t241
  %t247 = add i64 %t239, %t244
  store i64 %t247, ptr %l19, !tbaa !24
  %t249 = load i64, ptr %l19, !tbaa !24
  %t251 = icmp sgt i64 %t249, 0
  br i1 %t251, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s8
  %t253 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s8, ptr %t253, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_scope_close(ptr %s8)
  br label %bb49
bb49:
  %t255 = load ptr, ptr %l1, !tbaa !29
  store ptr %t255, ptr %l142, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t257, ptr %l144, !tbaa !27
  %t258 = load i64, ptr %l6, !tbaa !24
  %t259 = load i64, ptr %l19, !tbaa !24
  %t262 = add i64 %t258, %t259
  %t264 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i32, ptr %t265, i64 %t262
  %t267 = load i32, ptr %t266, !tbaa !33
  %t270 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t256, i32 %t267)
  store { i64, ptr } %t270, ptr %l149
  br label %bb50
bb50:
  %t271 = load ptr, ptr %l142, !tbaa !29
  %t272 = load { i64, ptr }, ptr %l149, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t271, { i64, ptr } %t272)
  br label %bb51
bb51:
  %t273 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t273, i8 32)
  br label %bb52
bb52:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t277 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t277, ptr %l153, !tbaa !27
  %t278 = load i64, ptr %l19, !tbaa !24
  %t280 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr i32, ptr %t281, i64 %t278
  %t283 = load i32, ptr %t282, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t275, ptr %t276, i32 %t283, i1 false)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t287 = load i64, ptr %l18, !tbaa !24
  %t289 = add i64 %t287, 1
  store i64 %t289, ptr %l18, !tbaa !24
  br label %bb42
bb55:
  %t291 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t291, i8 41)
  br label %bb56
bb56:
  %t293 = load i64, ptr %l6, !tbaa !24
  %t294 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t299 = add i64 %t293, %t296
  store i64 %t299, ptr %l6, !tbaa !24
  br label %bb57
bb57:
  %t301 = load i64, ptr %l11, !tbaa !24
  %t303 = add i64 %t301, 1
  store i64 %t303, ptr %l11, !tbaa !24
  br label %bb12
bb58:
  %t305 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t305, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextPlus(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextPieces(ptr %v0, ptr %v1, ptr %v3, ptr %t5, ptr %a2, ptr %t7)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextPieces(ptr %v0, ptr %v2, ptr %v3, ptr %t11, ptr %a3, ptr %t13)
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextOf(ptr %v0, ptr %v3, ptr %v3, ptr %t17, %"compiler/source:Span" %a1, ptr %t19)
  store ptr %t23, ptr %l16
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l16, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 44
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
  %t235 = load i32, ptr %l144, !range !{i32 0, i32 51}
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
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 44
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
  %t359 = load i32, ptr %l197, !range !{i32 0, i32 51}
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
  %t505 = getelementptr %"compiler/check:Checker", ptr %t503, i32 0, i32 44
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeNarrowed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:narrowed"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l10 = alloca i64
  %l15 = alloca ptr
  %l19 = alloca %"compiler/check:narrowed"
  %l21 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca ptr
  %l42 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i64 %a1, ptr %l6, !tbaa !24
  %t3 = icmp sge i64 0, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = icmp sle i64 0, 2305843009213693951
  br i1 %t5, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_cd70ff81a8aaff09_d672b27f0a953c3d)
  unreachable
bb3:
  %t7 = mul i64 0, 4
  %t8 = insertvalue { i64, ptr } undef, i64 0, 0
  %t9 = insertvalue { i64, ptr } %t8, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseNarrowing(ptr %v0, ptr %s0, ptr %t10, i64 %t11, { i64, ptr } %t9)
  store i64 %t13, ptr %l10
  br label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_cd70ff81a8aaff09_d672b27f0a953c3d)
  unreachable
bb5:
  %t14 = load i64, ptr %l10, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  br i1 %t17, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t20)
  store ptr %t22, ptr %l15
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t25 = getelementptr %"compiler/check:frame", ptr %t23, i32 0, i32 46
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store %"compiler/check:narrowed" %t29, ptr %l19
  br label %bb10
bb10:
  %t30 = load %"compiler/check:narrowed", ptr %l19
  store %"compiler/check:narrowed" %t30, ptr %l3
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = getelementptr %"compiler/check:narrowed", ptr %l3, i32 0, i32 2
  %t42 = load i32, ptr %t41, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t40, i32 %t42)
  store i32 %t45, ptr %l26
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l21, !tbaa !29
  %t47 = load i32, ptr %l26, !tbaa !23
  %t48 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store ptr %t48, ptr %l27
  br label %bb12
bb12:
  %t49 = getelementptr %"compiler/check:narrowed", ptr %l3, i32 0, i32 1
  %t50 = load i64, ptr %t49, !tbaa !24
  %t51 = load ptr, ptr %l27, !tbaa !29
  %t53 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t51, i64 %t50)
  store ptr %t53, ptr %l29
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l29, !tbaa !29
  store ptr %t54, ptr %l4, !tbaa !29
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb16
bb15:
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/ast:CaseDecl", ptr %t59, i32 0, i32 3
  %t62 = load i1, ptr %t61, !tbaa !21
  %t64 = xor i1 %t62, true
  store i1 %t64, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t66 = load i1, ptr %l32, !tbaa !21
  br i1 %t66, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t68)
  store ptr %t70, ptr %l38
  br label %bb20
bb20:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t73 = getelementptr %"compiler/check:frame", ptr %t71, i32 0, i32 47
  %t74 = getelementptr %"compiler/check:narrowed", ptr %l3, i32 0, i32 3
  %t75 = load i64, ptr %t74, !tbaa !24
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t73, i64 %t75)
  store i64 %t78, ptr %l42
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t79 = load i64, ptr %l42, !tbaa !24
  store i64 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2eisCharLit(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 113}
  store i32 %t14, ptr %l1
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t18 = trunc i64 4 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %l2, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_83df14ccfb59caa2_79e7c0956b45666e)
  unreachable
bb11:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ekeyedEmpty(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp ne i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  %t9 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr ptr, ptr %t10, i64 0
  %t12 = load ptr, ptr %t11, !tbaa !39
  store ptr %t12, ptr %l1, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t15 = load ptr, ptr %l11, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l11, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 28}
  %t21 = icmp eq i64 %t19, 15
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l12, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t25, i32 0, i32 1
  %t27 = load ptr, ptr %t26
  store ptr %t27, ptr %l2, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l21, !tbaa !21
  store i1 %t43, ptr %l10, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_96843d56e3e95d2_694f204784a4fb86)
  unreachable
bb17:
  %t44 = load i1, ptr %l10, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca i1
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
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t23, ptr %l16, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  %t33 = call i1 @compiler_2fcheck_2eleaves(ptr %v0, ptr %t29)
  store i1 %t33, ptr %l20
  br label %bb8
bb8:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l2, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 67 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb4:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t8 = trunc i64 68 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb8:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t13 = trunc i64 69 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb12:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t18 = trunc i64 71 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb16:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t23 = trunc i64 72 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb20:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t28 = trunc i64 73 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb24:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t33 = trunc i64 96 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb25, label %bb26
bb25:
  br label %bb33
bb26:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t38 = trunc i64 98 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t43 = trunc i64 97 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t48 = trunc i64 99 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb34:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t53 = trunc i64 100 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb38:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t58 = trunc i64 101 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb42:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t63 = trunc i64 102 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb46:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t68 = trunc i64 105 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb50:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t73 = trunc i64 106 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb54:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t78 = trunc i64 70 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l1, !tbaa !27
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

define dso_local i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l51 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb47
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t34)
  store i1 %t36, ptr %l21
  br label %bb16
bb16:
  %t37 = load i1, ptr %l21, !tbaa !21
  store i1 %t37, ptr %l5, !tbaa !21
  br label %bb47
bb17:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 5
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l23, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l2, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Payload", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t56)
  store i1 %t58, ptr %l30
  br label %bb23
bb23:
  %t59 = load i1, ptr %l30, !tbaa !21
  store i1 %t59, ptr %l5, !tbaa !21
  br label %bb47
bb24:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb25, label %bb26
bb25:
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 8}
  %t67 = icmp eq i64 %t65, 4
  store i1 %t67, ptr %l32, !tbaa !21
  br label %bb26
bb26:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb27, label %bb28
bb27:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l3, !tbaa !29
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Elem", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t78)
  store i1 %t80, ptr %l39
  br label %bb30
bb30:
  %t81 = load i1, ptr %l39, !tbaa !21
  br i1 %t81, label %bb31, label %bb32
bb31:
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Elem", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = call i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %t85)
  store i1 %t87, ptr %l43
  br label %bb33
bb32:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb34
bb33:
  %t88 = load i1, ptr %l43, !tbaa !21
  store i1 %t88, ptr %l40, !tbaa !21
  br label %bb34
bb34:
  %t89 = load i1, ptr %l40, !tbaa !21
  store i1 %t89, ptr %l5, !tbaa !21
  br label %bb47
bb35:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t91 = load ptr, ptr %l44, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb36, label %bb37
bb36:
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 8}
  %t97 = icmp eq i64 %t95, 2
  store i1 %t97, ptr %l45, !tbaa !21
  br label %bb37
bb37:
  %t98 = load i1, ptr %l45, !tbaa !21
  br i1 %t98, label %bb38, label %bb39
bb38:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr { i64, [4 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t105 = load ptr, ptr %l4, !tbaa !29
  %t107 = call i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %t105)
  store i1 %t107, ptr %l51
  br label %bb41
bb41:
  %t108 = load i1, ptr %l51, !tbaa !21
  store i1 %t108, ptr %l5, !tbaa !21
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d5f035b3a669b232_703ee1b693614206)
  unreachable
bb47:
  %t109 = load i1, ptr %l5, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2eprimName(ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a0 to i64
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp eq i64 %t5, 3
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb4:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp eq i64 %t9, 4
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb8:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = icmp eq i64 %t13, 5
  br i1 %t15, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb12:
  %t17 = load i64, ptr %l1, !tbaa !24
  %t19 = icmp eq i64 %t17, 6
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb16:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = icmp eq i64 %t21, 7
  br i1 %t23, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb20:
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = icmp eq i64 %t25, 8
  br i1 %t27, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb24:
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = icmp eq i64 %t29, 9
  br i1 %t31, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb28:
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp eq i64 %t33, 10
  br i1 %t35, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb32:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = icmp eq i64 %t37, 11
  br i1 %t39, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb36:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp eq i64 %t41, 12
  br i1 %t43, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb40:
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = icmp eq i64 %t45, 13
  br i1 %t47, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb44:
  %t49 = load i64, ptr %l1, !tbaa !24
  %t51 = icmp eq i64 %t49, 14
  br i1 %t51, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_25d55d46e6c695b2_1c5feb2a345583d6)
  unreachable
bb53:
  %t53 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:Gap" @compiler_2fcheck_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/check:Gap"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:Gap" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/check:Gap" %t8, %"compiler/source:Span" %a1, 1
  %t12 = insertvalue %"compiler/check:Gap" %t10, { i64, ptr } %a2, 2
  store %"compiler/check:Gap" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:Gap", ptr %rv
  ret %"compiler/check:Gap" %rr
}

define dso_local %"compiler/check:fieldSet" @compiler_2fcheck_3afieldSet_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/check:fieldSet"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:fieldSet" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/check:fieldSet" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/check:fieldSet" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/check:fieldSet" %t14, { i64, ptr } %a3, 3
  store %"compiler/check:fieldSet" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:fieldSet", ptr %rv
  ret %"compiler/check:fieldSet" %rr
}

define dso_local %"compiler/check:typeCase" @compiler_2fcheck_3atypeCase_2ector(ptr %v0, i1 %a0, i1 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:typeCase"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:typeCase" undef, i1 %a0, 0
  %t12 = insertvalue %"compiler/check:typeCase" %t10, i1 %a1, 1
  %t14 = insertvalue %"compiler/check:typeCase" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/check:typeCase" %t14, i64 %a3, 3
  %t18 = insertvalue %"compiler/check:typeCase" %t16, i64 0, 4
  %t20 = insertvalue %"compiler/check:typeCase" %t18, i1 false, 5
  store %"compiler/check:typeCase" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:typeCase", ptr %rv
  ret %"compiler/check:typeCase" %rr
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a call of a name of this kind" }>, align 8
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
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"has no zero value (a never-null reference field - hold it as ?&)" }>, align 8
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecolumnsMet_2elocal_2e4 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"a type of this kind called" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3actSource_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"param" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kept" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"mut" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ref" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"call" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Get" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"view" }>, align 8
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

@.d23 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"a call through x[i] made in place whose callee may change the collection (E31b)" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"CStr" }>, align 8
@.d25 = private constant <{ i64, [109 x i8] }> <{ i64 0, [109 x i8] c" - it is a parameter of the constructor, not a field (C2a): name it alone on a line of the constructor's body" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
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

@.d27 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"enum {" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d31 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d33 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Minus" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Div" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Rem" }>, align 8
@.d37 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"MatMul" }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Less" }>, align 8
@.d39 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitXor" }>, align 8
@.d42 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ShiftLeft" }>, align 8
@.d43 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ShiftRight" }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Pow" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d48 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d49 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d51 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d52 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d53 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d54 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d55 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d56 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d57 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
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

declare i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eclosedCall(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %a0)
@olang_loc_3c4137bcc23e7cab_322d476e7cbf1657 = external constant [0 x i8]
@olang_loc_64e99bada124913c_2f99d6e12db86a38 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eclosedFn(ptr %v0, ptr %a0)
@olang_loc_f407e4aa2d3806b8_dd2e5682c5fdf6f4 = external constant [0 x i8]
@olang_loc_a6ae1e9a693d05c9_888d1f7981f90365 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBodyIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %a5, i32 %a6)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Heda0e3070e2f5ab051ad1f451edd65eb(ptr %v0, ptr %a0)
declare %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H62ca4e6c77402fbaa86eb0d94ae649ee(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Habcf70cf374eb3bb03a96803ac10570d(ptr %v0, ptr %a0, %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_6af63211fe08a219_4bcf48e786826ca5 = external constant [0 x i8]
@olang_loc_31ceea79ef23e30c_3748df63b5867238 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinType(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferredCtor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, i32 %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodMeant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunctionMethod(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estdTypeModule(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunction(ptr %v0, ptr %v1, { i64, ptr } %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunctionMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordCalled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_b1d60606349c196f_148fe1dbe07e141b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %a0, %"compiler/typed:Local" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_486b3db7a819736b_b4c2afa2fe5bd5af = external constant [0 x i8]
declare %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, i32 %a5)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_854899d5724a103b_e7dfb19072d83fa7 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, ptr %a3, i32 %a4, %"compiler/source:Span" %a5, i1 %a6)
@olang_loc_852b58c2eb82b3cc_e47a0c64d3951188 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopCheck(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotRecord(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNullIn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnsNotRecord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnNamedLikeMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignBuilt(ptr %v0, ptr %v1, { i64, ptr } %a0)
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
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etoDeclaredFunc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5759851fa91ce76c_a0f65aa07f0891f0 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaidAlike(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHasNoConstructor(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleRaised(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_66d3d1d20fd502cf_cd668d3b10c2a493 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_700945490095e3ab_b793fb317cfa4b47 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eRequirements(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4)
declare %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_98b1a939df7bf83c_dad16d1edd3f2a28 = external constant [0 x i8]
@olang_loc_7d341668197b23b8_39fb9abd34d1e724 = external constant [0 x i8]
@olang_loc_82b8e88501244989_8304f205bc7c5615 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@olang_loc_6ec35b2a419acb72_9ad92e0ac70f122e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropCycle(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqShaped(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e5613677a6448c92_7fd725fb7345b22e = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrValueNoOp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCompareWhat(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrRecode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsCanFail(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnhandledFallibleCall(ptr %v0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elentAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2ftyped_2eCopiedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ehandleCall(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eLe_Hf613227d99bb55cc0c1d4d516f382642(ptr %v0, ptr %a0)
declare %"compiler/check:inPlaceRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eAt_Hf62b397eb49933d0308b5b903703d314(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2ePush_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:Gap" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
@olang_loc_4bb92e4e6aa9fa92_ae49a41c9a1a92ee = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinType(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3)
@G_2ecompiler_2fcheck_2eLaneBin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fcheck_2eLaneArr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_d04702acd6c67beb_c6baeec7be1e7af7 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_57a7d7e6d1174c7c_73fda2027ad2ad8 = external constant [0 x i8]
@olang_loc_fd3b2969d106d871_acdc32576a39b9ed = external constant [0 x i8]
declare i64 @compiler_2fcheck_2elocalIdOf(ptr %v0, ptr %a0)
@olang_loc_9336e0175c2e9c6a_aabb9d2690ac9706 = external constant [0 x i8]
@olang_loc_12a21cc2c4eb057_a597a544841c60b = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_286fe13485cd942f_1c0d0a1e63f5e7b3 = external constant [0 x i8]
@G_2ecompiler_2fcheck_2eLaneMagic = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eLen_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %a0)
@olang_loc_e09b0660792e8b62_512dd44834885876 = external constant [0 x i8]
declare %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eTrunca_Hc8531d0d5535cc9766a27157f9c0b07c(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodNames(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a227993f85dd5ea2_8a35cef040514d1e = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclareUnknown(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructOneValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eputTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, ptr %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssignListCount(ptr %v0, i64 %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoredName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
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
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3asetAt_3f_26_3e_2eAt_H6c7d5ab01c425e68e8a93a567ecc740a(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_96ad6a547cbfae6b_c8fd4ea10ff1b69f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_1e0e3f8e77107efc_26f178b75df49a00 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eTrun_Haa7c8ccc08c8123d0b87c9688e5d351e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexParam(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3)
@olang_loc_89675b40bb29f91f_f23262abf4982edb = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epacked(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
@olang_loc_7114c498979ee84a_e24a16e9735bab46 = external constant [0 x i8]
@olang_loc_c7908973d247e2d7_c6acba74781c2b93 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenRefOrVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5a62b0635aab9a02_96142af7f6ac351e = external constant [0 x i8]
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4bf1ea25652c8861abd3bf5b08e36e6f(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hfbfbbcb252777c89628fb6bc7775609a(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2escalarType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@G_2ecompiler_2ftyped_2eMutGlobalsFact = external constant <{ [8 x i8], ptr }>
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutGlobalsValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2eextended(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_87e977ed5524b962_3cfc36141ffe0b5e = external constant [0 x i8]
declare i1 @compiler_2fcheck_2edirectSet(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i32 %a4)
@olang_loc_8db10e524bac21a2_ad831be9185e1396 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOverrideSignature(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [1 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eParamMark(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnspread(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2)
@olang_loc_37e2897bc2167462_b245f142cb8d96e6 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRefIn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_595acbd52e732752_abc42ffc2c7a84b6 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c33d20c739747b79_a68497b5ec450035 = external constant [0 x i8]
@olang_loc_a2acdb5fbad0e7ec_cfac66b997ea52c8 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFnCall(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
@olang_loc_6942cccb6154242f_a01950bde1a7e0d3 = external constant [0 x i8]
@olang_loc_82d3307da2f2bfa_afac4966dc90b716 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H2c4b9eb360b9a0ada2008890a467b28d(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2eisRest(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestTwice(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_64f1128892bbfadb_2fd1650a543ec847 = external constant [0 x i8]
@olang_loc_9b328daa59c12fec_530ed6f7b483a728 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_aa71917389f82fa1_ab8db462134cc7fd = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_45c1f7cb36e76579_9732da1c199d4515 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H970bb490312910b3b744570a26468c6c(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd27b567062a69be2f699d8e9ab74cf5a(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf1792c165fec863e4f2028b41ed50f44(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_e181575e6035f202_99a6d5836a9bf6a6 = external constant [0 x i8]
@olang_loc_a5d3444dbde3a383_cb32d8a11a505607 = external constant [0 x i8]
@olang_loc_664096f84a6143a8_9c45533022ca790c = external constant [0 x i8]
@olang_loc_5f0b92ad49630279_51f88f4b15ed303d = external constant [0 x i8]
@olang_loc_265c788dd5eed9e_866edb98fc8c38ea = external constant [0 x i8]
@olang_loc_6ac4c8202b0b581f_2f15107fd7d9b5ab = external constant [0 x i8]
@olang_loc_8bfef52d6d2c65e4_ce3ff42f583fc170 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %a0)
declare %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandingsOf(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellList(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i1 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextPieces(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexhaustedOrBreak(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, ptr %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
@olang_loc_cd70ff81a8aaff09_d672b27f0a953c3d = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_83df14ccfb59caa2_79e7c0956b45666e = external constant [0 x i8]
@olang_loc_96843d56e3e95d2_694f204784a4fb86 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eleaves(ptr %v0, ptr %a0)
@olang_loc_445c35e7b454dfb2_9156676d88e8071e = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %a0)
@olang_loc_d5f035b3a669b232_703ee1b693614206 = external constant [0 x i8]
@olang_loc_25d55d46e6c695b2_1c5feb2a345583d6 = external constant [0 x i8]
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
