source_filename = "compiler_check-19.quick.ll"
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
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:ownerAt" = type { i32, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/check:nullNarrow" = type { { i64, ptr }, i64, i1 }
%"compiler/check:errNarrow" = type { i32, i32, i64, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/check:roFn" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/check:unsetCand" = type { i64, i64, i64, i1, i64, %"compiler/source:Span", i32, i1 }
%"compiler/definit:Verdict" = type { i1, %"compiler/source:Span", i32, %"compiler/source:Span" }
%"compiler/check:ValueAsk" = type { i32, i64, %"compiler/source:Span", i32, i64, { i64, [3 x i64] }, i1, { i64, [3 x i64] } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"compiler/check:effectPlace" = type { i64, i64, %"compiler/source:Span", ptr, i32, i32 }
define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealiasModule(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca i1
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l24 = alloca %"compiler/names:Ref"
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca %"compiler/names:Ref"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32 }, ptr %t21, i32 0, i32 0
  %t23 = load %"compiler/source:Span", ptr %t22
  store %"compiler/source:Span" %t23, ptr %l2
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l18, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l20
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 2
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t40 = load i32, ptr %t39, !tbaa !23
  %t41 = load ptr, ptr %l18, !tbaa !29
  %t44 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t41, i64 %t38, i32 %t40)
  store %"compiler/names:Ref" %t44, ptr %l24
  br label %bb11
bb11:
  %t45 = getelementptr %"compiler/names:Ref", ptr %l24, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  br label %bb25
bb12:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 30}
  %t55 = icmp eq i64 %t53, 14
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l27, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t59, i32 0, i32 0
  %t61 = load %"compiler/source:Span", ptr %t60
  store %"compiler/source:Span" %t61, ptr %l3
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  store ptr %t69, ptr %l34, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t70)
  store ptr %t72, ptr %l36
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l36, !tbaa !29
  %t75 = getelementptr %"compiler/check:frame", ptr %t73, i32 0, i32 2
  %t76 = load i64, ptr %t75, !tbaa !24
  %t77 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t78 = load i32, ptr %t77, !tbaa !23
  %t79 = load ptr, ptr %l34, !tbaa !29
  %t82 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t79, i64 %t76, i32 %t78)
  store %"compiler/names:Ref" %t82, ptr %l40
  br label %bb19
bb19:
  %t83 = getelementptr %"compiler/names:Ref", ptr %l40, i32 0, i32 1
  %t84 = load i64, ptr %t83, !tbaa !24
  store i64 %t84, ptr %l9, !tbaa !24
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_b38f45ec26bed975_efda74b8eb60f0c1)
  unreachable
bb25:
  %t86 = load i64, ptr %l9, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earraysEqual(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, i64, i64 }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i32
  %l19 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca { i64, i64, i64 }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l36 = alloca i32
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l45 = alloca i32
  %l50 = alloca ptr
  %l56 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca %"compiler/source:Span"
  %l61 = alloca i32
  %l66 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca %"compiler/source:Span"
  %l72 = alloca i32
  %l73 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l78 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l82 = alloca i32
  %l83 = alloca i32
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l94 = alloca i64
  %l95 = alloca ptr
  %l96 = alloca %"compiler/source:Span"
  %l99 = alloca i32
  %l100 = alloca ptr
  %l101 = alloca %"compiler/source:Span"
  %l102 = alloca i32
  %l103 = alloca i32
  %l107 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca %"compiler/source:Span"
  %l111 = alloca i32
  %l112 = alloca i32
  %l116 = alloca ptr
  %l117 = alloca ptr
  %l119 = alloca ptr
  %l122 = alloca ptr
  %l123 = alloca %"compiler/source:Span"
  %l125 = alloca i32
  %l126 = alloca i64
  %l127 = alloca ptr
  %l128 = alloca %"compiler/source:Span"
  %l131 = alloca i32
  %l132 = alloca ptr
  %l133 = alloca %"compiler/source:Span"
  %l135 = alloca i32
  %l136 = alloca ptr
  %l141 = alloca i64
  %l145 = alloca { i64, i64, i64 }
  %l149 = alloca ptr
  %l150 = alloca %"compiler/source:Span"
  %l154 = alloca ptr
  %l155 = alloca ptr
  %l156 = alloca %"compiler/source:Span"
  %l157 = alloca i32
  %l158 = alloca i32
  %l162 = alloca ptr
  %l166 = alloca ptr
  %l168 = alloca ptr
  %l169 = alloca ptr
  %l170 = alloca ptr
  %l175 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca ptr
  %l182 = alloca %"compiler/source:Span"
  %l183 = alloca %"compiler/source:Span"
  %l184 = alloca i32
  %l185 = alloca %"compiler/source:Span"
  %l186 = alloca i32
  %l190 = alloca ptr
  %l192 = alloca ptr
  %l196 = alloca ptr
  %l198 = alloca %"compiler/typed:Elem"
  %l202 = alloca ptr
  %l203 = alloca ptr
  %l204 = alloca %"compiler/source:Span"
  %l205 = alloca %"compiler/source:Span"
  %l206 = alloca i32
  %l207 = alloca %"compiler/source:Span"
  %l208 = alloca i32
  %l212 = alloca ptr
  %l214 = alloca ptr
  %l218 = alloca ptr
  %l220 = alloca %"compiler/typed:Elem"
  %l224 = alloca ptr
  %l225 = alloca ptr
  %l226 = alloca %"compiler/source:Span"
  %l233 = alloca ptr
  %l239 = alloca ptr
  %l247 = alloca ptr
  %l250 = alloca i64
  %l254 = alloca { i64, i64, i64 }
  %l258 = alloca ptr
  %l259 = alloca ptr
  %l260 = alloca %"compiler/source:Span"
  %l261 = alloca i64
  %l262 = alloca ptr
  %l263 = alloca %"compiler/source:Span"
  %l265 = alloca i32
  %l266 = alloca ptr
  %l267 = alloca ptr
  %l273 = alloca ptr
  %l281 = alloca %"compiler/source:Span"
  %l282 = alloca i32
  %l286 = alloca { i64, ptr }
  %l290 = alloca ptr
  %l292 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t43 = alloca { i64, [3 x i64] }, align 8
  %t80 = alloca { i64, [3 x i64] }, align 8
  %t128 = alloca { i64, [3 x i64] }, align 8
  %t192 = alloca { i64, [3 x i64] }, align 8
  %t231 = alloca { i64, [3 x i64] }, align 8
  %t343 = alloca { i64, [4 x i64] }, align 8
  %t368 = alloca { i64, [4 x i64] }, align 8
  %t398 = alloca { i64, [4 x i64] }, align 8
  %t423 = alloca { i64, [4 x i64] }, align 8
  %t448 = alloca { i64, [4 x i64] }, align 8
  %t470 = alloca { i64, [3 x i64] }, align 8
  %t555 = alloca { i64, [3 x i64] }, align 8
  %t591 = alloca { i64, [5 x i64] }, align 8
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
  store i64 %t5, ptr %l30
  br label %bb1
bb1:
  %t6 = load i64, ptr %l30, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t12, i32 %t13, i64 %t14)
  store i32 %t18, ptr %l36
  br label %bb2
bb2:
  %t19 = load i32, ptr %l36, !tbaa !23
  store i32 %t19, ptr %l6, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  %t22 = load i32, ptr %l6, !tbaa !23
  %t26 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t20, %"compiler/source:Span" %t21, i32 %t22)
  store i64 %t26, ptr %l40
  br label %bb3
bb3:
  %t27 = load i64, ptr %l40, !tbaa !24
  store i64 %t27, ptr %l7, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l41, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t29, ptr %l42
  %t30 = load i64, ptr %l7, !tbaa !24
  %t32 = trunc i64 %t30 to i32
  store i32 %t32, ptr %l45, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t37 = load %"compiler/source:Span", ptr %l1
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t34, ptr %a2, i32 %t36, %"compiler/source:Span" %t37)
  store ptr %t42, ptr %l50
  br label %bb4
bb4:
  store { i64, [3 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 0
  store i64 0, ptr %t44
  %t45 = load %"compiler/source:Span", ptr %l42
  %t46 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t45, 0
  %t47 = load i32, ptr %l45, !tbaa !23
  %t48 = insertvalue { %"compiler/source:Span", i32, ptr } %t46, i32 %t47, 1
  %t49 = load ptr, ptr %l50, !tbaa !29
  %t50 = insertvalue { %"compiler/source:Span", i32, ptr } %t48, ptr %t49, 2
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t50, ptr %t51
  %t52 = load { i64, [3 x i64] }, ptr %t43
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t52, ptr %t54
  %t55 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t55, ptr %t54)
  br label %bb5
bb5:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l1
  %t59 = load i32, ptr %l6, !tbaa !23
  %t63 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t57, %"compiler/source:Span" %t58, i32 %t59)
  store i64 %t63, ptr %l56
  br label %bb6
bb6:
  %t64 = load i64, ptr %l56, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l57, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t66, ptr %l58
  %t67 = load i64, ptr %l8, !tbaa !24
  %t69 = trunc i64 %t67 to i32
  store i32 %t69, ptr %l61, !tbaa !23
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l6, !tbaa !23
  %t74 = load %"compiler/source:Span", ptr %l1
  %t79 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t71, ptr %a3, i32 %t73, %"compiler/source:Span" %t74)
  store ptr %t79, ptr %l66
  br label %bb7
bb7:
  store { i64, [3 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 0
  store i64 0, ptr %t81
  %t82 = load %"compiler/source:Span", ptr %l58
  %t83 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t82, 0
  %t84 = load i32, ptr %l61, !tbaa !23
  %t85 = insertvalue { %"compiler/source:Span", i32, ptr } %t83, i32 %t84, 1
  %t86 = load ptr, ptr %l66, !tbaa !29
  %t87 = insertvalue { %"compiler/source:Span", i32, ptr } %t85, ptr %t86, 2
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t87, ptr %t88
  %t89 = load { i64, [3 x i64] }, ptr %t80
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t89, ptr %t91
  %t92 = load ptr, ptr %l57, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t92, ptr %t91)
  br label %bb8
bb8:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l69, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t95, ptr %l70
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t96)
  store i32 %t98, ptr %l72
  br label %bb9
bb9:
  %t99 = load ptr, ptr %l69, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l70
  %t101 = load i32, ptr %l72, !tbaa !23
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t99, %"compiler/source:Span" %t100, i32 %t101)
  store i64 %t102, ptr %l73
  br label %bb10
bb10:
  %t103 = load i64, ptr %l73, !tbaa !24
  store i64 %t103, ptr %l9, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l74, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t105, ptr %l75
  %t106 = load i64, ptr %l9, !tbaa !24
  %t108 = trunc i64 %t106 to i32
  store i32 %t108, ptr %l78, !tbaa !23
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l79, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t111, ptr %l80
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t112)
  store i32 %t114, ptr %l82
  br label %bb11
bb11:
  store i32 22, ptr %l83
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  %t117 = load i64, ptr %l7, !tbaa !24
  %t121 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t115, %"compiler/source:Span" %t116, i64 %t117)
  store ptr %t121, ptr %l87
  br label %bb12
bb12:
  %t122 = load ptr, ptr %l79, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l80
  %t124 = load i32, ptr %l82, !tbaa !23
  %t125 = load i32, ptr %l83, !range !{i32 0, i32 52}
  %t126 = load ptr, ptr %l87, !tbaa !29
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t122, %"compiler/source:Span" %t123, i32 %t124, i32 %t125, ptr %t126, ptr null)
  store ptr %t127, ptr %l88
  br label %bb13
bb13:
  store { i64, [3 x i64] } zeroinitializer, ptr %t128
  %t129 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 0
  store i64 0, ptr %t129
  %t130 = load %"compiler/source:Span", ptr %l75
  %t131 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t130, 0
  %t132 = load i32, ptr %l78, !tbaa !23
  %t133 = insertvalue { %"compiler/source:Span", i32, ptr } %t131, i32 %t132, 1
  %t134 = load ptr, ptr %l88, !tbaa !29
  %t135 = insertvalue { %"compiler/source:Span", i32, ptr } %t133, ptr %t134, 2
  %t136 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t135, ptr %t136
  %t137 = load { i64, [3 x i64] }, ptr %t128
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t137, ptr %t139
  %t140 = load ptr, ptr %l74, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t140, ptr %t139)
  br label %bb14
bb14:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l1
  %t144 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t148 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t142, %"compiler/source:Span" %t143, i32 %t144)
  store i64 %t148, ptr %l94
  br label %bb15
bb15:
  %t149 = load i64, ptr %l94, !tbaa !24
  store i64 %t149, ptr %l10, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l95, !tbaa !29
  %t151 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t151, ptr %l96
  %t152 = load i64, ptr %l10, !tbaa !24
  %t154 = trunc i64 %t152 to i32
  store i32 %t154, ptr %l99, !tbaa !23
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l100, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t157, ptr %l101
  %t158 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t158, ptr %l102, !tbaa !23
  store i32 13, ptr %l103
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  %t161 = load i64, ptr %l9, !tbaa !24
  %t165 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t159, %"compiler/source:Span" %t160, i64 %t161)
  store ptr %t165, ptr %l107
  br label %bb16
bb16:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l108, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t167, ptr %l109
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t168)
  store i32 %t170, ptr %l111
  br label %bb17
bb17:
  store i32 22, ptr %l112
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l1
  %t173 = load i64, ptr %l8, !tbaa !24
  %t177 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t171, %"compiler/source:Span" %t172, i64 %t173)
  store ptr %t177, ptr %l116
  br label %bb18
bb18:
  %t178 = load ptr, ptr %l108, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l109
  %t180 = load i32, ptr %l111, !tbaa !23
  %t181 = load i32, ptr %l112, !range !{i32 0, i32 52}
  %t182 = load ptr, ptr %l116, !tbaa !29
  %t183 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t178, %"compiler/source:Span" %t179, i32 %t180, i32 %t181, ptr %t182, ptr null)
  store ptr %t183, ptr %l117
  br label %bb19
bb19:
  %t184 = load ptr, ptr %l117, !tbaa !29
  %t185 = load ptr, ptr %l100, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l101
  %t187 = load i32, ptr %l102, !tbaa !23
  %t188 = load i32, ptr %l103, !range !{i32 0, i32 52}
  %t189 = load ptr, ptr %l107, !tbaa !29
  %t191 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t185, %"compiler/source:Span" %t186, i32 %t187, i32 %t188, ptr %t189, ptr %t184)
  store ptr %t191, ptr %l119
  br label %bb20
bb20:
  store { i64, [3 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 0
  store i64 0, ptr %t193
  %t194 = load %"compiler/source:Span", ptr %l96
  %t195 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t194, 0
  %t196 = load i32, ptr %l99, !tbaa !23
  %t197 = insertvalue { %"compiler/source:Span", i32, ptr } %t195, i32 %t196, 1
  %t198 = load ptr, ptr %l119, !tbaa !29
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } %t197, ptr %t198, 2
  %t200 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t199, ptr %t200
  %t201 = load { i64, [3 x i64] }, ptr %t192
  %t203 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t201, ptr %t203
  %t204 = load ptr, ptr %l95, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t204, ptr %t203)
  br label %bb21
bb21:
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l122, !tbaa !29
  %t207 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t207, ptr %l123
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t208)
  store i32 %t210, ptr %l125
  br label %bb22
bb22:
  %t211 = load ptr, ptr %l122, !tbaa !29
  %t212 = load %"compiler/source:Span", ptr %l123
  %t213 = load i32, ptr %l125, !tbaa !23
  %t214 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t211, %"compiler/source:Span" %t212, i32 %t213)
  store i64 %t214, ptr %l126
  br label %bb23
bb23:
  %t215 = load i64, ptr %l126, !tbaa !24
  store i64 %t215, ptr %l11, !tbaa !24
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l127, !tbaa !29
  %t217 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t217, ptr %l128
  %t218 = load i64, ptr %l11, !tbaa !24
  %t220 = trunc i64 %t218 to i32
  store i32 %t220, ptr %l131, !tbaa !23
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l132, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t223, ptr %l133
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t224)
  store i32 %t226, ptr %l135
  br label %bb24
bb24:
  %t227 = load ptr, ptr %l132, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l133
  %t229 = load i32, ptr %l135, !tbaa !23
  %t230 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t227, %"compiler/source:Span" %t228, i32 %t229, i64 0)
  store ptr %t230, ptr %l136
  br label %bb25
bb25:
  store { i64, [3 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 0
  store i64 0, ptr %t232
  %t233 = load %"compiler/source:Span", ptr %l128
  %t234 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t233, 0
  %t235 = load i32, ptr %l131, !tbaa !23
  %t236 = insertvalue { %"compiler/source:Span", i32, ptr } %t234, i32 %t235, 1
  %t237 = load ptr, ptr %l136, !tbaa !29
  %t238 = insertvalue { %"compiler/source:Span", i32, ptr } %t236, ptr %t237, 2
  %t239 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t238, ptr %t239
  %t240 = load { i64, [3 x i64] }, ptr %t231
  %t242 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t240, ptr %t242
  %t243 = load ptr, ptr %l127, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t243, ptr %t242)
  br label %bb26
bb26:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 37
  %t249 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t247)
  store i64 %t249, ptr %l141
  br label %bb27
bb27:
  %t250 = load i64, ptr %l141, !tbaa !24
  store i64 %t250, ptr %l12, !tbaa !24
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l1
  %t256 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t251, i32 2, %"compiler/source:Span" %t252)
  store { i64, i64, i64 } %t256, ptr %l145
  br label %bb28
bb28:
  %t257 = load { i64, i64, i64 }, ptr %l145
  store { i64, i64, i64 } %t257, ptr %l13
  %t258 = getelementptr { i64, i64, i64 }, ptr %l13, i32 0, i32 0
  %t259 = load i64, ptr %t258, !tbaa !24
  store i64 %t259, ptr %l14, !tbaa !24
  %t261 = getelementptr { i64, i64, i64 }, ptr %l13, i32 0, i32 1
  %t262 = load i64, ptr %t261, !tbaa !24
  store i64 %t262, ptr %l15, !tbaa !24
  %t264 = getelementptr { i64, i64, i64 }, ptr %l13, i32 0, i32 2
  %t265 = load i64, ptr %t264, !tbaa !24
  store i64 %t265, ptr %l16, !tbaa !24
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l149, !tbaa !29
  %t268 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t268, ptr %l150
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l1
  %t271 = load i64, ptr %l10, !tbaa !24
  %t275 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t269, %"compiler/source:Span" %t270, i64 %t271)
  store ptr %t275, ptr %l154
  br label %bb29
bb29:
  %t276 = load ptr, ptr %l0, !tbaa !29
  store ptr %t276, ptr %l155, !tbaa !29
  %t277 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t277, ptr %l156
  %t278 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t278, ptr %l157, !tbaa !23
  store i32 15, ptr %l158
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load %"compiler/source:Span", ptr %l1
  %t281 = load i64, ptr %l11, !tbaa !24
  %t285 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t279, %"compiler/source:Span" %t280, i64 %t281)
  store ptr %t285, ptr %l162
  br label %bb30
bb30:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load %"compiler/source:Span", ptr %l1
  %t288 = load i64, ptr %l9, !tbaa !24
  %t292 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t286, %"compiler/source:Span" %t287, i64 %t288)
  store ptr %t292, ptr %l166
  br label %bb31
bb31:
  %t293 = load ptr, ptr %l166, !tbaa !29
  %t294 = load ptr, ptr %l155, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l156
  %t296 = load i32, ptr %l157, !tbaa !23
  %t297 = load i32, ptr %l158, !range !{i32 0, i32 52}
  %t298 = load ptr, ptr %l162, !tbaa !29
  %t300 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t294, %"compiler/source:Span" %t295, i32 %t296, i32 %t297, ptr %t298, ptr %t293)
  store ptr %t300, ptr %l168
  br label %bb32
bb32:
  %t301 = load ptr, ptr %l149, !tbaa !29
  %t302 = load %"compiler/source:Span", ptr %l150
  %t303 = load ptr, ptr %l154, !tbaa !29
  %t304 = load ptr, ptr %l168, !tbaa !29
  %t305 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t301, %"compiler/source:Span" %t302, ptr %t303, ptr %t304)
  store ptr %t305, ptr %l169
  br label %bb33
bb33:
  %t306 = load ptr, ptr %l169, !tbaa !29
  %t307 = load ptr, ptr %l0, !tbaa !29
  store ptr %t307, ptr %l170, !tbaa !29
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load %"compiler/source:Span", ptr %l1
  %t311 = load i64, ptr %l14, !tbaa !24
  %t316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v3, ptr %v0, ptr %t308, %"compiler/source:Span" %t309, ptr %t306, i64 %t311)
  store ptr %t316, ptr %l175
  br label %bb34
bb34:
  %t317 = load ptr, ptr %l170, !tbaa !29
  %t318 = load ptr, ptr %l175, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t317, ptr %t318)
  br label %bb35
bb35:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/check:Checker", ptr %t319, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !29
  %t324 = getelementptr %"compiler/generic:Program", ptr %t322, i32 0, i32 2
  %t325 = load i32, ptr %l4, !tbaa !23
  %t328 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t324, i32 %t325)
  store i32 %t328, ptr %l180
  br label %bb36
bb36:
  %t329 = load i32, ptr %l180, !tbaa !23
  store i32 %t329, ptr %l18, !tbaa !23
  %t330 = load ptr, ptr %l0, !tbaa !29
  store ptr %t330, ptr %l181, !tbaa !29
  %t331 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t331, ptr %l182
  %t332 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t332, ptr %l183
  %t333 = load i32, ptr %l18, !tbaa !23
  store i32 %t333, ptr %l184, !tbaa !23
  %t334 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t334, ptr %l185
  %t335 = load i32, ptr %l4, !tbaa !23
  store i32 %t335, ptr %l186, !tbaa !23
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load %"compiler/source:Span", ptr %l1
  %t338 = load i64, ptr %l7, !tbaa !24
  %t342 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t336, %"compiler/source:Span" %t337, i64 %t338)
  store ptr %t342, ptr %l190
  br label %bb37
bb37:
  store { i64, [4 x i64] } zeroinitializer, ptr %t343
  %t344 = getelementptr { i64, [4 x i64] }, ptr %t343, i32 0, i32 0
  store i64 2, ptr %t344
  %t345 = load %"compiler/source:Span", ptr %l185
  %t346 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t345, 0
  %t347 = load i32, ptr %l186, !tbaa !23
  %t348 = insertvalue { %"compiler/source:Span", i32, ptr } %t346, i32 %t347, 1
  %t349 = load ptr, ptr %l190, !tbaa !29
  %t350 = insertvalue { %"compiler/source:Span", i32, ptr } %t348, ptr %t349, 2
  %t351 = getelementptr { i64, [4 x i64] }, ptr %t343, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t350, ptr %t351
  %t352 = load { i64, [4 x i64] }, ptr %t343
  %t354 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t352, ptr %t354
  store ptr %t354, ptr %l192, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load %"compiler/source:Span", ptr %l1
  %t357 = load i64, ptr %l11, !tbaa !24
  %t361 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t355, %"compiler/source:Span" %t356, i64 %t357)
  store ptr %t361, ptr %l196
  br label %bb38
bb38:
  %t362 = load ptr, ptr %l192, !tbaa !29
  %t363 = load ptr, ptr %l196, !tbaa !29
  %t365 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %t362, ptr %t363, i32 0)
  store %"compiler/typed:Elem" %t365, ptr %l198
  br label %bb39
bb39:
  %t366 = load %"compiler/typed:Elem", ptr %l198
  %t367 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Elem" %t366, ptr %t367
  store { i64, [4 x i64] } zeroinitializer, ptr %t368
  %t369 = getelementptr { i64, [4 x i64] }, ptr %t368, i32 0, i32 0
  store i64 4, ptr %t369
  %t370 = load %"compiler/source:Span", ptr %l183
  %t371 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t370, 0
  %t372 = load i32, ptr %l184, !tbaa !23
  %t373 = insertvalue { %"compiler/source:Span", i32, ptr } %t371, i32 %t372, 1
  %t375 = insertvalue { %"compiler/source:Span", i32, ptr } %t373, ptr %t367, 2
  %t376 = getelementptr { i64, [4 x i64] }, ptr %t368, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t375, ptr %t376
  %t377 = load { i64, [4 x i64] }, ptr %t368
  %t379 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t377, ptr %t379
  %t380 = load ptr, ptr %l181, !tbaa !29
  %t381 = load %"compiler/source:Span", ptr %l182
  %t383 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t380, %"compiler/source:Span" %t381, ptr %t379)
  store ptr %t383, ptr %l202
  br label %bb40
bb40:
  %t384 = load ptr, ptr %l202, !tbaa !29
  store ptr %t384, ptr %l19, !tbaa !29
  %t385 = load ptr, ptr %l0, !tbaa !29
  store ptr %t385, ptr %l203, !tbaa !29
  %t386 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t386, ptr %l204
  %t387 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t387, ptr %l205
  %t388 = load i32, ptr %l18, !tbaa !23
  store i32 %t388, ptr %l206, !tbaa !23
  %t389 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t389, ptr %l207
  %t390 = load i32, ptr %l4, !tbaa !23
  store i32 %t390, ptr %l208, !tbaa !23
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load %"compiler/source:Span", ptr %l1
  %t393 = load i64, ptr %l8, !tbaa !24
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t391, %"compiler/source:Span" %t392, i64 %t393)
  store ptr %t397, ptr %l212
  br label %bb41
bb41:
  store { i64, [4 x i64] } zeroinitializer, ptr %t398
  %t399 = getelementptr { i64, [4 x i64] }, ptr %t398, i32 0, i32 0
  store i64 2, ptr %t399
  %t400 = load %"compiler/source:Span", ptr %l207
  %t401 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t400, 0
  %t402 = load i32, ptr %l208, !tbaa !23
  %t403 = insertvalue { %"compiler/source:Span", i32, ptr } %t401, i32 %t402, 1
  %t404 = load ptr, ptr %l212, !tbaa !29
  %t405 = insertvalue { %"compiler/source:Span", i32, ptr } %t403, ptr %t404, 2
  %t406 = getelementptr { i64, [4 x i64] }, ptr %t398, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t405, ptr %t406
  %t407 = load { i64, [4 x i64] }, ptr %t398
  %t409 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t407, ptr %t409
  store ptr %t409, ptr %l214, !tbaa !29
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load %"compiler/source:Span", ptr %l1
  %t412 = load i64, ptr %l11, !tbaa !24
  %t416 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t410, %"compiler/source:Span" %t411, i64 %t412)
  store ptr %t416, ptr %l218
  br label %bb42
bb42:
  %t417 = load ptr, ptr %l214, !tbaa !29
  %t418 = load ptr, ptr %l218, !tbaa !29
  %t420 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %t417, ptr %t418, i32 0)
  store %"compiler/typed:Elem" %t420, ptr %l220
  br label %bb43
bb43:
  %t421 = load %"compiler/typed:Elem", ptr %l220
  %t422 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Elem" %t421, ptr %t422
  store { i64, [4 x i64] } zeroinitializer, ptr %t423
  %t424 = getelementptr { i64, [4 x i64] }, ptr %t423, i32 0, i32 0
  store i64 4, ptr %t424
  %t425 = load %"compiler/source:Span", ptr %l205
  %t426 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t425, 0
  %t427 = load i32, ptr %l206, !tbaa !23
  %t428 = insertvalue { %"compiler/source:Span", i32, ptr } %t426, i32 %t427, 1
  %t430 = insertvalue { %"compiler/source:Span", i32, ptr } %t428, ptr %t422, 2
  %t431 = getelementptr { i64, [4 x i64] }, ptr %t423, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t430, ptr %t431
  %t432 = load { i64, [4 x i64] }, ptr %t423
  %t434 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t432, ptr %t434
  %t435 = load ptr, ptr %l203, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l204
  %t438 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t435, %"compiler/source:Span" %t436, ptr %t434)
  store ptr %t438, ptr %l224
  br label %bb44
bb44:
  %t439 = load ptr, ptr %l224, !tbaa !29
  %t440 = load ptr, ptr %l0, !tbaa !29
  store ptr %t440, ptr %l225, !tbaa !29
  %t441 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t441, ptr %l226
  %t442 = load %"compiler/source:Span", ptr %l1
  %t443 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t444 = load i64, ptr %l10, !tbaa !24
  %t446 = trunc i64 %t444 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t448
  %t449 = getelementptr { i64, [4 x i64] }, ptr %t448, i32 0, i32 0
  store i64 0, ptr %t449
  %t451 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t442, 0
  %t453 = insertvalue { %"compiler/source:Span", i32, i32 } %t451, i32 %t443, 1
  %t455 = insertvalue { %"compiler/source:Span", i32, i32 } %t453, i32 %t446, 2
  %t456 = getelementptr { i64, [4 x i64] }, ptr %t448, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t455, ptr %t456
  %t457 = load { i64, [4 x i64] }, ptr %t448
  %t459 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t457, ptr %t459
  store ptr %t459, ptr %l233, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load %"compiler/source:Span", ptr %l1
  %t462 = load ptr, ptr %l19, !tbaa !29
  %t469 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %v3, ptr %v3, ptr %v0, ptr %t460, %"compiler/source:Span" %t461, i32 94, ptr %t462, ptr %t439)
  store ptr %t469, ptr %l239
  br label %bb45
bb45:
  store { i64, [3 x i64] } zeroinitializer, ptr %t470
  %t471 = getelementptr { i64, [3 x i64] }, ptr %t470, i32 0, i32 0
  store i64 1, ptr %t471
  %t472 = load %"compiler/source:Span", ptr %l226
  %t473 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t472, 0
  %t474 = load ptr, ptr %l233, !tbaa !29
  %t475 = insertvalue { %"compiler/source:Span", ptr, ptr } %t473, ptr %t474, 1
  %t476 = load ptr, ptr %l239, !tbaa !29
  %t477 = insertvalue { %"compiler/source:Span", ptr, ptr } %t475, ptr %t476, 2
  %t478 = getelementptr { i64, [3 x i64] }, ptr %t470, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t477, ptr %t478
  %t479 = load { i64, [3 x i64] }, ptr %t470
  %t481 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t479, ptr %t481
  %t482 = load ptr, ptr %l225, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t482, ptr %t481)
  br label %bb46
bb46:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load i64, ptr %l14, !tbaa !24
  %t486 = load i64, ptr %l15, !tbaa !24
  %t487 = load i64, ptr %l16, !tbaa !24
  %t488 = load i64, ptr %l12, !tbaa !24
  %t494 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v3, ptr %t484, i64 %t485, i64 %t486, i64 %t487, i64 %t488)
  store ptr %t494, ptr %l247
  br label %bb47
bb47:
  %t495 = load ptr, ptr %l247, !tbaa !29
  store ptr %t495, ptr %l21, !tbaa !29
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/check:Checker", ptr %t496, i32 0, i32 37
  %t500 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t498)
  store i64 %t500, ptr %l250
  br label %bb48
bb48:
  %t501 = load i64, ptr %l250, !tbaa !24
  store i64 %t501, ptr %l22, !tbaa !24
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load %"compiler/source:Span", ptr %l1
  %t507 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t502, i32 3, %"compiler/source:Span" %t503)
  store { i64, i64, i64 } %t507, ptr %l254
  br label %bb49
bb49:
  %t508 = load { i64, i64, i64 }, ptr %l254
  store { i64, i64, i64 } %t508, ptr %l23
  %t509 = getelementptr { i64, i64, i64 }, ptr %l23, i32 0, i32 0
  %t510 = load i64, ptr %t509, !tbaa !24
  store i64 %t510, ptr %l24, !tbaa !24
  %t512 = getelementptr { i64, i64, i64 }, ptr %l23, i32 0, i32 1
  %t513 = load i64, ptr %t512, !tbaa !24
  store i64 %t513, ptr %l25, !tbaa !24
  %t515 = getelementptr { i64, i64, i64 }, ptr %l23, i32 0, i32 2
  %t516 = load i64, ptr %t515, !tbaa !24
  store i64 %t516, ptr %l26, !tbaa !24
  %t518 = load ptr, ptr %l0, !tbaa !29
  store ptr %t518, ptr %l258, !tbaa !29
  %t519 = load ptr, ptr %l0, !tbaa !29
  store ptr %t519, ptr %l259, !tbaa !29
  %t520 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t520, ptr %l260
  %t521 = load i64, ptr %l11, !tbaa !24
  store i64 %t521, ptr %l261, !tbaa !24
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l262, !tbaa !29
  %t523 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t523, ptr %l263
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t526 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t524)
  store i32 %t526, ptr %l265
  br label %bb50
bb50:
  %t527 = load ptr, ptr %l262, !tbaa !29
  %t528 = load %"compiler/source:Span", ptr %l263
  %t529 = load i32, ptr %l265, !tbaa !23
  %t530 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t527, %"compiler/source:Span" %t528, i32 %t529, i64 1)
  store ptr %t530, ptr %l266
  br label %bb51
bb51:
  %t531 = load ptr, ptr %l259, !tbaa !29
  %t532 = load %"compiler/source:Span", ptr %l260
  %t533 = load i64, ptr %l261, !tbaa !24
  %t534 = load ptr, ptr %l266, !tbaa !29
  %t535 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v0, ptr %v0, ptr %t531, %"compiler/source:Span" %t532, i64 %t533, ptr %t534)
  store ptr %t535, ptr %l267
  br label %bb52
bb52:
  %t536 = load ptr, ptr %l258, !tbaa !29
  %t537 = load ptr, ptr %l267, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t536, ptr %t537)
  br label %bb53
bb53:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load i64, ptr %l24, !tbaa !24
  %t540 = load i64, ptr %l25, !tbaa !24
  %t541 = load i64, ptr %l26, !tbaa !24
  %t542 = load i64, ptr %l22, !tbaa !24
  %t548 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v3, ptr %t538, i64 %t539, i64 %t540, i64 %t541, i64 %t542)
  store ptr %t548, ptr %l273
  br label %bb54
bb54:
  %t549 = load ptr, ptr %l273, !tbaa !29
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t551 = load %"compiler/source:Span", ptr %l1
  %t552 = load ptr, ptr %l21, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t555
  %t556 = getelementptr { i64, [3 x i64] }, ptr %t555, i32 0, i32 0
  store i64 4, ptr %t556
  %t558 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t551, 0
  %t560 = insertvalue { %"compiler/source:Span", ptr, ptr } %t558, ptr %t552, 1
  %t562 = insertvalue { %"compiler/source:Span", ptr, ptr } %t560, ptr %t549, 2
  %t563 = getelementptr { i64, [3 x i64] }, ptr %t555, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t562, ptr %t563
  %t564 = load { i64, [3 x i64] }, ptr %t555
  %t566 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t564, ptr %t566
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t550, ptr %t566)
  br label %bb55
bb55:
  %t569 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t569, ptr %l281
  %t570 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t570, ptr %l282, !tbaa !23
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t573 = getelementptr %"compiler/check:Checker", ptr %t571, i32 0, i32 37
  %t574 = load i64, ptr %l5, !tbaa !24
  %t577 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t573, i64 %t574)
  store { i64, ptr } %t577, ptr %l286
  br label %bb56
bb56:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t579 = load %"compiler/source:Span", ptr %l1
  %t580 = load i64, ptr %l10, !tbaa !24
  %t584 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t578, %"compiler/source:Span" %t579, i64 %t580)
  store ptr %t584, ptr %l290
  br label %bb57
bb57:
  %t585 = load ptr, ptr %l290, !tbaa !29
  %t586 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t588 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t586, ptr %t585, i1 false)
  store %"compiler/typed:Seq" %t588, ptr %l292
  br label %bb58
bb58:
  %t589 = load %"compiler/typed:Seq", ptr %l292
  %t590 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t589, ptr %t590
  store { i64, [5 x i64] } zeroinitializer, ptr %t591
  %t592 = getelementptr { i64, [5 x i64] }, ptr %t591, i32 0, i32 0
  store i64 12, ptr %t592
  %t593 = load %"compiler/source:Span", ptr %l281
  %t594 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t593, 0
  %t595 = load i32, ptr %l282, !tbaa !23
  %t596 = insertvalue { %"compiler/source:Span", i32, ptr } %t594, i32 %t595, 1
  %t598 = insertvalue { %"compiler/source:Span", i32, ptr } %t596, ptr %t590, 2
  %t599 = getelementptr { i64, [5 x i64] }, ptr %t591, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t598, ptr %t599
  %t600 = load { i64, [5 x i64] }, ptr %t591
  %t602 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t600, ptr %t602
  store ptr %t602, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i32
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %rv = alloca ptr
  %t67 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l2, !tbaa !21
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
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 14
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t19, ptr %t20)
  store i32 %t23, ptr %l14
  br label %bb10
bb10:
  %t24 = load i32, ptr %l14, !tbaa !23
  %t25 = icmp sge i32 %t24, 0
  store i1 %t25, ptr %l2, !tbaa !21
  br label %bb23
bb11:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb12, label %bb13
bb12:
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 30}
  %t34 = icmp eq i64 %t32, 13
  store i1 %t34, ptr %l17, !tbaa !21
  br label %bb13
bb13:
  %t35 = load i1, ptr %l17, !tbaa !21
  br i1 %t35, label %bb14, label %bb15
bb14:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t38, i32 0, i32 1
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t42, ptr %t43)
  store i32 %t46, ptr %l24
  br label %bb17
bb17:
  %t47 = load i32, ptr %l24, !tbaa !23
  %t48 = icmp sge i32 %t47, 0
  store i1 %t48, ptr %l2, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_e3737a5db5d2f43e_f6d8b09c7cd8c09a)
  unreachable
bb23:
  %t50 = load i1, ptr %l2, !tbaa !21
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb24, label %bb25
bb24:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t56)
  store %"compiler/source:Span" %t58, ptr %l30
  br label %bb27
bb27:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l31, !tbaa !29
  %t60 = icmp sge i64 0, 0
  br i1 %t60, label %bb28, label %bb29
bb28:
  %t62 = icmp sle i64 0, 1152921504606846975
  br i1 %t62, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a6278e1b7f6dba40_6fee99e557dde034)
  unreachable
bb30:
  %t64 = mul i64 0, 8
  %t65 = insertvalue { i64, ptr } undef, i64 0, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [4 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 0
  store i64 12, ptr %t68
  %t69 = load %"compiler/source:Span", ptr %l30
  %t70 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t69, 0
  %t71 = load ptr, ptr %l31, !tbaa !29
  %t72 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t70, ptr %t71, 1
  %t74 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t72, { i64, ptr } %t66, 2
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t74, ptr %t75
  %t76 = load { i64, [4 x i64] }, ptr %t67
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t76, ptr %t78
  store ptr %t78, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_a6278e1b7f6dba40_6fee99e557dde034)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca %"compiler/check:ownerAt"
  %l6 = alloca i64
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca %"compiler/check:ownerAt"
  %l22 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l34 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca i32
  %l77 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca ptr
  %l89 = alloca ptr
  %l92 = alloca { i64, ptr }
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %l98 = alloca ptr
  %l106 = alloca ptr
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t123 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %t1, ptr %a3)
  store %"compiler/check:ownerAt" %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load %"compiler/check:ownerAt", ptr %l15
  store %"compiler/check:ownerAt" %t6, ptr %l5
  %t7 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
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
  %t16 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t15, i32 %t17)
  store i1 %t20, ptr %l22
  br label %bb5
bb5:
  %t21 = load i1, ptr %l22, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t25 = load i32, ptr %l4, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t22, i32 %t24, i32 %t25)
  store i1 %t29, ptr %l27
  br label %bb8
bb7:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t30 = load i1, ptr %l27, !tbaa !21
  store i1 %t30, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l23, !tbaa !21
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
  %t37 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  %t39 = load i32, ptr %l4, !tbaa !23
  %t40 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 1
  %t41 = load i1, ptr %t40, !tbaa !21
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t36, i32 %t38, i32 %t39, i1 %t41)
  store i64 %t46, ptr %l34
  br label %bb13
bb13:
  %t47 = load i64, ptr %l34, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t50 = icmp slt i64 %t48, 0
  br i1 %t50, label %bb14, label %bb15
bb14:
  store ptr null, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load %"compiler/source:Span", ptr %l2
  %t56 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %t53, i64 %t54, %"compiler/source:Span" %t55, i32 %t57)
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  store ptr %t65, ptr %l43, !tbaa !29
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t66)
  store i64 %t68, ptr %l45
  br label %bb18
bb18:
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t69, i64 %t70)
  store i64 %t71, ptr %l46
  br label %bb19
bb19:
  %t72 = load i64, ptr %l46, !tbaa !24
  store i64 %t72, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = icmp eq i64 %t73, 0
  br i1 %t75, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l49, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t78, ptr %l50
  %t79 = load i64, ptr %l6, !tbaa !24
  store i64 %t79, ptr %l51, !tbaa !24
  %t80 = icmp sge i64 0, 0
  br i1 %t80, label %bb22, label %bb23
bb21:
  br label %bb27
bb22:
  %t82 = icmp sle i64 0, 2305843009213693951
  br i1 %t82, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_82b0d2a61edf3c68_78216e4ccea776dc)
  unreachable
bb24:
  %t84 = mul i64 0, 4
  %t85 = insertvalue { i64, ptr } undef, i64 0, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t87 = load ptr, ptr %l49, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l50
  %t89 = load i64, ptr %l51, !tbaa !24
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v2, ptr %v2, ptr %t87, %"compiler/source:Span" %t88, i64 %t89, { i64, ptr } %t86)
  store ptr %t91, ptr %l55
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_82b0d2a61edf3c68_78216e4ccea776dc)
  unreachable
bb26:
  %t92 = load ptr, ptr %l55, !tbaa !29
  store ptr %t92, ptr %rv
  br label %ret
bb27:
  %t94 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 1
  %t95 = load i1, ptr %t94, !tbaa !21
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb28, label %bb29
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v2, ptr %t102, i64 %t103, i32 %t105)
  store { i64, ptr } %t109, ptr %l64
  br label %bb30
bb29:
  %t110 = load i64, ptr %l7, !tbaa !24
  store i64 %t110, ptr %l65, !tbaa !24
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t111, ptr %l66, !tbaa !23
  %t112 = load i64, ptr %l65, !tbaa !24
  %t113 = icmp sge i64 %t112, 0
  br i1 %t113, label %bb31, label %bb32
bb30:
  %t115 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t115, ptr %l59, !tbaa !27
  br label %bb35
bb31:
  %t116 = load i64, ptr %l65, !tbaa !24
  %t117 = icmp sle i64 %t116, 2305843009213693951
  br i1 %t117, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e54de2b85f89ec55_546f3093ddc3c1a9)
  unreachable
bb33:
  %t119 = load i64, ptr %l65, !tbaa !24
  %t120 = mul i64 %t119, 4
  %t121 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t120)
  %t122 = load i32, ptr %l66, !tbaa !23
  store i64 0, ptr %t123
  br label %fill.124
fill.124:
  %t127 = load i64, ptr %t123
  %t128 = icmp slt i64 %t127, %t119
  br i1 %t128, label %fillb.125, label %filld.126
fillb.125:
  %t129 = getelementptr i32, ptr %t121, i64 %t127
  store i32 %t122, ptr %t129
  %t130 = add i64 %t127, 1
  store i64 %t130, ptr %t123
  br label %fill.124
filld.126:
  %t131 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t121, 1
  store { i64, ptr } %t132, ptr %l59, !tbaa !27
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_e54de2b85f89ec55_546f3093ddc3c1a9)
  unreachable
bb35:
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t134, ptr %lp8
  %t135 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t136 = load ptr, ptr %lp8
  store { i64, ptr } %t135, ptr %t136, !tbaa !27
  %t137 = load ptr, ptr %lp8
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  store { i64, ptr } %t138, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l11, !tbaa !24
  br label %bb36
bb36:
  %t144 = load i64, ptr %l10, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb37, label %bb38
bb37:
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t152 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t152, ptr %l77, !tbaa !27
  %t153 = load i64, ptr %l10, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t161 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t164 = icmp eq i32 %t158, %t161
  br i1 %t164, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l83, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t167, ptr %l84
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l85, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t173 = load i64, ptr %l6, !tbaa !24
  %t176 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s7, ptr %t172, i64 %t173)
  store ptr %t176, ptr %l89
  br label %bb42
bb41:
  br label %bb47
bb42:
  %t177 = load ptr, ptr %l89, !tbaa !29
  %t179 = getelementptr %"compiler/ast:Func", ptr %t177, i32 0, i32 2
  %t180 = load i32, ptr %t179, !tbaa !23
  %t181 = load ptr, ptr %l85, !tbaa !29
  %t183 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t181, i32 %t180)
  store { i64, ptr } %t183, ptr %l92
  br label %bb43
bb43:
  %t184 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  %t186 = extractvalue { i64, ptr } %t184, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t192 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNotValue(ptr %v0, ptr %v0, { i64, ptr } %t190)
  store %"compiler/diagmsg:Msg" %t192, ptr %l94
  br label %bb44
bb44:
  %t193 = load ptr, ptr %l83, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l84
  %t195 = load %"compiler/diagmsg:Msg", ptr %l94
  %t196 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t193, %"compiler/source:Span" %t194, %"compiler/diagmsg:Msg" %t195)
  store i64 %t196, ptr %l95
  br label %bb45
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t197, %"compiler/source:Span" %a1)
  store ptr %t201, ptr %l98
  br label %bb46
bb46:
  %t202 = load ptr, ptr %l98, !tbaa !29
  call void @__olang_scope_close(ptr %s7)
  store ptr %t202, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t204 = load i64, ptr %l10, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l10, !tbaa !24
  br label %bb36
bb49:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l2
  %t210 = load i64, ptr %l6, !tbaa !24
  %t211 = load ptr, ptr %lp8
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  %t217 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v2, ptr %v2, ptr %t208, %"compiler/source:Span" %t209, i64 %t210, { i64, ptr } %t212)
  store ptr %t217, ptr %l106
  br label %bb50
bb50:
  %t218 = load ptr, ptr %l106, !tbaa !29
  store ptr %t218, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca i1
  %l28 = alloca i32
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca i1
  %l46 = alloca i32
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
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
  %t20 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i32 %t20, ptr %l17
  br label %bb6
bb6:
  %t21 = load i32, ptr %l17, !tbaa !23
  store i32 %t21, ptr %l8, !tbaa !23
  br label %bb29
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 114}
  store i32 %t35, ptr %l3
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t45 = trunc i64 48 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i32 %t52, ptr %l31
  br label %bb15
bb14:
  store i32 0, ptr %l28, !tbaa !23
  br label %bb16
bb15:
  %t53 = load i32, ptr %l31, !tbaa !23
  store i32 %t53, ptr %l28, !tbaa !23
  br label %bb16
bb16:
  %t54 = load i32, ptr %l28, !tbaa !23
  store i32 %t54, ptr %l8, !tbaa !23
  br label %bb29
bb17:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t56 = load ptr, ptr %l32, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb18, label %bb19
bb18:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 30}
  %t62 = icmp eq i64 %t60, 5
  store i1 %t62, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t63 = load i1, ptr %l33, !tbaa !21
  br i1 %t63, label %bb20, label %bb21
bb20:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t66, i32 0, i32 1
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 114}
  store i32 %t68, ptr %l5
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l6, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t78, i32 0, i32 3
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t84 = load ptr, ptr %l6, !tbaa !29
  %t85 = load ptr, ptr %l7, !tbaa !29
  %t90 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtOf(ptr %v0, ptr %v1, ptr %v1, ptr %t82, i32 %t83, ptr %t84, ptr %t85)
  store i32 %t90, ptr %l46
  br label %bb23
bb23:
  %t91 = load i32, ptr %l46, !tbaa !23
  store i32 %t91, ptr %l8, !tbaa !23
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i32 0, ptr %l8, !tbaa !23
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_54e68041531f6906_51860f3f569bf3d2)
  unreachable
bb29:
  %t92 = load i32, ptr %l8, !tbaa !23
  store i32 %t92, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtMatch(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l16 = alloca ptr
  %l21 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l28 = alloca i32
  %l30 = alloca i1
  %l37 = alloca i64
  %l46 = alloca { i64, ptr }
  %l50 = alloca %"compiler/source:Span"
  %l54 = alloca { i64, ptr }
  %l55 = alloca %"compiler/ast:Branch"
  %l61 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/ast:If"
  %l69 = alloca %"compiler/source:Span"
  %l73 = alloca ptr
  %l78 = alloca %"compiler/ast:If"
  %t115 = alloca { i64, [4 x i64] }, align 8
  %t147 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
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
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 60
  %t7 = load %"compiler/source:Span", ptr %t6
  store %"compiler/source:Span" %t7, ptr %l3
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l16
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l16, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 61
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPinned(ptr %v0, ptr %v1, ptr %t17, ptr %t18)
  store i1 %t21, ptr %l21
  br label %bb3
bb3:
  %t22 = load i1, ptr %l21, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t31 = call { i32, i1 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtCases(ptr %v0, ptr %v1, ptr %t25, %"compiler/source:Span" %a1, ptr %t27)
  %t32 = extractvalue { i32, i1 } %t31, 1
  %t33 = extractvalue { i32, i1 } %t31, 0
  store i32 %t33, ptr %l28
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb8, label %ok.35, !prof !99
ok.35:
  store i1 %t32, ptr %l27
  br label %bb7
bb7:
  %t36 = load i1, ptr %l27, !tbaa !21
  store i1 %t36, ptr %l23, !tbaa !21
  br label %bb11
bb8:
  %t37 = load i32, ptr %l28, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  store i1 %t40, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l3
  %t43 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunpin(ptr %v0, ptr %t41, %"compiler/source:Span" %t42, i64 %t43)
  br label %bb10
bb10:
  br label %ret
bb11:
  %t47 = load i1, ptr %l23, !tbaa !21
  store ptr null, ptr %l6, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t54 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtLast(ptr %v0, ptr %v1, ptr %t48, ptr %t49, i1 %t47)
  store i64 %t54, ptr %l37
  br label %bb12
bb12:
  %t55 = load i64, ptr %l37, !tbaa !24
  store i64 %t55, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Match", ptr %t56, i32 0, i32 3
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t63 = sub i64 %t61, 1
  store i64 %t63, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp sge i64 %t65, 0
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb14, label %bb15
bb14:
  br label %bb26
bb15:
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Match", ptr %t71, i32 0, i32 3
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l46, !tbaa !27
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr ptr, ptr %t78, i64 %t75
  %t80 = load ptr, ptr %t79, !tbaa !39
  store ptr %t80, ptr %l9, !tbaa !29
  %t82 = load ptr, ptr %l9, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Case", ptr %t82, i32 0, i32 0
  %t85 = load %"compiler/source:Span", ptr %t84
  store %"compiler/source:Span" %t85, ptr %l50
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t88 = load ptr, ptr %l9, !tbaa !29
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBinds(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t86, ptr %t87, ptr %t88)
  store { i64, ptr } %t92, ptr %l54
  br label %bb17
bb17:
  %t93 = load %"compiler/source:Span", ptr %l50
  %t94 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t95 = call %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v1, ptr %v0, %"compiler/source:Span" %t93, { i64, ptr } %t94, i64 -1)
  store %"compiler/ast:Branch" %t95, ptr %l55
  br label %bb18
bb18:
  %t96 = load %"compiler/ast:Branch", ptr %l55
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/ast:Branch" %t96, ptr %t97
  store ptr %t97, ptr %l10, !tbaa !29
  %t99 = load i64, ptr %l8, !tbaa !24
  %t100 = load i64, ptr %l7, !tbaa !24
  %t103 = icmp eq i64 %t99, %t100
  br i1 %t103, label %bb19, label %bb20
bb19:
  %t105 = load ptr, ptr %l9, !tbaa !29
  %t107 = getelementptr %"compiler/ast:Case", ptr %t105, i32 0, i32 0
  %t108 = load %"compiler/source:Span", ptr %t107
  store %"compiler/source:Span" %t108, ptr %l61
  %t109 = load ptr, ptr %l10, !tbaa !29
  %t112 = call %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr null, ptr %t109, ptr null)
  store %"compiler/ast:If" %t112, ptr %l64
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t113 = load %"compiler/ast:If", ptr %l64
  %t114 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/ast:If" %t113, ptr %t114
  store { i64, [4 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 0
  store i64 5, ptr %t116
  %t117 = load %"compiler/source:Span", ptr %l61
  %t118 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t117, 0
  %t120 = insertvalue { %"compiler/source:Span", ptr } %t118, ptr %t114, 1
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t120, ptr %t121
  %t122 = load { i64, [4 x i64] }, ptr %t115
  %t124 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t122, ptr %t124
  store ptr %t124, ptr %l6, !tbaa !29
  br label %bb25
bb22:
  %t126 = load ptr, ptr %l9, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Case", ptr %t126, i32 0, i32 0
  %t129 = load %"compiler/source:Span", ptr %t128
  store %"compiler/source:Span" %t129, ptr %l69
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t132 = load ptr, ptr %l9, !tbaa !29
  %t136 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtCaseTest(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %t130, ptr %t131, ptr %t132)
  store ptr %t136, ptr %l73
  br label %bb23
bb23:
  %t137 = load ptr, ptr %l73, !tbaa !29
  %t138 = load ptr, ptr %l10, !tbaa !29
  %t140 = load ptr, ptr %l6, !tbaa !29
  %t144 = call %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t137, ptr %t138, ptr %t140)
  store %"compiler/ast:If" %t144, ptr %l78
  br label %bb24
bb24:
  %t145 = load %"compiler/ast:If", ptr %l78
  %t146 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/ast:If" %t145, ptr %t146
  store { i64, [4 x i64] } zeroinitializer, ptr %t147
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t147, i32 0, i32 0
  store i64 5, ptr %t148
  %t149 = load %"compiler/source:Span", ptr %l69
  %t150 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t149, 0
  %t152 = insertvalue { %"compiler/source:Span", ptr } %t150, ptr %t146, 1
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t147, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t152, ptr %t153
  %t154 = load { i64, [4 x i64] }, ptr %t147
  %t156 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t154, ptr %t156
  store ptr %t156, ptr %l6, !tbaa !29
  br label %bb25
bb25:
  %t158 = load i64, ptr %l8, !tbaa !24
  %t160 = sub i64 %t158, 1
  store i64 %t160, ptr %l8, !tbaa !24
  br label %bb13
bb26:
  %t162 = load ptr, ptr %l6, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb27, label %bb28
bb27:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v0, ptr %t168, ptr %t169)
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load %"compiler/source:Span", ptr %l3
  %t175 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunpin(ptr %v0, ptr %t173, %"compiler/source:Span" %t174, i64 %t175)
  br label %bb31
bb31:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l14 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l1, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb16
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 16
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l14
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l1, !tbaa !24
  %t29 = sub i64 %t27, 1
  store i64 %t29, ptr %l1, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = icmp slt i64 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 14
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  store ptr %t41, ptr %l24
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %t42)
  store i64 %t43, ptr %l25
  br label %bb11
bb11:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l3, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load i64, ptr %l3, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb2
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca i1
  %l20 = alloca %"compiler/check:narrowed"
  %l23 = alloca %"compiler/check:narrowed"
  %l24 = alloca i32
  %l29 = alloca %"compiler/check:narrowed"
  %l32 = alloca %"compiler/check:narrowed"
  %l33 = alloca i32
  %l39 = alloca i64
  %l41 = alloca i1
  %l42 = alloca %"compiler/check:nullNarrow"
  %l45 = alloca %"compiler/check:nullNarrow"
  %l46 = alloca i32
  %l51 = alloca %"compiler/check:nullNarrow"
  %l54 = alloca %"compiler/check:nullNarrow"
  %l55 = alloca i32
  %l58 = alloca i64
  %l60 = alloca i1
  %l61 = alloca %"compiler/check:errNarrow"
  %l64 = alloca %"compiler/check:errNarrow"
  %l65 = alloca i32
  %l70 = alloca %"compiler/check:errNarrow"
  %l73 = alloca %"compiler/check:errNarrow"
  %l74 = alloca i32
  %l80 = alloca i64
  %l82 = alloca i1
  %l83 = alloca i64
  %l86 = alloca i64
  %l87 = alloca i32
  %l91 = alloca i64
  %l94 = alloca i64
  %l95 = alloca i32
  %l101 = alloca i64
  %l103 = alloca i1
  %l104 = alloca i64
  %l107 = alloca i64
  %l108 = alloca i32
  %l112 = alloca i64
  %l115 = alloca i64
  %l116 = alloca i32
  %l121 = alloca ptr
  %l128 = alloca %"compiler/typed:Block"
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t7 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %t3, i64 %a4)
  store { i64, ptr } %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwind(ptr %v0, ptr %t9, i64 %a3)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t13)
  store ptr %t15, ptr %l14
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l14, !tbaa !29
  store ptr %t16, ptr %l6, !tbaa !29
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t19 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 46
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l17
  br label %bb5
bb5:
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = icmp sgt i64 %t22, 0
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l6, !tbaa !29
  %t27 = getelementptr %"compiler/check:frame", ptr %t25, i32 0, i32 46
  %t29 = call { i32, %"compiler/check:narrowed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLast_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t27)
  %t30 = extractvalue { i32, %"compiler/check:narrowed" } %t29, 1
  %t31 = extractvalue { i32, %"compiler/check:narrowed" } %t29, 0
  store i32 %t31, ptr %l24
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb9, label %ok.33, !prof !99
ok.33:
  store %"compiler/check:narrowed" %t30, ptr %l23
  br label %bb8
bb7:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb12
bb8:
  %t34 = load %"compiler/check:narrowed", ptr %l23
  store %"compiler/check:narrowed" %t34, ptr %l20
  br label %bb11
bb9:
  br label %bb10
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f3fef639868d2bb5_dd9676d0e98a8921)
  unreachable
bb11:
  %t35 = getelementptr %"compiler/check:narrowed", ptr %l20, i32 0, i32 4
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = load i64, ptr %l1, !tbaa !24
  %t40 = icmp eq i64 %t36, %t37
  store i1 %t40, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l19, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb13, label %bb14
bb13:
  br label %bb26
bb14:
  br label %bb15
bb15:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 46
  %t49 = call { i32, %"compiler/check:narrowed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2ePop_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t47)
  %t50 = extractvalue { i32, %"compiler/check:narrowed" } %t49, 1
  %t51 = extractvalue { i32, %"compiler/check:narrowed" } %t49, 0
  store i32 %t51, ptr %l33
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb17, label %ok.53, !prof !99
ok.53:
  store %"compiler/check:narrowed" %t50, ptr %l32
  br label %bb16
bb16:
  %t54 = load %"compiler/check:narrowed", ptr %l32
  store %"compiler/check:narrowed" %t54, ptr %l29
  br label %bb24
bb17:
  %t55 = load i32, ptr %l33, !tbaa !23
  %t56 = icmp eq i32 %t55, 65536
  br i1 %t56, label %bb18, label %bb19
bb18:
  call void @__olang_bang_failed_plain(ptr @olang_loc_df1f5fd28061949_6fd2bc487e6b648d)
  unreachable
bb19:
  %t58 = load i32, ptr %l33, !tbaa !23
  %t59 = icmp eq i32 %t58, 65537
  br i1 %t59, label %bb20, label %bb21
bb20:
  call void @__olang_bang_failed_plain(ptr @olang_loc_adf1079d57e55808_9269da6a723799fc)
  unreachable
bb21:
  %t61 = load i32, ptr %l33, !tbaa !23
  %t62 = icmp eq i32 %t61, 65538
  br i1 %t62, label %bb22, label %bb23
bb22:
  call void @__olang_bang_failed_plain(ptr @olang_loc_4fa1eeadbabe5a66_3dfbfb89ab758d6a)
  unreachable
bb23:
  call void @__olang_bang_failed_plain(ptr @olang_loc_92a21335b7ae999a_7e07c1814bb2a646)
  unreachable
bb24:
  br label %bb25
bb25:
  br label %bb4
bb26:
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s3
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t66 = getelementptr %"compiler/check:frame", ptr %t64, i32 0, i32 50
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l39
  br label %bb28
bb28:
  %t69 = load i64, ptr %l39, !tbaa !24
  %t70 = icmp sgt i64 %t69, 0
  br i1 %t70, label %bb29, label %bb30
bb29:
  %t72 = load ptr, ptr %l6, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t72, i32 0, i32 50
  %t76 = call { i32, %"compiler/check:nullNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLas_H41327bbfea6c01118b477d23a6e2def2(ptr %v0, ptr %s3, ptr %t74)
  %t77 = extractvalue { i32, %"compiler/check:nullNarrow" } %t76, 1
  %t78 = extractvalue { i32, %"compiler/check:nullNarrow" } %t76, 0
  store i32 %t78, ptr %l46
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb32, label %ok.80, !prof !99
ok.80:
  store %"compiler/check:nullNarrow" %t77, ptr %l45
  br label %bb31
bb30:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb35
bb31:
  %t81 = load %"compiler/check:nullNarrow", ptr %l45
  store %"compiler/check:nullNarrow" %t81, ptr %l42
  br label %bb34
bb32:
  br label %bb33
bb33:
  call void @__olang_check_failed(ptr @olang_loc_abe1ff4556bedc08_80ba96099639cb2c)
  unreachable
bb34:
  %t82 = getelementptr %"compiler/check:nullNarrow", ptr %l42, i32 0, i32 1
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = load i64, ptr %l1, !tbaa !24
  %t87 = icmp eq i64 %t83, %t84
  store i1 %t87, ptr %l41, !tbaa !21
  br label %bb35
bb35:
  %t89 = load i1, ptr %l41, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb37:
  br label %bb38
bb38:
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = getelementptr %"compiler/check:frame", ptr %t92, i32 0, i32 50
  %t96 = call { i32, %"compiler/check:nullNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ePop_H59a749d10c64cd066029408cbe89e7b7(ptr %v0, ptr %s3, ptr %t94)
  %t97 = extractvalue { i32, %"compiler/check:nullNarrow" } %t96, 1
  %t98 = extractvalue { i32, %"compiler/check:nullNarrow" } %t96, 0
  store i32 %t98, ptr %l55
  %t99 = icmp ne i32 %t98, 0
  br i1 %t99, label %bb40, label %ok.100, !prof !99
ok.100:
  store %"compiler/check:nullNarrow" %t97, ptr %l54
  br label %bb39
bb39:
  %t101 = load %"compiler/check:nullNarrow", ptr %l54
  store %"compiler/check:nullNarrow" %t101, ptr %l51
  br label %bb42
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  br label %bb27
bb44:
  br label %bb45
bb45:
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t104 = getelementptr %"compiler/check:frame", ptr %t102, i32 0, i32 59
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t104)
  store i64 %t106, ptr %l58
  br label %bb46
bb46:
  %t107 = load i64, ptr %l58, !tbaa !24
  %t108 = icmp sgt i64 %t107, 0
  br i1 %t108, label %bb47, label %bb48
bb47:
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t112 = getelementptr %"compiler/check:frame", ptr %t110, i32 0, i32 59
  %t114 = call { i32, %"compiler/check:errNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLast_He310b7451e653469b2155498b3293ff7(ptr %v0, ptr %t112)
  %t115 = extractvalue { i32, %"compiler/check:errNarrow" } %t114, 1
  %t116 = extractvalue { i32, %"compiler/check:errNarrow" } %t114, 0
  store i32 %t116, ptr %l65
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb50, label %ok.118, !prof !99
ok.118:
  store %"compiler/check:errNarrow" %t115, ptr %l64
  br label %bb49
bb48:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb53
bb49:
  %t119 = load %"compiler/check:errNarrow", ptr %l64
  store %"compiler/check:errNarrow" %t119, ptr %l61
  br label %bb52
bb50:
  br label %bb51
bb51:
  call void @__olang_check_failed(ptr @olang_loc_7a4929889a701fe3_96d6f303ecd0d8a7)
  unreachable
bb52:
  %t120 = getelementptr %"compiler/check:errNarrow", ptr %l61, i32 0, i32 2
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = load i64, ptr %l1, !tbaa !24
  %t125 = icmp eq i64 %t121, %t122
  store i1 %t125, ptr %l60, !tbaa !21
  br label %bb53
bb53:
  %t127 = load i1, ptr %l60, !tbaa !21
  %t128 = xor i1 %t127, true
  br i1 %t128, label %bb54, label %bb55
bb54:
  br label %bb67
bb55:
  br label %bb56
bb56:
  %t130 = load ptr, ptr %l6, !tbaa !29
  %t132 = getelementptr %"compiler/check:frame", ptr %t130, i32 0, i32 59
  %t134 = call { i32, %"compiler/check:errNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2ePop__He4c3571ab54dd9fc34e0d36cd7afb0ff(ptr %v0, ptr %t132)
  %t135 = extractvalue { i32, %"compiler/check:errNarrow" } %t134, 1
  %t136 = extractvalue { i32, %"compiler/check:errNarrow" } %t134, 0
  store i32 %t136, ptr %l74
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb58, label %ok.138, !prof !99
ok.138:
  store %"compiler/check:errNarrow" %t135, ptr %l73
  br label %bb57
bb57:
  %t139 = load %"compiler/check:errNarrow", ptr %l73
  store %"compiler/check:errNarrow" %t139, ptr %l70
  br label %bb65
bb58:
  %t140 = load i32, ptr %l74, !tbaa !23
  %t141 = icmp eq i32 %t140, 65536
  br i1 %t141, label %bb59, label %bb60
bb59:
  call void @__olang_bang_failed_plain(ptr @olang_loc_b4897252f2a0467_e1365b27726b9d63)
  unreachable
bb60:
  %t143 = load i32, ptr %l74, !tbaa !23
  %t144 = icmp eq i32 %t143, 65537
  br i1 %t144, label %bb61, label %bb62
bb61:
  call void @__olang_bang_failed_plain(ptr @olang_loc_b02f2e0c8b90d83e_466afc0716e3b9a2)
  unreachable
bb62:
  %t146 = load i32, ptr %l74, !tbaa !23
  %t147 = icmp eq i32 %t146, 65538
  br i1 %t147, label %bb63, label %bb64
bb63:
  call void @__olang_bang_failed_plain(ptr @olang_loc_e882b6948f69dce8_e6367676615923ec)
  unreachable
bb64:
  call void @__olang_bang_failed_plain(ptr @olang_loc_9e6114e2cf841093_fa90ce222875bd2f)
  unreachable
bb65:
  br label %bb66
bb66:
  br label %bb45
bb67:
  br label %bb68
bb68:
  %t149 = load ptr, ptr %l6, !tbaa !29
  %t151 = getelementptr %"compiler/check:frame", ptr %t149, i32 0, i32 22
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t151)
  store i64 %t153, ptr %l80
  br label %bb69
bb69:
  %t154 = load i64, ptr %l80, !tbaa !24
  %t155 = icmp sgt i64 %t154, 0
  br i1 %t155, label %bb70, label %bb71
bb70:
  %t157 = load ptr, ptr %l6, !tbaa !29
  %t159 = getelementptr %"compiler/check:frame", ptr %t157, i32 0, i32 22
  %t161 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLast_3cI64_3e(ptr %v0, ptr %t159)
  %t162 = extractvalue { i32, i64 } %t161, 1
  %t163 = extractvalue { i32, i64 } %t161, 0
  store i32 %t163, ptr %l87
  %t164 = icmp ne i32 %t163, 0
  br i1 %t164, label %bb73, label %ok.165, !prof !99
ok.165:
  store i64 %t162, ptr %l86
  br label %bb72
bb71:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb76
bb72:
  %t166 = load i64, ptr %l86, !tbaa !24
  store i64 %t166, ptr %l83, !tbaa !24
  br label %bb75
bb73:
  br label %bb74
bb74:
  call void @__olang_check_failed(ptr @olang_loc_c349e4c9332250dd_9daf9d91ff07ef41)
  unreachable
bb75:
  %t167 = load i64, ptr %l1, !tbaa !24
  %t168 = load i64, ptr %l83, !tbaa !24
  %t170 = icmp eq i64 %t168, %t167
  store i1 %t170, ptr %l82, !tbaa !21
  br label %bb76
bb76:
  %t172 = load i1, ptr %l82, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb77, label %bb78
bb77:
  br label %bb90
bb78:
  br label %bb79
bb79:
  %t175 = load ptr, ptr %l6, !tbaa !29
  %t177 = getelementptr %"compiler/check:frame", ptr %t175, i32 0, i32 22
  %t179 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t177)
  %t180 = extractvalue { i32, i64 } %t179, 1
  %t181 = extractvalue { i32, i64 } %t179, 0
  store i32 %t181, ptr %l95
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb81, label %ok.183, !prof !99
ok.183:
  store i64 %t180, ptr %l94
  br label %bb80
bb80:
  %t184 = load i64, ptr %l94, !tbaa !24
  store i64 %t184, ptr %l91, !tbaa !24
  br label %bb88
bb81:
  %t185 = load i32, ptr %l95, !tbaa !23
  %t186 = icmp eq i32 %t185, 65536
  br i1 %t186, label %bb82, label %bb83
bb82:
  call void @__olang_bang_failed_plain(ptr @olang_loc_90c216d2a7707e63_13ebc04feeb9a31f)
  unreachable
bb83:
  %t188 = load i32, ptr %l95, !tbaa !23
  %t189 = icmp eq i32 %t188, 65537
  br i1 %t189, label %bb84, label %bb85
bb84:
  call void @__olang_bang_failed_plain(ptr @olang_loc_e7cf760e54914750_8299ab19ca729e9c)
  unreachable
bb85:
  %t191 = load i32, ptr %l95, !tbaa !23
  %t192 = icmp eq i32 %t191, 65538
  br i1 %t192, label %bb86, label %bb87
bb86:
  call void @__olang_bang_failed_plain(ptr @olang_loc_2de9afb4b96dcf94_71a46e56f9644858)
  unreachable
bb87:
  call void @__olang_bang_failed_plain(ptr @olang_loc_6d051d6c732886d2_d9cb433bcdc0e6)
  unreachable
bb88:
  br label %bb89
bb89:
  br label %bb68
bb90:
  br label %bb91
bb91:
  %t194 = load ptr, ptr %l6, !tbaa !29
  %t196 = getelementptr %"compiler/check:frame", ptr %t194, i32 0, i32 24
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t196)
  store i64 %t198, ptr %l101
  br label %bb92
bb92:
  %t199 = load i64, ptr %l101, !tbaa !24
  %t200 = icmp sgt i64 %t199, 0
  br i1 %t200, label %bb93, label %bb94
bb93:
  %t202 = load ptr, ptr %l6, !tbaa !29
  %t204 = getelementptr %"compiler/check:frame", ptr %t202, i32 0, i32 24
  %t206 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLast_3cI64_3e(ptr %v0, ptr %t204)
  %t207 = extractvalue { i32, i64 } %t206, 1
  %t208 = extractvalue { i32, i64 } %t206, 0
  store i32 %t208, ptr %l108
  %t209 = icmp ne i32 %t208, 0
  br i1 %t209, label %bb96, label %ok.210, !prof !99
ok.210:
  store i64 %t207, ptr %l107
  br label %bb95
bb94:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb99
bb95:
  %t211 = load i64, ptr %l107, !tbaa !24
  store i64 %t211, ptr %l104, !tbaa !24
  br label %bb98
bb96:
  br label %bb97
bb97:
  call void @__olang_check_failed(ptr @olang_loc_fd3792a3478c708a_bd2f712e645466e6)
  unreachable
bb98:
  %t212 = load i64, ptr %l1, !tbaa !24
  %t213 = load i64, ptr %l104, !tbaa !24
  %t215 = icmp eq i64 %t213, %t212
  store i1 %t215, ptr %l103, !tbaa !21
  br label %bb99
bb99:
  %t217 = load i1, ptr %l103, !tbaa !21
  %t218 = xor i1 %t217, true
  br i1 %t218, label %bb100, label %bb101
bb100:
  br label %bb113
bb101:
  br label %bb102
bb102:
  %t220 = load ptr, ptr %l6, !tbaa !29
  %t222 = getelementptr %"compiler/check:frame", ptr %t220, i32 0, i32 24
  %t224 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t222)
  %t225 = extractvalue { i32, i64 } %t224, 1
  %t226 = extractvalue { i32, i64 } %t224, 0
  store i32 %t226, ptr %l116
  %t227 = icmp ne i32 %t226, 0
  br i1 %t227, label %bb104, label %ok.228, !prof !99
ok.228:
  store i64 %t225, ptr %l115
  br label %bb103
bb103:
  %t229 = load i64, ptr %l115, !tbaa !24
  store i64 %t229, ptr %l112, !tbaa !24
  br label %bb111
bb104:
  %t230 = load i32, ptr %l116, !tbaa !23
  %t231 = icmp eq i32 %t230, 65536
  br i1 %t231, label %bb105, label %bb106
bb105:
  call void @__olang_bang_failed_plain(ptr @olang_loc_12b3dc107423b434_482fbf8ad69d32f8)
  unreachable
bb106:
  %t233 = load i32, ptr %l116, !tbaa !23
  %t234 = icmp eq i32 %t233, 65537
  br i1 %t234, label %bb107, label %bb108
bb107:
  call void @__olang_bang_failed_plain(ptr @olang_loc_4090f31281295d0b_b76133cd00d27c97)
  unreachable
bb108:
  %t236 = load i32, ptr %l116, !tbaa !23
  %t237 = icmp eq i32 %t236, 65538
  br i1 %t237, label %bb109, label %bb110
bb109:
  call void @__olang_bang_failed_plain(ptr @olang_loc_ee572ef2923bf685_6f413c271381cde1)
  unreachable
bb110:
  call void @__olang_bang_failed_plain(ptr @olang_loc_ff67d74e2821509e_7f8039e3a9b6d64a)
  unreachable
bb111:
  br label %bb112
bb112:
  br label %bb91
bb113:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t239)
  store ptr %t241, ptr %l121
  br label %bb114
bb114:
  %t242 = load ptr, ptr %l121, !tbaa !29
  %t246 = getelementptr %"compiler/check:frame", ptr %t242, i32 0, i32 7
  store i64 %a2, ptr %t246, !tbaa !24
  %t247 = load i64, ptr %l1, !tbaa !24
  %t249 = trunc i64 %t247 to i32
  %t251 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t254 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v1, ptr %v1, i32 %t249, { i64, ptr } %t251)
  store %"compiler/typed:Block" %t254, ptr %l128
  br label %bb115
bb115:
  %t255 = load %"compiler/typed:Block", ptr %l128
  %t256 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/typed:Block" %t255, ptr %t256
  store ptr %t256, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etwinBody(ptr %v0, ptr %a0, i32 %a1, i32 0)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"compiler/check:reflList"
  %l10 = alloca %"compiler/check:reflVal"
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca %"compiler/names:Ref"
  %l33 = alloca i32
  %l35 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i32
  %l43 = alloca i1
  %l48 = alloca i32
  %l55 = alloca i64
  %l58 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca %"compiler/generic:Desc"
  %l70 = alloca i32
  %l72 = alloca ptr
  %l73 = alloca i1
  %l84 = alloca %"compiler/check:reflList"
  %l87 = alloca i1
  %l93 = alloca { i64, ptr }
  %l95 = alloca %"compiler/check:reflVal"
  %l103 = alloca i32
  %l104 = alloca ptr
  %l105 = alloca i1
  %l112 = alloca i32
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
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
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb33
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l22, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l24
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l24, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t41 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t38, i64 %t35, i32 %t37)
  store %"compiler/names:Ref" %t41, ptr %l28
  br label %bb7
bb7:
  %t42 = getelementptr %"compiler/names:Ref", ptr %l28, i32 0, i32 0
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 9}
  %t45 = trunc i64 1 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb8, label %bb9
bb8:
  store i32 -1, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t51)
  store ptr %t53, ptr %l35
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l35, !tbaa !29
  %t56 = getelementptr %"compiler/check:frame", ptr %t54, i32 0, i32 4
  %t57 = getelementptr %"compiler/generic:Context", ptr %t56, i32 0, i32 3
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t57, i32 %t58)
  %t62 = extractvalue { i32, i32 } %t61, 1
  %t63 = extractvalue { i32, i32 } %t61, 0
  store i32 %t63, ptr %l40
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb13, label %ok.65, !prof !99
ok.65:
  store i32 %t62, ptr %l39
  br label %bb12
bb12:
  %t66 = load i32, ptr %l39, !tbaa !23
  store i32 %t66, ptr %l33, !tbaa !23
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i32 -1, ptr %l33, !tbaa !23
  br label %bb15
bb15:
  %t67 = load i32, ptr %l33, !tbaa !23
  store i32 %t67, ptr %l4, !tbaa !23
  %t68 = load i32, ptr %l4, !tbaa !23
  %t70 = icmp sge i32 %t68, 0
  br i1 %t70, label %bb16, label %bb17
bb16:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 2
  %t78 = load i32, ptr %l4, !tbaa !23
  %t81 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t81, ptr %l48
  br label %bb18
bb17:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb19
bb18:
  %t82 = load i32, ptr %l48, !range !{i32 0, i32 33}
  %t84 = trunc i64 26 to i32
  %t85 = icmp eq i32 %t82, %t84
  %t87 = xor i1 %t85, true
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb19
bb19:
  %t89 = load i1, ptr %l43, !tbaa !21
  br i1 %t89, label %bb20, label %bb21
bb20:
  %t90 = load i32, ptr %l4, !tbaa !23
  store i32 %t90, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t92, i32 %t93)
  store i64 %t96, ptr %l55
  br label %bb23
bb23:
  %t97 = load i64, ptr %l55, !tbaa !24
  store i64 %t97, ptr %l5, !tbaa !24
  %t98 = load i64, ptr %l5, !tbaa !24
  %t100 = icmp sge i64 %t98, 0
  br i1 %t100, label %bb24, label %bb25
bb24:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  store ptr %t105, ptr %l60, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l5, !tbaa !24
  %t110 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t106, i64 %t107)
  store i32 %t110, ptr %l63
  br label %bb26
bb25:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb28
bb26:
  %t111 = load ptr, ptr %l60, !tbaa !29
  %t112 = load i32, ptr %l63, !tbaa !23
  %t113 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t111, i32 %t112)
  store %"compiler/generic:Desc" %t113, ptr %l64
  br label %bb27
bb27:
  %t114 = getelementptr %"compiler/generic:Desc", ptr %l64, i32 0, i32 0
  %t115 = load i64, ptr %t114, !tbaa !24
  %t116 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescNone, !tbaa !24
  %t119 = icmp ne i64 %t115, %t116
  store i1 %t119, ptr %l58, !tbaa !21
  br label %bb28
bb28:
  %t121 = load i1, ptr %l58, !tbaa !21
  br i1 %t121, label %bb29, label %bb30
bb29:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l5, !tbaa !24
  %t126 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t122, i64 %t123)
  store i32 %t126, ptr %l70
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t127 = load i32, ptr %l70, !tbaa !23
  store i32 %t127, ptr %rv
  br label %ret
bb32:
  store i32 -1, ptr %rv
  br label %ret
bb33:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t130 = load ptr, ptr %l72, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb34, label %bb35
bb34:
  %t133 = load ptr, ptr %l72, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 30}
  %t136 = icmp eq i64 %t134, 15
  store i1 %t136, ptr %l73, !tbaa !21
  br label %bb35
bb35:
  %t137 = load i1, ptr %l73, !tbaa !21
  br i1 %t137, label %bb36, label %bb37
bb36:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l6
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t146, i32 0, i32 1
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l7, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t152, i32 0, i32 2
  %t154 = load { i64, ptr }, ptr %t153
  store { i64, ptr } %t154, ptr %l8, !tbaa !27
  br label %bb38
bb37:
  br label %bb51
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l7, !tbaa !29
  %t160 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t156, ptr %t157)
  store %"compiler/check:reflList" %t160, ptr %l84
  br label %bb39
bb39:
  %t161 = load %"compiler/check:reflList", ptr %l84
  store %"compiler/check:reflList" %t161, ptr %l9
  %t162 = getelementptr %"compiler/check:reflList", ptr %l9, i32 0, i32 0
  %t163 = load i1, ptr %t162, !tbaa !21
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb42
bb41:
  %t167 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t171 = icmp ne i64 %t169, 1
  store i1 %t171, ptr %l87, !tbaa !21
  br label %bb42
bb42:
  %t173 = load i1, ptr %l87, !tbaa !21
  br i1 %t173, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s5)
  store i32 -1, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t176, ptr %l93, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr ptr, ptr %t178, i64 0
  %t180 = load ptr, ptr %t179, !tbaa !39
  %t183 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflInt(ptr %v0, ptr %v1, ptr %s5, ptr %t175, ptr %t180)
  store %"compiler/check:reflVal" %t183, ptr %l95
  br label %bb46
bb46:
  %t184 = load %"compiler/check:reflVal", ptr %l95
  store %"compiler/check:reflVal" %t184, ptr %l10
  %t185 = getelementptr %"compiler/check:reflVal", ptr %l10, i32 0, i32 0
  %t186 = load i1, ptr %t185, !tbaa !21
  %t188 = xor i1 %t186, true
  br i1 %t188, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s5)
  store i32 -1, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l6
  %t193 = load %"compiler/check:reflList", ptr %l9
  %t194 = getelementptr %"compiler/check:reflVal", ptr %l10, i32 0, i32 2
  %t195 = load i64, ptr %t194, !tbaa !24
  %t200 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %t191, %"compiler/source:Span" %t192, %"compiler/check:reflList" %t193, i64 %t195)
  store i32 %t200, ptr %l103
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s5)
  %t201 = load i32, ptr %l103, !tbaa !23
  store i32 %t201, ptr %rv
  br label %ret
bb51:
  %t202 = load ptr, ptr %l1, !tbaa !29
  store ptr %t202, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t203 = load ptr, ptr %l104, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb52, label %bb53
bb52:
  %t206 = load ptr, ptr %l104, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 30}
  %t209 = icmp eq i64 %t207, 2
  store i1 %t209, ptr %l105, !tbaa !21
  br label %bb53
bb53:
  %t210 = load i1, ptr %l105, !tbaa !21
  br i1 %t210, label %bb54, label %bb55
bb54:
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr }, ptr %t213, i32 0, i32 1
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l11, !tbaa !29
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l11, !tbaa !29
  %t221 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t217, ptr %t218)
  store i32 %t221, ptr %l112
  br label %bb57
bb57:
  %t222 = load i32, ptr %l112, !tbaa !23
  store i32 %t222, ptr %rv
  br label %ret
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i32 -1, ptr %rv
  br label %ret
bb62:
  call void @__olang_check_failed(ptr @olang_loc_b90f60f44557575f_8372487000419b6b)
  unreachable
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l42 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l79 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l103 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca i1
  %l126 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l135 = alloca i1
  %l138 = alloca ptr
  %l139 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i1
  %l159 = alloca { i64, ptr }
  %l165 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i1
  %l180 = alloca i1
  %l184 = alloca i1
  %l188 = alloca i1
  %l198 = alloca { i64, ptr }
  %l204 = alloca i1
  %l209 = alloca ptr
  %l210 = alloca i1
  %l221 = alloca i1
  %l223 = alloca i1
  %l232 = alloca { i64, ptr }
  %l238 = alloca i1
  %l243 = alloca ptr
  %l244 = alloca i1
  %l252 = alloca i1
  %l256 = alloca i1
  %l257 = alloca i1
  %l262 = alloca i1
  %l263 = alloca i1
  %l268 = alloca i1
  %l269 = alloca ptr
  %l270 = alloca i1
  %l279 = alloca i1
  %l280 = alloca i1
  %l284 = alloca i1
  %l285 = alloca i1
  %l290 = alloca i1
  %l291 = alloca ptr
  %l292 = alloca i1
  %l300 = alloca i1
  %l301 = alloca i1
  %l305 = alloca i1
  %l306 = alloca ptr
  %l307 = alloca i1
  %l315 = alloca i1
  %l325 = alloca { i64, ptr }
  %l330 = alloca i1
  %l338 = alloca i1
  %l339 = alloca ptr
  %l345 = alloca i1
  %l346 = alloca ptr
  %l347 = alloca i1
  %l354 = alloca i1
  %l358 = alloca i1
  %l368 = alloca { i64, ptr }
  %l374 = alloca i1
  %l384 = alloca { i64, ptr }
  %l390 = alloca i1
  %l397 = alloca ptr
  %l398 = alloca i1
  %l406 = alloca i1
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
  store ptr %t6, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t7 = load ptr, ptr %l46, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l46, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l47, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l47, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t16 = load ptr, ptr %l50, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l50, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 1
  store i1 %t22, ptr %l51, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l51, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t25 = load ptr, ptr %l54, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l54, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 15
  store i1 %t31, ptr %l55, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l55, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t35 = load ptr, ptr %l59, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb18, label %bb19
bb18:
  %t38 = load ptr, ptr %l59, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 2
  store i1 %t41, ptr %l60, !tbaa !21
  br label %bb19
bb19:
  %t42 = load i1, ptr %l60, !tbaa !21
  br i1 %t42, label %bb20, label %bb21
bb20:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l2, !tbaa !29
  br label %bb30
bb21:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t50 = load ptr, ptr %l65, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb22, label %bb23
bb22:
  %t53 = load ptr, ptr %l65, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 18}
  %t56 = icmp eq i64 %t54, 3
  store i1 %t56, ptr %l66, !tbaa !21
  br label %bb23
bb23:
  %t57 = load i1, ptr %l66, !tbaa !21
  br i1 %t57, label %bb24, label %bb25
bb24:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [5 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t60, i32 0, i32 2
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l2, !tbaa !29
  br label %bb30
bb25:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t65 = load ptr, ptr %l71, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb26, label %bb27
bb26:
  %t68 = load ptr, ptr %l71, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 4
  store i1 %t71, ptr %l72, !tbaa !21
  br label %bb27
bb27:
  %t72 = load i1, ptr %l72, !tbaa !21
  br i1 %t72, label %bb28, label %bb29
bb28:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l2, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %t79, ptr %t80, i1 false)
  store i1 %t83, ptr %l79
  br label %bb31
bb31:
  %t84 = load i1, ptr %l79, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
bb32:
  %t85 = load ptr, ptr %l1, !tbaa !29
  store ptr %t85, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t86 = load ptr, ptr %l80, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb33, label %bb34
bb33:
  %t89 = load ptr, ptr %l80, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 18}
  %t92 = icmp eq i64 %t90, 5
  store i1 %t92, ptr %l81, !tbaa !21
  br label %bb34
bb34:
  %t93 = load i1, ptr %l81, !tbaa !21
  br i1 %t93, label %bb35, label %bb36
bb35:
  br label %bb45
bb36:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t95 = load ptr, ptr %l84, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb37, label %bb38
bb37:
  %t98 = load ptr, ptr %l84, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 18}
  %t101 = icmp eq i64 %t99, 16
  store i1 %t101, ptr %l85, !tbaa !21
  br label %bb38
bb38:
  %t102 = load i1, ptr %l85, !tbaa !21
  br i1 %t102, label %bb39, label %bb40
bb39:
  br label %bb45
bb40:
  %t103 = load ptr, ptr %l1, !tbaa !29
  store ptr %t103, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t104 = load ptr, ptr %l88, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb41, label %bb42
bb41:
  %t107 = load ptr, ptr %l88, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 18}
  %t110 = icmp eq i64 %t108, 8
  store i1 %t110, ptr %l89, !tbaa !21
  br label %bb42
bb42:
  %t111 = load i1, ptr %l89, !tbaa !21
  br i1 %t111, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store i1 true, ptr %rv
  br label %ret
bb46:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t114 = load ptr, ptr %l93, !tbaa !29
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %bb47, label %bb48
bb47:
  %t117 = load ptr, ptr %l93, !tbaa !29
  %t118 = load i64, ptr %t117, !range !{i64 0, i64 18}
  %t120 = icmp eq i64 %t118, 6
  store i1 %t120, ptr %l94, !tbaa !21
  br label %bb48
bb48:
  %t121 = load i1, ptr %l94, !tbaa !21
  br i1 %t121, label %bb49, label %bb50
bb49:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr { i64, [5 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t124, i32 0, i32 1
  %t126 = load i32, ptr %t125
  store i32 %t126, ptr %l3, !tbaa !23
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [5 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t130, i32 0, i32 2
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l4, !tbaa !29
  br label %bb51
bb50:
  br label %bb102
bb51:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l3, !tbaa !23
  %t138 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edestructs(ptr %v0, ptr %t134, i32 %t135)
  store i1 %t138, ptr %l103
  br label %bb52
bb52:
  %t139 = load i1, ptr %l103, !tbaa !21
  br i1 %t139, label %bb53, label %bb54
bb53:
  store i1 true, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  %t141 = load ptr, ptr %l4, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Call", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  store ptr %t144, ptr %l5, !tbaa !29
  %t146 = load ptr, ptr %l5, !tbaa !29
  store ptr %t146, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t147 = load ptr, ptr %l107, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb56, label %bb57
bb56:
  %t150 = load ptr, ptr %l107, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 5}
  %t153 = icmp eq i64 %t151, 0
  store i1 %t153, ptr %l108, !tbaa !21
  br label %bb57
bb57:
  %t154 = load i1, ptr %l108, !tbaa !21
  br i1 %t154, label %bb58, label %bb59
bb58:
  %t155 = load ptr, ptr %l5, !tbaa !29
  %t157 = getelementptr { i64, [3 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { i32 }, ptr %t157, i32 0, i32 0
  %t159 = load i32, ptr %t158
  store i32 %t159, ptr %l6, !tbaa !23
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 115
  %t164 = load i32, ptr %l6, !tbaa !23
  %t166 = sext i32 %t164 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t163, i64 %t166)
  br label %bb61
bb61:
  br label %bb91
bb62:
  %t169 = load ptr, ptr %l5, !tbaa !29
  store ptr %t169, ptr %l117, !tbaa !29
  store i1 false, ptr %l118, !tbaa !21
  %t170 = load ptr, ptr %l117, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb63, label %bb64
bb63:
  %t173 = load ptr, ptr %l117, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 5}
  %t176 = icmp eq i64 %t174, 1
  store i1 %t176, ptr %l118, !tbaa !21
  br label %bb64
bb64:
  %t177 = load i1, ptr %l118, !tbaa !21
  br i1 %t177, label %bb65, label %bb66
bb65:
  %t178 = load ptr, ptr %l5, !tbaa !29
  %t180 = getelementptr { i64, [3 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { i64 }, ptr %t180, i32 0, i32 0
  %t182 = load i64, ptr %t181
  store i64 %t182, ptr %l7, !tbaa !24
  br label %bb67
bb66:
  br label %bb74
bb67:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t188 = load i64, ptr %l7, !tbaa !24
  %t191 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t187, i64 %t188)
  store ptr %t191, ptr %l126
  br label %bb68
bb68:
  %t192 = load ptr, ptr %l126, !tbaa !29
  store ptr %t192, ptr %l8, !tbaa !29
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load ptr, ptr %l8, !tbaa !29
  %t196 = getelementptr %"compiler/ast:Func", ptr %t194, i32 0, i32 2
  %t197 = load i32, ptr %t196, !tbaa !23
  %t200 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t193, i32 %t197)
  store { i64, ptr } %t200, ptr %l130
  br label %bb69
bb69:
  %t201 = load ptr, ptr %l8, !tbaa !29
  %t203 = getelementptr %"compiler/ast:Func", ptr %t201, i32 0, i32 3
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t206 = getelementptr %"compiler/ast:Sig", ptr %t204, i32 0, i32 0
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t207, 0
  %t210 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t212 = call i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %t210, i64 %t209)
  store i1 %t212, ptr %l135
  br label %bb70
bb70:
  %t213 = load i1, ptr %l135, !tbaa !21
  %t214 = xor i1 %t213, true
  br i1 %t214, label %bb71, label %bb72
bb71:
  store i1 true, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  br label %bb91
bb74:
  %t217 = load ptr, ptr %l5, !tbaa !29
  store ptr %t217, ptr %l138, !tbaa !29
  store i1 false, ptr %l139, !tbaa !21
  %t218 = load ptr, ptr %l138, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb75, label %bb76
bb75:
  %t221 = load ptr, ptr %l138, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 5}
  %t224 = icmp eq i64 %t222, 2
  store i1 %t224, ptr %l139, !tbaa !21
  br label %bb76
bb76:
  %t225 = load i1, ptr %l139, !tbaa !21
  br i1 %t225, label %bb77, label %bb78
bb77:
  br label %bb83
bb78:
  %t226 = load ptr, ptr %l5, !tbaa !29
  store ptr %t226, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t227 = load ptr, ptr %l142, !tbaa !29
  %t228 = icmp ne ptr %t227, null
  br i1 %t228, label %bb79, label %bb80
bb79:
  %t230 = load ptr, ptr %l142, !tbaa !29
  %t231 = load i64, ptr %t230, !range !{i64 0, i64 5}
  %t233 = icmp eq i64 %t231, 3
  store i1 %t233, ptr %l143, !tbaa !21
  br label %bb80
bb80:
  %t234 = load i1, ptr %l143, !tbaa !21
  br i1 %t234, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  store i1 true, ptr %rv
  br label %ret
bb84:
  %t236 = load ptr, ptr %l5, !tbaa !29
  store ptr %t236, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t237 = load ptr, ptr %l147, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb85, label %bb86
bb85:
  %t240 = load ptr, ptr %l147, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 5}
  %t243 = icmp eq i64 %t241, 4
  store i1 %t243, ptr %l148, !tbaa !21
  br label %bb86
bb86:
  %t244 = load i1, ptr %l148, !tbaa !21
  br i1 %t244, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_d97e23b04dcff800_367dc3876d150fb4)
  unreachable
bb91:
  %t245 = load ptr, ptr %l4, !tbaa !29
  %t247 = getelementptr %"compiler/typed:Call", ptr %t245, i32 0, i32 1
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !27
  store { i64, ptr } %t248, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t250 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t250, 0
  store i64 %t252, ptr %l11, !tbaa !24
  br label %bb92
bb92:
  %t254 = load i64, ptr %l10, !tbaa !24
  %t255 = load i64, ptr %l11, !tbaa !24
  %t258 = icmp slt i64 %t254, %t255
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb93, label %bb94
bb93:
  br label %bb101
bb94:
  br label %bb95
bb95:
  %t262 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t262, ptr %l159, !tbaa !27
  %t263 = load i64, ptr %l10, !tbaa !24
  %t265 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr ptr, ptr %t266, i64 %t263
  %t268 = load ptr, ptr %t267, !tbaa !39
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t275 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t270, ptr %t268)
  store i1 %t275, ptr %l165
  br label %bb96
bb96:
  %t276 = load i1, ptr %l165, !tbaa !21
  br i1 %t276, label %bb97, label %bb98
bb97:
  store i1 true, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t278 = load i64, ptr %l10, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l10, !tbaa !24
  br label %bb92
bb101:
  store i1 false, ptr %rv
  br label %ret
bb102:
  %t283 = load ptr, ptr %l1, !tbaa !29
  store ptr %t283, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t284 = load ptr, ptr %l170, !tbaa !29
  %t285 = icmp ne ptr %t284, null
  br i1 %t285, label %bb103, label %bb104
bb103:
  %t287 = load ptr, ptr %l170, !tbaa !29
  %t288 = load i64, ptr %t287, !range !{i64 0, i64 18}
  %t290 = icmp eq i64 %t288, 7
  store i1 %t290, ptr %l171, !tbaa !21
  br label %bb104
bb104:
  %t291 = load i1, ptr %l171, !tbaa !21
  br i1 %t291, label %bb105, label %bb106
bb105:
  %t292 = load ptr, ptr %l1, !tbaa !29
  %t294 = getelementptr { i64, [5 x i64] }, ptr %t292, i32 0, i32 1
  %t295 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t294, i32 0, i32 2
  %t296 = load ptr, ptr %t295
  store ptr %t296, ptr %l13, !tbaa !29
  br label %bb107
bb106:
  br label %bb128
bb107:
  %t298 = load ptr, ptr %l13, !tbaa !29
  %t300 = getelementptr %"compiler/typed:Make", ptr %t298, i32 0, i32 4
  %t301 = load i32, ptr %t300, !tbaa !23
  %t303 = sext i32 %t301 to i64
  %t305 = icmp sge i64 %t303, 0
  br i1 %t305, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l180, !tbaa !21
  br label %bb110
bb109:
  %t307 = load ptr, ptr %l13, !tbaa !29
  %t309 = getelementptr %"compiler/typed:Make", ptr %t307, i32 0, i32 5
  %t310 = load i32, ptr %t309, !range !{i32 0, i32 3}
  %t312 = trunc i64 1 to i32
  %t313 = icmp eq i32 %t310, %t312
  store i1 %t313, ptr %l180, !tbaa !21
  br label %bb110
bb110:
  %t315 = load i1, ptr %l180, !tbaa !21
  br i1 %t315, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l184, !tbaa !21
  br label %bb114
bb112:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load ptr, ptr %l13, !tbaa !29
  %t319 = getelementptr %"compiler/typed:Make", ptr %t317, i32 0, i32 3
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t323 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t316, ptr %t320)
  store i1 %t323, ptr %l188
  br label %bb113
bb113:
  %t324 = load i1, ptr %l188, !tbaa !21
  store i1 %t324, ptr %l184, !tbaa !21
  br label %bb114
bb114:
  %t325 = load i1, ptr %l184, !tbaa !21
  br i1 %t325, label %bb115, label %bb116
bb115:
  store i1 true, ptr %rv
  br label %ret
bb116:
  br label %bb117
bb117:
  %t327 = load ptr, ptr %l13, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Make", ptr %t327, i32 0, i32 2
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t332 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t334 = extractvalue { i64, ptr } %t332, 0
  store i64 %t334, ptr %l16, !tbaa !24
  br label %bb118
bb118:
  %t336 = load i64, ptr %l15, !tbaa !24
  %t337 = load i64, ptr %l16, !tbaa !24
  %t340 = icmp slt i64 %t336, %t337
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb119, label %bb120
bb119:
  br label %bb127
bb120:
  br label %bb121
bb121:
  %t344 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t344, ptr %l198, !tbaa !27
  %t345 = load i64, ptr %l15, !tbaa !24
  %t347 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr ptr, ptr %t348, i64 %t345
  %t350 = load ptr, ptr %t349, !tbaa !39
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t357 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t352, ptr %t350)
  store i1 %t357, ptr %l204
  br label %bb122
bb122:
  %t358 = load i1, ptr %l204, !tbaa !21
  br i1 %t358, label %bb123, label %bb124
bb123:
  store i1 true, ptr %rv
  br label %ret
bb124:
  br label %bb125
bb125:
  br label %bb126
bb126:
  %t360 = load i64, ptr %l15, !tbaa !24
  %t362 = add i64 %t360, 1
  store i64 %t362, ptr %l15, !tbaa !24
  br label %bb118
bb127:
  store i1 false, ptr %rv
  br label %ret
bb128:
  %t365 = load ptr, ptr %l1, !tbaa !29
  store ptr %t365, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t366 = load ptr, ptr %l209, !tbaa !29
  %t367 = icmp ne ptr %t366, null
  br i1 %t367, label %bb129, label %bb130
bb129:
  %t369 = load ptr, ptr %l209, !tbaa !29
  %t370 = load i64, ptr %t369, !range !{i64 0, i64 18}
  %t372 = icmp eq i64 %t370, 9
  store i1 %t372, ptr %l210, !tbaa !21
  br label %bb130
bb130:
  %t373 = load i1, ptr %l210, !tbaa !21
  br i1 %t373, label %bb131, label %bb132
bb131:
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t376 = getelementptr { i64, [5 x i64] }, ptr %t374, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t376, i32 0, i32 2
  %t378 = load i32, ptr %t377, !range !{i32 0, i32 52}
  store i32 %t378, ptr %l18
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t382, i32 0, i32 3
  %t384 = load i32, ptr %t383, !range !{i32 0, i32 3}
  store i32 %t384, ptr %l19
  %t386 = load ptr, ptr %l1, !tbaa !29
  %t388 = getelementptr { i64, [5 x i64] }, ptr %t386, i32 0, i32 1
  %t389 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t388, i32 0, i32 4
  %t390 = load { i64, ptr }, ptr %t389
  store { i64, ptr } %t390, ptr %l20, !tbaa !27
  br label %bb133
bb132:
  br label %bb151
bb133:
  %t392 = load i32, ptr %l19, !range !{i32 0, i32 3}
  %t394 = trunc i64 1 to i32
  %t395 = icmp eq i32 %t392, %t394
  br i1 %t395, label %bb134, label %bb135
bb134:
  store i1 true, ptr %l221, !tbaa !21
  br label %bb137
bb135:
  %t397 = load i32, ptr %l18, !range !{i32 0, i32 52}
  %t399 = call i1 @compiler_2fcheck_2eeffectOp(i32 %t397)
  store i1 %t399, ptr %l223
  br label %bb136
bb136:
  %t400 = load i1, ptr %l223, !tbaa !21
  store i1 %t400, ptr %l221, !tbaa !21
  br label %bb137
bb137:
  %t401 = load i1, ptr %l221, !tbaa !21
  br i1 %t401, label %bb138, label %bb139
bb138:
  store i1 true, ptr %rv
  br label %ret
bb139:
  br label %bb140
bb140:
  %t403 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t403, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t405 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t405, 0
  store i64 %t407, ptr %l23, !tbaa !24
  br label %bb141
bb141:
  %t409 = load i64, ptr %l22, !tbaa !24
  %t410 = load i64, ptr %l23, !tbaa !24
  %t413 = icmp slt i64 %t409, %t410
  %t415 = xor i1 %t413, true
  br i1 %t415, label %bb142, label %bb143
bb142:
  br label %bb150
bb143:
  br label %bb144
bb144:
  %t417 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t417, ptr %l232, !tbaa !27
  %t418 = load i64, ptr %l22, !tbaa !24
  %t420 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !27
  %t422 = getelementptr ptr, ptr %t421, i64 %t418
  %t423 = load ptr, ptr %t422, !tbaa !39
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t430 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t425, ptr %t423)
  store i1 %t430, ptr %l238
  br label %bb145
bb145:
  %t431 = load i1, ptr %l238, !tbaa !21
  br i1 %t431, label %bb146, label %bb147
bb146:
  store i1 true, ptr %rv
  br label %ret
bb147:
  br label %bb148
bb148:
  br label %bb149
bb149:
  %t433 = load i64, ptr %l22, !tbaa !24
  %t435 = add i64 %t433, 1
  store i64 %t435, ptr %l22, !tbaa !24
  br label %bb141
bb150:
  store i1 false, ptr %rv
  br label %ret
bb151:
  %t438 = load ptr, ptr %l1, !tbaa !29
  store ptr %t438, ptr %l243, !tbaa !29
  store i1 false, ptr %l244, !tbaa !21
  %t439 = load ptr, ptr %l243, !tbaa !29
  %t440 = icmp ne ptr %t439, null
  br i1 %t440, label %bb152, label %bb153
bb152:
  %t442 = load ptr, ptr %l243, !tbaa !29
  %t443 = load i64, ptr %t442, !range !{i64 0, i64 18}
  %t445 = icmp eq i64 %t443, 10
  store i1 %t445, ptr %l244, !tbaa !21
  br label %bb153
bb153:
  %t446 = load i1, ptr %l244, !tbaa !21
  br i1 %t446, label %bb154, label %bb155
bb154:
  %t447 = load ptr, ptr %l1, !tbaa !29
  %t449 = getelementptr { i64, [5 x i64] }, ptr %t447, i32 0, i32 1
  %t450 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t449, i32 0, i32 2
  %t451 = load ptr, ptr %t450
  store ptr %t451, ptr %l25, !tbaa !29
  br label %bb156
bb155:
  br label %bb169
bb156:
  %t453 = load ptr, ptr %l25, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Slice", ptr %t453, i32 0, i32 3
  %t456 = load i32, ptr %t455, !range !{i32 0, i32 3}
  %t458 = trunc i64 1 to i32
  %t459 = icmp eq i32 %t456, %t458
  br i1 %t459, label %bb157, label %bb158
bb157:
  store i1 true, ptr %l252, !tbaa !21
  br label %bb160
bb158:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load ptr, ptr %l25, !tbaa !29
  %t464 = getelementptr %"compiler/typed:Slice", ptr %t462, i32 0, i32 0
  %t465 = load ptr, ptr %t464, !tbaa !29
  %t468 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %t461, ptr %t465, i1 false)
  store i1 %t468, ptr %l256
  br label %bb159
bb159:
  %t469 = load i1, ptr %l256, !tbaa !21
  store i1 %t469, ptr %l252, !tbaa !21
  br label %bb160
bb160:
  %t470 = load i1, ptr %l252, !tbaa !21
  br i1 %t470, label %bb161, label %bb162
bb161:
  store i1 true, ptr %l257, !tbaa !21
  br label %bb164
bb162:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t472 = load ptr, ptr %l25, !tbaa !29
  %t474 = getelementptr %"compiler/typed:Slice", ptr %t472, i32 0, i32 1
  %t475 = load ptr, ptr %t474, !tbaa !29
  %t479 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t471, ptr %t475)
  store i1 %t479, ptr %l262
  br label %bb163
bb163:
  %t480 = load i1, ptr %l262, !tbaa !21
  store i1 %t480, ptr %l257, !tbaa !21
  br label %bb164
bb164:
  %t481 = load i1, ptr %l257, !tbaa !21
  br i1 %t481, label %bb165, label %bb166
bb165:
  store i1 true, ptr %l263, !tbaa !21
  br label %bb168
bb166:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load ptr, ptr %l25, !tbaa !29
  %t485 = getelementptr %"compiler/typed:Slice", ptr %t483, i32 0, i32 2
  %t486 = load ptr, ptr %t485, !tbaa !29
  %t490 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t482, ptr %t486)
  store i1 %t490, ptr %l268
  br label %bb167
bb167:
  %t491 = load i1, ptr %l268, !tbaa !21
  store i1 %t491, ptr %l263, !tbaa !21
  br label %bb168
bb168:
  %t492 = load i1, ptr %l263, !tbaa !21
  store i1 %t492, ptr %rv
  br label %ret
bb169:
  %t493 = load ptr, ptr %l1, !tbaa !29
  store ptr %t493, ptr %l269, !tbaa !29
  store i1 false, ptr %l270, !tbaa !21
  %t494 = load ptr, ptr %l269, !tbaa !29
  %t495 = icmp ne ptr %t494, null
  br i1 %t495, label %bb170, label %bb171
bb170:
  %t497 = load ptr, ptr %l269, !tbaa !29
  %t498 = load i64, ptr %t497, !range !{i64 0, i64 18}
  %t500 = icmp eq i64 %t498, 11
  store i1 %t500, ptr %l270, !tbaa !21
  br label %bb171
bb171:
  %t501 = load i1, ptr %l270, !tbaa !21
  br i1 %t501, label %bb172, label %bb173
bb172:
  %t502 = load ptr, ptr %l1, !tbaa !29
  %t504 = getelementptr { i64, [5 x i64] }, ptr %t502, i32 0, i32 1
  %t505 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t504, i32 0, i32 2
  %t506 = load ptr, ptr %t505
  store ptr %t506, ptr %l26, !tbaa !29
  br label %bb174
bb173:
  br label %bb184
bb174:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t509 = load ptr, ptr %l26, !tbaa !29
  %t511 = getelementptr %"compiler/typed:Cond", ptr %t509, i32 0, i32 0
  %t512 = load ptr, ptr %t511, !tbaa !29
  %t516 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t508, ptr %t512)
  store i1 %t516, ptr %l279
  br label %bb175
bb175:
  %t517 = load i1, ptr %l279, !tbaa !21
  br i1 %t517, label %bb176, label %bb177
bb176:
  store i1 true, ptr %l280, !tbaa !21
  br label %bb179
bb177:
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load ptr, ptr %l26, !tbaa !29
  %t521 = getelementptr %"compiler/typed:Cond", ptr %t519, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !29
  %t525 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t518, ptr %t522)
  store i1 %t525, ptr %l284
  br label %bb178
bb178:
  %t526 = load i1, ptr %l284, !tbaa !21
  store i1 %t526, ptr %l280, !tbaa !21
  br label %bb179
bb179:
  %t527 = load i1, ptr %l280, !tbaa !21
  br i1 %t527, label %bb180, label %bb181
bb180:
  store i1 true, ptr %l285, !tbaa !21
  br label %bb183
bb181:
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t529 = load ptr, ptr %l26, !tbaa !29
  %t531 = getelementptr %"compiler/typed:Cond", ptr %t529, i32 0, i32 2
  %t532 = load ptr, ptr %t531, !tbaa !29
  %t536 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t528, ptr %t532)
  store i1 %t536, ptr %l290
  br label %bb182
bb182:
  %t537 = load i1, ptr %l290, !tbaa !21
  store i1 %t537, ptr %l285, !tbaa !21
  br label %bb183
bb183:
  %t538 = load i1, ptr %l285, !tbaa !21
  store i1 %t538, ptr %rv
  br label %ret
bb184:
  %t539 = load ptr, ptr %l1, !tbaa !29
  store ptr %t539, ptr %l291, !tbaa !29
  store i1 false, ptr %l292, !tbaa !21
  %t540 = load ptr, ptr %l291, !tbaa !29
  %t541 = icmp ne ptr %t540, null
  br i1 %t541, label %bb185, label %bb186
bb185:
  %t543 = load ptr, ptr %l291, !tbaa !29
  %t544 = load i64, ptr %t543, !range !{i64 0, i64 18}
  %t546 = icmp eq i64 %t544, 12
  store i1 %t546, ptr %l292, !tbaa !21
  br label %bb186
bb186:
  %t547 = load i1, ptr %l292, !tbaa !21
  br i1 %t547, label %bb187, label %bb188
bb187:
  %t548 = load ptr, ptr %l1, !tbaa !29
  %t550 = getelementptr { i64, [5 x i64] }, ptr %t548, i32 0, i32 1
  %t551 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t550, i32 0, i32 2
  %t552 = load ptr, ptr %t551
  store ptr %t552, ptr %l27, !tbaa !29
  br label %bb189
bb188:
  br label %bb195
bb189:
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t555 = load ptr, ptr %l27, !tbaa !29
  %t557 = getelementptr %"compiler/typed:Seq", ptr %t555, i32 0, i32 0
  %t558 = load { i64, ptr }, ptr %t557, !tbaa !27
  %t561 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %t554, { i64, ptr } %t558)
  store i1 %t561, ptr %l300
  br label %bb190
bb190:
  %t562 = load i1, ptr %l300, !tbaa !21
  br i1 %t562, label %bb191, label %bb192
bb191:
  store i1 true, ptr %l301, !tbaa !21
  br label %bb194
bb192:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load ptr, ptr %l27, !tbaa !29
  %t566 = getelementptr %"compiler/typed:Seq", ptr %t564, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !29
  %t570 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t563, ptr %t567)
  store i1 %t570, ptr %l305
  br label %bb193
bb193:
  %t571 = load i1, ptr %l305, !tbaa !21
  store i1 %t571, ptr %l301, !tbaa !21
  br label %bb194
bb194:
  %t572 = load i1, ptr %l301, !tbaa !21
  store i1 %t572, ptr %rv
  br label %ret
bb195:
  %t573 = load ptr, ptr %l1, !tbaa !29
  store ptr %t573, ptr %l306, !tbaa !29
  store i1 false, ptr %l307, !tbaa !21
  %t574 = load ptr, ptr %l306, !tbaa !29
  %t575 = icmp ne ptr %t574, null
  br i1 %t575, label %bb196, label %bb197
bb196:
  %t577 = load ptr, ptr %l306, !tbaa !29
  %t578 = load i64, ptr %t577, !range !{i64 0, i64 18}
  %t580 = icmp eq i64 %t578, 13
  store i1 %t580, ptr %l307, !tbaa !21
  br label %bb197
bb197:
  %t581 = load i1, ptr %l307, !tbaa !21
  br i1 %t581, label %bb198, label %bb199
bb198:
  %t582 = load ptr, ptr %l1, !tbaa !29
  %t584 = getelementptr { i64, [5 x i64] }, ptr %t582, i32 0, i32 1
  %t585 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t584, i32 0, i32 2
  %t586 = load ptr, ptr %t585
  store ptr %t586, ptr %l28, !tbaa !29
  br label %bb200
bb199:
  br label %bb222
bb200:
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t589 = load ptr, ptr %l28, !tbaa !29
  %t591 = getelementptr %"compiler/typed:Match", ptr %t589, i32 0, i32 0
  %t592 = load { i64, ptr }, ptr %t591, !tbaa !27
  %t595 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %t588, { i64, ptr } %t592)
  store i1 %t595, ptr %l315
  br label %bb201
bb201:
  %t596 = load i1, ptr %l315, !tbaa !21
  br i1 %t596, label %bb202, label %bb203
bb202:
  store i1 true, ptr %rv
  br label %ret
bb203:
  br label %bb204
bb204:
  %t598 = load ptr, ptr %l28, !tbaa !29
  %t600 = getelementptr %"compiler/typed:Match", ptr %t598, i32 0, i32 1
  %t601 = load { i64, ptr }, ptr %t600, !tbaa !27
  store { i64, ptr } %t601, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t603 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t605 = extractvalue { i64, ptr } %t603, 0
  store i64 %t605, ptr %l31, !tbaa !24
  br label %bb205
bb205:
  %t607 = load i64, ptr %l30, !tbaa !24
  %t608 = load i64, ptr %l31, !tbaa !24
  %t611 = icmp slt i64 %t607, %t608
  %t613 = xor i1 %t611, true
  br i1 %t613, label %bb206, label %bb207
bb206:
  br label %bb214
bb207:
  br label %bb208
bb208:
  %t615 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t615, ptr %l325, !tbaa !27
  %t616 = load i64, ptr %l30, !tbaa !24
  %t618 = getelementptr { i64, ptr }, ptr %l325, i32 0, i32 1
  %t619 = load ptr, ptr %t618, !tbaa !27
  %t620 = getelementptr ptr, ptr %t619, i64 %t616
  %t621 = load ptr, ptr %t620, !tbaa !39
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t627 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffArm(ptr %v0, ptr %v1, ptr %t623, ptr %t621)
  store i1 %t627, ptr %l330
  br label %bb209
bb209:
  %t628 = load i1, ptr %l330, !tbaa !21
  br i1 %t628, label %bb210, label %bb211
bb210:
  store i1 true, ptr %rv
  br label %ret
bb211:
  br label %bb212
bb212:
  br label %bb213
bb213:
  %t630 = load i64, ptr %l30, !tbaa !24
  %t632 = add i64 %t630, 1
  store i64 %t632, ptr %l30, !tbaa !24
  br label %bb205
bb214:
  %t634 = load ptr, ptr %l28, !tbaa !29
  %t636 = getelementptr %"compiler/typed:Match", ptr %t634, i32 0, i32 2
  %t637 = load ptr, ptr %t636, !tbaa !29
  %t639 = icmp eq ptr %t637, null
  %t641 = xor i1 %t639, true
  br i1 %t641, label %bb215, label %bb216
bb215:
  %t643 = load ptr, ptr %l0, !tbaa !29
  store ptr %t643, ptr %l339, !tbaa !29
  %t644 = load ptr, ptr %l28, !tbaa !29
  %t646 = getelementptr %"compiler/typed:Match", ptr %t644, i32 0, i32 2
  %t647 = load ptr, ptr %t646, !tbaa !29
  %t649 = icmp eq ptr %t647, null
  br i1 %t649, label %bb217, label %bb218
bb216:
  store i1 false, ptr %l338, !tbaa !21
  br label %bb221
bb217:
  call void @__olang_check_failed(ptr @olang_loc_ad4dc9fe288360e2_6bae22496d237a26)
  unreachable
bb218:
  br label %bb219
bb219:
  %t651 = load ptr, ptr %l28, !tbaa !29
  %t653 = getelementptr %"compiler/typed:Match", ptr %t651, i32 0, i32 2
  %t654 = load ptr, ptr %t653, !tbaa !29
  %t655 = load ptr, ptr %l339, !tbaa !29
  %t657 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffArm(ptr %v0, ptr %v1, ptr %t655, ptr %t654)
  store i1 %t657, ptr %l345
  br label %bb220
bb220:
  %t658 = load i1, ptr %l345, !tbaa !21
  store i1 %t658, ptr %l338, !tbaa !21
  br label %bb221
bb221:
  %t659 = load i1, ptr %l338, !tbaa !21
  store i1 %t659, ptr %rv
  br label %ret
bb222:
  %t660 = load ptr, ptr %l1, !tbaa !29
  store ptr %t660, ptr %l346, !tbaa !29
  store i1 false, ptr %l347, !tbaa !21
  %t661 = load ptr, ptr %l346, !tbaa !29
  %t662 = icmp ne ptr %t661, null
  br i1 %t662, label %bb223, label %bb224
bb223:
  %t664 = load ptr, ptr %l346, !tbaa !29
  %t665 = load i64, ptr %t664, !range !{i64 0, i64 18}
  %t667 = icmp eq i64 %t665, 14
  store i1 %t667, ptr %l347, !tbaa !21
  br label %bb224
bb224:
  %t668 = load i1, ptr %l347, !tbaa !21
  br i1 %t668, label %bb225, label %bb226
bb225:
  %t669 = load ptr, ptr %l1, !tbaa !29
  %t671 = getelementptr { i64, [5 x i64] }, ptr %t669, i32 0, i32 1
  %t672 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t671, i32 0, i32 2
  %t673 = load ptr, ptr %t672
  store ptr %t673, ptr %l33, !tbaa !29
  br label %bb227
bb226:
  br label %bb255
bb227:
  %t675 = load ptr, ptr %l33, !tbaa !29
  %t677 = getelementptr %"compiler/typed:Try", ptr %t675, i32 0, i32 2
  %t678 = load i1, ptr %t677, !tbaa !21
  br i1 %t678, label %bb228, label %bb229
bb228:
  store i1 true, ptr %l354, !tbaa !21
  br label %bb231
bb229:
  %t680 = load ptr, ptr %l0, !tbaa !29
  %t681 = load ptr, ptr %l33, !tbaa !29
  %t683 = getelementptr %"compiler/typed:Try", ptr %t681, i32 0, i32 0
  %t684 = load ptr, ptr %t683, !tbaa !29
  %t687 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t680, ptr %t684)
  store i1 %t687, ptr %l358
  br label %bb230
bb230:
  %t688 = load i1, ptr %l358, !tbaa !21
  store i1 %t688, ptr %l354, !tbaa !21
  br label %bb231
bb231:
  %t689 = load i1, ptr %l354, !tbaa !21
  br i1 %t689, label %bb232, label %bb233
bb232:
  store i1 true, ptr %rv
  br label %ret
bb233:
  br label %bb234
bb234:
  %t691 = load ptr, ptr %l33, !tbaa !29
  %t693 = getelementptr %"compiler/typed:Try", ptr %t691, i32 0, i32 1
  %t694 = load { i64, ptr }, ptr %t693, !tbaa !27
  store { i64, ptr } %t694, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t696 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t696, 0
  store i64 %t698, ptr %l36, !tbaa !24
  br label %bb235
bb235:
  %t700 = load i64, ptr %l35, !tbaa !24
  %t701 = load i64, ptr %l36, !tbaa !24
  %t704 = icmp slt i64 %t700, %t701
  %t706 = xor i1 %t704, true
  br i1 %t706, label %bb236, label %bb237
bb236:
  br label %bb254
bb237:
  br label %bb238
bb238:
  %t708 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t708, ptr %l368, !tbaa !27
  %t709 = load i64, ptr %l35, !tbaa !24
  %t711 = getelementptr { i64, ptr }, ptr %l368, i32 0, i32 1
  %t712 = load ptr, ptr %t711, !tbaa !27
  %t713 = getelementptr ptr, ptr %t712, i64 %t709
  %t714 = load ptr, ptr %t713, !tbaa !39
  store ptr %t714, ptr %l37, !tbaa !29
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t717 = load ptr, ptr %l37, !tbaa !29
  %t719 = getelementptr %"compiler/typed:Clause", ptr %t717, i32 0, i32 3
  %t720 = load ptr, ptr %t719, !tbaa !29
  %t723 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %t716, ptr %t720)
  store i1 %t723, ptr %l374
  br label %bb239
bb239:
  %t724 = load i1, ptr %l374, !tbaa !21
  br i1 %t724, label %bb240, label %bb241
bb240:
  store i1 true, ptr %rv
  br label %ret
bb241:
  br label %bb242
bb242:
  %t726 = load ptr, ptr %l37, !tbaa !29
  %t728 = getelementptr %"compiler/typed:Clause", ptr %t726, i32 0, i32 4
  %t729 = load { i64, ptr }, ptr %t728, !tbaa !27
  store { i64, ptr } %t729, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t731 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t733 = extractvalue { i64, ptr } %t731, 0
  store i64 %t733, ptr %l40, !tbaa !24
  br label %bb243
bb243:
  %t735 = load i64, ptr %l39, !tbaa !24
  %t736 = load i64, ptr %l40, !tbaa !24
  %t739 = icmp slt i64 %t735, %t736
  %t741 = xor i1 %t739, true
  br i1 %t741, label %bb244, label %bb245
bb244:
  br label %bb252
bb245:
  br label %bb246
bb246:
  %t743 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t743, ptr %l384, !tbaa !27
  %t744 = load i64, ptr %l39, !tbaa !24
  %t746 = getelementptr { i64, ptr }, ptr %l384, i32 0, i32 1
  %t747 = load ptr, ptr %t746, !tbaa !27
  %t748 = getelementptr ptr, ptr %t747, i64 %t744
  %t749 = load ptr, ptr %t748, !tbaa !39
  %t751 = load ptr, ptr %l0, !tbaa !29
  %t756 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t751, ptr %t749)
  store i1 %t756, ptr %l390
  br label %bb247
bb247:
  %t757 = load i1, ptr %l390, !tbaa !21
  br i1 %t757, label %bb248, label %bb249
bb248:
  store i1 true, ptr %rv
  br label %ret
bb249:
  br label %bb250
bb250:
  br label %bb251
bb251:
  %t759 = load i64, ptr %l39, !tbaa !24
  %t761 = add i64 %t759, 1
  store i64 %t761, ptr %l39, !tbaa !24
  br label %bb243
bb252:
  br label %bb253
bb253:
  %t763 = load i64, ptr %l35, !tbaa !24
  %t765 = add i64 %t763, 1
  store i64 %t765, ptr %l35, !tbaa !24
  br label %bb235
bb254:
  store i1 false, ptr %rv
  br label %ret
bb255:
  %t768 = load ptr, ptr %l1, !tbaa !29
  store ptr %t768, ptr %l397, !tbaa !29
  store i1 false, ptr %l398, !tbaa !21
  %t769 = load ptr, ptr %l397, !tbaa !29
  %t770 = icmp ne ptr %t769, null
  br i1 %t770, label %bb256, label %bb257
bb256:
  %t772 = load ptr, ptr %l397, !tbaa !29
  %t773 = load i64, ptr %t772, !range !{i64 0, i64 18}
  %t775 = icmp eq i64 %t773, 17
  store i1 %t775, ptr %l398, !tbaa !21
  br label %bb257
bb257:
  %t776 = load i1, ptr %l398, !tbaa !21
  br i1 %t776, label %bb258, label %bb259
bb258:
  %t777 = load ptr, ptr %l1, !tbaa !29
  %t779 = getelementptr { i64, [5 x i64] }, ptr %t777, i32 0, i32 1
  %t780 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t779, i32 0, i32 2
  %t781 = load ptr, ptr %t780
  store ptr %t781, ptr %l42, !tbaa !29
  br label %bb260
bb259:
  br label %bb262
bb260:
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t784 = load ptr, ptr %l42, !tbaa !29
  %t788 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t783, ptr %t784)
  store i1 %t788, ptr %l406
  br label %bb261
bb261:
  %t789 = load i1, ptr %l406, !tbaa !21
  store i1 %t789, ptr %rv
  br label %ret
bb262:
  call void @__olang_check_failed(ptr @olang_loc_29ea0c7d0dcef6fa_322b22c08f06752e)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l26 = alloca i32
  %l30 = alloca %"compiler/typed:Block"
  %rv = alloca ptr
  %t59 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l3
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %t22, %"compiler/source:Span" %t23, ptr %t24)
  store ptr %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l16, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb19
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t31)
  store %"compiler/source:Span" %t33, ptr %l19
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l19
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t34, %"compiler/source:Span" %t35, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb12
bb12:
  store %"compiler/source:Span" %a1, ptr %l20
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t37)
  store ptr %t39, ptr %l22
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t42 = getelementptr %"compiler/check:frame", ptr %t40, i32 0, i32 7
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = trunc i64 %t43 to i32
  store i32 %t45, ptr %l26, !tbaa !23
  %t47 = icmp sge i64 0, 0
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t49 = icmp sle i64 0, 1152921504606846975
  br i1 %t49, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_823a266be2210958_13324b84b1c75d64)
  unreachable
bb16:
  %t51 = mul i64 0, 8
  %t52 = insertvalue { i64, ptr } undef, i64 0, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t54 = load i32, ptr %l26, !tbaa !23
  %t56 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v2, ptr %v2, i32 %t54, { i64, ptr } %t53)
  store %"compiler/typed:Block" %t56, ptr %l30
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_823a266be2210958_13324b84b1c75d64)
  unreachable
bb18:
  %t57 = load %"compiler/typed:Block", ptr %l30
  %t58 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t57, ptr %t58
  store { i64, [3 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [3 x i64] }, ptr %t59, i32 0, i32 0
  store i64 11, ptr %t60
  %t61 = load %"compiler/source:Span", ptr %l20
  %t62 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t61, 0
  %t64 = insertvalue { %"compiler/source:Span", ptr } %t62, ptr %t58, 1
  %t65 = getelementptr { i64, [3 x i64] }, ptr %t59, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t64, ptr %t65
  %t66 = load { i64, [3 x i64] }, ptr %t59
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t66, ptr %t68
  store ptr %t68, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1e005f55cee69fc6_5b8ec7c8c2bbfa8a)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca %"compiler/generic:Desc"
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i64
  %l27 = alloca i64
  %l33 = alloca i64
  %l39 = alloca i32
  %l42 = alloca i1
  %l50 = alloca %"compiler/generic:Desc"
  %l54 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 13
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i64 %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load i64, ptr %l15, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
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
  %t41 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFn(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store i64 %t41, ptr %l24
  br label %bb13
bb13:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %rv
  br label %ret
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_dd139b797ad07c59_48ae02fb28d54045)
  unreachable
bb19:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  store i64 %t47, ptr %l27
  br label %bb20
bb20:
  %t48 = load i64, ptr %l27, !tbaa !24
  store i64 %t48, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = icmp sge i64 %t49, 0
  br i1 %t51, label %bb21, label %bb22
bb21:
  %t53 = load i64, ptr %l4, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t59 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderNamed(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  store i64 %t59, ptr %l33
  br label %bb24
bb24:
  %t60 = load i64, ptr %l33, !tbaa !24
  store i64 %t60, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = icmp sge i64 %t61, 0
  br i1 %t63, label %bb25, label %bb26
bb25:
  %t65 = load i64, ptr %l4, !tbaa !24
  store i64 %t65, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t71 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  store i32 %t71, ptr %l39
  br label %bb28
bb28:
  %t72 = load i32, ptr %l39, !tbaa !23
  store i32 %t72, ptr %l5, !tbaa !23
  %t73 = load i32, ptr %l5, !tbaa !23
  %t75 = icmp slt i32 %t73, 0
  br i1 %t75, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb31
bb30:
  %t77 = load i32, ptr %l5, !tbaa !23
  %t78 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t81 = icmp eq i32 %t77, %t78
  store i1 %t81, ptr %l42, !tbaa !21
  br label %bb31
bb31:
  %t83 = load i1, ptr %l42, !tbaa !21
  br i1 %t83, label %bb32, label %bb33
bb32:
  store i64 -1, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = load i32, ptr %l5, !tbaa !23
  %t92 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t88, i32 %t89)
  store %"compiler/generic:Desc" %t92, ptr %l50
  br label %bb35
bb35:
  %t93 = load %"compiler/generic:Desc", ptr %l50
  store %"compiler/generic:Desc" %t93, ptr %l6
  %t94 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t96 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  br i1 %t99, label %bb36, label %bb37
bb36:
  %t101 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 2
  %t102 = load i64, ptr %t101, !tbaa !24
  store i64 %t102, ptr %l54, !tbaa !24
  br label %bb38
bb37:
  store i64 -1, ptr %l54, !tbaa !24
  br label %bb38
bb38:
  %t104 = load i64, ptr %l54, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efirstValueType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i1
  %l16 = alloca i32
  %l19 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i1
  %l39 = alloca i32
  %l41 = alloca i1
  %l44 = alloca i1
  %l47 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i32
  %l56 = alloca i1
  %l59 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %a2)
  store i32 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load i32, ptr %l7, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l4, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i1, ptr %l10, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb6
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l16
  br label %bb5
bb5:
  %t22 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t24 = trunc i64 21 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t30 = call i1 @compiler_2fcheck_2enullValue(ptr %v1, ptr %a1)
  store i1 %t30, ptr %l21
  br label %bb9
bb8:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb9:
  %t31 = load i1, ptr %l21, !tbaa !21
  store i1 %t31, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l4, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l26
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t43 = load i32, ptr %l26, !tbaa !23
  store i32 %t43, ptr %l4, !tbaa !23
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l4, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l31
  br label %bb15
bb15:
  %t54 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t56 = trunc i64 19 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l4, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l39
  br label %bb18
bb17:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb19
bb18:
  %t69 = load i32, ptr %l39, !tbaa !23
  %t70 = icmp ne i32 %t69, 0
  store i1 %t70, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l34, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t77 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitArray(ptr %v0, ptr %v3, ptr %t73, ptr %a3)
  store i1 %t77, ptr %l44
  br label %bb22
bb21:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb23
bb22:
  %t78 = load i1, ptr %l44, !tbaa !21
  store i1 %t78, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t79 = load i1, ptr %l41, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  store ptr %t85, ptr %l47, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l4, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l52
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t96 = load ptr, ptr %l47, !tbaa !29
  %t97 = load i32, ptr %l52, !tbaa !23
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t96, i32 %t97, i32 0)
  store i32 %t98, ptr %l53
  br label %bb27
bb27:
  %t99 = load i32, ptr %l53, !tbaa !23
  store i32 %t99, ptr %l4, !tbaa !23
  br label %bb28
bb28:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l4, !tbaa !23
  %t104 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t100, i32 %t101)
  store i1 %t104, ptr %l56
  br label %bb29
bb29:
  %t105 = load i1, ptr %l56, !tbaa !21
  br i1 %t105, label %bb30, label %bb31
bb30:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l4, !tbaa !23
  %t110 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l59
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t111 = load i32, ptr %l59, !tbaa !23
  store i32 %t111, ptr %l4, !tbaa !23
  br label %bb33
bb33:
  %t112 = load i32, ptr %l4, !tbaa !23
  store i32 %t112, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/generic:Origin"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca ptr
  %l23 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l41 = alloca ptr
  %l46 = alloca i64
  %l51 = alloca i1
  %l55 = alloca i64
  %l59 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l67 = alloca { i64, ptr }
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca i1
  %l80 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l89 = alloca { i64, ptr }
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %l94 = alloca ptr
  %l96 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l127 = alloca { i64, ptr }
  %l135 = alloca i64
  %l138 = alloca i1
  %l143 = alloca i64
  %l146 = alloca i32
  %l151 = alloca i32
  %l156 = alloca i1
  %l160 = alloca ptr
  %l162 = alloca ptr
  %l163 = alloca i64
  %l164 = alloca i32
  %l167 = alloca { i64, [3 x i64] }
  %l168 = alloca i1
  %l171 = alloca ptr
  %l174 = alloca i1
  %l178 = alloca i1
  %l183 = alloca ptr
  %l187 = alloca i32
  %l192 = alloca ptr
  %l195 = alloca %"compiler/generic:Origin"
  %l200 = alloca i64
  %l206 = alloca i1
  %l207 = alloca ptr
  %l211 = alloca i32
  %l213 = alloca i1
  %l217 = alloca ptr
  %l220 = alloca i64
  %l224 = alloca i32
  %l227 = alloca i1
  %l230 = alloca ptr
  %l235 = alloca i32
  %l240 = alloca i32
  %l243 = alloca i32
  %l248 = alloca i32
  %l249 = alloca i32
  %l251 = alloca ptr
  %l252 = alloca i64
  %l255 = alloca { i64, [3 x i64] }
  %l256 = alloca i64
  %l258 = alloca ptr
  %l262 = alloca ptr
  %l265 = alloca { i64, ptr }
  %l268 = alloca %"compiler/check:roFn"
  %l272 = alloca ptr
  %l276 = alloca i1
  %l280 = alloca i64
  %l283 = alloca ptr
  %l288 = alloca i32
  %l289 = alloca { i64, ptr }
  %l294 = alloca ptr
  %l295 = alloca i32
  %l300 = alloca i64
  %l301 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t633 = alloca { i64, [4 x i64] }, align 8
  %t641 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 0, ptr %l4, !tbaa !23
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t8, i64 %t9)
  store i1 %t12, ptr %l27
  br label %bb3
bb2:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i1, ptr %l27, !tbaa !21
  %t14 = xor i1 %t13, true
  store i1 %t14, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l23, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l31, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t21)
  store i64 %t23, ptr %l33
  br label %bb7
bb6:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb9
bb7:
  %t24 = load ptr, ptr %l31, !tbaa !29
  %t25 = load i64, ptr %l33, !tbaa !24
  %t26 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t24, i64 %t25)
  store i64 %t26, ptr %l34
  br label %bb8
bb8:
  %t27 = load i64, ptr %l34, !tbaa !24
  %t28 = icmp sgt i64 %t27, 0
  store i1 %t28, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l29, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t31)
  store i64 %t33, ptr %l37
  br label %bb12
bb11:
  br label %bb77
bb12:
  %t34 = load i64, ptr %l37, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store ptr %t42, ptr %l41
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l41, !tbaa !29
  store ptr %t43, ptr %l6, !tbaa !29
  %t44 = load ptr, ptr %l6, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Func", ptr %t44, i32 0, i32 5
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = getelementptr %"compiler/ast:Func", ptr %t53, i32 0, i32 5
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l46, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb16
bb16:
  %t60 = load i64, ptr %l46, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l6, !tbaa !29
  %t63 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t61)
  store i1 %t63, ptr %l51
  br label %bb17
bb17:
  %t64 = load i1, ptr %l51, !tbaa !21
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l55
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t73 = load i64, ptr %l55, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t78 = load i64, ptr %l5, !tbaa !24
  %t81 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t77, i64 %t78)
  store i64 %t81, ptr %l59
  br label %bb22
bb22:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr %l59, !tbaa !24
  %t85 = icmp sgt i64 %t83, %t82
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l62, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t88, ptr %l63
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t92 = getelementptr %"compiler/ast:Func", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %t92, !tbaa !23
  %t96 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t89, i32 %t93)
  store { i64, ptr } %t96, ptr %l67
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t97 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t98 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthsNotAValue(ptr %v0, ptr %v0, { i64, ptr } %t97)
  store %"compiler/diagmsg:Msg" %t98, ptr %l68
  br label %bb26
bb26:
  %t99 = load ptr, ptr %l62, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l63
  %t101 = load %"compiler/diagmsg:Msg", ptr %l68
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t99, %"compiler/source:Span" %t100, %"compiler/diagmsg:Msg" %t101)
  store i64 %t102, ptr %l69
  br label %bb27
bb27:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l1
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t103, %"compiler/source:Span" %t104)
  store ptr %t107, ptr %l72
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t108 = load ptr, ptr %l72, !tbaa !29
  store ptr %t108, ptr %rv
  br label %ret
bb29:
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = icmp eq i64 %t111, 0
  br i1 %t113, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb33
bb31:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load i64, ptr %l5, !tbaa !24
  %t122 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l80
  br label %bb32
bb32:
  %t123 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = load i64, ptr %l80, !tbaa !24
  %t128 = icmp ne i64 %t126, %t125
  store i1 %t128, ptr %l76, !tbaa !21
  br label %bb33
bb33:
  %t130 = load i1, ptr %l76, !tbaa !21
  br i1 %t130, label %bb34, label %bb35
bb34:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l84, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t132, ptr %l85
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l6, !tbaa !29
  %t136 = getelementptr %"compiler/ast:Func", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %t136, !tbaa !23
  %t140 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t133, i32 %t137)
  store { i64, ptr } %t140, ptr %l89
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t141 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t142 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotAValue(ptr %v0, ptr %v0, { i64, ptr } %t141)
  store %"compiler/diagmsg:Msg" %t142, ptr %l90
  br label %bb37
bb37:
  %t143 = load ptr, ptr %l84, !tbaa !29
  %t144 = load %"compiler/source:Span", ptr %l85
  %t145 = load %"compiler/diagmsg:Msg", ptr %l90
  %t146 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t143, %"compiler/source:Span" %t144, %"compiler/diagmsg:Msg" %t145)
  store i64 %t146, ptr %l91
  br label %bb38
bb38:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l1
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t147, %"compiler/source:Span" %t148)
  store ptr %t151, ptr %l94
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t152 = load ptr, ptr %l94, !tbaa !29
  store ptr %t152, ptr %rv
  br label %ret
bb40:
  %t153 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  store i64 %t155, ptr %l96, !tbaa !24
  %t156 = load i64, ptr %l96, !tbaa !24
  %t157 = icmp sge i64 %t156, 0
  br i1 %t157, label %bb41, label %bb42
bb41:
  %t159 = load i64, ptr %l96, !tbaa !24
  %t160 = icmp sle i64 %t159, 2305843009213693951
  br i1 %t160, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_de04a3fa462e2701_a46741d0a252ba9d)
  unreachable
bb43:
  %t162 = load i64, ptr %l96, !tbaa !24
  %t163 = mul i64 %t162, 4
  %t164 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  store i64 %t170, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t172 = load i64, ptr %l10, !tbaa !24
  %t173 = load i64, ptr %l9, !tbaa !24
  %t176 = icmp sgt i64 %t172, %t173
  br i1 %t176, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_de04a3fa462e2701_a46741d0a252ba9d)
  unreachable
bb45:
  %t178 = load i64, ptr %l11, !tbaa !24
  %t180 = icmp sgt i64 %t178, 0
  br i1 %t180, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb50
bb47:
  %t182 = load i64, ptr %l10, !tbaa !24
  %t183 = load i64, ptr %l9, !tbaa !24
  %t186 = sub i64 %t182, %t183
  %t187 = load i64, ptr %l11, !tbaa !24
  %t190 = add i64 %t186, %t187
  %t192 = sub i64 %t190, 1
  %t193 = load i64, ptr %l11, !tbaa !24
  %t196 = sdiv i64 %t192, %t193
  store i64 %t196, ptr %l108, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb49
bb49:
  %t198 = load i64, ptr %l108, !tbaa !24
  store i64 %t198, ptr %l105, !tbaa !24
  br label %bb50
bb50:
  %t199 = load i64, ptr %l105, !tbaa !24
  store i64 %t199, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb51
bb51:
  %t200 = load i64, ptr %l13, !tbaa !24
  %t201 = load i64, ptr %l12, !tbaa !24
  %t204 = icmp slt i64 %t200, %t201
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb52, label %bb53
bb52:
  br label %bb56
bb53:
  br label %bb54
bb54:
  %t208 = load i64, ptr %l9, !tbaa !24
  %t209 = load i64, ptr %l13, !tbaa !24
  %t210 = load i64, ptr %l11, !tbaa !24
  %t213 = mul i64 %t209, %t210
  %t216 = add i64 %t208, %t213
  store i64 %t216, ptr %l14, !tbaa !24
  %t218 = load i64, ptr %l14, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t219, ptr %l127, !tbaa !27
  %t220 = load i64, ptr %l14, !tbaa !24
  %t222 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr i32, ptr %t223, i64 %t220
  %t225 = load i32, ptr %t224, !tbaa !33
  %t228 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr i32, ptr %t229, i64 %t218
  store i32 %t225, ptr %t230, !tbaa !33
  br label %bb55
bb55:
  %t231 = load i64, ptr %l13, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l13, !tbaa !24
  br label %bb51
bb56:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/check:Checker", ptr %t235, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t239 = load i64, ptr %l2, !tbaa !24
  %t242 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %t238, i64 %t239)
  store i64 %t242, ptr %l135
  br label %bb57
bb57:
  %t243 = load i64, ptr %l135, !tbaa !24
  store i64 %t243, ptr %l15, !tbaa !24
  %t244 = load i64, ptr %l15, !tbaa !24
  %t246 = icmp sge i64 %t244, 0
  br i1 %t246, label %bb58, label %bb59
bb58:
  %t248 = load i64, ptr %l15, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t248
  %t253 = load i32, ptr %t252, !tbaa !33
  %t254 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t257 = icmp eq i32 %t253, %t254
  store i1 %t257, ptr %l138, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb60
bb60:
  %t259 = load i1, ptr %l138, !tbaa !21
  br i1 %t259, label %bb61, label %bb62
bb61:
  %t260 = load i64, ptr %l15, !tbaa !24
  store i64 %t260, ptr %l143, !tbaa !24
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/check:Checker", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t264, i32 0)
  store i32 %t266, ptr %l146
  br label %bb63
bb62:
  br label %bb64
bb63:
  %t267 = load i32, ptr %l146, !tbaa !23
  %t268 = load i64, ptr %l143, !tbaa !24
  %t269 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr i32, ptr %t270, i64 %t268
  store i32 %t267, ptr %t271, !tbaa !33
  br label %bb64
bb64:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 2
  %t278 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t281 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s1, ptr %t277, { i64, ptr } %t278)
  store i32 %t281, ptr %l151
  br label %bb65
bb65:
  %t282 = load i32, ptr %l151, !tbaa !23
  store i32 %t282, ptr %l4, !tbaa !23
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load i64, ptr %l5, !tbaa !24
  %t285 = load i32, ptr %l4, !tbaa !23
  %t286 = load %"compiler/source:Span", ptr %l1
  %t291 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %t283, i64 %t284, i32 %t285, %"compiler/source:Span" %t286)
  store i1 %t291, ptr %l156
  br label %bb66
bb66:
  %t292 = load i1, ptr %l156, !tbaa !21
  %t293 = xor i1 %t292, true
  br i1 %t293, label %bb67, label %bb68
bb67:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load %"compiler/source:Span", ptr %l1
  %t299 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t295, %"compiler/source:Span" %t296)
  store ptr %t299, ptr %l160
  br label %bb69
bb68:
  br label %bb70
bb69:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t300 = load ptr, ptr %l160, !tbaa !29
  store ptr %t300, ptr %rv
  br label %ret
bb70:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/check:Checker", ptr %t301, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !29
  store ptr %t304, ptr %l162, !tbaa !29
  %t305 = load i64, ptr %l2, !tbaa !24
  store i64 %t305, ptr %l163, !tbaa !24
  %t306 = load i32, ptr %l4, !tbaa !23
  store i32 %t306, ptr %l164, !tbaa !23
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i64, ptr %l2, !tbaa !24
  %t311 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnNameAt(ptr %v0, ptr %t307, i64 %t308)
  store { i64, [3 x i64] } %t311, ptr %l167
  br label %bb71
bb71:
  %t312 = load ptr, ptr %l162, !tbaa !29
  %t313 = load i64, ptr %l163, !tbaa !24
  %t314 = load i32, ptr %l164, !tbaa !23
  %t315 = load { i64, [3 x i64] }, ptr %l167
  %t316 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnTooDeep(ptr %v0, ptr %t312, i64 %t313, i32 %t314, { i64, [3 x i64] } %t315)
  store i1 %t316, ptr %l168
  br label %bb72
bb72:
  %t317 = load i1, ptr %l168, !tbaa !21
  br i1 %t317, label %bb73, label %bb74
bb73:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load %"compiler/source:Span", ptr %l1
  %t322 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t318, %"compiler/source:Span" %t319)
  store ptr %t322, ptr %l171
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t323 = load ptr, ptr %l171, !tbaa !29
  store ptr %t323, ptr %rv
  br label %ret
bb76:
  call void @__olang_scope_close(ptr %s1)
  br label %bb77
bb77:
  %t324 = load i64, ptr %l2, !tbaa !24
  %t326 = icmp slt i64 %t324, 0
  br i1 %t326, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb81
bb79:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/check:Checker", ptr %t328, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t332 = load i64, ptr %l2, !tbaa !24
  %t335 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t331, i64 %t332)
  store i1 %t335, ptr %l178
  br label %bb80
bb80:
  %t336 = load i1, ptr %l178, !tbaa !21
  store i1 %t336, ptr %l174, !tbaa !21
  br label %bb81
bb81:
  %t337 = load i1, ptr %l174, !tbaa !21
  br i1 %t337, label %bb82, label %bb83
bb82:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t338, %"compiler/source:Span" %t339, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb84
bb83:
  br label %bb86
bb84:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l1
  %t346 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t342, %"compiler/source:Span" %t343)
  store ptr %t346, ptr %l183
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  %t347 = load ptr, ptr %l183, !tbaa !29
  store ptr %t347, ptr %rv
  br label %ret
bb86:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/check:Checker", ptr %t348, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !29
  %t352 = load i64, ptr %l2, !tbaa !24
  %t355 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t351, i64 %t352)
  store i32 %t355, ptr %l187
  br label %bb87
bb87:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/check:Checker", ptr %t356, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t361 = getelementptr %"compiler/generic:Program", ptr %t359, i32 0, i32 51
  %t362 = load %"compiler/generic:Origin", ptr %t361
  store %"compiler/generic:Origin" %t362, ptr %l16
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  store ptr %t367, ptr %l192, !tbaa !29
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load %"compiler/source:Span", ptr %l1
  %t372 = call %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %t368, %"compiler/source:Span" %t369)
  store %"compiler/generic:Origin" %t372, ptr %l195
  br label %bb88
bb88:
  %t373 = load %"compiler/generic:Origin", ptr %l195
  %t374 = load ptr, ptr %l192, !tbaa !29
  %t375 = getelementptr %"compiler/generic:Program", ptr %t374, i32 0, i32 51
  store %"compiler/generic:Origin" %t373, ptr %t375
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/check:Checker", ptr %t376, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !29
  %t380 = load i64, ptr %l2, !tbaa !24
  %t381 = load i32, ptr %l4, !tbaa !23
  %t385 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t379, i64 %t380, i32 %t381)
  store i64 %t385, ptr %l200
  br label %bb89
bb89:
  %t386 = load i64, ptr %l200, !tbaa !24
  store i64 %t386, ptr %l17, !tbaa !24
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = getelementptr %"compiler/check:Checker", ptr %t387, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !29
  %t391 = load %"compiler/generic:Origin", ptr %l16
  %t394 = getelementptr %"compiler/generic:Program", ptr %t390, i32 0, i32 51
  store %"compiler/generic:Origin" %t391, ptr %t394
  %t395 = load i32, ptr %l4, !tbaa !23
  %t397 = icmp ne i32 %t395, 0
  br i1 %t397, label %bb90, label %bb91
bb90:
  %t399 = load ptr, ptr %l0, !tbaa !29
  store ptr %t399, ptr %l207, !tbaa !29
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/check:Checker", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t404 = load i64, ptr %l17, !tbaa !24
  %t407 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t403, i64 %t404)
  store i32 %t407, ptr %l211
  br label %bb92
bb91:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb94
bb92:
  %t408 = load %"compiler/source:Span", ptr %l1
  %t409 = load ptr, ptr %l207, !tbaa !29
  %t410 = load i32, ptr %l211, !tbaa !23
  %t412 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t409, i32 %t410, %"compiler/source:Span" %t408)
  store i1 %t412, ptr %l213
  br label %bb93
bb93:
  %t413 = load i1, ptr %l213, !tbaa !21
  %t414 = xor i1 %t413, true
  store i1 %t414, ptr %l206, !tbaa !21
  br label %bb94
bb94:
  %t416 = load i1, ptr %l206, !tbaa !21
  br i1 %t416, label %bb95, label %bb96
bb95:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load %"compiler/source:Span", ptr %l1
  %t421 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t417, %"compiler/source:Span" %t418)
  store ptr %t421, ptr %l217
  br label %bb97
bb96:
  br label %bb98
bb97:
  call void @__olang_scope_close(ptr %s0)
  %t422 = load ptr, ptr %l217, !tbaa !29
  store ptr %t422, ptr %rv
  br label %ret
bb98:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load i64, ptr %l17, !tbaa !24
  %t427 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t423, i64 %t424)
  store i64 %t427, ptr %l220
  br label %bb99
bb99:
  %t428 = load i64, ptr %l220, !tbaa !24
  store i64 %t428, ptr %l18, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/check:Checker", ptr %t429, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !29
  %t433 = load i64, ptr %l17, !tbaa !24
  %t436 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t432, i64 %t433)
  store i32 %t436, ptr %l224
  br label %bb100
bb100:
  %t437 = load i32, ptr %l224, !tbaa !23
  store i32 %t437, ptr %l19, !tbaa !23
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load i32, ptr %l19, !tbaa !23
  %t442 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t438, i32 %t439)
  store i1 %t442, ptr %l227
  br label %bb101
bb101:
  %t443 = load i1, ptr %l227, !tbaa !21
  br i1 %t443, label %bb102, label %bb103
bb102:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/check:Checker", ptr %t444, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !29
  %t449 = getelementptr %"compiler/generic:Program", ptr %t447, i32 0, i32 2
  store ptr %t449, ptr %l230, !tbaa !29
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/check:Checker", ptr %t450, i32 0, i32 1
  %t453 = load ptr, ptr %t452, !tbaa !29
  %t455 = getelementptr %"compiler/generic:Program", ptr %t453, i32 0, i32 2
  %t456 = load i32, ptr %l19, !tbaa !23
  %t459 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t455, i32 %t456)
  store i32 %t459, ptr %l235
  br label %bb104
bb103:
  br label %bb109
bb104:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/check:Checker", ptr %t460, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !29
  %t465 = getelementptr %"compiler/generic:Program", ptr %t463, i32 0, i32 2
  %t466 = load i32, ptr %l19, !tbaa !23
  %t469 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t465, i32 %t466)
  store i32 %t469, ptr %l240
  br label %bb105
bb105:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i64, ptr %l18, !tbaa !24
  %t474 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t470, i64 %t471)
  store i32 %t474, ptr %l243
  br label %bb106
bb106:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/check:Checker", ptr %t475, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !29
  %t480 = getelementptr %"compiler/generic:Program", ptr %t478, i32 0, i32 2
  %t481 = load i32, ptr %l19, !tbaa !23
  %t484 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t480, i32 %t481)
  store i32 %t484, ptr %l248
  br label %bb107
bb107:
  %t485 = load ptr, ptr %l230, !tbaa !29
  %t486 = load i32, ptr %l235, !tbaa !23
  %t487 = load i32, ptr %l240, !tbaa !23
  %t488 = load i32, ptr %l243, !tbaa !23
  %t489 = load i32, ptr %l248, !tbaa !23
  %t490 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t485, i32 %t486, i32 %t487, i32 %t488, i32 %t489, i64 0, i1 false, i32 0, i64 0)
  store i32 %t490, ptr %l249
  br label %bb108
bb108:
  %t491 = load i32, ptr %l249, !tbaa !23
  store i32 %t491, ptr %l19, !tbaa !23
  br label %bb109
bb109:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t494 = getelementptr %"compiler/check:Checker", ptr %t492, i32 0, i32 86
  store ptr %t494, ptr %l251, !tbaa !29
  %t495 = load i64, ptr %l18, !tbaa !24
  store i64 %t495, ptr %l252, !tbaa !24
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load %"compiler/source:Span", ptr %l1
  %t500 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t496, %"compiler/source:Span" %t497)
  store { i64, [3 x i64] } %t500, ptr %l255
  br label %bb110
bb110:
  %t501 = ptrtoint ptr %v0 to i64
  store i64 %t501, ptr %l256, !tbaa !24
  %t502 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aroFn_2e3
  br i1 %t502, label %bb111, label %bb112
bb111:
  %t504 = call ptr @__olang_region_make(ptr %v0)
  %t505 = ptrtoint ptr %t504 to i64
  store i64 %t505, ptr %l256, !tbaa !24
  br label %bb112
bb112:
  %t506 = load ptr, ptr %l0, !tbaa !29
  store ptr %t506, ptr %l258, !tbaa !29
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/check:Checker", ptr %t507, i32 0, i32 1
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t511 = load i64, ptr %l2, !tbaa !24
  %t514 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t510, i64 %t511)
  store ptr %t514, ptr %l262
  br label %bb113
bb113:
  %t515 = load ptr, ptr %l262, !tbaa !29
  %t517 = getelementptr %"compiler/ast:Func", ptr %t515, i32 0, i32 2
  %t518 = load i32, ptr %t517, !tbaa !23
  %t519 = load ptr, ptr %l258, !tbaa !29
  %t521 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t519, i32 %t518)
  store { i64, ptr } %t521, ptr %l265
  br label %bb114
bb114:
  %t522 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t524 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t525 = extractvalue { i64, ptr } %t524, 1
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t527 = add i64 %t523, %t526
  %t528 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t529 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t530 = add i64 %t527, %t529
  %t531 = load i64, ptr %l256
  %t532 = inttoptr i64 %t531 to ptr
  %t533 = call ptr @__olang_scope_alloc(ptr %t532, i64 %t530)
  call void @olang_textcopy(ptr %t533, ptr %t522, i64 %t523)
  %t534 = getelementptr i8, ptr %t533, i64 %t523
  call void @olang_textcopy(ptr %t534, ptr %t525, i64 %t526)
  %t535 = getelementptr i8, ptr %t534, i64 %t526
  call void @olang_textcopy(ptr %t535, ptr %t528, i64 %t529)
  %t536 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t537 = insertvalue { i64, ptr } %t536, ptr %t533, 1
  %t539 = load i64, ptr %l256
  %t540 = inttoptr i64 %t539 to ptr
  %t541 = extractvalue { i64, ptr } %t537, 0
  %t542 = extractvalue { i64, ptr } %t537, 1
  %t543 = mul i64 %t541, 1
  %t544 = call ptr @__olang_scope_alloc(ptr %t540, i64 %t543)
  call void @llvm.memcpy.p0.p0.i64(ptr %t544, ptr %t542, i64 %t543, i1 false)
  %t545 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t544, 1
  %t547 = load i64, ptr %l252, !tbaa !24
  %t548 = load { i64, [3 x i64] }, ptr %l255
  %t550 = call %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v0, i64 %t547, i64 0, { i64, [3 x i64] } %t548, { i64, ptr } %t546)
  store %"compiler/check:roFn" %t550, ptr %l268
  br label %bb115
bb115:
  %t551 = load ptr, ptr %l251, !tbaa !29
  %t552 = load %"compiler/check:roFn", ptr %l268
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t551, %"compiler/check:roFn" %t552)
  br label %bb116
bb116:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t555 = getelementptr %"compiler/check:Checker", ptr %t553, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !29
  %t557 = load i64, ptr %l2, !tbaa !24
  %t560 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t556, i64 %t557)
  store ptr %t560, ptr %l272
  br label %bb117
bb117:
  %t561 = load ptr, ptr %l272, !tbaa !29
  store ptr %t561, ptr %l20, !tbaa !29
  %t562 = load ptr, ptr %l20, !tbaa !29
  %t564 = getelementptr %"compiler/ast:Func", ptr %t562, i32 0, i32 1
  %t565 = load ptr, ptr %t564, !tbaa !29
  %t567 = icmp eq ptr %t565, null
  br i1 %t567, label %bb118, label %bb119
bb118:
  %t569 = load ptr, ptr %l20, !tbaa !29
  %t571 = getelementptr %"compiler/ast:Func", ptr %t569, i32 0, i32 3
  %t572 = load ptr, ptr %t571, !tbaa !29
  %t574 = getelementptr %"compiler/ast:Sig", ptr %t572, i32 0, i32 0
  %t575 = load { i64, ptr }, ptr %t574, !tbaa !27
  %t577 = extractvalue { i64, ptr } %t575, 0
  store i64 %t577, ptr %l280, !tbaa !24
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/check:Checker", ptr %t578, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !29
  %t583 = getelementptr %"compiler/generic:Program", ptr %t581, i32 0, i32 2
  store ptr %t583, ptr %l283, !tbaa !29
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t586 = getelementptr %"compiler/check:Checker", ptr %t584, i32 0, i32 1
  %t587 = load ptr, ptr %t586, !tbaa !29
  %t589 = getelementptr %"compiler/generic:Program", ptr %t587, i32 0, i32 2
  %t590 = load i32, ptr %l19, !tbaa !23
  %t593 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t589, i32 %t590)
  store i32 %t593, ptr %l288
  br label %bb120
bb119:
  store i1 false, ptr %l276, !tbaa !21
  br label %bb122
bb120:
  %t594 = load ptr, ptr %l283, !tbaa !29
  %t595 = load i32, ptr %l288, !tbaa !23
  %t596 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t594, i32 %t595)
  store { i64, ptr } %t596, ptr %l289
  br label %bb121
bb121:
  %t597 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t597, 0
  %t599 = load i64, ptr %l280, !tbaa !24
  %t601 = icmp eq i64 %t599, %t598
  store i1 %t601, ptr %l276, !tbaa !21
  br label %bb122
bb122:
  %t603 = load i1, ptr %l276, !tbaa !21
  br i1 %t603, label %bb123, label %bb124
bb123:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/check:Checker", ptr %t604, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !29
  %t609 = getelementptr %"compiler/generic:Program", ptr %t607, i32 0, i32 2
  store ptr %t609, ptr %l294, !tbaa !29
  %t610 = load i32, ptr %l19, !tbaa !23
  store i32 %t610, ptr %l295, !tbaa !23
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t613 = getelementptr %"compiler/check:Checker", ptr %t611, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !29
  %t615 = load ptr, ptr %l20, !tbaa !29
  %t617 = getelementptr %"compiler/ast:Func", ptr %t615, i32 0, i32 3
  %t618 = load ptr, ptr %t617, !tbaa !29
  %t621 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v0, ptr %t614, ptr %t618)
  store i64 %t621, ptr %l300
  br label %bb125
bb124:
  br label %bb127
bb125:
  %t622 = load ptr, ptr %l294, !tbaa !29
  %t623 = load i32, ptr %l295, !tbaa !23
  %t624 = load i64, ptr %l300, !tbaa !24
  %t625 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t622, i32 %t623, i64 %t624)
  store i32 %t625, ptr %l301
  br label %bb126
bb126:
  %t626 = load i32, ptr %l301, !tbaa !23
  store i32 %t626, ptr %l19, !tbaa !23
  br label %bb127
bb127:
  %t627 = load %"compiler/source:Span", ptr %l1
  %t628 = load i32, ptr %l19, !tbaa !23
  %t629 = load i64, ptr %l18, !tbaa !24
  %t631 = trunc i64 %t629 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t633
  %t634 = getelementptr { i64, [4 x i64] }, ptr %t633, i32 0, i32 0
  store i64 0, ptr %t634
  %t636 = insertvalue { i32 } undef, i32 %t631, 0
  %t637 = getelementptr { i64, [4 x i64] }, ptr %t633, i32 0, i32 1
  store { i32 } %t636, ptr %t637
  %t638 = load { i64, [4 x i64] }, ptr %t633
  %t640 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t638, ptr %t640
  store { i64, [5 x i64] } zeroinitializer, ptr %t641
  %t642 = getelementptr { i64, [5 x i64] }, ptr %t641, i32 0, i32 0
  store i64 15, ptr %t642
  %t644 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t627, 0
  %t646 = insertvalue { %"compiler/source:Span", i32, ptr } %t644, i32 %t628, 1
  %t648 = insertvalue { %"compiler/source:Span", i32, ptr } %t646, ptr %t640, 2
  %t649 = getelementptr { i64, [5 x i64] }, ptr %t641, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t648, ptr %t649
  %t650 = load { i64, [5 x i64] }, ptr %t641
  %t652 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t650, ptr %t652
  call void @__olang_scope_close(ptr %s0)
  store ptr %t652, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
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
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 114}
  store i32 %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 114}
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eidentity(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, [3 x i64] }
  %l14 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca %"compiler/source:Span"
  %l34 = alloca i1
  %l37 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l52 = alloca %"compiler/diagmsg:Msg"
  %l53 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l58 = alloca i64
  %l62 = alloca ptr
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca i64
  %l72 = alloca ptr
  %l77 = alloca ptr
  %l80 = alloca i32
  %l86 = alloca ptr
  %l91 = alloca i1
  %l95 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l98 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l101 = alloca { i64, ptr }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca i32
  %l110 = alloca i64
  %l111 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l114 = alloca i32
  %l115 = alloca i32
  %l116 = alloca ptr
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l124 = alloca ptr
  %l128 = alloca ptr
  %l132 = alloca i1
  %l134 = alloca i1
  %l139 = alloca i32
  %l143 = alloca ptr
  %l144 = alloca %"compiler/source:Span"
  %l147 = alloca { i64, ptr }
  %l149 = alloca %"compiler/diagmsg:Msg"
  %l150 = alloca i64
  %l154 = alloca ptr
  %l159 = alloca i1
  %l160 = alloca i1
  %l165 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca %"compiler/source:Span"
  %l169 = alloca ptr
  %l171 = alloca %"compiler/source:Span"
  %l172 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l175 = alloca %"compiler/diagmsg:Msg"
  %l176 = alloca i64
  %l177 = alloca ptr
  %l178 = alloca %"compiler/source:Span"
  %l179 = alloca i32
  %l181 = alloca i64
  %l182 = alloca ptr
  %l185 = alloca i1
  %l186 = alloca ptr
  %l187 = alloca %"compiler/source:Span"
  %l188 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l198 = alloca %"compiler/diagmsg:Msg"
  %l199 = alloca i64
  %l201 = alloca ptr
  %l205 = alloca { i64, [3 x i64] }
  %l208 = alloca { i64, [3 x i64] }
  %l211 = alloca { i64, [3 x i64] }
  %l218 = alloca ptr
  %l219 = alloca i64
  %l220 = alloca { i64, [3 x i64] }
  %l221 = alloca %"compiler/diagmsg:Msg"
  %l222 = alloca ptr
  %l223 = alloca %"compiler/source:Span"
  %l224 = alloca i32
  %l226 = alloca i64
  %l227 = alloca ptr
  %l228 = alloca ptr
  %l233 = alloca ptr
  %l234 = alloca i32
  %l236 = alloca %"compiler/source:Span"
  %l237 = alloca ptr
  %l245 = alloca ptr
  %l247 = alloca ptr
  %l251 = alloca ptr
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = load i1, ptr %l16, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v2, ptr %t5)
  store i1 %t7, ptr %l19
  br label %bb4
bb3:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb5
bb4:
  %t8 = load i1, ptr %l19, !tbaa !21
  %t9 = xor i1 %t8, true
  store i1 %t9, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l17, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l1
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i1, ptr %l4, !tbaa !21
  %t22 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eidentity(ptr %v0, ptr %v2, ptr %v1, ptr %v3, ptr %t12, %"compiler/source:Span" %t13, ptr %t14, ptr %t15, i1 %t16)
  store ptr %t22, ptr %l26
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t23 = load ptr, ptr %l26, !tbaa !29
  store ptr %t23, ptr %rv
  br label %ret
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l27, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t25)
  store %"compiler/source:Span" %t27, ptr %l29
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t28)
  store %"compiler/source:Span" %t30, ptr %l31
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l27, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l29
  %t33 = load %"compiler/source:Span", ptr %l31
  %t34 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t31, %"compiler/source:Span" %t32, %"compiler/source:Span" %t33, i64 2)
  store %"compiler/source:Span" %t34, ptr %l32
  br label %bb12
bb12:
  %t35 = load %"compiler/source:Span", ptr %l32
  store %"compiler/source:Span" %t35, ptr %l5
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v2, ptr %t36)
  store i1 %t38, ptr %l34
  br label %bb13
bb13:
  %t39 = load i1, ptr %l34, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t42 = load i1, ptr %l4, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb15:
  br label %bb32
bb16:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb18
bb17:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb18
bb18:
  %t44 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t44, ptr %l6, !tbaa !27
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v2, ptr %t45, ptr %t46)
  store i1 %t49, ptr %l40
  br label %bb19
bb19:
  %t50 = load i1, ptr %l40, !tbaa !21
  br i1 %t50, label %bb20, label %bb21
bb20:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l41, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t52, ptr %l42
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t53, ptr %l43, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l44, !tbaa !29
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t57 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t55)
  store %"compiler/source:Span" %t57, ptr %l46
  br label %bb22
bb21:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l54, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t59, ptr %l55
  %t60 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t61 = load ptr, ptr @__olang_prog_scope
  %t63 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsOnlyNull(ptr %t61, ptr %v0, { i64, ptr } %t60)
  store %"compiler/diagmsg:Msg" %t63, ptr %l57
  br label %bb28
bb22:
  %t64 = load ptr, ptr %l44, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l46
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t64, %"compiler/source:Span" %t65)
  store { i64, ptr } %t66, ptr %l47
  br label %bb23
bb23:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l48, !tbaa !29
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t70 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t68)
  store %"compiler/source:Span" %t70, ptr %l50
  br label %bb24
bb24:
  %t71 = load ptr, ptr %l48, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l50
  %t73 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t71, %"compiler/source:Span" %t72)
  store { i64, ptr } %t73, ptr %l51
  br label %bb25
bb25:
  %t74 = load ptr, ptr @__olang_prog_scope
  %t75 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t78 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsCaseWritten(ptr %t74, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t75, { i64, ptr } %t76, { i64, ptr } %t77)
  store %"compiler/diagmsg:Msg" %t78, ptr %l52
  br label %bb26
bb26:
  %t79 = load ptr, ptr %l41, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l42
  %t81 = load %"compiler/diagmsg:Msg", ptr %l52
  %t82 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t79, %"compiler/source:Span" %t80, %"compiler/diagmsg:Msg" %t81)
  store i64 %t82, ptr %l53
  br label %bb27
bb27:
  br label %bb30
bb28:
  %t83 = load ptr, ptr %l54, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l55
  %t85 = load %"compiler/diagmsg:Msg", ptr %l57
  %t86 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t83, %"compiler/source:Span" %t84, %"compiler/diagmsg:Msg" %t85)
  store i64 %t86, ptr %l58
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  %t89 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t93 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t87, %"compiler/source:Span" %t88, i32 %t89, i64 0)
  store ptr %t93, ptr %l62
  br label %bb31
bb31:
  %t94 = load ptr, ptr %l62, !tbaa !29
  store ptr %t94, ptr %rv
  br label %ret
bb32:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v1, ptr %t95)
  store i1 %t97, ptr %l64
  br label %bb33
bb33:
  %t98 = load i1, ptr %l64, !tbaa !21
  br i1 %t98, label %bb34, label %bb35
bb34:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l65, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t100, ptr %l66
  %t101 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsNullOfNull(ptr %v0)
  store %"compiler/diagmsg:Msg" %t101, ptr %l67
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t102 = load ptr, ptr %l65, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l66
  %t104 = load %"compiler/diagmsg:Msg", ptr %l67
  %t105 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t102, %"compiler/source:Span" %t103, %"compiler/diagmsg:Msg" %t104)
  store i64 %t105, ptr %l68
  br label %bb37
bb37:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load %"compiler/source:Span", ptr %l1
  %t108 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t106, %"compiler/source:Span" %t107, i32 %t108, i64 0)
  store ptr %t112, ptr %l72
  br label %bb38
bb38:
  %t113 = load ptr, ptr %l72, !tbaa !29
  store ptr %t113, ptr %rv
  br label %ret
bb39:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t121 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %t114, ptr %t115, i32 %t117)
  store ptr %t121, ptr %l77
  br label %bb40
bb40:
  %t122 = load ptr, ptr %l77, !tbaa !29
  store ptr %t122, ptr %l7, !tbaa !29
  %t123 = load ptr, ptr %l7, !tbaa !29
  %t126 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t123)
  store i32 %t126, ptr %l80
  br label %bb41
bb41:
  %t127 = load i32, ptr %l80, !tbaa !23
  store i32 %t127, ptr %l8, !tbaa !23
  %t128 = load i32, ptr %l8, !tbaa !23
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t132 = icmp eq i32 %t128, %t129
  br i1 %t132, label %bb42, label %bb43
bb42:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t134, %"compiler/source:Span" %t135)
  store ptr %t138, ptr %l86
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t139 = load ptr, ptr %l86, !tbaa !29
  store ptr %t139, ptr %rv
  br label %ret
bb45:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %l8, !tbaa !23
  %t149 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t145, i32 %t146)
  store i1 %t149, ptr %l91
  br label %bb46
bb46:
  %t150 = load i1, ptr %l91, !tbaa !21
  br i1 %t150, label %bb47, label %bb48
bb47:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t153 = load ptr, ptr %l7, !tbaa !29
  %t157 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNonNull(ptr %v0, ptr %v1, ptr %v3, ptr %t151, ptr %t152, ptr %t153)
  store i1 %t157, ptr %l95
  br label %bb49
bb48:
  br label %bb67
bb49:
  %t158 = load i1, ptr %l95, !tbaa !21
  br i1 %t158, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s8
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l96, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t160, ptr %l97
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l98, !tbaa !29
  %t162 = load ptr, ptr %l2, !tbaa !29
  %t164 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t162)
  store %"compiler/source:Span" %t164, ptr %l100
  br label %bb52
bb51:
  br label %bb60
bb52:
  %t165 = load ptr, ptr %l98, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l100
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s8, ptr %t165, %"compiler/source:Span" %t166)
  store { i64, ptr } %t167, ptr %l101
  br label %bb53
bb53:
  %t168 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t170 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = add i64 %t169, %t172
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t176 = add i64 %t173, %t175
  %t177 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t176)
  call void @olang_textcopy(ptr %t177, ptr %t168, i64 %t169)
  %t178 = getelementptr i8, ptr %t177, i64 %t169
  call void @olang_textcopy(ptr %t178, ptr %t171, i64 %t172)
  %t179 = getelementptr i8, ptr %t178, i64 %t172
  call void @olang_textcopy(ptr %t179, ptr %t174, i64 %t175)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t177, 1
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t184 = extractvalue { i64, ptr } %t181, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrNeverNull(ptr %v0, ptr %v0, { i64, ptr } %t188)
  store %"compiler/diagmsg:Msg" %t190, ptr %l104
  br label %bb54
bb54:
  %t191 = load ptr, ptr %l96, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l97
  %t193 = load %"compiler/diagmsg:Msg", ptr %l104
  %t194 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t191, %"compiler/source:Span" %t192, %"compiler/diagmsg:Msg" %t193)
  store i64 %t194, ptr %l105
  br label %bb55
bb55:
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l106, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t196, ptr %l107
  %t197 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t197, ptr %l108, !tbaa !23
  %t198 = load i1, ptr %l4, !tbaa !21
  br i1 %t198, label %bb56, label %bb57
bb56:
  store i64 1, ptr %l110, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb58
bb58:
  %t200 = load ptr, ptr %l106, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l107
  %t202 = load i32, ptr %l108, !tbaa !23
  %t203 = load i64, ptr %l110, !tbaa !24
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t200, %"compiler/source:Span" %t201, i32 %t202, i64 %t203)
  store ptr %t204, ptr %l111
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s8)
  %t205 = load ptr, ptr %l111, !tbaa !29
  store ptr %t205, ptr %rv
  br label %ret
bb60:
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l112, !tbaa !29
  %t207 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t207, ptr %l113
  %t208 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t208, ptr %l114, !tbaa !23
  store i32 13, ptr %l115
  %t209 = load ptr, ptr %l7, !tbaa !29
  store ptr %t209, ptr %l116, !tbaa !29
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load %"compiler/source:Span", ptr %l1
  %t212 = load i32, ptr %l8, !tbaa !23
  %t216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t210, %"compiler/source:Span" %t211, i32 %t212, i64 0)
  store ptr %t216, ptr %l120
  br label %bb61
bb61:
  %t217 = load ptr, ptr %l120, !tbaa !29
  %t218 = load ptr, ptr %l112, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l113
  %t220 = load i32, ptr %l114, !tbaa !23
  %t221 = load i32, ptr %l115, !range !{i32 0, i32 52}
  %t222 = load ptr, ptr %l116, !tbaa !29
  %t224 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t218, %"compiler/source:Span" %t219, i32 %t220, i32 %t221, ptr %t222, ptr %t217)
  store ptr %t224, ptr %l122
  br label %bb62
bb62:
  %t225 = load ptr, ptr %l122, !tbaa !29
  store ptr %t225, ptr %l9, !tbaa !29
  %t226 = load i1, ptr %l4, !tbaa !21
  br i1 %t226, label %bb63, label %bb64
bb63:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l1
  %t230 = load ptr, ptr %l9, !tbaa !29
  %t234 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t228, %"compiler/source:Span" %t229, ptr %t230)
  store ptr %t234, ptr %l128
  br label %bb65
bb64:
  %t235 = load ptr, ptr %l9, !tbaa !29
  store ptr %t235, ptr %l124, !tbaa !29
  br label %bb66
bb65:
  %t237 = load ptr, ptr %l128, !tbaa !29
  store ptr %t237, ptr %l124, !tbaa !29
  br label %bb66
bb66:
  %t238 = load ptr, ptr %l124, !tbaa !29
  store ptr %t238, ptr %rv
  br label %ret
bb67:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l8, !tbaa !23
  %t243 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t239, i32 %t240)
  store i1 %t243, ptr %l132
  br label %bb68
bb68:
  %t244 = load i1, ptr %l132, !tbaa !21
  %t245 = xor i1 %t244, true
  br i1 %t245, label %bb69, label %bb70
bb69:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = getelementptr %"compiler/generic:Program", ptr %t250, i32 0, i32 2
  %t253 = load i32, ptr %l8, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t252, i32 %t253)
  store i32 %t256, ptr %l139
  br label %bb71
bb70:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb72
bb71:
  %t257 = load i32, ptr %l139, !range !{i32 0, i32 33}
  %t259 = trunc i64 21 to i32
  %t260 = icmp eq i32 %t257, %t259
  %t262 = xor i1 %t260, true
  store i1 %t262, ptr %l134, !tbaa !21
  br label %bb72
bb72:
  %t264 = load i1, ptr %l134, !tbaa !21
  br i1 %t264, label %bb73, label %bb74
bb73:
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l143, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t266, ptr %l144
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l8, !tbaa !23
  %t271 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t267, i32 %t268)
  store { i64, ptr } %t271, ptr %l147
  br label %bb75
bb74:
  br label %bb79
bb75:
  %t272 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 0
  %t274 = extractvalue { i64, ptr } %t272, 1
  %t275 = mul i64 %t273, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t275)
  call void @llvm.memcpy.p0.p0.i64(ptr %t276, ptr %t274, i64 %t275, i1 false)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t280 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsNullOfValue(ptr %v0, ptr %v0, { i64, ptr } %t278)
  store %"compiler/diagmsg:Msg" %t280, ptr %l149
  br label %bb76
bb76:
  %t281 = load ptr, ptr %l143, !tbaa !29
  %t282 = load %"compiler/source:Span", ptr %l144
  %t283 = load %"compiler/diagmsg:Msg", ptr %l149
  %t284 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t281, %"compiler/source:Span" %t282, %"compiler/diagmsg:Msg" %t283)
  store i64 %t284, ptr %l150
  br label %bb77
bb77:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load %"compiler/source:Span", ptr %l1
  %t287 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t291 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t285, %"compiler/source:Span" %t286, i32 %t287, i64 0)
  store ptr %t291, ptr %l154
  br label %bb78
bb78:
  %t292 = load ptr, ptr %l154, !tbaa !29
  store ptr %t292, ptr %rv
  br label %ret
bb79:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/check:Checker", ptr %t293, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  %t299 = load i32, ptr %l8, !tbaa !23
  %t302 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t298, i32 %t299)
  store i1 %t302, ptr %l159
  br label %bb80
bb80:
  %t303 = load i1, ptr %l159, !tbaa !21
  br i1 %t303, label %bb81, label %bb82
bb81:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/check:Checker", ptr %t304, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !29
  %t309 = getelementptr %"compiler/generic:Program", ptr %t307, i32 0, i32 2
  %t310 = load i32, ptr %l8, !tbaa !23
  %t313 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t309, i32 %t310)
  store i1 %t313, ptr %l165
  br label %bb83
bb82:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb84
bb83:
  %t314 = load i1, ptr %l165, !tbaa !21
  %t315 = xor i1 %t314, true
  store i1 %t315, ptr %l160, !tbaa !21
  br label %bb84
bb84:
  %t317 = load i1, ptr %l160, !tbaa !21
  br i1 %t317, label %bb85, label %bb86
bb85:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l167, !tbaa !29
  %t319 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t319, ptr %l168
  %t320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t320, ptr %l169, !tbaa !29
  %t321 = load ptr, ptr %l2, !tbaa !29
  %t323 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t321)
  store %"compiler/source:Span" %t323, ptr %l171
  br label %bb87
bb86:
  br label %bb98
bb87:
  %t324 = load ptr, ptr %l169, !tbaa !29
  %t325 = load %"compiler/source:Span", ptr %l171
  %t326 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t324, %"compiler/source:Span" %t325)
  store { i64, ptr } %t326, ptr %l172
  br label %bb88
bb88:
  %t327 = load i1, ptr %l4, !tbaa !21
  br i1 %t327, label %bb89, label %bb90
bb89:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l174, !tbaa !27
  br label %bb91
bb90:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l174, !tbaa !27
  br label %bb91
bb91:
  %t329 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t331 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayIsNull(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t329, { i64, ptr } %t330)
  store %"compiler/diagmsg:Msg" %t331, ptr %l175
  br label %bb92
bb92:
  %t332 = load ptr, ptr %l167, !tbaa !29
  %t333 = load %"compiler/source:Span", ptr %l168
  %t334 = load %"compiler/diagmsg:Msg", ptr %l175
  %t335 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t332, %"compiler/source:Span" %t333, %"compiler/diagmsg:Msg" %t334)
  store i64 %t335, ptr %l176
  br label %bb93
bb93:
  %t336 = load ptr, ptr %l0, !tbaa !29
  store ptr %t336, ptr %l177, !tbaa !29
  %t337 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t337, ptr %l178
  %t338 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t338, ptr %l179, !tbaa !23
  %t339 = load i1, ptr %l4, !tbaa !21
  br i1 %t339, label %bb94, label %bb95
bb94:
  store i64 1, ptr %l181, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l181, !tbaa !24
  br label %bb96
bb96:
  %t341 = load ptr, ptr %l177, !tbaa !29
  %t342 = load %"compiler/source:Span", ptr %l178
  %t343 = load i32, ptr %l179, !tbaa !23
  %t344 = load i64, ptr %l181, !tbaa !24
  %t345 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t341, %"compiler/source:Span" %t342, i32 %t343, i64 %t344)
  store ptr %t345, ptr %l182
  br label %bb97
bb97:
  %t346 = load ptr, ptr %l182, !tbaa !29
  store ptr %t346, ptr %rv
  br label %ret
bb98:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load i32, ptr %l8, !tbaa !23
  %t351 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %t347, i32 %t348)
  store i1 %t351, ptr %l185
  br label %bb99
bb99:
  %t352 = load i1, ptr %l185, !tbaa !21
  br i1 %t352, label %bb100, label %bb101
bb100:
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l186, !tbaa !29
  %t354 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t354, ptr %l187
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l188, !tbaa !29
  %t356 = load ptr, ptr %l2, !tbaa !29
  %t358 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t356)
  store %"compiler/source:Span" %t358, ptr %l190
  br label %bb102
bb101:
  br label %bb125
bb102:
  %t359 = load ptr, ptr %l188, !tbaa !29
  %t360 = load %"compiler/source:Span", ptr %l190
  %t361 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t359, %"compiler/source:Span" %t360)
  store { i64, ptr } %t361, ptr %l191
  br label %bb103
bb103:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load i32, ptr %l8, !tbaa !23
  %t366 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t362, i32 %t363)
  store { i64, ptr } %t366, ptr %l194
  br label %bb104
bb104:
  %t367 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t368 = extractvalue { i64, ptr } %t367, 0
  %t369 = extractvalue { i64, ptr } %t367, 1
  %t370 = mul i64 %t368, 1
  %t371 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t370)
  call void @llvm.memcpy.p0.p0.i64(ptr %t371, ptr %t369, i64 %t370, i1 false)
  %t372 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t371, 1
  store { i64, ptr } %t373, ptr %l195, !tbaa !27
  %t374 = load i1, ptr %l4, !tbaa !21
  br i1 %t374, label %bb105, label %bb106
bb105:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l197, !tbaa !27
  br label %bb107
bb106:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l197, !tbaa !27
  br label %bb107
bb107:
  %t376 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t377 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t378 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t379 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeverNull(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t376, { i64, ptr } %t377, { i64, ptr } %t378)
  store %"compiler/diagmsg:Msg" %t379, ptr %l198
  br label %bb108
bb108:
  %t380 = load ptr, ptr %l186, !tbaa !29
  %t381 = load %"compiler/source:Span", ptr %l187
  %t382 = load %"compiler/diagmsg:Msg", ptr %l198
  %t383 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t380, %"compiler/source:Span" %t381, %"compiler/diagmsg:Msg" %t382)
  store i64 %t383, ptr %l199
  br label %bb109
bb109:
  %t384 = load i64, ptr %l199, !tbaa !24
  store i64 %t384, ptr %l10, !tbaa !24
  %t385 = load ptr, ptr %l7, !tbaa !29
  %t387 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v3, ptr %v3, ptr %t385)
  store ptr %t387, ptr %l201
  br label %bb110
bb110:
  %t388 = load ptr, ptr %l201, !tbaa !29
  store ptr %t388, ptr %l11, !tbaa !29
  %t389 = load ptr, ptr %l11, !tbaa !29
  %t391 = icmp eq ptr %t389, null
  %t393 = xor i1 %t391, true
  br i1 %t393, label %bb111, label %bb112
bb111:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load ptr, ptr %l11, !tbaa !29
  %t399 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceAt(ptr %v0, ptr %v3, ptr %t395, ptr %t396)
  store { i64, [3 x i64] } %t399, ptr %l208
  br label %bb113
bb112:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load ptr, ptr %l7, !tbaa !29
  %t404 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledAt(ptr %v0, ptr %v3, ptr %t400, ptr %t401)
  store { i64, [3 x i64] } %t404, ptr %l211
  br label %bb114
bb113:
  %t405 = load { i64, [3 x i64] }, ptr %l208
  store { i64, [3 x i64] } %t405, ptr %l205
  br label %bb115
bb114:
  %t406 = load { i64, [3 x i64] }, ptr %l211
  store { i64, [3 x i64] } %t406, ptr %l205
  br label %bb115
bb115:
  %t407 = load { i64, [3 x i64] }, ptr %l205
  store { i64, [3 x i64] } %t407, ptr %l12
  %t408 = load { i64, [3 x i64] }, ptr %l12
  %t410 = extractvalue { i64, [3 x i64] } %t408, 0
  %t411 = icmp eq i64 %t410, 0
  %t413 = xor i1 %t411, true
  br i1 %t413, label %bb116, label %bb117
bb116:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/check:Checker", ptr %t415, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !29
  %t420 = getelementptr %"compiler/generic:Program", ptr %t418, i32 0, i32 0
  %t421 = load ptr, ptr %t420, !tbaa !29
  %t423 = getelementptr %"compiler/load:Loader", ptr %t421, i32 0, i32 4
  %t424 = load ptr, ptr %t423, !tbaa !29
  store ptr %t424, ptr %l218, !tbaa !29
  %t425 = load i64, ptr %l10, !tbaa !24
  store i64 %t425, ptr %l219, !tbaa !24
  %t426 = load { i64, [3 x i64] }, ptr %l12
  store { i64, [3 x i64] } %t426, ptr %l220
  %t427 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteNullableDecl(ptr %v0)
  store %"compiler/diagmsg:Msg" %t427, ptr %l221
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t428 = load ptr, ptr %l218, !tbaa !29
  %t429 = load i64, ptr %l219, !tbaa !24
  %t430 = load { i64, [3 x i64] }, ptr %l220
  %t431 = load %"compiler/diagmsg:Msg", ptr %l221
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t428, i64 %t429, { i64, [3 x i64] } %t430, %"compiler/diagmsg:Msg" %t431)
  br label %bb119
bb119:
  br label %bb120
bb120:
  %t432 = load ptr, ptr %l0, !tbaa !29
  store ptr %t432, ptr %l222, !tbaa !29
  %t433 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t433, ptr %l223
  %t434 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t434, ptr %l224, !tbaa !23
  %t435 = load i1, ptr %l4, !tbaa !21
  br i1 %t435, label %bb121, label %bb122
bb121:
  store i64 1, ptr %l226, !tbaa !24
  br label %bb123
bb122:
  store i64 0, ptr %l226, !tbaa !24
  br label %bb123
bb123:
  %t437 = load ptr, ptr %l222, !tbaa !29
  %t438 = load %"compiler/source:Span", ptr %l223
  %t439 = load i32, ptr %l224, !tbaa !23
  %t440 = load i64, ptr %l226, !tbaa !24
  %t441 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t437, %"compiler/source:Span" %t438, i32 %t439, i64 %t440)
  store ptr %t441, ptr %l227
  br label %bb124
bb124:
  %t442 = load ptr, ptr %l227, !tbaa !29
  store ptr %t442, ptr %rv
  br label %ret
bb125:
  %t443 = load ptr, ptr %l0, !tbaa !29
  store ptr %t443, ptr %l228, !tbaa !29
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t445 = load ptr, ptr %l3, !tbaa !29
  %t447 = load i32, ptr %l8, !tbaa !23
  %t451 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t444, ptr %t445, i32 %t447)
  store ptr %t451, ptr %l233
  br label %bb126
bb126:
  %t452 = load i32, ptr %l8, !tbaa !23
  store i32 %t452, ptr %l234, !tbaa !23
  %t453 = load ptr, ptr %l3, !tbaa !29
  %t455 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t453)
  store %"compiler/source:Span" %t455, ptr %l236
  br label %bb127
bb127:
  %t456 = load ptr, ptr %l228, !tbaa !29
  %t457 = load ptr, ptr %l233, !tbaa !29
  %t458 = load i32, ptr %l234, !tbaa !23
  %t459 = load %"compiler/source:Span", ptr %l236
  %t460 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v3, ptr %t456, ptr %t457, i32 %t458, %"compiler/source:Span" %t459)
  store ptr %t460, ptr %l237
  br label %bb128
bb128:
  %t461 = load ptr, ptr %l237, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t463 = load %"compiler/source:Span", ptr %l1
  %t464 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t465 = load ptr, ptr %l7, !tbaa !29
  %t474 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t462, %"compiler/source:Span" %t463, i32 %t464, i32 19, ptr %t465, ptr %t461)
  store ptr %t474, ptr %l245
  br label %bb129
bb129:
  %t475 = load ptr, ptr %l245, !tbaa !29
  store ptr %t475, ptr %l14, !tbaa !29
  %t476 = load i1, ptr %l4, !tbaa !21
  br i1 %t476, label %bb130, label %bb131
bb130:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l1
  %t480 = load ptr, ptr %l14, !tbaa !29
  %t484 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t478, %"compiler/source:Span" %t479, ptr %t480)
  store ptr %t484, ptr %l251
  br label %bb132
bb131:
  %t485 = load ptr, ptr %l14, !tbaa !29
  store ptr %t485, ptr %l247, !tbaa !29
  br label %bb133
bb132:
  %t487 = load ptr, ptr %l251, !tbaa !29
  store ptr %t487, ptr %l247, !tbaa !29
  br label %bb133
bb133:
  %t488 = load ptr, ptr %l247, !tbaa !29
  store ptr %t488, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i32
  %l12 = alloca i32
  %l17 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %l27 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t13 = load i32, ptr %l2, !tbaa !23
  store i32 %t13, ptr %l10, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t14)
  store i32 %t16, ptr %l12
  br label %bb4
bb4:
  %t17 = load i32, ptr %l10, !tbaa !23
  %t18 = load i32, ptr %l12, !tbaa !23
  %t19 = icmp eq i32 %t17, %t18
  store i1 %t19, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l9, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l17
  br label %bb9
bb9:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l22
  br label %bb12
bb11:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb13
bb12:
  %t37 = load i1, ptr %l22, !tbaa !21
  %t38 = xor i1 %t37, true
  store i1 %t38, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l18, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l27
  br label %bb17
bb17:
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t48 = load i32, ptr %l27, !tbaa !23
  %t50 = icmp ne i32 %t48, %t47
  store i1 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleadWord(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l31 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/source:Span"
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
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp slt i64 %t7, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l12, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t21)
  store i1 %t23, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb13
bb5:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb9
bb7:
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t25, ptr %l17, !tbaa !27
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i8, ptr %t29, i64 %t26
  %t31 = load i8, ptr %t30, !tbaa !32
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t31)
  store i1 %t33, ptr %l20
  br label %bb8
bb8:
  %t34 = load i1, ptr %l20, !tbaa !21
  store i1 %t34, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l16, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i8, ptr %t40, i64 %t37
  %t42 = load i8, ptr %t41, !tbaa !32
  %t44 = icmp eq i8 %t42, 95
  store i1 %t44, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l21, !tbaa !21
  store i1 %t46, ptr %l11, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l11, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb17
bb17:
  br label %bb2
bb18:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = icmp sgt i64 %t54, 0
  br i1 %t56, label %bb19, label %bb20
bb19:
  %t58 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t59 = load i32, ptr %t58, !tbaa !23
  %t60 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = trunc i64 %t62 to i32
  %t67 = add i32 %t61, %t64
  %t70 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t59, i32 %t67)
  store %"compiler/source:Span" %t70, ptr %l37
  br label %bb21
bb20:
  %t71 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t71, ptr %l31
  br label %bb22
bb21:
  %t73 = load %"compiler/source:Span", ptr %l37
  store %"compiler/source:Span" %t73, ptr %l31
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t74 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t74, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/diagmsg:Msg"
  %l16 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedPart(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store %"compiler/source:Span" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t6, ptr %l3
  %t7 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = icmp slt i32 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l10, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l11
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l3
  %t19 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t15, %"compiler/source:Span" %t16)
  store { i64, ptr } %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t21 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedLend(ptr %v0, ptr %v0, { i64, ptr } %t20)
  store %"compiler/diagmsg:Msg" %t21, ptr %l15
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l11
  %t24 = load %"compiler/diagmsg:Msg", ptr %l15
  %t25 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t22, %"compiler/source:Span" %t23, %"compiler/diagmsg:Msg" %t24)
  store i64 %t25, ptr %l16
  br label %bb7
bb7:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/typed:Local"
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca %"compiler/typed:Local"
  %l29 = alloca i1
  %l33 = alloca i1
  %l40 = alloca i32
  %l43 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l50 = alloca i64
  %l53 = alloca i64
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb31
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t16, i32 %t17)
  store i64 %t20, ptr %l16
  br label %bb6
bb6:
  %t21 = load i64, ptr %l16, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t27 = insertvalue { i64, i64 } %t26, i64 -1, 1
  store { i64, i64 } %t27, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l21
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Body", ptr %t32, i32 0, i32 7
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t34, i64 %t35)
  store %"compiler/typed:Local" %t38, ptr %l25
  br label %bb11
bb11:
  %t39 = load %"compiler/typed:Local", ptr %l25
  store %"compiler/typed:Local" %t39, ptr %l5
  %t40 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t41 = load i32, ptr %t40, !range !{i32 0, i32 7}
  %t43 = trunc i64 0 to i32
  %t44 = icmp eq i32 %t41, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 7}
  %t51 = trunc i64 1 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  store i1 %t54, ptr %l29, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l29, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t57 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 7}
  %t60 = trunc i64 4 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  store i1 %t63, ptr %l33, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t65 = load i1, ptr %l33, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t66 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t67 = insertvalue { i64, i64 } %t66, i64 -1, 1
  store { i64, i64 } %t67, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 2
  %t71 = load i32, ptr %t70, !tbaa !23
  %t74 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t69, i32 %t71)
  store i32 %t74, ptr %l40
  br label %bb21
bb21:
  %t75 = load i32, ptr %l40, !tbaa !23
  store i32 %t75, ptr %l6, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l6, !tbaa !23
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l43
  br label %bb22
bb22:
  %t81 = load i1, ptr %l43, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t85 = insertvalue { i64, i64 } %t84, i64 -1, 1
  store { i64, i64 } %t85, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l46, !tbaa !29
  %t90 = call ptr @compiler_2fcheck_2ecasePath(ptr %v2, ptr %v2, ptr %a2)
  store ptr %t90, ptr %l48
  br label %bb26
bb26:
  %t91 = load i32, ptr %l6, !tbaa !23
  %t92 = load ptr, ptr %l46, !tbaa !29
  %t93 = load ptr, ptr %l48, !tbaa !29
  %t95 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v2, ptr %t92, ptr %t93, i32 %t91)
  store i64 %t95, ptr %l50
  br label %bb27
bb27:
  %t96 = load i64, ptr %l50, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  %t97 = load i64, ptr %l7, !tbaa !24
  %t99 = icmp sge i64 %t97, 0
  br i1 %t99, label %bb28, label %bb29
bb28:
  %t101 = load i64, ptr %l4, !tbaa !24
  store i64 %t101, ptr %l53, !tbaa !24
  br label %bb30
bb29:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb30
bb30:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l53, !tbaa !24
  %t105 = insertvalue { i64, i64 } undef, i64 %t104, 0
  %t107 = insertvalue { i64, i64 } %t105, i64 %t103, 1
  store { i64, i64 } %t107, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t109 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t110 = insertvalue { i64, i64 } %t109, i64 -1, 1
  store { i64, i64 } %t110, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1a7153eaacfdc8_b1c3cf4a1728a65c)
  unreachable
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
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

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca { i64, ptr }
  %l20 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t1)
  store %"compiler/source:Span" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t4, ptr %l2
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t6 = load ptr, ptr %l6, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 9}
  %t12 = icmp eq i64 %t10, 8
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  br label %bb6
bb5:
  br label %bb9
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t20 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %l12, !tbaa !23
  %t22 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  store i32 %t23, ptr %l13, !tbaa !23
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %a0, i32 %t25)
  store { i64, ptr } %t28, ptr %l16
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  %t32 = trunc i64 %t30 to i32
  %t33 = load i32, ptr %l13, !tbaa !23
  %t35 = add i32 %t33, %t32
  %t36 = load i32, ptr %l12, !tbaa !23
  %t38 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t36, i32 %t35)
  store %"compiler/source:Span" %t38, ptr %l20
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  %t39 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t39, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t40 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t40, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_4d673442943c2a5_9663aeaf0b5db41)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l22 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l11
  br label %bb4
bb4:
  %t14 = load i1, ptr %l11, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb9
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l16
  br label %bb8
bb8:
  %t23 = load i1, ptr %l16, !tbaa !21
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t31 = load i32, ptr %l3, !tbaa !23
  %t35 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t29, i32 %t30, i32 %t31)
  store i32 %t35, ptr %l22
  br label %bb13
bb13:
  %t36 = load i32, ptr %l22, !tbaa !23
  %t37 = icmp sge i32 %t36, 0
  br i1 %t37, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l25, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l26
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t42, i32 %t43)
  store { i64, ptr } %t46, ptr %l29
  br label %bb17
bb17:
  %t47 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l30, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t54, i32 %t55)
  store { i64, ptr } %t58, ptr %l33
  br label %bb18
bb18:
  %t59 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l34, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l3, !tbaa !23
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t66, i32 %t67)
  store { i64, ptr } %t70, ptr %l37
  br label %bb19
bb19:
  %t71 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t81 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralDoesNotMeet(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t78, { i64, ptr } %t79, { i64, ptr } %t77)
  store %"compiler/diagmsg:Msg" %t81, ptr %l39
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l25, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l26
  %t84 = load %"compiler/diagmsg:Msg", ptr %l39
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t82, %"compiler/source:Span" %t83, %"compiler/diagmsg:Msg" %t84)
  store i64 %t85, ptr %l40
  br label %bb21
bb21:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t13 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t19 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t4 = call i1 @compiler_2fcheck_2elaneTok(i32 %a1)
  store i1 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i1, ptr %l6, !tbaa !21
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 40
  store i1 %t5, ptr %t7, !tbaa !21
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t15 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t8, ptr %a2, i32 %a3)
  store ptr %t15, ptr %l11
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l11, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l9 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i32
  %l20 = alloca ptr
  %l22 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i32
  %l33 = alloca i1
  %l38 = alloca i32
  %l47 = alloca i64
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
  %t10 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLenKey(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t4, ptr %a1, { i64, ptr } %a2)
  store { i64, ptr } %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t14, ptr %l11
  br label %bb2
bb2:
  %t15 = load i1, ptr %l11, !tbaa !21
  br i1 %t15, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 16
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l15
  br label %bb5
bb5:
  %t21 = load i64, ptr %l15, !tbaa !24
  %t22 = icmp eq i64 %t21, 0
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t26)
  store ptr %t28, ptr %l20
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t31 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 4
  %t32 = getelementptr %"compiler/generic:Context", ptr %t31, i32 0, i32 2
  store ptr %t32, ptr %l22, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/load:Loader", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t46 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t42, { i64, ptr } %t43)
  store i32 %t46, ptr %l28
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t48 = load i32, ptr %l28, !tbaa !23
  %t49 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t47, i32 %t48)
  %t50 = extractvalue { i32, i32 } %t49, 1
  %t51 = extractvalue { i32, i32 } %t49, 0
  store i32 %t51, ptr %l30
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb13, label %ok.53, !prof !99
ok.53:
  store i32 %t50, ptr %l29
  br label %bb12
bb12:
  %t54 = load i32, ptr %l29, !tbaa !23
  store i32 %t54, ptr %l18, !tbaa !23
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i32 -1, ptr %l18, !tbaa !23
  br label %bb15
bb15:
  %t55 = load i32, ptr %l18, !tbaa !23
  store i32 %t55, ptr %l4, !tbaa !23
  %t56 = load i32, ptr %l4, !tbaa !23
  %t58 = icmp slt i32 %t56, 0
  br i1 %t58, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb19
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l4, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l38
  br label %bb18
bb18:
  %t70 = load i32, ptr %l38, !range !{i32 0, i32 33}
  %t72 = trunc i64 26 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t75 = xor i1 %t73, true
  store i1 %t75, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t77 = load i1, ptr %l33, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l4, !tbaa !23
  %t88 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t88, ptr %l47
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load i64, ptr %l47, !tbaa !24
  store i64 %t89, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l23 = alloca i32
  %l26 = alloca ptr
  %l31 = alloca i32
  %l33 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i32
  %l48 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l67 = alloca i1
  %l73 = alloca i32
  %l78 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l97 = alloca i1
  %l103 = alloca i1
  %l104 = alloca ptr
  %l109 = alloca i32
  %l111 = alloca i1
  %l114 = alloca i1
  %l119 = alloca ptr
  %l124 = alloca i32
  %l125 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l138 = alloca i1
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
  store i1 false, ptr %rv
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
  store i32 %t15, ptr %l23
  br label %bb4
bb4:
  %t16 = load i32, ptr %l23, !range !{i32 0, i32 33}
  store i32 %t16, ptr %l3
  %t17 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t19 = trunc i64 19 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l26, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l31
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t34 = load ptr, ptr %l26, !tbaa !29
  %t35 = load i32, ptr %l31, !tbaa !23
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t34, i32 %t35, i64 %t33)
  store i1 %t37, ptr %l33
  br label %bb8
bb8:
  %t38 = load i1, ptr %l33, !tbaa !21
  store i1 %t38, ptr %rv
  br label %ret
bb9:
  %t39 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t41 = trunc i64 18 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l40
  br label %bb12
bb11:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb13
bb12:
  %t52 = load i1, ptr %l40, !tbaa !21
  store i1 %t52, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l36, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l43
  br label %bb16
bb15:
  br label %bb54
bb16:
  %t59 = load i32, ptr %l43, !range !{i32 0, i32 6}
  %t61 = trunc i64 0 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb17, label %bb18
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l48, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l53
  br label %bb19
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l73
  br label %bb31
bb19:
  %t85 = load ptr, ptr %l48, !tbaa !29
  %t86 = load i32, ptr %l53, !tbaa !23
  %t87 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t85, i32 %t86)
  store { i64, ptr } %t87, ptr %l54
  br label %bb20
bb20:
  %t88 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t88, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  store i64 %t91, ptr %l6, !tbaa !24
  br label %bb21
bb21:
  %t93 = load i64, ptr %l5, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  br label %bb24
bb24:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l61, !tbaa !27
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i32, ptr %t105, i64 %t102
  %t107 = load i32, ptr %t106, !tbaa !33
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l2, !tbaa !24
  %t115 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t109, i32 %t107, i64 %t111)
  store i1 %t115, ptr %l67
  br label %bb25
bb25:
  %t116 = load i1, ptr %l67, !tbaa !21
  br i1 %t116, label %bb26, label %bb27
bb26:
  store i1 true, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t118 = load i64, ptr %l5, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l5, !tbaa !24
  br label %bb21
bb30:
  br label %bb53
bb31:
  %t122 = load i32, ptr %l73, !range !{i32 0, i32 6}
  %t124 = trunc i64 1 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb32, label %bb33
bb32:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  store ptr %t132, ptr %l78, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %l1, !tbaa !23
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l83
  br label %bb34
bb33:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l1, !tbaa !23
  %t147 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t143, i32 %t144)
  store i1 %t147, ptr %l103
  br label %bb46
bb34:
  %t148 = load ptr, ptr %l78, !tbaa !29
  %t149 = load i32, ptr %l83, !tbaa !23
  %t150 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t148, i32 %t149)
  store { i64, ptr } %t150, ptr %l84
  br label %bb35
bb35:
  %t151 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t151, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  store i64 %t154, ptr %l10, !tbaa !24
  br label %bb36
bb36:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t157 = load i64, ptr %l10, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb37, label %bb38
bb37:
  br label %bb45
bb38:
  br label %bb39
bb39:
  %t164 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t164, ptr %l91, !tbaa !27
  %t165 = load i64, ptr %l9, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i64, ptr %l2, !tbaa !24
  %t178 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t172, i32 %t170, i64 %t174)
  store i1 %t178, ptr %l97
  br label %bb40
bb40:
  %t179 = load i1, ptr %l97, !tbaa !21
  br i1 %t179, label %bb41, label %bb42
bb41:
  store i1 true, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t181 = load i64, ptr %l9, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l9, !tbaa !24
  br label %bb36
bb45:
  br label %bb52
bb46:
  %t185 = load i1, ptr %l103, !tbaa !21
  br i1 %t185, label %bb47, label %bb48
bb47:
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l104, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l1, !tbaa !23
  %t196 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t196, ptr %l109
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t197 = load i64, ptr %l2, !tbaa !24
  %t198 = load ptr, ptr %l104, !tbaa !29
  %t199 = load i32, ptr %l109, !tbaa !23
  %t201 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t198, i32 %t199, i64 %t197)
  store i1 %t201, ptr %l111
  br label %bb50
bb50:
  %t202 = load i1, ptr %l111, !tbaa !21
  store i1 %t202, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t203 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t205 = trunc i64 23 to i32
  %t206 = icmp eq i32 %t203, %t205
  br i1 %t206, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb57
bb56:
  %t208 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t210 = trunc i64 22 to i32
  %t211 = icmp eq i32 %t208, %t210
  store i1 %t211, ptr %l114, !tbaa !21
  br label %bb57
bb57:
  %t213 = load i1, ptr %l114, !tbaa !21
  br i1 %t213, label %bb58, label %bb59
bb58:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 2
  store ptr %t219, ptr %l119, !tbaa !29
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l1, !tbaa !23
  %t229 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t225, i32 %t226)
  store i32 %t229, ptr %l124
  br label %bb60
bb59:
  br label %bb72
bb60:
  %t230 = load ptr, ptr %l119, !tbaa !29
  %t231 = load i32, ptr %l124, !tbaa !23
  %t232 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t230, i32 %t231)
  store { i64, ptr } %t232, ptr %l125
  br label %bb61
bb61:
  %t233 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t233, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t234 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t234, 0
  store i64 %t236, ptr %l14, !tbaa !24
  br label %bb62
bb62:
  %t238 = load i64, ptr %l13, !tbaa !24
  %t239 = load i64, ptr %l14, !tbaa !24
  %t242 = icmp slt i64 %t238, %t239
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb63, label %bb64
bb63:
  br label %bb71
bb64:
  br label %bb65
bb65:
  %t246 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t246, ptr %l132, !tbaa !27
  %t247 = load i64, ptr %l13, !tbaa !24
  %t249 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr i32, ptr %t250, i64 %t247
  %t252 = load i32, ptr %t251, !tbaa !33
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l2, !tbaa !24
  %t260 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t254, i32 %t252, i64 %t256)
  store i1 %t260, ptr %l138
  br label %bb66
bb66:
  %t261 = load i1, ptr %l138, !tbaa !21
  br i1 %t261, label %bb67, label %bb68
bb67:
  store i1 true, ptr %rv
  br label %ret
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t263 = load i64, ptr %l13, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l13, !tbaa !24
  br label %bb62
bb71:
  br label %bb72
bb72:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca %"compiler/names:Ref"
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca ptr
  %l46 = alloca %"compiler/names:Ref"
  %l49 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca i64
  %l73 = alloca i1
  %l76 = alloca i64
  %l78 = alloca i64
  %l81 = alloca i64
  %l85 = alloca i64
  %l88 = alloca i1
  %l90 = alloca ptr
  %l97 = alloca ptr
  %l101 = alloca i64
  %l104 = alloca i64
  %l106 = alloca %"compiler/source:Span"
  %l109 = alloca i32
  %l113 = alloca ptr
  %l117 = alloca i32
  %l121 = alloca %"compiler/source:Span"
  %l124 = alloca i32
  %l133 = alloca ptr
  %l137 = alloca %"compiler/source:Span"
  %l141 = alloca i32
  %l146 = alloca ptr
  %l147 = alloca i1
  %l154 = alloca ptr
  %l155 = alloca ptr
  %l156 = alloca i1
  %l167 = alloca ptr
  %l169 = alloca ptr
  %l173 = alloca %"compiler/names:Ref"
  %l176 = alloca %"compiler/source:Span"
  %l180 = alloca i32
  %l187 = alloca i1
  %l190 = alloca i32
  %l195 = alloca i64
  %l198 = alloca %"compiler/source:Span"
  %l201 = alloca i32
  %l205 = alloca ptr
  %l209 = alloca i32
  %l212 = alloca ptr
  %l213 = alloca %"compiler/source:Span"
  %l214 = alloca %"compiler/source:Span"
  %l217 = alloca { i64, ptr }
  %l219 = alloca %"compiler/source:Span"
  %l222 = alloca ptr
  %l228 = alloca i32
  %l232 = alloca %"compiler/source:Span"
  %l235 = alloca i32
  %l236 = alloca ptr
  %l240 = alloca i32
  %l245 = alloca ptr
  %l249 = alloca ptr
  %l250 = alloca %"compiler/source:Span"
  %l251 = alloca %"compiler/source:Span"
  %l254 = alloca { i64, ptr }
  %l256 = alloca %"compiler/source:Span"
  %l259 = alloca ptr
  %l260 = alloca ptr
  %l261 = alloca i1
  %l272 = alloca i32
  %l274 = alloca i1
  %l277 = alloca %"compiler/check:reflList"
  %l284 = alloca ptr
  %l285 = alloca ptr
  %l286 = alloca i1
  %l289 = alloca i1
  %l291 = alloca ptr
  %l292 = alloca i1
  %l310 = alloca { i64, ptr }
  %l311 = alloca i1
  %l314 = alloca i32
  %l321 = alloca ptr
  %l322 = alloca %"compiler/source:Span"
  %l324 = alloca %"compiler/source:Span"
  %l327 = alloca ptr
  %l332 = alloca ptr
  %l335 = alloca i32
  %l341 = alloca ptr
  %l348 = alloca %"compiler/source:Span"
  %l349 = alloca i32
  %l350 = alloca ptr
  %l351 = alloca ptr
  %l352 = alloca i32
  %l354 = alloca %"compiler/source:Span"
  %l355 = alloca i32
  %s0 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca ptr
  %t189 = alloca { i64, [4 x i64] }, align 8
  %t216 = alloca { i64, [4 x i64] }, align 8
  %t256 = alloca { i64, [4 x i64] }, align 8
  %t358 = alloca { i64, [4 x i64] }, align 8
  %t419 = alloca { i64, [4 x i64] }, align 8
  %t484 = alloca { i64, [4 x i64] }, align 8
  %t739 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 11
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 11
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t10 = load ptr, ptr %l30, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l30, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 30}
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l31, !tbaa !21
  br label %bb2
bb2:
  %t17 = load i1, ptr %l31, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32 }, ptr %t20, i32 0, i32 0
  %t22 = load %"compiler/source:Span", ptr %t21
  store %"compiler/source:Span" %t22, ptr %l3
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32 }, ptr %t26, i32 0, i32 1
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb62
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l40, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t37)
  store ptr %t39, ptr %l42
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l42, !tbaa !29
  %t42 = getelementptr %"compiler/check:frame", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = load ptr, ptr %l40, !tbaa !29
  %t49 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t46, i64 %t43, i32 %t45)
  store %"compiler/names:Ref" %t49, ptr %l46
  br label %bb7
bb7:
  %t50 = load %"compiler/names:Ref", ptr %l46
  store %"compiler/names:Ref" %t50, ptr %l5
  %t51 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t52 = load i32, ptr %t51, !range !{i32 0, i32 9}
  %t54 = trunc i64 1 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb8, label %bb9
bb8:
  %t57 = load i1, ptr %l2, !tbaa !21
  store i1 %t57, ptr %l49, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb10
bb10:
  %t59 = load i1, ptr %l49, !tbaa !21
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l4, !tbaa !23
  %t64 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %t60, i32 %t61)
  store i64 %t64, ptr %l54
  br label %bb13
bb12:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb14
bb13:
  %t65 = load i64, ptr %l54, !tbaa !24
  %t66 = icmp sge i64 %t65, 0
  store i1 %t66, ptr %l51, !tbaa !21
  br label %bb14
bb14:
  %t68 = load i1, ptr %l51, !tbaa !21
  br i1 %t68, label %bb15, label %bb16
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %t69, i32 %t70)
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l58, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t74, ptr %l59
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l4, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t75, i32 %t76)
  store { i64, ptr } %t79, ptr %l62
  br label %bb18
bb18:
  %t80 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  store { i64, ptr } %t86, ptr %l63, !tbaa !27
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l4, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t87, i32 %t88)
  store { i64, ptr } %t91, ptr %l66
  br label %bb19
bb19:
  %t92 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t94 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtAssigned(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t92, { i64, ptr } %t93)
  store %"compiler/diagmsg:Msg" %t94, ptr %l67
  br label %bb20
bb20:
  %t95 = load ptr, ptr %l58, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l59
  %t97 = load %"compiler/diagmsg:Msg", ptr %l67
  %t98 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t95, %"compiler/source:Span" %t96, %"compiler/diagmsg:Msg" %t97)
  store i64 %t98, ptr %l68
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb22:
  %t100 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t101 = load i32, ptr %t100, !range !{i32 0, i32 9}
  %t103 = trunc i64 1 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = load i1, ptr %l2, !tbaa !21
  br i1 %t106, label %bb25, label %bb26
bb24:
  br label %bb57
bb25:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l4, !tbaa !23
  %t112 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t108, i32 %t109)
  store i64 %t112, ptr %l76
  br label %bb27
bb26:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb28
bb27:
  %t113 = load i64, ptr %l76, !tbaa !24
  %t114 = icmp sge i64 %t113, 0
  store i1 %t114, ptr %l73, !tbaa !21
  br label %bb28
bb28:
  %t116 = load i1, ptr %l73, !tbaa !21
  br i1 %t116, label %bb29, label %bb30
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l4, !tbaa !23
  %t121 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t117, i32 %t118)
  store i64 %t121, ptr %l81
  br label %bb31
bb30:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i32, ptr %l4, !tbaa !23
  %t124 = load %"compiler/source:Span", ptr %l3
  %t128 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalOrCapture(ptr %v0, ptr %t122, i32 %t123, %"compiler/source:Span" %t124)
  store i64 %t128, ptr %l85
  br label %bb32
bb31:
  %t129 = load i64, ptr %l81, !tbaa !24
  store i64 %t129, ptr %l78, !tbaa !24
  br label %bb33
bb32:
  %t130 = load i64, ptr %l85, !tbaa !24
  store i64 %t130, ptr %l78, !tbaa !24
  br label %bb33
bb33:
  %t131 = load i64, ptr %l78, !tbaa !24
  store i64 %t131, ptr %l6, !tbaa !24
  %t132 = load i64, ptr %l6, !tbaa !24
  %t134 = icmp slt i64 %t132, 0
  br i1 %t134, label %bb34, label %bb35
bb34:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t136)
  store ptr %t138, ptr %l90
  br label %bb36
bb35:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb37
bb36:
  %t139 = load ptr, ptr %l90, !tbaa !29
  %t141 = getelementptr %"compiler/check:frame", ptr %t139, i32 0, i32 31
  %t142 = load i64, ptr %t141, !tbaa !24
  %t144 = icmp sge i64 %t142, 0
  store i1 %t144, ptr %l88, !tbaa !21
  br label %bb37
bb37:
  %t146 = load i1, ptr %l88, !tbaa !21
  br i1 %t146, label %bb38, label %bb39
bb38:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l3
  %t149 = load i32, ptr %l4, !tbaa !23
  %t153 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstField(ptr %v0, ptr %v2, ptr %t147, %"compiler/source:Span" %t148, i32 %t149)
  store ptr %t153, ptr %l97
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t154 = load ptr, ptr %l97, !tbaa !29
  store ptr %t154, ptr %rv
  br label %ret
bb41:
  %t155 = load i64, ptr %l6, !tbaa !24
  %t157 = icmp slt i64 %t155, 0
  br i1 %t157, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t160 = load i64, ptr %l6, !tbaa !24
  store i64 %t160, ptr %l101, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i32, ptr %l4, !tbaa !23
  %t165 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t161, i32 %t162)
  store i64 %t165, ptr %l104
  br label %bb45
bb45:
  %t166 = load i64, ptr %l101, !tbaa !24
  %t167 = load i64, ptr %l104, !tbaa !24
  %t168 = icmp ne i64 %t166, %t167
  br i1 %t168, label %bb46, label %bb47
bb46:
  %t170 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t170, ptr %l106
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr %l6, !tbaa !24
  %t175 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t171, i64 %t172)
  store i32 %t175, ptr %l109
  br label %bb48
bb47:
  br label %bb51
bb48:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load %"compiler/source:Span", ptr %l3
  %t178 = load i64, ptr %l6, !tbaa !24
  %t182 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t176, %"compiler/source:Span" %t177, i64 %t178)
  store ptr %t182, ptr %l113
  br label %bb49
bb49:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l3
  %t188 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t183, i32 8, %"compiler/source:Span" %t184)
  store i32 %t188, ptr %l117
  br label %bb50
bb50:
  store { i64, [4 x i64] } zeroinitializer, ptr %t189
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 0
  store i64 6, ptr %t190
  %t191 = load %"compiler/source:Span", ptr %l106
  %t192 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t191, 0
  %t193 = load i32, ptr %l109, !tbaa !23
  %t194 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t192, i32 %t193, 1
  %t195 = load ptr, ptr %l113, !tbaa !29
  %t196 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t194, ptr %t195, 2
  %t197 = load i32, ptr %l117, !tbaa !23
  %t198 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t196, i32 %t197, 3
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t198, ptr %t199
  %t200 = load { i64, [4 x i64] }, ptr %t189
  %t202 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t200, ptr %t202
  call void @__olang_scope_close(ptr %s0)
  store ptr %t202, ptr %rv
  br label %ret
bb51:
  %t204 = load i1, ptr %l2, !tbaa !21
  br i1 %t204, label %bb52, label %bb53
bb52:
  %t206 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t206, ptr %l121
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i64, ptr %l6, !tbaa !24
  %t211 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t207, i64 %t208)
  store i32 %t211, ptr %l124
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t212 = load i64, ptr %l6, !tbaa !24
  %t214 = trunc i64 %t212 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 0
  store i64 0, ptr %t217
  %t218 = load %"compiler/source:Span", ptr %l121
  %t219 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t218, 0
  %t220 = load i32, ptr %l124, !tbaa !23
  %t221 = insertvalue { %"compiler/source:Span", i32, i32 } %t219, i32 %t220, 1
  %t223 = insertvalue { %"compiler/source:Span", i32, i32 } %t221, i32 %t214, 2
  %t224 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t223, ptr %t224
  %t225 = load { i64, [4 x i64] }, ptr %t216
  %t227 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t225, ptr %t227
  call void @__olang_scope_close(ptr %s0)
  store ptr %t227, ptr %rv
  br label %ret
bb55:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l3
  %t231 = load i64, ptr %l6, !tbaa !24
  %t235 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalPlace(ptr %v0, ptr %v2, ptr %t229, %"compiler/source:Span" %t230, i64 %t231)
  store ptr %t235, ptr %l133
  br label %bb56
bb56:
  %t236 = load ptr, ptr %l133, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t236, ptr %rv
  br label %ret
bb57:
  %t238 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t239 = load i32, ptr %t238, !range !{i32 0, i32 9}
  %t241 = trunc i64 2 to i32
  %t242 = icmp eq i32 %t239, %t241
  br i1 %t242, label %bb58, label %bb59
bb58:
  %t244 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t244, ptr %l137
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t247 = load i64, ptr %t246, !tbaa !24
  %t248 = load i32, ptr %l4, !tbaa !23
  %t252 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t245, i64 %t247, i32 %t248)
  store i32 %t252, ptr %l141
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t253 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t254 = load i64, ptr %t253, !tbaa !24
  %t255 = load i32, ptr %l4, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 0
  store i64 1, ptr %t257
  %t258 = load %"compiler/source:Span", ptr %l137
  %t259 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t258, 0
  %t260 = load i32, ptr %l141, !tbaa !23
  %t261 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t259, i32 %t260, 1
  %t263 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t261, i64 %t254, 2
  %t265 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t263, i32 %t255, 3
  %t266 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t265, ptr %t266
  %t267 = load { i64, [4 x i64] }, ptr %t256
  %t269 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t267, ptr %t269
  call void @__olang_scope_close(ptr %s0)
  store ptr %t269, ptr %rv
  br label %ret
bb61:
  br label %bb158
bb62:
  %t271 = load ptr, ptr %l1, !tbaa !29
  store ptr %t271, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t272 = load ptr, ptr %l146, !tbaa !29
  %t273 = icmp ne ptr %t272, null
  br i1 %t273, label %bb63, label %bb64
bb63:
  %t275 = load ptr, ptr %l146, !tbaa !29
  %t276 = load i64, ptr %t275, !range !{i64 0, i64 30}
  %t278 = icmp eq i64 %t276, 2
  store i1 %t278, ptr %l147, !tbaa !21
  br label %bb64
bb64:
  %t279 = load i1, ptr %l147, !tbaa !21
  br i1 %t279, label %bb65, label %bb66
bb65:
  %t280 = load ptr, ptr %l1, !tbaa !29
  %t282 = getelementptr { i64, [4 x i64] }, ptr %t280, i32 0, i32 1
  %t283 = getelementptr { %"compiler/source:Span", ptr }, ptr %t282, i32 0, i32 1
  %t284 = load ptr, ptr %t283
  store ptr %t284, ptr %l7, !tbaa !29
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load ptr, ptr %l7, !tbaa !29
  %t290 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t286, ptr %t287)
  store ptr %t290, ptr %l154
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t291 = load ptr, ptr %l154, !tbaa !29
  store ptr %t291, ptr %rv
  br label %ret
bb69:
  %t292 = load ptr, ptr %l1, !tbaa !29
  store ptr %t292, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t293 = load ptr, ptr %l155, !tbaa !29
  %t294 = icmp ne ptr %t293, null
  br i1 %t294, label %bb70, label %bb71
bb70:
  %t296 = load ptr, ptr %l155, !tbaa !29
  %t297 = load i64, ptr %t296, !range !{i64 0, i64 30}
  %t299 = icmp eq i64 %t297, 14
  store i1 %t299, ptr %l156, !tbaa !21
  br label %bb71
bb71:
  %t300 = load i1, ptr %l156, !tbaa !21
  br i1 %t300, label %bb72, label %bb73
bb72:
  %t301 = load ptr, ptr %l1, !tbaa !29
  %t303 = getelementptr { i64, [4 x i64] }, ptr %t301, i32 0, i32 1
  %t304 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t303, i32 0, i32 0
  %t305 = load %"compiler/source:Span", ptr %t304
  store %"compiler/source:Span" %t305, ptr %l8
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr { i64, [4 x i64] }, ptr %t307, i32 0, i32 1
  %t310 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t309, i32 0, i32 1
  %t311 = load ptr, ptr %t310
  store ptr %t311, ptr %l9, !tbaa !29
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t315 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t315, i32 0, i32 2
  %t317 = load i32, ptr %t316
  store i32 %t317, ptr %l10, !tbaa !23
  br label %bb74
bb73:
  br label %bb114
bb74:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/check:Checker", ptr %t319, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !29
  %t324 = getelementptr %"compiler/generic:Program", ptr %t322, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !29
  store ptr %t325, ptr %l167, !tbaa !29
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t326)
  store ptr %t328, ptr %l169
  br label %bb75
bb75:
  %t329 = load ptr, ptr %l169, !tbaa !29
  %t331 = getelementptr %"compiler/check:frame", ptr %t329, i32 0, i32 2
  %t332 = load i64, ptr %t331, !tbaa !24
  %t333 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t334 = load i32, ptr %t333, !tbaa !23
  %t335 = load ptr, ptr %l167, !tbaa !29
  %t338 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t335, i64 %t332, i32 %t334)
  store %"compiler/names:Ref" %t338, ptr %l173
  br label %bb76
bb76:
  %t339 = load %"compiler/names:Ref", ptr %l173
  store %"compiler/names:Ref" %t339, ptr %l11
  %t340 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 0
  %t341 = load i32, ptr %t340, !range !{i32 0, i32 9}
  %t343 = trunc i64 2 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb77, label %bb78
bb77:
  %t346 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t346, ptr %l176
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 1
  %t349 = load i64, ptr %t348, !tbaa !24
  %t350 = load i32, ptr %l10, !tbaa !23
  %t354 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t347, i64 %t349, i32 %t350)
  store i32 %t354, ptr %l180
  br label %bb79
bb78:
  br label %bb80
bb79:
  %t355 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 1
  %t356 = load i64, ptr %t355, !tbaa !24
  %t357 = load i32, ptr %l10, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t358
  %t359 = getelementptr { i64, [4 x i64] }, ptr %t358, i32 0, i32 0
  store i64 1, ptr %t359
  %t360 = load %"compiler/source:Span", ptr %l176
  %t361 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t360, 0
  %t362 = load i32, ptr %l180, !tbaa !23
  %t363 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t361, i32 %t362, 1
  %t365 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t363, i64 %t356, 2
  %t367 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t365, i32 %t357, 3
  %t368 = getelementptr { i64, [4 x i64] }, ptr %t358, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t367, ptr %t368
  %t369 = load { i64, [4 x i64] }, ptr %t358
  %t371 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t369, ptr %t371
  call void @__olang_scope_close(ptr %s0)
  store ptr %t371, ptr %rv
  br label %ret
bb80:
  %t373 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 0
  %t374 = load i32, ptr %t373, !range !{i32 0, i32 9}
  %t376 = trunc i64 0 to i32
  %t377 = icmp eq i32 %t374, %t376
  br i1 %t377, label %bb81, label %bb82
bb81:
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load ptr, ptr %l9, !tbaa !29
  %t383 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t379, ptr %t380)
  store i32 %t383, ptr %l190
  br label %bb83
bb82:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb84
bb83:
  %t384 = load i32, ptr %l190, !tbaa !23
  %t385 = icmp slt i32 %t384, 0
  store i1 %t385, ptr %l187, !tbaa !21
  br label %bb84
bb84:
  %t387 = load i1, ptr %l187, !tbaa !21
  br i1 %t387, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s12
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load ptr, ptr %l9, !tbaa !29
  %t390 = load i32, ptr %l10, !tbaa !23
  %t394 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedName(ptr %v0, ptr %v1, ptr %t388, ptr %t389, i32 %t390)
  store i64 %t394, ptr %l195
  br label %bb87
bb86:
  br label %bb113
bb87:
  %t395 = load i64, ptr %l195, !tbaa !24
  store i64 %t395, ptr %l12, !tbaa !24
  %t396 = load i64, ptr %l12, !tbaa !24
  %t398 = icmp sge i64 %t396, 0
  br i1 %t398, label %bb88, label %bb89
bb88:
  %t400 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t400, ptr %l198
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t402 = load i64, ptr %l12, !tbaa !24
  %t405 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t401, i64 %t402)
  store i32 %t405, ptr %l201
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load %"compiler/source:Span", ptr %l8
  %t408 = load i64, ptr %l12, !tbaa !24
  %t412 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t406, %"compiler/source:Span" %t407, i64 %t408)
  store ptr %t412, ptr %l205
  br label %bb91
bb91:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load %"compiler/source:Span", ptr %l8
  %t418 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t413, i32 8, %"compiler/source:Span" %t414)
  store i32 %t418, ptr %l209
  br label %bb92
bb92:
  store { i64, [4 x i64] } zeroinitializer, ptr %t419
  %t420 = getelementptr { i64, [4 x i64] }, ptr %t419, i32 0, i32 0
  store i64 6, ptr %t420
  %t421 = load %"compiler/source:Span", ptr %l198
  %t422 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t421, 0
  %t423 = load i32, ptr %l201, !tbaa !23
  %t424 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t422, i32 %t423, 1
  %t425 = load ptr, ptr %l205, !tbaa !29
  %t426 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t424, ptr %t425, 2
  %t427 = load i32, ptr %l209, !tbaa !23
  %t428 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t426, i32 %t427, 3
  %t429 = getelementptr { i64, [4 x i64] }, ptr %t419, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t428, ptr %t429
  %t430 = load { i64, [4 x i64] }, ptr %t419
  %t432 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t430, ptr %t432
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t432, ptr %rv
  br label %ret
bb93:
  %t434 = load ptr, ptr %l0, !tbaa !29
  store ptr %t434, ptr %l212, !tbaa !29
  %t435 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t435, ptr %l213
  %t436 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t436, ptr %l214
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load i32, ptr %l10, !tbaa !23
  %t441 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s12, ptr %t437, i32 %t438)
  store { i64, ptr } %t441, ptr %l217
  br label %bb94
bb94:
  %t442 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t442, 0
  %t444 = load %"compiler/source:Span", ptr %l214
  %t446 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t444, i64 %t443)
  store %"compiler/source:Span" %t446, ptr %l219
  br label %bb95
bb95:
  %t447 = load ptr, ptr %l9, !tbaa !29
  %t448 = load i32, ptr %l10, !tbaa !23
  %t449 = load ptr, ptr %l212, !tbaa !29
  %t450 = load %"compiler/source:Span", ptr %l213
  %t451 = load %"compiler/source:Span", ptr %l219
  %t454 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrField(ptr %v0, ptr %v1, ptr %v2, ptr %t449, %"compiler/source:Span" %t450, %"compiler/source:Span" %t451, ptr %t447, i32 %t448)
  store ptr %t454, ptr %l222
  br label %bb96
bb96:
  %t455 = load ptr, ptr %l222, !tbaa !29
  store ptr %t455, ptr %l13, !tbaa !29
  %t456 = load ptr, ptr %l13, !tbaa !29
  %t458 = icmp eq ptr %t456, null
  %t460 = xor i1 %t458, true
  br i1 %t460, label %bb97, label %bb98
bb97:
  %t462 = load ptr, ptr %l13, !tbaa !29
  %t465 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t462)
  store i32 %t465, ptr %l228
  br label %bb99
bb98:
  br label %bb105
bb99:
  %t466 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t467 = load i32, ptr %l228, !tbaa !23
  %t469 = icmp eq i32 %t467, %t466
  br i1 %t469, label %bb100, label %bb101
bb100:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb101:
  br label %bb102
bb102:
  %t472 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t472, ptr %l232
  %t473 = load ptr, ptr %l13, !tbaa !29
  %t476 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t473)
  store i32 %t476, ptr %l235
  br label %bb103
bb103:
  %t477 = load ptr, ptr %l13, !tbaa !29
  store ptr %t477, ptr %l236, !tbaa !29
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l8
  %t483 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t478, i32 8, %"compiler/source:Span" %t479)
  store i32 %t483, ptr %l240
  br label %bb104
bb104:
  store { i64, [4 x i64] } zeroinitializer, ptr %t484
  %t485 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 0
  store i64 6, ptr %t485
  %t486 = load %"compiler/source:Span", ptr %l232
  %t487 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t486, 0
  %t488 = load i32, ptr %l235, !tbaa !23
  %t489 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t487, i32 %t488, 1
  %t490 = load ptr, ptr %l236, !tbaa !29
  %t491 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t489, ptr %t490, 2
  %t492 = load i32, ptr %l240, !tbaa !23
  %t493 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t491, i32 %t492, 3
  %t494 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t493, ptr %t494
  %t495 = load { i64, [4 x i64] }, ptr %t484
  %t497 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t495, ptr %t497
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t497, ptr %rv
  br label %ret
bb105:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = load ptr, ptr %l9, !tbaa !29
  %t503 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t499, ptr %t500)
  store ptr %t503, ptr %l245
  br label %bb106
bb106:
  %t504 = load ptr, ptr %l245, !tbaa !29
  store ptr %t504, ptr %l14, !tbaa !29
  %t505 = load ptr, ptr %l14, !tbaa !29
  %t507 = icmp eq ptr %t505, null
  br i1 %t507, label %bb107, label %bb108
bb107:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb108:
  br label %bb109
bb109:
  %t510 = load ptr, ptr %l0, !tbaa !29
  store ptr %t510, ptr %l249, !tbaa !29
  %t511 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t511, ptr %l250
  %t512 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t512, ptr %l251
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load i32, ptr %l10, !tbaa !23
  %t517 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s12, ptr %t513, i32 %t514)
  store { i64, ptr } %t517, ptr %l254
  br label %bb110
bb110:
  %t518 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t519 = extractvalue { i64, ptr } %t518, 0
  %t520 = load %"compiler/source:Span", ptr %l251
  %t522 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t520, i64 %t519)
  store %"compiler/source:Span" %t522, ptr %l256
  br label %bb111
bb111:
  %t523 = load ptr, ptr %l14, !tbaa !29
  %t524 = load i32, ptr %l10, !tbaa !23
  %t525 = load ptr, ptr %l249, !tbaa !29
  %t526 = load %"compiler/source:Span", ptr %l250
  %t527 = load %"compiler/source:Span", ptr %l256
  %t530 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v2, ptr %v2, ptr %t525, %"compiler/source:Span" %t526, %"compiler/source:Span" %t527, ptr %t523, i32 %t524)
  store ptr %t530, ptr %l259
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t531 = load ptr, ptr %l259, !tbaa !29
  store ptr %t531, ptr %rv
  br label %ret
bb113:
  br label %bb158
bb114:
  %t532 = load ptr, ptr %l1, !tbaa !29
  store ptr %t532, ptr %l260, !tbaa !29
  store i1 false, ptr %l261, !tbaa !21
  %t533 = load ptr, ptr %l260, !tbaa !29
  %t534 = icmp ne ptr %t533, null
  br i1 %t534, label %bb115, label %bb116
bb115:
  %t536 = load ptr, ptr %l260, !tbaa !29
  %t537 = load i64, ptr %t536, !range !{i64 0, i64 30}
  %t539 = icmp eq i64 %t537, 15
  store i1 %t539, ptr %l261, !tbaa !21
  br label %bb116
bb116:
  %t540 = load i1, ptr %l261, !tbaa !21
  br i1 %t540, label %bb117, label %bb118
bb117:
  %t541 = load ptr, ptr %l1, !tbaa !29
  %t543 = getelementptr { i64, [4 x i64] }, ptr %t541, i32 0, i32 1
  %t544 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t543, i32 0, i32 0
  %t545 = load %"compiler/source:Span", ptr %t544
  store %"compiler/source:Span" %t545, ptr %l15
  %t547 = load ptr, ptr %l1, !tbaa !29
  %t549 = getelementptr { i64, [4 x i64] }, ptr %t547, i32 0, i32 1
  %t550 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t549, i32 0, i32 1
  %t551 = load ptr, ptr %t550
  store ptr %t551, ptr %l16, !tbaa !29
  %t553 = load ptr, ptr %l1, !tbaa !29
  %t555 = getelementptr { i64, [4 x i64] }, ptr %t553, i32 0, i32 1
  %t556 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t555, i32 0, i32 2
  %t557 = load { i64, ptr }, ptr %t556
  store { i64, ptr } %t557, ptr %l17, !tbaa !27
  br label %bb119
bb118:
  br label %bb129
bb119:
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t560 = load ptr, ptr %l16, !tbaa !29
  %t563 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t559, ptr %t560)
  store i32 %t563, ptr %l272
  br label %bb120
bb120:
  %t564 = load i32, ptr %l272, !tbaa !23
  %t565 = icmp slt i32 %t564, 0
  br i1 %t565, label %bb121, label %bb122
bb121:
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t568 = load ptr, ptr %l16, !tbaa !29
  %t571 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t567, ptr %t568)
  store %"compiler/check:reflList" %t571, ptr %l277
  br label %bb123
bb122:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb124
bb123:
  %t572 = getelementptr %"compiler/check:reflList", ptr %l277, i32 0, i32 0
  %t573 = load i1, ptr %t572, !tbaa !21
  %t575 = xor i1 %t573, true
  store i1 %t575, ptr %l274, !tbaa !21
  br label %bb124
bb124:
  %t577 = load i1, ptr %l274, !tbaa !21
  br i1 %t577, label %bb125, label %bb126
bb125:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t579 = load %"compiler/source:Span", ptr %l15
  %t580 = load ptr, ptr %l16, !tbaa !29
  %t581 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t586 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexPlace(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t578, %"compiler/source:Span" %t579, ptr %t580, { i64, ptr } %t581)
  store ptr %t586, ptr %l284
  br label %bb127
bb126:
  br label %bb128
bb127:
  call void @__olang_scope_close(ptr %s0)
  %t587 = load ptr, ptr %l284, !tbaa !29
  store ptr %t587, ptr %rv
  br label %ret
bb128:
  br label %bb158
bb129:
  %t588 = load ptr, ptr %l1, !tbaa !29
  store ptr %t588, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t589 = load ptr, ptr %l285, !tbaa !29
  %t590 = icmp ne ptr %t589, null
  br i1 %t590, label %bb130, label %bb131
bb130:
  %t592 = load ptr, ptr %l285, !tbaa !29
  %t593 = load i64, ptr %t592, !range !{i64 0, i64 30}
  %t595 = icmp eq i64 %t593, 12
  store i1 %t595, ptr %l286, !tbaa !21
  br label %bb131
bb131:
  %t596 = load i1, ptr %l286, !tbaa !21
  br i1 %t596, label %bb132, label %bb133
bb132:
  %t597 = load ptr, ptr %l1, !tbaa !29
  %t599 = getelementptr { i64, [4 x i64] }, ptr %t597, i32 0, i32 1
  %t600 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t599, i32 0, i32 1
  %t601 = load ptr, ptr %t600
  store ptr %t601, ptr %l291, !tbaa !29
  store i1 false, ptr %l292, !tbaa !21
  %t602 = load ptr, ptr %l291, !tbaa !29
  %t603 = icmp ne ptr %t602, null
  br i1 %t603, label %bb134, label %bb135
bb133:
  store i1 false, ptr %l289, !tbaa !21
  br label %bb136
bb134:
  %t605 = load ptr, ptr %l291, !tbaa !29
  %t606 = load i64, ptr %t605, !range !{i64 0, i64 30}
  %t608 = icmp eq i64 %t606, 14
  store i1 %t608, ptr %l292, !tbaa !21
  br label %bb135
bb135:
  %t609 = load i1, ptr %l292, !tbaa !21
  store i1 %t609, ptr %l289, !tbaa !21
  br label %bb136
bb136:
  %t610 = load i1, ptr %l289, !tbaa !21
  br i1 %t610, label %bb137, label %bb138
bb137:
  %t611 = load ptr, ptr %l1, !tbaa !29
  %t613 = getelementptr { i64, [4 x i64] }, ptr %t611, i32 0, i32 1
  %t614 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t613, i32 0, i32 0
  %t615 = load %"compiler/source:Span", ptr %t614
  store %"compiler/source:Span" %t615, ptr %l18
  %t617 = load ptr, ptr %l1, !tbaa !29
  %t619 = getelementptr { i64, [4 x i64] }, ptr %t617, i32 0, i32 1
  %t620 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t619, i32 0, i32 1
  %t621 = load ptr, ptr %t620
  %t623 = getelementptr { i64, [4 x i64] }, ptr %t621, i32 0, i32 1
  %t624 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t623, i32 0, i32 0
  %t625 = load %"compiler/source:Span", ptr %t624
  store %"compiler/source:Span" %t625, ptr %l19
  %t627 = load ptr, ptr %l1, !tbaa !29
  %t629 = getelementptr { i64, [4 x i64] }, ptr %t627, i32 0, i32 1
  %t630 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t629, i32 0, i32 1
  %t631 = load ptr, ptr %t630
  %t633 = getelementptr { i64, [4 x i64] }, ptr %t631, i32 0, i32 1
  %t634 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t633, i32 0, i32 1
  %t635 = load ptr, ptr %t634
  store ptr %t635, ptr %l20, !tbaa !29
  %t637 = load ptr, ptr %l1, !tbaa !29
  %t639 = getelementptr { i64, [4 x i64] }, ptr %t637, i32 0, i32 1
  %t640 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t639, i32 0, i32 1
  %t641 = load ptr, ptr %t640
  %t643 = getelementptr { i64, [4 x i64] }, ptr %t641, i32 0, i32 1
  %t644 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t643, i32 0, i32 2
  %t645 = load i32, ptr %t644
  store i32 %t645, ptr %l21, !tbaa !23
  %t647 = load ptr, ptr %l1, !tbaa !29
  %t649 = getelementptr { i64, [4 x i64] }, ptr %t647, i32 0, i32 1
  %t650 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t649, i32 0, i32 2
  %t651 = load { i64, ptr }, ptr %t650
  store { i64, ptr } %t651, ptr %l22, !tbaa !27
  br label %bb139
bb138:
  br label %bb153
bb139:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t654 = load i32, ptr %l21, !tbaa !23
  %t657 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t653, i32 %t654)
  store { i64, ptr } %t657, ptr %l310
  br label %bb140
bb140:
  %t658 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t659 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t658, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t659, ptr %l311
  br label %bb141
bb141:
  %t660 = load i1, ptr %l311, !tbaa !21
  br i1 %t660, label %bb142, label %bb143
bb142:
  %t661 = load ptr, ptr %l0, !tbaa !29
  %t662 = load ptr, ptr %l20, !tbaa !29
  %t665 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t661, ptr %t662)
  store i32 %t665, ptr %l314
  br label %bb144
bb143:
  br label %bb153
bb144:
  %t666 = load i32, ptr %l314, !tbaa !23
  store i32 %t666, ptr %l23, !tbaa !23
  %t667 = load i32, ptr %l23, !tbaa !23
  %t669 = icmp sge i32 %t667, 0
  br i1 %t669, label %bb145, label %bb146
bb145:
  %t671 = load i32, ptr %l23, !tbaa !23
  %t672 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t675 = icmp eq i32 %t671, %t672
  br i1 %t675, label %bb147, label %bb148
bb146:
  br label %bb152
bb147:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb148:
  br label %bb149
bb149:
  %t678 = load ptr, ptr %l0, !tbaa !29
  store ptr %t678, ptr %l321, !tbaa !29
  %t679 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t679, ptr %l322
  %t680 = load %"compiler/source:Span", ptr %l19
  %t682 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t680, i64 2)
  store %"compiler/source:Span" %t682, ptr %l324
  br label %bb150
bb150:
  %t683 = load i32, ptr %l23, !tbaa !23
  %t684 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t685 = load ptr, ptr %l321, !tbaa !29
  %t686 = load %"compiler/source:Span", ptr %l322
  %t687 = load %"compiler/source:Span", ptr %l324
  %t690 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflOf(ptr %v0, ptr %v1, ptr %v2, ptr %t685, %"compiler/source:Span" %t686, %"compiler/source:Span" %t687, i32 %t683, { i64, ptr } %t684)
  store ptr %t690, ptr %l327
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s0)
  %t691 = load ptr, ptr %l327, !tbaa !29
  store ptr %t691, ptr %rv
  br label %ret
bb152:
  br label %bb158
bb153:
  br i1 true, label %bb154, label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb157
bb156:
  br label %bb158
bb157:
  call void @__olang_check_failed(ptr @olang_loc_c89e58dd43b8c5a0_98fae7e2dc40ed34)
  unreachable
bb158:
  %t692 = load ptr, ptr %l0, !tbaa !29
  %t693 = load ptr, ptr %l1, !tbaa !29
  %t695 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t699 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t692, ptr %t693, i32 %t695)
  store ptr %t699, ptr %l332
  br label %bb159
bb159:
  %t700 = load ptr, ptr %l332, !tbaa !29
  store ptr %t700, ptr %l24, !tbaa !29
  %t701 = load ptr, ptr %l24, !tbaa !29
  %t704 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t701)
  store i32 %t704, ptr %l335
  br label %bb160
bb160:
  %t705 = load i32, ptr %l335, !tbaa !23
  store i32 %t705, ptr %l25, !tbaa !23
  %t706 = load i32, ptr %l25, !tbaa !23
  %t707 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t710 = icmp eq i32 %t706, %t707
  br i1 %t710, label %bb161, label %bb162
bb161:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb162:
  br label %bb163
bb163:
  %t713 = load ptr, ptr %l24, !tbaa !29
  %t715 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t713)
  store ptr %t715, ptr %l341
  br label %bb164
bb164:
  %t716 = load ptr, ptr %l341, !tbaa !29
  store ptr %t716, ptr %l26, !tbaa !29
  %t717 = load ptr, ptr %l26, !tbaa !29
  %t719 = icmp eq ptr %t717, null
  %t721 = xor i1 %t719, true
  br i1 %t721, label %bb165, label %bb166
bb165:
  %t723 = load ptr, ptr %l26, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t723, ptr %rv
  br label %ret
bb166:
  br label %bb167
bb167:
  %t726 = load ptr, ptr %l1, !tbaa !29
  %t728 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t726)
  store %"compiler/source:Span" %t728, ptr %l348
  br label %bb168
bb168:
  %t729 = load i32, ptr %l25, !tbaa !23
  store i32 %t729, ptr %l349, !tbaa !23
  %t730 = load ptr, ptr %l24, !tbaa !29
  store ptr %t730, ptr %l350, !tbaa !29
  %t731 = load ptr, ptr %l0, !tbaa !29
  store ptr %t731, ptr %l351, !tbaa !29
  store i32 8, ptr %l352
  %t732 = load ptr, ptr %l1, !tbaa !29
  %t734 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t732)
  store %"compiler/source:Span" %t734, ptr %l354
  br label %bb169
bb169:
  %t735 = load ptr, ptr %l351, !tbaa !29
  %t736 = load i32, ptr %l352, !range !{i32 0, i32 9}
  %t737 = load %"compiler/source:Span", ptr %l354
  %t738 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t735, i32 %t736, %"compiler/source:Span" %t737)
  store i32 %t738, ptr %l355
  br label %bb170
bb170:
  store { i64, [4 x i64] } zeroinitializer, ptr %t739
  %t740 = getelementptr { i64, [4 x i64] }, ptr %t739, i32 0, i32 0
  store i64 6, ptr %t740
  %t741 = load %"compiler/source:Span", ptr %l348
  %t742 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t741, 0
  %t743 = load i32, ptr %l349, !tbaa !23
  %t744 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t742, i32 %t743, 1
  %t745 = load ptr, ptr %l350, !tbaa !29
  %t746 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t744, ptr %t745, 2
  %t747 = load i32, ptr %l355, !tbaa !23
  %t748 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t746, i32 %t747, 3
  %t749 = getelementptr { i64, [4 x i64] }, ptr %t739, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t748, ptr %t749
  %t750 = load { i64, [4 x i64] }, ptr %t739
  %t752 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t750, ptr %t752
  call void @__olang_scope_close(ptr %s0)
  store ptr %t752, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushNulls(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3) #0 {
entry:
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l52 = alloca %"compiler/check:nullNarrow"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  call void @compiler_2fcheck_2enullTests(ptr %v1, ptr %s0, ptr %a1, i1 %a2, ptr %l4)
  br label %bb2
bb2:
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %l18, !tbaa !24
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H69e9af7ee32b7ff0c8685324094a29a4(ptr %s0, ptr %t11)
  store i64 %t13, ptr %l20
  br label %bb4
bb4:
  %t14 = load i64, ptr %l18, !tbaa !24
  %t15 = load i64, ptr %l20, !tbaa !24
  %t16 = icmp slt i64 %t14, %t15
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb5, label %bb6
bb5:
  br label %bb24
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l5, !tbaa !29
  %t21 = load i64, ptr %l6, !tbaa !24
  %t24 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H37377f924b66ff741793959f79fef546(ptr %s0, ptr %s0, ptr %t20, i64 %t21)
  store { i64, ptr } %t24, ptr %l25
  br label %bb8
bb8:
  %t25 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t25, ptr %l7, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp eq i64 %t28, 1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t34, ptr %l30
  br label %bb11
bb10:
  br label %bb22
bb11:
  %t35 = load ptr, ptr %l30, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 50
  store ptr %t37, ptr %l32, !tbaa !29
  %t38 = ptrtoint ptr %v0 to i64
  store i64 %t38, ptr %l33, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3anullNarrow_2e0
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = call ptr @__olang_region_make(ptr %v0)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t43 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t43, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t51 = mul i64 %t49, 4
  %t52 = load i64, ptr %l33
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call ptr @__olang_scope_alloc(ptr %t53, i64 %t51)
  %t55 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  br label %bb14
bb14:
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l10, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t65 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t65, ptr %l45, !tbaa !27
  %t66 = load i64, ptr %l9, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i32, ptr %t69, i64 %t66
  %t71 = load i32, ptr %t70, !tbaa !33
  %t75 = load i64, ptr %l40, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 %t75
  store i32 %t71, ptr %t78, !tbaa !33
  %t79 = load i64, ptr %l40, !tbaa !24
  %t80 = add i64 %t79, 1
  store i64 %t80, ptr %l40, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l9, !tbaa !24
  br label %bb14
bb19:
  %t86 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t88 = call %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v0, { i64, ptr } %t86, i64 %a3, i1 false)
  store %"compiler/check:nullNarrow" %t88, ptr %l52
  br label %bb20
bb20:
  %t89 = load ptr, ptr %l32, !tbaa !29
  %t90 = load %"compiler/check:nullNarrow", ptr %l52
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ePus_H6cb9d90d121a5c1d081cb085b656665f(ptr %v0, ptr %v0, ptr %t89, %"compiler/check:nullNarrow" %t90)
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb3
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:litv"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i32
  %l13 = alloca i64
  %l15 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l36 = alloca i1
  %l41 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i64
  %l61 = alloca i64
  %l67 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/check:litv" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t12, i32 %t13)
  store i64 %t16, ptr %l13
  br label %bb2
bb2:
  %t17 = load i64, ptr %l13, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t18 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 6
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 64
  store i1 %t23, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l15, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 6
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb8, label %bb9
bb7:
  br label %bb19
bb8:
  %t31 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 2
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb9:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb14
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l27
  br label %bb12
bb11:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb13
bb12:
  %t44 = load i1, ptr %l27, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l22, !tbaa !21
  %t48 = xor i1 %t47, true
  store i1 %t48, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l20, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load %"compiler/check:litv", ptr %l1
  %t58 = load i32, ptr %l3, !tbaa !23
  %t62 = call i1 @compiler_2fcheck_2eintFits(ptr %v0, ptr %t56, %"compiler/check:litv" %t57, i32 %t58)
  store i1 %t62, ptr %l36
  br label %bb17
bb16:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  %t63 = load i1, ptr %l36, !tbaa !21
  store i1 %t63, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t64 = load i1, ptr %l30, !tbaa !21
  store i1 %t64, ptr %rv
  br label %ret
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l3, !tbaa !23
  %t74 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l41
  br label %bb20
bb20:
  %t75 = load i1, ptr %l41, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t76 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 2
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb23, label %bb24
bb22:
  br label %bb32
bb23:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = icmp eq i64 %t79, 64
  store i1 %t81, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t83 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = icmp slt i64 %t84, 0
  br i1 %t86, label %bb26, label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t89 = load i64, ptr %l4, !tbaa !24
  %t91 = icmp eq i64 %t89, 64
  br i1 %t91, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb31
bb30:
  %t93 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = load i64, ptr %l4, !tbaa !24
  store i64 %t95, ptr %l52, !tbaa !24
  %t96 = load i64, ptr %l52, !tbaa !24
  %t97 = load i64, ptr %l52, !tbaa !24
  %t98 = shl i64 1, %t97
  %t101 = icmp slt i64 %t94, %t98
  store i1 %t101, ptr %l50, !tbaa !21
  br label %bb31
bb31:
  %t103 = load i1, ptr %l50, !tbaa !21
  store i1 %t103, ptr %rv
  br label %ret
bb32:
  %t104 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 2
  %t105 = load i1, ptr %t104, !tbaa !21
  br i1 %t105, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t108 = load i64, ptr %l4, !tbaa !24
  %t110 = icmp eq i64 %t108, 64
  br i1 %t110, label %bb36, label %bb37
bb36:
  store i1 true, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t113 = load i64, ptr %l4, !tbaa !24
  %t115 = sub i64 %t113, 1
  store i64 %t115, ptr %l61, !tbaa !24
  %t116 = load i64, ptr %l61, !tbaa !24
  %t117 = load i64, ptr %l61, !tbaa !24
  %t118 = shl i64 1, %t117
  store i64 %t118, ptr %l5, !tbaa !24
  %t120 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = load i64, ptr %l5, !tbaa !24
  %t124 = sub i64 0, %t122
  %t127 = icmp sge i64 %t121, %t124
  br i1 %t127, label %bb39, label %bb40
bb39:
  %t129 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t130 = load i64, ptr %t129, !tbaa !24
  %t131 = load i64, ptr %l5, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  store i1 %t134, ptr %l67, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb41
bb41:
  %t136 = load i1, ptr %l67, !tbaa !21
  store i1 %t136, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflVal" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/check:reflVal"
  %l11 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l20 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l27 = alloca ptr
  %l29 = alloca i32
  %l31 = alloca i32
  %l33 = alloca ptr
  %l44 = alloca i1
  %l49 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca %"compiler/source:Span"
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l56 = alloca i32
  %l59 = alloca { i64, ptr }
  %l63 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t71 = alloca { i64, [2 x i64] }, align 8
  %t79 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/check:reflVal" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 1
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load %"compiler/source:Span", ptr %l1
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t11 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t8, %"compiler/source:Span" %t9, i32 %t10, i64 %t12)
  store ptr %t17, ptr %l11
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load ptr, ptr %l11, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
bb4:
  %t19 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t21 = load i64, ptr @G_2ecompiler_2fcheck_2eRvInt, !tbaa !24
  %t24 = icmp eq i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l15, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t27, ptr %l16
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t28)
  store i32 %t30, ptr %l18
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t31 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 2
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = load ptr, ptr %l15, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l16
  %t35 = load i32, ptr %l18, !tbaa !23
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t33, %"compiler/source:Span" %t34, i32 %t35, i64 %t32)
  store ptr %t37, ptr %l20
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load ptr, ptr %l20, !tbaa !29
  store ptr %t38, ptr %rv
  br label %ret
bb9:
  %t39 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load i64, ptr @G_2ecompiler_2fcheck_2eRvText, !tbaa !24
  %t44 = icmp eq i64 %t40, %t41
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t46 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 0, i32 0)
  store %"compiler/source:Span" %t46, ptr %l24
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  store ptr %t52, ptr %l27, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t53)
  store i32 %t55, ptr %l29
  br label %bb13
bb13:
  %t56 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t57 = load ptr, ptr %l27, !tbaa !29
  %t58 = load i32, ptr %l29, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t57, i32 %t58, i64 %t56)
  store i32 %t60, ptr %l31
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t61)
  store ptr %t63, ptr %l33
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t66 = getelementptr %"compiler/check:frame", ptr %t64, i32 0, i32 2
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 3
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 0
  store i64 1, ptr %t72
  %t74 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t69, 0
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 1
  store { { i64, ptr } } %t74, ptr %t75
  %t76 = load { i64, [2 x i64] }, ptr %t71
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t76, ptr %t78
  store { i64, [5 x i64] } zeroinitializer, ptr %t79
  %t80 = getelementptr { i64, [5 x i64] }, ptr %t79, i32 0, i32 0
  store i64 1, ptr %t80
  %t81 = load %"compiler/source:Span", ptr %l24
  %t82 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t81, 0
  %t83 = load i32, ptr %l31, !tbaa !23
  %t84 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t82, i32 %t83, 1
  %t86 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t84, i64 %t67, 2
  %t88 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t86, ptr %t78, 3
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t79, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t88, ptr %t89
  %t90 = load { i64, [5 x i64] }, ptr %t79
  %t92 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t90, ptr %t92
  call void @__olang_scope_close(ptr %s0)
  store ptr %t92, ptr %rv
  br label %ret
bb16:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 4
  %t96 = load i32, ptr %t95, !tbaa !23
  %t99 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t94, i32 %t96)
  store i1 %t99, ptr %l44
  br label %bb17
bb17:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 4
  %t107 = load i32, ptr %t106, !tbaa !23
  %t110 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s0, ptr %t105, i32 %t107)
  store { i64, ptr } %t110, ptr %l49
  br label %bb18
bb18:
  %t111 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l50, !tbaa !29
  %t113 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t113, ptr %l51
  %t114 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t114, ptr %l52
  %t115 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 4
  %t116 = load i32, ptr %t115, !tbaa !23
  store i32 %t116, ptr %l53, !tbaa !23
  store { i64, ptr } %t111, ptr %l54, !tbaa !27
  %t118 = getelementptr %"compiler/check:reflVal", ptr %l2, i32 0, i32 2
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i32, ptr %t122, i64 %t119
  %t124 = load i32, ptr %t123, !tbaa !33
  store i32 %t124, ptr %l56, !tbaa !23
  %t125 = icmp sge i64 0, 0
  br i1 %t125, label %bb19, label %bb20
bb19:
  %t127 = icmp sle i64 0, 1152921504606846975
  br i1 %t127, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_c2468d0e741d9164_dbacc6d57ee844a8)
  unreachable
bb21:
  %t129 = mul i64 0, 8
  %t130 = insertvalue { i64, ptr } undef, i64 0, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t131, ptr %l59, !tbaa !27
  %t132 = icmp sge i64 0, 0
  br i1 %t132, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_c2468d0e741d9164_dbacc6d57ee844a8)
  unreachable
bb23:
  %t134 = icmp sle i64 0, 1152921504606846975
  br i1 %t134, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_c26cedf47b5c0c71_e777f9dba4d45095)
  unreachable
bb25:
  %t136 = mul i64 0, 8
  %t137 = insertvalue { i64, ptr } undef, i64 0, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t139 = load ptr, ptr %l50, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l51
  %t141 = load %"compiler/source:Span", ptr %l52
  %t142 = load i32, ptr %l53, !tbaa !23
  %t143 = load i32, ptr %l56, !tbaa !23
  %t144 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t146 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t139, %"compiler/source:Span" %t140, %"compiler/source:Span" %t141, i32 %t142, i32 %t143, { i64, ptr } %t144, { i64, ptr } %t138)
  store ptr %t146, ptr %l63
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_c26cedf47b5c0c71_e777f9dba4d45095)
  unreachable
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t147 = load ptr, ptr %l63, !tbaa !29
  store ptr %t147, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroWritableRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %l26 = alloca ptr
  %l28 = alloca ptr
  %rv = alloca i1
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
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l8, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t13)
  store i32 %t16, ptr %l11
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t18 = load i32, ptr %l11, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t19, ptr %l12
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l5, !tbaa !29
  %t21 = load i32, ptr %l12, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l13
  br label %bb3
bb3:
  %t23 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t25 = trunc i64 21 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb4, label %bb5
bb4:
  store i1 true, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t34 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t29, ptr %t30)
  store i1 %t34, ptr %l20
  br label %bb7
bb7:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l21, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l22
  %t38 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyToWritable(ptr %v0)
  store %"compiler/diagmsg:Msg" %t38, ptr %l23
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t39 = load ptr, ptr %l21, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l22
  %t41 = load %"compiler/diagmsg:Msg", ptr %l23
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t39, %"compiler/source:Span" %t40, %"compiler/diagmsg:Msg" %t41)
  store i64 %t42, ptr %l24
  br label %bb11
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t45)
  store ptr %t47, ptr %l28
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l26, !tbaa !29
  %t49 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  br label %bb14
bb14:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameJump(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l64 = alloca i1
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca i64
  %l73 = alloca { i64, ptr }
  %l76 = alloca i64
  %l81 = alloca ptr
  %l84 = alloca i32
  %l87 = alloca i32
  %l88 = alloca i1
  %l94 = alloca i1
  %l96 = alloca i1
  %l100 = alloca i1
  %l107 = alloca { i64, ptr }
  %l108 = alloca i64
  %l113 = alloca { i64, ptr }
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
  store ptr %t6, ptr %l3, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  store ptr %t8, ptr %l15, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l18
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l15, !tbaa !29
  %t15 = load i32, ptr %l18, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t14, i32 %t15)
  store { i64, ptr } %t16, ptr %l19
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  %t18 = load ptr, ptr %l3, !tbaa !29
  store ptr %t18, ptr %l20, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l23
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l20, !tbaa !29
  %t25 = load i32, ptr %l23, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store { i64, ptr } %t26, ptr %l24
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t27, ptr %l5, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t36 = icmp ne i64 %t30, %t33
  br i1 %t36, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l6, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp sgt i64 %t43, %t44
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb13
bb10:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = sub i64 %t53, %t54
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = add i64 %t57, %t58
  %t63 = sub i64 %t61, 1
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = sdiv i64 %t63, %t64
  store i64 %t67, ptr %l39, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb12
bb12:
  %t69 = load i64, ptr %l39, !tbaa !24
  store i64 %t69, ptr %l36, !tbaa !24
  br label %bb13
bb13:
  %t70 = load i64, ptr %l36, !tbaa !24
  store i64 %t70, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb15, label %bb16
bb15:
  br label %bb28
bb16:
  br label %bb17
bb17:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = mul i64 %t80, %t81
  %t87 = add i64 %t79, %t84
  store i64 %t87, ptr %l11, !tbaa !24
  %t89 = load ptr, ptr %l3, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t90, ptr %l58, !tbaa !27
  %t91 = load i64, ptr %l11, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i32, ptr %t94, i64 %t91
  %t96 = load i32, ptr %t95, !tbaa !33
  %t97 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t97, ptr %l61, !tbaa !27
  %t98 = load i64, ptr %l11, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i32, ptr %t101, i64 %t98
  %t103 = load i32, ptr %t102, !tbaa !33
  %t107 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t89, i32 %t96, i32 %t103)
  store i1 %t107, ptr %l64
  br label %bb18
bb18:
  %t108 = load i1, ptr %l64, !tbaa !21
  %t109 = xor i1 %t108, true
  br i1 %t109, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb23
bb20:
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t112 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t112, ptr %l68, !tbaa !27
  %t113 = load i64, ptr %l11, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t113
  %t118 = load i32, ptr %t117, !tbaa !33
  %t121 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t111, i32 %t118)
  store i64 %t121, ptr %l71
  br label %bb21
bb21:
  %t122 = load ptr, ptr %l3, !tbaa !29
  %t123 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t123, ptr %l73, !tbaa !27
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i32, ptr %t127, i64 %t124
  %t129 = load i32, ptr %t128, !tbaa !33
  %t132 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t122, i32 %t129)
  store i64 %t132, ptr %l76
  br label %bb22
bb22:
  %t133 = load i64, ptr %l71, !tbaa !24
  %t134 = load i64, ptr %l76, !tbaa !24
  %t135 = icmp ne i64 %t133, %t134
  store i1 %t135, ptr %l66, !tbaa !21
  br label %bb23
bb23:
  %t137 = load i1, ptr %l66, !tbaa !21
  br i1 %t137, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t139 = load i64, ptr %l10, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l10, !tbaa !24
  br label %bb14
bb28:
  %t143 = load ptr, ptr %l3, !tbaa !29
  store ptr %t143, ptr %l81, !tbaa !29
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t145 = load i32, ptr %l1, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l84
  br label %bb29
bb29:
  %t149 = load ptr, ptr %l3, !tbaa !29
  %t150 = load i32, ptr %l2, !tbaa !23
  %t153 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t149, i32 %t150)
  store i32 %t153, ptr %l87
  br label %bb30
bb30:
  %t154 = load ptr, ptr %l81, !tbaa !29
  %t155 = load i32, ptr %l84, !tbaa !23
  %t156 = load i32, ptr %l87, !tbaa !23
  %t157 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t154, i32 %t155, i32 %t156)
  store i1 %t157, ptr %l88
  br label %bb31
bb31:
  %t158 = load i1, ptr %l88, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t162 = load ptr, ptr %l3, !tbaa !29
  %t163 = load i32, ptr %l1, !tbaa !23
  %t164 = load i32, ptr %l2, !tbaa !23
  %t168 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t162, i32 %t163, i32 %t164)
  store i1 %t168, ptr %l94
  br label %bb35
bb35:
  %t169 = load i1, ptr %l94, !tbaa !21
  %t170 = xor i1 %t169, true
  br i1 %t170, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb39
bb37:
  %t172 = load ptr, ptr %l3, !tbaa !29
  %t173 = load i32, ptr %l2, !tbaa !23
  %t174 = load i32, ptr %l1, !tbaa !23
  %t178 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t172, i32 %t173, i32 %t174)
  store i1 %t178, ptr %l100
  br label %bb38
bb38:
  %t179 = load i1, ptr %l100, !tbaa !21
  %t180 = xor i1 %t179, true
  store i1 %t180, ptr %l96, !tbaa !21
  br label %bb39
bb39:
  %t182 = load i1, ptr %l96, !tbaa !21
  br i1 %t182, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 2
  %t190 = load i32, ptr %l1, !tbaa !23
  %t193 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t189, i32 %t190)
  store { i64, ptr } %t193, ptr %l107
  br label %bb43
bb43:
  %t194 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 0
  store i64 %t195, ptr %l108, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/check:Checker", ptr %t196, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t201 = getelementptr %"compiler/generic:Program", ptr %t199, i32 0, i32 2
  %t202 = load i32, ptr %l2, !tbaa !23
  %t205 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t201, i32 %t202)
  store { i64, ptr } %t205, ptr %l113
  br label %bb44
bb44:
  %t206 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  %t208 = load i64, ptr %l108, !tbaa !24
  %t210 = icmp eq i64 %t208, %t207
  call void @__olang_scope_close(ptr %s0)
  store i1 %t210, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t7 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t14 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t10, i32 %a1)
  store { i64, ptr } %t14, ptr %l12
  br label %bb2
bb2:
  %t15 = load { i64, ptr }, ptr %l12, !tbaa !27
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
  store { i64, ptr } %t28, ptr %l19, !tbaa !27
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 %t29
  %t34 = load i32, ptr %t33, !tbaa !33
  %t36 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t36, i32 %t34)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb3
bb9:
  %t44 = load ptr, ptr %lp2
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleUnset(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/check:unsetCand"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/definit:Verdict"
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca %"compiler/source:Span"
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca { i64, [3 x i64] }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l26 = alloca i64
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca %"compiler/check:unsetCand"
  %l44 = alloca i1
  %l45 = alloca i64
  %l48 = alloca i64
  %l50 = alloca i1
  %l54 = alloca ptr
  %l63 = alloca ptr
  %l69 = alloca %"compiler/definit:Verdict"
  %l84 = alloca ptr
  %l89 = alloca i1
  %l90 = alloca i1
  %l92 = alloca i1
  %l97 = alloca i1
  %l103 = alloca ptr
  %l123 = alloca ptr
  %l128 = alloca ptr
  %l132 = alloca %"compiler/typed:Local"
  %l134 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l137 = alloca i64
  %l138 = alloca { i64, ptr }
  %l141 = alloca i1
  %l142 = alloca ptr
  %l147 = alloca i32
  %l148 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l151 = alloca i64
  %l154 = alloca ptr
  %l161 = alloca { i64, [3 x i64] }
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l168 = alloca %"compiler/diagmsg:Msg"
  %l169 = alloca i64
  %l170 = alloca ptr
  %l177 = alloca { i64, [3 x i64] }
  %l178 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l184 = alloca %"compiler/diagmsg:Msg"
  %l185 = alloca i64
  %l188 = alloca i1
  %l190 = alloca %"compiler/diagmsg:Msg"
  %l193 = alloca %"compiler/diagmsg:Msg"
  %l196 = alloca %"compiler/diagmsg:Msg"
  %l199 = alloca %"compiler/diagmsg:Msg"
  %l202 = alloca %"compiler/diagmsg:Msg"
  %l205 = alloca %"compiler/diagmsg:Msg"
  %l208 = alloca %"compiler/diagmsg:Msg"
  %s3 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t214 = alloca { i64, [3 x i64] }, align 8
  %t342 = alloca { i64, [3 x i64] }, align 8
  %t372 = alloca { i64, [3 x i64] }, align 8
  %t489 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 112
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2eLen__H7de3be79b8c6c838ec83b81887d1384a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l26
  br label %bb1
bb1:
  %t6 = load i64, ptr %l26, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l1, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 112
  store ptr %t22, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t24 = load i64, ptr %l3, !tbaa !24
  store i64 %t24, ptr %l34, !tbaa !24
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2eLen__H7de3be79b8c6c838ec83b81887d1384a(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l36
  br label %bb6
bb6:
  %t28 = load i64, ptr %l34, !tbaa !24
  %t29 = load i64, ptr %l36, !tbaa !24
  %t30 = icmp slt i64 %t28, %t29
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb113
bb8:
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = call %"compiler/check:unsetCand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2eAt_3ccompiler_2fcheck_3aunsetCand_3e(ptr %v0, ptr %t34, i64 %t35)
  store %"compiler/check:unsetCand" %t38, ptr %l41
  br label %bb10
bb10:
  %t39 = load %"compiler/check:unsetCand", ptr %l41
  store %"compiler/check:unsetCand" %t39, ptr %l4
  %t40 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb14
bb12:
  %t45 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 0
  %t46 = load i64, ptr %t45, !tbaa !24
  store i64 %t46, ptr %l45, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 14
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t49)
  store i64 %t51, ptr %l48
  br label %bb13
bb13:
  %t52 = load i64, ptr %l45, !tbaa !24
  %t53 = load i64, ptr %l48, !tbaa !24
  %t54 = icmp sge i64 %t52, %t53
  store i1 %t54, ptr %l44, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l44, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb18
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 14
  %t60 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t59, i64 %t61)
  store ptr %t64, ptr %l54
  br label %bb17
bb17:
  %t65 = load ptr, ptr %l54, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 11
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = icmp eq ptr %t68, null
  store i1 %t70, ptr %l50, !tbaa !21
  br label %bb18
bb18:
  %t72 = load i1, ptr %l50, !tbaa !21
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 2
  %t75 = load i64, ptr %t74, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t73, i64 %t75)
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb112
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 14
  %t81 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t85 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t80, i64 %t82)
  store ptr %t85, ptr %l63
  br label %bb23
bb23:
  %t86 = load ptr, ptr %l63, !tbaa !29
  store ptr %t86, ptr %l5, !tbaa !29
  %t87 = load ptr, ptr %l5, !tbaa !29
  %t88 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 1
  %t89 = load i64, ptr %t88, !tbaa !24
  %t91 = trunc i64 %t89 to i32
  %t93 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 7
  %t94 = load i1, ptr %t93, !tbaa !21
  %t98 = call %"compiler/definit:Verdict" @compiler_2fdefinit_2eVerdict_2eJudge(ptr %v0, ptr %t87, i32 %t91, i1 %t94)
  store %"compiler/definit:Verdict" %t98, ptr %l69
  br label %bb24
bb24:
  %t99 = load %"compiler/definit:Verdict", ptr %l69
  store %"compiler/definit:Verdict" %t99, ptr %l6
  %t100 = getelementptr %"compiler/definit:Verdict", ptr %l6, i32 0, i32 0
  %t101 = load i1, ptr %t100, !tbaa !21
  %t103 = getelementptr %"compiler/definit:Verdict", ptr %l6, i32 0, i32 1
  %t104 = load %"compiler/source:Span", ptr %t103
  store %"compiler/source:Span" %t104, ptr %l8
  %t106 = getelementptr %"compiler/definit:Verdict", ptr %l6, i32 0, i32 2
  %t107 = load i32, ptr %t106, !range !{i32 0, i32 6}
  store i32 %t107, ptr %l9
  %t109 = getelementptr %"compiler/definit:Verdict", ptr %l6, i32 0, i32 3
  %t110 = load %"compiler/source:Span", ptr %t109
  store %"compiler/source:Span" %t110, ptr %l10
  %t114 = xor i1 %t101, true
  br i1 %t114, label %bb25, label %bb26
bb25:
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 2
  %t118 = load i64, ptr %t117, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t116, i64 %t118)
  br label %bb27
bb26:
  br label %bb44
bb27:
  %t121 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 4
  %t122 = load i64, ptr %t121, !tbaa !24
  %t124 = icmp sge i64 %t122, 0
  br i1 %t124, label %bb28, label %bb29
bb28:
  %t126 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 4
  %t127 = load i64, ptr %t126, !tbaa !24
  store i1 true, ptr %l12, !tbaa !21
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 111
  %t135 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eRefMu_H262fdcc49aab606e6e6c369788183545(ptr %v0, ptr %v0, ptr %t131, i64 %t127)
  store ptr %t135, ptr %l84
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t136 = load ptr, ptr %l84, !tbaa !29
  %t138 = load i1, ptr %l12, !tbaa !21
  %t141 = getelementptr %"compiler/check:ValueAsk", ptr %t136, i32 0, i32 6
  store i1 %t138, ptr %t141, !tbaa !21
  br label %bb31
bb31:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 6
  %t144 = load i32, ptr %t143, !tbaa !23
  %t147 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunsetLowers(ptr %v0, ptr %t142, i32 %t144)
  store i1 %t147, ptr %l89
  br label %bb32
bb32:
  %t148 = load i1, ptr %l89, !tbaa !21
  br i1 %t148, label %bb33, label %bb34
bb33:
  %t149 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 3
  %t150 = load i1, ptr %t149, !tbaa !21
  br i1 %t150, label %bb35, label %bb36
bb34:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb39
bb35:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb38
bb36:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 2
  %t158 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 6
  %t159 = load i32, ptr %t158, !tbaa !23
  %t162 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t157, i32 %t159)
  store i1 %t162, ptr %l97
  br label %bb37
bb37:
  %t163 = load i1, ptr %l97, !tbaa !21
  %t164 = xor i1 %t163, true
  store i1 %t164, ptr %l92, !tbaa !21
  br label %bb38
bb38:
  %t166 = load i1, ptr %l92, !tbaa !21
  store i1 %t166, ptr %l90, !tbaa !21
  br label %bb39
bb39:
  %t167 = load i1, ptr %l90, !tbaa !21
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t168 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 1
  %t169 = load i64, ptr %t168, !tbaa !24
  store i1 true, ptr %l15, !tbaa !21
  %t171 = load ptr, ptr %l5, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Body", ptr %t171, i32 0, i32 7
  %t177 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v0, ptr %t173, i64 %t169)
  store ptr %t177, ptr %l103
  br label %bb42
bb41:
  br label %bb43
bb42:
  %t178 = load ptr, ptr %l103, !tbaa !29
  %t180 = load i1, ptr %l15, !tbaa !21
  %t183 = getelementptr %"compiler/typed:Local", ptr %t178, i32 0, i32 6
  store i1 %t180, ptr %t183, !tbaa !21
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %bb112
bb44:
  %t184 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 3
  %t185 = load i1, ptr %t184, !tbaa !21
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb45, label %bb46
bb45:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t190 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 2
  %t191 = load i64, ptr %t190, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t189, i64 %t191)
  br label %bb47
bb46:
  br label %bb52
bb47:
  %t194 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 4
  %t195 = load i64, ptr %t194, !tbaa !24
  %t197 = icmp sge i64 %t195, 0
  br i1 %t197, label %bb48, label %bb49
bb48:
  %t199 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 4
  %t200 = load i64, ptr %t199, !tbaa !24
  %t202 = load ptr, ptr %l5, !tbaa !29
  %t204 = getelementptr %"compiler/typed:Body", ptr %t202, i32 0, i32 3
  %t205 = load i64, ptr %t204, !tbaa !24
  %t206 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t207 = load i32, ptr %t206, !tbaa !23
  %t209 = sext i32 %t207 to i64
  %t210 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t211 = load i32, ptr %t210, !tbaa !23
  %t213 = sext i32 %t211 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t214
  %t215 = getelementptr { i64, [3 x i64] }, ptr %t214, i32 0, i32 0
  store i64 3, ptr %t215
  %t217 = insertvalue { i64, i64, i64 } undef, i64 %t205, 0
  %t219 = insertvalue { i64, i64, i64 } %t217, i64 %t209, 1
  %t221 = insertvalue { i64, i64, i64 } %t219, i64 %t213, 2
  %t222 = getelementptr { i64, [3 x i64] }, ptr %t214, i32 0, i32 1
  store { i64, i64, i64 } %t221, ptr %t222
  %t223 = load { i64, [3 x i64] }, ptr %t214
  store { i64, [3 x i64] } %t223, ptr %l18
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 111
  %t231 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eRefMu_H262fdcc49aab606e6e6c369788183545(ptr %v0, ptr %v0, ptr %t227, i64 %t200)
  store ptr %t231, ptr %l123
  br label %bb50
bb49:
  br label %bb51
bb50:
  %t232 = load ptr, ptr %l123, !tbaa !29
  %t234 = load { i64, [3 x i64] }, ptr %l18
  %t237 = getelementptr %"compiler/check:ValueAsk", ptr %t232, i32 0, i32 7
  store { i64, [3 x i64] } %t234, ptr %t237
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s3)
  br label %bb112
bb52:
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t239 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 2
  %t240 = load i64, ptr %t239, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t238, i64 %t240)
  br label %bb53
bb53:
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l128, !tbaa !29
  %t244 = load ptr, ptr %l5, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Body", ptr %t244, i32 0, i32 7
  %t247 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 1
  %t248 = load i64, ptr %t247, !tbaa !24
  %t251 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t246, i64 %t248)
  store %"compiler/typed:Local" %t251, ptr %l132
  br label %bb54
bb54:
  %t252 = getelementptr %"compiler/typed:Local", ptr %l132, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  %t254 = load ptr, ptr %l128, !tbaa !29
  %t256 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t254, i32 %t253)
  store { i64, ptr } %t256, ptr %l134
  br label %bb55
bb55:
  %t257 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t257, ptr %l20, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l135, !tbaa !27
  %t258 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t258, ptr %l136, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 0
  store i64 %t260, ptr %l137, !tbaa !24
  %t261 = load i64, ptr %l137, !tbaa !24
  %t262 = mul i64 %t261, 1
  %t263 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t262)
  %t264 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  store { i64, ptr } %t265, ptr %l138, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = load i64, ptr %l137, !tbaa !24
  %t271 = mul i64 %t270, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t267, ptr %t269, i64 %t271, i1 false)
  %t272 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t272, ptr %l21, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 6
  %t275 = load i32, ptr %t274, !tbaa !23
  %t278 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %t273, i32 %t275)
  store i1 %t278, ptr %l141
  br label %bb56
bb56:
  %t279 = load i1, ptr %l141, !tbaa !21
  br i1 %t279, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  %t280 = load ptr, ptr %l0, !tbaa !29
  store ptr %t280, ptr %l142, !tbaa !29
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/check:Checker", ptr %t281, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t286 = getelementptr %"compiler/generic:Program", ptr %t284, i32 0, i32 2
  %t287 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 6
  %t288 = load i32, ptr %t287, !tbaa !23
  %t291 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t286, i32 %t288)
  store i32 %t291, ptr %l147
  br label %bb59
bb58:
  br label %bb64
bb59:
  %t292 = load ptr, ptr %l142, !tbaa !29
  %t293 = load i32, ptr %l147, !tbaa !23
  %t294 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t292, i32 %t293)
  store { i64, ptr } %t294, ptr %l148
  br label %bb60
bb60:
  %t295 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t297 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = add i64 %t296, %t299
  %t301 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t302 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t303 = add i64 %t300, %t302
  %t304 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t303)
  call void @olang_textcopy(ptr %t304, ptr %t295, i64 %t296)
  %t305 = getelementptr i8, ptr %t304, i64 %t296
  call void @olang_textcopy(ptr %t305, ptr %t298, i64 %t299)
  %t306 = getelementptr i8, ptr %t305, i64 %t299
  call void @olang_textcopy(ptr %t306, ptr %t301, i64 %t302)
  %t307 = insertvalue { i64, ptr } undef, i64 %t303, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t304, 1
  store { i64, ptr } %t308, ptr %l149, !tbaa !27
  %t309 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  %t311 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 0
  store i64 %t312, ptr %l151, !tbaa !24
  %t314 = load i64, ptr %l151, !tbaa !24
  %t315 = icmp eq i64 %t310, %t314
  br i1 %t315, label %bb61, label %bb62
bb61:
  %t317 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !27
  %t321 = load i64, ptr %l151, !tbaa !24
  %t322 = mul i64 %t321, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t318, ptr %t320, i64 %t322, i1 false)
  br label %bb63
bb62:
  %t323 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t323, ptr %l21, !tbaa !27
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s10)
  br label %bb64
bb64:
  store i64 -1, ptr %l22, !tbaa !24
  %t324 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 7
  %t325 = load i1, ptr %t324, !tbaa !21
  br i1 %t325, label %bb65, label %bb66
bb65:
  %t327 = load ptr, ptr %l1, !tbaa !29
  store ptr %t327, ptr %l154, !tbaa !29
  %t328 = load ptr, ptr %l5, !tbaa !29
  %t330 = getelementptr %"compiler/typed:Body", ptr %t328, i32 0, i32 3
  %t331 = load i64, ptr %t330, !tbaa !24
  %t332 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 5
  %t333 = getelementptr %"compiler/source:Span", ptr %t332, i32 0, i32 0
  %t334 = load i32, ptr %t333, !tbaa !23
  %t336 = sext i32 %t334 to i64
  %t337 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 5
  %t338 = getelementptr %"compiler/source:Span", ptr %t337, i32 0, i32 1
  %t339 = load i32, ptr %t338, !tbaa !23
  %t341 = sext i32 %t339 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t342
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 0
  store i64 3, ptr %t343
  %t345 = insertvalue { i64, i64, i64 } undef, i64 %t331, 0
  %t347 = insertvalue { i64, i64, i64 } %t345, i64 %t336, 1
  %t349 = insertvalue { i64, i64, i64 } %t347, i64 %t341, 2
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 1
  store { i64, i64, i64 } %t349, ptr %t350
  %t351 = load { i64, [3 x i64] }, ptr %t342
  store { i64, [3 x i64] } %t351, ptr %l161
  %t352 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t352, ptr %l162, !tbaa !27
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 6
  %t355 = load i32, ptr %t354, !tbaa !23
  %t358 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t353, i32 %t355)
  store { i64, ptr } %t358, ptr %l165
  br label %bb67
bb66:
  %t359 = load ptr, ptr %l1, !tbaa !29
  store ptr %t359, ptr %l170, !tbaa !29
  %t360 = load ptr, ptr %l5, !tbaa !29
  %t362 = getelementptr %"compiler/typed:Body", ptr %t360, i32 0, i32 3
  %t363 = load i64, ptr %t362, !tbaa !24
  %t364 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t365 = load i32, ptr %t364, !tbaa !23
  %t367 = sext i32 %t365 to i64
  %t368 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t369 = load i32, ptr %t368, !tbaa !23
  %t371 = sext i32 %t369 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t372
  %t373 = getelementptr { i64, [3 x i64] }, ptr %t372, i32 0, i32 0
  store i64 3, ptr %t373
  %t375 = insertvalue { i64, i64, i64 } undef, i64 %t363, 0
  %t377 = insertvalue { i64, i64, i64 } %t375, i64 %t367, 1
  %t379 = insertvalue { i64, i64, i64 } %t377, i64 %t371, 2
  %t380 = getelementptr { i64, [3 x i64] }, ptr %t372, i32 0, i32 1
  store { i64, i64, i64 } %t379, ptr %t380
  %t381 = load { i64, [3 x i64] }, ptr %t372
  store { i64, [3 x i64] } %t381, ptr %l177
  %t382 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t382, ptr %l178, !tbaa !27
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 6
  %t385 = load i32, ptr %t384, !tbaa !23
  %t388 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t383, i32 %t385)
  store { i64, ptr } %t388, ptr %l181
  br label %bb70
bb67:
  %t389 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t396 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t397 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t400 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldUnassigned(ptr %v0, ptr %v0, ptr %s3, ptr %v0, { i64, ptr } %t397, { i64, ptr } %t395, { i64, ptr } %t396)
  store %"compiler/diagmsg:Msg" %t400, ptr %l168
  br label %bb68
bb68:
  %t401 = load ptr, ptr %l154, !tbaa !29
  %t402 = load { i64, [3 x i64] }, ptr %l161
  %t403 = load %"compiler/diagmsg:Msg", ptr %l168
  %t404 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t401, { i64, [3 x i64] } %t402, %"compiler/diagmsg:Msg" %t403)
  store i64 %t404, ptr %l169
  br label %bb69
bb69:
  %t405 = load i64, ptr %l169, !tbaa !24
  store i64 %t405, ptr %l22, !tbaa !24
  br label %bb73
bb70:
  %t406 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t406, 0
  %t408 = extractvalue { i64, ptr } %t406, 1
  %t409 = mul i64 %t407, 1
  %t410 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t409)
  call void @llvm.memcpy.p0.p0.i64(ptr %t410, ptr %t408, i64 %t409, i1 false)
  %t411 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr %t410, 1
  %t413 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t414 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t417 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadUnassigned(ptr %v0, ptr %v0, ptr %s3, ptr %v0, { i64, ptr } %t414, { i64, ptr } %t412, { i64, ptr } %t413)
  store %"compiler/diagmsg:Msg" %t417, ptr %l184
  br label %bb71
bb71:
  %t418 = load ptr, ptr %l170, !tbaa !29
  %t419 = load { i64, [3 x i64] }, ptr %l177
  %t420 = load %"compiler/diagmsg:Msg", ptr %l184
  %t421 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t418, { i64, [3 x i64] } %t419, %"compiler/diagmsg:Msg" %t420)
  store i64 %t421, ptr %l185
  br label %bb72
bb72:
  %t422 = load i64, ptr %l185, !tbaa !24
  store i64 %t422, ptr %l22, !tbaa !24
  br label %bb73
bb73:
  %t423 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t425 = trunc i64 0 to i32
  %t426 = icmp eq i32 %t423, %t425
  br i1 %t426, label %bb74, label %bb75
bb74:
  %t428 = getelementptr %"compiler/check:unsetCand", ptr %l4, i32 0, i32 7
  %t429 = load i1, ptr %t428, !tbaa !21
  store i1 %t429, ptr %l188, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb76
bb76:
  %t431 = load i1, ptr %l188, !tbaa !21
  br i1 %t431, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s3)
  br label %bb112
bb78:
  br label %bb79
bb79:
  %t432 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t434 = trunc i64 0 to i32
  %t435 = icmp eq i32 %t432, %t434
  br i1 %t435, label %bb80, label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb84
bb82:
  %t437 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedDecl(ptr %v0)
  store %"compiler/diagmsg:Msg" %t437, ptr %l193
  br label %bb83
bb83:
  %t438 = load %"compiler/diagmsg:Msg", ptr %l193
  store %"compiler/diagmsg:Msg" %t438, ptr %l190
  br label %bb110
bb84:
  %t439 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t441 = trunc i64 1 to i32
  %t442 = icmp eq i32 %t439, %t441
  br i1 %t442, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t444 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedNoElse(ptr %v0)
  store %"compiler/diagmsg:Msg" %t444, ptr %l196
  br label %bb88
bb88:
  %t445 = load %"compiler/diagmsg:Msg", ptr %l196
  store %"compiler/diagmsg:Msg" %t445, ptr %l190
  br label %bb110
bb89:
  %t446 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t448 = trunc i64 2 to i32
  %t449 = icmp eq i32 %t446, %t448
  br i1 %t449, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t451 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedBranch(ptr %v0)
  store %"compiler/diagmsg:Msg" %t451, ptr %l199
  br label %bb93
bb93:
  %t452 = load %"compiler/diagmsg:Msg", ptr %l199
  store %"compiler/diagmsg:Msg" %t452, ptr %l190
  br label %bb110
bb94:
  %t453 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t455 = trunc i64 3 to i32
  %t456 = icmp eq i32 %t453, %t455
  br i1 %t456, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t458 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedLoop(ptr %v0)
  store %"compiler/diagmsg:Msg" %t458, ptr %l202
  br label %bb98
bb98:
  %t459 = load %"compiler/diagmsg:Msg", ptr %l202
  store %"compiler/diagmsg:Msg" %t459, ptr %l190
  br label %bb110
bb99:
  %t460 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t462 = trunc i64 4 to i32
  %t463 = icmp eq i32 %t460, %t462
  br i1 %t463, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t465 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedArm(ptr %v0)
  store %"compiler/diagmsg:Msg" %t465, ptr %l205
  br label %bb103
bb103:
  %t466 = load %"compiler/diagmsg:Msg", ptr %l205
  store %"compiler/diagmsg:Msg" %t466, ptr %l190
  br label %bb110
bb104:
  %t467 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t469 = trunc i64 5 to i32
  %t470 = icmp eq i32 %t467, %t469
  br i1 %t470, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb109
bb107:
  %t472 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedClause(ptr %v0)
  store %"compiler/diagmsg:Msg" %t472, ptr %l208
  br label %bb108
bb108:
  %t473 = load %"compiler/diagmsg:Msg", ptr %l208
  store %"compiler/diagmsg:Msg" %t473, ptr %l190
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_f865849e169fa2c9_a08c637f3ac5dd5)
  unreachable
bb110:
  %t474 = load %"compiler/diagmsg:Msg", ptr %l190
  %t475 = load ptr, ptr %l1, !tbaa !29
  %t476 = load i64, ptr %l22, !tbaa !24
  %t477 = load ptr, ptr %l5, !tbaa !29
  %t479 = getelementptr %"compiler/typed:Body", ptr %t477, i32 0, i32 3
  %t480 = load i64, ptr %t479, !tbaa !24
  %t481 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t482 = load i32, ptr %t481, !tbaa !23
  %t484 = sext i32 %t482 to i64
  %t485 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t486 = load i32, ptr %t485, !tbaa !23
  %t488 = sext i32 %t486 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t489
  %t490 = getelementptr { i64, [3 x i64] }, ptr %t489, i32 0, i32 0
  store i64 3, ptr %t490
  %t492 = insertvalue { i64, i64, i64 } undef, i64 %t480, 0
  %t494 = insertvalue { i64, i64, i64 } %t492, i64 %t484, 1
  %t496 = insertvalue { i64, i64, i64 } %t494, i64 %t488, 2
  %t497 = getelementptr { i64, [3 x i64] }, ptr %t489, i32 0, i32 1
  store { i64, i64, i64 } %t496, ptr %t497
  %t498 = load { i64, [3 x i64] }, ptr %t489
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t475, i64 %t476, { i64, [3 x i64] } %t498, %"compiler/diagmsg:Msg" %t474)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s3)
  br label %bb112
bb112:
  %t504 = load i64, ptr %l3, !tbaa !24
  %t506 = add i64 %t504, 1
  store i64 %t506, ptr %l3, !tbaa !24
  br label %bb5
bb113:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslice(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l8 = alloca ptr
  %l13 = alloca ptr
  %l20 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v4, ptr %t1, ptr %a2)
  store ptr %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l8, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  %t15 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t11, %"compiler/source:Span" %t12)
  store ptr %t15, ptr %l13
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t16 = load ptr, ptr %l13, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l1
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceOf(ptr %v0, ptr %v4, ptr %v2, ptr %v3, ptr %v4, ptr %t17, %"compiler/source:Span" %t18, ptr %t19, ptr %a3, ptr %a4, i32 1)
  store ptr %t28, ptr %l20
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l20, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca ptr
  %l33 = alloca i32
  %l36 = alloca i1
  %l37 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l66 = alloca i1
  %l69 = alloca ptr
  %l75 = alloca i64
  %l78 = alloca %"compiler/source:Span"
  %l83 = alloca i32
  %l86 = alloca ptr
  %l88 = alloca ptr
  %l95 = alloca i32
  %l100 = alloca i32
  %l109 = alloca ptr
  %l112 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l118 = alloca { i64, ptr }
  %l120 = alloca %"compiler/diagmsg:Msg"
  %l121 = alloca i64
  %l124 = alloca ptr
  %l127 = alloca i64
  %l133 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca %"compiler/source:Span"
  %l137 = alloca i32
  %l140 = alloca { i64, ptr }
  %l142 = alloca %"compiler/diagmsg:Msg"
  %l143 = alloca i64
  %l146 = alloca ptr
  %l149 = alloca i64
  %l152 = alloca i1
  %l159 = alloca ptr
  %l162 = alloca ptr
  %l163 = alloca ptr
  %l164 = alloca %"compiler/source:Span"
  %l166 = alloca i32
  %l167 = alloca ptr
  %l168 = alloca ptr
  %l169 = alloca ptr
  %l170 = alloca ptr
  %l172 = alloca i32
  %l173 = alloca ptr
  %l175 = alloca %"compiler/source:Span"
  %l176 = alloca ptr
  %l179 = alloca ptr
  %l180 = alloca %"compiler/source:Span"
  %l181 = alloca %"compiler/source:Span"
  %l182 = alloca i64
  %l185 = alloca ptr
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l198 = alloca ptr
  %l200 = alloca ptr
  %l201 = alloca ptr
  %l202 = alloca ptr
  %l204 = alloca i32
  %l205 = alloca ptr
  %l207 = alloca %"compiler/source:Span"
  %l208 = alloca ptr
  %l212 = alloca i64
  %l217 = alloca ptr
  %l221 = alloca ptr
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca %"compiler/source:Span"
  %l224 = alloca i64
  %l227 = alloca ptr
  %l229 = alloca ptr
  %l230 = alloca ptr
  %l233 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l244 = alloca ptr
  %l245 = alloca %"compiler/source:Span"
  %l247 = alloca i32
  %l248 = alloca ptr
  %l250 = alloca ptr
  %l251 = alloca ptr
  %l253 = alloca i32
  %l254 = alloca ptr
  %l258 = alloca ptr
  %l259 = alloca %"compiler/source:Span"
  %l261 = alloca i32
  %l262 = alloca i32
  %l263 = alloca %"compiler/source:Span"
  %l269 = alloca i32
  %l273 = alloca ptr
  %l275 = alloca ptr
  %l276 = alloca ptr
  %l278 = alloca i32
  %l279 = alloca ptr
  %l283 = alloca i1
  %l284 = alloca i32
  %l288 = alloca ptr
  %l293 = alloca i32
  %l296 = alloca i32
  %l301 = alloca i32
  %l302 = alloca i32
  %l303 = alloca %"compiler/source:Span"
  %l309 = alloca i32
  %l310 = alloca ptr
  %l313 = alloca ptr
  %l319 = alloca %"compiler/typed:Slice"
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca ptr
  %t133 = alloca { i64, [4 x i64] }, align 8
  %t521 = alloca { i64, [5 x i64] }, align 8
  %t629 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = load %"compiler/source:Span", ptr %l1
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %t1, ptr %t2, %"compiler/source:Span" %t3)
  store i1 %t7, ptr %l27
  br label %bb1
bb1:
  %t8 = load i1, ptr %l27, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t9, %"compiler/source:Span" %t10)
  store ptr %t13, ptr %l30
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t14 = load ptr, ptr %l30, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  store ptr %t15, ptr %l6, !tbaa !29
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t19 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t17)
  store i32 %t19, ptr %l33
  br label %bb6
bb6:
  %t20 = load i32, ptr %l33, !tbaa !23
  store i32 %t20, ptr %l7, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i1 %t25, ptr %l36
  br label %bb7
bb7:
  %t26 = load i1, ptr %l36, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t27 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t27, ptr %l37, !tbaa !24
  br label %bb10
bb9:
  %t29 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t29, ptr %l37, !tbaa !24
  br label %bb10
bb10:
  %t31 = load i64, ptr %l37, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  store i64 4, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t32 = load i64, ptr %l10, !tbaa !24
  %t33 = load i64, ptr %l9, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load i64, ptr %l11, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb16
bb13:
  %t42 = load i64, ptr %l10, !tbaa !24
  %t43 = load i64, ptr %l9, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l11, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l11, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l46, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l46, !tbaa !24
  store i64 %t58, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t59 = load i64, ptr %l43, !tbaa !24
  store i64 %t59, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l13, !tbaa !24
  %t61 = load i64, ptr %l12, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb18, label %bb19
bb18:
  br label %bb31
bb19:
  br label %bb20
bb20:
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l13, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l14, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l7, !tbaa !23
  %t82 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t78, i32 %t79)
  store i1 %t82, ptr %l66
  br label %bb21
bb21:
  %t83 = load i1, ptr %l66, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l6, !tbaa !29
  store ptr %t87, ptr %l69, !tbaa !29
  %t88 = load ptr, ptr %l69, !tbaa !29
  %t89 = call ptr @__olang_scope_of(ptr %t88, ptr null)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t94 = load ptr, ptr %l69, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %t92, ptr %t86, ptr %t94)
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %l7, !tbaa !23
  %t104 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t100, i32 %t101)
  store i64 %t104, ptr %l75
  br label %bb26
bb26:
  %t105 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t106 = load i64, ptr %l75, !tbaa !24
  %t108 = and i64 %t106, %t105
  store i64 %t108, ptr %l8, !tbaa !24
  %t110 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t110, ptr %l78
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %l7, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l83
  br label %bb27
bb27:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l1
  %t123 = load ptr, ptr %l6, !tbaa !29
  store ptr %t123, ptr %l86, !tbaa !29
  %t124 = load ptr, ptr %l86, !tbaa !29
  %t125 = call ptr @__olang_scope_of(ptr %t124, ptr null)
  %t126 = ptrtoint ptr %t125 to i64
  %t128 = inttoptr i64 %t126 to ptr
  %t131 = load ptr, ptr %l86, !tbaa !29
  %t132 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t128, ptr %v4, ptr %t121, %"compiler/source:Span" %t122, ptr %t131)
  store ptr %t132, ptr %l88
  br label %bb28
bb28:
  store { i64, [4 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 0
  store i64 2, ptr %t134
  %t135 = load %"compiler/source:Span", ptr %l78
  %t136 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t135, 0
  %t137 = load i32, ptr %l83, !tbaa !23
  %t138 = insertvalue { %"compiler/source:Span", i32, ptr } %t136, i32 %t137, 1
  %t139 = load ptr, ptr %l88, !tbaa !29
  %t140 = insertvalue { %"compiler/source:Span", i32, ptr } %t138, ptr %t139, 2
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t140, ptr %t141
  %t142 = load { i64, [4 x i64] }, ptr %t133
  %t144 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t142, ptr %t144
  store ptr %t144, ptr %l6, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  %t152 = load i32, ptr %l7, !tbaa !23
  %t155 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t155, ptr %l95
  br label %bb29
bb29:
  %t156 = load i32, ptr %l95, !tbaa !23
  store i32 %t156, ptr %l7, !tbaa !23
  br label %bb30
bb30:
  %t157 = load i64, ptr %l13, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l13, !tbaa !24
  br label %bb17
bb31:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i32, ptr %l7, !tbaa !23
  %t165 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t161, i32 %t162)
  store i32 %t165, ptr %l100
  br label %bb32
bb32:
  %t166 = load i32, ptr %l100, !tbaa !23
  store i32 %t166, ptr %l15, !tbaa !23
  %t167 = load i32, ptr %l15, !tbaa !23
  %t168 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t171 = icmp eq i32 %t167, %t168
  br i1 %t171, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t173 = load i32, ptr %l7, !tbaa !23
  %t174 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t177 = icmp eq i32 %t173, %t174
  br i1 %t177, label %bb35, label %bb36
bb34:
  br label %bb115
bb35:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l1
  %t183 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t179, %"compiler/source:Span" %t180)
  store ptr %t183, ptr %l109
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s6)
  %t184 = load ptr, ptr %l109, !tbaa !29
  store ptr %t184, ptr %rv
  br label %ret
bb38:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l7, !tbaa !23
  %t189 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t185, i32 %t186)
  store i1 %t189, ptr %l112
  br label %bb39
bb39:
  %t190 = load i1, ptr %l112, !tbaa !21
  %t191 = xor i1 %t190, true
  br i1 %t191, label %bb40, label %bb41
bb40:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l114, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t194, ptr %l115
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l7, !tbaa !23
  %t199 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t195, i32 %t196)
  store { i64, ptr } %t199, ptr %l118
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t200 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  %t202 = extractvalue { i64, ptr } %t200, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  %t208 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %v0, ptr %v0, { i64, ptr } %t206)
  store %"compiler/diagmsg:Msg" %t208, ptr %l120
  br label %bb43
bb43:
  %t209 = load ptr, ptr %l114, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l115
  %t211 = load %"compiler/diagmsg:Msg", ptr %l120
  %t212 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t209, %"compiler/source:Span" %t210, %"compiler/diagmsg:Msg" %t211)
  store i64 %t212, ptr %l121
  br label %bb44
bb44:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load %"compiler/source:Span", ptr %l1
  %t217 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t213, %"compiler/source:Span" %t214)
  store ptr %t217, ptr %l124
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s6)
  %t218 = load ptr, ptr %l124, !tbaa !29
  store ptr %t218, ptr %rv
  br label %ret
bb46:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l7, !tbaa !23
  %t223 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s6, ptr %t219, i32 %t220, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d16, i32 0, i32 1) }, i64 2)
  store i64 %t223, ptr %l127
  br label %bb47
bb47:
  %t224 = load i64, ptr %l127, !tbaa !24
  store i64 %t224, ptr %l16, !tbaa !24
  %t225 = load i64, ptr %l16, !tbaa !24
  %t227 = icmp slt i64 %t225, 0
  br i1 %t227, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s9
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load i32, ptr %l7, !tbaa !23
  %t231 = load %"compiler/source:Span", ptr %l1
  %t235 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s9, ptr %s9, ptr %t229, i32 %t230, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, %"compiler/source:Span" %t231, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d18, i32 0, i32 1) }, i64 2, i1 false)
  store i1 %t235, ptr %l133
  br label %bb50
bb49:
  br label %bb58
bb50:
  %t236 = load i1, ptr %l133, !tbaa !21
  %t237 = xor i1 %t236, true
  br i1 %t237, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  %t239 = load ptr, ptr %l0, !tbaa !29
  store ptr %t239, ptr %l135, !tbaa !29
  %t240 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t240, ptr %l136
  %t241 = load i32, ptr %l7, !tbaa !23
  store i32 %t241, ptr %l137, !tbaa !23
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i32, ptr %l7, !tbaa !23
  %t246 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t242, i32 %t243)
  store { i64, ptr } %t246, ptr %l140
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t247 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  %t249 = extractvalue { i64, ptr } %t247, 1
  %t250 = mul i64 %t248, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t250)
  call void @llvm.memcpy.p0.p0.i64(ptr %t251, ptr %t249, i64 %t250, i1 false)
  %t252 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  %t255 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %v0, ptr %v0, { i64, ptr } %t253)
  store %"compiler/diagmsg:Msg" %t255, ptr %l142
  br label %bb54
bb54:
  %t256 = load ptr, ptr %l135, !tbaa !29
  %t257 = load %"compiler/source:Span", ptr %l136
  %t258 = load i32, ptr %l137, !tbaa !23
  %t259 = load %"compiler/diagmsg:Msg", ptr %l142
  %t260 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s10, ptr %v0, ptr %t256, %"compiler/source:Span" %t257, i32 %t258, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d19, i32 0, i32 1) }, %"compiler/diagmsg:Msg" %t259)
  store i64 %t260, ptr %l143
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s10)
  br label %bb56
bb56:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l1
  %t265 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t261, %"compiler/source:Span" %t262)
  store ptr %t265, ptr %l146
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s6)
  %t266 = load ptr, ptr %l146, !tbaa !29
  store ptr %t266, ptr %rv
  br label %ret
bb58:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l7, !tbaa !23
  %t271 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s6, ptr %t267, i32 %t268, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) }, i64 0)
  store i64 %t271, ptr %l149
  br label %bb59
bb59:
  %t272 = load i64, ptr %l149, !tbaa !24
  store i64 %t272, ptr %l17, !tbaa !24
  %t273 = load ptr, ptr %l4, !tbaa !29
  %t275 = icmp eq ptr %t273, null
  br i1 %t275, label %bb60, label %bb61
bb60:
  %t277 = load i64, ptr %l17, !tbaa !24
  %t279 = icmp slt i64 %t277, 0
  store i1 %t279, ptr %l152, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb62
bb62:
  %t281 = load i1, ptr %l152, !tbaa !21
  br i1 %t281, label %bb63, label %bb64
bb63:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t282, %"compiler/source:Span" %t283, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d21, i32 0, i32 1) })
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load %"compiler/source:Span", ptr %l1
  %t290 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t286, %"compiler/source:Span" %t287)
  store ptr %t290, ptr %l159
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s6)
  %t291 = load ptr, ptr %l159, !tbaa !29
  store ptr %t291, ptr %rv
  br label %ret
bb67:
  %t292 = load ptr, ptr %l3, !tbaa !29
  %t294 = icmp eq ptr %t292, null
  br i1 %t294, label %bb68, label %bb69
bb68:
  %t296 = load ptr, ptr %l0, !tbaa !29
  store ptr %t296, ptr %l163, !tbaa !29
  %t297 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t297, ptr %l164
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t298)
  store i32 %t300, ptr %l166
  br label %bb70
bb69:
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l168, !tbaa !29
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l169, !tbaa !29
  %t303 = load ptr, ptr %l3, !tbaa !29
  store ptr %t303, ptr %l170, !tbaa !29
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t304)
  store i32 %t306, ptr %l172
  br label %bb72
bb70:
  %t307 = load ptr, ptr %l163, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l164
  %t309 = load i32, ptr %l166, !tbaa !23
  %t310 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t307, %"compiler/source:Span" %t308, i32 %t309, i64 0)
  store ptr %t310, ptr %l167
  br label %bb71
bb71:
  %t311 = load ptr, ptr %l167, !tbaa !29
  store ptr %t311, ptr %l162, !tbaa !29
  br label %bb76
bb72:
  %t312 = load ptr, ptr %l169, !tbaa !29
  %t313 = load ptr, ptr %l170, !tbaa !29
  %t314 = load i32, ptr %l172, !tbaa !23
  %t315 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v0, ptr %t312, ptr %t313, i32 %t314)
  store ptr %t315, ptr %l173
  br label %bb73
bb73:
  %t316 = load ptr, ptr %l3, !tbaa !29
  %t318 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t316)
  store %"compiler/source:Span" %t318, ptr %l175
  br label %bb74
bb74:
  %t319 = load ptr, ptr %l168, !tbaa !29
  %t320 = load ptr, ptr %l173, !tbaa !29
  %t321 = load %"compiler/source:Span", ptr %l175
  %t322 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v4, ptr %t319, ptr %t320, %"compiler/source:Span" %t321)
  store ptr %t322, ptr %l176
  br label %bb75
bb75:
  %t323 = load ptr, ptr %l176, !tbaa !29
  store ptr %t323, ptr %l162, !tbaa !29
  br label %bb76
bb76:
  %t324 = load ptr, ptr %l162, !tbaa !29
  store ptr %t324, ptr %l18, !tbaa !29
  store ptr null, ptr %l19, !tbaa !29
  %t325 = load ptr, ptr %l4, !tbaa !29
  %t327 = icmp eq ptr %t325, null
  br i1 %t327, label %bb77, label %bb78
bb77:
  %t329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t329, ptr %l179, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t330, ptr %l180
  %t331 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t331, ptr %l181
  %t332 = load i64, ptr %l17, !tbaa !24
  store i64 %t332, ptr %l182, !tbaa !24
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load %"compiler/source:Span", ptr %l1
  %t335 = load ptr, ptr %l6, !tbaa !29
  store ptr %t335, ptr %l185, !tbaa !29
  %t336 = load ptr, ptr %l185, !tbaa !29
  %t337 = call ptr @__olang_scope_of(ptr %t336, ptr null)
  %t338 = ptrtoint ptr %t337 to i64
  %t340 = inttoptr i64 %t338 to ptr
  %t343 = load ptr, ptr %l185, !tbaa !29
  %t344 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t340, ptr %v0, ptr %t333, %"compiler/source:Span" %t334, ptr %t343)
  store ptr %t344, ptr %l187
  br label %bb79
bb78:
  %t345 = load ptr, ptr %l0, !tbaa !29
  store ptr %t345, ptr %l200, !tbaa !29
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l201, !tbaa !29
  %t347 = load ptr, ptr %l4, !tbaa !29
  store ptr %t347, ptr %l202, !tbaa !29
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t348)
  store i32 %t350, ptr %l204
  br label %bb93
bb79:
  %t351 = load ptr, ptr %l187, !tbaa !29
  store ptr %t351, ptr %l188, !tbaa !29
  %t352 = icmp sge i64 0, 0
  br i1 %t352, label %bb80, label %bb81
bb80:
  %t354 = icmp sle i64 0, 1152921504606846975
  br i1 %t354, label %bb82, label %bb83
bb81:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb82:
  %t356 = mul i64 0, 8
  %t357 = insertvalue { i64, ptr } undef, i64 0, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t358, ptr %l191, !tbaa !27
  %t359 = icmp sge i64 0, 0
  br i1 %t359, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb84:
  %t361 = icmp sle i64 0, 1152921504606846975
  br i1 %t361, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb86:
  %t363 = mul i64 0, 8
  %t364 = insertvalue { i64, ptr } undef, i64 0, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t365, ptr %l194, !tbaa !27
  %t366 = icmp sge i64 0, 0
  br i1 %t366, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb88:
  %t368 = icmp sle i64 0, 2305843009213693951
  br i1 %t368, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb90:
  %t370 = mul i64 0, 4
  %t371 = insertvalue { i64, ptr } undef, i64 0, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t373 = load ptr, ptr %l179, !tbaa !29
  %t374 = load %"compiler/source:Span", ptr %l180
  %t375 = load %"compiler/source:Span", ptr %l181
  %t376 = load i64, ptr %l182, !tbaa !24
  %t377 = load ptr, ptr %l188, !tbaa !29
  %t378 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t379 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t381 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t373, %"compiler/source:Span" %t374, %"compiler/source:Span" %t375, i64 %t376, ptr %t377, { i64, ptr } %t378, { i64, ptr } %t379, { i64, ptr } %t372)
  store ptr %t381, ptr %l198
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb92:
  %t382 = load ptr, ptr %l198, !tbaa !29
  store ptr %t382, ptr %l19, !tbaa !29
  br label %bb97
bb93:
  %t384 = load ptr, ptr %l201, !tbaa !29
  %t385 = load ptr, ptr %l202, !tbaa !29
  %t386 = load i32, ptr %l204, !tbaa !23
  %t387 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v3, ptr %v0, ptr %t384, ptr %t385, i32 %t386)
  store ptr %t387, ptr %l205
  br label %bb94
bb94:
  %t388 = load ptr, ptr %l4, !tbaa !29
  %t390 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t388)
  store %"compiler/source:Span" %t390, ptr %l207
  br label %bb95
bb95:
  %t391 = load ptr, ptr %l200, !tbaa !29
  %t392 = load ptr, ptr %l205, !tbaa !29
  %t393 = load %"compiler/source:Span", ptr %l207
  %t394 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v4, ptr %t391, ptr %t392, %"compiler/source:Span" %t393)
  store ptr %t394, ptr %l208
  br label %bb96
bb96:
  %t395 = load ptr, ptr %l208, !tbaa !29
  store ptr %t395, ptr %l19, !tbaa !29
  br label %bb97
bb97:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 36
  %t401 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t399)
  store i64 %t401, ptr %l212
  br label %bb98
bb98:
  %t402 = load i64, ptr %l212, !tbaa !24
  store i64 %t402, ptr %l20, !tbaa !24
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/check:Checker", ptr %t403, i32 0, i32 36
  %t406 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t405, ptr %t406)
  br label %bb99
bb99:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/check:Checker", ptr %t409, i32 0, i32 36
  store ptr %t411, ptr %l217, !tbaa !29
  %t412 = load ptr, ptr %l19, !tbaa !29
  %t414 = icmp eq ptr %t412, null
  br i1 %t414, label %bb100, label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_b203c9fbf4c249fb_735051f472c86bf)
  unreachable
bb101:
  br label %bb102
bb102:
  %t416 = load ptr, ptr %l19, !tbaa !29
  %t417 = load ptr, ptr %l217, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t417, ptr %t416)
  br label %bb103
bb103:
  %t419 = load ptr, ptr %l0, !tbaa !29
  store ptr %t419, ptr %l221, !tbaa !29
  %t420 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t420, ptr %l222
  %t421 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t421, ptr %l223
  %t422 = load i64, ptr %l16, !tbaa !24
  store i64 %t422, ptr %l224, !tbaa !24
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load %"compiler/source:Span", ptr %l1
  %t425 = load ptr, ptr %l6, !tbaa !29
  store ptr %t425, ptr %l227, !tbaa !29
  %t426 = load ptr, ptr %l227, !tbaa !29
  %t427 = call ptr @__olang_scope_of(ptr %t426, ptr null)
  %t428 = ptrtoint ptr %t427 to i64
  %t430 = inttoptr i64 %t428 to ptr
  %t433 = load ptr, ptr %l227, !tbaa !29
  %t434 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t430, ptr %v0, ptr %t423, %"compiler/source:Span" %t424, ptr %t433)
  store ptr %t434, ptr %l229
  br label %bb104
bb104:
  %t435 = load ptr, ptr %l229, !tbaa !29
  store ptr %t435, ptr %l230, !tbaa !29
  %t436 = icmp sge i64 0, 0
  br i1 %t436, label %bb105, label %bb106
bb105:
  %t438 = icmp sle i64 0, 1152921504606846975
  br i1 %t438, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_85a2f2931038d80c_e5a946dd8e187d18)
  unreachable
bb107:
  %t440 = mul i64 0, 8
  %t441 = insertvalue { i64, ptr } undef, i64 0, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t442, ptr %l233, !tbaa !27
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/check:Checker", ptr %t443, i32 0, i32 36
  %t446 = load i64, ptr %l20, !tbaa !24
  %t449 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t445, i64 %t446)
  store { i64, ptr } %t449, ptr %l237
  br label %bb109
bb108:
  call void @__olang_check_failed(ptr @olang_loc_85a2f2931038d80c_e5a946dd8e187d18)
  unreachable
bb109:
  %t450 = icmp sge i64 0, 0
  br i1 %t450, label %bb110, label %bb111
bb110:
  %t452 = icmp sle i64 0, 2305843009213693951
  br i1 %t452, label %bb112, label %bb113
bb111:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb112:
  %t454 = mul i64 0, 4
  %t455 = insertvalue { i64, ptr } undef, i64 0, 0
  %t456 = insertvalue { i64, ptr } %t455, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t457 = load ptr, ptr %l221, !tbaa !29
  %t458 = load %"compiler/source:Span", ptr %l222
  %t459 = load %"compiler/source:Span", ptr %l223
  %t460 = load i64, ptr %l224, !tbaa !24
  %t461 = load ptr, ptr %l230, !tbaa !29
  %t462 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t463 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t465 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t457, %"compiler/source:Span" %t458, %"compiler/source:Span" %t459, i64 %t460, ptr %t461, { i64, ptr } %t462, { i64, ptr } %t463, { i64, ptr } %t456)
  store ptr %t465, ptr %l241
  br label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb114:
  call void @__olang_scope_close(ptr %s6)
  %t466 = load ptr, ptr %l241, !tbaa !29
  store ptr %t466, ptr %rv
  br label %ret
bb115:
  store ptr null, ptr %l21, !tbaa !29
  %t467 = load ptr, ptr %l3, !tbaa !29
  %t469 = icmp eq ptr %t467, null
  br i1 %t469, label %bb116, label %bb117
bb116:
  %t471 = load ptr, ptr %l0, !tbaa !29
  store ptr %t471, ptr %l244, !tbaa !29
  %t472 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t472, ptr %l245
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t473)
  store i32 %t475, ptr %l247
  br label %bb118
bb117:
  %t476 = load ptr, ptr %l0, !tbaa !29
  store ptr %t476, ptr %l250, !tbaa !29
  %t477 = load ptr, ptr %l3, !tbaa !29
  store ptr %t477, ptr %l251, !tbaa !29
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t478)
  store i32 %t480, ptr %l253
  br label %bb120
bb118:
  %t481 = load ptr, ptr %l244, !tbaa !29
  %t482 = load %"compiler/source:Span", ptr %l245
  %t483 = load i32, ptr %l247, !tbaa !23
  %t484 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t481, %"compiler/source:Span" %t482, i32 %t483, i64 0)
  store ptr %t484, ptr %l248
  br label %bb119
bb119:
  %t485 = load ptr, ptr %l248, !tbaa !29
  store ptr %t485, ptr %l21, !tbaa !29
  br label %bb122
bb120:
  %t487 = load ptr, ptr %l250, !tbaa !29
  %t488 = load ptr, ptr %l251, !tbaa !29
  %t489 = load i32, ptr %l253, !tbaa !23
  %t490 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v4, ptr %t487, ptr %t488, i32 %t489)
  store ptr %t490, ptr %l254
  br label %bb121
bb121:
  %t491 = load ptr, ptr %l254, !tbaa !29
  store ptr %t491, ptr %l21, !tbaa !29
  br label %bb122
bb122:
  store ptr null, ptr %l22, !tbaa !29
  %t493 = load ptr, ptr %l4, !tbaa !29
  %t495 = icmp eq ptr %t493, null
  br i1 %t495, label %bb123, label %bb124
bb123:
  %t497 = load ptr, ptr %l0, !tbaa !29
  store ptr %t497, ptr %l258, !tbaa !29
  %t498 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t498, ptr %l259
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t501 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t499)
  store i32 %t501, ptr %l261
  br label %bb125
bb124:
  %t502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t502, ptr %l275, !tbaa !29
  %t503 = load ptr, ptr %l4, !tbaa !29
  store ptr %t503, ptr %l276, !tbaa !29
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t504)
  store i32 %t506, ptr %l278
  br label %bb128
bb125:
  store i32 22, ptr %l262
  %t507 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t507, ptr %l263
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/check:Checker", ptr %t508, i32 0, i32 1
  %t511 = load ptr, ptr %t510, !tbaa !29
  %t513 = getelementptr %"compiler/generic:Program", ptr %t511, i32 0, i32 2
  %t514 = load i32, ptr %l7, !tbaa !23
  %t515 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t519 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t513, i32 %t514, i64 %t515)
  store i32 %t519, ptr %l269
  br label %bb126
bb126:
  %t520 = load ptr, ptr %l6, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t521
  %t522 = getelementptr { i64, [5 x i64] }, ptr %t521, i32 0, i32 0
  store i64 3, ptr %t522
  %t523 = load %"compiler/source:Span", ptr %l263
  %t524 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t523, 0
  %t525 = load i32, ptr %l269, !tbaa !23
  %t526 = insertvalue { %"compiler/source:Span", i32, ptr } %t524, i32 %t525, 1
  %t528 = insertvalue { %"compiler/source:Span", i32, ptr } %t526, ptr %t520, 2
  %t529 = getelementptr { i64, [5 x i64] }, ptr %t521, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t528, ptr %t529
  %t530 = load { i64, [5 x i64] }, ptr %t521
  %t532 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t530, ptr %t532
  %t533 = load ptr, ptr %l258, !tbaa !29
  %t534 = load %"compiler/source:Span", ptr %l259
  %t535 = load i32, ptr %l261, !tbaa !23
  %t536 = load i32, ptr %l262, !range !{i32 0, i32 52}
  %t538 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %t533, %"compiler/source:Span" %t534, i32 %t535, i32 %t536, ptr %t532, ptr null)
  store ptr %t538, ptr %l273
  br label %bb127
bb127:
  %t539 = load ptr, ptr %l273, !tbaa !29
  store ptr %t539, ptr %l22, !tbaa !29
  br label %bb130
bb128:
  %t541 = load ptr, ptr %l275, !tbaa !29
  %t542 = load ptr, ptr %l276, !tbaa !29
  %t543 = load i32, ptr %l278, !tbaa !23
  %t544 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v3, ptr %v4, ptr %t541, ptr %t542, i32 %t543)
  store ptr %t544, ptr %l279
  br label %bb129
bb129:
  %t545 = load ptr, ptr %l279, !tbaa !29
  store ptr %t545, ptr %l22, !tbaa !29
  br label %bb130
bb130:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t548 = load i32, ptr %l7, !tbaa !23
  %t551 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t547, i32 %t548)
  store i1 %t551, ptr %l283
  br label %bb131
bb131:
  %t552 = load i1, ptr %l283, !tbaa !21
  br i1 %t552, label %bb132, label %bb133
bb132:
  %t553 = load i32, ptr %l7, !tbaa !23
  store i32 %t553, ptr %l284, !tbaa !23
  br label %bb140
bb133:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = getelementptr %"compiler/check:Checker", ptr %t555, i32 0, i32 1
  %t558 = load ptr, ptr %t557, !tbaa !29
  %t560 = getelementptr %"compiler/generic:Program", ptr %t558, i32 0, i32 2
  store ptr %t560, ptr %l288, !tbaa !29
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t563 = getelementptr %"compiler/check:Checker", ptr %t561, i32 0, i32 1
  %t564 = load ptr, ptr %t563, !tbaa !29
  %t566 = getelementptr %"compiler/generic:Program", ptr %t564, i32 0, i32 2
  %t567 = load i32, ptr %l15, !tbaa !23
  %t570 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t566, i32 %t567)
  store i32 %t570, ptr %l293
  br label %bb134
bb134:
  %t571 = load i32, ptr %l5, !range !{i32 0, i32 3}
  %t573 = trunc i64 1 to i32
  %t574 = icmp eq i32 %t571, %t573
  br i1 %t574, label %bb135, label %bb136
bb135:
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t577 = load i32, ptr %l15, !tbaa !23
  %t578 = load ptr, ptr %l3, !tbaa !29
  %t579 = load ptr, ptr %l4, !tbaa !29
  %t584 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceLength(ptr %v0, ptr %v2, ptr %v3, ptr %t576, i32 %t577, ptr %t578, ptr %t579)
  store i32 %t584, ptr %l301
  br label %bb137
bb136:
  store i32 0, ptr %l296, !tbaa !23
  br label %bb138
bb137:
  %t585 = load i32, ptr %l301, !tbaa !23
  store i32 %t585, ptr %l296, !tbaa !23
  br label %bb138
bb138:
  %t586 = load ptr, ptr %l288, !tbaa !29
  %t587 = load i32, ptr %l293, !tbaa !23
  %t588 = load i32, ptr %l296, !tbaa !23
  %t589 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t586, i32 %t587, i32 %t588)
  store i32 %t589, ptr %l302
  br label %bb139
bb139:
  %t590 = load i32, ptr %l302, !tbaa !23
  store i32 %t590, ptr %l284, !tbaa !23
  br label %bb140
bb140:
  %t591 = load i32, ptr %l284, !tbaa !23
  %t592 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t592, ptr %l303
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t595 = getelementptr %"compiler/check:Checker", ptr %t593, i32 0, i32 1
  %t596 = load ptr, ptr %t595, !tbaa !29
  %t598 = getelementptr %"compiler/generic:Program", ptr %t596, i32 0, i32 2
  %t600 = load i64, ptr %l8, !tbaa !24
  %t604 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t598, i32 %t591, i64 %t600)
  store i32 %t604, ptr %l309
  br label %bb141
bb141:
  %t605 = load ptr, ptr %l6, !tbaa !29
  store ptr %t605, ptr %l310, !tbaa !29
  %t606 = load ptr, ptr %l21, !tbaa !29
  %t608 = icmp eq ptr %t606, null
  br i1 %t608, label %bb142, label %bb143
bb142:
  call void @__olang_check_failed(ptr @olang_loc_2f1aad6b95023edd_c82f5ce971f0d619)
  unreachable
bb143:
  br label %bb144
bb144:
  %t610 = load ptr, ptr %l21, !tbaa !29
  store ptr %t610, ptr %l313, !tbaa !29
  %t611 = load ptr, ptr %l22, !tbaa !29
  %t613 = icmp eq ptr %t611, null
  br i1 %t613, label %bb145, label %bb146
bb145:
  call void @__olang_check_failed(ptr @olang_loc_2f1aad6b95023edd_c82f5ce971f0d619)
  unreachable
bb146:
  br label %bb147
bb147:
  %t615 = load ptr, ptr %l22, !tbaa !29
  %t616 = load i32, ptr %l5, !range !{i32 0, i32 3}
  %t617 = load ptr, ptr %l310, !tbaa !29
  %t618 = call ptr @__olang_scope_of(ptr %t617, ptr null)
  %t619 = ptrtoint ptr %t618 to i64
  %t621 = inttoptr i64 %t619 to ptr
  %t622 = load ptr, ptr %l310, !tbaa !29
  %t623 = load ptr, ptr %l313, !tbaa !29
  %t626 = call %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %t621, ptr %v4, ptr %v4, ptr %v4, ptr %t622, ptr %t623, ptr %t615, i32 %t616)
  store %"compiler/typed:Slice" %t626, ptr %l319
  br label %bb148
bb148:
  %t627 = load %"compiler/typed:Slice", ptr %l319
  %t628 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/typed:Slice" %t627, ptr %t628
  store { i64, [5 x i64] } zeroinitializer, ptr %t629
  %t630 = getelementptr { i64, [5 x i64] }, ptr %t629, i32 0, i32 0
  store i64 10, ptr %t630
  %t631 = load %"compiler/source:Span", ptr %l303
  %t632 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t631, 0
  %t633 = load i32, ptr %l309, !tbaa !23
  %t634 = insertvalue { %"compiler/source:Span", i32, ptr } %t632, i32 %t633, 1
  %t636 = insertvalue { %"compiler/source:Span", i32, ptr } %t634, ptr %t628, 2
  %t637 = getelementptr { i64, [5 x i64] }, ptr %t629, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t636, ptr %t637
  %t638 = load { i64, [5 x i64] }, ptr %t629
  %t640 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t638, ptr %t640
  store ptr %t640, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %t10, i32 %a1)
  store { i64, ptr } %t14, ptr %l7
  br label %bb1
bb1:
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeKindType(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d22, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i32 %t6, ptr %l3
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t7 = load i32, ptr %l3, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %lp4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l27 = alloca i1
  %l32 = alloca i1
  %l37 = alloca ptr
  %l39 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l71 = alloca { i64, ptr }
  %l74 = alloca i1
  %l75 = alloca i64
  %l76 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca ptr
  %l90 = alloca ptr
  %l96 = alloca i32
  %l100 = alloca i1
  %l103 = alloca i1
  %l105 = alloca i1
  %l110 = alloca i32
  %l112 = alloca i32
  %l118 = alloca i32
  %l124 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca %"compiler/source:Span"
  %l131 = alloca { i64, ptr }
  %l135 = alloca ptr
  %l137 = alloca i32
  %l139 = alloca ptr
  %l142 = alloca i64
  %l148 = alloca i64
  %l151 = alloca i64
  %l173 = alloca ptr
  %l174 = alloca ptr
  %l179 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca { i64, ptr }
  %l184 = alloca %"compiler/source:Span"
  %l185 = alloca ptr
  %l187 = alloca { i64, ptr }
  %l191 = alloca ptr
  %l194 = alloca i1
  %l196 = alloca ptr
  %l198 = alloca ptr
  %l199 = alloca { i64, ptr }
  %l202 = alloca %"compiler/source:Span"
  %l204 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca i32
  %l216 = alloca ptr
  %l218 = alloca i32
  %l221 = alloca i32
  %l222 = alloca i32
  %l223 = alloca %"compiler/source:Span"
  %l224 = alloca i32
  %l225 = alloca i32
  %l229 = alloca { i64, ptr }
  %l233 = alloca i32
  %l235 = alloca %"compiler/typed:Make"
  %rv = alloca ptr
  %t447 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l3, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp ne i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l32
  br label %bb3
bb2:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb4
bb3:
  %t17 = load i1, ptr %l32, !tbaa !21
  store i1 %t17, ptr %l27, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l27, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l1
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %t19, %"compiler/source:Span" %t20, i32 %t21, { i64, ptr } %t22)
  store ptr %t27, ptr %l37
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t28 = load ptr, ptr %l37, !tbaa !29
  store ptr %t28, ptr %rv
  br label %ret
bb8:
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l39, !tbaa !24
  %t32 = load i64, ptr %l39, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l39, !tbaa !24
  %t36 = icmp sle i64 %t35, 1152921504606846975
  br i1 %t36, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e10237a768a7da34_a1fa84f4f434b2e0)
  unreachable
bb11:
  %t38 = load i64, ptr %l39, !tbaa !24
  %t39 = mul i64 %t38, 8
  %t40 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t43, ptr %lp4
  %t45 = load ptr, ptr %lp4
  store { i64, ptr } %t42, ptr %t45, !tbaa !27
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t46, ptr %l5, !tbaa !23
  store i64 0, ptr %l6, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = icmp sgt i64 %t52, %t53
  br i1 %t56, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e10237a768a7da34_a1fa84f4f434b2e0)
  unreachable
bb13:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb18
bb15:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t67 = load i64, ptr %l8, !tbaa !24
  %t70 = add i64 %t66, %t67
  %t72 = sub i64 %t70, 1
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = sdiv i64 %t72, %t73
  store i64 %t76, ptr %l52, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb17
bb17:
  %t78 = load i64, ptr %l52, !tbaa !24
  store i64 %t78, ptr %l49, !tbaa !24
  br label %bb18
bb18:
  %t79 = load i64, ptr %l49, !tbaa !24
  store i64 %t79, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t80 = load i64, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb20, label %bb21
bb20:
  br label %bb47
bb21:
  br label %bb22
bb22:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = mul i64 %t89, %t90
  %t96 = add i64 %t88, %t93
  store i64 %t96, ptr %l11, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t99, ptr %l71, !tbaa !27
  %t100 = load i64, ptr %l11, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr ptr, ptr %t103, i64 %t100
  %t105 = load ptr, ptr %t104, !tbaa !39
  %t108 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t98, ptr %t105)
  store i1 %t108, ptr %l74
  br label %bb23
bb23:
  %t109 = load i1, ptr %l74, !tbaa !21
  br i1 %t109, label %bb24, label %bb25
bb24:
  br label %bb46
bb25:
  br label %bb26
bb26:
  %t110 = load i64, ptr %l11, !tbaa !24
  store i64 %t110, ptr %l75, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l76, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t113, ptr %l78, !tbaa !27
  %t114 = load i64, ptr %l11, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr ptr, ptr %t117, i64 %t114
  %t119 = load ptr, ptr %t118, !tbaa !39
  %t121 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t125 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t112, ptr %t119, i32 %t121)
  store ptr %t125, ptr %l83
  br label %bb27
bb27:
  %t126 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t126, ptr %l84, !tbaa !27
  %t127 = load i64, ptr %l11, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr ptr, ptr %t130, i64 %t127
  %t132 = load ptr, ptr %t131, !tbaa !39
  %t134 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t132)
  store %"compiler/source:Span" %t134, ptr %l87
  br label %bb28
bb28:
  %t135 = load ptr, ptr %l76, !tbaa !29
  %t136 = load ptr, ptr %l83, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l87
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t135, ptr %t136, %"compiler/source:Span" %t137)
  store ptr %t138, ptr %l88
  br label %bb29
bb29:
  %t139 = load ptr, ptr %l88, !tbaa !29
  %t141 = load ptr, ptr %lp4
  %t142 = load i64, ptr %l75, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr ptr, ptr %t144, i64 %t142
  store ptr %t139, ptr %t145, !tbaa !39
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l90, !tbaa !29
  %t147 = load i64, ptr %l11, !tbaa !24
  %t148 = load ptr, ptr %lp4
  %t150 = getelementptr { i64, ptr }, ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr ptr, ptr %t151, i64 %t147
  %t153 = load ptr, ptr %t152, !tbaa !39
  store ptr %t153, ptr %l12, !tbaa !29
  %t155 = load ptr, ptr %l12, !tbaa !29
  %t157 = icmp eq ptr %t155, null
  br i1 %t157, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_a69c1b36a006a603_82104839c45e26c7)
  unreachable
bb31:
  br label %bb32
bb32:
  %t159 = load ptr, ptr %l12, !tbaa !29
  %t160 = load ptr, ptr %l90, !tbaa !29
  %t162 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v2, ptr %t160, ptr %t159)
  store i32 %t162, ptr %l96
  br label %bb33
bb33:
  %t163 = load i32, ptr %l96, !tbaa !23
  store i32 %t163, ptr %l13, !tbaa !23
  %t164 = load i32, ptr %l5, !tbaa !23
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = icmp eq i32 %t164, %t165
  br i1 %t168, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb37
bb35:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l13, !tbaa !23
  %t174 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t170, i32 %t171)
  store i1 %t174, ptr %l103
  br label %bb36
bb36:
  %t175 = load i1, ptr %l103, !tbaa !21
  %t176 = xor i1 %t175, true
  store i1 %t176, ptr %l100, !tbaa !21
  br label %bb37
bb37:
  %t178 = load i1, ptr %l100, !tbaa !21
  br i1 %t178, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb41
bb39:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t183 = load i32, ptr %l5, !tbaa !23
  %t184 = load i32, ptr %l13, !tbaa !23
  %t188 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t182, i32 %t183, i32 %t184)
  store i32 %t188, ptr %l110
  br label %bb40
bb40:
  %t189 = load i32, ptr %l110, !tbaa !23
  %t190 = icmp slt i32 %t189, 0
  store i1 %t190, ptr %l105, !tbaa !21
  br label %bb41
bb41:
  %t192 = load i1, ptr %l105, !tbaa !21
  br i1 %t192, label %bb42, label %bb43
bb42:
  %t193 = load i32, ptr %l13, !tbaa !23
  store i32 %t193, ptr %l112, !tbaa !23
  br label %bb45
bb43:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t199 = load i32, ptr %l5, !tbaa !23
  %t200 = load i32, ptr %l13, !tbaa !23
  %t204 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t198, i32 %t199, i32 %t200)
  store i32 %t204, ptr %l118
  br label %bb44
bb44:
  %t205 = load i32, ptr %l118, !tbaa !23
  store i32 %t205, ptr %l112, !tbaa !23
  br label %bb45
bb45:
  %t206 = load i32, ptr %l112, !tbaa !23
  store i32 %t206, ptr %l5, !tbaa !23
  br label %bb46
bb46:
  %t207 = load i64, ptr %l10, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l10, !tbaa !24
  br label %bb19
bb47:
  %t211 = load i32, ptr %l5, !tbaa !23
  %t212 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t215 = icmp eq i32 %t211, %t212
  br i1 %t215, label %bb48, label %bb49
bb48:
  %t217 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t217, 0
  %t221 = icmp sgt i64 %t219, 0
  store i1 %t221, ptr %l124, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb50
bb50:
  %t223 = load i1, ptr %l124, !tbaa !21
  br i1 %t223, label %bb51, label %bb52
bb51:
  %t224 = load ptr, ptr %l0, !tbaa !29
  store ptr %t224, ptr %l128, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t225, ptr %l129
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t227, ptr %l131, !tbaa !27
  %t228 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr ptr, ptr %t229, i64 0
  %t231 = load ptr, ptr %t230, !tbaa !39
  %t233 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t237 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t226, ptr %t231, i32 %t233)
  store ptr %t237, ptr %l135
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t238 = load ptr, ptr %l135, !tbaa !29
  %t240 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t238)
  store i32 %t240, ptr %l137
  br label %bb54
bb54:
  %t241 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t242 = load ptr, ptr %l128, !tbaa !29
  %t243 = load %"compiler/source:Span", ptr %l129
  %t244 = load i32, ptr %l137, !tbaa !23
  %t246 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %t242, %"compiler/source:Span" %t243, i32 %t244, { i64, ptr } %t241)
  store ptr %t246, ptr %l139
  br label %bb55
bb55:
  %t247 = load ptr, ptr %l139, !tbaa !29
  store ptr %t247, ptr %rv
  br label %ret
bb56:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/check:Checker", ptr %t248, i32 0, i32 36
  %t252 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t250)
  store i64 %t252, ptr %l142
  br label %bb57
bb57:
  %t253 = load i64, ptr %l142, !tbaa !24
  store i64 %t253, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t254 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t254, 0
  store i64 %t256, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t258 = load i64, ptr %l16, !tbaa !24
  %t259 = load i64, ptr %l15, !tbaa !24
  %t262 = icmp sgt i64 %t258, %t259
  br i1 %t262, label %bb58, label %bb59
bb58:
  %t264 = load i64, ptr %l17, !tbaa !24
  %t266 = icmp sgt i64 %t264, 0
  br i1 %t266, label %bb60, label %bb61
bb59:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb63
bb60:
  %t268 = load i64, ptr %l16, !tbaa !24
  %t269 = load i64, ptr %l15, !tbaa !24
  %t272 = sub i64 %t268, %t269
  %t273 = load i64, ptr %l17, !tbaa !24
  %t276 = add i64 %t272, %t273
  %t278 = sub i64 %t276, 1
  %t279 = load i64, ptr %l17, !tbaa !24
  %t282 = sdiv i64 %t278, %t279
  store i64 %t282, ptr %l151, !tbaa !24
  br label %bb62
bb61:
  store i64 0, ptr %l151, !tbaa !24
  br label %bb62
bb62:
  %t284 = load i64, ptr %l151, !tbaa !24
  store i64 %t284, ptr %l148, !tbaa !24
  br label %bb63
bb63:
  %t285 = load i64, ptr %l148, !tbaa !24
  store i64 %t285, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb64
bb64:
  %t286 = load i64, ptr %l19, !tbaa !24
  %t287 = load i64, ptr %l18, !tbaa !24
  %t290 = icmp slt i64 %t286, %t287
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb65, label %bb66
bb65:
  br label %bb85
bb66:
  br label %bb67
bb67:
  %t294 = load i64, ptr %l15, !tbaa !24
  %t295 = load i64, ptr %l19, !tbaa !24
  %t296 = load i64, ptr %l17, !tbaa !24
  %t299 = mul i64 %t295, %t296
  %t302 = add i64 %t294, %t299
  store i64 %t302, ptr %l20, !tbaa !24
  %t304 = load i64, ptr %l20, !tbaa !24
  %t305 = load ptr, ptr %lp4
  %t307 = getelementptr { i64, ptr }, ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr ptr, ptr %t308, i64 %t304
  %t310 = load ptr, ptr %t309, !tbaa !39
  %t312 = icmp eq ptr %t310, null
  %t314 = xor i1 %t312, true
  br i1 %t314, label %bb68, label %bb69
bb68:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l174, !tbaa !29
  %t317 = load i64, ptr %l20, !tbaa !24
  %t318 = load ptr, ptr %lp4
  %t320 = getelementptr { i64, ptr }, ptr %t318, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr ptr, ptr %t321, i64 %t317
  %t323 = load ptr, ptr %t322, !tbaa !39
  store ptr %t323, ptr %l21, !tbaa !29
  %t325 = load ptr, ptr %l21, !tbaa !29
  %t327 = icmp eq ptr %t325, null
  br i1 %t327, label %bb70, label %bb71
bb69:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t330, ptr %l187, !tbaa !27
  %t331 = load i64, ptr %l20, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr ptr, ptr %t334, i64 %t331
  %t336 = load ptr, ptr %t335, !tbaa !39
  %t337 = load i32, ptr %l5, !tbaa !23
  %t341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t329, ptr %t336, i32 %t337)
  store ptr %t341, ptr %l191
  br label %bb75
bb70:
  call void @__olang_check_failed(ptr @olang_loc_ddfcf2b97caa4282_7a2ed02469d97696)
  unreachable
bb71:
  br label %bb72
bb72:
  %t342 = load ptr, ptr %l21, !tbaa !29
  store ptr %t342, ptr %l179, !tbaa !29
  %t343 = load i32, ptr %l5, !tbaa !23
  store i32 %t343, ptr %l180, !tbaa !23
  %t344 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t344, ptr %l181, !tbaa !27
  %t345 = load i64, ptr %l20, !tbaa !24
  %t347 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr ptr, ptr %t348, i64 %t345
  %t350 = load ptr, ptr %t349, !tbaa !39
  %t352 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t350)
  store %"compiler/source:Span" %t352, ptr %l184
  br label %bb73
bb73:
  %t353 = load ptr, ptr %l174, !tbaa !29
  %t354 = load ptr, ptr %l179, !tbaa !29
  %t355 = load i32, ptr %l180, !tbaa !23
  %t356 = load %"compiler/source:Span", ptr %l184
  %t357 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t353, ptr %t354, i32 %t355, %"compiler/source:Span" %t356)
  store ptr %t357, ptr %l185
  br label %bb74
bb74:
  %t358 = load ptr, ptr %l185, !tbaa !29
  store ptr %t358, ptr %l173, !tbaa !29
  br label %bb76
bb75:
  %t359 = load ptr, ptr %l191, !tbaa !29
  store ptr %t359, ptr %l173, !tbaa !29
  br label %bb76
bb76:
  %t360 = load ptr, ptr %l173, !tbaa !29
  store ptr %t360, ptr %l22, !tbaa !29
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l5, !tbaa !23
  %t365 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t361, i32 %t362)
  store i1 %t365, ptr %l194
  br label %bb77
bb77:
  %t366 = load i1, ptr %l194, !tbaa !21
  %t367 = xor i1 %t366, true
  br i1 %t367, label %bb78, label %bb79
bb78:
  %t369 = load ptr, ptr %l0, !tbaa !29
  store ptr %t369, ptr %l196, !tbaa !29
  %t370 = load ptr, ptr %l22, !tbaa !29
  store ptr %t370, ptr %l198, !tbaa !29
  %t372 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t372, ptr %l199, !tbaa !27
  %t373 = load i64, ptr %l20, !tbaa !24
  %t375 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !27
  %t377 = getelementptr ptr, ptr %t376, i64 %t373
  %t378 = load ptr, ptr %t377, !tbaa !39
  %t380 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t378)
  store %"compiler/source:Span" %t380, ptr %l202
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t381 = load i64, ptr @G_2ecompiler_2fcheck_2eRoStored, !tbaa !24
  %t382 = load ptr, ptr %l196, !tbaa !29
  %t383 = load ptr, ptr %l198, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l202
  %t386 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t382, ptr %t383, %"compiler/source:Span" %t384, i64 %t381)
  store i1 %t386, ptr %l204
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = getelementptr %"compiler/check:Checker", ptr %t387, i32 0, i32 36
  %t390 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t389, ptr %t390)
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t393 = load i64, ptr %l19, !tbaa !24
  %t395 = add i64 %t393, 1
  store i64 %t395, ptr %l19, !tbaa !24
  br label %bb64
bb85:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t402 = getelementptr %"compiler/generic:Program", ptr %t400, i32 0, i32 2
  store ptr %t402, ptr %l212, !tbaa !29
  %t403 = load i32, ptr %l5, !tbaa !23
  store i32 %t403, ptr %l213, !tbaa !23
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/check:Checker", ptr %t404, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !29
  %t409 = getelementptr %"compiler/generic:Program", ptr %t407, i32 0, i32 2
  store ptr %t409, ptr %l216, !tbaa !29
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t410)
  store i32 %t412, ptr %l218
  br label %bb86
bb86:
  %t413 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t416 = load ptr, ptr %l216, !tbaa !29
  %t417 = load i32, ptr %l218, !tbaa !23
  %t419 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t416, i32 %t417, i64 %t415)
  store i32 %t419, ptr %l221
  br label %bb87
bb87:
  %t420 = load ptr, ptr %l212, !tbaa !29
  %t421 = load i32, ptr %l213, !tbaa !23
  %t422 = load i32, ptr %l221, !tbaa !23
  %t423 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t420, i32 %t421, i32 %t422)
  store i32 %t423, ptr %l222
  br label %bb88
bb88:
  %t424 = load i32, ptr %l222, !tbaa !23
  %t425 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t425, ptr %l223
  store i32 %t424, ptr %l224, !tbaa !23
  store i32 2, ptr %l225
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 36
  %t430 = load i64, ptr %l14, !tbaa !24
  %t433 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t429, i64 %t430)
  store { i64, ptr } %t433, ptr %l229
  br label %bb89
bb89:
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t435 = load %"compiler/source:Span", ptr %l1
  %t439 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t434, i32 1, %"compiler/source:Span" %t435)
  store i32 %t439, ptr %l233
  br label %bb90
bb90:
  %t440 = load i32, ptr %l225, !range !{i32 0, i32 5}
  %t441 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t442 = load i32, ptr %l233, !tbaa !23
  %t444 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t440, i64 0, { i64, ptr } %t441, ptr null, i32 %t442, i32 0, i1 false)
  store %"compiler/typed:Make" %t444, ptr %l235
  br label %bb91
bb91:
  %t445 = load %"compiler/typed:Make", ptr %l235
  %t446 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t445, ptr %t446
  store { i64, [5 x i64] } zeroinitializer, ptr %t447
  %t448 = getelementptr { i64, [5 x i64] }, ptr %t447, i32 0, i32 0
  store i64 7, ptr %t448
  %t449 = load %"compiler/source:Span", ptr %l223
  %t450 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t449, 0
  %t451 = load i32, ptr %l224, !tbaa !23
  %t452 = insertvalue { %"compiler/source:Span", i32, ptr } %t450, i32 %t451, 1
  %t454 = insertvalue { %"compiler/source:Span", i32, ptr } %t452, ptr %t446, 2
  %t455 = getelementptr { i64, [5 x i64] }, ptr %t447, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t454, ptr %t455
  %t456 = load { i64, [5 x i64] }, ptr %t447
  %t458 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t456, ptr %t458
  store ptr %t458, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l17 = alloca %"compiler/names:Ref"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l11, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l13
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 2
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t31 = load i32, ptr %t30, !tbaa !23
  %t32 = load ptr, ptr %l11, !tbaa !29
  %t35 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t32, i64 %t29, i32 %t31)
  store %"compiler/names:Ref" %t35, ptr %l17
  br label %bb7
bb7:
  %t36 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 0
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 9}
  %t39 = trunc i64 8 to i32
  %t40 = icmp eq i32 %t37, %t39
  store i1 %t40, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_a23f531a57510fcc_ca69a351a39efde8)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca i1
  %l45 = alloca i32
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca i32
  %l54 = alloca ptr
  %l58 = alloca ptr
  %l60 = alloca %"compiler/typed:Elem"
  %l64 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca ptr
  %l71 = alloca ptr
  %l76 = alloca ptr
  %l91 = alloca ptr
  %l97 = alloca ptr
  %l100 = alloca i64
  %l105 = alloca ptr
  %l109 = alloca i32
  %l113 = alloca { i64, ptr }
  %l114 = alloca %"compiler/typed:Block"
  %l116 = alloca ptr
  %l122 = alloca %"compiler/source:Span"
  %l125 = alloca %"compiler/typed:If"
  %t79 = alloca { i64, [4 x i64] }, align 8
  %t104 = alloca { i64, [4 x i64] }, align 8
  %t129 = alloca { i64, [3 x i64] }, align 8
  %t151 = alloca { i64, [3 x i64] }, align 8
  %t164 = alloca { i64, [3 x i64] }, align 8
  %t259 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/ast:ForIn", ptr %t5, i32 0, i32 4
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/ast:ForIn", ptr %t15, i32 0, i32 4
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t14, { i64, ptr } %t18)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
bb7:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Compr", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t24)
  store %"compiler/source:Span" %t26, ptr %l25
  br label %bb8
bb8:
  %t27 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t27, ptr %l4
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 122
  %t31 = load i64, ptr %t30, !tbaa !24
  store i64 %t31, ptr %l5, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 123
  %t36 = load i64, ptr %t35, !tbaa !24
  store i64 %t36, ptr %l6, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l30, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr %"compiler/ast:Compr", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t44 = load i32, ptr %l3, !tbaa !23
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v0, ptr %t39, ptr %t43, i32 %t44)
  store ptr %t48, ptr %l35
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l30, !tbaa !29
  %t50 = load ptr, ptr %l35, !tbaa !29
  %t51 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t49, ptr %t50)
  store ptr %t51, ptr %l36
  br label %bb10
bb10:
  %t52 = load ptr, ptr %l36, !tbaa !29
  store ptr %t52, ptr %l7, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/ast:Compr", ptr %t53, i32 0, i32 5
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb11, label %bb12
bb11:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp sge i64 %t60, 0
  store i1 %t62, ptr %l40, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t64 = load i1, ptr %l40, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t65, i64 %t66)
  store i32 %t69, ptr %l45
  br label %bb16
bb15:
  br label %bb21
bb16:
  %t70 = load i32, ptr %l45, !tbaa !23
  %t71 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t71, ptr %l46
  %t72 = load i32, ptr %l3, !tbaa !23
  store i32 %t72, ptr %l47, !tbaa !23
  %t73 = load %"compiler/source:Span", ptr %l4
  %t75 = load i64, ptr %l5, !tbaa !24
  %t77 = trunc i64 %t75 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t79
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 0
  store i64 0, ptr %t80
  %t82 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t73, 0
  %t84 = insertvalue { %"compiler/source:Span", i32, i32 } %t82, i32 %t70, 1
  %t86 = insertvalue { %"compiler/source:Span", i32, i32 } %t84, i32 %t77, 2
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t86, ptr %t87
  %t88 = load { i64, [4 x i64] }, ptr %t79
  %t90 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t88, ptr %t90
  store ptr %t90, ptr %l54, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load %"compiler/source:Span", ptr %l4
  %t93 = load i64, ptr %l6, !tbaa !24
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t91, %"compiler/source:Span" %t92, i64 %t93)
  store ptr %t97, ptr %l58
  br label %bb17
bb17:
  %t98 = load ptr, ptr %l54, !tbaa !29
  %t99 = load ptr, ptr %l58, !tbaa !29
  %t101 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t98, ptr %t99, i32 0)
  store %"compiler/typed:Elem" %t101, ptr %l60
  br label %bb18
bb18:
  %t102 = load %"compiler/typed:Elem", ptr %l60
  %t103 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Elem" %t102, ptr %t103
  store { i64, [4 x i64] } zeroinitializer, ptr %t104
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 0
  store i64 4, ptr %t105
  %t106 = load %"compiler/source:Span", ptr %l46
  %t107 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t106, 0
  %t108 = load i32, ptr %l47, !tbaa !23
  %t109 = insertvalue { %"compiler/source:Span", i32, ptr } %t107, i32 %t108, 1
  %t111 = insertvalue { %"compiler/source:Span", i32, ptr } %t109, ptr %t103, 2
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t111, ptr %t112
  %t113 = load { i64, [4 x i64] }, ptr %t104
  %t115 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t113, ptr %t115
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l64, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t118, ptr %l65
  store ptr %t115, ptr %l66, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l7, !tbaa !29
  %t122 = load i32, ptr %l3, !tbaa !23
  %t123 = load %"compiler/source:Span", ptr %l4
  %t128 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t120, ptr %t121, i32 %t122, %"compiler/source:Span" %t123)
  store ptr %t128, ptr %l71
  br label %bb19
bb19:
  store { i64, [3 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t129, i32 0, i32 0
  store i64 1, ptr %t130
  %t131 = load %"compiler/source:Span", ptr %l65
  %t132 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t131, 0
  %t133 = load ptr, ptr %l66, !tbaa !29
  %t134 = insertvalue { %"compiler/source:Span", ptr, ptr } %t132, ptr %t133, 1
  %t135 = load ptr, ptr %l71, !tbaa !29
  %t136 = insertvalue { %"compiler/source:Span", ptr, ptr } %t134, ptr %t135, 2
  %t137 = getelementptr { i64, [3 x i64] }, ptr %t129, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t136, ptr %t137
  %t138 = load { i64, [3 x i64] }, ptr %t129
  %t140 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t138, ptr %t140
  %t141 = load ptr, ptr %l64, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t141, ptr %t140)
  br label %bb20
bb20:
  br label %ret
bb21:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 125
  %t146 = load i1, ptr %t145, !tbaa !21
  br i1 %t146, label %bb22, label %bb23
bb22:
  %t148 = load %"compiler/source:Span", ptr %l4
  %t149 = load ptr, ptr %l7, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 0
  store i64 16, ptr %t152
  %t154 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t148, 0
  %t156 = insertvalue { %"compiler/source:Span", ptr } %t154, ptr %t149, 1
  %t157 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t156, ptr %t157
  %t158 = load { i64, [3 x i64] }, ptr %t151
  %t160 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t158, ptr %t160
  store ptr %t160, ptr %l76, !tbaa !29
  br label %bb24
bb23:
  %t162 = load %"compiler/source:Span", ptr %l4
  %t163 = load ptr, ptr %l7, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t164
  %t165 = getelementptr { i64, [3 x i64] }, ptr %t164, i32 0, i32 0
  store i64 15, ptr %t165
  %t167 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t162, 0
  %t169 = insertvalue { %"compiler/source:Span", ptr } %t167, ptr %t163, 1
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t164, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t169, ptr %t170
  %t171 = load { i64, [3 x i64] }, ptr %t164
  %t173 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t171, ptr %t173
  store ptr %t173, ptr %l76, !tbaa !29
  br label %bb24
bb24:
  %t175 = load ptr, ptr %l76, !tbaa !29
  store ptr %t175, ptr %l10, !tbaa !29
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t178 = getelementptr %"compiler/ast:Compr", ptr %t176, i32 0, i32 5
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  br i1 %t181, label %bb25, label %bb26
bb25:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t183, ptr %t184)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %ret
bb28:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l91, !tbaa !29
  %t188 = load ptr, ptr %l2, !tbaa !29
  %t190 = getelementptr %"compiler/ast:Compr", ptr %t188, i32 0, i32 5
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = icmp eq ptr %t191, null
  br i1 %t193, label %bb29, label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_61f61c7eea085c49_e2109341212ff245)
  unreachable
bb30:
  br label %bb31
bb31:
  %t195 = load ptr, ptr %l2, !tbaa !29
  %t197 = getelementptr %"compiler/ast:Compr", ptr %t195, i32 0, i32 5
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t199 = load ptr, ptr %l91, !tbaa !29
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v2, ptr %v0, ptr %t199, ptr %t198)
  store ptr %t201, ptr %l97
  br label %bb32
bb32:
  %t202 = load ptr, ptr %l97, !tbaa !29
  store ptr %t202, ptr %l11, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 37
  %t207 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t205)
  store i64 %t207, ptr %l100
  br label %bb33
bb33:
  %t208 = load i64, ptr %l100, !tbaa !24
  store i64 %t208, ptr %l12, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/check:Checker", ptr %t209, i32 0, i32 37
  %t212 = load ptr, ptr %l10, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t211, ptr %t212)
  br label %bb34
bb34:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t215)
  store ptr %t217, ptr %l105
  br label %bb35
bb35:
  %t218 = load ptr, ptr %l105, !tbaa !29
  %t220 = getelementptr %"compiler/check:frame", ptr %t218, i32 0, i32 7
  %t221 = load i64, ptr %t220, !tbaa !24
  %t223 = trunc i64 %t221 to i32
  store i32 %t223, ptr %l109, !tbaa !23
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 37
  %t228 = load i64, ptr %l12, !tbaa !24
  %t231 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t227, i64 %t228)
  store { i64, ptr } %t231, ptr %l113
  br label %bb36
bb36:
  %t232 = load i32, ptr %l109, !tbaa !23
  %t233 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t234 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 %t232, { i64, ptr } %t233)
  store %"compiler/typed:Block" %t234, ptr %l114
  br label %bb37
bb37:
  %t235 = load %"compiler/typed:Block", ptr %l114
  %t236 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t235, ptr %t236
  store ptr %t236, ptr %l13, !tbaa !29
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l116, !tbaa !29
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr %"compiler/ast:Compr", ptr %t239, i32 0, i32 5
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = icmp eq ptr %t242, null
  br i1 %t244, label %bb38, label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_5688429828d7ebe2_8ea9fe01fea3ad9e)
  unreachable
bb39:
  br label %bb40
bb40:
  %t246 = load ptr, ptr %l2, !tbaa !29
  %t248 = getelementptr %"compiler/ast:Compr", ptr %t246, i32 0, i32 5
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t249)
  store %"compiler/source:Span" %t251, ptr %l122
  br label %bb41
bb41:
  %t252 = load ptr, ptr %l11, !tbaa !29
  %t253 = load ptr, ptr %l13, !tbaa !29
  %t256 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t252, ptr %t253, ptr null)
  store %"compiler/typed:If" %t256, ptr %l125
  br label %bb42
bb42:
  %t257 = load %"compiler/typed:If", ptr %l125
  %t258 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t257, ptr %t258
  store { i64, [3 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t259, i32 0, i32 0
  store i64 3, ptr %t260
  %t261 = load %"compiler/source:Span", ptr %l122
  %t262 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t261, 0
  %t264 = insertvalue { %"compiler/source:Span", ptr } %t262, ptr %t258, 1
  %t265 = getelementptr { i64, [3 x i64] }, ptr %t259, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t264, ptr %t265
  %t266 = load { i64, [3 x i64] }, ptr %t259
  %t268 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t266, ptr %t268
  %t269 = load ptr, ptr %l116, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t269, ptr %t268)
  br label %bb43
bb43:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesNoQuestion(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca i1
  %l17 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l28 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 26
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t24, i32 0, i32 6
  %t27 = load i32, ptr %t26, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t23, i32 %t27)
  store { i64, ptr } %t30, ptr %l17
  br label %bb7
bb7:
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t34 = icmp sgt i64 %t32, 0
  store i1 %t34, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t36 = load i1, ptr %l11, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 14
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/check:frame", ptr %t41, i32 0, i32 0
  %t44 = load i64, ptr %t43, !tbaa !24
  %t47 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t40, i64 %t44)
  store ptr %t47, ptr %l25
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Body", ptr %t48, i32 0, i32 1
  %t51 = load { i64, [2 x i64] }, ptr %t50
  store { i64, [2 x i64] } %t51, ptr %l2
  %t53 = load { i64, [2 x i64] }, ptr %l2
  %t55 = extractvalue { i64, [2 x i64] } %t53, 0
  %t56 = icmp eq i64 %t55, 0
  br i1 %t56, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  %t58 = load { i64, [2 x i64] }, ptr %l2
  %t60 = extractvalue { i64, [2 x i64] } %t58, 0
  %t61 = icmp eq i64 %t60, 1
  br i1 %t61, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_17791ca4bfbb451a_6d701f0037462966)
  unreachable
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load i1, ptr %l28, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisCallExpr(ptr %v0, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 12
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
  call void @__olang_check_failed(ptr @olang_loc_f1e8a29f5ea9d646_79fa5e0b2b57ed62)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisData(ptr %v0, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 1
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
  call void @__olang_check_failed(ptr @olang_loc_730002831f996ad7_70057565365c117b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisFuncTypeRef(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  store i1 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2elistName(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca [7 x { i64, ptr }]
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [7 x { i64, ptr }] undef, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t2 = insertvalue [7 x { i64, ptr }] %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t3 = insertvalue [7 x { i64, ptr }] %t2, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 2
  %t4 = insertvalue [7 x { i64, ptr }] %t3, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) }, 3
  %t5 = insertvalue [7 x { i64, ptr }] %t4, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d28, i32 0, i32 1) }, 4
  %t6 = insertvalue [7 x { i64, ptr }] %t5, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) }, 5
  %t7 = insertvalue [7 x { i64, ptr }] %t6, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d30, i32 0, i32 1) }, 6
  store [7 x { i64, ptr }] %t7, ptr %l1
  %t10 = getelementptr [7 x { i64, ptr }], ptr %l1, i64 0, i64 %a0
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !37
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = mul i64 %t15, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = mul i64 %t24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %t23, i64 %t25, i1 false)
  %t26 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2elitText(ptr %v0, %"compiler/check:litv" %a0) #0 {
entry:
  %l0 = alloca %"compiler/check:litv"
  %l3 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store %"compiler/check:litv" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 6
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 7
  %t5 = load i1, ptr %t4, !tbaa !21
  br i1 %t5, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  %t7 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 8
  %t8 = load i128, ptr %t7
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_u128(ptr null, i128 %t8)
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = getelementptr i8, ptr %t14, i64 %t10
  %t16 = call i64 @__olang_fmt_u128(ptr %t15, i128 %t8)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t14, 1
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  %t20 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 8
  %t21 = load i128, ptr %t20
  %t23 = call i64 @__olang_fmt_u128(ptr null, i128 %t21)
  %t24 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t23)
  %t25 = call i64 @__olang_fmt_u128(ptr %t24, i128 %t21)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  br label %bb5
bb5:
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb6:
  %t30 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 2
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t34 = load i64, ptr %t33, !tbaa !24
  %t37 = call i64 @__olang_fmt_u64(ptr null, i64 %t34)
  %t38 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t37)
  %t39 = call i64 @__olang_fmt_u64(ptr %t38, i64 %t34)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t38, 1
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  br label %bb9
bb8:
  %t43 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t47 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t46)
  %t48 = call i64 @__olang_fmt_i64(ptr %t47, i64 %t44)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %l9, !tbaa !27
  br label %bb9
bb9:
  %t52 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcheck_2emeetPerm(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = and i64 %t1, %t2
  %t6 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t9 = and i64 %t5, %t6
  %t10 = load i64, ptr %l0, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = or i64 %t10, %t11
  %t15 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t18 = and i64 %t14, %t15
  %t21 = or i64 %t9, %t18
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2eretViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l12 = alloca i64
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l21 = alloca i1
  %l41 = alloca i64
  %l43 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t1, ptr %t2)
  store i64 %t6, ptr %l12
  br label %bb1
bb1:
  %t7 = load i64, ptr %l12, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sgt i64 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb3:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t13 = load ptr, ptr %l16, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load ptr, ptr %l16, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 18}
  %t19 = icmp eq i64 %t17, 6
  store i1 %t19, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l17, !tbaa !21
  %t21 = xor i1 %t20, true
  store i1 %t21, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l15, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t26, i32 0, i32 0
  %t28 = load %"compiler/source:Span", ptr %t27
  store %"compiler/source:Span" %t28, ptr %l3
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l4, !tbaa !23
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  %t45 = getelementptr %"compiler/typed:Call", ptr %t40, i32 0, i32 4
  %t46 = load i1, ptr %t45, !tbaa !21
  %t48 = xor i1 %t46, true
  store i1 %t48, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t50 = load i1, ptr %l21, !tbaa !21
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t51 = load i64, ptr %l2, !tbaa !24
  store i64 %t51, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  store %"compiler/source:Span" %t57, ptr %l6
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l7, !tbaa !23
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t75 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallViews(ptr %v0, ptr %v1, ptr %t71, ptr %t69)
  store i64 %t75, ptr %l41
  br label %bb13
bb13:
  %t76 = load i64, ptr %l41, !tbaa !24
  %t77 = icmp sgt i64 %t76, 0
  br i1 %t77, label %bb14, label %bb15
bb14:
  %t79 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  store i64 %t79, ptr %l43, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t81 = load i64, ptr %l43, !tbaa !24
  store i64 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2esatOp(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) })
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
  store i32 48, ptr %l1
  br label %bb25
bb5:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d33, i32 0, i32 1) })
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
  store i32 49, ptr %l1
  br label %bb25
bb10:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) })
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
  store i32 50, ptr %l1
  br label %bb25
bb15:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) })
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
  store i32 51, ptr %l1
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i32 29, ptr %l1
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_3bfa2fc53dda7240_53e39c3717a0962c)
  unreachable
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l70 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l81 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i1
  %l169 = alloca ptr
  %l170 = alloca i1
  %l185 = alloca ptr
  %l186 = alloca i1
  %l193 = alloca ptr
  %l194 = alloca i1
  %l201 = alloca ptr
  %l202 = alloca i1
  %l210 = alloca ptr
  %l211 = alloca i1
  %l223 = alloca ptr
  %l224 = alloca i1
  %l231 = alloca ptr
  %l232 = alloca i1
  %l249 = alloca { i64, ptr }
  %l259 = alloca ptr
  %l260 = alloca i1
  %l271 = alloca ptr
  %l272 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t6 = load ptr, ptr %l35, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l35, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 22}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l36, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l36, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t20, ptr %t22)
  br label %bb9
bb9:
  br label %bb172
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t26 = load ptr, ptr %l44, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l44, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 22}
  %t32 = icmp eq i64 %t30, 1
  store i1 %t32, ptr %l45, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l45, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/ast:VarDecl", ptr %t40, i32 0, i32 3
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t43, ptr %t44)
  br label %bb16
bb16:
  br label %bb172
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t48 = load ptr, ptr %l53, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb18, label %bb19
bb18:
  %t51 = load ptr, ptr %l53, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 22}
  %t54 = icmp eq i64 %t52, 2
  store i1 %t54, ptr %l54, !tbaa !21
  br label %bb19
bb19:
  %t55 = load i1, ptr %l54, !tbaa !21
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb34
bb22:
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Multi", ptr %t62, i32 0, i32 1
  %t65 = load i1, ptr %t64, !tbaa !21
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb23, label %bb24
bb23:
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr %"compiler/ast:Multi", ptr %t69, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  store i64 %t76, ptr %l7, !tbaa !24
  br label %bb25
bb24:
  br label %bb32
bb25:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t86 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t86, ptr %l70, !tbaa !27
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr ptr, ptr %t90, i64 %t87
  %t92 = load ptr, ptr %t91, !tbaa !39
  %t95 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %t92, ptr %t95)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t98 = load i64, ptr %l6, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l6, !tbaa !24
  br label %bb25
bb31:
  br label %bb32
bb32:
  %t102 = load ptr, ptr %l4, !tbaa !29
  %t104 = getelementptr %"compiler/ast:Multi", ptr %t102, i32 0, i32 2
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t106 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t105, ptr %t106)
  br label %bb33
bb33:
  br label %bb172
bb34:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t110 = load ptr, ptr %l80, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb35, label %bb36
bb35:
  %t113 = load ptr, ptr %l80, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 22}
  %t116 = icmp eq i64 %t114, 3
  store i1 %t116, ptr %l81, !tbaa !21
  br label %bb36
bb36:
  %t117 = load i1, ptr %l81, !tbaa !21
  br i1 %t117, label %bb37, label %bb38
bb37:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l9, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t126, i32 0, i32 3
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l10, !tbaa !29
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t130 = load ptr, ptr %l9, !tbaa !29
  %t131 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %t130, ptr %t131)
  br label %bb40
bb40:
  %t134 = load ptr, ptr %l10, !tbaa !29
  %t136 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t134, ptr %t136)
  br label %bb41
bb41:
  br label %bb172
bb42:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t140 = load ptr, ptr %l93, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb43, label %bb44
bb43:
  %t143 = load ptr, ptr %l93, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 22}
  %t146 = icmp eq i64 %t144, 4
  store i1 %t146, ptr %l94, !tbaa !21
  br label %bb44
bb44:
  %t147 = load i1, ptr %l94, !tbaa !21
  br i1 %t147, label %bb45, label %bb46
bb45:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t150, i32 0, i32 1
  %t152 = load ptr, ptr %t151
  store ptr %t152, ptr %l11, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr { i64, [4 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t156, i32 0, i32 2
  %t158 = load { i64, ptr }, ptr %t157
  store { i64, ptr } %t158, ptr %l12, !tbaa !27
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t160 = load ptr, ptr %l11, !tbaa !29
  %t162 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %t160, ptr %t162)
  br label %bb48
bb48:
  %t165 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t166 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %t165, ptr %t166)
  br label %bb49
bb49:
  br label %bb172
bb50:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t170 = load ptr, ptr %l106, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb51, label %bb52
bb51:
  %t173 = load ptr, ptr %l106, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 22}
  %t176 = icmp eq i64 %t174, 5
  store i1 %t176, ptr %l107, !tbaa !21
  br label %bb52
bb52:
  %t177 = load i1, ptr %l107, !tbaa !21
  br i1 %t177, label %bb53, label %bb54
bb53:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l13, !tbaa !29
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t184 = load ptr, ptr %l13, !tbaa !29
  %t185 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIf(ptr %v0, ptr %v1, ptr %t184, ptr %t185)
  br label %bb56
bb56:
  br label %bb172
bb57:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t189 = load ptr, ptr %l114, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb58, label %bb59
bb58:
  %t192 = load ptr, ptr %l114, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 22}
  %t195 = icmp eq i64 %t193, 6
  store i1 %t195, ptr %l115, !tbaa !21
  br label %bb59
bb59:
  %t196 = load i1, ptr %l115, !tbaa !21
  br i1 %t196, label %bb60, label %bb61
bb60:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t199, i32 0, i32 1
  %t201 = load { i64, ptr }, ptr %t200
  store { i64, ptr } %t201, ptr %l14, !tbaa !27
  br label %bb66
bb61:
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t204 = load ptr, ptr %l120, !tbaa !29
  %t205 = icmp ne ptr %t204, null
  br i1 %t205, label %bb62, label %bb63
bb62:
  %t207 = load ptr, ptr %l120, !tbaa !29
  %t208 = load i64, ptr %t207, !range !{i64 0, i64 22}
  %t210 = icmp eq i64 %t208, 20
  store i1 %t210, ptr %l121, !tbaa !21
  br label %bb63
bb63:
  %t211 = load i1, ptr %l121, !tbaa !21
  br i1 %t211, label %bb64, label %bb65
bb64:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr { i64, [4 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t214, i32 0, i32 1
  %t216 = load { i64, ptr }, ptr %t215
  store { i64, ptr } %t216, ptr %l14, !tbaa !27
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t218 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t219 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t218, ptr %t219)
  br label %bb67
bb67:
  br label %bb172
bb68:
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t223 = load ptr, ptr %l128, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb69, label %bb70
bb69:
  %t226 = load ptr, ptr %l128, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 22}
  %t229 = icmp eq i64 %t227, 7
  store i1 %t229, ptr %l129, !tbaa !21
  br label %bb70
bb70:
  %t230 = load i1, ptr %l129, !tbaa !21
  br i1 %t230, label %bb71, label %bb72
bb71:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr { i64, [4 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t233, i32 0, i32 1
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l15, !tbaa !29
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t237, i32 0, i32 1
  %t240 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t239, i32 0, i32 2
  %t241 = load { i64, ptr }, ptr %t240
  store { i64, ptr } %t241, ptr %l16, !tbaa !27
  br label %bb77
bb72:
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t244 = load ptr, ptr %l136, !tbaa !29
  %t245 = icmp ne ptr %t244, null
  br i1 %t245, label %bb73, label %bb74
bb73:
  %t247 = load ptr, ptr %l136, !tbaa !29
  %t248 = load i64, ptr %t247, !range !{i64 0, i64 22}
  %t250 = icmp eq i64 %t248, 10
  store i1 %t250, ptr %l137, !tbaa !21
  br label %bb74
bb74:
  %t251 = load i1, ptr %l137, !tbaa !21
  br i1 %t251, label %bb75, label %bb76
bb75:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 1
  %t255 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t254, i32 0, i32 1
  %t256 = load { i64, ptr }, ptr %t255
  store { i64, ptr } %t256, ptr %l16, !tbaa !27
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t260, i32 0, i32 2
  %t262 = load ptr, ptr %t261
  store ptr %t262, ptr %l15, !tbaa !29
  br label %bb77
bb76:
  br label %bb80
bb77:
  %t264 = load ptr, ptr %l15, !tbaa !29
  %t266 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t264, ptr %t266)
  br label %bb78
bb78:
  %t269 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t270 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t269, ptr %t270)
  br label %bb79
bb79:
  br label %bb172
bb80:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l149, !tbaa !29
  store i1 false, ptr %l150, !tbaa !21
  %t274 = load ptr, ptr %l149, !tbaa !29
  %t275 = icmp ne ptr %t274, null
  br i1 %t275, label %bb81, label %bb82
bb81:
  %t277 = load ptr, ptr %l149, !tbaa !29
  %t278 = load i64, ptr %t277, !range !{i64 0, i64 22}
  %t280 = icmp eq i64 %t278, 8
  store i1 %t280, ptr %l150, !tbaa !21
  br label %bb82
bb82:
  %t281 = load i1, ptr %l150, !tbaa !21
  br i1 %t281, label %bb83, label %bb84
bb83:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t282, i32 0, i32 1
  %t285 = getelementptr { %"compiler/source:Span", ptr }, ptr %t284, i32 0, i32 1
  %t286 = load ptr, ptr %t285
  store ptr %t286, ptr %l17, !tbaa !29
  br label %bb85
bb84:
  br label %bb90
bb85:
  %t288 = load ptr, ptr %l17, !tbaa !29
  %t290 = getelementptr %"compiler/ast:For3", ptr %t288, i32 0, i32 0
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t293 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %t291, ptr %t293)
  br label %bb86
bb86:
  %t296 = load ptr, ptr %l17, !tbaa !29
  %t298 = getelementptr %"compiler/ast:For3", ptr %t296, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t300 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t299, ptr %t300)
  br label %bb87
bb87:
  %t303 = load ptr, ptr %l17, !tbaa !29
  %t305 = getelementptr %"compiler/ast:For3", ptr %t303, i32 0, i32 2
  %t306 = load ptr, ptr %t305, !tbaa !29
  %t308 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %t306, ptr %t308)
  br label %bb88
bb88:
  %t311 = load ptr, ptr %l17, !tbaa !29
  %t313 = getelementptr %"compiler/ast:For3", ptr %t311, i32 0, i32 3
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !27
  %t315 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t314, ptr %t315)
  br label %bb89
bb89:
  br label %bb172
bb90:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l169, !tbaa !29
  store i1 false, ptr %l170, !tbaa !21
  %t319 = load ptr, ptr %l169, !tbaa !29
  %t320 = icmp ne ptr %t319, null
  br i1 %t320, label %bb91, label %bb92
bb91:
  %t322 = load ptr, ptr %l169, !tbaa !29
  %t323 = load i64, ptr %t322, !range !{i64 0, i64 22}
  %t325 = icmp eq i64 %t323, 9
  store i1 %t325, ptr %l170, !tbaa !21
  br label %bb92
bb92:
  %t326 = load i1, ptr %l170, !tbaa !21
  br i1 %t326, label %bb93, label %bb94
bb93:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr { i64, [4 x i64] }, ptr %t327, i32 0, i32 1
  %t330 = getelementptr { %"compiler/source:Span", ptr }, ptr %t329, i32 0, i32 1
  %t331 = load ptr, ptr %t330
  store ptr %t331, ptr %l18, !tbaa !29
  br label %bb95
bb94:
  br label %bb99
bb95:
  %t333 = load ptr, ptr %l18, !tbaa !29
  %t335 = getelementptr %"compiler/ast:ForIn", ptr %t333, i32 0, i32 2
  %t336 = load ptr, ptr %t335, !tbaa !29
  %t338 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t336, ptr %t338)
  br label %bb96
bb96:
  %t341 = load ptr, ptr %l18, !tbaa !29
  %t343 = getelementptr %"compiler/ast:ForIn", ptr %t341, i32 0, i32 4
  %t344 = load { i64, ptr }, ptr %t343, !tbaa !27
  %t345 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t344, ptr %t345)
  br label %bb97
bb97:
  %t348 = load ptr, ptr %l18, !tbaa !29
  %t350 = getelementptr %"compiler/ast:ForIn", ptr %t348, i32 0, i32 5
  %t351 = load { i64, ptr }, ptr %t350, !tbaa !27
  %t352 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %t351, ptr %t352)
  br label %bb98
bb98:
  br label %bb172
bb99:
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t356 = load ptr, ptr %l185, !tbaa !29
  %t357 = icmp ne ptr %t356, null
  br i1 %t357, label %bb100, label %bb101
bb100:
  %t359 = load ptr, ptr %l185, !tbaa !29
  %t360 = load i64, ptr %t359, !range !{i64 0, i64 22}
  %t362 = icmp eq i64 %t360, 11
  store i1 %t362, ptr %l186, !tbaa !21
  br label %bb101
bb101:
  %t363 = load i1, ptr %l186, !tbaa !21
  br i1 %t363, label %bb102, label %bb103
bb102:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr { i64, [4 x i64] }, ptr %t364, i32 0, i32 1
  %t367 = getelementptr { %"compiler/source:Span", ptr }, ptr %t366, i32 0, i32 1
  %t368 = load ptr, ptr %t367
  store ptr %t368, ptr %l19, !tbaa !29
  br label %bb104
bb103:
  br label %bb106
bb104:
  %t370 = load ptr, ptr %l19, !tbaa !29
  %t371 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredMatch(ptr %v0, ptr %v1, ptr %t370, ptr %t371)
  br label %bb105
bb105:
  br label %bb172
bb106:
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l193, !tbaa !29
  store i1 false, ptr %l194, !tbaa !21
  %t375 = load ptr, ptr %l193, !tbaa !29
  %t376 = icmp ne ptr %t375, null
  br i1 %t376, label %bb107, label %bb108
bb107:
  %t378 = load ptr, ptr %l193, !tbaa !29
  %t379 = load i64, ptr %t378, !range !{i64 0, i64 22}
  %t381 = icmp eq i64 %t379, 12
  store i1 %t381, ptr %l194, !tbaa !21
  br label %bb108
bb108:
  %t382 = load i1, ptr %l194, !tbaa !21
  br i1 %t382, label %bb109, label %bb110
bb109:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr { i64, [4 x i64] }, ptr %t383, i32 0, i32 1
  %t386 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t385, i32 0, i32 1
  %t387 = load { i64, ptr }, ptr %t386
  store { i64, ptr } %t387, ptr %l20, !tbaa !27
  br label %bb111
bb110:
  br label %bb113
bb111:
  %t389 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t390 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t389, ptr %t390)
  br label %bb112
bb112:
  br label %bb172
bb113:
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l201, !tbaa !29
  store i1 false, ptr %l202, !tbaa !21
  %t394 = load ptr, ptr %l201, !tbaa !29
  %t395 = icmp ne ptr %t394, null
  br i1 %t395, label %bb114, label %bb115
bb114:
  %t397 = load ptr, ptr %l201, !tbaa !29
  %t398 = load i64, ptr %t397, !range !{i64 0, i64 22}
  %t400 = icmp eq i64 %t398, 15
  store i1 %t400, ptr %l202, !tbaa !21
  br label %bb115
bb115:
  %t401 = load i1, ptr %l202, !tbaa !21
  br i1 %t401, label %bb116, label %bb117
bb116:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr { i64, [4 x i64] }, ptr %t402, i32 0, i32 1
  %t405 = getelementptr { %"compiler/source:Span", ptr }, ptr %t404, i32 0, i32 1
  %t406 = load ptr, ptr %t405
  store ptr %t406, ptr %l21, !tbaa !29
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t408 = load ptr, ptr %l21, !tbaa !29
  %t410 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t408, ptr %t410)
  br label %bb119
bb119:
  br label %bb172
bb120:
  %t413 = load ptr, ptr %l0, !tbaa !29
  store ptr %t413, ptr %l210, !tbaa !29
  store i1 false, ptr %l211, !tbaa !21
  %t414 = load ptr, ptr %l210, !tbaa !29
  %t415 = icmp ne ptr %t414, null
  br i1 %t415, label %bb121, label %bb122
bb121:
  %t417 = load ptr, ptr %l210, !tbaa !29
  %t418 = load i64, ptr %t417, !range !{i64 0, i64 22}
  %t420 = icmp eq i64 %t418, 14
  store i1 %t420, ptr %l211, !tbaa !21
  br label %bb122
bb122:
  %t421 = load i1, ptr %l211, !tbaa !21
  br i1 %t421, label %bb123, label %bb124
bb123:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = getelementptr { i64, [4 x i64] }, ptr %t422, i32 0, i32 1
  %t425 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t424, i32 0, i32 1
  %t426 = load ptr, ptr %t425
  store ptr %t426, ptr %l22, !tbaa !29
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 1
  %t431 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t430, i32 0, i32 2
  %t432 = load ptr, ptr %t431
  store ptr %t432, ptr %l23, !tbaa !29
  br label %bb125
bb124:
  br label %bb128
bb125:
  %t434 = load ptr, ptr %l22, !tbaa !29
  %t436 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t434, ptr %t436)
  br label %bb126
bb126:
  %t439 = load ptr, ptr %l23, !tbaa !29
  %t440 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t439, ptr %t440)
  br label %bb127
bb127:
  br label %bb172
bb128:
  %t443 = load ptr, ptr %l0, !tbaa !29
  store ptr %t443, ptr %l223, !tbaa !29
  store i1 false, ptr %l224, !tbaa !21
  %t444 = load ptr, ptr %l223, !tbaa !29
  %t445 = icmp ne ptr %t444, null
  br i1 %t445, label %bb129, label %bb130
bb129:
  %t447 = load ptr, ptr %l223, !tbaa !29
  %t448 = load i64, ptr %t447, !range !{i64 0, i64 22}
  %t450 = icmp eq i64 %t448, 13
  store i1 %t450, ptr %l224, !tbaa !21
  br label %bb130
bb130:
  %t451 = load i1, ptr %l224, !tbaa !21
  br i1 %t451, label %bb131, label %bb132
bb131:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t454 = getelementptr { i64, [4 x i64] }, ptr %t452, i32 0, i32 1
  %t455 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t454, i32 0, i32 2
  %t456 = load ptr, ptr %t455
  store ptr %t456, ptr %l24, !tbaa !29
  br label %bb133
bb132:
  br label %bb135
bb133:
  %t458 = load ptr, ptr %l24, !tbaa !29
  %t459 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t458, ptr %t459)
  br label %bb134
bb134:
  br label %bb172
bb135:
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l231, !tbaa !29
  store i1 false, ptr %l232, !tbaa !21
  %t463 = load ptr, ptr %l231, !tbaa !29
  %t464 = icmp ne ptr %t463, null
  br i1 %t464, label %bb136, label %bb137
bb136:
  %t466 = load ptr, ptr %l231, !tbaa !29
  %t467 = load i64, ptr %t466, !range !{i64 0, i64 22}
  %t469 = icmp eq i64 %t467, 17
  store i1 %t469, ptr %l232, !tbaa !21
  br label %bb137
bb137:
  %t470 = load i1, ptr %l232, !tbaa !21
  br i1 %t470, label %bb138, label %bb139
bb138:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t473 = getelementptr { i64, [4 x i64] }, ptr %t471, i32 0, i32 1
  %t474 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t473, i32 0, i32 1
  %t475 = load { i64, ptr }, ptr %t474
  store { i64, ptr } %t475, ptr %l25, !tbaa !27
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr { i64, [4 x i64] }, ptr %t477, i32 0, i32 1
  %t480 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t479, i32 0, i32 2
  %t481 = load ptr, ptr %t480
  store ptr %t481, ptr %l26, !tbaa !29
  br label %bb140
bb139:
  br label %bb152
bb140:
  %t483 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t485 = extractvalue { i64, ptr } %t483, 0
  %t487 = icmp sgt i64 %t485, 0
  br i1 %t487, label %bb141, label %bb142
bb141:
  %t489 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t489, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t491 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t491, 0
  store i64 %t493, ptr %l29, !tbaa !24
  br label %bb143
bb142:
  br label %bb150
bb143:
  %t495 = load i64, ptr %l28, !tbaa !24
  %t496 = load i64, ptr %l29, !tbaa !24
  %t499 = icmp slt i64 %t495, %t496
  %t501 = xor i1 %t499, true
  br i1 %t501, label %bb144, label %bb145
bb144:
  br label %bb149
bb145:
  br label %bb146
bb146:
  %t503 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t503, ptr %l249, !tbaa !27
  %t504 = load i64, ptr %l28, !tbaa !24
  %t506 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !27
  %t508 = getelementptr ptr, ptr %t507, i64 %t504
  %t509 = load ptr, ptr %t508, !tbaa !39
  %t512 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %t509, ptr %t512)
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t515 = load i64, ptr %l28, !tbaa !24
  %t517 = add i64 %t515, 1
  store i64 %t517, ptr %l28, !tbaa !24
  br label %bb143
bb149:
  br label %bb150
bb150:
  %t519 = load ptr, ptr %l26, !tbaa !29
  %t521 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t519, ptr %t521)
  br label %bb151
bb151:
  br label %bb172
bb152:
  %t524 = load ptr, ptr %l0, !tbaa !29
  store ptr %t524, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t525 = load ptr, ptr %l259, !tbaa !29
  %t526 = icmp ne ptr %t525, null
  br i1 %t526, label %bb153, label %bb154
bb153:
  %t528 = load ptr, ptr %l259, !tbaa !29
  %t529 = load i64, ptr %t528, !range !{i64 0, i64 22}
  %t531 = icmp eq i64 %t529, 18
  store i1 %t531, ptr %l260, !tbaa !21
  br label %bb154
bb154:
  %t532 = load i1, ptr %l260, !tbaa !21
  br i1 %t532, label %bb155, label %bb156
bb155:
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t535 = getelementptr { i64, [4 x i64] }, ptr %t533, i32 0, i32 1
  %t536 = getelementptr { %"compiler/source:Span", ptr }, ptr %t535, i32 0, i32 1
  %t537 = load ptr, ptr %t536
  store ptr %t537, ptr %l31, !tbaa !29
  br label %bb157
bb156:
  br label %bb160
bb157:
  %t539 = load ptr, ptr %l31, !tbaa !29
  %t541 = getelementptr %"compiler/ast:JoinS", ptr %t539, i32 0, i32 1
  %t542 = load { i64, ptr }, ptr %t541, !tbaa !27
  %t543 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t542, ptr %t543)
  br label %bb158
bb158:
  %t546 = load ptr, ptr %l31, !tbaa !29
  %t548 = getelementptr %"compiler/ast:JoinS", ptr %t546, i32 0, i32 2
  %t549 = load { i64, ptr }, ptr %t548, !tbaa !27
  %t550 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %t549, ptr %t550)
  br label %bb159
bb159:
  br label %bb172
bb160:
  %t553 = load ptr, ptr %l0, !tbaa !29
  store ptr %t553, ptr %l271, !tbaa !29
  store i1 false, ptr %l272, !tbaa !21
  %t554 = load ptr, ptr %l271, !tbaa !29
  %t555 = icmp ne ptr %t554, null
  br i1 %t555, label %bb161, label %bb162
bb161:
  %t557 = load ptr, ptr %l271, !tbaa !29
  %t558 = load i64, ptr %t557, !range !{i64 0, i64 22}
  %t560 = icmp eq i64 %t558, 19
  store i1 %t560, ptr %l272, !tbaa !21
  br label %bb162
bb162:
  %t561 = load i1, ptr %l272, !tbaa !21
  br i1 %t561, label %bb163, label %bb164
bb163:
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t564 = getelementptr { i64, [4 x i64] }, ptr %t562, i32 0, i32 1
  %t565 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t564, i32 0, i32 1
  %t566 = load ptr, ptr %t565
  store ptr %t566, ptr %l32, !tbaa !29
  br label %bb165
bb164:
  br label %bb167
bb165:
  %t568 = load ptr, ptr %l32, !tbaa !29
  %t570 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %t568, ptr %t570)
  br label %bb166
bb166:
  br label %bb172
bb167:
  br i1 true, label %bb168, label %bb169
bb168:
  br label %bb170
bb169:
  br label %bb171
bb170:
  br label %bb172
bb171:
  call void @__olang_check_failed(ptr @olang_loc_129627029b1e0c70_26637847123ec4fc)
  unreachable
bb172:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_3ab5aWalk_2ector(ptr %out, ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca %"compiler/check:b5aWalk"
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l1, !tbaa !24
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l10
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t9)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l10
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr %t20
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr %t26
  %t33 = icmp eq ptr %t32, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t33)
  br label %bb5
bb5:
  %t34 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l2
  %t35 = ptrtoint ptr %v0 to i64
  store i64 %t35, ptr %l14, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e2
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = call ptr @__olang_region_make(ptr %v0)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l14
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t41, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l16
  br label %bb8
bb8:
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e2
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l14
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr null
  %t53 = icmp eq ptr %t52, %t46
  call void @__olang_region_settle(ptr %t46, i1 %t53)
  br label %bb10
bb10:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l3
  %t55 = ptrtoint ptr %v0 to i64
  store i64 %t55, ptr %l18, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e3
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = call ptr @__olang_region_make(ptr %v0)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l18
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t61, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l20
  br label %bb13
bb13:
  %t63 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e3
  br i1 %t63, label %bb14, label %bb15
bb14:
  %t65 = load i64, ptr %l18
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr null
  %t73 = icmp eq ptr %t72, %t66
  call void @__olang_region_settle(ptr %t66, i1 %t73)
  br label %bb15
bb15:
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l4
  %t75 = ptrtoint ptr %v0 to i64
  store i64 %t75, ptr %l22, !tbaa !24
  %t76 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e4
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t78 = call ptr @__olang_region_make(ptr %v0)
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l22, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l22
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t81)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t82, ptr %l24
  br label %bb18
bb18:
  %t83 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e4
  br i1 %t83, label %bb19, label %bb20
bb19:
  %t85 = load i64, ptr %l22
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %t87
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = call ptr @__olang_region_or(ptr %t89, ptr null)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr null
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr %t92
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = icmp ne ptr %t102, null
  %t104 = select i1 %t103, ptr %t102, ptr %t98
  %t105 = icmp eq ptr %t104, %t86
  call void @__olang_region_settle(ptr %t86, i1 %t105)
  br label %bb20
bb20:
  %t106 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t106, ptr %l5
  %t107 = ptrtoint ptr %v0 to i64
  store i64 %t107, ptr %l26, !tbaa !24
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e5
  br i1 %t108, label %bb21, label %bb22
bb21:
  %t110 = call ptr @__olang_region_make(ptr %v0)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l26, !tbaa !24
  br label %bb22
bb22:
  %t112 = load i64, ptr %l26
  %t113 = inttoptr i64 %t112 to ptr
  %t114 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t113)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %l28
  br label %bb23
bb23:
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e5
  br i1 %t115, label %bb24, label %bb25
bb24:
  %t117 = load i64, ptr %l26
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 2
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = icmp ne ptr %t128, null
  %t130 = select i1 %t129, ptr %t128, ptr %t124
  %t131 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr %t130
  %t137 = icmp eq ptr %t136, %t118
  call void @__olang_region_settle(ptr %t118, i1 %t137)
  br label %bb25
bb25:
  %t138 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  %t139 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 0
  %t140 = load i64, ptr %l1, !tbaa !24
  store i64 %t140, ptr %t139, !tbaa !24
  %t141 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 1
  %t142 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t142, ptr %t141
  %t143 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 2
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %t143
  %t145 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 3
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %t145
  %t147 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 4
  %t148 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t148, ptr %t147
  %t149 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t138, ptr %t149
  %t151 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 6
  store i1 false, ptr %t151, !tbaa !21
  %t153 = getelementptr %"compiler/check:b5aWalk", ptr %l30, i32 0, i32 7
  store i1 false, ptr %t153, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l30, i64 296, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:effectPlace" @compiler_2fcheck_3aeffectPlace_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4, i32 %a5) #0 {
entry:
  %rv = alloca %"compiler/check:effectPlace"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/check:effectPlace" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/check:effectPlace" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/check:effectPlace" %t16, %"compiler/source:Span" %a2, 2
  %t20 = insertvalue %"compiler/check:effectPlace" %t18, ptr %a3, 3
  %t22 = insertvalue %"compiler/check:effectPlace" %t20, i32 %a4, 4
  %t24 = insertvalue %"compiler/check:effectPlace" %t22, i32 %a5, 5
  store %"compiler/check:effectPlace" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:effectPlace", ptr %rv
  ret %"compiler/check:effectPlace" %rr
}

define dso_local %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i1 %a2) #0 {
entry:
  %rv = alloca %"compiler/check:nullNarrow"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:nullNarrow" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/check:nullNarrow" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/check:nullNarrow" %t10, i1 %a2, 2
  store %"compiler/check:nullNarrow" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:nullNarrow", ptr %rv
  ret %"compiler/check:nullNarrow" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
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
@__olang_empty_array = external constant [16 x i64]
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
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d0 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"an else of this kind" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d1 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"an extern function as a value (T21)" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aroFn_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!=" }>, align 8
@.d4 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"==" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d6 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c".Len() > 0" }>, align 8
@.d7 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c".Len() == 0" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d9 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Of" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3anullNarrow_2e0 = weak hidden constant i1 false
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d14 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", or write '" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d16 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
@.d18 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"'x[lo:hi]'" }>, align 8
@.d19 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"Slice ('x[lo:hi]')" }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d21 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a slice with no end of a type with no Len (E31)" }>, align 8
@.d22 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
@.d23 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"TypeKind" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Fields" }>, align 8
@.d25 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Cases" }>, align 8
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Params" }>, align 8
@.d27 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Results" }>, align 8
@.d28 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Functions" }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Methods" }>, align 8
@.d30 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Functions" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
declare i64 @__olang_fmt_u128(ptr, i128)
declare i64 @__olang_fmt_u64(ptr, i64)
declare i64 @__olang_fmt_i64(ptr, i64)
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"satAdd" }>, align 8
@.d33 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"satSub" }>, align 8
@.d34 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"satMul" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"satShl" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e1 = weak hidden constant i1 false
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

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3ab5aWalk_2e5 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
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
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_b38f45ec26bed975_efda74b8eb60f0c1 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e3737a5db5d2f43e_f6d8b09c7cd8c09a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_a6278e1b7f6dba40_6fee99e557dde034 = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_82b0d2a61edf3c68_78216e4ccea776dc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_e54de2b85f89ec55_546f3093ddc3c1a9 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
@olang_loc_54e68041531f6906_51860f3f569bf3d2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPinned(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i1 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtCases(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunpin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtLast(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBinds(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtCaseTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwind(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare { i32, %"compiler/check:narrowed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLast_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
@olang_loc_f3fef639868d2bb5_dd9676d0e98a8921 = external constant [0 x i8]
declare { i32, %"compiler/check:narrowed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2ePop_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
@olang_loc_df1f5fd28061949_6fd2bc487e6b648d = external constant [0 x i8]
@olang_loc_adf1079d57e55808_9269da6a723799fc = external constant [0 x i8]
@olang_loc_4fa1eeadbabe5a66_3dfbfb89ab758d6a = external constant [0 x i8]
@olang_loc_92a21335b7ae999a_7e07c1814bb2a646 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %a0)
declare { i32, %"compiler/check:nullNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLas_H41327bbfea6c01118b477d23a6e2def2(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_abe1ff4556bedc08_80ba96099639cb2c = external constant [0 x i8]
declare { i32, %"compiler/check:nullNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ePop_H59a749d10c64cd066029408cbe89e7b7(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare { i32, %"compiler/check:errNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLast_He310b7451e653469b2155498b3293ff7(ptr %v0, ptr %a0)
@olang_loc_7a4929889a701fe3_96d6f303ecd0d8a7 = external constant [0 x i8]
declare { i32, %"compiler/check:errNarrow" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2ePop__He4c3571ab54dd9fc34e0d36cd7afb0ff(ptr %v0, ptr %a0)
@olang_loc_b4897252f2a0467_e1365b27726b9d63 = external constant [0 x i8]
@olang_loc_b02f2e0c8b90d83e_466afc0716e3b9a2 = external constant [0 x i8]
@olang_loc_e882b6948f69dce8_e6367676615923ec = external constant [0 x i8]
@olang_loc_9e6114e2cf841093_fa90ce222875bd2f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLast_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_c349e4c9332250dd_9daf9d91ff07ef41 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_90c216d2a7707e63_13ebc04feeb9a31f = external constant [0 x i8]
@olang_loc_e7cf760e54914750_8299ab19ca729e9c = external constant [0 x i8]
@olang_loc_2de9afb4b96dcf94_71a46e56f9644858 = external constant [0 x i8]
@olang_loc_6d051d6c732886d2_d9cb433bcdc0e6 = external constant [0 x i8]
@olang_loc_fd3792a3478c708a_bd2f712e645466e6 = external constant [0 x i8]
@olang_loc_12b3dc107423b434_482fbf8ad69d32f8 = external constant [0 x i8]
@olang_loc_4090f31281295d0b_b76133cd00d27c97 = external constant [0 x i8]
@olang_loc_ee572ef2923bf685_6f413c271381cde1 = external constant [0 x i8]
@olang_loc_ff67d74e2821509e_7f8039e3a9b6d64a = external constant [0 x i8]
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etwinBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflInt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2, i64 %a3)
@olang_loc_b90f60f44557575f_8372487000419b6b = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropCycle(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edestructs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_d97e23b04dcff800_367dc3876d150fb4 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eeffectOp(i32 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ad4dc9fe288360e2_6bae22496d237a26 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_29ea0c7d0dcef6fa_322b22c08f06752e = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_823a266be2210958_13324b84b1c75d64 = external constant [0 x i8]
@olang_loc_1e005f55cee69fc6_5b8ec7c8c2bbfa8a = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_dd139b797ad07c59_48ae02fb28d54045 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2enullValue(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthsNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_de04a3fa462e2701_a46741d0a252ba9d = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnNameAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnTooDeep(ptr %v0, ptr %a0, i64 %a1, i32 %a2, { i64, [3 x i64] } %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:roFn" %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %a0)
@olang_loc_2bda502508e1b1d_a3083ba563ab0481 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsOnlyNull(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsCaseWritten(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsNullOfNull(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNonNull(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrNeverNull(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsNullOfValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayIsNull(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeverNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteNullableDecl(ptr %v0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedLend(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecasePath(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_1a7153eaacfdc8_b1c3cf4a1728a65c = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a227993f85dd5ea2_8a35cef040514d1e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
@olang_loc_4d673442943c2a5_9663aeaf0b5db41 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralDoesNotMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2elaneTok(i32 %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLenKey(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtAssigned(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalOrCapture(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstField(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
@olang_loc_c89e58dd43b8c5a0_98fae7e2dc40ed34 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2enullTests(ptr %v0, ptr %v1, ptr %a0, i1 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H69e9af7ee32b7ff0c8685324094a29a4(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H37377f924b66ff741793959f79fef546(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ePus_H6cb9d90d121a5c1d081cb085b656665f(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:nullNarrow" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2eintFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2)
@G_2ecompiler_2fcheck_2eRvBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvText = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_c2468d0e741d9164_dbacc6d57ee844a8 = external constant [0 x i8]
@olang_loc_c26cedf47b5c0c71_e777f9dba4d45095 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyToWritable(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2eLen__H7de3be79b8c6c838ec83b81887d1384a(ptr %v0, ptr %a0)
declare %"compiler/check:unsetCand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2eAt_3ccompiler_2fcheck_3aunsetCand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/definit:Verdict" @compiler_2fdefinit_2eVerdict_2eJudge(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eRefMu_H262fdcc49aab606e6e6c369788183545(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunsetLowers(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldUnassigned(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadUnassigned(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedDecl(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedNoElse(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedBranch(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedLoop(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedArm(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedClause(ptr %v0)
@olang_loc_f865849e169fa2c9_a08c637f3ac5dd5 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
@olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb = external constant [0 x i8]
@olang_loc_e4f33d7277813d9a_8adeed4fca551266 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b203c9fbf4c249fb_735051f472c86bf = external constant [0 x i8]
@olang_loc_85a2f2931038d80c_e5a946dd8e187d18 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceLength(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
@olang_loc_2f1aad6b95023edd_c82f5ce971f0d619 = external constant [0 x i8]
declare %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_e10237a768a7da34_a1fa84f4f434b2e0 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a69c1b36a006a603_82104839c45e26c7 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ddfcf2b97caa4282_7a2ed02469d97696 = external constant [0 x i8]
@G_2ecompiler_2fcheck_2eRoStored = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
@olang_loc_a23f531a57510fcc_ca69a351a39efde8 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_61f61c7eea085c49_e2109341212ff245 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5688429828d7ebe2_8ea9fe01fea3ad9e = external constant [0 x i8]
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_17791ca4bfbb451a_6d701f0037462966 = external constant [0 x i8]
@olang_loc_f1e8a29f5ea9d646_79fa5e0b2b57ed62 = external constant [0 x i8]
@olang_loc_730002831f996ad7_70057565365c117b = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftyped_2eViewOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@olang_loc_3bfa2fc53dda7240_53e39c3717a0962c = external constant [0 x i8]
declare void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredIf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_129627029b1e0c70_26637847123ec4fc = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)

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
